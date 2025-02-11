import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leaf App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: const Color(0xFF9EC9A7),
          surface: const Color(0xFF9EC9A7),
          secondary: const Color.fromARGB(255, 113, 178, 97),
        ),
      ),
      home: const _LoginScreen(),
    );
  }
}

// {super.key}
class _LoginScreen extends StatefulWidget {  // Private widget class
  const _LoginScreen();

  @override
  _LoginScreenState createState() => _LoginScreenState();  // Matches private state
}

class _LoginScreenState extends State<_LoginScreen> {
  String buttonText = "Sign in"; // A variable to hold the message

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFA3D9A5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "WELCOME TO LEAF",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "Login",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 15),
                      backgroundColor: const Color(0xFF9EC9A7),
                    ),
                    onPressed: () {
                      setState(() {
                        buttonText = "Button Pressed";  // Update the button text
                      });
                    },
                    child: const Text(
                      'sign In',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    buttonText,  // Display the message when button is pressed
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        buttonText = "Sign Up Button Pressed";  // Change message on Sign Up button press
                      });
                    },
                    child: const Text(
                      'sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}