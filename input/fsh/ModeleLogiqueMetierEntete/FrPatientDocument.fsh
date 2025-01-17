// -------------------------------------------------------------------------------				
//  Logical Model				Patient.fsh
// -------------------------------------------------------------------------------				
Logical: PatientDocument							
Title: "Patient / Usager"				
Description:  """Patient/Usager concerné par le document."""
Characteristics: #can-be-target							
* identifiantPatient 1..1 Identifier "Identifiant du patient / usager."""				
* adresse 0..* Address "Adresse géopostale du patient/usager."				
* coordonneesTelecom 0..* ContactPoint "Coordonnées télécom du patient/usager (numéro de téléphone, adresse e-mail, …)."		 		
* personnePhysique  0..1 BackboneElement "patient contient les éléments permettant de décrire l’identité du patient/usager, son sexe, sa date et son lieu de naissance, son (ses) représentant(s), etc..."				
* personnePhysique.id 0..0	
* personnePhysique.extension 0..0 
* personnePhysique.modifierExtension 0..0 
* personnePhysique.nomsPrenom 0..1 BackboneElement  "Nom du patient/usager."
* personnePhysique.nomsPrenom.id 0..0 	
* personnePhysique.nomsPrenom.extension 0..0 
* personnePhysique.nomsPrenom.modifierExtension 0..0 
* personnePhysique.nomsPrenom.noms 0..1 BackboneElement "Nom du patient/usager."	
* personnePhysique.nomsPrenom.noms.id 0..0 	
* personnePhysique.nomsPrenom.noms.extension 0..0 
* personnePhysique.nomsPrenom.noms.modifierExtension 0..0 
* personnePhysique.nomsPrenom.noms.nomNaissance 0..1 string "Nom du patient/usager."
* personnePhysique.nomsPrenom.noms.nomUtilise 0..1 string "Nom du patient/usager."
* personnePhysique.nomsPrenom.prenom 0..1  BackboneElement "Prénom du patient/usager."
* personnePhysique.nomsPrenom.prenom.id 0..0 	
* personnePhysique.nomsPrenom.prenom.extension 0..0
* personnePhysique.nomsPrenom.prenom.modifierExtension 0..0
* personnePhysique.nomsPrenom.prenom.listePrenoms 0..1 string "Liste des prénoms de l'acte de naissance."
* personnePhysique.nomsPrenom.prenom.premierPrenom 0..1 string "Premier prénom de l'acte de naissance."
* personnePhysique.nomsPrenom.prenom.premierNomUtilise 0..1 string  "Prénom utilisé."
* personnePhysique.sexe 1..1 CodeableConcept "Sexe du patient."
* personnePhysique.dateNaissance 1..1 dateTime "Date de naissance."
* personnePhysique.dateDeces 0..1 boolean "Patient décédé ou pas ?."
* personnePhysique.grossesseMultiple 0..1 boolean "Patient né d'une grossesse multiple."
* personnePhysique.numeroOrdreNaissance 0..1 string "Numéro d’ordre de naissance."
* personnePhysique.representantPatient 0..* BackboneElement "Représentant du patient/usager."
* personnePhysique.representantPatient.id 0..0 	
* personnePhysique.representantPatient.extension 0..0
* personnePhysique.representantPatient.modifierExtension 0..0
* personnePhysique.representantPatient.adresse 0..* Address "Adresse géopostale."
* personnePhysique.representantPatient.coordonneesTelecom 0..* ContactPoint "Coordonnées télécom."
* personnePhysique.representantPatient.personneRepresentantPatient 0..1 BackboneElement "Personne représentant le patient/usager."
* personnePhysique.representantPatient.personneRepresentantPatient.id 0..0 	
* personnePhysique.representantPatient.personneRepresentantPatient.extension 0..0
* personnePhysique.representantPatient.personneRepresentantPatient.modifierExtension 0..0
* personnePhysique.representantPatient.personneRepresentantPatient.nomPrenom 0..1 BackboneElement "Nom et Prénom du représentant."
* personnePhysique.representantPatient.personneRepresentantPatient.nomPrenom.id 0..0 	
* personnePhysique.representantPatient.personneRepresentantPatient.nomPrenom.extension 0..0
* personnePhysique.representantPatient.personneRepresentantPatient.nomPrenom.modifierExtension 0..0
* personnePhysique.representantPatient.personneRepresentantPatient.nomPrenom.nom 0..1 string "Nom du représentant."
* personnePhysique.representantPatient.personneRepresentantPatient.nomPrenom.prenom 0..1 string "Prénom du représentant."
* personnePhysique.representantPatient.structureRepresentatntPatient 0..1 BackboneElement "Structure représentant le patient/usager."
* personnePhysique.representantPatient.structureRepresentatntPatient.id 0..0 	
* personnePhysique.representantPatient.structureRepresentatntPatient.extension 0..0
* personnePhysique.representantPatient.structureRepresentatntPatient.modifierExtension 0..0
* personnePhysique.representantPatient.structureRepresentatntPatient.identifiant 0..1 Identifier "Identifiant de la structure."
* personnePhysique.representantPatient.structureRepresentatntPatient.nom 0..1 string "Nom de la structure."
* personnePhysique.lieuNaissance 0..1 BackboneElement "Lieu de naissance."
* personnePhysique.lieuNaissance.id 0..0 	
* personnePhysique.lieuNaissance.extension 0..0
* personnePhysique.lieuNaissance.modifierExtension 0..0
* personnePhysique.lieuNaissance.nomLieuNaissance 0..1 string "Nom du lieu de naissance du patient/usager."
* personnePhysique.lieuNaissance.adresseEtCOG 0..1 Address "Adresse et code officiel géographique du lieu de naissance."
* personnePhysique.lieuNaissance.adresseEtCOG.COG 0..1 string "Code Officiel Géographique (COG) de la commune ou du pays du lieu de naissance."
//--- END				
//--- END				
//--- END				