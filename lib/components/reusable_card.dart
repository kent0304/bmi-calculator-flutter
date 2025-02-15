import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.baseColor, this.cardChild, this.onPress});
  final Color baseColor;
  final Widget cardChild;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: baseColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
