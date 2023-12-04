import 'package:fastfood/card.dart';
import 'package:fastfood/pasta.dart';
import 'package:fastfood/pizza.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class pizza extends StatefulWidget {
  const pizza({super.key});

  @override
  State<pizza> createState() => _pizzaState();
}

class _pizzaState extends State<pizza> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/food.jpg'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.food_bank,color: Colors.white,),
          title: Text('Fastfood',style: TextStyle(color: Colors.white),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to Fastfood',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                '-----Menu-----',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  height: 250,
                  width: 300,
                  child: Card(
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => pizza2()));
                            },
                            child: Image.asset('assets/image/pizza.jpg',fit: BoxFit.cover,),
                              ),
                              Text('Pizza',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),)
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                width: 300,
                child: Card(
                    // height: 200,
                    // width: 200,
                    // decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image/pasta2.jpg'))),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => pasta()));
                            },
                            // child: Text(
                            //   'Pasta',
                            //   style: TextStyle(fontSize: 40),
                            // )),
                            child: Image.asset('assets/image/pasta2.jpg',fit: BoxFit.fill,),),
                            Text('Pasta',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),)
                      ],
                    )),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              myalertdialog(context);
            },
            label: Icon(Icons.exit_to_app)),
      ),
    );
  }

  void myalertdialog(BuildContext Context) {
    AlertDialog myalert = AlertDialog(
      title: Text('Alert'),
      content: Text('Are you sure want to exit!'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(Context, rootNavigator: true).pop();
            },
            child: Text('Yes')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(Context);
            },
            child: Text('NO'))
      ],
    );
    showDialog(context: Context, builder: (Context) => myalert);
  }
}
