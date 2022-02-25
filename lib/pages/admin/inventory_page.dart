import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/custom_appbar_widget.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/text_search_widget.dart';
import 'package:flutter_vscode_frikitec/ui/general/constants.dart';

class InventoryPage extends StatefulWidget {
  InventoryPage({Key? key}) : super(key: key);

  @override
  State<InventoryPage> createState() => _InventoryPage();
}

class _InventoryPage extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbarWidget(
        title: "Inventario",
      ),
      body: Stack(
        children: [
          Padding(
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.3,
                    height: size.height * 0.05,
                    child: const Text(
                      "Cancelar",
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      width: size.width * 0.65,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54.withOpacity(0.09),
                            blurRadius: 12.0,
                            offset: const Offset(4, 4),
                          ),
                        ],
                      ),
                      child: const Text(
                        "Aceptar",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
