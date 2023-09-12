import 'package:flutter/material.dart';
//ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding : const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Center(
                  child: Text('Log In ',
               style: TextStyle(
                   fontSize: 40,
                   fontWeight: FontWeight.bold,
               ),
               ),
                ),
                const SizedBox(height: 40,),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  // onFieldSubmitted: (value){
                  //   print(value);
                  // },
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  // onFieldSubmitted: (value){
                  //   print(value);
                  // },
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: (){
                      // print(emailController.text);
                      // print(passwordController.text);
                    },
                      child:const Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?",),
                    TextButton(
                        onPressed: (){},
                        child: const Text('Register Now'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}