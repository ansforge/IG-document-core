Logical: FRLMCorpsDocument	
Id: fr-lm-corps-document						
Title: "* Modèle logique métier du corps"				
Description: "Eléments métier du corps d'un document"	

* acteImagerie 0..* FRLMActeImagerie "Section Acte d'imagerie"
* addendum 0..* FRLMAddendum "Section Addendum"
* conclusions 0..* FRLMConclusionExamenImagerie "Section Conclusions"
* demandeExamenImagerie 0..* FRLMDemandeExamenImagerie "Section Demande d'examen"
* comparaisonExamensImagerie 0..* FRLMComparaisonExamensImagerie "Section Examen comparatif"
* expositionRadiations 0..* FRLMExpositionRadiations "Section Exposition aux radiations"
* informationsCliniques 0..* FRLMInformationsCliniques "Section Informations cliniques"
* objectCatalog 0..* FRLMObjectCatalog "Section  Object catalog"
* dispositifsMedicaux  0..* FRLMDispositifsMedicaux "Section Dispositifs medicaux"
* documentsAjoutes 0..* FRLMDocumentsAjoutes "Section Documents ajoutés" 
* educationPatient 0..* FRLMEducationPatient "Section Education du patient"
* resultatsExamensNonCode 0..* FRLMResultatsExamensNonCode "Section Resultats d'xamens (non Codée)"
* resultatsExamenImagerie 0..* FRLMResultatsExamenImagerie "Section Résultats d'examen d'imagerie"