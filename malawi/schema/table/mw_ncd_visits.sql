
create table mw_ncd_visits (
  ncd_visit_id           INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  patient_id             INT NOT NULL,
  visit_date             DATE,
  location               VARCHAR(255),
  visit_types            VARCHAR(255),
  cc_initial             BOOLEAN,
  cc_followup            BOOLEAN,
  diabetes_htn_initial   BOOLEAN,
  diabetes_htn_followup  BOOLEAN,
  asthma_initial         BOOLEAN,
  asthma_followup        BOOLEAN,
  epilepsy_initial       BOOLEAN,
  epilepsy_followup      BOOLEAN,
  mental_health_initial  BOOLEAN,
  mental_health_followup BOOLEAN,
  next_appointment_date  DATE,
  systolic_bp            DOUBLE,
  diastolic_bp           DOUBLE,
  on_insulin             BOOLEAN,
  asthma_classification  VARCHAR(100),
  num_seizures           DOUBLE
);
alter table mw_ncd_visits add index mw_ncd_visit_patient_idx (patient_id);
alter table mw_ncd_visits add index mw_ncd_visit_patient_location_idx (patient_id, location);