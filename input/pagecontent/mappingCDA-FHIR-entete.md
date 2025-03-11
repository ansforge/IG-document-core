
Liste des ConceptMap décrivant la correspondance entre les éléments du modèle métier, du CDA, de FHIR et des ValueSets.

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'ConceptMap' and Description like 'Mapping%' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}