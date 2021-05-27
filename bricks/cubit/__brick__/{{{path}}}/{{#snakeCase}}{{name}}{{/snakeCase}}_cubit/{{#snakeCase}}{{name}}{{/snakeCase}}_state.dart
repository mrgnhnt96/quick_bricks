part of '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';

@freezed
class {{#pascalCase}}{{name}}{{/pascalCase}}State with _${{#pascalCase}}{{name}}{{/pascalCase}}State {
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}State.ready() = _Ready;
  {{#isHydrated}}

  factory {{#pascalCase}}{{name}}{{/pascalCase}}State.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{name}}{{/pascalCase}}StateFromJson(json);
  {{/isHydrated}}
}
