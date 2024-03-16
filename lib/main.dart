import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:menu/routes/routes.dart';
import 'package:provider/provider.dart';
import 'package:menu/database/auth/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:const FirebaseOptions(
    apiKey: 'AIzaSyC8KgvOfEhqDmOmH9PDmm9FpuF9gT1CyfA', 
    appId: '1:583188482453:android:f861d2f3404af14afa8e9c', 
    messagingSenderId: '583188482453',
    projectId:'menu222104',
    storageBucket: 'menu222104.appspot.com' )
  );
  runApp(const ThemeAppMenu());
}

class ThemeAppMenu extends StatelessWidget {
  const ThemeAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      initialData: null,
      value: AuthService().currentUser,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}

