Profile: FRAccessionNumberIdentifierImagingDocument
Parent: Identifier
Id: fr-accession-number-identifier-imaging-document
Title: "FR Accession Number Identifier Imaging Document"
Description: "DataType définissant l'Accession Number d'une demande d'examen d'imagerie. Il s'agit d'un identifiant unique attribué à chaque demande d'examen."

* type 1..1 MS
* type.coding 1..1 MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* type.coding.code = #ACSN
* type.coding.display = "Accession ID"

* system 0..1 MS
* system ^short = "L'espace de nommage pour l'identifiant"

* value 1..1 MS
* value ^short = "La valeur de l'identifiant"

Mapping: DicomToAccessionNumber
Source: FRAccessionNumberIdentifierImagingDocument
Target: "http://nema.org/dicom"
Title: "Mapping from Accession Number Identifier to DICOM"
Description: "Mapping from Accession Number Identifier to DICOM"
* value -> "AccessionNumber (0008,0050)"