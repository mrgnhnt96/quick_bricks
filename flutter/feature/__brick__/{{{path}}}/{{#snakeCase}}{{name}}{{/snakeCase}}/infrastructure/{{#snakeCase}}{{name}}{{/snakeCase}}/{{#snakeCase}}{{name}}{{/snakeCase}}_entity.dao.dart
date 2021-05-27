// ignore_for_file: unused_field
import 'package:injectable/injectable.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_cache.dao.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_interface.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_source.dao.dart';

@named
@Injectable(as: I{{#pascalCase}}{{name}}{{/pascalCase}}Repo)
class {{#pascalCase}}{{name}}{{/pascalCase}}Entity implements I{{#pascalCase}}{{name}}{{/pascalCase}}Repo {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Entity(
    @Named.from({{#pascalCase}}{{name}}{{/pascalCase}}Cache) this._cache,
    @Named.from({{#pascalCase}}{{name}}{{/pascalCase}}Source) this._source,
  );

  final I{{#pascalCase}}{{name}}{{/pascalCase}}Repo _source;
  final I{{#pascalCase}}{{name}}{{/pascalCase}}Repo _cache;
}
