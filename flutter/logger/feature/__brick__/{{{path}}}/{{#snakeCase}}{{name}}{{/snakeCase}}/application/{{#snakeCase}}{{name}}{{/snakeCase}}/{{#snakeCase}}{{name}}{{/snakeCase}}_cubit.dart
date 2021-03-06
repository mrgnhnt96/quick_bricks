import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
{{^is_hydrated}}import 'package:bloc/bloc.dart';{{/is_hydrated}}{{#is_hydrated}}
import 'package:hydrated_bloc/hydrated_bloc.dart';{{/is_hydrated}}

import '../../domain/repo/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}_repo.i.dart';
import '../../infrastructure/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}_entity.dao.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.freezed.dart';{{#is_hydrated}}
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.g.dart';{{/is_hydrated}}

@injectable
class {{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State> {{#is_hydrated}}with HydratedMixin {{/is_hydrated}}{
  {{#pascalCase}}{{name}}{{/pascalCase}}Cubit(
    @Named.from({{#pascalCase}}{{name}}{{/pascalCase}}Entity) this._{{#camelCase}}{{name}}{{/camelCase}}Repo,
  ) : super(const {{#pascalCase}}{{name}}{{/pascalCase}}State.loading());

  final I{{#pascalCase}}{{name}}{{/pascalCase}}Repo _{{#camelCase}}{{name}}{{/camelCase}}Repo;

  void init() async {
    emit(const {{#pascalCase}}{{name}}{{/pascalCase}}State.ready());
  }{{#is_hydrated}}

  @override
  {{#pascalCase}}{{name}}{{/pascalCase}}State? fromJson(Map<String, dynamic> json) =>
      {{#pascalCase}}{{name}}{{/pascalCase}}State.fromJson(json);

  @override
  Map<String, dynamic>? toJson({{#pascalCase}}{{name}}{{/pascalCase}}State state) => state.toJson();{{/is_hydrated}}
}
