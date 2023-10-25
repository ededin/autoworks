import '../../../all_packages.dart';

class MenuBar extends StatelessWidget {
  final void Function(String) onHover;
  const MenuBar({
    super.key,
    required this.onHover,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 60,
              color: Colors.black,
            ),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              image: const DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 60,
            width: 0.8.sw,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < constants.header.length; i++)
                  MouseRegion(
                    onEnter: (event) {
                      print('EVENT: ${event}');
                      onHover.call(constants.header[i]);
                    },
                    onExit: (event) {
                      onHover.call('');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        constants.header[i],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
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
        ],
      ),
    );
  }
}
