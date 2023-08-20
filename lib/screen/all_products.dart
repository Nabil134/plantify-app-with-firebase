import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TopPick extends StatelessWidget {
  TopPick({super.key});
  CollectionReference products =
      FirebaseFirestore.instance.collection("products");
  TextEditingController companyName = TextEditingController();
  TextEditingController productName = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  /*addProduct start here*/
  addProduct() {
    CollectionReference products =
        FirebaseFirestore.instance.collection("products");
    products
        .add({
          "companyName": companyName.text,
          "productName": productName.text,
          "productPrice": productPrice.text
        })
        .then((value) => print("Product Added"))
        .catchError((e) => print(e));
  }

  getAllProducts() async {
    return products.get();
  }

  /*addProduct end here*/
/*topPick  start here*/
  topPick(context, companyName, productName, productPrice, productImage) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Stack(children: [
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
                    Text(
                      companyName,
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
                  productName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 30),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      productPrice,
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
            productImage,
            height: size.height * 0.20,
          ),
        ),
      ]),
    );
  }

/*topPick  end here*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: getAllProducts(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (context, Index) {
                        ListTile(
                          title: Column(
                            children: [
                              topPick(
                                  context,
                                  'Air Purifie',
                                  'Watermelon',
                                  '200',
                                  'assets/images/Peperomia Obtusfolia.png'),
                            ],
                          ),
                        );
                      }),
                );
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
