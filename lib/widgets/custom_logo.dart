import 'package:flutter/material.dart';

class CustomLogoWidget extends StatelessWidget {
  const CustomLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'lib/images/sterring.jpg',
          scale: 18,
        ),
        const Text(
          '  Lux Car',
          style: TextStyle(fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
