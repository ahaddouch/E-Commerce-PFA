import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommrce_pfa/constants/constants.dart';
import 'package:ecommrce_pfa/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';

import '../../widgets/primary_button/primary_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool isShowPassword = true;
  TextEditingController newpassword = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Change Password",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          TextFormField(
            controller: newpassword,
            obscureText: isShowPassword,
            decoration: InputDecoration(
              hintText: "New Password",
              prefixIcon: const Icon(
                Icons.password_sharp,
              ),
              suffixIcon: CupertinoButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword = !isShowPassword;
                    });
                  },
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  )),
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          TextFormField(
            controller: confirmpassword,
            obscureText: isShowPassword,
            decoration: const InputDecoration(
              hintText: "Confirm Password",
              prefixIcon: Icon(
                Icons.password_sharp,
              ),
             
            ),
          ),
          const SizedBox(
            height: 36.0,
          ),
          PrimaryButton(
            title: "Update",
            onPressed: () async {
              if (newpassword.text.isEmpty) {
                showMessage("New Password field is empty");
              } else if (confirmpassword.text.isEmpty) {
                showMessage("Confirm Password field is empty");
              } else if (confirmpassword.text == newpassword.text) {
                FirebaseAuthHelper.instance
                    .changePassword(newpassword.text, context);
              } else {
                showMessage("Passwords do not match");
              }
            },
          ),
        ],
      ),
    );
  }
}
