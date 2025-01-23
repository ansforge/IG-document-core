// -------------------------------------------------------------------------------				
//  Logical Model				Patient.fsh
// -------------------------------------------------------------------------------				
Logical: PatientDocument							
Title: "1.1- Patient / Usager"				
Description:  """Patient/Usager concerné par le document."""
Characteristics: #can-be-target							
* identifiantPatient 1..1 Identifier "Identifiant du patient / usager."""				
* adresse 0..* Address "Adresse géopostale du patient/usager."				
* coordonneesTelecom 0..* ContactPoint "Coordonnées télécom du patient/usager (numéro de téléphone, adresse e-mail, …)."		 		
* personnePhysique  0..1 BackboneElement "patient contient les éléments permettant de décrire l’identité du patient/usager, son sexe, sa date et son lieu de naissance, son (ses) représentant(s), etc..."				
  * nomsPrenom 0..1 BackboneElement  "Nom du patient/usager."
    * noms 0..1 BackboneElement "Nom du patient/usager."	 
      * nomNaissance 0..1 string "Nom du patient/usager."
      * nomUtilise 0..1 string "Nom du patient/usager."
    * prenom 0..1  BackboneElement "Prénom du patient/usager."
      * listePrenoms 0..1 string "Liste des prénoms de l'acte de naissance."
      * premierPrenom 0..1 string "Premier prénom de l'acte de naissance."
      * premierNomUtilise 0..1 string  "Prénom utilisé."
  * sexe 1..1 CodeableConcept "Sexe du patient."
  * dateNaissance 1..1 dateTime "Date de naissance."
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
      * structureRepresentatntPatient 0..1 BackboneElement "Structure représentant le patient/usager."
        * identifiant 0..1 Identifier "Identifiant de la structure."
        * nom 0..1 string "Nom de la structure."
        * lieuNaissance 0..1 BackboneElement "Lieu de naissance."
          * lieu 1..1 BackboneElement "Lieu de naissance."
            * nomLieuNaissance 0..1 string "Nom du lieu de naissance du patient/usager."
            * adresseEtCodeOfficielGeographique 0..1 Address "Adresse et code officiel géographique du lieu de naissance."
              * CodeOfficielGeographique 0..1 string "Code Officiel Géographique (COG) de la commune ou du pays du lieu de naissance."
//--- END				
//--- END				
//--- END				