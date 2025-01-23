// -------------------------------------------------------------------------------				
//  Logical Model				informateurdocument.fsh
// -------------------------------------------------------------------------------				
Logical: InformateurDocument						
Title: "1.3- Informateur"				
Description:  """Informateur (informant), ayant fourni des informations utiles aux actes en rapport avec la production du document."""							
* informateur[x] 1..1 ProfessionnelDocument or  PatientDocument or NonProfessionnelDocument  "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée."
//--- END	
//--- END				
//--- END				