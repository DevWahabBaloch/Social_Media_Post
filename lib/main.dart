import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const SocialPostDesign(),
    );
  }
}

class SocialPostDesign extends StatefulWidget {
  const SocialPostDesign({
    super.key,
  });

  @override
  State<SocialPostDesign> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SocialPostDesign> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height * 0.7,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                        spreadRadius: 1,
                        offset: Offset(4, 4)),
                    const BoxShadow(
                        color: Colors.white,
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: Offset(-4, -4)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: height * 0.13,
                          width: width * 0.13,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/wahab baloch.jpeg'),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Wahab Baloch',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('2 min ago'),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 30),
                          child: Container(
                            color: Colors.transparent,
                            height: height * 0.06,
                            width: width * 0.13,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/checked.png',
                                  height: height * 0.02,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Icon(Icons.more_horiz_outlined),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        '''I have made this table and it is for sale in only
120\$ Who wanna buy?''',
                        style: TextStyle(
                            color: Color.fromARGB(255, 158, 158, 158),
                            fontSize: 16),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Image.asset(
                          'assets/table.jpg',
                          height: height * 0.35,
                          width: width * 0.83,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/wow.png', height: height * 0.04),
                          Image.asset('assets/comment.png', height: height * 0.025),
                          Padding(
                            padding: const EdgeInsets.only(right: 160),
                            child: Image.asset('assets/send (1).png', height: height * 0.023),
                          ),
                          Text('5 Comments')
                        ],
                      ),
                    ),
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
