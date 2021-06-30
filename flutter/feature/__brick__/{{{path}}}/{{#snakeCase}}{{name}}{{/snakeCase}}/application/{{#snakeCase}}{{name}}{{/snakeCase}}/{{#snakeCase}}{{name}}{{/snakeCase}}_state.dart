part of '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';

@freezed
class {{#pascalCase}}{{name}}{{/pascalCase}}State with _${{#pascalCase}}{{name}}{{/pascalCase}}State {
  const {{#pascalCase}}{{name}}{{/pascalCase}}State._();

  const factory {{#pascalCase}}{{name}}{{/pascalCase}}State.loading() = _Loading;
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}State.ready() = _Ready;
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}State.error() = _Error;{{#is_hydrated}}
  
  factory {{#pascalCase}}{{name}}{{/pascalCase}}State.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{name}}{{/pascalCase}}StateFromJson(json);{{/is_hydrated}}
}
