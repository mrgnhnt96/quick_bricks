part of '{{#snakeCase}}{{name}}{{/snakeCase}}_entity.dao.dart';

@named
@Injectable(as: I{{#pascalCase}}{{name}}{{/pascalCase}}Repo)
class {{#pascalCase}}{{name}}{{/pascalCase}}Source implements I{{#pascalCase}}{{name}}{{/pascalCase}}Repo {}
