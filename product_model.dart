import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductModel with ChangeNotifier {
  final String productId,
      productTitle,
      productPreco,
      productCategoria,
      productDescricao,
      productImage,
      productQuantidade;
  Timestamp? createdAt;

  ProductModel({
    required this.productId,
    required this.productTitle,
    required this.productPreco,
    required this.productCategoria,
    required this.productDescricao,
    required this.productImage,
    required this.productQuantidade,
    this.createdAt
  });
}
