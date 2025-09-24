Profile: FrDocumentCoding
Parent: Coding
Id: fr-document-coding
Title: "Coding avec qualifiers et translations"
Description: """Ce profil étend les capacités du type de données de codage pour prendre en charge les qualifiers (permet d'apporter une précision sur l'élément concerné)"""
* system 1..1 MS
* code 1..1 MS
* extension contains FrQualifierExtension named qualifier 0..*