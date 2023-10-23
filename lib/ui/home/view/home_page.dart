import 'package:autoworks/all_packages.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/octicons_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> header = [
    'Home',
    'About us',
    'Services',
    'Shop',
    'Our Team',
    'Contact us',
  ];
  List<String> text = [
    'Window Tint',
    'Collision Repair',
    'Forced Induction',
    'Installations'
  ];
  List<String> text1 = [
    'Lift Kit',
    'Lighting Solutions',
    'Body Kits',
    'Wheels & Tyres'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Card(
                  color: Colors.black,
                  elevation: 5,
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    height: 0.12.sh,
                    width: 0.80.sw,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (var i = 0; i < header.length; i++)
                          Text(
                            header[i],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                          child: const Icon(
                            Icons.search_sharp,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Card(
              elevation: 5,
              child: Container(
                height: 0.70.sh,
                width: 1.sw,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black,
                    border: Border.all(color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Protection Film With',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Nano Ceramic Coating.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Container(
                        padding: const EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.red),
                        child: const Text(
                          'Explore More',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      // const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.translate(
                            offset: const Offset(0, 120),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                height: 0.20.sh,
                                width: 0.20.sw,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: Colors.white),
                                child: Center(
                                  child: ListTile(
                                    leading:
                                        Image.asset('assets/images/timer.png'),
                                    title: const Text(
                                      'We are Open Sat To Thur',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    subtitle: const Text(
                                      '9:30 - 01:30 / 3:30 - 09:30',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(0, 120),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                height: 0.20.sh,
                                width: 0.20.sw,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: Colors.red),
                                child: Center(
                                  child: ListTile(
                                    leading:
                                        Image.asset('assets/images/person.png'),
                                    title: const Text(
                                      'Have A Question? Call Us',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    subtitle: const Text(
                                      '+97444867214',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(0, 120),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                height: 0.20.sh,
                                width: 0.20.sw,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: Colors.black),
                                child: Center(
                                  child: ListTile(
                                    leading: Image.asset(
                                        'assets/images/location.png'),
                                    title: const Text(
                                      'Need A Repair? Our Address',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    subtitle: const Text(
                                      'Building No 156 Zone,\n56 street 819,Doha',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              height: 0.70.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0), color: Colors.red),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    'Our Services',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  const Text(
                    ' Great Car Services',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Container(
                          height: 0.45.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.0),
                              color: Colors.white),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                'Thouands Of Option',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                'Lorem Ipsum Is Simply Dummy\nText Of The Printing And\nTypesetting Industry.Lorem\nIpsm Has Been The Industry\'s\nStandard Dummy Text Ever Since\nThe 1500s When an Unknown\nPrinter Took A Gallery Of Type And\nScrambled It To Make A Type\nSpecimen Book',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3.0),
                                color: Colors.black,
                                child: const Text(
                                  'Read More',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 0.70.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'About Company',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  const Text(
                    'WHAT TYPE OF VEHICLE DO YOU DRIVE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  for (var i = 0; i < 4; i++)
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                              color: Colors.red),
                        ),
                        Container(
                          height: 40,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: Colors.red),
                          child: Center(
                            child: Text(
                              text[i],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 40,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: Colors.red),
                          child: Center(
                            child: Text(
                              text1[i],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                              color: Colors.red),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            Container(
              height: 0.50.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  color: Colors.black, border: Border.all(color: Colors.white)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Our Works',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  const Text(
                    'OUR FEAUTERED GALLERY',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Container(
                            height: 30,
                            width: 0.10.sw,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                      'https://media.istockphoto.com/id/907671134/photo/new-red-metallic-sedan-car-in-spotlight-modern-desing-brandless.jpg?s=612x612&w=0&k=20&c=g6NVmjXsj5cjvbkgeYVRLaT8dRxFkfXQYRurE_Pj3bY=',
                                    ),
                                    fit: BoxFit.cover,
                                    scale: 1),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 0.75.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    'Client Testonomials',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  const Text(
                    '100% APPROVED BY CUSTOMERS',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Container(
                          height: 0.50.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.0),
                              color: Colors.red),
                          child: const Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '//',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Lorem Ipsum Is Simply Dummy\nText Of The Printing And\nTypesetting Industry.Lorem\nIpsm Has Been The Industry\'s\nStandard Dummy Text Ever Since\nThe 1500s When an Unknown\nPrinter Took A Gallery Of Type And\nScrambled It To Make A Type\nSpecimen Book',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://t3.ftcdn.net/jpg/05/35/47/38/360_F_535473874_OWCa2ohzXXNZgqnlzF9QETsnbrSO9pFS.jpg'),
                              ),
                              Text(
                                'SATHISH',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 0.50.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  color: Colors.black, border: Border.all(color: Colors.white)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Part & Accesories',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  const Text(
                    'CHECK OUT OUR PRODUCTS',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 26,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Card(
                              elevation: 5.0,
                              child: Container(
                                height: 0.20.sh,
                                width: 0.10.sw,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                          'https://media.istockphoto.com/id/1147751232/photo/auto-parts-spare-parts-car-on-the-grey-background.jpg?s=612x612&w=0&k=20&c=8gE65zWyEu_l7G5XbiC3NmCCj_XaoHleJa86wfVu1NQ=',
                                        ),
                                        fit: BoxFit.cover,
                                        scale: 1),
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
                            const Text(
                              '\$122.99',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 0.65.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  color: Colors.black, border: Border.all(color: Colors.white)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'OUR BLOG',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  const Text(
                    'Our Latest News',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 0.30.sh,
                    width: 1.sw,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1),
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 5,
                            child: Container(
                              height: 0.90.sh,
                              width: 0.20.sw,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                        'https://media.istockphoto.com/id/188052258/photo/car-components.jpg?s=612x612&w=0&k=20&c=ecwDRfBXUZt3BgSNOzvnGOveu7O5AX82y9OQ5kFFrZg=',
                                      ),
                                      fit: BoxFit.cover,
                                      scale: 1),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, 50),
                    child: Container(
                      height: 0.12.sh,
                      width: 0.60.sw,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Colors.red),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'SUBSCRIBE FOR OUR\nLATEST NEWSLETTER',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              height: 50,
                              width: 0.23.sw,
                              child: const TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter Your Email Address..',
                                    hintStyle: TextStyle(color: Colors.black)),
                              ),
                            ),
                          ),
                          MaterialButton(
                            padding: const EdgeInsets.all(13.0),
                            color: Colors.black,
                            onPressed: () {},
                            child: const Text(
                              'Subcribe Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 0.50.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.black,
                  border: Border.all(color: Colors.white)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem Ipsum Is Simply Dummy\nText Of The Printing And\nTypesetting Industry.Lorem\nIpsm Has Been The Industry\'s\nStandard Dummy Text Ever Since\nThe 1500s When an Unknown\nPrinter Took A Gallery Of Type And\nScrambled It To Make A Type\nSpecimen Book',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesome5.instagram,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            FontAwesome5.youtube,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            FontAwesome5.facebook,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            FontAwesome5.twitter,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Comopany Links',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'About Us',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Service,Shop',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Our Team',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Contact Us',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Contact Info',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [
                            Icon(
                              Entypo.phone,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              '+974 4486 7214',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Xyz@gmai.com',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(
                              Octicons.location,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Building No 156 Zone,\n56 Street 819,Doha',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ],
                        )
                      ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
