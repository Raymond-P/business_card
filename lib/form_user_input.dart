import 'package:flutter/material.dart';

class SampleUserInput extends StatefulWidget {
  const SampleUserInput({super.key});

  @override
  State<SampleUserInput> createState() => _SampleUserInputState();
}

class _SampleUserInputState extends State<SampleUserInput> {
  //GlobalKey to manage and validate the form state
  final _formKey = GlobalKey<FormState>();

  //Separate controllers for each TextFormField (for verifying each field individually)
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  String userInput = "";
  // String firstName = "";
  // String lastName = "";

  @override
  void dispose() {
    //Clean up controllers when the widget is removed (otherwise we'll waste memory)
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Wrap everything in a Form widget
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text("First name: "),
              SizedBox(
                width: 200.0,
                child: TextFormField(
                  controller: _firstNameController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Enter first name';
                    }
                    return null;
                  },
                  // onSaved: (value) => firstName = value ?? "",
                ),
              ),
              const SizedBox(width: 16),
              const Text("Last name: "),
              SizedBox(
                width: 200.0,
                child: TextFormField(
                  controller: _lastNameController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Enter last name';
                    }
                    return null;
                  },
                  // onSaved: (value) => lastName = value ?? "",
                ),
              ),
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {
                  // 5. Validate all form fields together
                  if (_formKey.currentState!.validate()) {
                    // _formKey.currentState!.save(); // Triggers all onSaved callbacks
                    setState(() {
                      userInput =
                          "${_firstNameController.text} ${_lastNameController.text}";
                    });
                  }
                },
                child: const Text("Send"),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            userInput.isNotEmpty ? "Nice to meet you $userInput" : "",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
