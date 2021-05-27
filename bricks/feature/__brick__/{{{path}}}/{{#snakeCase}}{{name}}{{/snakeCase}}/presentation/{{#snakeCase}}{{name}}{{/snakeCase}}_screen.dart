import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Screen extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Screen({Key? key}) : super(key: key);

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
