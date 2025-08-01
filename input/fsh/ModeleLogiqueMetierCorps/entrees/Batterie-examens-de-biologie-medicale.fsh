Logical: BatterieExamensDeBiologieMedicale
//Id: fr-batterie-examens-de-biologie-medicale
Title: "Batterie d'examens de biologie médicale"
Description: """Modèle logique métier de l'entrée Batterie d'examens de biologie médicale"""
Characteristics: #can-be-target

//identifier 
* identifiant 0..1 Identifier "Identifiant de la batterie d'examen"
* codeBatterieExamen 0..1 CodeableConcept "Code de la batterie d'examen"
* statut 1..1 code "Niveau de complétude"
* dateExamen 0..1 dateTime "Date de l'examen"
* choice[x] 0..1 SujetNonHumain or PatientSujetNonHumain "Sujet non humain ou Patient avec sujet non humain"
* laboratoireExecutant 0..* LaboratoireExecutant "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs."
* auteur 0..* Auteur "Auteur. Apparaît à ce niveau si le rendu de ce  résultat procède de cet auteur spécifique, différent de celui déclaré aux niveaux supérieurs."
* participant 0..* Participant "Participant"
* prelevement 0..* Prelevement "Prélèvement"
* resultatElementCliniquePertinent 0..* ResultatExamensBiologieElementCliniquePertinent "Résultat d'examen de biologie / élément clinique pertinent"
* imageIllustrative 0..* ImageIllustrative "Image illustrative"
* commentaire 0..* CommentaireER "Commentaire"
