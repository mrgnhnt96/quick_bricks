import 'package:injectable/injectable.dart';
import 'package:clean_simple_eats/infrastructure/firebase/i_firebase.dart';

import './{{#snakeCase}}{{name}}{{/snakeCase}}_interface.dart';

@named
@Injectable(as: I{{#pascalCase}}{{name}}{{/pascalCase}}Repo)
class {{#pascalCase}}{{name}}{{/pascalCase}}Source with IFirebase implements I{{#pascalCase}}{{name}}{{/pascalCase}}Repo {}
