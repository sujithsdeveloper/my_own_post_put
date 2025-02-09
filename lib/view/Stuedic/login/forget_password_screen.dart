import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    // Navigate back
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 20),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.info_outline,
                  size: 30,
                )
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Reset Your Password', // Updated heading
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1f2232)),
            ),
            SizedBox(height: 10),
            Text(
              'Enter your email and reset your account password to access your personal account again.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 2,
                  color: Color(0xFFF5FF25), // Border color of the TextField
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Custom container as a button with gradient color
            SizedBox(
              width: double.infinity,
              child: Container(
                height: 59, // Height of the container
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFF5FF25), // #F5FF25
                      Color(0xFFCAF945), // #CAF945
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25), // Border radius 25
                ),
                child: TextButton(
                  onPressed: () {
                    // Perform send action
                  },
                  child: const Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.black, // Text color
                      fontSize: 18, // Font size
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
