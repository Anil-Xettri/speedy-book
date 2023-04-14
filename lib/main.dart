import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:speedy_book/controller/core_controller.dart';
import 'package:speedy_book/utils/config.dart';
import 'package:speedy_book/utils/pages.dart';
import 'package:speedy_book/utils/theme.dart';
import 'package:speedy_book/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const SpeedyBook());
}

class SpeedyBook extends StatelessWidget {
  const SpeedyBook({super.key});

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      publicKey: Config.khaltiPublicKeyTest,
      builder: (context, navigatorKey) {
        return GetMaterialApp(
          localizationsDelegates: const [KhaltiLocalizations.delegate],
            navigatorKey: navigatorKey,
          initialBinding: BindingsBuilder(() {
            Get.put(CoreController());
          }),
          debugShowCheckedModeBanner: false,
          getPages: pages,
          theme: basicTheme(),
          initialRoute: SplashScreen.routeName,
        );
      },
    );
  }
}
