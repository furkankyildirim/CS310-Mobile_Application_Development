import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabanci_talks/bottom_bar/view/bottom_bar_view.dart';
import 'package:sabanci_talks/home/view/comment_view.dart';
import 'package:sabanci_talks/home/view/home_view.dart';
import 'package:sabanci_talks/home/view/likes_view.dart';
import 'package:sabanci_talks/navigation/navigation_animation.dart';
import 'package:sabanci_talks/navigation/navigation_constants.dart';
import 'package:sabanci_talks/post/view/single_post.dart';
import 'package:sabanci_talks/settings/view/settings_view.dart';
import 'package:sabanci_talks/sign_in/view/forget_password_view.dart';
import 'package:sabanci_talks/sign_in/view/reset_password_view.dart';
import 'package:sabanci_talks/welcome/view/goodby_view.dart';
import 'package:sabanci_talks/welcome/view/welcome_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.HOME:
        return cupertinoNavigate(const HomeView(), NavigationConstants.HOME);
      case NavigationConstants.SETTINGS:
        return cupertinoNavigate(
            const Settings(), NavigationConstants.SETTINGS);
      case NavigationConstants.WELCOME:
        return rightToLeftNavigate(
            const Welcome(), NavigationConstants.WELCOME);
      case NavigationConstants.DELETE:
        return rightToLeftNavigate(
            const DeleteAccount(), NavigationConstants.DELETE);
      case NavigationConstants.SINGLE_POST:
        return cupertinoNavigate(
            const SinglePost(), NavigationConstants.SINGLE_POST);
      case NavigationConstants.BOTTOM_BAR:
        return cupertinoNavigate(
            const BottomBarView(), NavigationConstants.BOTTOM_BAR);
      case NavigationConstants.FORGET_PASS:
        return cupertinoNavigate(
            const ForgetPass(), NavigationConstants.FORGET_PASS);
      case NavigationConstants.RESET_PASS:
        return cupertinoNavigate(
            const ResetPass(), NavigationConstants.RESET_PASS);
      case NavigationConstants.LIKES:
        return cupertinoNavigate(const Likes(), NavigationConstants.LIKES);
      case NavigationConstants.COMMENTS:
        return cupertinoNavigate(
            const Comments(), NavigationConstants.COMMENTS);
      default:
        return defaultNavigate(
            const BottomBarView(), NavigationConstants.DEFAULT);
    }
  }

  MaterialPageRoute defaultNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }

  CupertinoPageRoute cupertinoNavigate(Widget widget, String pageName) {
    return CupertinoPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }

  FadeRouteInstant cupertinoNavigateInstant(Widget widget, String pageName) {
    return FadeRouteInstant(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }

  MaterialPageRoute leftToRightNavigate(Widget widget, String pageName) {
    return LeftToRight(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }

  MaterialPageRoute rightToLeftNavigate(Widget widget, String pageName) {
    return RightToLeft(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }

  CupertinoPageRoute bottomToTopNavigate(Widget widget, String pageName) {
    return CupertinoPageRoute(
      fullscreenDialog: true,
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }

  MaterialPageRoute fadeRouteNavigateInstant(Widget widget, String pageName) {
    return FadeRouteInstant(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }

  MaterialPageRoute fadeRouteNavigateDelay(Widget widget, String pageName) {
    return FadeRouteWithDelay(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }

  HeroDialogRoute heroDialogNavigateRoute(Widget widget, String pageName) {
    return HeroDialogRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }
}