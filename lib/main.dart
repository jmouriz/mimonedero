import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MiMonedero',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.purple.shade900,
          title: const Text('Hola, Juan Manuel'),
        ),
        drawer: const Drawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          elevation: 2.0,
          child: const Icon(Icons.qr_code_scanner_outlined),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          color: Colors.purple.shade900,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.wallet_outlined,
                  color: Colors.white,
                ),
                onPressed:() {},
              ),
              IconButton(
                icon: const Icon(Icons.payment_outlined,
                  color: Colors.white,
                ),
                onPressed:() {},
              ),
              const SizedBox(
                width: 48
              ),
              IconButton(
                icon: Badge(
                  position: BadgePosition.bottomEnd(),
                  showBadge: true,
                  child: const Icon(Icons.notifications_none_outlined,
                    color: Colors.white,
                  ),
                ),
                onPressed:() {},
              ),
              IconButton(
                icon: const Icon(Icons.settings_outlined,
                  color: Colors.white,
                ),
                onPressed:() {},
              ),
            ]
          )
        ),
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                elevation: 2,
                color: Colors.purple.shade900,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0)
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tu saldo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                '\$ 167,35',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Movimientos',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurple.shade900
                      ),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.deepPurple.shade900
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: SizedBox(
                height: 48,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Chip(label: Text('Enviados')),
                    const SizedBox(width: 8),
                    const Chip(label: Text('Recibidos')),
                    const SizedBox(width: 8),
                    Chip(
                      label: const Text('Último mes',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.purple.shade900,
                    ),
                    const SizedBox(width: 8),
                    const Chip(label: Text('Última semana')),
                    const SizedBox(width: 8),
                    const Chip(label: Text('Últimos tres meses')),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 8.0,
                  bottom: 42.0,
                ),
                child: Material(
                  elevation: 2,
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0)
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.separated(
                        itemCount: 100,
                        itemBuilder: (context, index) => Row(children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                index % 2 == 0
                                ? const Text('Enviaste',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                )
                                : const Text( 'Recibiste',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                index % 2 == 0
                                ? const Text('A Natalia Pérez',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black54
                                  ),
                                )
                                : const Text('De Sistemas Integrados de Parquímetros S.R.L.',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black54
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              index % 2 == 0
                              ? const Text('- \$ 100,50',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.red,
                                  ),
                                )
                              : const Text('\$ 100,00',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green,
                                  ),
                                ),
                              const Text('Sábado',
                                style: TextStyle(
                                  color: Colors.black54
                                ),
                              ),
                            ],
                          ),
                        ]
                      ),
                      separatorBuilder: (context, index) => const Divider(
                        color: Colors.black45
                      ),
                      ),
                    )
                  )
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
