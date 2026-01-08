Logical: FRLMResultatExamensBiologieElementCliniquePertinent
Id: fr-lm-resultat-examens-biologie-element-clinique-pertinent
Title: "Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent"
Description: """Résultat d'examens de biologie / élement clinique pertinent"""
Characteristics: #can-be-target

//identifier 
* identifiant 0..1 Identifier "	Identifiant du résultat"
* codeIdentification 0..1 CodeableConcept "Code d'identification de l'analyse ou de l'observation"
* statut 1..1 code "Niveau de complétude"
* dateResultat 0..1 dateTime "Date et heure de ce résultat"
// à vérifier pour le type : Any
* valeurResultat 0..1 CodeableConcept  "Valeur du résultat"
* interpretation 0..1 CodeableConcept "Code d'interprétation"
* methode 0..1 CodeableConcept "Méthode ou technique employée"
* choice[x] 0..1 FRLMSujetNonHumain or FRLMPatientSujetNonHumain "Sujet non humain ou Patient avec sujet non humain"
* laboratoireExecutant 0..* FRLMLaboratoireExecutant "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs."
* auteur 0..* FRLMAuteur "Auteur"
* valideur 0..1 FRLMParticipantCorps "Valideur de ces résultats"
* responsable 0..1 FRLMParticipantCorps "Responsable de cet examen"
* dispositifAutomatique 0..* FRLMParticipantCorps "Dispositif automatique impliqué dans la production des résultats"
* commentaire 0..* FRLMCommentaireER "Commentaire d'interprétation des résultats"
* prelevement 0..* FRLMPrelevement "Prélèvement"
* resultatsAnterieurs 0..* Base "Résultats antérieurs. Plusieurs résultats antérieurs peuvent être ajoutés. 
 - Ils doivent être comparables avec le résultat rendu, c'est-à-dire obtenus suivant la même méthode ou une méthode comparable, et exprimés dans la même unité ou dans le même système de codage."
* intervallesReference 0..1 Base "Intervalles de référence"
