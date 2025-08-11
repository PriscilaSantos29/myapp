import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/navegacao/multiplasRotas/segundapag.dart';
import 'package:myapp/presentation/pages/navegacao/multiplasRotas/primeirapag.dart';
import 'package:myapp/presentation/pages/navegacao/multiplasRotas/terceirapag.dart';

class Rotas {
static Map<String, WidgetBuilder> obterRotas() {
return {
'/': (context) => PrimeiraPag(),
'/segunda': (context) => SegundaPag(),
'/terceira': (context) => TerceiraPag(),
};
}
}