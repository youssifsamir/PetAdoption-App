//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//providers
import '/providers/accounts.dart';

//screens
import '/screens/tabScreen.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = './loginScreen.dart';

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  String username = '', password = '';
  bool show = false;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AccountsProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              right: -90,
              child: SizedBox(
                height: 480,
                child: Image.asset(
                  './assets/images/cu.jpeg',
                ),
              ),
            ),
            Positioned(
              top: 480,
              child: Container(
                color: const Color.fromRGBO(230, 165, 5, 1),
                height: 200,
                width: 500,
              ),
            ),
            Column(
              children: <Widget>[
                const SizedBox(height: 444),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 400,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        // const SizedBox(height: 25),
                        const SizedBox(height: 45),
                        const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Username: ',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 200,
                                height: 35,
                                color: const Color.fromRGBO(0, 0, 0, 0.05),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 2),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (value) => setState(
                                      () {
                                        username = value;
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Password: ',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 200,
                                height: 35,
                                color: const Color.fromRGBO(0, 0, 0, 0.05),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 2),
                                  child: Stack(
                                    children: <Widget>[
                                      TextField(
                                        decoration: const InputDecoration(
                                            border: InputBorder.none),
                                        obscureText: show ? false : true,
                                        onChanged: (value) => setState(
                                          () {
                                            password = value;
                                          },
                                        ),
                                      ),
                                      Positioned(
                                        right: 5,
                                        bottom: -8,
                                        child: IconButton(
                                          onPressed: () => setState(
                                            () {
                                              show = !show;
                                            },
                                          ),
                                          icon: Icon(show
                                              ? Icons.remove_red_eye
                                              : Icons.remove_red_eye_outlined),
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Don't have an account?",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(width: 15),
                            GestureDetector(
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 55),
                        GestureDetector(
                          onTap: () {
                            if (provider.login(username, password)) {
                              Navigator.of(context).popAndPushNamed(
                                TabScreen.routeName,
                                arguments: username,
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  action: SnackBarAction(
                                    label: '',
                                    onPressed: () {},
                                  ),
                                  content: Text('  Welcome Back $username !'),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  action: SnackBarAction(
                                    label: '',
                                    onPressed: () {},
                                  ),
                                  content: Text(
                                    '                   Wrong Username / Password',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                  ),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(250),
                              color: const Color.fromRGBO(0, 0, 0, 0.05),
                            ),
                            child: Center(
                              child: Text(
                                'LOGIN',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
