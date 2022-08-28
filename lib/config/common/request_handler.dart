// ignore_for_file: unnecessary_new

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:money_record/config/environment/environment.dart';
import 'package:money_record/data/models/attachment_model.dart';
import 'package:path_provider/path_provider.dart';

class RequestHandler {
  Future<Map?> get({
    required String path,
    required int statusCode,
    Map<String, String>? header,
  }) async {
    final Uri url = environment.baseUrl(path: path);

    final response = await http.get(
      url,
      headers: header,
    );

    if (response.statusCode == statusCode) {
      return json.decode(response.body);
    } else {
      return null;
    }
  }

  Future<Map?> post({
    required String path,
    required int statusCode,
    Map<String, String>? body,
    Map<String, String>? header,
  }) async {
    final Uri url = environment.baseUrl(path: path);

    final response = await http.post(
      url,
      headers: header,
      body: body,
    );

    if (response.statusCode == statusCode) {
      return json.decode(response.body);
    } else {
      return null;
    }
  }

  Future<Map?> put({
    required String path,
    required int statusCode,
    Map<String, String>? body,
    Map<String, String>? header,
  }) async {
    final Uri url = environment.baseUrl(path: path);

    final response = await http.put(
      url,
      headers: header,
      body: body,
    );

    if (response.statusCode == statusCode) {
      return json.decode(response.body);
    } else {
      return null;
    }
  }

  Future<Map?> delete({
    required String path,
    required int statusCode,
    Map<String, String>? body,
    Map<String, String>? header,
  }) async {
    final Uri url = environment.baseUrl(path: path);

    final response = await http.delete(
      url,
      headers: header,
      body: body,
    );

    if (response.statusCode == statusCode) {
      return json.decode(response.body);
    } else {
      return null;
    }
  }

  Future<Map?> upload({
    required String path,
    required int statusCode,
    required Map<String, String> body,
    required Map<String, String> header,
    required List<AttachmentModel> attachments,
  }) async {
    final Uri url = environment.baseUrl(path: path);

    var request = http.MultipartRequest('POST', url);

    request.fields.addAll(body);

    request.headers.addAll(header);

    for (var attachment in attachments) {
      request.files.add(
        http.MultipartFile(
          'files',
          attachment.file!.readAsBytes().asStream(),
          attachment.file!.lengthSync(),
          filename: attachment.fileName,
        ),
      );
    }

    var response = await request.send();
    var responseData = await response.stream.bytesToString();

    if (response.statusCode == statusCode) {
      return json.decode(responseData);
    } else {
      return null;
    }
  }

  Future<void> download({
    required String uri,
    required String fileName,
  }) async {
    final Uri url = Uri.parse(uri);

    var httpClient = http.Client();
    var request = new http.Request('GET', url);
    var response = httpClient.send(request);
    String dir = (await getApplicationDocumentsDirectory()).path;

    List<List<int>> chunks = new List.empty();
    int downloaded = 0;

    response.asStream().listen((http.StreamedResponse r) {
      r.stream.listen((List<int> chunk) {
        // Display percentage of completion
        debugPrint(
          'downloadPercentage: ${downloaded / r.contentLength! * 100}',
        );

        chunks.add(chunk);
        downloaded += chunk.length;
      }, onDone: () async {
        // Display percentage of completion
        debugPrint(
          'downloadPercentage: ${downloaded / r.contentLength! * 100}',
        );

        // Save the file
        File file = new File('$dir/$fileName');
        final Uint8List bytes = Uint8List(r.contentLength!);
        int offset = 0;
        for (List<int> chunk in chunks) {
          bytes.setRange(offset, offset + chunk.length, chunk);
          offset += chunk.length;
        }
        await file.writeAsBytes(bytes);
        return;
      });
    });
  }
}

RequestHandler request = new RequestHandler();
