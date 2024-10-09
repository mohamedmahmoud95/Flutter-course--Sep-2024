import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_sign_in_screen/cleaner_version_of_login_screen/login_input_validation_functions.dart';
import 'package:simple_sign_in_screen/cleaner_version_of_login_screen/text_field_widget.dart';

class CleanerVersionOfLoginScreen extends StatefulWidget {
  const CleanerVersionOfLoginScreen({super.key});

  @override
  State<CleanerVersionOfLoginScreen> createState() => _CleanerVersionOfLoginScreenState();
}

class _CleanerVersionOfLoginScreenState extends State<CleanerVersionOfLoginScreen> {
  bool passwordIsHidden = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  static const Color greenColor = Color(0xFFc0e863);
  static const Color oliveGreenColor = Color(0xFFafc982);

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            upperImageContainer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  TextFieldWidget(
                      textEditingController: emailController,
                      hintText: 'Email',
                      labelText: 'Email'),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFieldWidget(
                    textEditingController: passwordController,
                    hintText: 'Password',
                    labelText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: oliveGreenColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  loginButton(),

                  const SizedBox(
                    height: 40,
                  ),

                  orDivider(),


                  const SizedBox(
                    height: 40,
                  ),


                  otherLoginOptionsWidget(),

                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              color: oliveGreenColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget upperImageContainer() {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 75, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign in to your account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Sign in to your account",
              style: TextStyle(color: Colors.grey.shade300, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginButton(){
    return  SizedBox(
      width: double.infinity,
      height: 60,
      child: CupertinoButton(
        onPressed: () {
          debugPrint('Login button pressed');
          login();
        },
        color: greenColor,
        borderRadius: BorderRadius.circular(10),
        child: const Text(
          'Login',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
  void login() {
    bool validEmailAndPassword =
        validateEmailAndPassword(emailController.text, passwordController.text);
    if (validEmailAndPassword == true) {
      debugPrint("اشطة اتفضّل");
    } else {
      debugPrint("Invalid email or password");
      //show an error snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid email or password'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  Widget orDivider(){
    return      Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey.shade300,
            thickness: 1,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          'Or login with',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Divider(
            color: Colors.grey.shade300,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget otherLoginOptionsWidget()
  {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: 12, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/google_logo.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Google',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: 12, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/facebook_logo.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Facebook',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
