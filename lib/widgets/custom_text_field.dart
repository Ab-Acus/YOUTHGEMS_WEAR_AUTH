import 'package:flutter/material.dart';

/// CustomTextField
///
/// A customizable text field widget that provides various features such as
/// labels, hints, icons, obscure text toggle, and input validation.
class CustomTextField extends StatefulWidget {
  /// The label text displayed above the text field.
  final String? labelText;

  /// The hint text displayed inside the text field.
  final String? hintText;

  /// The icon displayed before the text field.
  final IconData? icon;

  /// Callback function called when the text field value changes.
  final Function(String)? onChanged;

  /// Flag indicating whether the text should be obscured (hidden).
  final bool obscureText;

  /// The type of keyboard input expected.
  final TextInputType inputType;

  /// The controller for the text field.
  final TextEditingController controller;

  /// Creates a new CustomTextField instance.
  const CustomTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.icon,
    this.obscureText = false,
    this.inputType = TextInputType.visiblePassword,
  });

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

/// The state class for the CustomTextField widget.
class CustomTextFieldState extends State<CustomTextField> {
  bool _obscured = false;

  @override
  void initState() {
    _obscured = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText ?? '',
        hintText: widget.hintText ?? '',
        prefixIcon: Icon(widget.icon),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(_obscured ? Icons.visibility : Icons.visibility_off,
                    semanticLabel: _obscured
                        ? 'enableTextVizSemantic'
                        : 'obscureTextSemantic',
                    ),
                onPressed: () {
                  setState(() {
                    _obscured = !_obscured;
                  });
                },
              )
            : null,
      ),
      enableSuggestions: false,
      autocorrect: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: widget.inputType,
      obscureText: _obscured,
      onChanged: widget.onChanged,
      controller: widget.controller,
    );
  }
}
