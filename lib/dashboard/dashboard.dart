import 'package:flutter/material.dart';
import 'package:prototype_lahan/dashboard/Component/jenis_dokumen.dart';
import '../constrants.dart';
import '../form/inventarisasi.dart';
import 'Component/header.dart';


class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                   child: Column(
                     children: const [
                       JenisDokumen(),
                       SizedBox(height: defaultPadding),
                     ],
                   ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                   child: Column(
                     children:  [
                       Inventarisasi(),
                     ],
                   ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
