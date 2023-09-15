import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  final String title = 'Profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  // Form key
  final _formKey = GlobalKey<FormState>();

  // Text controllers
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _busStopController = TextEditingController();
  final _semesterController = TextEditingController();
  final _cityController = TextEditingController();
  final _rollNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        shadowColor: Theme.of(context).shadowColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: <Widget>[
            // avatar
            Padding(padding: EdgeInsets.symmetric(vertical: 20), child: CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                controller: _phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                controller: _busStopController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Bus Stop',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                controller: _semesterController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Semester',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                controller: _cityController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'City',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                controller: _rollNumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Roll Number',
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              margin: EdgeInsets.only(top: 50),
              child: FilledButton(
                onPressed: () {
                  debugPrint('Continue button pressed');
                },
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
