Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Éléments de 1ᵉʳ niveau

{% sql {
  "query" : "SELECT name AS Name, Description, Web FROM Resources WHERE Type = 'ConceptMap' AND Description LIKE 'Ce ConceptMap%'",
  "class" : "lines",
  "columns" : [
    { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web" },
    { "title" : "Description", "type" : "markdown", "source" : "Description" }
  ]
} %}

### Éléments de 2ᵉ niveau

{% sql {
  "query": "SELECT name AS Name, Description, Web FROM Resources WHERE Type = 'ConceptMap' AND Description LIKE 'Ce ConceptMap de l''élément%'",
  "class": "lines",
  "columns": [
    { "title": "Titre du profil", "type": "link", "source": "Name", "target": "Web" },
    { "title": "Description", "type": "markdown", "source": "Description" }
  ]
} %}
