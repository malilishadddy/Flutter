import 'package:chamaapp/screen/loginscreen.dart';
import 'package:chamaapp/screen/signupscreen.dart';
import 'package:chamaapp/widgets/customscaffold.dart';
import 'package:chamaapp/widgets/welcomewidgetbutton.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Customscaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: 'Welcome Back!\n',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text:
                              '\n Enter your student details to the chama account',
                          style: TextStyle(
                            fontSize: 20.0,
                          )),
                    ]),
                  ),
                ),
              )),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                      child: WelcomeButton(
                    buttonText: 'Login',
                    color: Colors.transparent,
                    textColor: Colors.white,
                    onTap: SignIn(),
                  )),
                  Expanded(
                      child: WelcomeButton(
                    buttonText: 'Sign up',
                    color: Colors.white,
                    textColor: Colors.blue,
                    onTap: Signup(),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
      // child: Text("Welcome  Back To the Chama App"),
    );
  }
}
