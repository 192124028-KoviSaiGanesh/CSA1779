symptom(john, fever).
symptom(john, cough).
symptom(susan, headache).
symptom(susan, fever).
symptom(susan, fatigue).

% Conditions and their symptoms
condition(covid19, fever).
condition(covid19, cough).
condition(covid19, fatigue).
condition(covid19, shortness_of_breath).
condition(influenza, fever).
condition(influenza, cough).
condition(influenza, headache).
condition(cold, cough).
condition(cold, runny_nose).

diagnose_patient(Patient, Condition) :-
    symptom(Patient, Symptom),
    condition(Condition, Symptom).

possible_conditions(Patient, Conditions) :-
    setof(Condition, diagnose_patient(Patient, Condition), Conditions).
