
# 📄 **Invoicely**

### A modern **invoice management application** built with **Flutter**, following **Clean Architecture** principles.

Invoicely helps businesses and freelancers **manage invoices, clients, and payments efficiently** with **offline support** and **real-time API integration**.

---

# ✨ **Features**

✔️ **Create, update, and delete invoices**
✔️ **Manage client information**
✔️ **Apply discounts, taxes, and multiple currencies**
✔️ **Offline caching with Hive for better performance**
✔️ **Search and filter invoices by client, date, or invoice number**
✔️ **Sync with remote API for real-time updates**
✔️ **Follows Clean Architecture** (Domain, Data, Presentation layers)
✔️ **Supports Bloc for state management**

---

# 📂 **Project Structure**

```
lib/
│
├── core/               # Core utilities, constants, and shared resources
├── features/
│   ├── invoice/
│   │   ├── domain/
│   │   │   ├── entities/      # Domain entities
│   │   │   ├── repositories/  # Abstract repositories
│   │   │   └── usecases/      # Business logic
│   │   ├── data/
│   │   │   ├── models/        # API models (Request & Response)
│   │   │   ├── datasources/   # API & Local data sources
│   │   │   └── repositories/  # Repository implementation
│   │   └── presentation/
│   │       ├── bloc/          # State management with Bloc
│   │       └── screens/       # UI screens
│   └── client/
│       └── ... (similar structure)
└── main.dart
```

---

# 🛠 **Tech Stack**

* **Flutter** (UI Framework)
* **Dart** (Language)
* **Bloc** (State Management)
* **Hive** (Offline Storage)
* **Dio** (Networking)
* **Clean Architecture**
* **Functional Error Handling** with `Either`

---

# 📦 **Installation**

### 1️⃣ Clone the repository

```bash
git clone https://github.com/your-username/invoicely.git
cd invoicely
```

### 2️⃣ Install dependencies

```bash
flutter pub get
```

### 3️⃣ Run the app

```bash
flutter run
```

---

# 🔑 **Environment Setup**

Create a `.env` file for API configuration (or use `flutter_dotenv`):

```
API_BASE_URL=https://api.yourdomain.com
```

---

# 🔄 **Data Flow**

```
UI (Bloc) → UseCase → Repository → DataSource → API / Cache → Repository → UseCase → UI
```

---

# 📱 **Screenshots**

*(Add some cool screenshots or GIFs here)*

---

# 🚀 **Roadmap**

* [ ] Add **PDF generation** for invoices
* [ ] Add **authentication & user profiles**
* [ ] Add **multi-language support**
* [ ] Add **dark mode**

---

# 🤝 **Contributing**

Contributions are welcome!
Please **fork this repository** and submit a **pull request**.

---

# 📄 **License**

This project is licensed under the **MIT License**.

---

✅ This version looks **professional, clean, and GitHub-friendly** with emoji, headings, and spacing.

👉 Do you want me to **add a Clean Architecture diagram (image)** and **sample code snippets (like InvoiceEntity, mapper)** in the README for extra clarity? Or keep it minimal and clean like this?
