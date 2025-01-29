import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  CustomInput({
    super.key,
    required this.header,
    required this.isPassword,
  });
  String header;
  bool isPassword;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          widget.header,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
        ),
        TextField(
          obscureText: widget.isPassword,
          decoration: InputDecoration(
              suffixIcon: (widget.header == 'Password' &&
                      widget.isPassword == true)
                  ? InkWell(
                      onTap: () {
                        widget.isPassword = !widget.isPassword;
                        setState(() {});
                      },
                      child: const Icon(Icons.shield))
                  : (widget.header == 'Password' && widget.isPassword == false)
                      ? InkWell(
                          onTap: () {
                            widget.isPassword = !widget.isPassword;
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.shield,
                            color: Colors.grey,
                          ))
                      : null,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
              hintText: widget.header,
              fillColor: Colors.white,
              filled: true,
              border: InputBorder.none),
        )
      ],
    );
  }
}
