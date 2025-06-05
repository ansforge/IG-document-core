Logical: ResultatsExamensBiologieMedicale
//Id: fr-resultats-examens-biologie-medicale
Title: "Resultats d'examens de biologie medicale"
Description: """Modèle logique métier de l'entrée Resultats d'examens de biologie medicale"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code dont dérive le code de section"
* statut 1..1 code "Niveau de complétude"
* dateResultat 0..1 dateTime "Date et heure des résultats"
* choice[x] 0..1 SujetNonHumain or PatientSujetNonHumain "Sujet non humain ou Patient avec sujet non humain"
* laboratoireExecutant 0..* LaboratoireExecutant "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs."
* auteur 0..* Auteur "Participation d'un auteur au document. Apparaît à ce niveau si le compte-rendu de cette analyse procède de cet auteur spécifique."
* valideur 0..1 ParticipantCorps "Valideur de ces résultats"
* responsable 0..1 ParticipantCorps "Responsable de cet examen"
* dispositifAutomatique 0..* ParticipantCorps "Dispositif automatique impliqué dans la production des résultats"
* prelevement 0..* Prelevement "Prélèvement"
* batterieExamensDeBiologieMedicale 0..* BatterieExamensDeBiologieMedicale "Batterie d'examens de biologie médicale"
* isolatMicrobiologique 0..* IsolatMicrobiologique "Isolat microbiologique"
* resultatElementCliniquePertinent 0..* ResultatExamensBiologieElementCliniquePertinent "Résultat d'examen de biologie / élément clinique pertinent"
* imageIllustrative 0..* ImageIllustrative "Image ou graphe"
* commentaire 0..* CommentaireER "Commentaire"
