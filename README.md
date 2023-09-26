# handel_flutter_error_in_release

### I'm sure you've seen this!

Do you know how to customize this error screen?


| Release Mode![mode_debug](https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/44fd4c37-891c-4b20-9838-10a3eb69bb38)
                 | Debug Mode                   |
![mode_release](https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/55c53f70-48e6-427f-b5a9-50d2e2c54c93)








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
return const MyAppCard(
  color: Colors.red,
  text: 'An error occurred',
);
```

---

### How will it be

| Expected               | Default Error               | Release Error               | Debug and/or Release with Custom Widget |
| --------------------------- | --------------------------- | --------------------------- | --------------------------------------- |![Screenshot_1695721873](https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/682f0b25-2e8f-48d4-8b52-c0919c1eb7ea)
![mode_release](https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/3f3511cd-73cf-47cc-a7a3-0b14fde7dd88)

| <img src="https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/b0f8458b-8e61-49be-a993-4938c21![mode_debug]![Screenshot_1695721815](https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/f866322e-d765-4c84-ae4f-dfe090fcc011)
(https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/b103bffb-a4c5-4585-8643-88f5eddd0fea)
0b079" width="200"> | <img src="https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/22d248d5-f684-4646-94ca-3e626f8fd018" width="200"> | <img src="https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/0876912d-6ec9-4615-98e0-46ac76d76b32" width="200"> | <img src="https://github.com/mazab99/handle_flutter_error_in_release/assets/108914401/b28b2444-c609-4cc6-92d6-565f4f72a1fa" width="200"> |



--- 


> So, did you know this strategy?
>
> Star ⭐️ this project if you liked it, and share it! 🚀
