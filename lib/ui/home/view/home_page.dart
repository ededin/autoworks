import 'package:autoworks/all_packages.dart';

List<GlobalKey> servicesKeys =
    List.generate(services.length, (index) => GlobalKey());

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
                  ? const AboutUS()
                  : header == "Our Team"
                      ? const OurTeam()
                      : header == "Services"
                          ? const Services()
                          : ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: 0.8.sh,
                                minWidth: 1.sw,
                              ),
                              child: header.isNotEmpty
                                  ? Center(
                                      child: Text(
                                        header == "Shop"
                                            ? "Coming Soon....!"
                                            : header,
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
              if (p0 != "Home") {
                setState(() {
                  header = p0;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

class AboutUS extends StatelessWidget {
  const AboutUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 0.65.sh),
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            "About us",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                height: 0.4.sh,
                // width: 200,
                'assets/images/car1.png',
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
      ),
    );
  }
}

class OurTeam extends StatelessWidget {
  const OurTeam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 0.65.sh),
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            "Our Team",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                height: 0.4.sh,
                // width: 200,
                'assets/images/team.png',
              ),
              SizedBox(
                width: 0.5.sw,
                child: const Text(
                  "\n\nOur team is the foundation of our quality, we take good care of them, and they take good care of your cars, we have handpicked specialists, installing technicians, detailers, tinters, Polishers, Designers, helpers, washing men, and videographers.",
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
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('SERVICESKEYS[I].CURRENTCONTEXT: ${servicesKeys[0].currentContext}');

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 0.65.sh),
      child: SizedBox(
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                "Services",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < services.length; i++)
                    Builder(builder: (context) {
                      TextSized textSized = TextSized(
                        text: services[i],
                        textStyle: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      );
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.05.sh),
                        child: SizedBox(
                          width: 0.25.sw,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textSized,
                              const SizedBox(height: 10),
                              Container(
                                width: (textSized.txtSize.width) * 0.2,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextSized extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const TextSized({Key? key, required this.text, required this.textStyle})
      : super(key: key);

  Size get txtSize => _textSize(text, textStyle);
  @override
  Widget build(BuildContext context) {
    // This kind of use - meaningless. It's just an example.
    return SizedBox(
      // color: Colors.blueGrey,
      width: txtSize.width + 5,
      height: txtSize.height,
      child: Text(
        text,
        style: textStyle,
        softWrap: false,
        overflow: TextOverflow.clip,
        maxLines: 1,
      ),
    );
  }

  // Here it is!
  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
