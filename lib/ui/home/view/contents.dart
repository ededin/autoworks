import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:url_launcher/url_launcher.dart';

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
  'Peelable Paint',
  'Window Flims', //
  'Nano Ceramic Coating',
  'Vinyl Wrapping',
  'PDR Smart Repairs', //
  'Alloy Wheel Repairs',
  'Leather Care',
  'Detailing', //
];

List<String> servicesContent = [
  "Preserve your vehicle's pristine condition with our premium Paint Protection Film. Our PPF acts as an invisible shield, protecting against scratches, chips, and environmental contaminants. Engineered for durability and clarity, it ensures your paint's longevity and maintains the vehicle's resale value. Trust in our expert application for a seamless finish, safeguarding your investment against the rigors of the road.",
  "Transform your vehicle's look with our Peelable Paint service. Ideal for those seeking a temporary color change or added protection, this innovative solution allows for complete color transformation while preserving the original paint. Easy to remove, it offers the flexibility to revert to the original color or try new shades as often as you like. It's a reversible, commitment-free way to customize your ride.",
  "Enhance comfort and privacy with our premium Window Films. Our films block harmful UV rays, reduce heat and glare, and increase privacy and security. Available in various shades and grades, they add a sleek, custom look to your vehicle while improving the driving experience and protecting the interior from sun damage.", //
  "Elevate your vehicle's shine and protection with our Nano Ceramic Coating. This advanced treatment forms a hard, glossy barrier that repels water, dirt, and grime, making cleaning a breeze. Enjoy enhanced color depth and a continuous new-car finish, while also providing substantial protection against UV rays, oxidation, and chemical stains. It's the long-lasting, luxurious care your vehicle deserves.",
  "Customize your vehicle's appearance with our Vinyl Wrapping service. Choose from an extensive range of colors and finishes to personalize your ride uniquely. Our high-quality wraps not only give your car a brand-new look but also protect the original paint from scratches and fading. With our precise application, enjoy a flawless finish that stands out.",
  "Address minor damages swiftly with our PDF Smart Repairs. This cost-effective service is perfect for repairing small dings, scratches, and scuffs. Using innovative techniques, we restore the affected area to its original state, maintaining your vehicle's aesthetic appeal and value. It's a quick, convenient solution for keeping your vehicle looking its best.", //
  "Restore the beauty and integrity of your wheels with our specialized Alloy Wheel Repair services. From curb rash to corrosion, our expert technicians meticulously remove imperfections, returning your wheels to their original glory. We use the latest techniques and materials to ensure a durable and attractive finish, enhancing your vehicle's overall appearance and value.",
  "Keep your vehicle's interior luxurious with our Leather Care services. We specialize in cleaning, conditioning, and protecting automotive leather, ensuring it remains soft, supple, and vibrant. Regular treatment prevents premature aging, cracking, and staining, preserving the comfort and value of your vehicle's interior.",
  "Experience our comprehensive Detailing service for a vehicle that shines inside and out. Our meticulous process covers every inch, from a thorough exterior wash to an in-depth interior clean. We use the finest products and techniques to rejuvenate your vehicle, enhancing its appearance and preserving its condition. Regular detailing not only maintains its beauty but also extends its lifespan.", //
];

List<String> servicesImages = [
  'assets/images/ppf.jpg',
  'assets/images/peelable.png',
  '', //
  'assets/images/nano.jpg',
  'assets/images/wrapping.jpg',
  'assets/images/pdr.jpg',
  'assets/images/alloy.png',
  'assets/images/leather.jpg',
  '', //
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
                    height: constants.isLaptop ? 0.72.sh : 1.8.sh,
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
                          height: constants.isLaptop ? 0.72.sh : 2.sh,
                          width: 1.sw,
                          color: AppColors.red.withOpacity(0.8),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 0.15.sh),
                              // const Text(
                              //   'Our Services',
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 20,
                              //   ),
                              // ),
                              // const Text(
                              //   'Great Car Services',
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 40,
                              //   ),
                              // ),
                              const SizedBox(height: 20),
                              Center(
                                child: Wrap(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  alignment: WrapAlignment.spaceEvenly,
                                  runAlignment: WrapAlignment.spaceEvenly,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 0.1.sw,
                                  runSpacing: 0.1.sw,

                                  children: [
                                    for (var i = 0; i < 3; i++)
                                      Container(
                                        height: 0.45.sh,
                                        width: constants.isLaptop
                                            ? 0.20.sw
                                            : 0.8.sw,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17.0),
                                            color: Colors.white),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const SizedBox(height: 12),
                                              Text(
                                                i == 0
                                                    ? 'What is Auto Works?'
                                                    : i == 1
                                                        ? 'Our Services'
                                                        : 'Why AutoWorks?',
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(height: 12),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 0.03.sw,
                                                ),
                                                child: Text(
                                                  i == 0
                                                      ? "Auto Works Car Care Center is your trusted source for top-notch car care services. We specialize in paint protection film (PPF) installations and detailing to keep your vehicle looking its best. With a passion for perfection and a commitment to customer satisfaction, we're your go-to destination for automotive excellence."
                                                      : i == 1
                                                          ? "AutoWorks Car Care Center offers a comprehensive range of services to maintain and enhance your vehicle. From PPF installations to professional detailing, we provide expert solutions to protect and rejuvenate your car's appearance. Choose AutoWorks for quality car care."
                                                          : "Choose AutoWorks Car Care Center for a team that's passionate about cars, dedicated to detail, and committed to excellence. We use cutting-edge technology and top-tier products to ensure exceptional results. When you want the best in car care, Auto Works is the place to go.",
                                                  style: const TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    // wordSpacing: 5,
                                                  ),
                                                  textAlign: TextAlign.center,
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
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (constants.isLaptop)
                Transform.translate(
                  offset: Offset(0, 0.7.sh),
                  child: Center(
                    child: Wrap(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          height: 0.20.sh,
                          width: constants.isLaptop ? 0.20.sw : 0.20.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.0),
                            color: Colors.white.withOpacity(0.9),
                          ),
                          child: Center(
                            child: ListTile(
                              leading: Image.asset('assets/images/timer.png'),
                              title: const Text(
                                'We are Open Sat To Thur',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              subtitle: const Text(
                                '9:30 AM - 01:30 PM / 3:30 PM - 09:30 PM',
                                style: TextStyle(
                                    color: AppColors.red, fontSize: 12),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              subtitle: const Text(
                                '+974 3335 2772\n+974 3352 7555\n+974 4486 7214',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
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
                              onTap: () {
                                launchUrl(Uri.parse(
                                    "https://maps.app.goo.gl/MXKH9kNQ1HRPLiXz9"));
                              },
                              leading:
                                  Image.asset('assets/images/location.png'),
                              title: const Text(
                                'Location',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              subtitle: const Text(
                                'Abu Hamour , Doha',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
          Container(
            height: constants.isLaptop ? 0.35.sh : 0.7.sh,
            width: 1.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.black,
            ),
            // padding: EdgeInsets.symmetric(vertical: 0.1.sh),
            child: Center(
              child: Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                alignment: WrapAlignment.spaceEvenly,
                runAlignment: WrapAlignment.spaceEvenly,
                runSpacing: !constants.isLaptop ? 0.07.sh : 10,
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
                    width: constants.isLaptop ? 0.15.sw : 0.8.sw,
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
                    width: constants.isLaptop ? 0.16.sw : 0.8.sw,
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
                  SizedBox(
                    width: constants.isLaptop ? null : 0.8.sw,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 2,
                        ),
                        child: DropdownButton(
                          value: selectedService,
                          style: const TextStyle(color: Colors.black),
                          dropdownColor: Colors.white,
                          underline: const SizedBox(),
                          iconEnabledColor: Colors.black,
                          isExpanded: !constants.isLaptop,
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
                  ),
                  SizedBox(
                    // width: 0.15.sw,
                    height: 50,
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: constants.isLaptop ? 0.08.sw : 0.8.sw,
                          // height: 50,
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
            height: 0.6.sh,
            width: 1.sw,
            decoration: const BoxDecoration(color: Colors.black),
            child: SingleChildScrollView(
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
                      SizedBox(
                        height: 0.35.sh,
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
                                        borderRadius:
                                            BorderRadius.circular(10.0),
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
                                  "Coming Soon",
                                  style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
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
          if (constants.isLaptop)
            Container(
              height: 0.12.sh,
              width: 0.60.sw,
              margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
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
          Footer(
            onClick: (p0) {
              widget.onClick.call(p0);
            },
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.onClick,
  });

  final void Function(String) onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constants.isLaptop ? 0.50.sh : 0.6.sh,
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.black,
      ),
      child: Wrap(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.start,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 30,
        children: [
          SizedBox(
            width: constants.isLaptop ? 0.2.sw : 0.8.sw,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: constants.isLaptop
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                const Text(
                  'Let us connect',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: constants.isLaptop ? 0.2.sw : 0.8.sw,
                  child: const Text(
                    'Explore the extraordinary! Join our vibrant online community for daily inspiration, engaging conversations, and exclusive updates. Connect with like-minded individuals who share your passion. Elevate your online experience with us! ',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: constants.isLaptop
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesome5.instagram,
                      color: Colors.white,
                    ),
                    SizedBox(width: 12),
                    // Icon(
                    //   FontAwesome5.youtube,
                    //   color: Colors.white,
                    // ),
                    // SizedBox(
                    //   width: 12,
                    // ),
                    Icon(
                      FontAwesome5.snapchat,
                      color: Colors.white,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      FontAwesome5.facebook,
                      color: Colors.white,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      FontAwesome5.linkedin,
                      color: Colors.white,
                    ),
                    // Icon(
                    //   FontAwesome5.twitter,
                    //   color: Colors.white,
                    // ),
                  ],
                )
              ],
            ),
          ),
          if (constants.isLaptop)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Company Links',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                for (var i = 0; i < constants.header.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: InkWell(
                      onTap: () {
                        onClick.call(constants.header[i]);
                      },
                      child: Text(
                        constants.header[i],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          SizedBox(
            width: constants.isLaptop ? 0.15.sw : 0.6.sw,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Contact Info',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: constants.isLaptop ? 20 : 30),
                const Row(
                  children: [
                    Icon(
                      Entypo.phone,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      '+974 3335 2772\n+974 3352 7555\n+974 4486 7214',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
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
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    launchUrl(
                        Uri.parse("https://maps.app.goo.gl/MXKH9kNQ1HRPLiXz9"));
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Octicons.location,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Abu Hamour , Doha',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
