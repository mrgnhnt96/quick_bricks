abstract class IFeatureNameRepo {
  
}

abstract class IFeatureNameEntity implements IFeatureNameRepo {
  IFeatureNameEntity(
    this.cache,
    this.source,
  );

  final IFeatureNameCache cache;
  final IFeatureNameSource source;
}

abstract class IFeatureNameCache implements IFeatureNameRepo {}

abstract class IFeatureNameSource implements IFeatureNameRepo {}
