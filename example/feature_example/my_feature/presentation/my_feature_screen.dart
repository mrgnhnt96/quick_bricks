import 'package:clean_simple_eats/infrastructure/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/my_feature/my_feature_cubit.dart';

class MyFeatureScreen extends StatelessWidget {
  const MyFeatureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MyFeatureCubit>()..init(),
        ),
      ],
      child: const _MyFeatureScreen(),
    );
  }
}

class _MyFeatureScreen extends StatelessWidget {
  const _MyFeatureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Feature screen'),
      ),
      body: const Center(
        child: Text(
          'this is the My Feature screen.',
        ),
      ),
    );
  }
}
