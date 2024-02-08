import 'package:autoworks/all_packages.dart';

class ServicePage extends StatefulWidget {
  final String image;
  final String name;
  final String content;
  const ServicePage(
      {super.key,
      required this.image,
      required this.name,
      required this.content});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  String header = "";

  double height() => header == "Contact Us" ? 0.6.sh : 0.9.sh;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Stack(
        children: [
          SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/services_bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // const SizedBox(height: 120),
                    Container(
                      height: 0.6.sh,
                      width: 1.sw,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 0.6.sh,
                            width: 1.sw,
                            color: Colors.black.withOpacity(0.8),
                          ),
                          Center(
                            child: Text(
                              widget.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Image.asset(
                    //   widget.image,
                    //   height: 0.3.sh,
                    // ),

                    const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.15.sw),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: const TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\n${widget.content}",
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100),
                    const Text(
                      "SIGNATURE FEATURES\n",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 0.3.sh,
                              width: 0.3.sw,
                              child: Image.asset(
                                "assets/images/ppf1.jpeg",
                              ),
                            ),
                            const SizedBox(height: 7),
                            const Text(
                              "Hydrophobic Properties",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Text(
                              "\nRepels water, dirt, and road grime.",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 0.3.sh,
                              width: 0.3.sw,
                              child: Image.asset(
                                "assets/images/ppf2.jpeg",
                              ),
                            ),
                            const SizedBox(height: 7),
                            const Text(
                              "Self-Healing",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Text(
                              "\nAdvanced top coat properties eliminate fine scratches and swirl marks, when exposed to heat.",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Column(
                      children: [
                        SizedBox(
                          height: 0.3.sh,
                          width: 0.3.sw,
                          child: Image.asset(
                            "assets/images/ppf3.jpeg",
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Text(
                          "Flawless Fit",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          "\nIndustry-leading design patterns, specified for each make and model\n\n\n\n\n",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Footer(
                      onClick: (p0) {
                        if (constants.isLaptop) {
                          if (p0 != "Home") {
                            setState(() {
                              header = p0;
                            });
                          } else {
                            Navigator.pushAndRemoveUntil(context,
                                PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return const HomePage();
                              },
                            ), (route) => false);
                          }
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          if ((constants.isLaptop))
            MouseRegion(
              onExit: (event) {
                setState(() {
                  header = '';
                });
              },
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: header.isNotEmpty ? 1 : 0,
                child: AnimatedContainer(
                  height: header.isNotEmpty ? height() : 0,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bg.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 300),
                  child: header == "About Us"
                      ? const AboutUS()
                      : header == "Contact Us"
                          ? const ContactUS()
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
                                                    ? "Coming Soon"
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
            ),
          if (constants.isLaptop)
            MenuBar(
              bg: header.isNotEmpty ? Colors.transparent : null,
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
