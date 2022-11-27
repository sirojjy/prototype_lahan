import 'package:flutter/material.dart';
import 'package:prototype_lahan/constrants.dart';
import 'package:prototype_lahan/dashboard/Component/grafik_total_bidang.dart';
import 'package:prototype_lahan/dashboard/Component/total_bidang_detail.dart';

class JenisDokumen extends StatelessWidget {
  const JenisDokumen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: const [
          Text(
              "Total Bidang",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: darkColor,
            ),
          ),
          SizedBox(height: defaultPadding,),
          GrafikBidang(),
          TotalBidangDetail(
            title: "Inventarisasi",
            svgSrc: "assets/icons/Documents.svg",
            jumlahBidang: 190,
            jumlahKurang: 80,
            jumlahLengkap: 110,
            colorText: whiteColor,
          ),
      ],
    ),
    );
  }
}
