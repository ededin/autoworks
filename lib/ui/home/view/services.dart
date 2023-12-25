import '../../../all_packages.dart';

class SetvicesPage extends StatefulWidget {
  const SetvicesPage({super.key});

  @override
  State<SetvicesPage> createState() => _SetvicesPageState();
}

class _SetvicesPageState extends State<SetvicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: constants.isLaptop ? null : const MenuDrawer(),
      appBar: constants.isLaptop
          ? null
          : AppBar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              title: Image.asset(
                'assets/images/logo.png',
                height: 50,
              ),
            ),
      body: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 0.65.sh),
        child: SizedBox(
          width: 1.sw,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
            child: Wrap(
              children: [
                const SizedBox(height: 100),
                const Text(
                  "Services",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: Wrap(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      for (int i = 0; i < services.length; i++)
                        Builder(builder: (context) {
                          // TextSized textSized = TextSized(
                          //   text: services[i],
                          //   textStyle: const TextStyle(
                          //     fontSize: 25,
                          //     color: Colors.white,
                          //   ),
                          // );
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.05.sh),
                            child: SizedBox(
                              width: 0.25.sw,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    services[i],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  /*  Container(
                                  width: (textSized.txtSize.width) * 0.2,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ) */
                                ],
                              ),
                            ),
                          );
                        })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
