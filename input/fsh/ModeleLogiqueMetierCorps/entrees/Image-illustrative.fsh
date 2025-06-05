Logical: ImageIllustrative
//Parent : EHDSMedia
//Id: fr-image-illustrative
Title: "Image illustrative"
Description: """Modèle logique métier de l'entrée Image illustrative."""
Characteristics: #can-be-target

* identifiant 0..* identifier "Identifiant de l’entrée"
* langue 0..1 Narrative "Langue"
* imageEncodee 1..1 Base "Image encodée en Base64"
  * mediaType 1..1 CodeableConcept "'image/gif' ou 'image/jpeg' ou 'image/png' ou 'mage/bm'"
  * representation 1..1 base64Binary "B64"
* subject 0..* Base "Subject"
* specimen 0..* Base "Specimen"
* performer 0..* Base "Performer"
* auteur 0..* Base "Auteur"
* informant 0..* Base "Informant"
* participant 0..* Base "Participant"
* entryRelationship 0..* Base "entryRelationship"
* reference 0..* Base "Reference"
* precondition 0..* Base "Precondition"