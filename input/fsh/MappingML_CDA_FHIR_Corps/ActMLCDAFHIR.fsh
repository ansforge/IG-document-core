Instance: FRCDAActeToFRProcedureActDocument
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRCDAActe → FRProcedureActDocument"
Description: "Mapping des éléments du profil CDA FRCDAActe vers le profil FHIR FRProcedureActDocument"

* url = "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mapping-fr-cda-acte-to-fr-procedure-act"
* name = "FRCDAActeToFRProcedureActDocument"
* status = #draft
* sourceCanonical = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte"
* targetCanonical = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-act-document"

/* ================================================================
   GROUPE 1 – Identifiant
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = #id
* group[=].element[=].target.code = #identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'identifiant CDA devient identifier FHIR."

/* ================================================================
   GROUPE 2 – Code de l'acte
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = #code
* group[=].element[=].target.code = #code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le code CDA correspond au code FHIR."

/* ================================================================
   GROUPE 3 – Date effectiveTime
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = #effectiveTime
* group[=].element[=].target.code = #performed[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "effectiveTime → performedDateTime ou performedPeriod."

/* ================================================================
   GROUPE 4 – Texte narratif
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = #text
* group[=].element[=].target.code = #note
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "text CDA devient note/annotation FHIR."

/* ================================================================
   GROUPE 5 – Référence interne DM
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = "entryRelationship[frReferenceInterne]"
* group[=].element[=].target.code = #usedReference
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "DM référencé dans usedReference."

/* ================================================================
   GROUPE 6 – Observations liées
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = "entryRelationship[frSimpleObservation]"
* group[=].element[=].target.code = #partOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Les observations deviennent partOf."

/* ================================================================
   GROUPE 7 – Performers / Informant / Participant
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"

* group[=].element[+].code = #performer
* group[=].element[=].target.code = "performer.actor.extension[Intervenant]"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #informant
* group[=].element[=].target.code = "performer.actor.extension[Informateur]"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #participant
* group[=].element[=].target.code = "performer.actor.extension[Participant]"
* group[=].element[=].target.equivalence = #equivalent

/* ================================================================
   GROUPE 8 – Statut
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = #statusCode
* group[=].element[=].target.code = #status
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "statusCode → status."

/* ================================================================
   GROUPE 9 – Motif de l'acte
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = "entryRelationship[frReferenceInterne]"
* group[=].element[=].target.code = #reasonReference
* group[=].element[=].target.equivalence = #inexact
* group[=].element[=].target.comment = "Motif CDA → reasonReference (FHIR Condition)."

/* ================================================================
   GROUPE 10 – Rencontre associée
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = "entryRelationship[frReferenceInterne]"
* group[=].element[=].target.code = #encounter
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Référence de contexte CDA → Encounter FHIR."

/* ================================================================
   GROUPE 11 – author → recorder
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"
* group[=].element[+].code = #author
* group[=].element[=].target.code = #recorder
* group[=].element[=].target.equivalence = #inexact
* group[=].element[=].target.comment = "author CDA → recorder FHIR."

/* ================================================================
   GROUPE 12 – Localisation anatomique
   ================================================================ */
* group[+].source = "CDA"
* group[=].target = "FHIR"

* group[=].element[+].code = #targetSiteCode
* group[=].element[=].target.code = #bodySite:TargetSiteCode
* group[=].element[=].target.equivalence = #inexact

* group[=].element[+].code = #approachSiteCode
* group[=].element[=].target.code = #bodySite:ApproachSiteCode
* group[=].element[=].target.equivalence = #inexact
