import 'package:flutter/material.dart';
import 'package:isar_example/utils/app_icon.dart';

class CustomBottomAppBar extends StatefulWidget {
  final List<String> navItems;
  final double? iconSize;
  final double? bottomAppBarHeight;
  final Color? bottomAppBarColor;
  final double? indicatorDimension;
  final Color? indicatorColor;
  final double? borderRadius;
  final double? elevation;
  final Color? shadowColor;

  const CustomBottomAppBar({
    super.key,
    required this.navItems,
    this.bottomAppBarHeight = 60,
    this.bottomAppBarColor = Colors.white,
    this.indicatorDimension = 40,
    this.indicatorColor = Colors.black,
    this.borderRadius = 6,
    this.elevation = 6,
    this.shadowColor = Colors.grey,
  }) : iconSize = 24.0;

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late AnimationController _controller;
  late Animation<double> _xPos;
  late Animation<double> _yPos;
  late Animation<Color?> _color;
  late final List<GlobalKey> _navKeys;

  RenderBox? renderBox;
  @override
  void initState() {
    _navKeys = List.generate(widget.navItems.length, (index) {
      return GlobalKey();
    });
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _yPos = Tween<double>(
            begin: -(widget.indicatorDimension)!,
            end: (widget.bottomAppBarHeight! / 2) -
                (widget.indicatorDimension! / 2))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));
    _xPos = Tween<double>(
            begin: 45 - (widget.iconSize! / 3),
            end: 45 - (widget.iconSize! / 3))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));
    _color =
        ColorTween(begin: const Color(0xff000000), end: const Color(0xffffffff))
            .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      renderBox = _navKeys[_currentIndex].currentContext?.findRenderObject()
          as RenderBox;
      if (renderBox?.hasSize != null) {
        print(renderBox?.size.toString());
      }
    });
    _controller.forward();
  }

  void move(int index) {
    if (index == _currentIndex) {
      return;
    } else {
      setState(() {
        _currentIndex = index;
      });

      renderBox =
          _navKeys[index].currentContext?.findRenderObject() as RenderBox?;

      final navItemPos = ((renderBox?.localToGlobal(Offset.zero))!.dx) -
          (renderBox!.size.width / 3);

      _yPos = Tween<double>(begin: _yPos.value, end: _yPos.value)
          .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));
      _xPos = Tween<double>(begin: _xPos.value, end: navItemPos)
          .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));

      _controller.forward(from: 0.0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.bottomAppBarHeight,
      child: ColoredBox(
        color: widget.bottomAppBarColor!,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Stack(
              alignment: Alignment.center,
              children: [
                //Indicator
                Positioned(
                  left: _xPos.value,
                  bottom: _yPos.value,
                  child: Material(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(widget.borderRadius!),
                    elevation: widget.elevation!,
                    shadowColor: widget.shadowColor,
                    child: SizedBox.square(
                      dimension: widget.indicatorDimension,
                      child: ColoredBox(color: widget.indicatorColor!),
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  right: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      widget.navItems.length,
                      (index) {
                        return SizedBox(
                          child: GestureDetector(
                            onTap: () {
                              move(index);
                            },
                            child: AppIcon(
                              key: _navKeys[index],
                              widget.navItems[index],
                              color: index == _currentIndex
                                  ? _color.value
                                  : Colors.black,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
