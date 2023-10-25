import 'package:autoworks/all_packages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String header = "";
  @override
  Widget build(BuildContext context) {
    constants.screenHeight = MediaQuery.of(context).size.height;
    constants.screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const ContentsPage(),
          AnimatedContainer(
            height: header.isNotEmpty ? 0.8.sh : 0,
            curve: Curves.easeInCubic,
            duration: const Duration(milliseconds: 300),
            child: DecoratedBox(
              decoration: const BoxDecoration(color: Colors.black),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 0.8.sh,
                  minWidth: 1.sw,
                ),
                child: header.isNotEmpty
                    ? Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.2.sh),
                        child: Center(
                          child: Text(
                            header,
                            style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : null,
              ),
            ),
          ),
          MenuBar(
            onHover: (p0) {
              setState(() {
                header = p0;
              });
            },
          ),
        ],
      ),
    );
  }
}
