import 'package:inject/inject.dart';
import 'package:instagram_flutter/ui/main.dart';

import 'local_module.dart';

//import 'app_component.inject.dart' as g;

@Injector(const [LocalModule])
abstract class AppComponent {
  @provide
  App get app;

//  static Future<AppComponent> create(
//      LocalModule localModule,
//      ) async {
//    return await g.AppComponent$Injector.create(
//      localModule
//    );
//  }

}
