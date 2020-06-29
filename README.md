# meals_app

A new Flutter project.

## 1. Navigation

<image src="capture1.png" width="600"/>

## 2. Screen

- A screen is a normal widget but it's loaded such that it fills the entire (or the majority) of the device screen. Typically, it also controls the app bar etc.
- A widget which controls the entire screen (or at least makes up the main content of the screen)

## 3. onGenerateRoute() & onUnKnownRoute()

**onGenerateRoute** executes for any unregistered named route, **onUnKnownRoute** executes if onGenerateRoute isn't defined or doesn't return a valid navigation action.

## 4. pushNamed() vs pushReplacementNamed()
 - pushNamed() : add new page on top of stack
 - pushReplacementNamed() : replace the existing page on the stack with the new page
 - PushReplacement() replaces the current screen in the stack.

## 5. Future
 - javascript의 promise와 유사하다. 미래의 어느 시점에 사용하는 value를 표현하기 위해 사용한다.
 - http request에서 future는 비동기 작업의 결과를 나타내며 미완료(value를 생성하기 전) 또는 완료(value 생성)의 두 가지 상태를 가질 수 있다.

## 6. Summary
 - Navigation
    - "Screens" (or "Routes", "Pages") are just widgets!
    - The Flutter Navigator allows you to switch (push/pop/replace) between pages
    - You can use named routes or unnamed routes
 - Passing Data
    - Data can be passed between pages via arguments(directly or via 'arguments' key)
    - Data can be passed back, too (read via Future)
 - Tab
    - You can add tabs in the AppBar or at the bottom of the page
    - Tabs allow you to switch between different stacks(i.e. no popping)
 - Drawers & Dialogs
    - Drawers(side menus) also allow you to switch between different stacks
    - Drawer and other diaglos (e.g. alerts, modal bottom sheet) can be closed via Navigator.pop()

## 7. Useful Resources & Links
 - Official Navigation Docs: [https://flutter.dev/docs/development/ui/navigation](https://flutter.dev/docs/development/ui/navigation)
 - Named Routes + Arguments: [https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments](https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments)