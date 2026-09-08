
import 'package:firebase_messaging/firebase_messaging.dart';

class NotifService {
  final FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void> initNotif() async {
    // final settings = await messaging.requestPermission();
    // log('${settings.authorizationStatus}');
  }
}
