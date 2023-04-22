/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 16:42:41
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

class AppValidators {
  const AppValidators._();

  static String? general(String? value) {
    if (value == null) {
      return "Value can not be null";
    }

    if (value.isEmpty) {
      return "Value can not be empty";
    }

    return null;
  }
}
