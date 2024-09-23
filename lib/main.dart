import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CV Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Tajawal', // Use a suitable Arabic font
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My CV'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView (child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Header section
          _Name(
              firstName: 'Wajdy',
              lastName: 'Nasser',
              imagePath: 'images/waj.jpg'),

          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _skill(
                      thTitle: 'Summary',
                      f: 'A skilled illustrator',
                      s: 'with a passion for',
                      t: 'creating in Adobe Crea',
                      fo: 'tive visually Suite '),
                  _skill(
                      thTitle: 'Skill',
                      f: 'creativity',
                      s: 'web develop',
                      t: 'mobile app',
                      fo: 'desiner'),
                  Divider(
                    color: Colors.black,
                    thickness: 4,
                  ),
                  _skill(
                      thTitle: 'Language',
                      f: 'Arabic',
                      s: 'English',
                      t: 'France',
                      fo: 'Truky'),
                ],
              ),
              VerticalDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Experience(
                      title: 'Experience',
                      company: 'Almurisy soft',
                      location: 'Sana\'a - hail st',
                      dates: '2022 - persent',
                      description: 'Lorem ipsum dolor'),
                  _Contact(
                      phone: '787212321',
                      email: 'khalila@gmail.com',
                      address: 'Aden-Alshikh'),
                  Divider(
                    color: Colors.black,
                    thickness: 4,
                  ),
                  _skill(
                      thTitle: 'Language',
                      f: 'Arabic',
                      s: 'English',
                      t: 'France',
                      fo: 'Truky'),
                ],
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}

class _Name extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String imagePath;

  const _Name({
    required this.firstName,
    required this.lastName,
    required this.imagePath,
  });

  String get $imagePath {
    return imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage($imagePath),
          ),
          Text(
            '$firstName $lastName',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _Experience extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String dates;
  final String description;

  const _Experience({
    required this.title,
    required this.company,
    required this.location,
    required this.dates,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
          Text(
            '$company, \n$location',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            dates,
          ),
          const SizedBox(height: 10),
          Text(
            description,
          ),
        ],
      ),
    );
  }
}

class _skill extends StatelessWidget {
  final String thTitle;
  final String? f;
  final String? s;
  final String? t;
  final String? fo;

  const _skill({
    required this.thTitle,
    this.f,
    this.s,
    this.t,
    this.fo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            thTitle,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
          Text(
            '• $f',
          ),
          Text(
            '• $s',
          ),
          Text(
            '• $t',
          ),
          Text(
            '• $fo',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

class _Contact extends StatelessWidget {
  final String _title = 'Contant';
  final String? phone;
  final String? email;
  final String? address;

  const _Contact(
      {required this.phone, required this.email, required this.address});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.blueAccent,
                  ),
                  Icon(
                    Icons.place,
                    color: Colors.redAccent,
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('+967 $phone'),
                  Text('$email'),
                  Text(
                    '$address',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
