part of 'dashboard_bloc.dart';



enum DashboardStateStatus {initial, success, error, loading}

extension DashboardInitial on DashboardStateStatus {
  bool get isInitial => this == DashboardStateStatus.initial;
  bool get success => this == DashboardStateStatus.success;
  bool get error => this == DashboardStateStatus.error;
  bool get loading => this == DashboardStateStatus.loading;
}

class DashboardState  extends Equatable{
  const DashboardState({
    this.status = DashboardStateStatus.initial,
    this.id_users,
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
    this.ket_tanaman,
});

  final DashboardStateStatus? status;
  final String? id_users;
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

  @override
  List<Object?> get props => [
    status, id_users, total_bidang, message, bidang_kurang, bidang_lengkap, id_bidang, nama_pemilik, alamat, nik, tgl_lahir, pekerjaan, no_alas_hak, jenis_hak, trase,
    nama_bangunan, jumlah_bangunan, ket_bangunan, nama_tanaman, jumlah_tanaman, ket_tanaman,
  ];
  DashboardState copyWith ({
    DashboardStateStatus? status,
    String? id_users,
    String? total_bidang,
    String? message,
    String? bidang_lengkap,
    String? bidang_kurang,
    String? id_bidang,
    String? nama_pemilik,
    String? alamat,
    String? nik,
    String? tgl_lahir,
    String? pekerjaan,
    String? no_alas_hak,
    String? jenis_hak,
    String? trase,

    String? nama_bangunan,
    String? jumlah_bangunan,
    String? ket_bangunan,
    String? nama_tanaman,
    String? jumlah_tanaman,
    String? ket_tanaman,
  }) {
    return DashboardState(
      status: status ?? this.status,
      id_users: id_users ?? this.id_users,
      total_bidang: total_bidang ?? this.total_bidang,
      message: message ?? this.message,
      bidang_lengkap: bidang_lengkap ?? this.bidang_lengkap,
      bidang_kurang: bidang_kurang ?? this.bidang_kurang,
      id_bidang: id_bidang ?? this.id_bidang,
      nama_pemilik: nama_pemilik ?? this.nama_pemilik,
      alamat: alamat ?? this.alamat,
      nik: nik ?? this.nik,
      tgl_lahir: tgl_lahir ?? this.tgl_lahir,
      pekerjaan: pekerjaan ?? this.pekerjaan,
      no_alas_hak: no_alas_hak ?? this.no_alas_hak,
      jenis_hak: jenis_hak ?? this.jenis_hak,
      trase: trase ?? this.trase,
      nama_bangunan: nama_bangunan ?? this.nama_bangunan,
      jumlah_bangunan: jumlah_bangunan ?? this.jumlah_bangunan,
      ket_bangunan: ket_bangunan ?? this.ket_bangunan,
      nama_tanaman: nama_tanaman ?? this.nama_tanaman,
      jumlah_tanaman: jumlah_tanaman ?? this.jumlah_tanaman,
      ket_tanaman: ket_tanaman ?? this.ket_tanaman,
    );
  }
}



