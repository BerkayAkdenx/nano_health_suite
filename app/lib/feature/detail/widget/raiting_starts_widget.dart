import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  final double starSize;
  final Color filledColor;
  final Color emptyColor;

  const RatingStars({
    super.key,
    required this.rating,
    this.starSize = 24.0,
    this.filledColor = Colors.yellow,
    this.emptyColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          // Doldurulmuş yıldızlar
          return Icon(
            Icons.star,
            size: starSize,
            color: filledColor,
          );
        } else {
          // Boş yıldızlar
          return Icon(
            Icons.star,
            size: starSize,
            color: emptyColor,
          );
        }
      }),
    );
  }
}
