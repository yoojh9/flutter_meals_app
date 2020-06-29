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