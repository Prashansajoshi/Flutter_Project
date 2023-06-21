import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //to get data of parent key <super.key>

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.0,
          leading: Icon(Icons.arrow_back),
          title: Text("Back To Shopping"),
          actions: [
            Icon(Icons.favorite_border),
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image.asset(
              //"assets/images/postimg.jpg",)      //For local image
              Image.network(
                "https://media.istockphoto.com/id/1369085156/photo/portrait-of-happy-black-father-carrying-daughter-on-back-outdoors-family-happiness-love.webp?b=1&s=170667a&w=0&k=20&c=3s-dZmmJLWdWMn-I8SdN4Qlqr_2wWiaGoIkjL9s1KyA=",
                //For network image

                width: MediaQuery.of(context).size.width,
                height: 100,
                fit: BoxFit.cover, //compares to object-fit in css
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [Text("Click Here"), Icon(Icons.arrow_drop_down)],
                ),
              ),
              Text(
                "Kapka Valor",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      Text(
                        "5.0 Stars",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$5000",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              const Text(
                "Lorem Ipsu Lorem Ipsu Lorem Ipsu Lorem Ipsu Lorem Ipsu Lorem IpsuLorem Ipsu",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  FilledButton(
                    // onpressed function
                    onPressed: () {
                      print("buy now");
                    },
                    child: Text("Buy Now"),
                  ),
                  FilledButton(
                    // onpressed function
                    onPressed: () {
                      print("Add a Bag");
                    },
                    child: Text("Add a Bag"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
