import 'package:flutter/material.dart';
import 'package:flutter_uis/configs/App.dart';
import 'package:flutter_uis/configs/AppDimensions.dart';

import '../messages/keys.dart';

class HomeBuildVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppDimensions.padding * 3,
      ),
      width: double.infinity,
      child: Text(
        "${App.translate(HomeScreenMessages.version)} 1.1.3",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black.withOpacity(0.25),
          fontSize: 5 + AppDimensions.ratio * 4,
        ),
      ),
    );
  }
}
