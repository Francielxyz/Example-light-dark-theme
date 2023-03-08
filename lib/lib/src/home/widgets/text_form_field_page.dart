import 'package:flutter/material.dart';

class TextFormFieldPage extends StatefulWidget {
  const TextFormFieldPage({
    Key? key,
    required this.labelText,
    this.isPassword = false,
    this.keyboardType,
    this.isDarkMode = false,
    this.onPressedIcon,
  }) : super(key: key);

  final String labelText;
  final bool? isPassword;
  final TextInputType? keyboardType;
  final VoidCallback? onPressedIcon;
  final bool isDarkMode;

  @override
  State<TextFormFieldPage> createState() => _TextFormFieldPAgeState();
}

class _TextFormFieldPAgeState extends State<TextFormFieldPage> {
  final formKey = GlobalKey<FormState>();
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: widget.keyboardType,
      textInputAction: TextInputAction.next,
      obscureText: _hidePassword && (widget.isPassword == true),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        labelText: widget.labelText,
        suffixIcon: widget.isPassword == true
            ? Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: Icon(
                    _hidePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onTap: () {
                    setState(() {
                      _hidePassword = !_hidePassword;
                    });
                  },
                ),
              )
            : IconButton(
                padding: const EdgeInsets.only(right: 20),
                icon: const Icon(Icons.email),
                onPressed: widget.onPressedIcon,
              ),
      ),
    );
  }
}
