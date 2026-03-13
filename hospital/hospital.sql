-- Hospital Management Database

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialization VARCHAR(50)
);

INSERT INTO doctors VALUES
(1, 'Dr. Mehra', 'Cardiology'),
(2, 'Dr. Singh', 'Neurology');

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    admitted_date DATE,
    doctor_id INT,
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

INSERT INTO patients VALUES
(101, 'Aqueeb Khan', '2026-03-05', 1),
(102, 'Riya Sharma', '2026-03-06', 2);

-- Queries
-- Total patients per doctor
SELECT d.name, COUNT(p.patient_id) AS patient_count
FROM doctors d
JOIN patients p ON d.doctor_id = p.doctor_id
GROUP BY d.name;
