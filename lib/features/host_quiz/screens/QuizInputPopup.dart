import 'package:flutter/material.dart';

class showQuizInputPopup extends StatefulWidget {
  //static const String routeName = '/profile-page';
  const showQuizInputPopup({super.key});

  @override
  State<showQuizInputPopup> createState() => _showQuizInputPopupState();
}

class _showQuizInputPopupState extends State<showQuizInputPopup> {
  // final _formKey = GlobalKey<FormState>();

  // TextEditingController quizNameController = TextEditingController();
  // TextEditingController totalQuestionsController = TextEditingController();
  // TextEditingController timePerQuestionController = TextEditingController();
  // TextEditingController unicodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Quiz Input'),
      content: Form(
        //key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              //controller: quizNameController,
              decoration: InputDecoration(labelText: 'Quiz Name'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter a quiz name';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              //controller: totalQuestionsController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Total Questions'),
              validator: (value) {
                if (value?.isEmpty ?? true || int.tryParse(value!) == null) {
                  return 'Please enter a valid number';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              // controller: timePerQuestionController,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Time per Question (seconds)'),
              validator: (value) {
                if (value?.isEmpty ?? true || int.tryParse(value!) == null) {
                  return 'Please enter a valid number';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              //controller: unicodeController,
              decoration: InputDecoration(labelText: 'Unicode'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter a Unicode value';
                }
                return null;
              },
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                // if (_formKey.currentState?.validate() ?? false) {
                //   // Do something with the input values
                //   String quizName = quizNameController.text;
                //   int totalQuestions = nt.parse(totalQuestionsController.text);
                //   int timePerQuestion =
                //       int.parse(timePerQuestionController.text);
                //   String unicode = unicodeController.text;

                //   // Close the dialog and handle the input values
                //   Navigator.of(context).pop();

                //   // Do something with the input values, e.g., navigate to the next screen
                //   // For now, just print the values
                // print('Quiz Name: $quizName');
                // print('Total Questions: $totalQuestions');
                // print('Time per Question: $timePerQuestion seconds');
                // print('Unicode: $unicode');
                // }
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
