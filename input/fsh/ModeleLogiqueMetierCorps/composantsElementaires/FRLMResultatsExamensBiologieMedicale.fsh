Logical: FRLMResultatsExamensBiologieMedicale
Id: fr-lm-resultats-examens-biologie-medicale
Title: "Modèle logique métier - FR LM Resultats d'examens de biologie medicale"
Description: """Resultats d'examens de biologie medicale"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code dont dérive le code de section"
* statut 1..1 code "Niveau de complétude"
* dateResultat 0..1 dateTime "Date et heure des résultats"
* choice[x] 0..1 FRLMSujetNonHumain or FRLMPatientSujetNonHumain "Sujet non humain ou Patient avec sujet non humain"
* laboratoireExecutant 0..* FRLMLaboratoireExecutant "Laboratoire sous-traitant."
* auteur 0..* FRLMAuteur "Participation d'un auteur au document."
* valideur 0..1 FRLMParticipantCorps "Valideur de ces résultats"
* responsable 0..1 FRLMParticipantCorps "Responsable de cet examen"
* dispositifAutomatique 0..* FRLMParticipantCorps "Dispositif automatique impliqué dans la production des résultats"
* prelevement 0..* FRLMPrelevement "Prélèvement"
* batterieExamensDeBiologieMedicale 0..* FRLMBatterieExamensBiologieMedicale "Batterie d'examens de biologie médicale"
* isolatMicrobiologique 0..* FRLMIsolatMicrobiologique "Isolat microbiologique"
* resultatElementCliniquePertinent 0..* FRLMResultatExamensBiologieElementCliniquePertinent "Résultat d'examen de biologie / élément clinique pertinent"
* imageIllustrative 0..* FRLMImageIllustrative "Image ou graphe"
* commentaire 0..* FRLMCommentaireER "Commentaire"
