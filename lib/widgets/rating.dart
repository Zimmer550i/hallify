import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double rating;
  final double size;
  const Rating({super.key, required this.rating, required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.filled(
          rating.floor(),
          Icon(
            Icons.star,
            color: const Color(0xffFFA127),
            size: size / 6,
          ),
        ),
        if (rating.floor() != rating)
          Icon(
            Icons.star_half,
            color: const Color(0xffFFA127),
            size: size / 6,
          ),
        ...List.filled(
          5 - rating.floor() - (rating.floor() != rating ? 1 : 0),
          Icon(
            Icons.star_border,
            color: const Color(0xffFFA127),
            size: size / 6,
          ),
        ),
      ],
    );
  }
}
