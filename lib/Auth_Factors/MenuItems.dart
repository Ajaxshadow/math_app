import 'package:flutter/material.dart';
import 'package:math_app/Auth_Factors/MenuItem.dart';

class MenuItems{
  static const List<MenuItem> items = [
    itemRegister,
    itemLogin,
  ];

  static const itemRegister = MenuItem(
    text: 'Register',
    icon: Icons.add_circle,
  );

  static const itemLogin = MenuItem(
    text: 'Login',
    icon: Icons.account_circle,
  );
}