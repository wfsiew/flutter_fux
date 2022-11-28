import 'package:flutter/material.dart';
import 'package:flutter_fux/constants.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shortly',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: kFont,
      ),
      home: const MyHomePage(title: 'Shortly'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        toolbarHeight: 0,
      ),
      backgroundColor: kNeutralColor4,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120, right: 120, top: 30),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/logo.png',
                          fit: BoxFit.scaleDown,
                        ),
                        const SizedBox(width: 32),
                        const Text(
                          'Features',
                          style: TextStyle(
                            fontFamily: kFont,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: kNeutralColor2,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Text(
                          'Pricing',
                          style: TextStyle(
                            fontFamily: kFont,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: kNeutralColor2,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Expanded(
                          child: Text(
                            'Resources',
                            style: TextStyle(
                              fontFamily: kFont,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: kNeutralColor2,
                            ),
                          ),
                        ),
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: kFont,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: kNeutralColor2,
                          ),
                        ),
                        const SizedBox(width: 16),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: kPrimaryColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.only(left: 16, right: 16),
                          ),
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontFamily: kFont,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'More than just shorter links',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 56,
                                  fontWeight: FontWeight.w700,
                                  color: kPrimaryColor2,
                                ),
                              ),
                              Text(
                                "Build your brand's recognition and get detailed insights on how your links are performing.",
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          child: Image.asset(
                            'images/illustration-working.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              color: const Color(0xFFF0F1F6),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Advanced Statistics',
                            style: TextStyle(
                              fontFamily: kFont,
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: kPrimaryColor2,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 420,
                            child: Text(
                              'Track how your links are performing across the web with our advanced statistics dashboard.',
                              style: TextStyle(
                                fontFamily: kFont,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kNeutralColor2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120, right: 120, top: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  height: 230,
                                  margin: const EdgeInsets.only(top: 40),
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 25),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(height: 25),
                                      Text(
                                        'Brand Recognition',
                                        style: TextStyle(
                                          fontFamily: kFont,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: kPrimaryColor2,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Boost your brand recognition with each click. Generic links don't mean a thing. Branded links help instil confidence in your content.",
                                        style: TextStyle(
                                          fontFamily: kFont,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: kNeutralColor2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor2,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Image.asset(
                                    'images/icon-brand-recognition.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 8,
                            margin: const EdgeInsets.only(top: 180),
                            color: kPrimaryColor,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 230,
                                    margin: const EdgeInsets.only(top: 40),
                                    padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 25),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        SizedBox(height: 25),
                                        Text(
                                          'Detailed Records',
                                          style: TextStyle(
                                            fontFamily: kFont,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: kPrimaryColor2,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Gain insights into who is clicking your links. Knowing when and where people engage with your content helps inform better decisions.",
                                          style: TextStyle(
                                            fontFamily: kFont,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: kNeutralColor2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor2,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Image.asset(
                                      'images/icon-detailed-records.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 8,
                            margin: const EdgeInsets.only(top: 180),
                            color: kPrimaryColor,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 80),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 230,
                                    margin: const EdgeInsets.only(top: 40),
                                    padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 25),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        SizedBox(height: 25),
                                        Text(
                                          'Fully Customizable',
                                          style: TextStyle(
                                            fontFamily: kFont,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: kPrimaryColor2,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Improve brand awareness and content discoverability through customizable links, supercharging audience engagement.",
                                          style: TextStyle(
                                            fontFamily: kFont,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: kNeutralColor2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor2,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Image.asset(
                                      'images/icon-fully-customizable.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: 250,
              color: kPrimaryColor2,
              child: Stack(
                children: [
                  Image.asset(
                    'images/bg-boost-desktop.png',
                    fit: BoxFit.fitWidth,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Boost your links today',
                          style: TextStyle(
                            fontFamily: kFont,
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: kPrimaryColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                          ),
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              fontFamily: kFont,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              color: kNeutralColor4,
              padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 60),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/logo-w.png',
                    fit: BoxFit.scaleDown,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Features',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Link Shortening',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Branded Links',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Analytics',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 80),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Resources',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Blog',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Developers',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Support',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 80),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Company',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'About',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Our Team',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Careers',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Contact',
                                style: TextStyle(
                                  fontFamily: kFont,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kNeutralColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 80),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/i-facebook.png',
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(width: 18),
                      Image.asset(
                        'images/i-twitter.png',
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(width: 18),
                      Image.asset(
                        'images/i-pinterest.png',
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(width: 18),
                      Image.asset(
                        'images/i-instagram.png',
                        fit: BoxFit.fitWidth,
                      ),
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
}
