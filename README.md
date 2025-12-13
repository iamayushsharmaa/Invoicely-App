
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


# 🔄 **Data Flow**

```
UI (Bloc) → UseCase → Repository → DataSource → API / Cache → Repository → UseCase → UI
```

---

# 📱 **Screenshots**

*(Screenshot are coming soon)*

---

---

✅ This version looks **professional, clean, and GitHub-friendly** with emoji, headings, and spacing.

👉 Do you want me to **add a Clean Architecture diagram (image)** and **sample code snippets (like InvoiceEntity, mapper)** in the README for extra clarity? Or keep it minimal and clean like this?
