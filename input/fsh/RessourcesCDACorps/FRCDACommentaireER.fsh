Profile: FRCDACommentaireER
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-commentaire-er
Title: "CDA - FR Commentaire ER"
Description: "Entrée FR-Commentaire-ER: <p>IHE-PCC - Comments <br/>
   </p>
   <p>L’entrée FR-Commentaire-ER est un élément qui permet de joindre un commentaire à une entrée ou à une section. </p>
   <ul>
      <li>
         <p> Note : IHE PCC a limité l’utilisation de l’élément « Comments » (1.3.6.1.4.1.19376.1.5.3.1.4.2) aux entrées de type observation et organizer. </p>
      </li>
      <li>
         <p>Ce n’est pas le cas dans CDD pour l’élément « Comment » (2.16.840.1.113883.10.20.1.40).</p>
      </li>
      <li>
         <p> Dans le CI-SIS, le choix a été fait de ne pas limiter l’utilisation de l’entrée FR-Commentaire-ER (1.3.6.1.4.1.19376.1.5.3.1.4.2) comme dans CCD. </p>
      </li>
      <li>
         <p>Lorsque l’entrée FR-Commentaire-ER est utilisée dans une entrée : </p>
         <ul>
            <li>
               <p>de type organizer : l’utiliser dans un élément component avec l’attribut type-Code=\"COMP\".</p>
            </li>
            <li>
               <p>de type observation ou act, etc… : l’utiliser dans un élément entryRelationship avec les attributs typeCode=\"SUBJ\" et inversionInd=\"true\". </p>
            </li>
         </ul>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdComment 1..1
and iheCommentEntry 1..1
and frCommentaireER 1..1

* templateId[ccdComment] 1..1
* templateId[ccdComment].root = "2.16.840.1.113883.10.20.1.40"
* templateId[ccdComment] ^short = "Conformité Comment (CCD) "
* templateId[iheCommentEntry] 1..1
* templateId[iheCommentEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.2"
* templateId[iheCommentEntry] ^short = "Conformité Comment Entry (IHE PCC)"
* templateId[frCommentaireER] 1..1
* templateId[frCommentaireER].root = "1.2.250.1.213.1.1.3.32"
* templateId[frCommentaireER] ^short = "Conformité FR-Commentaire-ER (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #48767-8
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Texte du commentaire"

* statusCode.code MS
* statusCode.code = #completed



