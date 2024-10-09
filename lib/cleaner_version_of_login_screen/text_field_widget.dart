import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController textEditingController;
  final bool obscureText;
  final String hintText;
  final String labelText;
  final Function(String value) ? onChange;
  final Function(String value) ? onSubmitted;
  const TextFieldWidget(
      {super.key,
      required this.textEditingController,
      this.obscureText = false,
      required this.hintText,
      required this.labelText,
       this.onChange,
       this.onSubmitted});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool userInputIsHidden = true;

  void toggleVisibility() {
    setState(() {
      userInputIsHidden = !userInputIsHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      obscureText: widget.obscureText == true? userInputIsHidden : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffix: widget.obscureText == false
            ? null
            : GestureDetector(
                onTap: () {
                  setState(() {
                    userInputIsHidden = !userInputIsHidden;
                  });
                },
                child: Icon(userInputIsHidden
                    ?
                     Icons.visibility_off:Icons.visibility),
              ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      onChanged: (value) {
        if (widget.onChange != null) {
          widget.onChange!(value);
        }
      },
      onSubmitted: (value) {
        if (widget.onSubmitted != null) {
          widget.onSubmitted!(value);
        }
      },
    );
  }
}
