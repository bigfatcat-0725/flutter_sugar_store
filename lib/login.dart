import 'package:flutter/material.dart';
import 'package:flutter_sugar/index.dart';
import 'package:flutter_sugar/sign.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Color(0xFF383838),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF383838),
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/macaron2.svg',
                  width: 188,
                  height: 148,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Please sign in to continue",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomForm(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont' have an account? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sign(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xFFFF748C),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  "Or connect with",
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/google.png",
                        width: 42,
                        height: 42,
                      ),
                    ),
                    SizedBox(
                      width: 37,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/facebook.png",
                        width: 42,
                        height: 42,
                      ),
                    ),
                    SizedBox(
                      width: 37,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/twitter.png",
                        width: 42,
                        height: 42,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomForm extends StatelessWidget {
  CustomForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            text: "Email",
            icon: Icons.mail_outlined,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            text: "Password",
            icon: CupertinoIcons.lock,
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            child: const Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Index()),
              );
            },
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFFF748C),
                minimumSize: const Size(199.75, 51),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
          ),
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.text, required this.icon})
      : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextFormField(
            style: const TextStyle(color: Colors.white),
            validator: (value) =>
                value!.isEmpty ? "Please enter some text" : null,
            obscureText: text == "Password" ? true : false,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  icon,
                  color: Color(0xFF666666),
                ),
                hintText: "$text",
                hintStyle: TextStyle(
                  color: Color(0xFF666666),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                filled: true,
                fillColor: const Color(0xFF2E2E2E)),
          ),
        ),
      ],
    );
  }
}
