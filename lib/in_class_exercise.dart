import 'package:flutter/material.dart';

class InClassExercise extends StatefulWidget {
  const InClassExercise({super.key});

  @override
  State<InClassExercise> createState() => _InClassExerciseState();
}

class _InClassExerciseState extends State<InClassExercise> {

  final TextEditingController _myTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Hi whats your name? "),
        SizedBox( width: 200,child: TextField(controller: _myTextFieldController,),),
        TextButton(onPressed: (){
          debugPrint("the textfield has  ${_myTextFieldController.text}");
          }, 
          child: Text("Click to Submit"))
        ],);
  }
}

