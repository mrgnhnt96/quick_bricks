import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';{{#is_hydrated}}
import 'package:clean_simple_eats/features/cache_keys/domain/cache_cubit/cache_cubit.i.dart';{{/is_hydrated}}{{^is_hydrated}}
import 'package:bloc/bloc.dart';{{/is_hydrated}}

part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.freezed.dart';{{#is_hydrated}}
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.g.dart';{{/is_hydrated}}

@injectable
class {{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends {{#is_hydrated}}Cache{{/is_hydrated}}Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State>{
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
  Map<String, dynamic>? toJson({{#pascalCase}}{{name}}{{/pascalCase}}State state) => state.toJson();
{{/is_hydrated}}
}
