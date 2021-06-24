part of '{{#snakeCase}}{{name}}{{/snakeCase}}_entity.dao.dart';

@named
@Injectable(as: I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Source)
class {{#pascalCase}}{{name}}{{/pascalCase}}Source extends I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Source {}
