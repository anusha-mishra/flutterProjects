 import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class NotificationsServices{
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();
 final AndroidInitializationSettings_androidInitializationSettings=
 AndroidInitializationSettings('logo');
 void initialiseNotifications()async {
  //initializing notifications
 InitializationSettings initializationSettings=
 InitializationSettings(
    android:AndroidInitializationSettings_androidInitializationSettings,);
     flutterLocalNotificationsPlugin.initialize(initializationSettings);

 }

  
 
void sendNotification(String title,String body)async{
   //to send notifications
  // ignore: prefer_const_constructors
  AndroidNotificationDetails androidNotificationDetails= AndroidNotificationDetails(
   'channelId',
      'channelName',
      importance: Importance.max,
      priority: Priority.high,
  );
  NotificationDetails notificationDetails=NotificationDetails(
  android: androidNotificationDetails,
  );
 await flutterLocalNotificationsPlugin.show(0, title, body, notificationDetails);
  


}  

void secheduleNotification(String title,String body)async{
   //to send notifications
  // ignore: prefer_const_constructors
  AndroidNotificationDetails androidNotificationDetails= AndroidNotificationDetails(
   'channelId',
      'channelName',
      importance: Importance.max,
      priority: Priority.high,

  );
  NotificationDetails notificationDetails=NotificationDetails(
  android: androidNotificationDetails,
  );
 await flutterLocalNotificationsPlugin.
 periodicallyShow(0, title, body, RepeatInterval.everyMinute,notificationDetails);
  


}  
void stopNotifications()async{
  flutterLocalNotificationsPlugin.cancelAll();
}
}