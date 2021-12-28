import 'package:flutter/material.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste'),
      ),
      body:ListView(
        children: [
          Card(
              child: ListTile(
                title:Text("Truman Show (1998) - IMDb: 8.1") ,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        child: Container(
                          height: 200.0,
                          width: 250.0,
                          child: ListView(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "\n\nHayatını bir deney içerisinde geçiren"
                                      " ancak bundan haberi bile olmayan Truman’ı "
                                      "konu edinen filmde sinema sektörüne farklı "
                                      "bir bakış açısı getiriliyor. "
                                      "Günü geldiğinde hayatının bir yalan üzerine"
                                      " kurulduğunu fark eden Truman gerçeklerin"
                                      " peşinde koşmaya başlıyor.\n",textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 14, color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text(" Inception (2010) IMDb: 8.8"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      child: Container(
                        height: 200.0,
                        width: 250.0,
                        child: ListView(
                          children: <Widget>[
                            Center(
                              child: Text(
                                "\n\n\n\nBaşrolünde yer alan Dominick  Dom  Cobb (Leonardo DiCaprio)"
                                    " kurbanlarına rüya içinde rüya yaşatarak bilinçaltı"
                                    " hırsızlığı yapan yeni nesil ve yetenekli bir hırsızı"
                                    " konu edinmektedir.",textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14, color: Colors.black,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Piyanist (2002) - IMDb: 8.5"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        child: Container(
                          height: 200.0,
                          width: 250.0,
                          child: ListView(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "\n\n\n2 Dünya Savaşı’nı konu alan filmler arasında karşımıza çıkan bir başyapıt. Savaş sırasında Polonyalılar için cehenneme dönüşen günlerinde hayatta kalmaya çalışan ünlü piyanist Wladyslaw Szpilman’ı anlatan unutulmaz film 8.5’lik IMDb puanıyla dikkat çekmektedir.\n",textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 14, color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Avengers Endgame (2019) IMDb: 8.4"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        child: Container(
                          height: 200.0,
                          width: 250.0,
                          child: ListView(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "\n\n2018 yılında vizyona giren Avengers: Infinity War "
                                      "filminde yaşanan yıkım sonrasında dünya bir harabe "
                                      "haline gelmiş, birçok kahraman ortadan kaybolmuş, "
                                      "düşmanımız Thanos emellerine ulaşmıştır. Geride kalan "
                                      "Avengers kahramanlarının tek amacı her şeyi tersine "
                                      "çevirmek ve dünyada tekrardan dengeyi sağlamaktadır. \n",textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 14, color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Dangal (2016) - IMDb: 8.4"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        child: Container(
                          height: 200.0,
                          width: 250.0,
                          child: ListView(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "\n\nFilmde, tüm hayali sadece olimpiyat madalyası "
                                      "kazanmak olan güreşçi bir kızın yaşadığı zorlu "
                                      "mücadele anlatılır. Babasının eğitiminden geçen "
                                      "kızlar hayallerini gerçekleştirmek için dünyanın "
                                      "farklı bir ülkesinde kendisini kanıtlarken, yaşanan"
                                      " olaylar sonrasında Hindistan’da yaşayan kızlara "
                                      "da yeni bir umut doğmuştur.\n",textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 14, color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text(" The Platform (2019) IMDb: 7.1"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        child: Container(
                          height: 200.0,
                          width: 250.0,
                          child: ListView(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "\n\n  Filmde, ucu bucağı gözükmeyen dikey bir hapishane"
                                      " ve her katta 2 mahkum yer almaktadır. En üstten"
                                      " aşağıya doğru inen ve yapı ile beraber en alt"
                                      " kata yiyecek gönderilir. Üst katlarda olanlar "
                                      "yemeklerin en iyilerini yerken aşağıda kalanlar "
                                      "ise üstekilerin artıkları ile idare etmek zorundadır."
                                      " En alt kısımda olanlara ise bazen kemik bile kalmaz. \n",textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 14, color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Joker (2019) IMDb: 8.5"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        child: Container(
                          height: 200.0,
                          width: 250.0,
                          child: ListView(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "\n\n\n   Gotham şehrinde zihinsel sorunları bulunan ve insanlar tarafından dışlanan Arthur Fleck, artık geri dönüşü olmayan ve kendisine zevk veren bir suç sarmalının içerisine girer. Bu yolun sonunda kendisi “Suçun Palyaço Prensi” yani Joker olacaktır. \n",textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 14, color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Tenet (2020) IMDb: 7.7"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        child: Container(
                          height: 200.0,
                          width: 250.0,
                          child: ListView(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "\n\n Interstellar ve Inception filmlerinde olduğu gibi"
                                      " yine bir zaman döngüsü içerisinde kendimizi buluyoruz."
                                      " Konusuna kısaca değinecek olursak; İnsanlık 3 dünya"
                                      " savaşı tehlikesi ile karşı karşıyadır. Kahramanımız "
                                      "yerine getirilmesi güç casusluk görevini üstlenir ve "
                                      "dünyayı kurtarabilmek için henüz güçlerini bilmediği "
                                      "bir düşmana karşı savaşır.\n",textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 14, color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Green Book (2018) IMDb: 8.2"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        child: Container(
                          height: 200.0,
                          width: 250.0,
                          child: ListView(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "\n\n\nAmerika’da siyahlar ile beyazlar arasında var"
                                      " olan düşmanca yapılaşmanın derinliklerine inen"
                                      " ve bunu Ünlü Afro-Amerikalı piyanist Dr. Don Shirley"
                                      " maceraları üzerinden aktaran Oscar ödüllü filmler "
                                      "arasında kesinlikle önerdiğimiz bir baş yapıt. ",textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 14, color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
        ],
        padding: EdgeInsets.all(10),
      ),
    );
  }
}


