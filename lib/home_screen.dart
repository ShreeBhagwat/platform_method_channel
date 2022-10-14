import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final methodChannel = MethodChannel('DIALOG');
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Native Code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _controller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  if (_controller.text.isNotEmpty) {
                    showDailog(_controller.text);
                  } else {
                    showDailog('Please add a Dialog message');
                  }
                },
                child: const Text('Show Dialog')),
          )
        ],
      ),
    );
  }

  void showDailog(String msg) async {
    await methodChannel.invokeMethod('showDialog', msg);
    
  }
}
