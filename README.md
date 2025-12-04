
# 📞 Sathi – Flutter Calling App

Sathi is a simple and modern Flutter-based audio/video calling application built using the **Zego UIKit Prebuilt Call** SDK.  
Users can enter a Call ID to instantly join a call, making the app lightweight, fast, and easy to use.

---

## 🚀 Features

- 🔐 Random user ID generation  
- 📞 Join calls using a unique **Call ID**  
- 🎥 High-quality video & voice calling with Zego  
- 🖼 Clean UI with logo-centered layout  
- 📱 Built with Flutter for cross-platform support  

---

## 🛠 Tech Stack

| Technology | Purpose |
|-----------|----------|
| **Flutter** | UI + business logic |
| **Dart** | Programming language |
| **Zego UIKit Prebuilt Call** | Video/voice calling |
| **Material Design Widgets** | UI components |

---

## 📂 Project Structure

```

lib/
│── main.dart
│── constant/
│     └── constants.dart
│── call_page.dart
└── join_call.dart

````

---

## 📦 Installation

### 1️⃣ Clone the repo
```sh
git clone https://github.com/aashikbasnet101/sathi.git
cd sathi
````

### 2️⃣ Install dependencies

```sh
flutter pub get
```

### 3️⃣ Add your Zego AppID & AppSign

Open `lib/constant/constants.dart` and update:

```dart
const int AppID = YOUR_APP_ID;
const String AppSign = "YOUR_APP_SIGN";
```

---

## ▶️ Running the App

### Android:

```sh
flutter run
```

### Release APK:

```sh
flutter build apk --release
```

### App Bundle (Play Store):

```sh
flutter build appbundle --release
```

---

## 🖼 UI Preview (Description)

* **Home Screen**: Logo centered, input field for Call ID, Join button
* **Call Page**: Zego UIKit interface with camera, mic,chat and switch controls

---

## 🧩 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  zego_uikit_prebuilt_call: ^4.22.1
```

---

## 📘 How it Works

1. User opens the app.
2. Random `userId` is generated.
3. User enters a **Call ID**.
4. User taps **Join**, starting the Zego call interface.

---

## 🔒 Permissions Required

* Camera
* Microphone
* Internet
* Foreground service (for call stability)

All handled by Zego automatically.

---

## 📄 License

Open-source. Modify and use for personal or commercial projects.

---

## 🙌 Credits

* Flutter
* Zego Cloud for calling functionality


