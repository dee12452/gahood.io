import 'package:flutter/material.dart';

class RoundedRectangleButton extends StatelessWidget {
  final String text;
  final Function onClick;
  final IconData iconData;

  const RoundedRectangleButton({
    super.key,
    required this.text,
    required this.onClick,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(0, 2),
            blurRadius: 2,
            spreadRadius: 0,
          )
        ],
      ),
      child: MaterialButton(
        onPressed: () => onClick(),
        child: Row(
          children: [
            Icon(iconData, color: Colors.white,),
            const SizedBox(width: 5),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
