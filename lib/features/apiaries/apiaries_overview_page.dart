import 'package:flutter/material.dart';
import 'package:threebee_challenge/features/apiaries/cubit/apiaries_cubit.dart';
import 'package:threebee_challenge/features/apiaries/widgets/apiary_card.dart';
import 'package:threebee_challenge/shared_export.dart';

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
            height: 36,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'You can see all your apiaries here',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          context.watch<ApiariesCubit>().state.when(
                loading: () => const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                loaded: (apiaries) {
                  return LimitedBox(
                    maxHeight: 200,
                    child: ListView.builder(
                      itemCount: apiaries.length,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final apiary = apiaries[index];
                        return ApiaryCard(
                          key: ValueKey(apiary.id),
                          apiary: apiary,
                        );
                      },
                    ),
                  );
                },
                error: (errorMessage) => Expanded(
                  child: Center(
                    child: Text(
                      errorMessage,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
