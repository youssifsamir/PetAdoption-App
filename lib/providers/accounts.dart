//packages
import 'package:flutter/material.dart';

class Account {
  final String username, password, gender, age, email, avatar;
  int points;
  Account({
    required this.username,
    required this.password,
    required this.gender,
    required this.age,
    required this.email,
    required this.avatar,
    required this.points,
  });
}

class AccountsProvider with ChangeNotifier {
  String currentAvatar = '';

  final List<Account> _AccountsList = [
    Account(
      username: 'Habiba',
      password: '123',
      gender: 'F',
      age: '21',
      email: 'habiba@gmail.com',
      avatar: './assets/images/habiba.jpeg',
      points: 250,
    ),
    Account(
      username: 'Joe',
      password: '456',
      gender: 'M',
      age: '21',
      email: 'joe@gmail.com',
      avatar: './assets/images/me.jpeg',
      points: 200,
    ),
    Account(
      username: 'Sarah',
      password: '789',
      gender: 'F,',
      email: 'sarah@gmail.com',
      age: '20',
      avatar: './assets/images/sarah.jpeg',
      points: 500,
    ),
  ];

  List<Account> get AccountsList {
    return [..._AccountsList];
  }

  Account getByUsername(String username) {
    return _AccountsList.firstWhere((element) => element.username == username);
  }

  bool login(String username, String password) {
    int index =
        _AccountsList.indexWhere((element) => element.username == username);
    if (index != -1) {
      if (password == AccountsList[index].password) return true;
    }
    return false;
  }

  int namepassValidation(String username, String password) {
    int index =
        _AccountsList.indexWhere((element) => element.username == username);
    if (username == '' || password == '') {
      return 0;
    } else if (index != -1) {
      return 1;
    }

    return 2;
  }

  void alterPoints(String username, int x) {
    getByUsername(username).points = x;
    notifyListeners();
  }

  int getPoints(String username) {
    return getByUsername(username).points;
  }

  int emailValidation(String email) {
    if (email == '') {
      return 0;
    } else if (email.contains('@')) {
      return 1;
    }
    return 2;
  }

  void addAccount(String username, String password, String gender, String age,
      String email, avatar) {
    _AccountsList.add(
      Account(
        username: username,
        password: password,
        gender: gender,
        age: age,
        email: email,
        avatar: avatar,
        points: 0,
      ),
    );
  }
}
