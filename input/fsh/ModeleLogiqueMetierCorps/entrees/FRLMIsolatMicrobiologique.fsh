Logical: FRLMIsolatMicrobiologique
Id: fr-lm-isolat-microbiologique
Title: "Modèle logique métier - FR LM Isolat microbiologique"
Description: """Entrée Isolat microbiologique"""
Characteristics: #can-be-target

//identifier 
* identifiant 0..1 Identifier "Identifiant de l'examen"
* codeIsolat 0..1 CodeableConcept "Code isolat"
* statut 1..1 code "Niveau de complétude"
* dateateResultat 0..1 dateTime "Date et heure des résultats"
* choice[x] 0..1 FRLMSujetNonHumain or FRLMPatientSujetNonHumain "Sujet non humain ou Patient avec sujet non humain"
* isolatMicrobiologique 1..1 Base "Isolat microbiologique"
  * isolat 1..1 Base "Isolat microbiologique"
    * identifiant 1..1 Identifier "Identifiant de l'isolat"
    * agent 1..1 Base "L'agent infectieux cultivé (bactérie, levure, virus, parasite)"
      * code 1..1 CodeableConcept "Code isolat"
* laboratoireExecutant 0..* FRLMLaboratoireExecutant "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs."
* auteur 0..* FRLMAuteur "Participation d'un auteur au document. Apparaît à ce niveau si le compte-rendu de cette analyse procède de cet auteur spécifique."
* valideur 0..1 FRLMParticipantCorps "Valideur de ces résultats"
* responsable 0..1 FRLMParticipantCorps "Responsable de cet examen"
* dispositifAutomatique 0..* FRLMParticipantCorps "Dispositif automatique impliqué dans la production des résultats"
* batterieExamensDeBiologieMedicale 0..* FRLMBatterieExamensBiologieMedicale "Batterie d'examens de biologie médicale"
* resultatElementCliniquePertinent 0..* FRLMResultatExamensBiologieElementCliniquePertinent "Résultat d'examen de biologie / élément clinique pertinent"
* imageIllustrative 0..* FRLMImageIllustrative "Image ou graphe"
* commentaire 0..* FRLMCommentaireER "Commentaire de section interprétant l'ensemble des résultats"
