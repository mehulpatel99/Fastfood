import 'package:fastfood/card.dart';
import 'package:flutter/material.dart';

class pasta extends StatefulWidget {
  const pasta({super.key});

  @override
  State<pasta> createState() => _pastaState();
}

class _pastaState extends State<pasta> {
  List pasta = [];
  List price4 = [];
  var count = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pasta'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/image/pasta2.jpg'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Penne pasta',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 190,
                      ),
                      Text(
                        '70s',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count++;
                          pasta.add('Penne');
                          price4.add('70s');
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
                  Image.asset('assets/image/pasta1.jpeg'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Costa pasta',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 190,
                      ),
                      Text(
                        '50s',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count++;
                          pasta.add('Costa');
                          price4.add('50s');
                        });
                      },
                      child: Text('Add'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: () {}, child: Text('Submit')),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => card(
                      name: pasta.toList(),
                      price: price4.toList(),
                      quintity: count.toDouble().toString())));
        },
        label: Text('$count'),
        icon: Icon(Icons.card_giftcard),
      ),
    );
  }
}
