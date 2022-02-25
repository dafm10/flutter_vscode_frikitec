import 'package:flutter/material.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/item_control_widget.dart';
import 'package:flutter_vscode_frikitec/pages/admin/inventory_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: 150,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              children: [
                ItemControlWidget(
                  image: "inventory.png",
                  title: "Gestión de Inventario",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InventoryPage(),
                      ),
                    );
                  },
                ),
                ItemControlWidget(
                  image: "price.png",
                  title: "Consulta de precios",
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                ItemControlWidget(
                  image: "warehouse.png",
                  title: "Stock Actual",
                  onPressed: () {},
                ),
                ItemControlWidget(
                  image: "box.png",
                  title: "Crear Producto",
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
