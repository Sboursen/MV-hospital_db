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

CREATE TABLE 
  invoices(
    id INT GENERATED ALWAYS AS IDENTITY,
    total_amount DECIMAL,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id INT,
    PRIMARY KEY (id),
    CONSTRAINT medical_history_fkey FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
  );
