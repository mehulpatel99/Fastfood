import 'package:fastfood/Database/model.dart';
import 'package:fastfood/Database/service.dart';
import 'package:flutter/material.dart';

class card2db extends StatefulWidget {
  const card2db({super.key});

  @override
  State<card2db> createState() => _card2dbState();
}

class _card2dbState extends State<card2db> {
  List<UserModel> mylist = <UserModel>[];
  var _userService = UserService();

  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    var userdata = await _userService.read();
    mylist = <UserModel>[];
    userdata.forEach((rowData) {
      setState(() {
        var _userModel = UserModel();
        _userModel.id = rowData['id'];
        _userModel.name = rowData['name'];
        _userModel.price = rowData['price'];
        mylist.add(_userModel);
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home)),
        title: Text('MyData'),
      ),
      body: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('${mylist[index].name}'),
                leading: Text('${mylist[index].id}'),
                subtitle: Text('${mylist[index].price}'),
              ),
            );
          }),
    );
  }
}
