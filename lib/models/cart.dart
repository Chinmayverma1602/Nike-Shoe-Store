import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '238',
        imagePath: 'lib/images/newfreak.webp',
        description:
            'The forward-thinking design of his latest signature shoe'),
    Shoe(
      name: 'Air Jordans',
      price: '300',
      imagePath: 'lib/images/nike1.webp',
      description: 'Yesterday you said tomorrow. JUST DO IT',
    ),
    Shoe(
        name: 'Kyrie.6',
        price: '350',
        imagePath: 'lib/images/nike2.jpeg',
        description: 'All you have to do is pick up your feet'),
    Shoe(
        name: 'KD Treys',
        price: '400',
        imagePath: 'lib/images/nike3.webp',
        description: 'Run the day. Don’t let it run you')
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
