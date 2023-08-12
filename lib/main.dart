import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
//import 'firebase_options.dart';
import 'main_screen.dart';
//IMPORTACIONES DE FIREBASE
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

 //Future<void> main() async {
   ////INICIALISACION FIREBASE //CONEXION CON FIREBASE
   //WidgetsFlutterBinding.ensureInitialized();
   //await Firebase.initializeApp();
   //await FirebaseMessaging.instance.getInitialMessage();
   //// FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
   //runApp(const MyApp());
 //}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('Handling a background message ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const MyApp());
}



// ...

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home:  MainScreen(),
    );
  }
}
//dHqC5CaDRDuQRXxxozWFMq:APA91bH5OJ4WH-P4KQcvTgZXNmptZl2Zqy4pxFizCJ171hPxs5Z9OBVZElLzZHaUW0X4JJYN2wxcQ150LqVBFRRsdhzpXJa__SGTMpavYh2lK7Z7M73qdzEUHxu45qr1pNv3JiEW6kXF
//efln8d43QymoPDzDYjCsjU:APA91bG8Chp2w827aWDB0H-nf4-oO_CVTcpd13LLtZ7KC3wzW4PrrltJvcfG5ceodP2RroEelrs8NW4WLFQr90wfSFeDR9y4ogMtOfyMfiWQHXpd3ilIZXGGs3wnQ0TmSQLwyY-oJcRJ