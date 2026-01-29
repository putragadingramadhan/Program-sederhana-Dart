import 'dart:io';

class Guru {
  static int data_guru = 0;

  String nama_guru;
  int id_guru;

  Guru(this.nama_guru, this.id_guru) {
    data_guru += 1;
  }
  void tampilkan() {
    print("\n===Data Guru===");
    print("Nama Guru    : $nama_guru");
    print("ID Guru      : $id_guru");
  }
}

class Siswa {
  static int data_siswa = 0;
  String nama;
  int NISN;
  int nilai_ips;
  int nilai_ipa;
  int nilai_mtk;

  Siswa(this.nama, this.NISN, this.nilai_ips, this.nilai_ipa, this.nilai_mtk) {
    data_siswa += 1;
  }

  void show_data() {
    print("===Data Siswa===");
    print("Nama Siswa   : $nama");
    print("NISN         : $NISN");
    print("Nilai IPS    : $nilai_ips");
    print("Nilai IPA    : $nilai_ipa");
    print("Nilai MTK    : $nilai_mtk");
  }

  double total_value() {
    double total = (nilai_ips + nilai_ipa + nilai_mtk) / 3;
    return total;
  }

  String status_lulus() {
    if (total_value() >= 75.00) {
      return "Lulus";
    } else {
      return "Tidak Lulus";
    }
  }

  void show_value() {
    print("===Data Siswa===");
    print("Nama Siswa      : $nama");
    print("NISN            : $NISN");
    print("Nilai IPS       : $nilai_ips");
    print("Nilai IPA       : $nilai_ipa");
    print("Nilai MTK       : $nilai_mtk");
    print("Nilai Rata-Rata : ${total_value()}");
    print("Status          : ${status_lulus()}");
  }
}

void main() {
  List<Siswa> data_siswa = [];
  List<Guru> data_guru = [];

  while (true) {
    print("\n==========");
    print("1. Sebagai Dosen");
    print("2, Sebagai siswa");
    print("3. Keluar");
    print("==========");

    //user pilih menu
    stdout.write("Silahkan pilih menu (1-3): ");
    String? input = stdin.readLineSync();
    int? Pilihan = int.tryParse(input ?? "");

    if (Pilihan == null) {
      print("Mohon masukkan angka");
      continue;
    } else if (Pilihan == 1) {
      stdout.write("Apakah anda yakin (Y/N) : ");
      String? konfirmasi = stdin.readLineSync();
      if (konfirmasi?.toLowerCase() != "y") continue; //cek pilihan

      print("Silahkan isi data guru");
      //nama
      stdout.write("Nama guru : ");
      String NAMA_guru = stdin.readLineSync() ?? "";
      //id guru
      stdout.write("ID guru : ");
      int? ID_guru = int.tryParse(stdin.readLineSync() ?? "");
      if (ID_guru == null) {
        print("ID guru harus berupa angka");
        continue;
      }
      Guru simpan = Guru(NAMA_guru, ID_guru);
      data_guru.add(simpan);
      print(
        "Data guru berhasil disimpan\nsilahkan Bapak/Ibu ${NAMA_guru} untuk input data siswa",
      );
      //nama siswa
      stdout.write("Nama siswa : ");
      String nama_siswa = stdin.readLineSync() ?? "";
      //nisn
      stdout.write("NISN siswa : ");
      int? nisn = int.tryParse(stdin.readLineSync() ?? "");
      //cek null
      if (nisn == null) {
        print("NISN siswa barupa angka!");
      }
      //nilai ips
      stdout.write("Nilai IPS : ");
      int? nilai_ips = int.tryParse(stdin.readLineSync() ?? "");

      //nilai ipa
      stdout.write("Nilai IPS : ");
      int? nilai_ipa = int.tryParse(stdin.readLineSync() ?? "");

      //nilai mtk
      stdout.write("Nilai IPS : ");
      int? nilai_mtk = int.tryParse(stdin.readLineSync() ?? "");
      if (nisn == null ||
          nilai_ips == null ||
          nilai_ipa == null ||
          nilai_mtk == null) {
        print("Nilai MTK harus berupa angka!");
        continue;
      }
      Siswa simpen = Siswa(nama_siswa, nisn, nilai_ips, nilai_ipa, nilai_mtk);
      data_siswa.add(simpen);
      print("Terima kasih Bapak/Ibu ${NAMA_guru} telah input data siswa");
    } else if (Pilihan == 2) {
      stdout.write("Apakan anda siswa?(Y/N) : ");
      String? konfirm = stdin.readLineSync();
      if (konfirm?.toLowerCase() != 'y') continue;
      //cek nim
      stdout.write("Masukkan NISN anda : ");
      int? cek_nisn = int.tryParse(stdin.readLineSync() ?? "");
      if (cek_nisn == null) {
        print("NISN berupa angka!");
        continue;
      }
      bool ditemukan = false;
      for (var n in data_siswa) {
        if (n.NISN == cek_nisn) {
          n.show_value();
          ditemukan = true;
          break;
        }
      }
    } else if (Pilihan == 3) {
      print("Terima kasih");
      break;
    } //menu
  } //while
} //run
