void main(){
    /*
    =================
    Data Types
        1. Number
            a. int
            b. double
            c. num
    =================
    */
    int Jumlah_siswa = 14;
    print(Jumlah_siswa);
    double tinggi_badan = 18.90;
    print(tinggi_badan);
    num nilai_mtk = 89.0; //num bisa berisi int ataupun double
    print(nilai_mtk);
    print("jumalh siswa di kelas ini ${Jumlah_siswa} dengan rata-rata tinggi badan ${tinggi_badan} dan rata-rata nilai mtl ${nilai_mtk}");
    
    //ubah tipe data
    /*tipe data double, tidak bisa dirubah ke integer, begitupun sebaliknya */
    double jumlah = Jumlah_siswa.toDouble();
    int tinggi = tinggi_badan.round();//dibulatkan ke terdekat
    print("ini adalah fungsi round ${tinggi}");//19

    int tINGGI = tinggi_badan.floor();//dibulatkan kebawah
    print("ini adalah fungsi floor ${tINGGI}");//18

    int tInggI = tinggi_badan.ceil();//bulatkan keatas
    print("ini adalah fungsi ceil ${tInggI}");//19

    //ingi mengetahui tipe data.... namaVariabel.runtimeType
    print(nilai_mtk.runtimeType);

    /*
    =================
    Data Types
        2. String
    =================
    */
    String nama_lengkap = "Putra gading ramadhan";
    String alamt = 'Banajrnegara';
    String puisis = """
    lorem ipsum
    dolor sit amet
    ini adalah multi line string
    """;
    print("\nnama saya ${nama_lengkap} te,pat tinggal ${alamt}");
    print(puisis);
    // fungsi \t untuk tab
    String text = "\tini Ibu caca \n\tdan ini ibu caca";
    print(text);
    // (\)sebagai karakter yang diperlukan
    String text2 = 'hallo i\'m robot';
    print(text2);//hallo i'm robot

    //raw String
    String txt = r"halo saya adalah ${}";//akan di print apa adanya
    print(txt);

    //convert string to integer
    String nomor_induk = "123456";
    print(nomor_induk.runtimeType);
    int nomotIndukInteger = int.parse(nomor_induk);
    print(nomotIndukInteger);
    print(nomotIndukInteger.runtimeType);

    /*
    =================
    Data Types
        3. Boolean
    =================
    */
    bool apakahDiaPria = true;
    apakahDiaPria = false;

    /*
    =================
    Data Types
        4. List
    =================
    */
    //cara 1
    List<String>namaHari = ["senin","selasa"];
    print(namaHari);
    //tambah data
    namaHari.add('Rabu');
    namaHari.add('jum\'at');
    print(namaHari);
    //ambil data dengan index, dimulai dengan 0
    print(namaHari[0]);//indeks 0 = senin
    print(namaHari.length);//panjang list
    //ubah data
    namaHari[0] = 'Senin indah';
    print(namaHari);//senin indah, selasa, Rabu, jum'at
    //hapus data
    namaHari.removeAt(1);
    print(namaHari);//senin indah, Rabu, jum'at

    //cara 2
    var nilai_matematika = <int>[70,80,90];

    /*
    =================
    Data Types
        5.Set
    =================
    */
    Set<String> namaBulan = {"january","february"};
    var bilangan_bulat = <int>{1,2,3,4,5};
    
    //manipulasi
    namaBulan.add("maret");
    namaBulan.add("juni");
    namaBulan.remove("january");//dia tidak pakai indeks
    print(namaBulan.length);

    /*
    =================
    Data Types
        5.Map == dictionary
    =================
    */
    /*
    =================
    Data Types
        5.Map == dictionary
    =================
    */
    //Map<key, value>
    Map<int,String>nama_Hari={};
    var nama_bulan = Map<String,String>();
    var namaBulan_hijriah = <String,int>{};

    //mamasukkan nilai
    Map<int,String>nama_dina = {
        1:"senin",
        2:"selasa",
        3:"rabu",
    };
    print(nama_dina);

    //mamanggil dengan key spesifik
    print(nama_dina[1]);

    Map<String,bool>status_nikah = {
        "andi":false,
        "danang":true,
    };
    print(status_nikah["andi"]);

    //hitung banyak data
    print(status_nikah.length);

    //update data
    status_nikah["andi"] = true;
    print(status_nikah); 
    //remove
    status_nikah.remove("danang");
    print(status_nikah);  

    /*
    =================
    Conditions
    =================
    */
    //if
    int nilai_ipa = 90;
    if (nilai_ipa > 70){
        print("anda lulus standar ipa");
    }
    //if-else
    int usia = 17;
    if (usia >= 18){
        print("anda bisa membuat ktp");
    }else{
        print("anda masih dibawah umur");
    }
    //if-elif-else
    int tinggi_rumah = 4;
    if(tinggi_rumah == 4){
        print("rumah anda memenuhi standar tinggi");
    }else if(tinggi_rumah < 4){
        print("silahkan tambah tinggi rumah anda");
    }else{
        print("rumah anda terlalu tinggi");
    }

    // swicth case
    int bulan = 1;
    switch(bulan){
        case 1:
            print("januari");
            break;
        case 2 :
            print("februari");
            break;
        case 3 :
            print("maret");
            break;
        default://sama dengan else
            print("nama bulan belum diketahui");
            break;
    }

    //ternary operator
    int jam_masuk = 8;
    String output = jam_masuk > 9 ? "anda terlambat" : "anda tepat waktu";
    print(output);

    /*
    =================
    loop
    =================
    */
    //for loop
    // for (inisialisasi_data : kondisi; penambahan/pengurangan){
    //     statment;
    // }
    for (int i = 100; i >=11; i--){
        print(i);
    }

    // foreach --> untuk loop list
    List<String> nama_pemain = ["bambang","messi","ronaldp"];
    //collection.foreach
    nama_pemain.forEach((nama)=> print(nama));

    List<int>nilaiMatemaTIKA = [90,80,77];
    int totalNilai = 0;
    nilaiMatemaTIKA.forEach((nilai) =>totalNilai = totalNilai+nilai );

    print("total nilai $totalNilai");
    double rata_rata = totalNilai/nilaiMatemaTIKA.length;
    print("Rata-rata nilainya adalah $rata_rata");

    /*
    =================
    Function in file function.dart
    =================
    */

}   
return type namafungsi(parameter){
    //function
}
void pringNamaLengkao(){
    print("Putra Gading Ramadhan");
}
