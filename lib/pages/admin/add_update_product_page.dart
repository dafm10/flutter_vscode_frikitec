import 'package:flutter/material.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/custom_appbar_widget.dart';

class AddUpdateProductPage extends StatefulWidget {
  const AddUpdateProductPage({Key? key}) : super(key: key);

  @override
  _AddUpdateProductPageState createState() => _AddUpdateProductPageState();
}

class _AddUpdateProductPageState extends State<AddUpdateProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbarWidget(
        title: "Crear Producto",
      ),
    );
  }
}
