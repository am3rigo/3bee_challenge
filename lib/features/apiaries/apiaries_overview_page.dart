import 'package:flutter/material.dart';
import 'package:threebee_challenge/features/apiaries/widgets/apiaries_card.dart';

class ApiariesOverviewPage extends StatelessWidget {
  const ApiariesOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apiaries Overview'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'You can see all your apiaries here',
          ),
          const SizedBox(
            height: 20,
          ),
          LimitedBox(
            maxHeight: 200,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const ApiariesCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
