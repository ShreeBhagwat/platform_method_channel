import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:native_code/home_screen.dart';

void main() {
  runApp(const nativeCode());
}

class nativeCode extends StatelessWidget {
  const nativeCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen(),
    );
  }
}
