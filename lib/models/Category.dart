class Category {
  int id;
  String name;
  String icon;

  Category({
    required this.id,
    required this.name,
    required this.icon
  });
}

List<Category> dataCategory =[
  Category(
      id: 1,
      name: 'Makanan',
      icon: 'assets/icons/makanan.svg'),
  Category(
      id: 2,
      name: 'Minuman',
      icon: 'assets/icons/minuman.svg'
  ),
  Category(
      id: 3,
      name: 'Buah',
      icon: 'assets/icons/buah.svg'
  ),
  Category(
      id: 4,
      name: 'Sayuran',
      icon: 'assets/icons/sayuran.svg'
  ),
];