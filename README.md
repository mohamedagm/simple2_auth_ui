# 🚀 Arabic Login UI – Flutter App

This Flutter project features a full Arabic login interface with RTL layout, custom UI, and elegant styling. Designed from scratch to match the provided design exactly, including icon alignment, font size, spacing, and color scheme.

## ✨ Features

- 📱 RTL Arabic layout with right-aligned text and icons
- 🎨 Custom `TextFormField` widget with prefix/suffix icons
- 🔒 Password field with visibility toggle
- 🖼 Splash screen with image and button
- 🔑 Login screen with email & password fields
- ✅ Fully responsive using `MediaQuery`
- 📐 Accurate sizing and alignment (per pixel matching)
- 👨‍💻 Clean, readable Dart code using stateless and custom widgets

## 📂 Structure

```
lib/
 ├── main.dart               # Contains all screens and UI
 └── custom_text_field.dart  # Reusable styled TextFormField
assets/
 └── images/
     ├── 1.png               # Splash Image
     ├── login.png           # Screenshot of login screen
     └── otp.png             # (Optional) OTP placeholder
```

## 🧪 How to Run

```bash
git clone https://github.com/your-username/flutter-arabic-login-ui.git
cd flutter-arabic-login-ui
flutter pub get
flutter run
```

## 📸 Screenshots

| Splash Screen | Login Screen | OTP Screen |
|---------------|--------------|------------|
| <img width="389" height="853" alt="image" src="https://github.com/user-attachments/assets/352f1e59-dd58-4aec-aa93-22d7e67eb877" />|<img width="394" height="841" alt="image" src="https://github.com/user-attachments/assets/c1f59c8a-0802-4779-8702-7232d71cc4e8" />|<img width="391" height="825" alt="image" src="https://github.com/user-attachments/assets/285a76f4-4357-4015-a5ce-79d54830536c" />|

## 🔧 Widgets Used

- `TextFormField`, `Icon`, `IconButton`
- `ElevatedButton` with custom style
- `MediaQuery` for responsive layout
- `Stack`, `Align`, `Positioned` for layered splash screen
- `TextDirection.rtl` and `textAlign: TextAlign.right` for Arabic layout

## 📌 Note

All UI is currently in one file (`main.dart`) for quick prototyping. You can later refactor to multiple widgets as needed.

---

```dart
💡 Built with ❤️ using Flutter by Mohamed Ahmed
```
