import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String labeltext;
  final Color color;

  const PrimaryButton({
    super.key,
    required this.labeltext,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,

      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        child: Text(
          labeltext,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
