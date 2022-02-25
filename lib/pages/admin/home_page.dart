import 'package:flutter/material.dart';
import 'package:flutter_vscode_frikitec/pages/admin/add_update_product_page.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/item_control_widget.dart';
import 'package:flutter_vscode_frikitec/pages/admin/inventory_page.dart';
import 'package:flutter_vscode_frikitec/pages/admin/product_list_page.dart';
import 'package:flutter_vscode_frikitec/pages/admin/search_prices_page.dart';
import 'package:flutter_vscode_frikitec/pages/admin/stock_page.dart';
import 'package:flutter_vscode_frikitec/ui/general/constants.dart';

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
            Divider(),
            Text(
              "Control Frikitec".toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              width: size.width * 0.35,
              height: size.height * 0.001,
              decoration: const BoxDecoration(
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchPricesWidget(),
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                ItemControlWidget(
                  image: "warehouse.png",
                  title: "Stock Actual",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StockPage(),
                      ),
                    );
                  },
                ),
                ItemControlWidget(
                  image: "box.png",
                  title: "Gestionar Producto",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductListPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
