# Flutter Watchlist Assignment

This project is a Flutter implementation of a stock watchlist screen with reorder functionality, inspired by a trading app UI.

The main goal of the assignment was to allow users to rearrange stocks in a watchlist using drag and drop, while maintaining clean architecture and good UI/UX.

---

## Features

- Display list of stocks with price and percentage change
- Drag and drop to reorder stocks
- Delete stock from watchlist
- Separate screen for editing watchlist
- Clean and responsive UI
- Reusable widgets (like custom button)
- State management using BLoC

---

## Approach

I started by setting up a basic folder structure following a layered approach (presentation, domain, data).

For state management, I used BLoC because it provides better separation between UI and business logic, and makes the app easier to scale.

The watchlist data is currently mocked.

For the reorder functionality, I used Flutter's `ReorderableListView` and handled index changes inside the BLoC to keep the UI layer clean.

---


##  Project Structure

lib/
├── core/
│ └── utils
│
├── features/
│ └── watchlist/
│ ├── data/
│ ├── domain/
  └── presentation/


---

## UI/UX Decisions

- Kept UI minimal and similar to real trading apps
- Added a bottom navigation bar for better app structure
- Created a reusable primary button for consistency
- Used color coding (green/red) for stock changes

---


I tried to keep the code clean and readable, and focused on separating UI from business logic as much as possible.
