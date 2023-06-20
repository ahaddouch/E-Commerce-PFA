import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:provider/provider.dart';
import 'package:ecommrce_pfa/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:ecommrce_pfa/firebase_helper/firebase_options/firebase_options.dart';
import 'package:ecommrce_pfa/provider/app_provider.dart';

import 'constants/dark_theme.dart';
import 'screens/auth_ui/welcome/welcome.dart';
import 'screens/custom_bottom_bar/custom_bottom_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   Stripe.publishableKey =
  "pk_test_51MWx8OAVMyklfe3CsjEzA1CiiY0XBTlHYbZ8jQlGtVFIwQi4aNeGv8J1HUw4rgSavMTLzTwgn0XRlwoTVRFXyu2h00mRUeWmAf";
  await Firebase.initializeApp(
    options: DefaultFirebaseConfig.platformOptions,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),

      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'EMSI SHOP',
          theme: darkThemeData,
          home: StreamBuilder(
            stream: FirebaseAuthHelper.instance.getAuthChange,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return const CustomBottomBar();
              }
              return const Welcome();
            },
          ),
          ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  List<Widget> screen = [
    const HomeScreen(),
    const Center(
      child: Text(
        "Hello",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Page Storage'),
      ),
      body: screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new_rounded),
            label: 'Edit',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const PageStorageKey<String>("page"),
      padding: const EdgeInsets.only(top: 36.0, left: 24.0),
      itemBuilder: (BuildContext context, int index) {
        return Text(
          'Item $index',
          style: const TextStyle(
            fontSize: 24,
          ),
        );
      },
      itemCount: 50,
    );
  }
}
