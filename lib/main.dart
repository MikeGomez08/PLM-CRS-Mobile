import 'package:flutter/material.dart';
import 'package:flutter_crs/faculty/facultypage.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PLM CRS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Login Page',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String username = usernameController.text.toLowerCase();
                String password = passwordController.text;

                // Simple authentication logic
                if (username == 'staff' && password == 'admin') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FacultyPage()),
                  );
                } else if (username == 'student' && password == 'student') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                } else {
                  // Handle incorrect credentials
                  // For simplicity, showing a snackbar here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Incorrect username or password'),
                    ),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
