Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping entre les éléments de l'entête : Modèle métier / CDA / FHIR

<!-- Solution 1 -->
<!-- {% sql {
  "query" : "SELECT name AS Name, Description, Web FROM Resources WHERE Type = 'ConceptMap' AND Description LIKE 'Ce ConceptMap%'",
  "class" : "lines",
  "columns" : 
 [
    { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web" },
    { "title" : "Description", "type" : "markdown", "source" : "Description" }
  ]
} %}

### Éléments de 2ᵉ niveau

{% sql {
  "query": "SELECT name AS Name, Description, Web FROM Resources WHERE Type = 'ConceptMap' AND Description LIKE 'Ce ConceptMap de l''élément%'",
  "class": "lines",
  "columns":
[
    { "title": "Titre du profil", "type": "link", "source": "Name", "target": "Web" },
    { "title": "Description", "type": "markdown", "source": "Description" }
  ] 
  } %}
 -->

<!--solution 2 -->
{% sql {
"query": "
WITH AllGroups AS (
-- Récupère tous les groupes de tous les ConceptMap
SELECT
r.id   AS cm_id,
r.Web  AS Web,
g.value AS group_json,
json_extract(g.value, '$.source') AS grp_source,
json_extract(g.value, '$.target') AS grp_target
FROM Resources r
JOIN json_each(r.json, '$.group') g
WHERE r.Type = 'ConceptMap'
),

-- Classer chaque groupe en METIER / CDA / FHIR
ClassifiedGroups AS (
SELECT
cm_id,
Web,
group_json,
grp_source,
grp_target,

CASE
-- METIER
WHEN grp_source LIKE '%fr-lm%' THEN 'METIER'
-- CDA
WHEN grp_source LIKE '%cda%' OR grp_target LIKE '%cda%' OR grp_source LIKE '%fr-cda%' OR grp_target LIKE '%fr-cda%' THEN 'CDA'
-- FHIR
 ELSE 'FHIR'
END AS grp_type
FROM AllGroups
),

-- Extraire éléments + targets de chaque groupe classé
Elements AS (
SELECT
cg.cm_id,
cg.Web,
cg.grp_type,
json_extract(e.value, '$.code') AS elem_code,
json_extract(t.value, '$.code') AS elem_target_code
FROM ClassifiedGroups cg
JOIN json_each(cg.group_json, '$.element') e
JOIN json_each(e.value, '$.target') t
),

-- Construire tables temporaires METIER->CDA et CDA->FHIR
MetierToCDA AS (
SELECT
cm_id,
Web,
elem_code AS Metier,
elem_target_code AS CDA
FROM Elements
WHERE grp_type = 'METIER'
),

CDAtoFHIR AS (
SELECT
cm_id,
elem_code AS CDA,
elem_target_code AS FHIR
FROM Elements
WHERE grp_type = 'CDA'
),

-- join Metier->CDA with CDA->FHIR
FinalMapping AS (
SELECT
    m.Metier AS Metier,
    m.CDA AS CDA,
    cf.FHIR AS FHIR
    FROM MetierToCDA m
    LEFT JOIN CDAtoFHIR cf
    ON m.cm_id = cf.cm_id
    AND m.CDA = cf.CDA
    )
    
    SELECT
    Metier,
    CDA,
    FHIR
    FROM FinalMapping
    ",
    "class" : "lines",
    "columns" : [
    { "title": "Modèle métier", "type": "markdown", "source": "Metier" },
    { "title": "CDA", "type": "markdown", "source": "CDA" },
    { "title": "FHIR", "type": "markdown", "source": "FHIR" }
    ]
    } %}
    