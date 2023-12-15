import '../../../all_packages.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.4.sw,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Image.asset(
              'assets/images/logo.png',
              height: 60,
            ),
            const SizedBox(height: 30),
            for (var i = 0; i < constants.header.length; i++)
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  constants.header[i],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            // const SizedBox(width: 150),
          ],
        ),
      ),
    );
  }
}
