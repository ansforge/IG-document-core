/*
* extension[accessionNumber].value[x] only Identifier */
Alias: $fr-core-order = https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-order
Extension: AccessionNumberExtension
Id: ps3-20
Title: "AccessionNumberExtension"
Description: "ps3-20:accessionNumber est une extension pour l’imagerie."
Context: $fr-core-order#.
* ^url = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/ps3-20"
* ^identifier.system = "urn:dicom-org:ps3-20"
* extension contains
    accessionNumber 0..1
* extension[accessionNumber] only Extension
* extension[accessionNumber] ^short = "ps3-20:accessionNumber est une extension pour l’imagerie."
* extension[accessionNumber].url only uri
* url = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/ps3-20" (exactly)