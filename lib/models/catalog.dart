class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class CatalogModel {
  static final products = [
    Item(
        id: 1,
        name: "Samsung Galaxy",
        desc: "Android phone with latest features",
        price: 200,
        color: "#33505a",
        image:
            "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202211/samsung_galaxy_m53_5g_sale_price_india-three_four.jpg?VersionId=b9XpyZY_Sh_WOjhPAkQMfwqXSK6BSQmd")
  ];
}
