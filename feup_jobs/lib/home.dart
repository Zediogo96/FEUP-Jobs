import 'package:flutter/material.dart';
import 'Components/NavigationBar.dart';
import 'login.dart';
import 'listing.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String _title = 'FEUP Jobs';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: headerBar(),
        body: const HomeOptionsWidget(),
      ),
    );
  }
}

class HomeOptionsWidget extends StatefulWidget {
  const HomeOptionsWidget({Key? key}) : super(key: key);

  @override
  State<HomeOptionsWidget> createState() => _HomeOptionsWidget();
}

class _HomeOptionsWidget extends State<HomeOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            alignment: Alignment.center,
            child: Image.asset(
              'images/logo.png',
              height: 280,
            ),
          ),
          Container(
            height: 50,
            width: 200,
            color: Color.fromARGB(255, 223, 185, 128),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 169, 47, 26),
              ),
              child: const Text('Login'),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            height: 50,
            width: 200,
            color: Color.fromARGB(255, 223, 185, 128),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Listing()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 169, 47, 26),
              ),
              child: const Text('Continue as guest'),
            ),
          ),
        ],
      ),
    );
  }
}