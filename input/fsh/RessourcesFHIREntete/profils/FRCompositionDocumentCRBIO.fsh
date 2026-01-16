Profile: FRCompositionDocumentCRBIO
Parent: FRCompositionDocument
Id: fr-composition-document-cr-bio
Title: "FR Composition Document CR BIO"
Description: "Ce profil est utilisé pour représenter un compte rendu de BIO."

* section 1..*
  * ^slicing.discriminator[+].type = #exists
  * ^slicing.discriminator[=].path = "$this.section"
  * ^slicing.discriminator[+].type = #exists
  * ^slicing.discriminator[=].path = "$this.entry"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^definition = """
  Le compte-rendu de BIO comportant deux niveaux de sections : 
  - les sections de niveau supérieur DOIT contenir :
          - soit un bloc de texte contenant tous les résultats textuels produits ainsi que des entrées, 
          - soit un ensemble de sous-sections : une batterie d'examen, une étude d’échantillon (en particulier en microbiologie), ou un test individuel.
           De plus, toute sous-section DOIT contenir une entrée de données de laboratoire contenant les observations de cette section dans un format lisible par machine."""

// Section parente avec existance d'entrées /  sans sous-sections
// à verifier les cardinalités
* section contains sans-sous-sections 0..*
* section[sans-sous-sections]
  * ^short = "Chapitre de BIO avec des entrées et aucune sous-section"
  * ^definition = """Toutes les entrées de BIO sont fournies dans les sections de niveau supérieur et aucune sous-section n’est autorisée."""
  * code ^short = """Le code du chapitre doit être un code issu du jeu de valeurs Circuit de la biologie (disponible sur bioloinc.fr), onglet ‘2.Chapitres LOINC’ et contenant les codes et libellés traduits en français pour la biologie."""
  // à modifier avec le bon valueSet
  //* code from FRValueSetChapitreBiologie (extensible) // en Europe (lab-report) c'est l'quivalent de LabStudyTypesEuVs
  * title = "Titre du chapitre"
  * text ^short = "Partie narrative de la section"
  * entry ^short = "Entrée Résultats d'examens de biologie médicale"
  * entry only Reference (FRObservationLaboratoryReportResultsDocument)
  * entry 1..*
  * section 0..0

// Sections structurées avec existance de sous-sections / entrées dans les sous-sections
// à verifier les cardinalités
* section contains avec-sous-sections 0..*
* section[avec-sous-sections]
  * ^short = "Chapitre de BIO avec des sous-sections"
  * ^definition = """Cette section de niveau supérieur n’inclut NI un texte de niveau supérieur NI des entrées. 
  Chaque élément du CR est contenu dans une sous-section."""
  // à modifier avec le bon valueSet
  //* code from FRValueSetChapitreBiologie (extensible) // en Europe (lab-report) c'est l'quivalent de LabStudyTypesEuVs
  * title ^short = "Titre du chapitre"
  //* text 0..0
  * entry 0..0
  * section 1..*
    * ^short = "Sous-chapitre du compte rendu (section de 2nd niveau)"
    * title 0..1
    * title ^short = "Titre du sous-chapitre"
    * code 1..1
    * code ^short = """Le code du chapitre doit être un code issu du jeu de valeurs Circuit de la biologie (disponible sur bioloinc.fr), onglet ‘2.Chapitres LOINC’ et contenant les codes et libellés traduits en français pour la biologie."""
    // à modifier avec le bon valueSet
    //* code from FRValueSetChapitreBiologie (extensible) // en Europe (lab-report) c'est l'quivalent de LabStudyTypesEuVs
    * text ^short = "Partie narrative de la section."
    * entry ^short = "Entrée Résultats d'examens de biologie médicale"
    * entry only Reference (FRObservationLaboratoryReportResultsDocument)
    * entry 1..*
    * section 0..0

// Section commentaires 0 .. *
* section contains commentaires 0..* 
* section[commentaires]
  * ^short = "Section Commentaires"
  * ^definition = """Commentaire sous forme textuelle."""
  * code = #55112-7 "Commentaire"
  * title ^short = "Titre de la section"
  * text ^short = "Partie narrative de la section."


// Section Raison de la recommandation : Contexte de l'examen, obligatoire pour le dépistage organisé du cancer du col de l'utérus 
* section contains raisonDeLaRecommandation 0..1
* section[raisonDeLaRecommandation]
  * ^short = "Section Raison de la recommandation"
  * code = #42349-1 "Raison de la recommandation"
  * title ^short = "Titre de la section"
  * text ^short = "Partie narrative de la section."
 // Slicing sur entry
  * entry ^slicing.discriminator.type = #type
  * entry ^slicing.discriminator.path = "$this"
  * entry ^slicing.rules = #open

  // Slice Observation
  * entry contains observation 1..1
  * entry[observation] only Reference(Observation)
  * entry[observation] ^short = "Observation liée à la raison de la recommandation"

  // Slice Problème (Condition)
  * entry contains probleme 1..*
  * entry[probleme] only Reference(FRConditionDocument)
  * entry[probleme] ^short = "Problème ou condition justifiant la recommandation"


// Section Historique des vaccinations
* section contains vaccinations 0..1
* section[vaccinations]
  * ^short = "Section Vaccinations"
  * code = #11369-6 "Historique des vaccinations"
  * title ^short = "Titre de la section"
  * text ^short = "Partie narrative de la section."
  * entry 1..*
  * entry ^short = "Entrée Vaccination"
  * entry only Reference(FRImmunizationDocument)

// Section Résultats de laboratoire scannés
* section contains resultatsSecondeIntention 0..*
* section[resultatsSecondeIntention]
  * ^short = "Section Résultats de laboratoire de biologie de seconde intention"
  * code = #101792-0 "Résultats de laboratoire scannés"
  * title ^short = "Titre de la section"
  * text ^short = "Partie narrative de la section."
 // Slicing sur entry
  * entry ^slicing.discriminator.type = #type
  * entry ^slicing.discriminator.path = "$this"
  * entry ^slicing.rules = #open

  // Slice observation
  * entry contains observation 0..1
  * entry[observation] only Reference(Observation)
  * entry[observation] ^short = "Observation du résultat"

  // Slice documentAttache
  * entry contains documentAttache 1..*
  * entry[documentAttache] only Reference(FRDocumentReferenceDocument)
  * entry[documentAttache] ^short = "Document attaché"

// Section Document-PDF-copie
* section contains documentPDFCopie 0..1
* section[documentPDFCopie]
  * ^short = "Section Document-PDF-copie"
  * code = #55108-5 "Copie du document"
  * title ^short = "Titre de la section"
  * text ^short = "Partie narrative de la section."
  * entry 1..1
  * entry ^short = "Document attaché"
  * entry only Reference(FRDocumentReferenceDocument)