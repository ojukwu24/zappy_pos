import 'package:flutter/material.dart';
import 'package:zappy_pos/ui/pages/account_registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left side
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Placeholder for logo
                  Icon(
                    Icons.account_circle,
                    size: 100.0,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "ZAPPY POS",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Right side
          Expanded(
              child: Center(
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    width: 350,
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: 350,
                     child: ElevatedButton(
                      onPressed: () {
                        // Add your login logic here
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(60),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        textStyle: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    width: 350,
                    child: TextButton(
                      onPressed: () {
                         // navigate to register page
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const AccountRegistrationPage()),
                          );
                      },
                      child: const Text('Create New Account'),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: 350,
                    child: TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text('Forgot Password?'),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
