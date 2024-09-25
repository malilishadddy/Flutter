import 'package:chamaapp/widgets/customscaffold.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return const Customscaffold(
      child: Text('Sign up'),
    );
  }
}
