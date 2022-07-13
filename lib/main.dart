import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AmazonPrimeLogin(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text(
        //   "Login",
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        leading: const Icon(
          Icons.chevron_left,
          size: 32,
        ),
        title: const Center(
          child: Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        color: const Color.fromRGBO(19, 19, 19, 1.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  print("sing in button tapped");
                },
                // onPressed: null,
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const FlatButton(
                onPressed: null,
                child: Text(
                  "Recovery Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AmazonPrimeLogin extends StatelessWidget {
  const AmazonPrimeLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 70,
        leading: const FlatButton(
          onPressed: null,
          child: Text(
            "Back",
            style: TextStyle(color: Colors.blueAccent, fontSize: 14),
          ),
        ),
        title: Image.asset(
          'assets/images/logo.png',
          height: 60,
          width: 70,
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        backgroundColor: const Color.fromRGBO(14, 22, 30, 1.0),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        color: const Color.fromRGBO(14, 22, 30, 1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 13,
            ),
            const Text(
              "Create account",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                hintText: "Name",
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
              style: TextStyle(color: Colors.blueGrey),
            ),
            const SizedBox(
              height: 12,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                hintText: "Your email address",
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
              style: TextStyle(color: Colors.blueGrey),
            ),
            const SizedBox(
              height: 12,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                hintText: "Create a password",
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
              style: TextStyle(color: Colors.blueGrey),
            ),
            const SizedBox(
              height: 11,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.announcement,
                      size: 14,
                      color: Colors.blueAccent,
                    ),
                  ),
                  TextSpan(
                    text: " Password must be at least 6 characters",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: null,
                  fillColor: MaterialStateProperty.all(Colors.white),
                  checkColor: Colors.blueAccent,
                ),
                const Text(
                  "Show Password",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            ButtonTheme(
              minWidth: 1000,
              height: 49,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                child: const Text(
                  "Create your Amazon Account",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "By creating an account, you agree to the",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: " Prime Video Terms of Use",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text:
                        " and license agreements which can be found on the Amazon website.",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            const Center(
              child: Text(
                "Already have and account?",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ButtonTheme(
              minWidth: 1000,
              height: 38,
              child: RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {},
                child: const Text(
                  "Sign-in now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Center(
              child: Text(
                "© 1996-2021, Amazon.com, Inc. or its affiliates",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
