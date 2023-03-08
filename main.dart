//import 'dart:html';
// 이걸 지우니까 에러가 해결되었다. 왜 해겨되었을까?

import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'hey eunsueng',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'good to see you',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 70),
                  Text(
                    'Total balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '30,000,000,000 \$',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Button(
                          text: 'Transfer',
                          bgColor: Colors.amber,
                          textColor: Colors.black),
                      Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '3489',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    offset: 0,
                  ),
                  const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '5,000',
                    icon: Icons.currency_bitcoin_outlined,
                    isInverted: true,
                    offset: -20,
                  ),
                  const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '3,0000',
                    icon: Icons.monetization_on_outlined,
                    isInverted: false,
                    offset: -40,
                  ),
                  // const CurrencyCard(
                  //  name: 'Dollar',
                  //  code: '\$',
                  //   amount: '3,000',
                  //   icon: Icons.monetization_on_outlined),
                ],
              ),
            ),
          )),
    );
  }
}

// fultter의 컴포넌트 들은 전부 위젯(Widget)의 형태로 이뤄져있다. 그래서 하나하나 위젯 형태로 만들어줘야한다. 
// 상단 바 , 텍스트 가운데 정렬같은 것을 구현할때도 위젯 형태로 제품을 만들어줘야 한다.
// 그리고 항상 위젯들을 가져다 쓸때면 ','를 적으면 어떤 위젯을 쓰던 마지막에 항상 이 위젯을 썼다고 알려준다.