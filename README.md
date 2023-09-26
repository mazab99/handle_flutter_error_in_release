# handel_flutter_error_in_release

### I'm sure you've seen this!

Do you know how to customize this error screen?


| Debug Mode                  | Release Mode                 |
| --------------------------- | ---------------------------- |
| ![Debug Mode](https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/44fd4c37-891c-4b20-9838-10a3eb69bb38) | ![Release Mode](https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/55c53f70-48e6-427f-b5a9-50d2e2c54c93) |








---

You have certainly come across this red screen while developing applications, and you should also know that in release mode it turns grey.

Can you imagine your users seeing this unfriendly screen?

**There is the solution for this, and I'll show you.**

---

### How to make

When an error occurs, the `ErrorWidget.builder` is called; and by default the behaviour is what we already know.

But we can customize this, returning a widget of our own.

```dart
return MaterialApp(
  title: 'Flutter Error Page',
  home: const MyHomePage(),
  builder: (context, widget) {
    ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
      return CustomError(errorDetails: errorDetails); // the custom widget
    };

    return widget ?? const SizedBox.shrink();
  },
);
```

Just return it in this callback.

And on it, you can do absolutely whatever you want (remember to consider the *constraints*, available space, e.g) - happen at the most unexpected moment. 😆

```dart
return const TestErrorExample(
  color: Colors.red,
  text: 'An error occurred',
);
```

---

### How will it be

| Expected              | Default Error               | Release Error               | Debug and/or Release with Custom Widget |
| --------------------------- | --------------------------- | --------------------------- | --------------------------------------- |
| <img src="https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/e514f942-540b-4602-b7b5-2cb3d1a20823" width="200" height="300"> | <img src="https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/5e384f72-8b12-4f4a-9690-23d1153acb9b" width="200" height="300"> | <img src="https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/b724c986-fc70-44cc-b597-4c6221674986" width="200" height="300"> | <img src="https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/5bf7b457-893d-49c9-991c-e74bd7c7a0ff" width="200" height="300"> |



--- 


> So, did you know this strategy?
>
> Star ⭐️ this project if you liked it, and share it! 🚀
