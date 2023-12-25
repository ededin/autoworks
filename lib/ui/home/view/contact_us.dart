import '../../../all_packages.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
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
      body: SizedBox(
        width: 1.sw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 0.1.sh),
            /* const Text(
            "Contact Us\n",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ), */
            Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Image.asset(
                height: 0.2.sh,
                // width: 200,
                'assets/images/logo.png',
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 0.6.sw,
              child: const Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        Entypo.phone,
                        color: Colors.black,
                      ),
                      SizedBox(width: 20),
                      Text(
                        '+974 4486 7214',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'info@autoworksqa.com',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Octicons.location,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Hayol Street,Doha',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
