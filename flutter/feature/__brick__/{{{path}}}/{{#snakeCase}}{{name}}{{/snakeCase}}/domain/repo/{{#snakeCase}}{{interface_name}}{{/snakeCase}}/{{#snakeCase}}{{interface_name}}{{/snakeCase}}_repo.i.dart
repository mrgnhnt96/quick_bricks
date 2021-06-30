abstract class I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Repo {}

abstract class I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Entity implements I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Repo {
  I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Entity(
    this.cache,
    this.source,
  );

  final I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Cache cache;
  final I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Source source;
}

abstract class I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Cache implements I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Repo {}

abstract class I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Source implements I{{#pascalCase}}{{interface_name}}{{/pascalCase}}Repo {}
