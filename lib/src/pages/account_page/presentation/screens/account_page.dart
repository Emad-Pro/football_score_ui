import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widget/account_appbar.dart';
import '../widget/account_header_favorites.dart';
import '../widget/account_header_info_custmar.dart';
import '../widget/build_delete_account_widget.dart';
import '../widget/build_genral_and_other_expansion_tileItem_account.dart';
import '../widget/build_logOut_button_account.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        AccountAppbar(),
        AccountHeaderInfoCustmar(),
        AccountHeaderFavorites(),
        BuildGenralAndOtherExpansionTileItemAccount(),
        BuildLogOutButtonAccount(),
        BuildDeleteAccountWidget()
      ],
    );
  }
}
