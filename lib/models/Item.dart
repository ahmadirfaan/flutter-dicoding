class Item {
  int id;
  String name;
  String description;
  String image;
  double rating;
  int ratingCount;
  double price;
  int color;
  List<String> vitamins;
  List<String> ingrediants;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.rating,
    required this.ratingCount,
    required this.price,
    required this.color,
    required this.vitamins,
    required this.ingrediants,
  });
}

List<Item> dataItems = [
  Item(
      id: 1,
      name: 'Sup Buah',
      description: "Sup Buah dapat menggunakan agar-agar yang telah dipotong "
          "dengan ukuran dadu untuk menambah rasa dan jumlah pada Sup Buah. "
          "Saya tidak mempunyai waktu untuk membuat jeli, sehingga tidak menggunakannya",
      image: 'assets/images/1.png',
      rating: 4.5,
      ratingCount: 565,
      price: 12000,
      color: 0xFFFFE3E3,
      vitamins: [
        'vitamin A',
        'vitamin C',
        'vitamin K'
      ],
      ingrediants: [
        'assets/icons/resep1.svg',
        'assets/icons/resep2.svg',
        'assets/icons/resep3.svg',
        'assets/icons/resep4.svg'
      ]),
  Item(
      id: 2,
      name: 'Salad',
      description: " Salad merupakan salah satu makanan sehat yang terdiri dari "
          "buah dan sayuran segar serta biasanya ditambah dengan protein yang "
          "berasal dari daging ataupun unggas",
      image: 'assets/images/2.png',
      rating: 4.5,
      ratingCount: 465,
      price: 20000,
      color: 0xFF80985C,
      vitamins: [
        'vitamin A',
        'vitamin C',
        'vitamin K'
      ],
      ingrediants: [
        'assets/icons/resep1.svg',
        'assets/icons/resep2.svg',
        'assets/icons/resep3.svg',
        'assets/icons/resep4.svg'
      ]),
  Item(
      id: 3,
      name: 'Salmon',
      description:
          "Ikan salmon merupakan salah satu jenis ikan bertekstur lembut yang"
              " mudah diolah untuk dikonsumsi dan merupakan salah satu makanan "
              "paling bernutrisi di dunia",
      image: 'assets/images/3.png',
      rating: 4.5,
      ratingCount: 365,
      price: 35000,
      color: 0xFF253B4A,
      vitamins: [
        'vitamin A',
        'vitamin C',
        'vitamin K'
      ],
      ingrediants: [
        'assets/icons/resep1.svg',
        'assets/icons/resep2.svg',
        'assets/icons/resep3.svg',
        'assets/icons/resep4.svg'
      ]),
  Item(
      id: 4,
      name: 'Burger',
      description:
          "urger secara sederhana didefinisikan sebagai hidangan yang terdiri "
              "dari isian dan roti. Isi ini bisa berupa patty pipih yang "
              "terbuat dari sayuran atau daging yang dimasak, atau keju "
              "dan berbagai pilihan lain tersedia untuk diisi",
      image: 'assets/images/4.png',
      rating: 4.5,
      ratingCount: 165,
      price: 15000,
      color: 0xFFB79161,
      vitamins: [
        'vitamin A',
        'vitamin C',
        'vitamin K'
      ],
      ingrediants: [
        'assets/icons/resep1.svg',
        'assets/icons/resep2.svg',
        'assets/icons/resep3.svg',
        'assets/icons/resep4.svg'
      ]),
];
