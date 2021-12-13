import 'package:akro/screens/home_screen.dart';
import 'package:akro/screens/login_screen.dart';
import 'package:akro/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Akro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen()  //InitializerWidget()
    );
  }
}
/* class InitializerWidget extends StatefulWidget {
   @override
   _InitializerWidgetState createState() => _InitializerWidgetState();
 }

 class _InitializerWidgetState extends State<InitializerWidget> {

  late FirebaseAuth _auth;

  late User _user;

  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _auth = FirebaseAuth.instance;
    _user = _auth.currentUser!;
  }

  @override
   Widget build(BuildContext context) {
     return isLoading ? Scaffold(
       body: Center(
         child: CircularProgressIndicator(),

       ),
     ) : _user == null ? LoginScreen() : SplashScreen();
   }
 }
 */