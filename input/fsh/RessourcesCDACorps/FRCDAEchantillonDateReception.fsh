Profile: FRCDAEchantillonDateReception
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-echantillon-date-reception
Title: "CDA - FR Echantillon date reception"
Description: "Entrée FR-Echantillon-date-reception: <p>IHE-APSR - SpecimenReceived</p>
   <ul>
      <li>
         <p>Cet élément est un élément de type act qui permet de fournir la date de réception d’un échantillon.</p>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frEchantillonDateReception 1..1
and iheSpecimenReceived 1..1

* templateId[frEchantillonDateReception] 1..1
* templateId[frEchantillonDateReception].root = "1.2.250.1.213.1.1.3.107"
* templateId[frEchantillonDateReception] ^short = "Conformité FR-Echantillon-date-reception (CI-SIS)"
* templateId[iheSpecimenReceived] 1..1
* templateId[iheSpecimenReceived].root = "1.3.6.1.4.1.19376.1.3.1.3"
* templateId[iheSpecimenReceived] ^short = "Conformité Specimen Received (IHE PALM)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #SPRECEIVE
* code.codeSystem = "1.3.5.1.4.1.19376.1.5.3.2"
* code.codeSystemName = "IHEActCode"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de réception de l'échantillon"


