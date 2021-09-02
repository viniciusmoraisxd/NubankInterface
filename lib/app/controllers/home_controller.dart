import 'package:flutter/material.dart';
import 'package:nubank_interface/app/models/CategoryModel.dart';

class HomeController {
  List<CategoryModel> getCategories() {
    return [
      CategoryModel(icon: Icons.payment_outlined, name: "Pix"),
      CategoryModel(icon: Icons.payment_outlined, name: "Pagar"),
      CategoryModel(icon: Icons.payment_outlined, name: "Transferir"),
      CategoryModel(icon: Icons.payment_outlined, name: "Depositar"),
      CategoryModel(icon: Icons.payment_outlined, name: "Pegar emprestado"),
      CategoryModel(icon: Icons.payment_outlined, name: "Recarga de celular"),
      CategoryModel(icon: Icons.payment_outlined, name: "Cobrar"),
      CategoryModel(icon: Icons.payment_outlined, name: "Doação"),
    ];
  }
}
