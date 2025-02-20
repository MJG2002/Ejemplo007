USE PetRecords;
CREATE  OR REPLACE VIEW viewVisitsVets AS
SELECT dimVisits.visit_id,
    dimVisits.visit_date,
    dimVisits.visit_weight,
    dimVisits.visit_receipt,
    dimVisits.visit_notes,
    dimVisits.med_visit_summary,
    dimVisits.routine_visit_summary,
    dimVisits.visit_category,
    dimVisits.visit_doctor,
    dimVisits.visit_exam_doc,
    dimVisits.pet_id,
    dimVisits.vet_id,
    dimVets.vet_name,
    dimVets.vet_address,
    dimVets.vet_city,
    dimVets.vet_state,
    dimVets.vet_zip,
    dimVets.vet_phone,
    dimVets.vet_website,
    dimVets.vet_email,
    dimVets.vet_med_rec_site
FROM PetRecords.dimVisits
INNER JOIN PetRecords.dimVets
ON dimVisits.vet_id = dimVets.vet_id;