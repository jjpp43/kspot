import 'src/style_export.dart';
import 'package:flutter/material.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        children: [
          BoxText.headingOne('Design System'),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 8),
          ...buttonWidgets,
          ...textWidgets,
          ...inputFields,
        ],
      ),
    );
  }

  List<Widget> get textWidgets => [
        BoxText.headline('Text Styles'),
        SizedBox(height: 16),
        BoxText.headingOne('Heading One'),
        SizedBox(height: 16),
        BoxText.headingTwo('Heading Two'),
        SizedBox(height: 16),
        BoxText.headingThree('Heading Three'),
        SizedBox(height: 16),
        BoxText.headline('Headline'),
        SizedBox(height: 16),
        BoxText.subheading('This will be a sub heading to the headling'),
        SizedBox(height: 16),
        BoxText.body('Body Text that will be used for the general body'),
        SizedBox(height: 16),
        BoxText.caption('This will be the caption usually for smaller details'),
        SizedBox(height: 16),
      ];

  List<Widget> get buttonWidgets => [
        BoxText.headline('Buttons'),
        SizedBox(height: 16),
        BoxText.body('Normal'),
        SizedBox(height: 8),
        BoxButton(
          title: 'SIGN IN',
        ),
        SizedBox(height: 8),
        BoxText.body('Half'),
        SizedBox(height: 8),
        BoxButton(
          title: 'Half',
          halfSize: true,
        ),
        SizedBox(height: 8),
        BoxText.body('Disabled'),
        SizedBox(height: 8),
        BoxButton(
          title: 'SIGN IN',
          disabled: true,
        ),
        SizedBox(height: 8),
        BoxText.body('Busy'),
        SizedBox(height: 8),
        BoxButton(
          title: 'SIGN IN',
          busy: true,
        ),
        SizedBox(height: 8),
        BoxText.body('Outline'),
        SizedBox(height: 8),
        BoxButton.outline(
          title: 'Select location',
          leading: Icon(
            Icons.send,
            color: PrimaryColor,
          ),
        ),
        SizedBox(height: 16),
      ];

  List<Widget> get inputFields => [
        BoxText.headline('Input Field'),
        SizedBox(height: 8),
        BoxText.body('Normal'),
        SizedBox(height: 8),
        BoxInputField(
          controller: TextEditingController(),
          placeholder: 'Enter Password',
        ),
        SizedBox(height: 8),
        BoxText.body('Leading Icon'),
        SizedBox(height: 8),
        BoxInputField(
          controller: TextEditingController(),
          leading: Icon(Icons.reset_tv),
          placeholder: 'Enter TV Code',
        ),
        SizedBox(height: 8),
        BoxText.body('Trailing Icon'),
        SizedBox(height: 8),
        BoxInputField(
          controller: TextEditingController(),
          trailing: Icon(Icons.clear_outlined),
          placeholder: 'Search for things',
        ),
      ];
}
