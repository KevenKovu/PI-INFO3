
import 'package:app_miidnight_admin/screens/edit_upload_product_form.dart';
import 'package:app_miidnight_admin/screens/fornecedor_screen.dart';
import 'package:app_miidnight_admin/screens/inner_screens/orders/orders_screen.dart';
import 'package:app_miidnight_admin/screens/search_screen.dart';
import 'package:flutter/material.dart';

import '../services/assets_manager.dart';

class DashboardButtonsModel {
  final String text, imagePath;
  final Function onPressed;

  DashboardButtonsModel({
    required this.text,
    required this.imagePath,
    required this.onPressed,
  });

  static List<DashboardButtonsModel> dashboardBtnList(BuildContext context) => [
        DashboardButtonsModel(
          text: "Adicione um Novo Produto",
          imagePath: AssetsManager.cloud,
          onPressed: () {
            Navigator.pushNamed(context, EditOrUploadProductScreen.routeName);
          },
        ),
        DashboardButtonsModel(
          text: "Inspecione os Produtos",
          imagePath: AssetsManager.shoppingCart,
          onPressed: () {
            Navigator.pushNamed(context, SearchScreen.routeName);
          },
        ),
        DashboardButtonsModel(
          text: "Visualizar Pedidos",
          imagePath: AssetsManager.order,
          onPressed: () {
            Navigator.pushNamed(context, OrdersScreenFree.routeName);
          },
        ),
        DashboardButtonsModel(
          text: "Controle dos Fornecedores", 
          imagePath: AssetsManager.fornecedor, 
          onPressed: (){
            Navigator.pushNamed(context, FornecedorScreen.routeName);
          })
      ];
}
