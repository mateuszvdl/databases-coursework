CREATE TABLE `Patients` (
  `patient_id` int PRIMARY KEY,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `gender` enum,
  `date_of_birth` date,
  `address` varchar(255)
);

CREATE TABLE `Doctors` (
  `doctor_id` int PRIMARY KEY,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `specialization` varchar(255)
);

CREATE TABLE `Appointments` (
  `appointment_id` int PRIMARY KEY,
  `patient_id` int,
  `doctor_id` int,
  `appointment_date` datetime,
  `reason_for_visit` varchar(255)
);

CREATE TABLE `Prescriptions` (
  `prescription_id` int PRIMARY KEY,
  `patient_id` int,
  `doctor_id` int,
  `prescription_date` date,
  `medication_name` varchar(255),
  `dosage` varchar(255)
);

CREATE TABLE `Diagnoses` (
  `diagnosis_id` int PRIMARY KEY,
  `patient_id` int,
  `doctor_id` int,
  `diagnosis_date` date,
  `diagnosis_description` text
);

CREATE TABLE `Departments` (
  `department_id` int PRIMARY KEY,
  `department_name` varchar(255)
);

CREATE TABLE `Nurses` (
  `nurse_id` int PRIMARY KEY,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `department_id` int
);

CREATE TABLE `MedicalRecords` (
  `medical_record_id` int PRIMARY KEY,
  `patient_id` int,
  `doctor_id` int,
  `nurse_id` int,
  `entry_date` datetime,
  `medical_notes` text
);

CREATE TABLE `Medications` (
  `medication_id` int PRIMARY KEY,
  `medication_name` varchar(255),
  `manufacturer` varchar(255),
  `active_ingredient` varchar(255)
);

CREATE TABLE `MedicationPrescriptions` (
  `medication_id` int,
  `prescription_id` int,
  `quantity_prescribed` int
);

ALTER TABLE `Appointments` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patients` (`patient_id`);

ALTER TABLE `Appointments` ADD FOREIGN KEY (`doctor_id`) REFERENCES `Doctors` (`doctor_id`);

ALTER TABLE `Prescriptions` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patients` (`patient_id`);

ALTER TABLE `Prescriptions` ADD FOREIGN KEY (`doctor_id`) REFERENCES `Doctors` (`doctor_id`);

ALTER TABLE `Diagnoses` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patients` (`patient_id`);

ALTER TABLE `Diagnoses` ADD FOREIGN KEY (`doctor_id`) REFERENCES `Doctors` (`doctor_id`);

ALTER TABLE `Nurses` ADD FOREIGN KEY (`department_id`) REFERENCES `Departments` (`department_id`);

ALTER TABLE `MedicalRecords` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patients` (`patient_id`);

ALTER TABLE `MedicalRecords` ADD FOREIGN KEY (`doctor_id`) REFERENCES `Doctors` (`doctor_id`);

ALTER TABLE `MedicalRecords` ADD FOREIGN KEY (`nurse_id`) REFERENCES `Nurses` (`nurse_id`);

ALTER TABLE `MedicationPrescriptions` ADD FOREIGN KEY (`medication_id`) REFERENCES `Medications` (`medication_id`);

ALTER TABLE `MedicationPrescriptions` ADD FOREIGN KEY (`prescription_id`) REFERENCES `Prescriptions` (`prescription_id`);
