import 'dart:io';

class Dosen {
  static int dataMahasiswa = 0;

  String nama;
  String nim;
  String kelas;
  String namaMatkul;
  int kehadiran;
  int uts;
  int uas;

  Dosen(
    this.nama,
    this.nim,
    this.kelas,
    this.namaMatkul,
    this.kehadiran,
    this.uts,
    this.uas,
  ) {
    dataMahasiswa++;
  }

  void tampilDataMentah() {
    print("Nama               : $nama");
    print("NIM                : $nim");
    print("Kelas              : $kelas");
    print("Mata Kuliah        : $namaMatkul");
    print("Nilai Kehadiran    : $kehadiran");
    print("Nilai UTS          : $uts");
    print("Nilai UAS          : $uas");
  }

  double konversiNilai() {
    double nilaiKehadiran = (kehadiran * 10) / 100;
    double nilaiUTS = (uts * 40) / 100;
    double nilaiUAS = (uas * 50) / 100;
    return nilaiKehadiran + nilaiUTS + nilaiUAS;
  }

  void tampilkanNilaiMatkul() {
    print("==== NILAI MATKUL ====");
    print("Nama    : $nama");
    print("NIM     : $nim");
    print("Matkul  : $namaMatkul");
    print("Nilai   : ${konversiNilai()}");
  }
}

void master() {
  List<Dosen> dataMahasiswa = [];

  while (true) {
    print("\n========================================");
    print("Silahkan pilih menu");
    print("1. Dosen");
    print("2. Mahasiswa");
    print("3. Keluar");
    print("========================================");

    stdout.write("Silahkan pilih menu (1-3): ");
    String? inputPilihan = stdin.readLineSync();

    int? pilihan = int.tryParse(inputPilihan ?? "");
    if (pilihan == null) {
      print("Mohon masukkan angka!");
      continue;
    }

    if (pilihan == 1) {
      stdout.write("Apakah anda yakin memilih menu ini (True/False): ");
      if (stdin.readLineSync() == "False") continue;

      print("Silahkan lanjutkan ke pengisian data");

      stdout.write("Nama mahasiswa : ");
      String nama = stdin.readLineSync() ?? "";

      stdout.write("NIM mahasiswa : ");
      String nim = stdin.readLineSync() ?? "";

      stdout.write("Kelas mahasiswa : ");
      String kelas = stdin.readLineSync() ?? "";

      stdout.write("Nama mata kuliah : ");
      String matkul = stdin.readLineSync() ?? "";

      stdout.write("Nilai kehadiran : ");
      int? kehadiran = int.tryParse(stdin.readLineSync() ?? "");

      stdout.write("Nilai UTS : ");
      int? uts = int.tryParse(stdin.readLineSync() ?? "");

      stdout.write("Nilai UAS : ");
      int? uas = int.tryParse(stdin.readLineSync() ?? "");

      if (kehadiran == null || uts == null || uas == null) {
        print("Nilai harus berupa angka!");
        continue;
      }

      Dosen simpan =
          Dosen(nama, nim, kelas, matkul, kehadiran, uts, uas);
      dataMahasiswa.add(simpan);

      print("\nData mahasiswa berhasil disimpan:");
      simpan.tampilDataMentah();
    }

    else if (pilihan == 2) {
      stdout.write("Apakah anda yakin memilih menu ini (True/False): ");
      if (stdin.readLineSync() == "False") continue;

      stdout.write("Masukkan NIM anda : ");
      String cekNIM = stdin.readLineSync() ?? "";

      bool ditemukan = false;
      for (var mhs in dataMahasiswa) {
        if (mhs.nim == cekNIM) {
          mhs.tampilkanNilaiMatkul();
          ditemukan = true;
          break;
        }
      }

      if (!ditemukan) {
        print("NIM tidak ditemukan");
      }
    }

    else if (pilihan == 3) {
      print("Terima kasih telah menggunakan layanan kami");
      break;
    }
  }
}

void main() {
  master();
}
