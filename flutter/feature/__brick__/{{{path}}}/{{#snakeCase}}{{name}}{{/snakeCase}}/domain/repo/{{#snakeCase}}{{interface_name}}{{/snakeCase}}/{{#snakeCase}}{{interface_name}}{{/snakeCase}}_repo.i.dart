import 'package:clean_simple_eats/infrastructure/repo_logger/logger.dart';

abstract class I{{#pascalCase}}{{name}}{{/pascalCase}}Repo {}

abstract class I{{#pascalCase}}{{name}}{{/pascalCase}}Entity implements I{{#pascalCase}}{{name}}{{/pascalCase}}Repo {
  I{{#pascalCase}}{{name}}{{/pascalCase}}Entity(
    this.cache,
    this.source,
    this.logger,
  );

  final I{{#pascalCase}}{{name}}{{/pascalCase}}Cache cache;
  final I{{#pascalCase}}{{name}}{{/pascalCase}}Source source;
  final Logger logger;
}

abstract class I{{#pascalCase}}{{name}}{{/pascalCase}}Cache implements I{{#pascalCase}}{{name}}{{/pascalCase}}Repo {}

abstract class I{{#pascalCase}}{{name}}{{/pascalCase}}Source implements I{{#pascalCase}}{{name}}{{/pascalCase}}Repo {}
