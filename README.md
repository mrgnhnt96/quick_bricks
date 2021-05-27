# Quick Bricks
Frequently used bricks for Flutter (from Mason)

## Feature
***depends on bloc, injectable, get it, and freezed***

Import to mason.yaml:
```yaml
feature:
  git:
    url: git@github.com:mrgnhnt96/quick_bricks.git
    path: flutter/feature
```

Params: 
 - name
 - path
 
 Generates:
```
new_feature
├── application
│   └── new_feature
│       ├── new_feature_cubit.dart
│       └── new_feature_state.dart
├── domain
│   └── new_feature
│       ├── new_feature.model.dart
├── infrastructure
│   └── new_feature
│       ├── new_feature_cache.dao.dart
│       ├── new_feature_entity.dao.dart
│       ├── new_feature_interface.dart
│       └── new_feature_source.dao.dart
└── presentation
    ├── components
    │   └── components.md
    └── new_feature_screen.dart
```

Already has cubit depending on repo, and the cubit is being provided to the screen.
 
---

## Cubit
***depends on bloc (hydrated bloc?) and freezed***

Import to mason.yaml:
```yaml
cubit:
  git:
    url: git@github.com:mrgnhnt96/quick_bricks.git
    path: flutter/cubit
```

Params: 
 - name
 - isHydrated
 - path
 
 Generates:
```
new_feature
├── new_feature_cubit.dart
├── new_feature_cubit.freezed.dart
└── new_feature_state.dart
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

Params: 
 - name
 - path
 
 Generates:
```
new_feature
├── new_feature_cache.dao.dart
├── new_feature_entity.dao.dart
├── new_feature_interface.dart
└── new_feature_source.dao.dart
```
