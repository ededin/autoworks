import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../all_packages.dart';

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

List<String> services = [
  'Paint Protection Flim (PPF)',
  'Car DIP',
  'Window Flims',
  'Nano Ceramic Coating',
  'Wrapping',
  'Smart Repairs',
  'Wheel Repairs',
  'Leather Care',
  'Detailing',
];

class ContentsPage extends StatefulWidget {
  final void Function(String) onClick;

  const ContentsPage({super.key, required this.onClick});

  @override
  State<ContentsPage> createState() => _ContentsPageState();
}

class _ContentsPageState extends State<ContentsPage> {
  String? selectedService;
  @override
  Widget build(BuildContext context) {
    constants.screenHeight = MediaQuery.of(context).size.height;
    constants.screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 0.8.sh,
                    width: 1.sw,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/home_car.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.colorBurn,
                        ),
                      ),
                    ),
                    /*      child: Padding(
                      padding: EdgeInsets.only(left: 0.05.sw),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Protection Film With',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            'Nano Ceramic Coating.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.red,
                            ),
                            child: const Text(
                              'Explore More >',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          // const Spacer(),
                        ],
                      ),
                    ),
                */
                  ),
                  Container(
                    height: 0.72.sh,
                    width: 1.sw,
                    decoration: const BoxDecoration(
                      // color: AppColors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/images/steering.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 0.72.sh,
                          width: 1.sw,
                          color: AppColors.red.withOpacity(0.8),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 0.12.sh),
                            const Text(
                              'Our Services',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              'Great Car Services',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (var i = 0; i < 3; i++)
                                  Container(
                                    height: 0.45.sh,
                                    width: 0.20.sw,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(17.0),
                                        color: Colors.white),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          i == 0
                                              ? 'Car Care Qatar'
                                              : i == 1
                                                  ? 'Our Services'
                                                  : 'Why AutoWorks?',
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 0.03.sw,
                                          ),
                                          child: Text(
                                            i == 0
                                                ? "AutoWorks Car Care Qatar is your trusted source for top-notch car care services. We specialize in paint protection film (PPF) installations and detailing to keep your vehicle looking its best. With a passion for perfection and a commitment to customer satisfaction, we're your go-to destination for automotive excellence."
                                                : i == 1
                                                    ? "AutoWorks Car Care Qatar offers a comprehensive range of services to maintain and enhance your vehicle. From PPF installations to professional detailing, we provide expert solutions to protect and rejuvenate your car's appearance. Choose AutoWorks for quality car care."
                                                    : "Choose AutoWorks Car Care Qatar for a team that's passionate about cars, dedicated to detail, and committed to excellence. We use cutting-edge technology and top-tier products to ensure exceptional results. When you want the best in car care, AutoWorks delivers.",
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              // wordSpacing: 5,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        /*  Container(
                                          padding: const EdgeInsets.all(5),
                                          color: Colors.black,
                                          child: const Text(
                                            'Read More',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ), */
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: Offset(0, 0.7.sh),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 0.20.sh,
                      width: 0.20.sw,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Image.asset('assets/images/timer.png'),
                          title: const Text(
                            'We are Open Sat To Thur',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          subtitle: const Text(
                            '9:30 - 01:30 / 3:30 - 09:30',
                            style:
                                TextStyle(color: AppColors.red, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 0.20.sh,
                      width: 0.20.sw,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        color: AppColors.red.withOpacity(0.8),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Image.asset('assets/images/person.png'),
                          title: const Text(
                            'Have A Question? Call Us',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          subtitle: const Text(
                            '+974 4486 7214',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 0.20.sh,
                      width: 0.20.sw,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        color: Colors.black.withOpacity(0.8),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Image.asset('assets/images/location.png'),
                          title: const Text(
                            'Acquire services',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          subtitle: const Text(
                            'Hayol Street,Doha',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 0.25.sh,
            width: 1.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.black,
            ),
            child: SizedBox(
              height: 0.1.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/whatsapp.png",
                        height: 30,
                      ),
                      const Text(
                        'GET IN TOUCH',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 0.15.sw,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Name',
                        hintStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 0.16.sw,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: InternationalPhoneNumberInput(
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.DROPDOWN,
                        showFlags: false,
                        setSelectorButtonAsPrefixIcon: true,
                      ),
                      hintText: "WhatsApp No",
                      initialValue: PhoneNumber(isoCode: "QA"),
                      onInputChanged: (PhoneNumber value) {},
                    ),
                  ),
                  /* SizedBox(
                    width: 0.15.sw,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter Whatsapp No',
                        hintStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ), */
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 2),
                      child: DropdownButton(
                        value: selectedService,
                        style: const TextStyle(color: Colors.black),
                        dropdownColor: Colors.white,
                        underline: const SizedBox(),
                        iconEnabledColor: Colors.black,
                        hint: Text(
                          'Select Service',
                          style: GoogleFonts.questrial(color: Colors.black),
                        ),
                        items: services
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  e,
                                  style: GoogleFonts.questrial(
                                      color: Colors.black),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedService = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 0.15.sw,
                    height: 50,
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: 0.08.sw,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Center(
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /*     Container(
            height: 0.70.sh,
            width: 1.sw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0), color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'About Company',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'WHAT TYPE OF VEHICLE DO YOU DRIVE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                for (var i = 0; i < 4; i++)
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 0.20.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          color: AppColors.red,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 0.20.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: AppColors.red,
                        ),
                        child: Center(
                          child: Text(
                            text[i],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 0.20.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: AppColors.red,
                        ),
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
                          color: AppColors.red,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
       */
          Container(
            height: 0.50.sh,
            width: 1.sw,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
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
                  ),
                ),
                const Text(
                  'OUR FEAUTERED GALLERY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var index = 0; index < 4; index++)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/${index + 1}.png',
                            height: 0.4.sw,
                            fit: BoxFit.cover,
                            width: 0.2.sw,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
          /*  Container(
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
          ),*/
          Container(
            height: 0.55.sh,
            width: 1.sw,
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Part & Accesories',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'CHECK OUT OUR PRODUCTS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (var index = 0; index < 4; index++)
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Container(
                                    height: 0.20.sh,
                                    width: 0.2.sw,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/products$index.png',
                                        ),
                                        fit: BoxFit.cover,
                                        // scale: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                const Text(
                                  '\n\$122.99',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      child: SizedBox(
                        height: 0.35.sh,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                            color: Colors.black.withOpacity(0.7),
                            child: const Center(
                                child: Text(
                              "Coming Soon...!",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: Image.asset(
                    'assets/images/divider.png',
                    height: 5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 0.5.sh,
            width: 1.sw,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
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
                  ),
                ),
                const Text(
                  'Our Latest News',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 0.3.sh,
                  width: 1.sw,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int index = 0; index < 3; index++)
                          Container(
                            height: 0.50.sh,
                            width: 0.25.sw,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/news$index.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 0.12.sh,
            width: 0.60.sw,
            margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              color: AppColors.red,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'SUBSCRIBE FOR OUR\nLATEST OFFERS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
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
                        hintStyle: TextStyle(color: Colors.black),
                      ),
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
          Container(
            height: 0.50.sh,
            width: 1.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 0.2.sw,
                      child: const Text(
                        'Explore the extraordinary! Join our vibrant online community for daily inspiration, engaging conversations, and exclusive updates. Connect with like-minded individuals who share your passion. Elevate your online experience with us! ',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Row(
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
                    const Text(
                      'Comopany Links',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    for (var i = 0; i < constants.header.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: InkWell(
                          onTap: () {
                            widget.onClick.call(constants.header[i]);
                          },
                          child: Text(
                            constants.header[i],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Contact Info',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(height: 60),
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
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
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
                          'info@autoworksqa.com',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
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
                          'Hayol Street,Doha',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
