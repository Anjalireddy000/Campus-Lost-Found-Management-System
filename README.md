# 🎓 Campus Lost & Found Management System

## 📌 Project Overview

The **Campus Lost & Found Management System** is a Flutter-based application developed to help students manage lost and found belongings within a college campus.

Students often lose personal belongings such as ID cards, notebooks, water bottles, wallets, keys, and other essential items inside the campus. Finding these belongings can be difficult because there is no common platform to report or search for them.

To solve this problem, this application provides a centralized and user-friendly platform where students can view lost and found items, report missing or found belongings, search for items, and view item details.

The main goal of this project is to make the lost and found process easier, faster, and more organized within the college environment.

## 🎯 Project Objectives

- Provide a common platform for lost and found items.
- Help students report lost and found belongings.
- Make item searching easier through search and category filtering.
- Display item information through a dedicated details page.
- Provide a simple interface for managing reports.
- Improve awareness and communication about lost belongings on campus.

## ✨ Features

### 1. Home Dashboard
- Provides a simple and attractive application interface.
- Displays the main application sections.
- Provides navigation to different features.

### 2. Lost Items
- Displays a list of sample lost items.
- Allows users to view available item information.
- Provides access to individual item details.

### 3. Found Items
- Displays a list of sample found items.
- Helps users identify belongings that have been found.
- Allows users to open item details.

### 4. Report Lost Item
- Allows users to enter the name of a lost item.
- Select an item category.
- Add item description and location.
- Select the date.
- Validates the required information before submission.

### 5. Report Found Item
- Allows users to submit information about found belongings.
- Includes item name, category, description, location, and date.

### 6. Search Functionality
- Search for items using their names.
- Displays matching results.
- Shows a message when no matching items are found.

### 7. Category Filtering
- Filter items according to categories.
- Available categories include Electronics, ID Cards, Books, Bags, and Other.

### 8. Item Details Page
- Displays the selected item's name and type.
- Shows location and description information.
- Provides a Claim Item option.

### 9. Claim Item
- Provides a Claim Item button on the details page.
- Displays a confirmation dialog when the button is clicked.

### 10. My Reports
- Displays sample lost and found reports.
- Shows item type and report status.
- Helps users view report information in one place.

### 11. About & Help
- Provides information about the application.
- Explains how to use the main features.
- Displays application version information.

## 🔄 Application Workflow

1. Open the application and view the Home Dashboard.
2. Select Lost Items or Found Items to browse available sample items.
3. Use Search and Category Filtering to find specific items.
4. Select an item to view its details.
5. Use the Claim Item button to view the demo confirmation.
6. Use Report Lost Item or Report Found Item to enter item information.
7. Visit My Reports to view sample reports.
8. Open About & Help to understand the application.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Flutter | Application development framework |
| Dart | Programming language |
| Visual Studio Code | Development environment |
| Git | Version control |
| GitHub | Source code hosting |

## 📸 Application Screenshots

The `screenshots` folder contains eight screenshots demonstrating the application's interface and features.

## 📂 Project Structure

```text
campus_lost_found/
│
├── lib/
│   ├── main.dart
│   ├── items_page.dart
│   ├── item_details_page.dart
│   ├── report_item_page.dart
│   ├── my_reports_page.dart
│   └── about_help_page.dart
│
├── screenshots/
│   └── Application output images
│
├── test/
├── web/
├── pubspec.yaml
└── README.md
```

## ▶️ How to Run the Project

**Step 1:** Install Flutter SDK and Visual Studio Code.

**Step 2:** Clone the repository.

```bash
git clone https://github.com/Anjalireddy000/Campus-Lost-Found-Management-System.git
```

**Step 3:** Open the project directory.

```bash
cd Campus-Lost-Found-Management-System
```

**Step 4:** Install dependencies.

```bash
flutter pub get
```

**Step 5:** Run the application in Chrome.

```bash
flutter run -d chrome
```

## 🚀 Future Enhancements

- User registration and login.
- Database integration for storing reports.
- Real-time updates for lost and found items.
- Image uploads for reported belongings.
- Notifications when matching items are found.
- Real claim request management.
- Admin dashboard for managing reports.

## ⚠️ Project Scope

This version is a frontend demonstration developed using Flutter and Dart. It uses sample item lists and sample reports. Form submissions and claim confirmations demonstrate the user interface but are not stored in a backend database.

## 👩‍💻 Developer

Developed as a college academic project.

## 📄 License

This project is intended for educational purposes.