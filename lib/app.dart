import 'package:flutter/material.dart';
import 'package:threebee_challenge/features/apiaries/apiaries_overview_page.dart';
import 'package:threebee_challenge/features/apiaries/cubit/apiaries_cubit.dart';
import 'package:threebee_challenge/shared_export.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const _WrapperBlocProviders();
  }
}

class _WrapperBlocProviders extends StatelessWidget {
  const _WrapperBlocProviders();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ApiariesCubit(),
        ),
      ],
      child: const _MyApp(),
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '3Bee Challenge',
      home: ApiariesOverviewPage(),
    );
  }
}
