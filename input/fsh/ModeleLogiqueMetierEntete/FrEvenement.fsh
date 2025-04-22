//  Logical Model : evenement-documente				
Logical: Evenement	
Title: "Modèle métier - Évènement documenté"	
//Id: fr-evenement-documente			
Description: "Évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l'évènement principal avec obligatoirement une date de début et un exécutant." 	
Characteristics: #can-be-target
* . 1..*	
* identifiantEvenement 0..* Identifier "Identifiant de l’évènement documenté. 
 Obligatoire pour :
  - une demande d'acte d'imagerie pour porter l'Order Placer Number.
  - un CR d’imagerie pour porter le studyInstanceUID.
 Fourni si connu pour :
  - une prescription pour porter l'identifiant EPU de la prescription."			
* codeEvenement  0..1 CodeableConcept "Code de l’évènement documenté.  
 Obligatoire pour :
  - une demande d'actes d'imagerie (code LOINC ='55115-0' 'Demande d’actes d’imagerie')
  - un CR d’imagerie (code LOINC de l'acte d'imagerie),
  - un CR d’examen de l’enfant (code SNOMED CT ='11429006' 'consultation'),
  - un document d’expression personnelle du patient/usager (code TRE_A00 'EXP_PATIENT' 'Expression personnelle du patient')."
  * id 0..0
  * extension 0..0
  * translation 0..* CodeableConcept "Translation. 
 Obligatoire pour : 
  - un CR d’imagerie pour indiquer
   - 1..* la (ou les) modalité(s) d'acquisition,
   - 1..* la (ou les) région(s) anatomique(s)
  - un CR d’examen de l’enfant pour indiquer l'examen (jdv-examen-enfant-obligatoire-cisis)."
* dateHeureEvenement 0..1 dateTime "Date et heure de début et de fin de l’évènement documenté. 
  Date de début obligatoire pour l'évènement documenté principal."
* executantEvenement 0..1 Base "Exécutant. 
  Obligatoire pour l'évènement documenté principal." 
  * roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel."
  * dateHeureParticipation 0..1 dateTime "Date et heure de participation."
  * executant 1..1 PersonneStructure "Exécutant. 
  Le cadre d'exercice est obligatoire pour l'évènement documenté principal."