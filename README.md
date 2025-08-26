# Doctor App
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/Eng-Nader/Doctor-App)

Doctor App is a thoughtfully designed Flutter application UI for a medical services platform. It provides a clean, modern, and intuitive interface for patients to find doctors, schedule appointments, and communicate securely. This project serves as an excellent template and showcase for building user-centric health applications with Flutter.

## ✨ Key Features

- **User Authentication**: Simple and secure screens for user login and sign-up.
- **Home Dashboard**: A central hub to access different features like finding doctors and managing appointments.
- **Doctor Discovery**: Browse a list of available doctors, view their specialties, and check their ratings.
- **Symptom-Based Search**: Filter doctors based on symptoms like "Fever," "Snuffle," etc.
- **Appointment Scheduling**: An interface for viewing and managing upcoming appointments.
- **In-App Messaging**: A real-time chat feature for patients to communicate with doctors directly.
- **Profile & Settings**: A dedicated section for managing user profiles, notifications, privacy, and other settings.

## 🛠️ Technology Stack

- **Framework**: Flutter
- **Language**: Dart
- **UI Toolkit**: Material Design
- **Navigation**: `curved_navigation_bar` for a smooth, animated bottom navigation experience.

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

Ensure you have the Flutter SDK installed on your machine. For installation instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/Eng-Nader/Doctor-App.git
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd Doctor-App
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the application:**
    ```sh
    flutter run
    ```

## 📂 Project Structure

The project follows a feature-driven structure to keep the codebase organized and maintainable.

```
lib/
├── core/
│   └── utils/        # Core utilities like color constants and asset paths
├── models/           # Data models (e.g., SettingModel)
├── views/            # Main screens of the application
│   ├── home_view.dart
│   ├── login_view.dart
│   ├── chat_view.dart
│   ├── schulde_view.dart
│   └── setting_view.dart
└── widget/           # Reusable UI components used across different screens
    ├── custom_button.dart
    ├── custom_app_bar.dart
    ├── chatbuble.dart
    └── doctor_kind_grid_view.dart
