// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final String title;
  final bool autoFocus;
  final TextEditingController controller;
  final bool isPass;
  final int maxLines;
  final void Function(String)? onChanged;
  final bool showIcon;
  final IconData icon;
  final Widget suffix;

  const CustomTextfield({
    Key? key,
    required this.title,
    this.autoFocus = false,
    required this.controller,
    this.isPass = false,
    this.maxLines = 1,
    this.onChanged,
    this.suffix = const SizedBox(),
    this.showIcon = false,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPass,
      maxLines: widget.maxLines,
      onChanged: widget.onChanged,
      autofocus: widget.autoFocus,
      decoration: InputDecoration(
        icon: widget.showIcon ? Icon(widget.icon) : null,
        suffix: widget.suffix,
        hintText: widget.title,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
