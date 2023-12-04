import 'package:fastfood/Database/repository.dart';
import 'package:fastfood/Database/model.dart';

class UserService {
  late Repository? _repository;

  UserService() {
    _repository = Repository();
  }

  saveuser(UserModel? _usermodel) async {
    return await _repository?.insertdata('data', _usermodel!.UserMap());
  }

  updateuser(UserModel? _usermodel) async {
    return await _repository?.updatedata('data', _usermodel!.UserMap());
  }

  read() async {
    return await _repository?.getdata('data');
  }
}
