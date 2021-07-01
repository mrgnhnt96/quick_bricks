import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';{{#is_hydrated}}
import 'package:hydrated_bloc/hydrated_bloc.dart';{{/is_hydrated}}{{^is_hydrated}}
import 'package:bloc/bloc.dart';{{/is_hydrated}}

part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.freezed.dart';{{#is_hydrated}}
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.g.dart';{{/is_hydrated}}

@injectable
class {{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State> {{#is_hydrated}} with HydratedMixin {{/is_hydrated}}{
  {{#pascalCase}}{{name}}{{/pascalCase}}Cubit() : super(const {{#pascalCase}}{{name}}{{/pascalCase}}State.ready());

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
