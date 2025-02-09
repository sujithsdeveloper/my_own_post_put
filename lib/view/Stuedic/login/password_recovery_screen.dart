import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
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
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.info_outline,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Password Recovery',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Color(0xff1f2232),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'For security reasons, enter a new password that is  different from the previous one.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off),
                    labelText: 'Enter new password',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off),
                    labelText: 'Confirm new password',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  height: 59,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Confirm button logic
                    },
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        color: Colors.black, // Text color
                        fontSize: 18, // Font size
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
