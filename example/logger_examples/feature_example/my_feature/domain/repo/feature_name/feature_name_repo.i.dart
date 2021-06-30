abstract class IMyFeatureRepo {}

abstract class IMyFeatureEntity implements IMyFeatureRepo {
  IMyFeatureEntity(
    this.cache,
    this.source,
    this.logger,
  );

  final IMyFeatureCache cache;
  final IMyFeatureSource source;
  final Logger logger;
}

abstract class IMyFeatureCache implements IMyFeatureRepo {}

abstract class IMyFeatureSource implements IMyFeatureRepo {}
