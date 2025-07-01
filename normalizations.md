# 📊 Database Normalization Analysis for Airbnb Schema

## 🎯 Objective

To review and normalize the Airbnb database schema and ensure it meets the standards of Third Normal Form (3NF).

---

## ✅ Step 1: First Normal Form (1NF)

- Each table has a primary key.
- All attributes are atomic (no multivalued fields or arrays).
- ✔️ **Result: Satisfied**

---

## ✅ Step 2: Second Normal Form (2NF)

- Schema is in 1NF.
- All non-key attributes are fully dependent on the primary key (no partial dependency).
- All tables use UUIDs as single-attribute primary keys.
- ✔️ **Result: Satisfied**

---

## ✅ Step 3: Third Normal Form (3NF)

- Schema is in 2NF.
- No transitive dependencies (non-key attributes depending on non-key attributes).
- No derived fields cause violations; calculated fields like `total_price` are intentionally denormalized for performance.
- ✔️ **Result: Satisfied**

---

## 🔄 Suggested Improvements (Optional)

| Field            | Suggested Table           | Benefit                           |
| ---------------- | ------------------------- | --------------------------------- |
| `User.role`      | `Role(role_id, name)`     | Easier to manage and extend roles |
| `Booking.status` | `BookingStatus(id, name)` | Easier status customization       |
| `Payment.method` | `PaymentMethod(id, name)` | Cleaner handling of payment types |

These lookup tables help:

- Reduce hardcoding.
- Enable more robust foreign key constraints.
- Make changes without altering table schemas.

---

## 🏁 Conclusion

The current Airbnb schema **satisfies 3NF**. With optional normalization enhancements (ENUMs → lookup tables), it can be made even more scalable and maintainable.
