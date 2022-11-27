import 'package:flutter/material.dart';
import 'package:prototype_lahan/constrants.dart';

class BidangDetailInfo {
  final String? svgSrc, title;
  final int? jumlahBidang,jumlahLengkap,jumlahKurang;
  final Color? color;

  BidangDetailInfo({
    this.svgSrc,
    this.title,
    this.jumlahBidang,
    this.jumlahLengkap,
    this.jumlahKurang,
    this.color
  });
}

List DetailBidang = [
  BidangDetailInfo(
    title: "Inventarisasi",
    svgSrc: "assets/icons/Documents.svg",
    jumlahBidang: 190,
    jumlahKurang: 80,
    jumlahLengkap: 110,
    color: primaryColor,
  ),
];