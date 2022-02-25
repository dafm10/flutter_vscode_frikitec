import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vscode_frikitec/ui/general/constants.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: primaryColor,
        child: Text("P"),
      ),
      title: Text(
        "Aluminum Vertical Stand",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        "Space Gray",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/edit.svg"),
      ),
    );
  }
}
