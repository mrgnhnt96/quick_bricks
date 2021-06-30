abstract class I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Repo {
{{#methods}}
  {{{returnType}}} {{#camelCase}}{{name}}{{/camelCase}}({{#params}}{{start}}{{#isRequired}}required {{/isRequired}}{{{type}}} {{#camelCase}}{{name}}{{/camelCase}}{{#defaultValue}} = {{{defaultValue}}}{{/defaultValue}}, {{end}}{{/params}});
{{/methods}}
}

abstract class I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Entity implements I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Repo {
  I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Entity(
    this.cache,
    this.source,
    this.logger,
  );

  final I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Cache cache;
  final I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Source source;
  final Logger logger;
}

abstract class I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Cache implements I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Repo {}

abstract class I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Source implements I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Repo {}
