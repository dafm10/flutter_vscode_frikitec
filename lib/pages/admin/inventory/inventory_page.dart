import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vscode_frikitec/pages/admin/inventory/components/text_search_widget.dart';
import 'package:flutter_vscode_frikitec/ui/general/constants.dart';

class InventoryPage extends StatefulWidget {
  InventoryPage({Key? key}) : super(key: key);

  @override
  State<InventoryPage> createState() => _InventoryPage();
}

class _InventoryPage extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Inventario"),
        centerTitle: true,
      ),
      body: Padding(
        padding: paddinPrimary,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextSearchwidget(
                    labelText: "Productos",
                    icon: Icons.search,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: SvgPicture.asset(
                    "assets/icons/barcode.svg",
                    height: 35,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
