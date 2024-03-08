import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:online_shoping/Auth/SignUp.dart';
import 'package:online_shoping/Core/CustomButton.dart';
import 'package:online_shoping/Core/TextFeald.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

bool isNotVisable = true;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 216,
              ),
              const Text(
                'Hello !',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              const Text(
                'WELCOME BACK',
                style: TextStyle(
                    color: Color(
                      0xff303030,
                    ),
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const Gap(40),
              const Text(
                'Email',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const CustomTextFeald(),
              const Gap(10),
              const Text(
                'Password',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              CustomTextFeald(
                suffixIcon: (isNotVisable)
                    ? const Icon(Icons.visibility_sharp)
                    : const Icon(Icons.visibility_off),
                onTap: () {
                  setState(() {
                    isNotVisable = !isNotVisable;
                  });
                },
              ),
              const Gap(20),
              TextButton(
                  onPressed: () {},
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        const Gap(20),
                        CustmButtom(
                          onPressed: () {Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const Card(),
                            ));},
                          text: 'Log in',
                        ),
                        const Gap(20),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const SingUp(),
                            ));
                          },
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
