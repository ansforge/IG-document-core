/*
Invariant: FrVaccineCodeConstraint
Description: "Permet soit de ne pas renseigner vaccineCode, soit de renseigner un code ATC ou CIS dans les ressources : ImmunizationR et ImmunizationRecommendation"
Expression: "empty() or coding.exists(system = 'urn:oid:2.16.840.1.113883.6.73' or system = 'urn:oid:1.2.250.1.213.2.3.1')"
Severity: #warning
*/