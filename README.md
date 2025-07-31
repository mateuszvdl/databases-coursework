# Medical Records Database Schema

This repository contains the SQL schema for a relational database designed to manage medical records for a healthcare facility.

---

## Database Structure

The schema defines a set of interconnected tables to store and manage various types of medical information. The key tables include:

-   **`Patients`**: Stores personal information about each patient.
-   **`Doctors`**: Contains details about the medical staff.
-   **`Appointments`**: Tracks scheduled appointments between patients and doctors.
-   **`Prescriptions`**: Manages medication prescriptions.
-   **`Diagnoses`**: Records medical diagnoses for patients.
-   **`MedicalRecords`**: A central table for detailed medical notes and history.
-   **`Departments`**, **`Nurses`**, **`Medications`**: Additional tables to support the overall structure.

Relationships between tables are established using foreign keys to ensure data integrity.

---

## How to Use

This `medical_db_schema.sql` file can be used to create the database structure in any SQL-compatible database system (like MySQL, PostgreSQL, or SQLite).

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your-username/databases-coursework.git](https://github.com/your-username/databases-coursework.git)
    cd databases-coursework
    ```
    *(Replace `your-username` with your actual GitHub username).*

2.  **Create the database:**
    Using your preferred database management tool, create a new database. Then, execute the contents of the `medical_db_schema.sql` file to create all the tables and their relationships.

    **Example with SQLite:**
    ```bash
    # Create a new database file and run the schema
    sqlite3 medical_records.db < medical_db_schema.sql
    ```

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Author

Developed by **mateuszvdl**  
Contributions, feedback, and pull requests are welcome!
