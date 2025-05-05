import 'package:flutter/material.dart';

class OutlinedButtonExample extends StatelessWidget {
  const OutlinedButtonExample(this.text, {super.key});

final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white ,
        side: const BorderSide(color: Colors.white),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
        ),
      ),
      onPressed: () {
        debugPrint('Received click');
      },
      child: Text(text),
    );
  }
}