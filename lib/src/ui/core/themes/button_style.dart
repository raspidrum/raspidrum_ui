
import 'package:flutter/material.dart';

import 'constants.dart';

final IconButtonThemeData iconButtonStyle = IconButtonThemeData(
  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimentions.buttonBorderRadius), // <-- Radius
                    ),
                  fixedSize: Size(40, 40),
                  padding: EdgeInsets.all(8.0)
                )
  );