import '../../../all_packages.dart';

class OurTeamPage extends StatefulWidget {
  const OurTeamPage({super.key});

  @override
  State<OurTeamPage> createState() => _OurTeamPageState();
}

class _OurTeamPageState extends State<OurTeamPage> {
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
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            // const SizedBox(height: 100),
            const Text(
              "Our Team",
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),
            ),
            Wrap(
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
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
