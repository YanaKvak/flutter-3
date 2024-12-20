import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CarouselSlider.builder(
        itemCount: 6,
        options: CarouselOptions(
          height: screenHeight, // Слайдер занимает весь экран
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
          scrollPhysics: const BouncingScrollPhysics(),
          viewportFraction: 0.90, // Видна часть следующего экрана снизу
          initialPage: 0,
          scrollDirection: Axis.vertical,
        ),
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10), // Отступ только снизу
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Закругление углов
              child: _buildScreen(index),
            ),
          );
        },
      ),
    );
  }

  // Метод для возврата виджетов в зависимости от индекса
  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return const FirstScreenContent();
      case 1:
        return const HealthPointsScreen();
      case 2:
        return const ArtifactScreen();
      case 3:
        return const AdditionalInfoScreen();
      case 4:
        return const FifthScreen(sBurnedCalories: 12345);
      case 5:
        return const SixthScreen();
      default:
        return const SizedBox();
    }
  }
}


class FirstScreenContent extends StatelessWidget {
  const FirstScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/page1.png',
            fit: BoxFit.fill,
          ),
        ),
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Итоги\n',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Steppe-Medium',
                      ),
                    ),
                    TextSpan(
                      text: 'Вашего\n',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 40,
                        fontFamily: 'Steppe-Regular',
                      ),
                    ),
                    TextSpan(
                      text: '2024\n',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Steppe-Medium',
                      ),
                    ),
                    TextSpan(
                      text: 'года',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 40,
                        fontFamily: 'Steppe-Regular',
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Прокрутите вниз для продолжения',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Steppe-Regular',
                    ),
                  ),
                  Icon(
                    Icons.arrow_circle_down_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 200,
          right: 0,
          child: Image.asset(
            'assets/images/shoes.png',
            fit: BoxFit.cover,
            height: 300,
          ),
        ),
        Positioned(
          top: 100,
          left: 0,
          child: Image.asset(
            'assets/images/bottle.png',
            fit: BoxFit.cover,
            height: 200,
          ),
        ),
      ],
    );
  }
}

class HealthPointsScreen extends StatelessWidget {
  const HealthPointsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TypedSkllzz userStats = TypedSkllzz(
      steps: 15000,
      hr: 3000,   
    );

    final numberFormatter = NumberFormat("#,###", "ru_RU");

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/page2.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 60.0),
                    child: Text(
                      'Баллы\nздоровья',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Steppe-Medium',
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 40),
                      RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'На шагах: ',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontFamily: 'Steppe',
                              ),
                            ),
                            TextSpan(
                              text: '${numberFormatter.format(userStats.steps)}',
                              style: const TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Steppe-Medium',
                              ),
                            ),
                            const TextSpan(
                              text: ' баллов',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontFamily: 'Steppe',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'На тренировках: ',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontFamily: 'Steppe',
                              ),
                            ),
                            TextSpan(
                              text: '${numberFormatter.format(userStats.hr)}',
                              style: const TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Steppe-Medium',
                              ),
                            ),
                            const TextSpan(
                              text: ' баллов',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontFamily: 'Steppe',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Суммарно: ',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontFamily: 'Steppe-Regular',
                                  ),
                                ),
                                TextSpan(
                                  text: '${numberFormatter.format(userStats.steps + userStats.hr)}',
                                  style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Steppe-Medium',
                                  ),
                                ),
                                const TextSpan(
                                  text: ' баллов',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontFamily: 'Steppe-Regular',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Можно отправляться на\nшоппинг в ФитМаркет!',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'Steppe-Regular',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 60, 
            left: 370,
            child: Image.asset(
              'assets/images/artif.png',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 200,
            left: 70,
            child: Image.asset(
              'assets/images/linePage2.png',
              height: 130,
              width: 200,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}


class TypedSkllzz {
  final int steps;
  final int hr;

  TypedSkllzz({required this.steps, required this.hr});
}
///!!!
// экран для отображения артефактов
class ArtifactScreen extends StatelessWidget {
  const ArtifactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Фон
        Positioned.fill(
          child: Image.asset(
            'assets/images/page3.png',
            fit: BoxFit.cover,
          ),
        ),
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'благодаря артефактам\nвы заработали',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Steppe-Regular',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 100),
              Text(
                '660',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Steppe-Medium',
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'баллов',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Steppe-Regular',
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 50,
          top: 200,
          child: Image.asset(
            'assets/images/linePage3.png',
            width: 150,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

///!!!
///Четвертая страница шаги от и до
enum DistanceTypes {
  moscowToPiter,
  moscowToOdintsovo,
  shopRun,
}

DistanceTypes getDistanceType(double km) {
  if (km > 1000) {
    return DistanceTypes.moscowToPiter;
  } else if (km > 100) {
    return DistanceTypes.moscowToOdintsovo;
  } else {
    return DistanceTypes.shopRun;
  }
}

class AdditionalInfoScreen extends StatelessWidget {
  const AdditionalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const double steps = 500000;
    const double km = steps * 0.7 / 1000;

    final distanceType = getDistanceType(km);

    final numberFormatter = NumberFormat("#,###", "ru_RU");

    String distancePhrase;
    String distancePhrase2;

    switch (distanceType) {
      case DistanceTypes.moscowToPiter:
        distancePhrase = "Вы могли бы дойти от Москвы\n до Питера!";
        distancePhrase2 = "Или обойти Луну по экватору\n 1,5 раза!";
        break;
      case DistanceTypes.moscowToOdintsovo:
        distancePhrase = "Вы могли бы дойти от Москвы\n до Одинцово!";
        distancePhrase2 = "Или пройти путь по всей\n Новой Зеландии!";
        break;
      case DistanceTypes.shopRun:
        distancePhrase = "Вы бы могли 15 раз сходить в магазин!";
        distancePhrase2 = "Или обойти квартал пару раз!";
        break;
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/page4.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '${numberFormatter.format(steps.toInt())}',
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Steppe-Medium',
                    ),
                  ),
                ),
                const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'пройденных шагов',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Steppe-Regular',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'примерно ${km.toStringAsFixed(1)} км, а значит',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Steppe-Regular',
                  ),
                ),
              ),
              const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: -6.1 * 3.14159 / 180,
                      child: const Icon(
                        Icons.check,
                        color: Colors.lightGreenAccent,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Transform.rotate(
                        angle: -6.1 * 3.14159 / 180,
                        child: Text(
                          distancePhrase,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Steppe-Regular',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.rotate(
                      angle: 6.93 * 3.14159 / 180,
                      child: const Icon(
                        Icons.check,
                        color: Colors.lightGreenAccent,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 8),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Transform.rotate(
                        angle: 6.93 * 3.14159 / 180,
                        child: Text(
                          distancePhrase2,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Steppe-Regular',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
///!!!
///Пятая страница с калориями
enum KkalTypes { choco, coffee, rocket }

KkalTypes getType(double kkal) {
  if (kkal < 5000) {
    return KkalTypes.choco;
  } else if (kkal < 20000) {
    return KkalTypes.coffee;
  }
  return KkalTypes.rocket;
}

String getCaloriesPhrase(double kkal) {
  final kkalType = getType(kkal);

  switch (kkalType) {
    case KkalTypes.choco:
      return 'шоколадки';
    case KkalTypes.coffee:
      return 'чашки кофе';
    case KkalTypes.rocket:
      return 'космического топлива';
    default:
      return 'шоколадки';
  }
}

String getCorrectWordForCalories(double kkal) {
  final kkalType = getType(kkal);
  int count = (kkal / 770).toInt();

  if (kkalType == KkalTypes.choco) {
    if (count == 1) return 'шоколадка';
    if (count > 1 && count <= 4) return 'шоколадки';
    return 'шоколадок';
  } else if (kkalType == KkalTypes.coffee) {
    if (count == 1) return 'чашка кофе';
    if (count > 1 && count <= 4) return 'чашки кофе';
    return 'чашек кофе';
  } else if (kkalType == KkalTypes.rocket) {
    if (count == 1) return 'космическое топливо';
    if (count > 1 && count <= 4) return 'космического топлива';
    return 'космического топлива';
  }
  return 'шоколадок';
}

class FifthScreen extends StatelessWidget {
  final double sBurnedCalories;

  const FifthScreen({super.key, required this.sBurnedCalories});

  @override
  Widget build(BuildContext context) {
    final numberFormatter = NumberFormat("#,###", "ru_RU");
    final caloriePhrase = getCaloriesPhrase(sBurnedCalories);
    final correctWordForCalories = getCorrectWordForCalories(sBurnedCalories);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/page5.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    numberFormatter.format(sBurnedCalories),
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Steppe-Medium',
                    ),
                  ),
                ),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'сожженных калорий',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: 'Steppe-Regular',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    'assets/images/linePage5.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Это ',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Steppe-Regular',
                                  ),
                                ),
                                TextSpan(
                                  text: '${(sBurnedCalories / 770).toStringAsFixed(0)}\n',
                                  style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Steppe-Regular',
                                  ),
                                ),
                                TextSpan(
                                  text: correctWordForCalories,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Steppe-Regular',
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///!!!
///Последний экран со статистикой 
class SixthScreen extends StatelessWidget {
  const SixthScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const double userPerformance = 80.0;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/page6.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(92.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'В этом году вы были круче',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: 'Steppe-Regular',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      '${userPerformance.toStringAsFixed(0)}% ',
                      style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1B0091),
                        fontFamily: 'Steppe-Medium',
                      ),
                    ),
                  ],
                ),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'пользователей',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF1B0091),
                      fontFamily: 'Steppe-Regular',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 200),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Ждём новых\n рекордов в\n следующем году!',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontFamily: 'Steppe-Regular',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 5,
            left: MediaQuery.of(context).size.width / 2 - 80,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Закрытие экрана
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Закрыть',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Steppe-Regular',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
