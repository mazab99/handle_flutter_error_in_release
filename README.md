# handel_flutter_error_in_release

### I'm sure you've seen this!

Do you know how to customize this error screen?

<div style="display: flex; justify-content: space-between;">
    <div style="text-align: center;">
        <img src="https://github.com/mazab99/handel_flutter_error_in_release/assets/108914401/7a42e0c2-7efb-4252-8aeb-ae80a5520a14" alt="Release Mode" width="45%">
        <p>Release Mode</p>
    </div>
    <div style="text-align: center;">
        <img src="https://github.com/mazab99/handel_flutter_error_in_release/assets/108914401/31ad13b7-8971-48ee-abfc-70c503f12d04" alt="Debug Mode" width="45%">
        <p>Debug Mode</p>
    </div>
</div>







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

Expected | Default Error | Release Error | Debug and/or Release with custom widget
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
 | <img src=".github/images/grid_2.png" width="420"> | <img src=".github/images/grid_3.png" width="420"> | 

--- 

> So, did you know this strategy?
>
> Star ⭐️ this project if you liked it, and share it! 🚀
