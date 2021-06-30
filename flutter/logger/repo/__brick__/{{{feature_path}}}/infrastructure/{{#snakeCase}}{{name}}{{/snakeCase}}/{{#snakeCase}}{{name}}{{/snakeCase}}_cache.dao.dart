part of '{{#snakeCase}}{{name}}{{/snakeCase}}_entity.dao.dart';

@named
@Injectable(as: I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Cache)
class {{#pascalCase}}{{name}}{{/pascalCase}}Cache extends I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Cache {
{{#methods}}
  @override
  {{{returnType}}} {{#camelCase}}{{name}}{{/camelCase}}({{#params}}{{start}}{{#isRequired}}required {{/isRequired}}{{{type}}} {{#camelCase}}{{name}}{{/camelCase}}{{#defaultValue}} = {{{defaultValue}}}{{/defaultValue}}, {{end}}{{/params}}) async {
    throw UnimplementedError('{{#camelCase}}{{name}}{{/camelCase}} has not been implemented!');
  }
{{/methods}}
}
