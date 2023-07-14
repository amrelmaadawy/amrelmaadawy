import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../shared/constans/commponant.dart';
import '../../shared/constans/constans.dart';
import '../login/loginScreen.dart';

class registerScreem extends StatelessWidget {
  registerScreem({Key? key}) : super(key: key);

  GlobalKey<FormState> validateKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController registerEmailController = TextEditingController();
    TextEditingController registerPasswordController = TextEditingController();
    return Form(
      key: validateKey,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formField(
              suffix: Icon(Icons.title,),
              onPress: () {
                
              },
                validat: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your username';
                  } else {
                    return null;
                  }
                },
                obscure: false,
                textInput: TextInputType.text,
                controller: nameController,
                text: Text('Username')),
            formField(
               suffix: Icon(Icons.email),
              onPress: () {
                
              },
                validat: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your Email adress';
                  } else {
                    return null;
                  }
                },
                obscure: false,
                textInput: TextInputType.emailAddress,
                controller: registerEmailController,
                text: Text('Email adress')),
            formField(
               suffix: Icon(Icons.visibility),
              onPress: () {
                
              },
                validat: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your password';
                  } else {
                    return null;
                  }
                },
                obscure: true,
                textInput: TextInputType.visiblePassword,
                controller: registerPasswordController,
                text: Text('password')),
            defultElevatButton(
                text: Text('Register'),
                pressed: () {
                  if (validateKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => loginScreen())));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('ENTER YOUR DATA!!!!!')));
                  }
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                TextButton(
                    onPressed: () {

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => loginScreen(),
                          ));
                      // text form field must be empty of login 
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
