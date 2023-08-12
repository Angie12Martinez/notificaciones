import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:logger/logger.dart';


class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static final _logger = Logger(); // Crear una instancia de Logger

  static Future<void> initializeApp() async {
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    _logger.d('Token: $token'); // Utilizar métodos de Logger
  }
}
