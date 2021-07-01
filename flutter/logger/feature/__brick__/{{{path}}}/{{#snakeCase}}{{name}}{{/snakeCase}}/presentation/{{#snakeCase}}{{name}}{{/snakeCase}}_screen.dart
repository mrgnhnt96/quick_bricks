import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Screen extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<{{#pascalCase}}{{name}}{{/pascalCase}}Cubit>()..init(),
        ),
      ],
      child: const _{{#pascalCase}}{{name}}{{/pascalCase}}Screen(),
    );
  }
}

class _{{#pascalCase}}{{name}}{{/pascalCase}}Screen extends StatelessWidget {
  const _{{#pascalCase}}{{name}}{{/pascalCase}}Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{{#titleCase}}{{name}}{{/titleCase}} screen'),
      ),
      body: const Center(
        child: Text(
          'this is the {{#titleCase}}{{name}}{{/titleCase}} screen.',
        ),
      ),
    );
  }
}
