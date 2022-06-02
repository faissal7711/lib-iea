import 'package:flutter/material.dart';

import '../widgets/DashboardCards.dart';

class SignUpAs extends StatelessWidget {
  const SignUpAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary: true,
        centerTitle: true,
        title: const Text("Signup As"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/icon_app.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(33.0),
              child: Text(
                'Signup As',
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.pink,
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DashboardCard(name: 'doctor', imgpath: 'assets/doctor.png'),
                  DashboardCard(name: 'Patient', imgpath: 'assets/patient.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
