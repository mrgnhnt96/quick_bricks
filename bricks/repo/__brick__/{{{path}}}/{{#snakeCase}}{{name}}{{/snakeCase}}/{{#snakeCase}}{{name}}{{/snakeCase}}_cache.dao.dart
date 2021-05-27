import 'package:injectable/injectable.dart';

import './{{#snakeCase}}{{name}}{{/snakeCase}}_interface.dart';

@named
@Injectable(as: I{{#pascalCase}}{{name}}{{/pascalCase}}Repo)
class {{#pascalCase}}{{name}}{{/pascalCase}}Cache implements I{{#pascalCase}}{{name}}{{/pascalCase}}Repo {}
