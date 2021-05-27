import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
{{#isHydrated}}
import 'package:hydrated_bloc/hydrated_bloc.dart';
{{/isHydrated}}

import '../../infrastructure/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}_entity.dao.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}.freezed.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State> {{#isHydrated}}with HydratedMixin {{/isHydrated}}{
  {{#pascalCase}}{{name}}{{/pascalCase}}Cubit(
    @Named.from({{#pascalCase}}{{name}}{{/pascalCase}}Entity) this._{{#snakeCase}}{{name}}{{/snakeCase}}Repo,
  ) : super(const {{#pascalCase}}{{name}}{{/pascalCase}}State.ready());

  // ignore: unused_field
  final I{{#pascalCase}}{{name}}{{/pascalCase}}Repo _{{#snakeCase}}{{name}}{{/snakeCase}}Repo;

  {{#isHydrated}}
  @override
  {{#pascalCase}}{{name}}{{/pascalCase}}State? fromJson(Map<String, dynamic> json) =>
      {{#pascalCase}}{{name}}{{/pascalCase}}State.fromJson(json);

  @override
  Map<String, dynamic>? toJson({{#pascalCase}}{{name}}{{/pascalCase}}State state) => state.toJson();
  {{/isHydrated}}
}
