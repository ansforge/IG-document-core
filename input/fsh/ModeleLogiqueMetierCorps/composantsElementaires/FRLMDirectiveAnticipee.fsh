Logical: FRLMDirectiveAnticipee
Id: fr-lm-directive-anticipee
Title: "Modèle logique métier - FR LM Directive anticipée"
Description: """Directive anticipée"""
Characteristics: #can-be-target


* identifiant 1..1 Identifier "Identifiant de l'observation"
* code 1..1  CodeableConcept "Type de la directive anticipée"
* description 1..1 Narrative "Partie narrative de l'observation"
* statut 1..1 code "Statut de l'observation"
* statut = #completed
* date 1..1 dateTime "Date de la directive anticipée"
* valeurDirectiveIdentifiee 0..1 boolean "Procédure autorisée ou pas"
* reference 0..1 BackboneElement "Référence à un document externe"
* documentEncapsule 0..1 Base "Document encapsulé en B64"
* documentEncapsule.observationMedia 1..1 Base "Observation média"
* documentEncapsule.observationMedia.identifiant 0..1 Identifier "Identifiant de l’observationMedia"
* documentEncapsule.observationMedia.documentEncapsuleEncode 0..1 base64Binary "Document encapsulé encodée en Base64"
