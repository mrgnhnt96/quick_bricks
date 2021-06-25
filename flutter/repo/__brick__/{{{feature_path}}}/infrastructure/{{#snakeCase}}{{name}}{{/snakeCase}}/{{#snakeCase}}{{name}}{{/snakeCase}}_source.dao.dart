part of '{{#snakeCase}}{{name}}{{/snakeCase}}_entity.dao.dart';

@named
@Injectable(as: I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Source)
class {{#pascalCase}}{{name}}{{/pascalCase}}Source extends I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Source {
  {{#methods}}
  @override
  Future<{{returnType}}> {{#camelCase}}{{name}}{{/camelCase}}({{#params}}{{start}}{{#isRequired}}required {{/isRequired}}{{type}} {{#camelCase}}{{name}}{{/camelCase}}, {{end}}{{/params}}) async {
    //TODO: implement {{#camelCase}}{{name}}{{/camelCase}}
    throw UnimplementedError('{{#camelCase}}{{name}}{{/camelCase}} has not been implemented!');
  }

  {{/methods}}
}
