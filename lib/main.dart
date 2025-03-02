import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_analyzer_gui/common/common.dart';
import 'package:fvp/fvp.dart' as fvp;

import 'app_root.dart';
import 'main_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // get documents directory path
  String documentsDirectory = join(
    (await getApplicationDocumentsDirectory()).path,
    "PermissionAnalyzerGUI",
  );
  await Directory(documentsDirectory).create(recursive: true);
  String databaseFilename = "permission_analyzer_db.isar";
  if (kDebugMode) {
    print(documentsDirectory);
  }

  // initialize logging
  LoggingService.setupLogger(documentsDirectory, loglevel: Level.WARNING);

  // register flutter video player
  fvp.registerWith();


  // run the application
  runApp(
    ModularApp(
      module: MainModule(
        applicationDocumentDirectory: documentsDirectory,
        databaseFilename: databaseFilename,
      ),
      child: const AppRoot(),
    ),
  );
}
