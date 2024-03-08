import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:online_shoping/Auth/Login.dart';
import 'package:online_shoping/Core/CustomButton.dart';
import 'package:online_shoping/Core/TextFeald.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

bool isNotVisable = true;

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Login(),
              ));
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 107,
              ),
              const Text(
                'WELCOME',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const Gap(20),
              const Text(
                'Name',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const CustomTextFeald(),
              const Gap(20),
              const Text(
                'Email',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const CustomTextFeald(),
              const Gap(20),
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
              const Text(
                'Confirm Password',
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
              const Gap(10),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustmButtom(
                      text: 'SIGN UP',
                      onPressed: () {},
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have account? '),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'SIGN IN',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
