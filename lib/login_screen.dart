import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var email = TextEditingController();
    var password = TextEditingController();
    var iconti = const Icon(
      Icons.remove_red_eye,
    );
    bool to = true;
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 30,
      //   title: const Center(
      //     child: Text(
      //     "Ahmed",
      //   ),
      // ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 55, 89, 117),
                  fontFamily: 'serif',
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              TextFormField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                // onFieldSubmitted: (value){
                //   print(value);
                // },
                //onChanged: (value) => print(val);
                decoration: const InputDecoration(
                    //hintText: "Email Adress",
                    labelText: "Email Adress",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: to, // make pass => ****
                style: const TextStyle(
                  //fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
                // onFieldSubmitted: (value){
                //   print(value);
                // },
                //onChanged: (value){print(val);},
                decoration: InputDecoration(
                  //hintText: "Email Adress",
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  labelText: "Password",
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: iconti,
                    onPressed: () {
                      to = !to;
                      print("AAS");
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 64, 101, 131),
                child: MaterialButton(
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'serif',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    print(email.text);
                    print(password.text);
                  },
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don\'t have an account ?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print("go to Register");
                    },
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'serif',
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
