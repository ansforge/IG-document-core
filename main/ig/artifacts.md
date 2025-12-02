# Artifacts Summary - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Modèle logique métier de l'entête du document 

| | |
| :--- | :--- |
| [Modèle logique métier - FR LM Auteur](StructureDefinition-fr-lm-auteur.md) | Auteur du document : ce peut être un professionnel, un patient/usager ou un système.* Pour un professionnel ou un système, la structure de rattachement doit être précisée.
 |
| [Modèle logique métier - FR LM Consentement](StructureDefinition-fr-lm-consentement.md) | Permet de documenter qu’un consentement éclairé a été obtenu et d’indiquer quel type de consentement a été fourni. |
| [Modèle logique métier - FR LM Destinataire prévu](StructureDefinition-fr-lm-destinataire-prevu.md) | Personne déclarée comme destinataire prévu du document.* Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s). Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l’envoyer à d’autres destinataires.
 |
| [Modèle logique métier - FR LM Document de référence](StructureDefinition-fr-lm-document-reference.md) | Référence un document existant (à remplacer ou transformé). |
| [Modèle logique métier - FR LM En-tête document](StructureDefinition-fr-lm-entete-document.md) | Eléments de l’entête d’un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc…). |
| [Modèle logique métier - FR LM Informateur](StructureDefinition-fr-lm-informateur.md) | Informateur (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d’urgence, aidant, aidé. |
| [Modèle logique métier - FR LM Opérateur de saisie](StructureDefinition-fr-lm-operateur-saisie.md) | Opérateur de saisie de la totalité ou d’une partie du contenu du document. |
| [Modèle logique métier - FR LM Participant](StructureDefinition-fr-lm-participant.md) | Personne/Structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs. |
| [Modèle logique métier - FR LM Patient Usager](StructureDefinition-fr-lm-patient-usager.md) | Patient/Usager concerné par le document. |
| [Modèle logique métier - FR LM Personne et/ou Structure](StructureDefinition-fr-lm-personne-structure.md) | Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels). |
| [Modèle logique métier - FR LM Personne et/ou Structure Auteur](StructureDefinition-fr-lm-personne-structure-auteur.md) | Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels). |
| [Modèle logique métier - FR LM Prescription](StructureDefinition-fr-lm-prescription.md) | Association à une prescription à l’origine de l’acte dont résulte le document. |
| [Modèle logique métier - FR LM Prise en charge](StructureDefinition-fr-lm-prise-en-charge.md) | Association du document à une prise en charge du patient/usager par un professionnel ou par une structure.* Exemples : 
* Dans une structure hospitalière, cette prise en charge est une hospitalisation complète ou partielle, des actes et soins externes, une consultation, etc.
* Dans un cabinet, cette prise en charge est une consultation ou des actes et soins.
 
* Pour un document d’expression personnelle du patient ou pour un document élaboré sans la présence du patient (ex : synthèse médicale) ou pour un document produit via un SNR, la prise en charge n’a pas de signification. Dans ce cas, on ne renseignera que les données obligatoires : date de prise en charge (avec nulllFlavor possible) et secteur d’activité.
 |
| [Modèle logique métier - FR LM Responsable](StructureDefinition-fr-lm-responsable.md) | Représente le responsable du document, qui est :* soit le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre professionnel.
* soit le professionnel qui prend la responsabilité du document produit par un système de structure (ES, …).
* soit le patient/usager responsable du document d’expression personnelle
* soit le SNR responsable du document produit via ce SNR.
* Soit le Dossier Pharmaceutique (DP) responsable des documents qu’il produit
 |
| [Modèle logique métier - FR LM Structure conservation](StructureDefinition-fr-lm-structure-conservation.md) | Structure chargée de la conservation du document, c’est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie. |
| [Modèle logique métier - FR LM Système / Structure](StructureDefinition-fr-lm-systeme-structure-auteur.md) | Système auteur du document |
| [Modèle logique métier - FR LM Validateur](StructureDefinition-fr-lm-validateur.md) | Professionnel attestant la validité des informations portées dans le document sans pour autant en prendre la responsabilité. N’est pas utilisé dans un document d’expression personnelle du patient/usager et un document produit par un système. |
| [Modèle logique métier - FR LM Évènement](StructureDefinition-fr-lm-evenement.md) | Évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l’évènement principal avec obligatoirement une date de début et un exécutant. |

### Modèles logiques métier des sections 

| | |
| :--- | :--- |
| [Historique des actes](StructureDefinition-fr-lm-historique-des-actes.md) | Section Historique des actes |
| [Modèle logique métier - FR LM Acte d'imagerie](StructureDefinition-fr-lm-acte-imagerie.md) | Section Acte d’imagerie |
| [Modèle logique métier - FR LM Addendum](StructureDefinition-fr-lm-addendum.md) | Section Addendum |
| [Modèle logique métier - FR LM Allergies et hypersensibilités](StructureDefinition-fr-lm-allergies-et-hypersensibilites.md) | Section Allergies et hypersensibilités |
| [Modèle logique métier - FR LM Antécédents familiaux](StructureDefinition-fr-lm-antecedents-familiaux.md) | Section Antécédents familiaux |
| [Modèle logique métier - FR LM Antécédents médicaux](StructureDefinition-fr-lm-antecedents-medicaux.md) | Section Antécédents médicaux |
| [Modèle logique métier - FR LM Antécédents obstétricaux](StructureDefinition-fr-lm-historique-des-grossesses.md) | Section Historique des grossesses |
| [Modèle logique métier - FR LM Codes à barres](StructureDefinition-fr-lm-codes-a-barres.md) | Section Codes à barres |
| [Modèle logique métier - FR LM Commentaire (non-codé)](StructureDefinition-fr-lm-commentaire-non-code.md) | Section Commentaire (non-codé) |
| [Modèle logique métier - FR LM Comparaison d'examens d'imagerie](StructureDefinition-fr-lm-comparaison-examens-imagerie.md) | Section Comparaison d’examens d’imagerie |
| [Modèle logique métier - FR LM Complications Acte](StructureDefinition-fr-lm-complications-acte.md) | Section Complications au cours de l’acte |
| [Modèle logique métier - FR LM Compte rendu de biologie de 1er niveau](StructureDefinition-fr-lm-cr-bio-chapitre.md) | Section Compte rendu de biologie de 1er niveau |
| [Modèle logique métier - FR LM Conclusion examen d'imagerie](StructureDefinition-fr-lm-conclusion-examen-imagerie.md) | Section Conclusion examen d’imagerie |
| [Modèle logique métier - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md) | Eléments métier du corps d’un document contenant les sections du document. |
| [Modèle logique métier - FR LM Demande d'examen d'imagerie](StructureDefinition-fr-lm-demande-examen-imagerie.md) | Section Demande d’examen d’imagerie |
| [Modèle logique métier - FR LM Directives-anticipées](StructureDefinition-fr-lm-directives-anticipees.md) | Section Directives anticipées |
| [Modèle logique métier - FR LM Dispensation médicaments](StructureDefinition-fr-lm-dispensation-medicaments.md) | Section Dispensation médicaments |
| [Modèle logique métier - FR LM Dispositifs medicaux](StructureDefinition-fr-lm-dispositifs-medicaux.md) | Section Dispositifs medicaux |
| [Modèle logique métier - FR LM Document PDF copie](StructureDefinition-fr-lm-document-pdf-copie.md) | Section Document PDF-copie |
| [Modèle logique métier - FR LM Documents ajoutés](StructureDefinition-fr-lm-documents-ajoutes.md) | Section Documents ajoutés |
| [Modèle logique métier - FR LM Education du patient](StructureDefinition-fr-lm-education-patient.md) | Section Education du patient |
| [Modèle logique métier - FR LM Effets indesirables](StructureDefinition-fr-lm-effets-indesirables.md) | Section Effets indesirables |
| [Modèle logique métier - FR LM Exposition aux radiations](StructureDefinition-fr-lm-exposition-radiations.md) | Section Exposition aux radiations |
| [Modèle logique métier - FR LM Facteurs de risque professionnels non code](StructureDefinition-fr-lm-facteurs-de-risque-professionnels-non-code.md) | Section Facteurs de risque professionnels non code |
| [Modèle logique métier - FR LM Fonctions physiques](StructureDefinition-fr-lm-fonctions-physiques.md) | Section Fonctions physiques |
| [Modèle logique métier - FR LM Habitus et modes de vie](StructureDefinition-fr-lm-habitus-mode-de-vie.md) | Section Habitus et modes de vie |
| [Modèle logique métier - FR LM Informations Cliniques](StructureDefinition-fr-lm-informations-cliniques.md) | Section Informations Cliniques |
| [Modèle logique métier - FR LM Object Catalog](StructureDefinition-fr-lm-object-catalog.md) | Section Object Catalog |
| [Modèle logique métier - FR LM Plan de soins](StructureDefinition-fr-lm-plan-soins.md) | Section Plan de soins |
| [Modèle logique métier - FR LM Points de vigilance (non-codés)](StructureDefinition-fr-lm-points-de-vigilances-non-code.md) | Section Points de vigilance (non-codés) |
| [Modèle logique métier - FR LM Prescription de dispositifs médicaux](StructureDefinition-fr-lm-prescription-dispositifs-medicaux.md) | Section Prescription de dispositifs médicaux |
| [Modèle logique métier - FR LM Prescription de médicaments](StructureDefinition-fr-lm-prescription-medicaments.md) | Section Prescription de médicaments |
| [Modèle logique métier - FR LM Problèmes actifs](StructureDefinition-fr-lm-problemes-actifs.md) | Section Problèmes actifs |
| [Modèle logique métier - FR LM Raison de la recommandation](StructureDefinition-fr-lm-raison-recommandation.md) | Section Raison de la recommandation |
| [Modèle logique métier - FR LM Raison de la recommandation (non codée)](StructureDefinition-fr-lm-raison-recommandation-non-code.md) | Section Raison de la recommandation (non codée) |
| [Modèle logique métier - FR LM Résultats](StructureDefinition-fr-lm-resultats.md) | Section Résultats |
| [Modèle logique métier - FR LM Résultats d'examen d'imagerie](StructureDefinition-fr-lm-resultats-examen-imagerie.md) | Section Résultats d’examen d’imagerie |
| [Modèle logique métier - FR LM Résultats d'examens](StructureDefinition-fr-lm-resultats-examens.md) | Section Résultats d’examens |
| [Modèle logique métier - FR LM Résultats d'examens (non codée)](StructureDefinition-fr-lm-resultats-examens-non-code.md) | Section Résultats d’examens (non codée) |
| [Modèle logique métier - FR LM Résultats d'événements](StructureDefinition-fr-lm-resultats-evenements.md) | Section Résultats d’événements |
| [Modèle logique métier - FR LM Résultats de laboratoire de biologie de seconde intention](StructureDefinition-fr-lm-resultats-laboratoire-biologie-seconde-intention.md) | Section Résultats de laboratoire de biologie de seconde intention |
| [Modèle logique métier - FR LM Section](StructureDefinition-fr-lm-section.md) | Section |
| [Modèle logique métier - FR LM Signes vitaux](StructureDefinition-fr-lm-signes-vitaux.md) | Section Signes vitaux |
| [Modèle logique métier - FR LM Sous-chapitre du compte rendu d'examens de biologie](StructureDefinition-fr-lm-cr-bio-sous-chapitre.md) | Modèle logique métier de la section Sous-chapitre du compte rendu d’examens de biologie (section de 2nd niveau) |
| [Modèle logique métier - FR LM Statut du document](StructureDefinition-fr-lm-statut-document.md) | Section Statut du document |
| [Modèle logique métier - FR LM Statut fonctionnel](StructureDefinition-fr-lm-statut-fonctionnel.md) | Section Statut fonctionnel |
| [Modèle logique métier - FR LM Traitement](StructureDefinition-fr-lm-traitement.md) | Entrée Traitement |
| [Modèle logique métier - FR LM Traitements administrés](StructureDefinition-fr-lm-traitements-administres.md) | Section Traitements administrés |
| [Modèle logique métier - FR LM Traitements à la sortie](StructureDefinition-fr-lm-traitement-sortie.md) | Section Traitements à la sortie |
| [Modèle logique métier - FR LM Vaccinations](StructureDefinition-fr-lm-vaccinations.md) | Section Vaccinations |

### Modèles logiques métier des entrées 

| | |
| :--- | :--- |
| [Modèle logique métier - FR LM Accident transfusionnel](StructureDefinition-fr-lm-accidents-transfusionnels.md) | Entrée Accident transfusionnel |
| [Modèle logique métier - FR LM Acte](StructureDefinition-fr-lm-acte.md) | Entrée Acte |
| [Modèle logique métier - FR LM Acte substitution](StructureDefinition-fr-lm-acte-substitution.md) | Entrée Acte substitution |
| [Modèle logique métier - FR LM Administration de dérivés du sang](StructureDefinition-fr-lm-administration-de-derives-du-sang.md) | Entrée Administration de dérivés du sang |
| [Modèle logique métier - FR LM Administration produit de sante](StructureDefinition-fr-lm-administration-produit-de-sante.md) | Entrée Administration produit de sante |
| [Modèle logique métier - FR LM Allergie ou Hypersensibilité](StructureDefinition-fr-lm-allergie-ou-hypersensibilite.md) | Entrée Allergie ou hypersensibilite |
| [Modèle logique métier - FR LM Antécédent familial observé](StructureDefinition-fr-lm-antecedent-familial-observe.md) | Entrée Antécédent familial |
| [Modèle logique métier - FR LM Antécédents familiaux](StructureDefinition-fr-lm-antecedents-familiaux-entree.md) | Entrée Antécédents familiaux |
| [Modèle logique métier - FR LM Autorisation exposition](StructureDefinition-fr-lm-autorisation-exposition.md) | Entrée Autorisation exposition |
| [Modèle logique métier - FR LM Autorisation substitution](StructureDefinition-fr-lm-autorisation-substitution.md) | Entrée Autorisation substitution |
| [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-fr-lm-batterie-examens-biologie-medicale.md) | Entrée Batterie d’examens de biologie médicale |
| [Modèle logique métier - FR LM Certitude](StructureDefinition-fr-lm-certitude.md) | Entrée Certitude |
| [Modèle logique métier - FR LM Commentaire](StructureDefinition-fr-lm-commentaire-er.md) | Entrée Commentaire |
| [Modèle logique métier - FR LM Criticite](StructureDefinition-fr-lm-criticite.md) | Entrée Criticite |
| [Modèle logique métier - FR LM Demande d'examen ou de suivi](StructureDefinition-fr-lm-demande-examen-ou-suivi.md) | Entrée Demande d’examen ou de suivi / Objectif à atteindre |
| [Modèle logique métier - FR LM Directive anticipée](StructureDefinition-fr-lm-directive-anticipee.md) | Entrée Directive anticipée |
| [Modèle logique métier - FR LM Dispositif médical](StructureDefinition-fr-lm-dispositif-medical-entree.md) | Entrée Dispositif médical |
| [Modèle logique métier - FR LM Document attaché](StructureDefinition-fr-lm-document-attache.md) | Entrée Document attaché |
| [Modèle logique métier - FR LM Dose d'antigène](StructureDefinition-fr-lm-dose-antigene.md) | Entrée Dose d’antigène |
| [Modèle logique métier - FR LM Effet indesirable](StructureDefinition-fr-lm-effet-indesirable.md) | Entrée Effet indesirable |
| [Modèle logique métier - FR LM En rapport avec la prevention](StructureDefinition-fr-lm-en-rapport-avec-la-prevention.md) | Entrée En rapport avec la prevention |
| [Modèle logique métier - FR LM En rapport avec un accident travail](StructureDefinition-fr-lm-en-rapport-avec-accident-travail.md) | Entrée En rapport avec un accident travail |
| [Modèle logique métier - FR LM En rapport avec une Affection Longue Durée (ALD)](StructureDefinition-fr-lm-en-rapport-avec-ald.md) | Entrée En rapport avec une Affection Longue Durée (ALD) |
| [Modèle logique métier - FR LM Evaluation](StructureDefinition-fr-lm-evaluation.md) | Entrée Evaluation |
| [Modèle logique métier - FR LM Evaluation Composant](StructureDefinition-fr-lm-evaluation-composant.md) | Entrée Evaluation Composant |
| [Modèle logique métier - FR LM Evaluation Composant N2](StructureDefinition-fr-lm-evaluation-composant-n2.md) | Entrée Evaluation Composant N2 |
| [Modèle logique métier - FR LM Evolution effet indesirable](StructureDefinition-fr-lm-evolution-effet-indesirable.md) | Entrée Evolution effet indesirable |
| [Modèle logique métier - FR LM Evènements indésirables pendant l'hospitalisation](StructureDefinition-fr-lm-evenement-indesirable-pendant-hospitalisation.md) | Entrée Evènements indésirables pendant l’hospitalisation |
| [Modèle logique métier - FR LM Evènements indésirables suite à l'administration de dérivés du sang](StructureDefinition-fr-lm-evenements-indesirables-suite-administration-derives-sang.md) | Entrée Evènements indésirables suite à l’administration de dérivés du sang |
| [Modèle logique métier - FR LM Examen Imagerie](StructureDefinition-fr-lm-examen-imagerie.md) | Entrée DICOM Examen Imagerie |
| [Modèle logique métier - FR LM Gravite effet indesirable](StructureDefinition-fr-lm-gravite-effet-indesirable.md) | Entrée Gravite effet indesirable |
| [Modèle logique métier - FR LM Groupe de questionnaires d'évalutation](StructureDefinition-fr-lm-group-de-questionnaires-devaluation.md) | Entrée Groupe de questionnaires d’évalutation |
| [Modèle logique métier - FR LM Habitus Mode de vie](StructureDefinition-fr-lm-habitus-mode-de-vie-entree.md) | Entrée Habitus Mode de vie |
| [Modèle logique métier - FR LM Historique de la grossesse](StructureDefinition-fr-lm-historique-grossesse.md) | Entrée Historique de la grossesse |
| [Modèle logique métier - FR LM Hors Autorisation de Mise sur le Marché (AMM)](StructureDefinition-fr-lm-hors-amm.md) | Entrée Hors Autorisation de Mise sur le Marché (AMM) |
| [Modèle logique métier - FR LM Identification de micro-organismes multirésistants](StructureDefinition-fr-lm-identification-de-micro-organismes-multiresistants.md) | Entrée Identification de micro-organismes multirésistants |
| [Modèle logique métier - FR LM Image illustrative](StructureDefinition-fr-lm-image-illustrative.md) | Entrée Image illustrative. |
| [Modèle logique métier - FR LM Imputabilite effet indesirable](StructureDefinition-fr-lm-imputabilite-effet-indesirable.md) | Entrée Imputabilite effet indesirable |
| [Modèle logique métier - FR LM Instruction au patient](StructureDefinition-fr-lm-instruction-au-patient.md) | Entrée Instruction au patient |
| [Modèle logique métier - FR LM Instructions au dispensateur](StructureDefinition-fr-lm-instructions-au-dispensateur.md) | Entrée Instructions au dispensateur |
| [Modèle logique métier - FR LM Instructions au patient](StructureDefinition-fr-lm-instructions-patient.md) | Entrée Instructions au patient |
| [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-fr-lm-isolat-microbiologique.md) | Entrée Isolat microbiologique |
| [Modèle logique métier - FR LM Modalité d'entrée](StructureDefinition-fr-lm-modalite-entree.md) | Entrée Modalité d’entrée |
| [Modèle logique métier - FR LM Modalité de sortie](StructureDefinition-fr-lm-modalite-sortie.md) | Entrée Modalité de sortie |
| [Modèle logique métier - FR LM Naissance](StructureDefinition-fr-lm-naissance.md) | Entrée Naissance |
| [Modèle logique métier - FR LM Notes du dispensateur](StructureDefinition-fr-lm-notes-dispensateur.md) | Entrée Notes du dispensateur |
| [Modèle logique métier - FR LM Observation](StructureDefinition-fr-lm-observation.md) | Entrée observation |
| [Modèle logique métier - FR LM Observation sur la grossesse](StructureDefinition-fr-lm-observation-grossesse.md) | Entrée Observation sur la grossesse |
| [Modèle logique métier - FR LM Prescription](StructureDefinition-fr-lm-prescription-entree.md) | Entrée Prescription |
| [Modèle logique métier - FR LM Problème](StructureDefinition-fr-lm-probleme.md) | Entrée Problème |
| [Modèle logique métier - FR LM Produit de santé](StructureDefinition-fr-lm-produit-sante.md) | Produit de santé |
| [Modèle logique métier - FR LM Prélèvement](StructureDefinition-fr-lm-prelevement.md) | Entrée Prélèvement |
| [Modèle logique métier - FR LM Période de renouvellement de la prescription](StructureDefinition-fr-lm-periode-de-renouvellement.md) | Entrée Période de renouvellement de la prescription |
| [Modèle logique métier - FR LM Quantité de produit](StructureDefinition-fr-lm-quantite-produit.md) | Entrée Quantité de produit |
| [Modèle logique métier - FR LM Quantité exposition](StructureDefinition-fr-lm-quantite-exposition.md) | Entrée Quantité exposition |
| [Modèle logique métier - FR LM Rang de la vaccination](StructureDefinition-fr-lm-rang-vaccination.md) | Entrée Rang de la vaccination |
| [Modèle logique métier - FR LM Recherche de micro organismes](StructureDefinition-fr-lm-recherche-de-micro-organismes.md) | Entrée Recherche de micro organismes |
| [Modèle logique métier - FR LM Rencontre](StructureDefinition-fr-lm-rencontre.md) | Entrée Rencontre |
| [Modèle logique métier - FR LM Resultats](StructureDefinition-fr-lm-resultats-entree.md) | Entrée Resultats |
| [Modèle logique métier - FR LM Resultats d'examens de biologie medicale](StructureDefinition-fr-lm-resultats-examens-biologie-medicale.md) | Entrée Resultats d’examens de biologie medicale |
| [Modèle logique métier - FR LM Référence interne](StructureDefinition-fr-lm-reference-interne.md) | Entrée Référence interne |
| [Modèle logique métier - FR LM Référence item plan traitement](StructureDefinition-fr-lm-reference-item-plan-traitement.md) | Entrée Référence item plan traitement |
| [Modèle logique métier - FR LM Référence item prescription](StructureDefinition-fr-lm-reference-item-prescription.md) | Entrée Référence item prescription |
| [Modèle logique métier - FR LM Références externes](StructureDefinition-fr-lm-references-externes.md) | Entrée Références externes |
| [Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-fr-lm-resultat-examens-biologie-element-clinique-pertinent.md) | Entrée Résultat d’examens de biologie / élement clinique pertinent |
| [Modèle logique métier - FR LM Serie imagerie](StructureDefinition-fr-lm-serie-imagerie.md) | Entrée Serie imagerie |
| [Modèle logique métier - FR LM Signe vital](StructureDefinition-fr-lm-signe-vital.md) | Entrée Signe vital |
| [Modèle logique métier - FR LM Signe vital observé](StructureDefinition-fr-lm-signe-vital-observe.md) | Entrée Signe vital observé |
| [Modèle logique métier - FR LM SOP Instance](StructureDefinition-fr-lm-sop-instance.md) | Entrée SOP Instance |
| [Modèle logique métier - FR LM Statut](StructureDefinition-fr-lm-statut.md) | Entrée Statut |
| [Modèle logique métier - FR LM Statut clinique du patient](StructureDefinition-fr-lm-statut-clinique-patient.md) | Entrée Statut clinique du patient |
| [Modèle logique métier - FR LM Statut du document](StructureDefinition-fr-lm-statut-document-entree.md) | Entrée Statut du document |
| [Modèle logique métier - FR LM Statut du problème](StructureDefinition-fr-lm-statut-probleme.md) | Entrée Statut du problème. |
| [Modèle logique métier - FR LM Synthese medicale sejour](StructureDefinition-fr-lm-synthese-medicale-sejour.md) | Entrée Synthese medicale sejour |
| [Modèle logique métier - FR LM Sévérité](StructureDefinition-fr-lm-severite.md) | Entrée Sévérité. |
| [Modèle logique métier - FR LM Technique imagerie](StructureDefinition-fr-lm-technique-imagerie.md) | Entrée Technique imagerie |
| [Modèle logique métier - FR LM Traitement dispensé](StructureDefinition-fr-lm-traitement-dispense.md) | Entrée Traitement dispense |
| [Modèle logique métier - FR LM Traitement Prescrit](StructureDefinition-fr-lm-traitement-prescrit.md) | Entrée Traitement prescrit |
| [Modèle logique métier - FR LM Traitement Prescrit Subordonnee](StructureDefinition-fr-lm-traitement-prescrit-subordonne.md) | Entrée Traitement prescrit subordonne |
| [Modèle logique métier - FR LM Traitement subordonné](StructureDefinition-fr-lm-traitement-subordonne.md) | Entrée Traitement subordonné |
| [Modèle logique métier - FR LM Traitements](StructureDefinition-fr-lm-traitements.md) | Section Traitements |
| [Modèle logique métier - FR LM Transfert du patient](StructureDefinition-fr-lm-transfert-du-patient.md) | Entrée Transfert du patient |
| [Modèle logique métier - FR LM Transfusion de produits sanguins](StructureDefinition-fr-lm-transfusion-de-produits-sanguins.md) | Entrée Transfusion de produits sanguins |
| [Modèle logique métier - FR LM Vaccin recommandé](StructureDefinition-fr-lm-vaccin-recommande.md) | Entrée Vaccin recommandé |
| [Modèle logique métier - FR LM Vaccination](StructureDefinition-fr-lm-vaccination.md) | Entrée Vaccination |
| [Non remboursable](StructureDefinition-fr-lm-non-remboursable.md) | Modèle logique métier - FR LM Entrée Non remboursable |

### Modèles logiques métier des éléments transversaux 

| | |
| :--- | :--- |
| [Modèle logique métier - Dispositif médical](StructureDefinition-FRLMDispositifMedical.md) | Dispositif médical |
| [Modèle logique métier - FR LM Auteur APSR](StructureDefinition-fr-lm-auteur-apsr.md) | Auteur APSR (Anatomic Pathology Structured Report), la structure de cet élément est identique à celle de l’élément Auteur |
| [Modèle logique métier - FR LM Informant APSR](StructureDefinition-fr-lm-informant-apsr.md) | Informant APSR(Anatomic Pathology Structured Report), la structure de cet élément est identique à celle de l’élément Informateur |
| [Modèle logique métier - FR LM Laboratoire exécutant](StructureDefinition-fr-lm-laboratoire-executant.md) | Laboratoire exécutant |
| [Modèle logique métier - FR LM Participant](StructureDefinition-fr-lm-participant-corps.md) | Participant |
| [Modèle logique métier - FR LM Participant APSR](StructureDefinition-fr-lm-participant-apsr.md) | Participant APSR(Anatomic Pathology Structured Report) |
| [Modèle logique métier - FR LM Patient avec sujet non humain](StructureDefinition-fr-lm-patient-sujet-non-humain.md) | Patient avec sujet non humain |
| [Modèle logique métier - FR LM Performer](StructureDefinition-fr-lm-performer.md) | Performer |
| [Modèle logique métier - FR LM Sujet](StructureDefinition-fr-lm-sujet.md) | Sujet |
| [Modèle logique métier - FR LM Sujet non humain](StructureDefinition-fr-lm-sujet-non-humain.md) | Sujet non humain |
| [Modèle logique métier - FR LM Échantillon prélevé](StructureDefinition-fr-lm-echantillon-preleve.md) | Échantillon prélevé |

### Eléments CDA 

| | |
| :--- | :--- |
| [CDA - assignedAuthor](StructureDefinition-fr-cda-assigned-author.md) | L’élément de l’en-tête du CDA assignedAuthor contient les éléments permettant de décrire l’auteur. |
| [CDA - assignedCustodian](StructureDefinition-fr-cda-assigned-custodian.md) | L’élément de l’en-tête du CDA assignedCustodian contient l’élément representedCustodianOrganization caractérisant la structure conservant le document. |
| [CDA - assignedEntity](StructureDefinition-fr-cda-assigned-entity.md) | L’élément de l’en-tête du CDA assignedEntity est utilisé dans les éléments suivants : dataEnterer, informant, legalAuthenticator, authenticator, performer, responsibleParty et encounterParticipant. |
| [CDA - assignedPerson](StructureDefinition-fr-cda-assigned-person.md) | L’élément de l’en-tête du CDA assignedPerson permet de décrire une personne physique. |
| [CDA - associatedEntity](StructureDefinition-fr-cda-associated-entity.md) | L’élément de l’en-tête du CDA associatedEntity permet de représenter les caractéristiques du professionnel et/ou de l’établissement participant. |
| [CDA - authenticator](StructureDefinition-fr-cda-authenticator.md) | L’élément de l’en-tête du CDA authenticator permet de représenter le professionnel (personne physique) attestant la validité du contenu du document. |
| [CDA - author](StructureDefinition-fr-cda-author.md) | L’élément de l’en-tête du CDA author permet d’enregistrer un auteur du document. |
| [CDA - authoringDevice](StructureDefinition-fr-cda-authoring-device.md) | L’élément de l’en-tête du CDA authoringDevice contient les informations complémentaires si l’auteur est un système. |
| [CDA - authorization](StructureDefinition-fr-cda-authorization.md) | L’élément de l’en-tête du CDA authorization permet de documenter qu’un consentement éclairé a été obtenu et d’indiquer quel type de consentement a été fourni. |
| [CDA - clinicalDocument](StructureDefinition-fr-cda-clinical-document.md) | L’élément de l’en-tête CDA ‘ClinicalDocument’ est l’élément racine d’un document médical. |
| [CDA - componentOf](StructureDefinition-fr-cda-component-of.md) | L’élément de l’en-tête du CDA componentOf permet d’associer le document à une prise en charge du patient/usager. |
| [CDA - custodian](StructureDefinition-fr-cda-custodian.md) | L’élément de l’en-tête du CDA custodian permet de représenter la structure chargée de la conservation du document. |
| [CDA - dataEnterer](StructureDefinition-fr-cda-data-enterer.md) | L’élément de l’en-tête du CDA dataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document. |
| [CDA - documentationOf](StructureDefinition-fr-cda-documentation-of.md) | L’élément de l’en-tête du CDA documentationOf permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l’évènement principal avec obligatoirement une date de début et un exécutant. |
| [CDA - encompassingEncounter](StructureDefinition-fr-cda-encompassing-encounter.md) | L’élément de l’en-tête du CDA encompassingEncounter permet de décrire la prise en charge du patient/usager par un professionnel ou par une structure. |
| [CDA - encounterParticipant](StructureDefinition-fr-cda-encounter-participant.md) | L’élément de l’en-tête du CDA encounterParticipant permet de représenter la personne impliquée dans la prise en charge du patient/usager, comme par exemple, le professionnel co-responsable, le professionnel ayant fait l’admission ou encore le professionnel ayant donné son avis quant à la prise en charge. |
| [CDA - healthCareFacility](StructureDefinition-fr-cda-health-care-facility.md) | L’élément de l’en-tête du CDA healthCareFacility permet de représenter la structure de prise en charge (cabinet du médecin, hôpital ou clinique, etc.). |
| [CDA - informant](StructureDefinition-fr-cda-informant.md) | L’élément de l’en-tête du CDA informant permet d’identifier un informateur, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée. |
| [CDA - informationRecipient](StructureDefinition-fr-cda-information-recipient.md) | L’élément de l’en-tête du CDA informationRecipient permet d’enregistrer une personne déclarée comme destinataire prévu du document. |
| [CDA - inFulfillmentOf](StructureDefinition-fr-cda-inFulfillment-of.md) | L’élément de l’en-tête du CDA inFulfillmentOf permet d’associer un document à une prescription. |
| [CDA - intendedRecipient](StructureDefinition-fr-cda-intended-recipient.md) | L’élément de l’en-tête du CDA intendedRecipient permet d’enregistrer le destinataire prévu du document. |
| [CDA - legalAuthenticator](StructureDefinition-fr-cda-legal-authenticator.md) | L’élément de l’en-tête du CDA legalAuthenticator permet de représenter les caractéristiques du professionnel et/ou de l’établissement participant. |
| [CDA - Name](StructureDefinition-fr-cda-name.md) | L’élément de l’en-tête du CDA correspond au nom d’une personne physique. |
| [CDA - order](StructureDefinition-fr-cda-order.md) | L’élément de l’en-tête du CDA order permet de représenter la prescription à l’origine de l’acte dont résulte le document. |
| [CDA - parentDocument](StructureDefinition-fr-cda-parent-document.md) | L’élément de l’en-tête du CDA parentDocument permet de représenter le document de référence. |
| [CDA - participant](StructureDefinition-fr-cda-participant.md) | L’élément de l’en-tête du CDA participant permet de représenter toute personne/structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs. |
| [CDA - patient](StructureDefinition-fr-cda-patient.md) | L’élément de l’en-tête du CDA patient permet de représenter une personne physique. |
| [CDA - patientRole](StructureDefinition-fr-cda-patient-role.md) | L’élément de l’en-tête du CDA patientRole permet de décrire le patient/usager. |
| [CDA - performer](StructureDefinition-fr-cda-performer.md) | L’élément de l’en-tête du CDA performer permet de représenter l’exécutant de l’évènement documenté. Il est obligatoire et son attribut nullFlavor interdit pour l’évènement documenté principal. |
| [CDA - recordTarget](StructureDefinition-fr-cda-record-target.md) | L’élément de l’en-tête du CDA recordTarget permet de représenter le patient/usager concerné par le document. |
| [CDA - relatedDocument](StructureDefinition-fr-cda-related-document.md) | L’élément de l’en-tête du CDA relatedDocument permet de référencer un document existant (à remplacer ou transformé). |
| [CDA - relatedEntity](StructureDefinition-fr-cda-related-entity.md) | L’élément de l’en-tête du CDA relatedEntity permet de décrire : un informateur non professionnel, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée. |
| [CDA - representedCustodianOrganization](StructureDefinition-fr-cda-represented-custodian-organization.md) | L’élément de l’en-tête du CDA representedCustodianOrganization contient les éléments caractérisant la structure conservant le document, à savoir l’identifiant, le nom, les adresses géopostales et de télécommunication. |
| [CDA - representedOrganization](StructureDefinition-fr-cda-represented-organization.md) | L’élément de l’en-tête du CDA representedOrganization permet de représenter la structure pour le compte de laquelle intervient le professionnel. |
| [CDA - serviceEvent](StructureDefinition-fr-cda-service-event.md) | L’élément de l’en-tête du CDA serviceEvent permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. L’occurrence de documentationOf/serviceEvent contenant les données de l’évènement documenté principal doit inclure un élément effectiveTime et un élément performer renseignés, sans recours à l’attribut nullFlavor. |

### Profils FHIR entête 

| | |
| :--- | :--- |
| [FR Bundle Document](StructureDefinition-fr-bundle-document.md) | Ce profil permet d’assembler les éléments de l’en-tête et du corps d’un document. |
| [FR Composition Document](StructureDefinition-fr-composition-document.md) | Ce profil est utilisé pour représenter un document médical. |
| [FR Device Document](StructureDefinition-fr-device-auteur-document.md) | Ce profil représente le système auteur du document. |
| [FR Encounter Care Document](StructureDefinition-fr-encounter-care-document.md) | Ce profil représente l’association du document à une prise en charge. |
| [FR Location Document](StructureDefinition-fr-location-document.md) | Ce profil représente le lieu de la prise en charge. |
| [FR Organization Document](StructureDefinition-fr-organization-document.md) | Ce profil représente la structure pour le compte de laquelle intervient le professionnel. |
| [FR Patient Document](StructureDefinition-fr-patient-document.md) | Ce profil représente le patient concerné par le document. |
| [FR Patient INS Document](StructureDefinition-fr-patient-ins-document.md) | Ce profil représente le patient concerné par le document. |
| [FR Practitioner Document](StructureDefinition-fr-practitioner-document.md) | Ce profil permet de décrire un professionnel de santé dans le cadre d’un document médical |
| [FR PractitionerRole Document](StructureDefinition-fr-practitionerRole-document.md) | Ce profil représente les professionnels de santé et leurs rôles dans le cadre d’un document médical. |
| [FR RelatedPerson Document](StructureDefinition-fr-related-person-document.md) | Ce profil représente l’informateur non professionnel. |

### Data Type Profiles 

| | |
| :--- | :--- |
| [FR Human Name Document](StructureDefinition-fr-human-name-document.md) | Ce profil correspond au type de données HumanName utilisé dans le document. |

### Extensions FHIR 

| | |
| :--- | :--- |
| [FR Author Time Extension](StructureDefinition-fr-author-time-extension.md) | Extension permettant d’ajouter un horodatage (TS) à l’élément author d’une Composition. |
| [FR Performer Event Extension](StructureDefinition-fr-performer-event-extension.md) | Extension permettant d’ajouter un performer à l’élément event d’une Composition. |

### Concept Maps 

| | |
| :--- | :--- |
| [Mapping Métier/CDA/FHIR : Entête d'un document](ConceptMap-mappingmodelemetierCDAFHIR.md) | Ce ConceptMap présente trois groupes de mapping :* Mapping 1 : entre le modèle métier "EnteteDocument" et l’élément CDA "clinicalDocument"
* Mapping 2 : entre l’élément CDA "clinicalDocument" et le profil FHIR "FrBundleDocument"
* Mapping 3 : entre l’élément CDA "clinicalDocument" et le profil FHIR "FrCompositionDocument"
 |
| [Mapping Métier/CDA/FHIR : "Auteur"](ConceptMap-mappingAuteurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "Auteur" et l’élément CDA "author"
* Mapping 2 : entre l’élément CDA "author" et l’élément FHIR "Composition.author"
 |
| [Mapping Métier/CDA/FHIR : "Consentement"](ConceptMap-mappingConsentementCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "ConsentementAssocie" et l’élément CDA "authorization"
* Mapping 2 : entre l’élément CDA "authorization" et l’extension FHIR "ConsentExtension"
 |
| [Mapping Métier/CDA/FHIR : "Destinataire prévu"](ConceptMap-mappingDestinatairePrevuCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "destinataire" et l’élément CDA "informationRecipient"
* Mapping 2 : entre l’élément CDA "informationRecipient" et l’extension FHIR "InformationRecipientExtension"
 |
| [Mapping Métier/CDA/FHIR : "DocumentDeReference"](ConceptMap-mappingDocumentDeReferenceCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "documentDeReference" et l’élément CDA "relatedDocument"
* Mapping 2 : entre l’élément CDA "relatedDocument" et l’élément FHIR "Composition.relatesTo"
 |
| [Mapping Métier/CDA/FHIR : "Evènement documenté"](ConceptMap-mappingEvenementCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 :entre le modèle métier "evenement" et l’élément CDA "documentationOf"
* Mapping 2 : entre l’élément CDA "documentationOf" et l’élément FHIR "Composition.event"
 |
| [Mapping Métier/CDA/FHIR : "Informateur"](ConceptMap-mappingInformateurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "informateur" et l’élément CDA "informant"
* Mapping 2 : entre l’élément CDA "informant" et l’extension FHIR "InformantExtension"
 |
| [Mapping Métier/CDA/FHIR : "Opérateur de saisie"](ConceptMap-mappingOperateurSaisieCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "operateurSaisie" et l’élément CDA "dataEnterer"
* Mapping 2 : entre l’élément CDA "dataEnterer" et l’extension FHIR "DataEntererExtension"
 |
| [Mapping Métier/CDA/FHIR : "Participant"](ConceptMap-mappingParticipantCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "participant" et l’élément CDA "participant"
* Mapping 2 : entre l’élément CDA "participant" et l’extension FHIR "ParticipantExtension"
 |
| [Mapping Métier/CDA/FHIR : "Patient/Usager"](ConceptMap-mappingPatientCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "patient" et l’élément CDA "recordTarget"
* Mapping 2 : entre l’élément CDA "recordTarget" et le profil FHIR "FrPatientDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)"](ConceptMap-mappingPersonneStructureAssignedEntityFHIR.md) | Ce ConceptMap de l’élément PersonneStructure présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "PersonneStructure" et l’élément CDA "assignedEntity"
* Mapping 2 : entre l’élément CDA "assignedEntity" et le profil FHIR "FrPractitionerRoleDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)"](ConceptMap-mappingPersonneStructureAuteurFHIR.md) | Ce ConceptMap de l’élément PersonneStructureAuteur présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "PersonneStructureAuteur" et l’élément CDA "assignedAuthor"
* Mapping 2 : entre l’élément CDA "assignedAuthor" et le profil FHIR "FrPractitionerRoleDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)"](ConceptMap-mappingPersonneStructureRelatedEntityFHIR.md) | Ce ConceptMap de l’élément PersonneStructure présente trois groupes de mapping:* Mapping 1 : entre le modèle métier "FRLMPersonneStructure" et l’élément CDA "relatedEntity"
* Mapping 2 : entre l’élément CDA "relatedEntity" et le profil FHIR "FrRelatedPersonDocument"
* Mapping 3 : entre l’élément CDA "relatedEntity" et l’élément FHIR "Patient.contact"
 |
| [Mapping Métier/CDA/FHIR : "Prescription"](ConceptMap-mappingPrescriptionCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "prescription" et l’élément CDA "inFulfillmentOf"
* Mapping 2 : entre l’élément CDA "inFulfillmentOf" et l’extension FHIR "OrderExtension"
 |
| [Mapping Métier/CDA/FHIR : "Prise en charge"](ConceptMap-mappingPriseEnchargeCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "prise en charge" et l’élément CDA "componentOf"
* Mapping 2 : entre l’élément CDA "componentOf" et l’élément FHIR "Composition.encounter(Encounter)"
 |
| [Mapping Métier/CDA/FHIR : "Responsable du document"](ConceptMap-mappingResponsableCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "responsable" et l’élément CDA "legalAuthenticator"
* Mapping 2 : entre l’élément CDA "legalAuthenticator" et l’élément FHIR "Composition.attester"
 |
| [Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document"](ConceptMap-mappingStructureConservationCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "structureConservation" et l’élément CDA "custodian"
* Mapping 2 : entre l’élément CDA "custodian" et l’élément FHIR "Composition.custodian"
 |
| [Mapping Métier/CDA/FHIR : "Système / Structure Auteur"](ConceptMap-mappingSystemeFHIR.md) | Ce ConceptMap de l’élément SystemeStructureAuteur présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "SystemeStructureAuteur" et l’élément CDA "assignedAuthor"
* Mapping 2 : entre l’élément CDA "assignedAuthor" et le profil FHIR "FrDeviceDocument"
 |
| [Mapping Métier/CDA/FHIR : "Validateur"](ConceptMap-mappingValidateurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "validateur" et l’élément CDA "authenticator"
* Mapping 2 : entre l’élément CDA "authenticator" et l’élément FHIR "Composition.attester"
 |
| [Mapping ValueSet AdministrativeGender](ConceptMap-mappingAdministrativeGender.md) | Mapping entre les codes du ValueSet FHIR AdministrativeGender et ceux du ValueSet JDV_J143-AdministrativeGender-CISIS établi par ce ConceptMap. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR ValueSet Participation Type](ValueSet-fr-doc-vs-participation-type.md) | Type de participation : destinataire |
| [Fr ValueSet RolePriseCharge](ValueSet-fr-doc-vs-role-prise-charge.md) | Pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle). |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [Binary/BIO-CR-BIO-2024.01-Microbiologie-V1](Binary-BIO-CR-BIO-2024.01-Microbiologie-V1.md) |
| [Binary/BIO-CR-BIO-2024.01-glycemie-mole](Binary-BIO-CR-BIO-2024.01-glycemie-mole.md) |
| [Binary/IPS-FR-2024.01](Binary-IPS-FR-2024.01.md) |
| [Binary/LDL-SES-2022.01](Binary-LDL-SES-2022.01.md) |
| [Binary/eDISP-MED-2024.01](Binary-eDISP-MED-2024.01.md) |
| [Binary/eP-MED-DM-2024.01-PosoNonStruct](Binary-eP-MED-DM-2024.01-PosoNonStruct.md) |
| [Binary/eP-MED-DM-2024.01-PosoStruct](Binary-eP-MED-DM-2024.01-PosoStruct.md) |

