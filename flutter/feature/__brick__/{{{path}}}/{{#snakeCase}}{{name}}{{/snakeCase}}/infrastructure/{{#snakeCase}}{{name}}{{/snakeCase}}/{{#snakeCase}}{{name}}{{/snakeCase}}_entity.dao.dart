// ignore_for_file: unused_field,unnecessary_lambdas
import 'package:injectable/injectable.dart';

import '../../domain/repo/{{#snakeCase}}{{interface_name}}{{/snakeCase}}/{{#snakeCase}}{{interface_name}}{{/snakeCase}}_repo.i.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_cache.dao.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_source.dao.dart';

@named
@Injectable(as: I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Repo)
class {{#pascalCase}}{{name}}{{/pascalCase}}Entity extends I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Entity {
  {{#pascalCase}}{{name}}{{/pascalCase}}Entity(
    @Named.from({{#pascalCase}}{{name}}{{/pascalCase}}Cache) I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Cache _cache,
    @Named.from({{#pascalCase}}{{name}}{{/pascalCase}}Source) I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Source _source,
  ): super(_cache, _source);

  {{#methods}}
  @override
  {{{returnType}}} {{#camelCase}}{{name}}{{/camelCase}}({{#params}}{{start}}{{#isRequired}}required {{/isRequired}}{{{type}}} {{name}}{{#defaultValue}} = {{{defaultValue}}}{{/defaultValue}}, {{end}}{{/params}}) => source.{{#camelCase}}{{name}}{{/camelCase}}({{#params}}{{#isNamed}}{{name}}: {{/isNamed}}{{name}}, {{/params}});

  {{/methods}}
}
