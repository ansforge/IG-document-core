<!-- Liste des éléments -->
> **Note :**  
> Ce guide de référence Structuration minimale des documents de santé décrit les éléments communs (en
> tête CDA) aux documents de santé persistants partagés ou échangés dans le contexte français.
### Liste des définitions principales

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and json_extract(json, '$.kind') = 'logical' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}
