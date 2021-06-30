import 'package:farmbot_flutter/services/app_info/app_info.dart';
import 'package:flog/flog.dart';

export 'package:flog/flog.dart';

enum Features {
  auth,
  hydrate,
}

void setUpFlog() {
  Flog.delegate = FlogDelegate(
    flogError: (message, [stacktrace]) {
      // if (AppInfo.environment != AppEnvironment.dev)
      // Sentry.captureException(
      //   message,
      //   stackTrace: stacktrace,
      //   hint: 'Error',
      // );
    },
    flogFatal: (message, [stacktrace]) {
      // if (AppInfo.environment != AppEnvironment.dev)
      // Sentry.captureException(
      //   message,
      //   stackTrace: stacktrace,
      //   hint: 'Fatal',
      // );
    },
    flogImportant: (message) {
      // if (AppInfo.environment != AppEnvironment.dev)
      //   Sentry.addBreadcrumb(
      //     Breadcrumb(
      //       message: message.toString(),
      //       level: SentryLevel.warning,
      //       timestamp: DateTime.now(),
      //       category: 'Important',
      //       type: 'Important',
      //     ),
      //     hint: 'Important',
      //   );
    },
    flogInfo: (message, [feature]) {
      // if (AppInfo.environment != AppEnvironment.dev)
      //   Sentry.addBreadcrumb(
      //     Breadcrumb(
      //       message: message.toString(),
      //       timestamp: DateTime.now(),
      //       category: _clean((feature ?? 'Info').toString()),
      //       type: 'Info',
      //     ),
      //     hint: feature ?? 'Info',
      //   );
    },
    flogRequest: (message, [feature]) {
      // if (AppInfo.environment != AppEnvironment.dev)
      //   Sentry.addBreadcrumb(
      //     Breadcrumb(
      //       message: message.toString(),
      //       timestamp: DateTime.now(),
      //       category: _clean((feature ?? 'Request').toString()),
      //       type: 'Request',
      //     ),
      //     hint: feature ?? 'Request',
      //   );
    },
    flogNav: (message) {
      // if (AppInfo.environment != AppEnvironment.dev)
      //   Sentry.addBreadcrumb(
      //     Breadcrumb(
      //       message: message.toString(),
      //       timestamp: DateTime.now(),
      //       type: 'Nav',
      //       category: 'Nav',
      //     ),
      //     hint: 'Nav',
      //   );
    },
    flogState: (state, [feature]) {
      // if (AppInfo.environment != AppEnvironment.dev)
      //   Sentry.addBreadcrumb(
      //     Breadcrumb(
      //       message: state.toString(),
      //       timestamp: DateTime.now(),
      //       category: _clean((feature ?? 'State').toString()),
      //       type: 'State',
      //     ),
      //     hint: feature ?? 'State',
      //   );
    },
  );
  Flog.filter([], allowState: false);

  Flog.setUp(
    allowLog: () {
      if (AppInfo.environment != AppEnvironment.prod) return true;
      return false;
    },
    formats: FlogFormats(
      error: StatementFormat(
        textFormat: TextFormat(
          FlogColors.red,
          isBold: true,
        ),
      ),
      fatal: StatementFormat(
        backgroundColor: BackgroundColor(FlogColors.red),
        textFormat: TextFormat(
          FlogColors.white,
          isBold: true,
        ),
      ),
      state: StatementFormat(
        textFormat: TextFormat(
          FlogColors.white,
          isBold: true,
        ),
      ),
      nav: StatementFormat(
        textFormat: TextFormat(
          FlogColors.custom,
          rgb: const RGB(red: 169, blue: 169, green: 169),
          isBold: true,
        ),
      ),
      request: StatementFormat(
        textFormat: TextFormat(
          FlogColors.yellow,
          isBold: true,
        ),
      ),
      important: StatementFormat(
        backgroundColor: BackgroundColor(FlogColors.yellow),
        textFormat: TextFormat(
          FlogColors.black,
          isBold: true,
        ),
      ),
      info: StatementFormat(
        textFormat: TextFormat(
          FlogColors.custom,
          rgb: const RGB(red: 89, blue: 231, green: 245),
          isBold: true,
        ),
      ),
    ),
  );
}
