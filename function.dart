//learn function in dart
void data(String nama, int umur){
    print("Nama saya $nama, saya berumur $umur");
}
void pertambahan (int nilai1, int nilai2){
    print(nilai1+nilai2);
}

int penjumlahan(int bilangan1, int bialangan2){
    int total = bilangan1+bialangan2;
    return total;
}

//Named parameters
void profil({String? nama, int? umur}){
    print("Nama saya $nama, umur saya $umur");
}

// Arrow syntax (mirip lambda di python)
int kali (int a, int b) => a * b;

// Required and Default Value
void setting ({required String tema, bool notif = true}){//required harus diisi
    print("Tema : $tema, Notif : $notif");
}

void main(){
    data("Gading",18);//Nama saya Gading, saya berumur 18
    pertambahan(11,60);//71

    //Named parameters
    profil(nama : "Widdiya", umur : 18);//Nama saya Widdiya, umur saya 18

    // arrow syntax
    print(kali(50,6));

    //required and default
    setting(tema : "Gelap");//Tema : Gelap, Notif : true

    //function dengan return
    int no1 = 99;
    int no2 = 9183;
    print("${no1} + ${no2} = ${penjumlahan(no1,no2)}");//300
    //print("hasil penjumlahan dari ${no1} + ${no2} = ${hasil_penjumlahan}");
}
