import 'package:flutter/material.dart';

class SampleUserInput extends StatefulWidget {
  const SampleUserInput({super.key});

  @override
  State<SampleUserInput> createState() => _SampleUserInputState();
}

class _SampleUserInputState extends State<SampleUserInput> {
  // these widget variables are part of the state.
  String userInput = " ";

  // we need this controller in order to keep track of the changes in the text field.
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    //Clean up controllers when the widget is removed (otherwise we'll waste memory)
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("what is your name?"),
            SizedBox(width: 40),
            //Textfield needs to be in a widget that will constrain its size.
            SizedBox(width: 200.0, child: TextField(controller: _controller)),
            SizedBox(width: 40),

            TextButton(
              //this anonymous method is called whenever we press the button
              // this is what the button will do.
              onPressed: () {
                setState(() {
                  userInput = _controller.text;
                  //just for testing to make sure it works.
                  debugPrint("you pressed the button. UserInput $userInput");
                });
              },
              //what the button will display
              child: Text("send"),
            ),
          ],
        ),
        Text(userInput.isNotEmpty ? "Nice to meet you $userInput" : ""),
      ],
    );
  }
}
