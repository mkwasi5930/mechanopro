import 'mech.dart';

class Mechapro {
  final String name;
  final String image;
  final String city;

  Mechapro({required this.name, required this.image,required this.city});

  static List<Mechapro> getmechapro() {
    List<Mechapro> items = <Mechapro>[];

    items.add(Mechapro(
      name: "Mechapro 1",
      image: "m.jpg",
      city: "Kampala",
    ));
    items.add(Mechapro(
      name: "Mechapro 2",
      image: "mech.jpg",
      city: "Kinshasa",
    ));
    return items;
  }
}
