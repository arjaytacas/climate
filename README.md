# 🌦️ Climate App

A sleek Flutter-based weather application that fetches real-time weather data using the OpenWeatherMap API. It displays current temperature, weather conditions, and a friendly message based on your location or a city you search for.

---

## 📱 Features

```
🌍 Location-based weather: Automatically fetches weather data based on the user's current location.
🏙️ City search: Allows users to search for weather in any city.
🌡️ Temperature display: Shows temperature in Celsius with weather icons.
💬 Contextual messages: Suggests clothing or activities based on the weather.
🎨 Stylized UI: Background image with semi-transparent overlay for readability.
```
---
## 🛠️ Project Structure
```plaintext
lib/
├── main.dart                  # Entry point of the app
├── screens/
│   ├── loadingscreen.dart     # Fetches location and weather data
│   ├── locationscreen.dart    # Displays weather info and UI
│   └── cityscreen.dart        # (Assumed) Allows city name input
├── services/
│   ├── location.dart          # Handles location permissions and coordinates
│   ├── networking.dart        # Fetches data from OpenWeatherMap
│   └── weather.dart           # Maps weather conditions to icons/messages
└── utilities/
└── contants.dart          # Contains styling constants and API key
```

---

## 🚀 Getting Started
Prerequisites
-Flutter SDK installed
-API key from OpenWeatherMap

Installation
1. Clone the repository:
```bash
git clone https://github.com/yourusername/climate_app.git
cd climate_app
```
2. Add your OpenWeatherMap API key to contants.dart:
```dart
const String kAPIKey = 'YOUR_API_KEY_HERE';
```
3. Run the app:
```bash
flutter run
```

---

## 📸 Sample UI
The app displays weather like:
```
25°C ☁️ Time for shorts and a t-shirt in Taytay!
```

With a scenic background image and intuitive buttons for location refresh and city search.

---

## 📦 Dependencies

- flutter
- http
- geolocator
- flutter_spinkit (optional for loading animations)

---

## 🧠 Logic Overview
- LoadingScreen: Requests location, fetches weather, navigates to LocationScreen.
- LocationScreen: Displays weather data, allows refresh or city search.
- WeatherModel: Maps weather condition codes to emojis and messages.
- NetworkHelper: Handles API requests.
- Location: Manages geolocation and permissions.

---

## 📄 License
MIT License. Feel free to use and modify.
