import 'package:freezed_annotation/freezed_annotation.dart';{{#is_hydrated}}
import 'package:hydrated_bloc/hydrated_bloc.dart';{{/is_hydrated}}
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.freezed.dart';{{#is_hydrated}}
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.g.dart';{{/is_hydrated}}

@injectable
class {{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State> {{#isHydrated}} with HydratedMixin {{/isHydrated}}{
  {{#pascalCase}}{{name}}{{/pascalCase}}Cubit(
    @Named.from({{#pascalCase}}{{name}}{{/pascalCase}}Entity) this._{{#camelCase}}{{name}}{{/camelCase}}Repo,
  ) : super(const {{#pascalCase}}{{name}}{{/pascalCase}}State.loading());

  final I{{#pascalCase}}{{name}}{{/pascalCase}}Repo _{{#camelCase}}{{name}}{{/camelCase}}Repo;

  void init() async {
    emit(const {{#pascalCase}}{{name}}{{/pascalCase}}State.ready());
  }
{{#is_hydrated}}
  @override
  {{#pascalCase}}{{name}}{{/pascalCase}}State? fromJson(Map<String, dynamic> json) =>
      {{#pascalCase}}{{name}}{{/pascalCase}}State.fromJson(json);

  @override
  Map<String, dynamic>? toJson({{#pascalCase}}{{name}}{{/pascalCase}}State state) => state.toJson();{{/is_hydrated}}
}
