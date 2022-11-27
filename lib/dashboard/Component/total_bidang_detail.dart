import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prototype_lahan/form/inventarisasi.dart';

import '../../constrants.dart';

class TotalBidangDetail extends StatelessWidget {

  const TotalBidangDetail({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.jumlahBidang,
    required this.jumlahLengkap,
    required this.jumlahKurang,
    required this.colorText,
  }) : super(key: key);

  final String title, svgSrc;
  final int jumlahBidang, jumlahLengkap, jumlahKurang;
  final Color? colorText;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Inventarisasi()))
    },
      child: Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          padding: const EdgeInsets.all(defaultPadding),
          decoration: const BoxDecoration(
            // border: Border.all(width: 2, color: backgroundColor),
            borderRadius: BorderRadius.all(
              Radius.circular(defaultPadding),
            ),
            color: primaryColor,
          ),

          child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(svgSrc, color: colorText,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w500, color: colorText),
                      ),
                      Text(
                        "Total $jumlahBidang Bidang",
                        style: Theme.of(context, )
                            .textTheme
                            .caption!
                            .copyWith(color: colorText),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("$jumlahLengkap Bidang Lengkap", style: TextStyle(fontSize: 12, color: colorText), ),
                    Text("$jumlahKurang Bidang TIdak Lengkap", style: TextStyle(fontSize: 12, color: colorText,), ),
                  ],
                ),
              ]
          )
      ),
    );
  }
}
