	//  Logical Model : patient	
Logical: Patient						
Title: "Patient / Usager"				
Description:  """Patient/Usager concerné par le document."""
Characteristics: #can-be-target							
* identifiantPatient 1..* Identifier "Identifiant du patient / usager.
- Première occurrence obligatoire pour un document mis en partage dans un système d’information de santé partagé : Matricule INS du patient/usager tel que défini dans le cadre juridique.
- Occurrence(s) suivante(s) (optionnelles) : Identifiant connu pour le patient/usager dans le système d’information du producteur du document (IPP, NIP, etc.)."""				
* adresse 0..* Address "Adresse géopostale du patient/usager."				
* coordonneesTelecom 0..* ContactPoint "Coordonnées télécom du patient/usager (numéro de téléphone, adresse e-mail, …)."		 		
* personnePhysique  1..1 BackboneElement "Eléments permettant de décrire l’identité du patient/usager, son sexe, sa date et son lieu de naissance, son (ses) représentant(s), etc..."				
  * nomsPrenoms 1..1 BackboneElement  "Noms et prénoms du patient/usager."
    * noms 1..* BackboneElement "Noms du patient/usager."	 
      * nomNaissance 0..1 string "Nom du patient/usager."
      * nomUtilise 0..1 string "Nom du patient/usager."
    * prenoms 1..* BackboneElement "Prénoms du patient/usager."
      * listePrenoms 0..1 string "Liste des prénoms de l'acte de naissance.Obligatoire si le matricule INS est présent."
      * premierPrenom 0..1 string "Premier prénom de l'acte de naissance.Obligatoire si le matricule INS est présent"
      * prenomUtilise 0..1 string  "Prénom utilisé."
  * sexe 1..1 CodeableConcept "Sexe du patient."
  * dateNaissance 1..1 dateTime "Date de naissance."
  * indicateurDeces 0..1 boolean "Patient/usager décédé"
  * dateDeces 0..1 boolean "Patient décédé ou pas ?."
  * grossesseMultiple 0..1 boolean "Patient né d'une grossesse multiple."
  * numeroOrdreNaissance 0..1 string "Numéro d’ordre de naissance."
  * representantPatient 0..* BackboneElement "Représentant du patient/usager."
    * adresse 0..* Address "Adresse géopostale."
    * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom."
    * personneRepresentantPatient 0..1 BackboneElement "Personne représentant le patient/usager."
      * nomPrenom 0..1 BackboneElement "Nom et Prénom du représentant."
        * nom 0..1 string "Nom du représentant."
        * prenom 0..1 string "Prénom du représentant."
    * structureRepresentantPatient 0..1 BackboneElement "Structure représentant le patient/usager."
      * identifiant 0..1 Identifier "Identifiant de la structure."
        * nom 0..1 string "Nom de la structure."
  * lieuNaissance 0..1 BackboneElement "Lieu de naissance.
  - Obligatoire si le matricule INS est présent pour porter le code officiel géographique (COG) du lieu de naissance.
  - Le lieu de naissance est constitué du nom et/ou de l’adresse du lieu de naissance du patient/usager."
    * nomLieuNaissance 0..1 string "Nom du lieu de naissance du patient/usager."
    * adresseEtCodeOfficielGeographique 0..1 Address "Adresse et code officiel géographique du lieu de naissance."
    * CodeOfficielGeographique 0..1 string "Code Officiel Géographique (COG) de la commune ou du pays du lieu de naissance.
    - Le COG est obligatoire si le matricule INS est présent."		