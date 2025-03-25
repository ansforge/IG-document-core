
Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'ConceptMap' and Description like 'Ce ConceptMap%' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}