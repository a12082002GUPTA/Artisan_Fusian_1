import 'dart:js';

import 'package:flutter/material.dart';

class PageRouting{

  static gotoNextPage({required BuildContext context,required Widget navigateTo}){
    return Navigator.of(context).push(MaterialPageRoute(builder: (context)=>navigateTo),);
}

}