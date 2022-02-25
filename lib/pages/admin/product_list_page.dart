import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vscode_frikitec/pages/admin/add_update_product_page.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/custom_appbar_widget.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/item_list_widget.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/text_search_widget.dart';
import 'package:flutter_vscode_frikitec/ui/general/constants.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbarWidget(
        title: "Productos",
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: TextSearchwidget(
                  //             labelText: "Buscar Producto",
                  //             icon: Icons.inventory_sharp),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              width: double.infinity,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddUpdateProductPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.add_box_sharp),
                  label: const Text("Agregar Producto")),
            ),
          )
        ],
      ),
    );
  }
}
