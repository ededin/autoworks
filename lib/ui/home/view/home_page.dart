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
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: header.isNotEmpty ? 1 : 0,
            child: AnimatedContainer(
              height: header.isNotEmpty ? 0.8.sh : 0,
              decoration: const BoxDecoration(color: Colors.black),
              curve: Curves.ease,
              duration: const Duration(milliseconds: 300),
              child: header == "About us"
                  ? Column(
                      children: [
                        const SizedBox(height: 100),
                        Text(
                          header,
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              height: 0.2.sh,
                              // width: 200,
                              'assets/images/logo.png',
                            ),
                            SizedBox(
                              width: 0.5.sw,
                              child: const Text(
                                "\n\nAutoworks car care center was started in 2022 in Doha-Qatar, out of a passion for high quality car care and detailing. We are certified from the top-class auto detailing Manufacturers around the world. We are using some of the most professional and top- class products in the market that we personally tested and used professionally to ensure the best high-quality, long-lasting results along with our well-trained staff to give the best service for your automobile. Our center is well prepared with the best environment for the clients cars along with the 24hr CCTV for safety and security. Our main goal is to achieve the best detailing and protection results for the cars and to make the clients feel satisfied.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 0.8.sh,
                        minWidth: 1.sw,
                      ),
                      child: header.isNotEmpty
                          ? Center(
                              child: Text(
                                header,
                                style: const TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
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
