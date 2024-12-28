
import 'package:flutter/material.dart';

import 'constants.dart';

final IconButtonThemeData iconButtonStyle = IconButtonThemeData(
  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimentions.buttonBorderRadius), // <-- Radius
                    ),
                  fixedSize: Dimentions.buttonSize,
                  padding: EdgeInsets.all(8.0)
                )
  );