part of '{{#snakeCase}}{{name}}{{/snakeCase}}_entity.dao.dart';

@named
@Injectable(as: I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Cache)
class {{#pascalCase}}{{name}}{{/pascalCase}}Cache extends I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Cache {}
