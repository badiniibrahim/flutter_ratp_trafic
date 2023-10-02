import 'package:flutter/cupertino.dart';

ImageProvider getImage(String line, bool isTramways) {
  ImageProvider icon = const AssetImage('assets/images/rer_a.png');

  if (isTramways) {
    switch (line) {
      case '1':
        icon = const AssetImage('assets/images/t1.png');
        break;
      case '2':
        icon = const AssetImage('assets/images/t2.png');
        break;
      case '3A':
        icon = const AssetImage('assets/images/t3a.png');
        break;
      case '3B':
        icon = const AssetImage('assets/images/t3b.png');
        break;
      case '4':
        icon = const AssetImage('assets/images/t4.png');
        break;
      case '5':
        icon = const AssetImage('assets/images/t5.png');
        break;
      case '6':
        icon = const AssetImage('assets/images/t6.png');
        break;
      case '7':
        icon = const AssetImage('assets/images/t7.png');
        break;
      case '8':
        icon = const AssetImage('assets/images/t8.png');
        break;
    }
  } else {
    switch (line) {
      case 'A':
        icon = const AssetImage('assets/images/rer_a.png');
        break;
      case 'B':
        icon = const AssetImage('assets/images/rer_b.png');

        break;
      case 'C':
        icon = const AssetImage('assets/images/rer_c.png');

        break;
      case 'D':
        icon = const AssetImage('assets/images/rer_d.png');

        break;
      case 'E':
        icon = const AssetImage('assets/images/rer_e.png');
        break;
      case '1':
        icon = const AssetImage('assets/images/1.png');
        break;
      case '2':
        icon = const AssetImage('assets/images/2.png');
        break;
      case '3':
        icon = const AssetImage('assets/images/3.png');
        break;
      case '3B':
        icon = const AssetImage('assets/images/3b.png');
        break;
      case '4':
        icon = const AssetImage('assets/images/4.png');
        break;
      case '5':
        icon = const AssetImage('assets/images/5.png');
        break;
      case '6':
        icon = const AssetImage('assets/images/6.png');
        break;
      case '7':
        icon = const AssetImage('assets/images/7.png');
        break;
      case '7B':
        icon = const AssetImage('assets/images/7b.png');
        break;
      case '8':
        icon = const AssetImage('assets/images/8.png');
        break;
      case '9':
        icon = const AssetImage('assets/images/9.png');
        break;
      case '10':
        icon = const AssetImage('assets/images/10.png');
        break;
      case '11':
        icon = const AssetImage('assets/images/11.png');
        break;
      case '12':
        icon = const AssetImage('assets/images/12.png');
        break;
      case '13':
        icon = const AssetImage('assets/images/13.png');
        break;
      case '14':
        icon = const AssetImage('assets/images/14.png');
        break;
    }
  }

  return icon;
}
