CREATE TABLE
  patients(
    id INT GENERATED ALWAYS AS IDENTITY,
    NAME VARCHAR(250),
    date_of_birth DATE,
    PRIMARY KEY (id)
  );

CREATE TABLE
  medical_histories(
    id INT GENERATED ALWAYS AS IDENTITY,
    admitted_at TIMESTAMP,
    status VARCHAR(100),
    patient_id INT,
    PRIMARY KEY (id),
    CONSTRAINT patient_fkey FOREIGN KEY (patient_id) REFERENCES patients(id)
  );
