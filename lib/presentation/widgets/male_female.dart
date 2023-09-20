import 'package:flutter/material.dart';
class GenderSelection extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function(bool) onTap;
  final String imageUrl ;

  const GenderSelection({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap, required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(!isSelected); // Invert the selection state when tapped
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: isSelected ? Colors.teal : Colors.grey[400],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imageUrl),
              height: 150.0,
              width: 80.0,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

