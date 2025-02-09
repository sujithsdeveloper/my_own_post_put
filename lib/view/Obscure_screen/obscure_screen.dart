import 'package:flutter/material.dart';

class ObscureScreen extends StatefulWidget {
  const ObscureScreen({super.key});

  @override
  State<ObscureScreen> createState() => _ObscureScreenState();
}

class _ObscureScreenState extends State<ObscureScreen> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.lock,
          size: 25,
          color: Colors.green,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 25,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "e mail",
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                obscureText: isObscure,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      isObscure = !isObscure;
                      setState(() {});
                    },
                    child: Icon(
                      isObscure // Change icon based on visibility
                          ? Icons.remove_red_eye_rounded
                          : Icons.remove_red_eye_outlined,
                      color:
                          isObscure ? Colors.red : Colors.black, // Change color
                    ),
                  ),
                  labelText: "password",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
