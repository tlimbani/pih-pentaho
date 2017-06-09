
CREATE TABLE arw_relationship (
  research_patient_id VARCHAR(32),
  patient_role VARCHAR(50) not null,
  related_person_role VARCHAR(50) not null,
  start_date DATE,
  end_date DATE,
  date_created DATE
);