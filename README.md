# Quick Bricks

Frequently used bricks for Flutter (from [Mason](https://pub.dev/packages/mason))

## Feature

***depends on bloc, injectable, get it, and freezed***

Import to mason.yaml:

```yaml
feature:
  git:
    url: git@github.com:mrgnhnt96/quick_bricks.git
    path: flutter/feature
```

*You can also use the following to use `Logger` by default*

```yaml
repo:
  git:
    url: git@github.com:mrgnhnt96/quick_bricks.git
    path: flutter/logger/feature
```

Params:

- name
- path
- is_hydrated
- interface_name

 Generates:

```txt
.
└── my_feature
    ├── application
    │   └── my_feature
    │       ├── my_feature_cubit.dart
    │       └── my_feature_state.dart
    ├── domain
    │   ├── models
    │   │   └── my_feature
    │   │       └── my_feature.model.dart
    │   └── repo
    │       └── my_feature
    │           ├── my_feature_methods.json
    │           └── my_feature_repo.i.dart
    ├── features
    │   └── features.md
    ├── infrastructure
    │   └── my_feature
    │       ├── my_feature_cache.dao.dart
    │       ├── my_feature_entity.dao.dart
    │       └── my_feature_source.dao.dart
    └── presentation
        ├── components
        │   └── components.md
        └── my_feature_screen.dart
```

Already has cubit depending on repo, and the cubit is being provided to the screen.

---

## Cubit

***depends on bloc, (hydrated bloc?), injectable, and freezed***

Import to mason.yaml:

```yaml
cubit:
  git:
    url: git@github.com:mrgnhnt96/quick_bricks.git
    path: flutter/cubit
```

Params:

- name
- is_hydrated
- path

 Generates:

```txt
.
└── my_cubit
    ├── my_cubit_cubit.dart
    └── my_cubit_state.dart
```

---

## Repo

***depends on injectable***

Import to mason.yaml:

```yaml
repo:
  git:
    url: git@github.com:mrgnhnt96/quick_bricks.git
    path: flutter/repo
```

*You can also use the following to use `Logger` by default*

```yaml
repo:
  git:
    url: git@github.com:mrgnhnt96/quick_bricks.git
    path: flutter/logger/repo
```

### How to

repo_method_example.json
This file should ready exist and will be used as the config file, should be located in `domain>repo>{{repo name}}`

`interface_name` should be provided as the default interface class name.

call `mason make repo -c {{path-to-repo_method_example.json}}`

Params:

- name
- feature_path
- interface_name // should be located in config file
- methods // should be located in config file

 Generates:

```txt
.
├── domain
│   └── repo
│       └── repo_name
│           ├── repo_method_example.json
│           └── repo_name_repo.i.dart
└── infrastructure
    └── my_repo
        ├── my_repo_cache.dao.dart
        ├── my_repo_entity.dao.dart
        └── my_repo_source.dao.dart
```

---

## Model

***depends on injectable***

Import to mason.yaml:

```yaml
repo:
  git:
    url: git@github.com:mrgnhnt96/quick_bricks.git
    path: flutter/model
```

Params:

- name
- path

 Generates:

```txt
.
└── my_model
    └── my_model.model.dart
```
