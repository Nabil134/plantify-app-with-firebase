import 'package:flutter/material.dart';

class dContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 70, top: 40),
          height: size.height * 0.3,
          width: size.width,
          color: Colors.green,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text(
                      'Air Purifier',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Image.asset('assets/images/foot.png'),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  'Pepermonia',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 30),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      '440',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    SizedBox(
                      width: size.width * 0.10,
                    ),
                    const Icon(
                      Icons.favorite_border,
                      size: 40,
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    const Image(
                        image: AssetImage(
                      'assets/images/emoji.png',
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 4,
          bottom: 40,
          child: Image.asset(
            'assets/images/Peperomia Obtusfolia.png',
            height: size.height * 0.20,
          ),
        ),
      ],
    );
  }
}
