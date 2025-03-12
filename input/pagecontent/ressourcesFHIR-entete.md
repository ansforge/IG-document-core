### Liste des profils
 
 Cette page contient la liste des profils FHIR définis dans le guide **ANS IG document core**, utilisés pour l'implémentation de la partie entête des documents médicaux et médico-sociaux.
 
 {% sql {
     "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description like 'Ce profil%' ",
     "class" : "lines",
     "columns" : [
         { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
         { "title" : "Description", "type" : "markdown", "source" : "Description"}
     ]
 } %}
