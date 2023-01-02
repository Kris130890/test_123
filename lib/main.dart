import 'package:elinext_test_task/presentation/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:path/path.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sqflite/sqflite.dart';
///import 'presentation/di/app_injector.dart';
import 'presentation/screen/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Database database = await _initDatabase();

 /// await initInjector(database);

  runApp(App(AppRouter()));
}

_initDatabase() async {
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, C.DATABASE_NAME);
  return openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
    await db.execute(C.TABLE_INIT);
  });
}

class App extends StatelessWidget {
  final AppRouter appRouter;

  App(this.appRouter);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: C.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        RefreshLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
