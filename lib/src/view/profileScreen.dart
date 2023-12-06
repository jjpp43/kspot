import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kspot/src/shared/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/gear.svg',
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/user-circle.svg',
                      width: 56,
                      height: 56,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        'Username',
                        style: heading3Style,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'User Activity',
                      style: menuHeadingStyle,
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/bookmark-simple.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'Saved Spots',
                        style: menuBodyStyle,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/clock-counter-clockwise.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'Recent Spots',
                        style: bodyStyle,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/thumbs-up.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'Liked Photos',
                        style: bodyStyle,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Account Settings',
                      style: menuHeadingStyle,
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/bell.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'Notification',
                        style: bodyStyle,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/globe.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'Language',
                        style: bodyStyle,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'App',
                      style: menuHeadingStyle,
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/megaphone-simple.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'Announcement',
                        style: bodyStyle,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/pencil-simple-line.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'Feedback',
                        style: bodyStyle,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/sign-out.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'Sign Out',
                        style: bodyStyle,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
