# Jisr Al-Seha (Bridge of Health) - Flutter App

**Jisr Al-Seha** is a Flutter-based mobile application that facilitates the donation of surplus medicines to those in need. It enables users to register, donate medications, and helps healthcare organizations or individuals access available medications safely and efficiently.

## 🧰 Tech Stack

This project follows best practices in Flutter development and leverages the following technologies:

- ✅ **Flutter**
- ✅ **Provider** for state management
- ✅ **Dio** for API communication
- ✅ **MVVM Architecture** (Model-View-ViewModel)
- ✅ **Singleton Pattern** for shared instances
- ✅ **SQLite** for local persistent storage
- ✅ **SharedPreferences** for lightweight key-value data storage

## 🚀 Features

- Add and manage medicine donations
- Upload medication details with expiration dates
- View available medications
- Local storage with SQLite for offline access
- User login/session saved using SharedPreferences
- Modular and maintainable architecture with MVVM

## 🏗️ Project Structure
lib/
├── core/ # Shared utilities (e.g., network, constants)
├── data/ # Data sources (remote & local)
├── models/ # Data models (Data)
├── view/ # UI screens
├── viewmodel/ # Business logic for each screen
├── services/ # API services using Dio
├── database/ # SQLite helper classes
└── main.dart


## 🔌 Getting Started

To run this project on your local machine:

```bash
git clone https://github.com/yourusername/jisr_al_seha.git
cd jisr_al_seha
flutter pub get
flutter run

