CREATE TABLE
  patients(
    id INT GENERATED ALWAYS AS IDENTITY,
    NAME VARCHAR(250),
    date_of_birth DATE,
    PRIMARY KEY (id)
  );
