//packages
import 'package:flutter/material.dart';

class PetObj {
  final String id,
      name,
      location,
      age,
      gender,
      owend,
      weight,
      description,
      points;
  final bool isAdopt, isDog, top;
  final List<String> image;

  PetObj({
    required this.id,
    required this.name,
    required this.age,
    required this.location,
    required this.isAdopt,
    required this.isDog,
    required this.image,
    required this.top,
    required this.gender,
    required this.owend,
    required this.weight,
    required this.description,
    required this.points,
  });
}

class DogProvider with ChangeNotifier {
  final List<String> _images = [
    './assets/images/1.jpeg',
    './assets/images/3.jpeg',
    './assets/images/dag.jpeg',
    './assets/images/dogy.jpeg',
  ];

  final List<String> _mainText = [
    'Home Is Where\nThe Dogs Are',
    'Dogs Leaves\nPaw Prints In Our Hearts',
    'Happy\nLife\nHappy\nDog',
    'Join Us Now',
  ];
  final List<String> _miniText = [
    ' Adopt Now',
    ' Rescue Now',
    ' Donate Now',
    ' Be part of our family'
  ];

  final List<PetObj> _pets = [
    PetObj(
      id: '9',
      name: 'Hofman',
      age: '2 years ',
      location: 'Bağcilar',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/husky3.jpeg',
        './assets/images/husky.jpeg',
        './assets/images/husky2.jpeg',
      ],
      top: true,
      gender: 'Male ♂',
      owend: '4 years',
      weight: '12 KG',
      description:
          "Hofman is a stunning Husky dog sporting a brave personality straight to the core! Hofman loves to cuddle, play and catch puppy snoozes. In addition, Hofman will arrive home pet friendly, pre loved, and healthy. Hofman wears a stunning bi-colored coat and is a winsome little fur-ball. Welcome Hofman home before he is gone.",
      points: ' +175',
    ),
    PetObj(
      id: '10',
      name: 'Roty',
      age: '1 years ',
      location: 'Yedikule',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/roty2.jpeg',
        './assets/images/roty.jpeg',
        './assets/images/roty3.jpeg',
      ],
      top: true,
      gender: 'Female ♀',
      owend: '1 years',
      weight: '18 KG',
      description:
          "Roty is a stunning Husky dog sporting a brave personality straight to the core! Roty loves to cuddle, play and catch puppy snoozes. In addition, Roty will arrive home pet friendly, pre loved, and healthy. Roty wears a stunning bi-colored coat and is a winsome little fur-ball. Welcome Hofman home before he is gone.",
      points: ' +225',
    ),
    PetObj(
      id: '1',
      name: 'Bellaa',
      age: '8 months ',
      location: 'Yedikule',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/2.jpeg',
        './assets/images/dany2.png',
        './assets/images/dany3.jpeg',
      ],
      top: false,
      gender: 'Female ♀',
      owend: '2 years',
      weight: '14 KG',
      description:
          "Bellaa is a stunning Great Dane puppy sporting a brave personality straight to the core! Bellaa loves to cuddle, play and catch puppy snoozes. Bellaa can be shipped straight to your front door with a whole lot of love. In addition, Bellaa will arrive home pet friendly, pre loved, and healthy. In addition, Bellaa wears a stunning brown coat and is a winsome little fur-ball. Welcome Bellaa home before she is gone.",
      points: ' +50',
    ),
    PetObj(
      id: '3',
      name: 'Zeytin',
      age: '2 months',
      location: 'Cevatpaşa',
      isAdopt: false,
      isDog: true,
      image: [
        './assets/images/dany.jpeg',
        './assets/images/ba.jpeg',
        './assets/images/dany2.webp',
      ],
      top: true,
      gender: 'Male ♂',
      owend: '4 months',
      weight: '21 KG',
      description:
          "Meet Zeytin, a stunning Great Dane puppy who’s ready to take on the world. Zeytin sports a brave personality and carries a beautiful black coat. In addition, Zeytin will arrive pet friendly, pre loved, and healthy. We've poured ourselves into raising this little gem and promise you a dog coming from parents of friendly and sweet personalities.",
      points: ' +150',
    ),
    PetObj(
      id: '7',
      name: 'Ginger',
      age: '1 months ',
      location: 'Beykoz',
      isAdopt: true,
      isDog: false,
      image: [
        './assets/images/p12.jpeg',
        './assets/images/ginger3.webp',
        './assets/images/ginger2.jpeg',
      ],
      top: false,
      gender: 'Female ♀',
      owend: '2 months',
      weight: '1 KG',
      description:
          "Joyful and overexcited cat. Ginger is a cute charming cat that ",
      points: ' +50',
    ),
    PetObj(
      id: '8',
      name: 'Billy',
      age: '3 years ',
      location: 'Bağcilar',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/p1.jpeg',
        './assets/images/billy.jpeg',
        './assets/images/bill2.jpeg',
      ],
      top: false,
      gender: 'Male ♂',
      owend: '6 years',
      weight: '10 KG',
      description:
          "Billy is a stunning Golden Retriever puppy sporting a brave personality straight to the core! Billy loves to cuddle, play and catch puppy snoozes. In addition, Billy will arrive home pet friendly, pre loved, and healthy. Billy wears a stunning bi-colored coat and is a winsome little fur-ball. Welcome Billy home before he is gone.",
      points: ' +125',
    ),
    PetObj(
      id: '12',
      name: 'Pügö',
      age: '5 years ',
      location: 'Bağcilar',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/pug.jpeg',
        './assets/images/pug2.webp',
        './assets/images/pug3.jpeg',
      ],
      top: false,
      gender: 'Male ♂',
      owend: '2 years',
      weight: '8 KG',
      description:
          "Pügö is a stunning Pug puppy sporting a brave personality straight to the core! Pügö loves to cuddle, play and catch puppy snoozes. In addition, Pügö will arrive home pet friendly, pre loved, and healthy. Pügö wears a stunning bi-colored coat and is a winsome little fur-ball. Welcome Pügö home before he is gone.",
      points: ' +100',
    ),
    PetObj(
      id: '11',
      name: 'Rusy',
      age: '3 months ',
      location: 'Beykoz',
      isAdopt: true,
      isDog: false,
      image: [
        './assets/images/rusy.jpeg',
        './assets/images/rusy2.webp',
        './assets/images/rusy3.jpeg',
      ],
      top: true,
      gender: 'Female ♀',
      owend: '3 months',
      weight: '1 KG',
      description:
          "Joyful and overexcited cat. Rusy is a cute charming cat that ",
      points: ' +25',
    ),
    PetObj(
      id: '2',
      name: 'Behlül',
      age: '1 year ',
      location: 'Bakirköy',
      isAdopt: false,
      isDog: false,
      image: [
        './assets/images/p11.jpeg',
        './assets/images/beho.jpeg',
        './assets/images/beho2.jpeg',
      ],
      top: false,
      gender: 'Male ♂',
      owend: '1 years',
      weight: '1 KG',
      description:
          "Behlül was nearly aged 8 months when he was found with serious injuries from a car hit. Traumatized, unable to move, he received treatment from our medical team. Luckily, Behlül was again able to move and recover after therapy. Behlül is now able to socialize and is curious about the world outside the shelter, and is excited to become a part of a welcoming family. Adopt Behlül and give him the chance to live within a comfortable home!",
      points: ' +150',
    ),
    PetObj(
      id: '4',
      name: 'Osman',
      age: '4 years',
      location: 'Zeytinburnu',
      isAdopt: false,
      isDog: true,
      image: [
        './assets/images/p5.jpeg',
        './assets/images/jacky2.webp',
        './assets/images/jacky.jpeg',
      ],
      top: false,
      gender: 'Male ♂',
      owend: '6 months',
      weight: '3 KG',
      description:
          "Pick me only if you're ready for loads of fun. I'm Osuman, a stunning Parson Jack Russell Terrier puppy. My coat is a stunning bi-colored. I’m brave right to the core and you can count on me for a friendly wag, a happy hello and a kiss on the cheek. I'll arrive home pet friendly, pre loved, healthy, and ready to bring you heaps of joy. While I’m originally from Turkey, I can be shipped with love right to your front door.",
      points: ' +200',
    ),
    PetObj(
      id: '5',
      name: 'Max',
      age: '3 months ',
      location: 'Bağcilar',
      isAdopt: false,
      isDog: true,
      image: [
        './assets/images/p3.jpeg',
        './assets/images/blacky2.jpeg',
        './assets/images/blacky.jpeg',
      ],
      top: true,
      gender: 'Male ♂',
      owend: '5 years',
      weight: '7 KG',
      description:
          "Arf! I'm Max, a stunning Male ♂ Black Russian Terrier puppy. Bring me home today and I'll bring you heaps of joy. I fling a dashing bi-colored coat and was born to parents of friendly and sweet personalities. I am great with kids and will arrive home pet friendly, pre loved, and healthy. If you call me yours and train me well, I’ll be your new best friend ready to join in whatever you are up to. Let's start making memories together!",
      points: ' +25',
    ),
    PetObj(
      id: '6',
      name: 'Memao',
      age: '2 years ',
      location: 'Cevatpaşa',
      isAdopt: false,
      isDog: false,
      image: [
        './assets/images/c2.webp',
        './assets/images/memao2.webp',
        './assets/images/memao3.webp',
      ],
      top: true,
      gender: 'Female ♀',
      owend: '6 months',
      weight: '2 KG',
      description:
          "Memao is a young but smart kitten born in Yedikule Animal Shelter, along with 5 other siblings. She possesses a very sociable personality who truly enjoys company of people and kittens. Born within healthy and appropriate conditions, Memao couldn’t be readier to start a new adventure with a warm and welcoming family. Welcome Memao as a new family member and help her live in a loving home as yours!",
      points: ' +175',
    ),
  ];

  final List<PetObj> _adopt = [
    PetObj(
      id: '9',
      name: 'Hofman',
      age: '2 years ',
      location: 'Bağcilar',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/husky3.jpeg',
        './assets/images/husky.jpeg',
        './assets/images/husky2.jpeg',
      ],
      top: true,
      gender: 'Male ♂',
      owend: '4 years',
      weight: '12 KG',
      description:
          "Hofman is a stunning Husky dog sporting a brave personality straight to the core! Hofman loves to cuddle, play and catch puppy snoozes. In addition, Hofman will arrive home pet friendly, pre loved, and healthy. Hofman wears a stunning bi-colored coat and is a winsome little fur-ball. Welcome Hofman home before he is gone.",
      points: ' +175',
    ),
    PetObj(
      id: '10',
      name: 'Roty',
      age: '1 years ',
      location: 'Yedikule',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/roty2.jpeg',
        './assets/images/roty.jpeg',
        './assets/images/roty3.jpeg',
      ],
      top: false,
      gender: 'Female ♀',
      owend: '1 years',
      weight: '18 KG',
      description:
          "Roty is a stunning Husky dog sporting a brave personality straight to the core! Roty loves to cuddle, play and catch puppy snoozes. In addition, Roty will arrive home pet friendly, pre loved, and healthy. Roty wears a stunning bi-colored coat and is a winsome little fur-ball. Welcome Hofman home before he is gone.",
      points: ' +225',
    ),
    PetObj(
      id: '1',
      name: 'Bellaa',
      age: '8 months ',
      location: 'Yedikule',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/2.jpeg',
        './assets/images/dany2.png',
        './assets/images/dany3.jpeg',
      ],
      top: false,
      gender: 'Female ♀',
      owend: '2 years',
      weight: '14 KG',
      description:
          "Bellaa is a stunning Great Dane puppy sporting a brave personality straight to the core! Bellaa loves to cuddle, play and catch puppy snoozes. Bellaa can be shipped straight to your front door with a whole lot of love. In addition, Bellaa will arrive home pet friendly, pre loved, and healthy. In addition, Bellaa wears a stunning brown coat and is a winsome little fur-ball. Welcome Bellaa home before she is gone.",
      points: ' +50',
    ),
    PetObj(
      id: '3',
      name: 'Zeytin',
      age: '2 months',
      location: 'Cevatpaşa',
      isAdopt: false,
      isDog: true,
      image: [
        './assets/images/dany.jpeg',
        './assets/images/ba.jpeg',
        './assets/images/dany2.webp',
      ],
      top: true,
      gender: 'Male ♂',
      owend: '4 months',
      weight: '21 KG',
      description:
          "Meet Zeytin, a stunning Great Dane puppy who’s ready to take on the world. Zeytin sports a brave personality and carries a beautiful black coat. In addition, Zeytin will arrive pet friendly, pre loved, and healthy. We've poured ourselves into raising this little gem and promise you a dog coming from parents of friendly and sweet personalities.",
      points: ' +150',
    ),
    PetObj(
      id: '7',
      name: 'Ginger',
      age: '1 months ',
      location: 'Beykoz',
      isAdopt: true,
      isDog: false,
      image: [
        './assets/images/p12.jpeg',
        './assets/images/ginger3.webp',
        './assets/images/ginger2.jpeg',
      ],
      top: true,
      gender: 'Female ♀',
      owend: '2 months',
      weight: '1 KG',
      description:
          "Joyful and overexcited cat. Ginger is a cute charming cat that ",
      points: ' +50',
    ),
    PetObj(
      id: '8',
      name: 'Billy',
      age: '3 years ',
      location: 'Bağcilar',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/p1.jpeg',
        './assets/images/billy.jpeg',
        './assets/images/bill2.jpeg',
      ],
      top: false,
      gender: 'Male ♂',
      owend: '6 years',
      weight: '10 KG',
      description:
          "Billy is a stunning Golden Retriever puppy sporting a brave personality straight to the core! Billy loves to cuddle, play and catch puppy snoozes. In addition, Billy will arrive home pet friendly, pre loved, and healthy. Billy wears a stunning bi-colored coat and is a winsome little fur-ball. Welcome Billy home before he is gone.",
      points: ' +125',
    ),
    PetObj(
      id: '12',
      name: 'Pügö',
      age: '5 years ',
      location: 'Bağcilar',
      isAdopt: true,
      isDog: true,
      image: [
        './assets/images/pug.jpeg',
        './assets/images/pug2.webp',
        './assets/images/pug3.jpeg',
      ],
      top: false,
      gender: 'Male ♂',
      owend: '2 years',
      weight: '8 KG',
      description:
          "Pügö is a stunning Pug puppy sporting a brave personality straight to the core! Pügö loves to cuddle, play and catch puppy snoozes. In addition, Pügö will arrive home pet friendly, pre loved, and healthy. Pügö wears a stunning bi-colored coat and is a winsome little fur-ball. Welcome Pügö home before he is gone.",
      points: ' +100',
    ),
    PetObj(
      id: '11',
      name: 'Rusy',
      age: '3 months ',
      location: 'Beykoz',
      isAdopt: true,
      isDog: false,
      image: [
        './assets/images/rusy.jpeg',
        './assets/images/rusy2.webp',
        './assets/images/rusy3.jpeg',
      ],
      top: true,
      gender: 'Female ♀',
      owend: '3 months',
      weight: '1 KG',
      description:
          "Joyful and overexcited cat. Rusy is a cute charming cat that ",
      points: ' +25',
    ),
  ];
  final List<PetObj> _donate = [
    PetObj(
      id: '2',
      name: 'Behlül',
      age: '1 year ',
      location: 'Bakirköy',
      isAdopt: false,
      isDog: false,
      image: [
        './assets/images/p11.jpeg',
        './assets/images/beho.jpeg',
        './assets/images/beho2.jpeg',
      ],
      top: false,
      gender: 'Male ♂',
      owend: '1 years',
      weight: '1 KG',
      description:
          "Behlül was nearly aged 8 months when he was found with serious injuries from a car hit. Traumatized, unable to move, he received treatment from our medical team. Luckily, Behlül was again able to move and recover after therapy. Behlül is now able to socialize and is curious about the world outside the shelter, and is excited to become a part of a welcoming family. Adopt Behlül and give him the chance to live within a comfortable home!",
      points: ' +150',
    ),
    PetObj(
      id: '4',
      name: 'Osman',
      age: '4 years',
      location: 'Zeytinburnu',
      isAdopt: false,
      isDog: true,
      image: [
        './assets/images/p5.jpeg',
        './assets/images/jacky2.webp',
        './assets/images/jacky.jpeg',
      ],
      top: true,
      gender: 'Male ♂',
      owend: '6 months',
      weight: '3 KG',
      description:
          "Pick me only if you're ready for loads of fun. I'm Osuman, a stunning Parson Jack Russell Terrier puppy. My coat is a stunning bi-colored. I’m brave right to the core and you can count on me for a friendly wag, a happy hello and a kiss on the cheek. I'll arrive home pet friendly, pre loved, healthy, and ready to bring you heaps of joy. While I’m originally from Turkey, I can be shipped with love right to your front door.",
      points: ' +200',
    ),
    PetObj(
      id: '5',
      name: 'Max',
      age: '3 months ',
      location: 'Bağcilar',
      isAdopt: false,
      isDog: true,
      image: [
        './assets/images/p3.jpeg',
        './assets/images/blacky2.jpeg',
        './assets/images/blacky.jpeg',
      ],
      top: true,
      gender: 'Male ♂',
      owend: '5 years',
      weight: '7 KG',
      description:
          "Arf! I'm Max, a stunning Male ♂ Black Russian Terrier puppy. Bring me home today and I'll bring you heaps of joy. I fling a dashing bi-colored coat and was born to parents of friendly and sweet personalities. I am great with kids and will arrive home pet friendly, pre loved, and healthy. If you call me yours and train me well, I’ll be your new best friend ready to join in whatever you are up to. Let's start making memories together!",
      points: ' +25',
    ),
    PetObj(
      id: '6',
      name: 'Memao',
      age: '2 years ',
      location: 'Cevatpaşa',
      isAdopt: false,
      isDog: false,
      image: [
        './assets/images/c2.webp',
        './assets/images/memao2.webp',
        './assets/images/memao3.webp',
      ],
      top: true,
      gender: 'Female ♀',
      owend: '6 months',
      weight: '2 KG',
      description:
          "Memao is a young but smart kitten born in Yedikule Animal Shelter, along with 5 other siblings. She possesses a very sociable personality who truly enjoys company of people and kittens. Born within healthy and appropriate conditions, Memao couldn’t be readier to start a new adventure with a warm and welcoming family. Welcome Memao as a new family member and help her live in a loving home as yours!",
      points: ' +175',
    ),
  ];

  List<String> get Images {
    return [..._images];
  }

  List<String> get MainText {
    return [..._mainText];
  }

  List<String> get MiniText {
    return [..._miniText];
  }

  List<PetObj> get Pets {
    return [..._pets];
  }

  List<PetObj> get Adopt {
    return [..._adopt];
  }

  List<PetObj> get Donate {
    return [..._donate];
  }
}
