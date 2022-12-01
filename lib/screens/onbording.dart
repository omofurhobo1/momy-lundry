import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laudry_app/screens/register_screen.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  Widget onboard(
          {required String urlImage,
          required String title,
          required String subtiltle,
          required String uriIcon,
          required String header}) =>
      Container(
        //color: Color,
        child: Column(
          //alignment: AlignmentDirectional.bottomCenter,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(uriIcon),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    header,
                    style: const TextStyle(
                      color: Color(0xff38106A),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: "Pacifico",
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(urlImage),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xff292929),
                  fontWeight: FontWeight.w400,
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              subtiltle,
              style: const TextStyle(
                  color: Color(0xff595757),
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Container(
            margin: const EdgeInsets.only(left: 30, right: 24),
            clipBehavior: Clip.none,
            child: PageView(
              children: [
                onboard(
                    urlImage: "asset/images/Frameframe 3.png",
                    title: "All types of Clothes",
                    subtiltle:
                        "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur iusto, velit? Voluptates ex molestias excepturi, dolorum magni qui eius non, repellat id consequuntur, eos magnam sit fuga? Delectus error, beatae.",
                    uriIcon: 'asset/images/icon.png',
                    header: 'Momy Laudry'),
                onboard(
                    urlImage: 'asset/images/Frame.png',
                    title: 'Professional Work',
                    subtiltle:
                        'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur iusto, velit? Voluptates ex molestias excepturi, dolorum magni qui eius non, repellat id consequuntur, eos magnam sit fuga? Delectus error, beatae.',
                    uriIcon: 'asset/images/icon.png',
                    header: 'Momy Laudry'),
              ],
            ),
          ),
        ),
        bottomSheet: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5,
            ),
            child: Container(
              color: const Color(0xffE5E5E5),
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                            return const RegisterScreen();
                          }));
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              color: Color(0xff38106A),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffCE1567),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// 