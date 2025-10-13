//  Logical Model : corps-document				
Logical: CorpsDocument							
Title: "* Modèle logique métier du corps"				
Description: "Eléments métier du corps d'un document"	

* acteImagerie 0..* FrActeImagerie "Section Acte d'imagerie"
* addendum 0..* FrAddendum "Section Addendum"
* comparaisonExamensImagerie 0..* FrComparaisonExamensImagerie "Section Examen comparatif"
* conclusions 0..* FrConclusionExamenImagerie "Section Conclusions"
* demandeExamenImagerie 0..* FrDemandeExamenImagerie "Section Demande d'examen"
* dispositifsMedicaux  0..* FrDispositifsMedicaux "Section Dispositifs medicaux"
* documentsAjoutes 0..* FrDocumentsAjoutes "Section Documents ajoutés" 
* educationPatient 0..* FrEducationPatient "Section Education du patient"
* expositionRadiations 0..* FrExpositionRadiations "Section Exposition aux radiations"
* informationsCliniques 0..* FrInformationsCliniques "Section Informations cliniques"
* objectCatalog 0..* FrObjectCatalog "Section  Object catalog"
* resultatsExamenImagerie 0..* FrResultatsExamenImagerie "Section Résultats d'examen d'imagerie"
* resultatsExamensNonCode 0..* FrResultatsExamensNonCode "Section Resultats d'examens (non Codée)"