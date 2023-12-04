class UserModel {
  int? id;
  String? price;
  String? name;

  UserMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['price'] = price;
    mapping['name'] = name;

    return mapping;
  }
}
