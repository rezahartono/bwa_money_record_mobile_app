// ignore_for_file: non_constant_identifier_names, unnecessary_new

part of 'theme.dart';

class AppColor {
  final Color white = const Color(0xFFFFFFFF);
  final Color black = const Color(0xFF0A222D);
  final Color blue = const Color(0xFF4D77BC);
  final Color green = const Color(0xFF42AD43);
  final Color yellow = const Color(0xFFFFC300);
  final Color red = const Color(0xFFCE2F21);
  final Color transparent = Colors.transparent;

  // get color checkbox
  Color setCheckboxColor({
    required Set<MaterialState> states,
    required Color c,
  }) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
      MaterialState.selected
    };
    if (states.any(interactiveStates.contains)) {
      return c;
    }
    return color.black;
  }
  // end get color checkbox
}

AppColor color = new AppColor();
