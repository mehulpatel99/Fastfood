import 'package:fastfood/Database/service.dart';
import 'package:fastfood/card.dart';
import 'package:fastfood/Database/model.dart';
import 'package:fastfood/card2.dart';
import 'package:flutter/material.dart';

class pizza2 extends StatefulWidget {
  const pizza2({super.key});

  @override
  State<pizza2> createState() => _pizza2State();
}

List pizzamenu = [];
List price2 = [];

class _pizza2State extends State<pizza2> {
  var count = 0.0;

  String? pizza_category;
  String? pizza_price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home)),
      ),
      body: Container(
        // decoration: BoxDecoration(
        // image: DecorationImage(image: AssetImage('assets/image/food.jpg'),fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/image/pizza.jpg'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Large pizza',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            '80s',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              count++;
                              // pizzamenu.add('large');
                              // price2.add('40s');

                              pizza_category = "large";
                              pizza_price = "40Rs";
                            });
                          },
                          child: Text('Add'))
                    ],
                  ),
                ),
                Card(
                  elevation: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/image/pizza2.jpeg'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Medium pizza',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            '60s',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              count++;
                              pizzamenu.add('Medium');
                              price2.add('30s');
                            });
                          },
                          child: Text('Add'))
                    ],
                  ),
                ),
                Card(
                  elevation: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/image/pizza3.jpeg'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Small pizza',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            '40s',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              count++;
                              pizzamenu.add('Small');
                              price2.add('20s');
                            });
                          },
                          child: Text('Add'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(
                          () async {
                            if (pizzamenu.isNotEmpty && price2.isNotEmpty) {
                              var usermodel = UserModel();
                              var userservice = UserService();

                              usermodel.name = pizza_category;
                              usermodel.price = pizza_price;
                              var result =
                                  await userservice.saveuser(usermodel);
                              print('result=$result');
                              print('Succesfull');

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => card2db()));
                            }
                          },
                        );
                      },
                      child: Text('Submit')),
                )
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => card(
          //             name: pizzamenu.toList(),
          //             price: price2.toList(),
          //             quintity: count.toString())));
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => card2db()));
        },
        label: Text('$count'),
        icon: Icon(Icons.card_membership),
      ),
    );
  }
}
