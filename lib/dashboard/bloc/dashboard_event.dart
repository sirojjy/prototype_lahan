part of 'dashboard_bloc.dart';

class DashboardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnDashboardEvent extends DashboardEvent {
  final String? id_users;
  final String? status;
  final String? total_bidang;
  final String? message;
  final String? bidang_lengkap;
  final String? bidang_kurang;
  final String? id_bidang;
  final String? nama_pemilik;
  final String? alamat;
  final String? nik;
  final String? tgl_lahir;
  final String? pekerjaan;
  final String? no_alas_hak;
  final String? jenis_hak;
  final String? trase;

  final String? nama_bangunan;
  final String? jumlah_bangunan;
  final String? ket_bangunan;
  final String? nama_tanaman;
  final String? jumlah_tanaman;
  final String? ket_tanaman;

  OnDashboardEvent(
      this.id_users,
      this.status,
      this.total_bidang,
      this.message,
      this.bidang_lengkap,
      this.bidang_kurang,
      this.id_bidang,
      this.nama_pemilik,
      this.alamat,
      this.nik,
      this.tgl_lahir,
      this.pekerjaan,
      this.no_alas_hak,
      this.jenis_hak,
      this.trase,
      this.nama_bangunan,
      this.jumlah_bangunan,
      this.ket_bangunan,
      this.nama_tanaman,
      this.jumlah_tanaman,
      this.ket_tanaman);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
