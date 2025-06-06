### Liste des profils
 
 Cette page contient la liste des profils FHIR définis dans le guide **ANS IG document core**, utilisés pour l'implémentation de la partie corps des documents médicaux et médico-sociaux.
 
{% sql {
    "query" : "
        SELECT title AS Title, Description, Web
        FROM Resources
        WHERE Type = 'StructureDefinition'
          AND Title NOT LIKE '%Human Name Document%'
          AND (Title LIKE '%Observation%' 
               OR Title LIKE '%Condition%'
               OR Title LIKE '%Specimen%' 
               OR Title LIKE '%Encounter%' 
               OR Title LIKE '%Procedure%'
               OR Title LIKE '%Medication%'
               OR Title LIKE '%ServiceRequest%'
               OR Title LIKE '%CarePlan%'
               OR Title LIKE '%Composition corps%'
               OR Title LIKE '%DocumentReference%'
               OR Description LIKE '%section%' 
               OR Description LIKE '%corps du document%')
    ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Title", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}