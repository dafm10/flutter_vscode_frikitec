import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/custom_appbar_widget.dart';
import 'package:flutter_vscode_frikitec/pages/admin/components/text_search_widget.dart';
import 'package:flutter_vscode_frikitec/ui/general/constants.dart';

class SearchPricesWidget extends StatefulWidget {
  const SearchPricesWidget({Key? key}) : super(key: key);

  @override
  _SearchPricesWidgetState createState() => _SearchPricesWidgetState();
}

class _SearchPricesWidgetState extends State<SearchPricesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbarWidget(
        title: "Consultar Precios",
      ),
      body: Padding(
        padding: paddinPrimary,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextSearchwidget(
                    labelText: "Consultar precio",
                    hintText: "Buscar Producto",
                    icon: Icons.search,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/barcode.svg",
                      height: 35,
                    ),
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
