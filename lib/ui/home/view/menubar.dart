import '../../../all_packages.dart';

class MenuBar extends StatelessWidget {
  final void Function(String) onHover;
  const MenuBar({
    super.key,
    required this.onHover,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        children: [
          const Spacer(),
          Image.asset(
            'assets/images/logo.png',
            height: 60,
          ),
          SizedBox(
            height: 100,
            width: 0.8.sw,
            // color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < constants.header.length; i++)
                  MouseRegion(
                    onEnter: (event) async {
                      onHover.call("");
                      await Future.delayed(const Duration(milliseconds: 10));
                      onHover.call(constants.header[i]);
                    },
                    // onExit: (event) {
                    //   onHover.call('');
                    // },
                    child: Padding(
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
                  ),
                const SizedBox(width: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
