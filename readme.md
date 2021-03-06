# syphon

A privacy centric matrix client
 
![license](https://img.shields.io/github/license/syphon-org/syphon?)
![release date](https://img.shields.io/github/v/release/syphon-org/syphon?include_prereleases)
<!-- ![alpha downloads](https://img.shields.io/github/downloads/syphon-org/syphon/v0.0.13-alpha/total) -->

<a href='https://play.google.com/store/apps/details?id=org.tether.tether'><img  height="80px" style="max-width:100%;" alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' /></a>
> iOS will be in review shortly, and desktop builds coming soon
 
![Login Screenshot](assets/screenshots/01-android-tiny.png) 
![End To End Chat Screenshot](assets/screenshots/03-android-tiny.png) 
![Expanded Home Screenshot](assets/screenshots/05-android-tiny.png)


## why

Syphon aims to be built on the foundations of privacy, branding, and user experience in an effort to pull others away from proprietary chat and messenger clients to  standard.

We need to decentralize the web, but also provide a means of freedom within that system. Matrix has the potential, and in several ways already is, a peer-to-peer chat protocol that will allow people to communicate and transfer their data at will. Most popular proprietary chat clients do not adhere to a publically available protocol. If the goal for this protocol is adoption to instant messaging communication the way of email, and a network effect is required for this paradigm shift, then **branding and user experience** should be the number one priority outside the implicit one of privacy and security. I hope that contributing and maintaining Syphon will help kick start this process and help those in need.

Syphon will always be a not for profit, community driven application.


## main long term goals
- [ ] peer-to-peer messaging through a locally run server on the client
- [ ] allow transfering data from one homeserver to another, or from local to remote servers
- [ ] desktop clients meet parity with mobile
- [ ] cli client using ncurses and the same redux store contained here (common)

## getting started
You may notice Syphon does not look very dart-y (for example, no \_private variable declarations, or using redux instead of provider) in an effort to reduce the learning curve from other languages or platforms. The faster we can get people contributing, the easier it will be to create and maintain tools to pivot others from products that exploit the user.

### state management
- [Redux Tutorial](https://www.netguru.com/codestories/-implement-redux-with-flutter-app)
- [Redux Examples](https://github.com/brianegan/flutter_architecture_samples/blob/master/firestore_redux/)

### storage
There are three layers to storage in Syphon:
- State (Redux + Redux Persist +  Hive)
    * state cache is encrypted at rest
- Cold Storage (Hive)

### native notifications (android only)
- utitlizes [android_alarm_manager](https://pub.dev/packages?q=background_alarm_manager) on Android to run the matrix /sync requests in a background thread and display notifications with [flutter_local_notifications](https://pub.dev/packages/flutter_local_notifications)
- no third party notification provider will ever be used

### assets
- [paid icon](https://thenounproject.com/search/?q=polygon&i=2596282)
- [iOS icons](https://github.com/smallmuou/ios-icon-generator)

### helpful references
- [iOS file management flutter](https://stackoverflow.com/questions/55220612/how-to-save-a-text-file-in-external-storage-in-ios-using-flutter)
- [scrolling With Text Inputs](https://github.com/flutter/flutter/issues/13339)
- [multi-line text field](https://stackoverflow.com/questions/45900387/multi-line-textfield-in-flutter)
- [keyboard dismissal](https://stackoverflow.com/questions/55863766/how-to-prevent-keyboard-from-dismissing-on-pressing-submit-key-in-flutter)
- [changing transition styles](https://stackoverflow.com/questions/50196913/how-to-change-navigation-animation-using-flutter)


## contributing
- email contact@syphon.org if you'd like to get involved. there's a lot to do.
- donations are welcome, but won't play any role in me continuing to work on this for as long as I'm able. Syphon will always be a not for profit, community driven application not owned or sold by a corporation.

## from those who made it possible
lub youu
