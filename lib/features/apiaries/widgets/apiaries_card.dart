import 'package:flutter/material.dart';

class ApiariesCard extends StatelessWidget {
  const ApiariesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 1,
      child: Card(
        child: Text(
          'Content',
        ),
      ),
    );
  }
}
