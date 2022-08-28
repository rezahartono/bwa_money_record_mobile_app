import 'package:flutter/material.dart';
import 'package:money_record/config/constants/assets_url.dart';
import 'package:money_record/config/styles/layout_config.dart';
import 'package:money_record/config/styles/theme.dart';

class ASignInPage extends StatelessWidget {
  const ASignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget logoBuilder = Container(
      width: LayoutConfig.safeBlockVertical * 12,
      height: LayoutConfig.safeBlockVertical * 12,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assets.appLogo),
          fit: BoxFit.cover,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: color.lightPurple,
      body: SafeArea(
        child: SizedBox(
          width: LayoutConfig.screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              logoBuilder,
              
            ],
          ),
        ),
      ),
    );
  }
}
