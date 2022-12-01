import 'package:flutter/material.dart';
import 'package:laudry_app/screens/forgot_screen.dart';
import 'package:laudry_app/screens/registers_screen.dart';
//import 'package:mommy_laudry/screens/forgot_screen.dart';
//import 'package:mommy_laudry/screens/registers_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset("asset/images/logo (1).png"),
            Form(
              child: Container(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        hintText: "Phone number",
                        fillColor: Color.fromARGB(255, 243, 243, 243),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      clipBehavior: Clip.none,
                      // width: double.infinity,
                      // height: 50,
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          hintText: "Password",
                          fillColor: Color.fromARGB(255, 243, 243, 243),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const ForgotPassword())));
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Color(0xffe580ad),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffCE1567),
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  onPressed: (() {}),
                  child: const Text("Login "),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset("asset/images/touch.png"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            const Text(
              "You can also login with",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("asset/images/OpenID_Facebook.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset("asset/images/openID_Google.png")
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                // Text(
                //   " Sign up now",
                //   style: TextStyle(color: Color(0xffCE1567)),
                // )
                TextButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const RegistersScreen())));
                    }),
                    child: const Text(
                      "Sign up now",
                      style: TextStyle(color: Color(0xffCE1567)),
                    ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
