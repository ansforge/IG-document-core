<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Observation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:nullFlavor) &lt;= 0">nullFlavor: maximum cardinality of 'nullFlavor' is 0</sch:assert>
      <sch:assert test="count(f:realmCode) &lt;= 0">realmCode: maximum cardinality of 'realmCode' is 0</sch:assert>
      <sch:assert test="count(f:typeId) &lt;= 0">typeId: maximum cardinality of 'typeId' is 0</sch:assert>
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:derivationExpr) &lt;= 0">derivationExpr: maximum cardinality of 'derivationExpr' is 0</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:statusCode) &gt;= 1">statusCode: minimum cardinality of 'statusCode' is 1</sch:assert>
      <sch:assert test="count(f:effectiveTime) &gt;= 1">effectiveTime: minimum cardinality of 'effectiveTime' is 1</sch:assert>
      <sch:assert test="count(f:priorityCode) &lt;= 0">priorityCode: maximum cardinality of 'priorityCode' is 0</sch:assert>
      <sch:assert test="count(f:repeatNumber) &lt;= 0">repeatNumber: maximum cardinality of 'repeatNumber' is 0</sch:assert>
      <sch:assert test="count(f:languageCode) &lt;= 0">languageCode: maximum cardinality of 'languageCode' is 0</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:interpretationCode) &lt;= 0">interpretationCode: maximum cardinality of 'interpretationCode' is 0</sch:assert>
      <sch:assert test="count(f:methodCode) &lt;= 0">methodCode: maximum cardinality of 'methodCode' is 0</sch:assert>
      <sch:assert test="count(f:targetSiteCode) &lt;= 0">targetSiteCode: maximum cardinality of 'targetSiteCode' is 0</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 0">subject: maximum cardinality of 'subject' is 0</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 0">specimen: maximum cardinality of 'specimen' is 0</sch:assert>
      <sch:assert test="count(f:performer) &lt;= 0">performer: maximum cardinality of 'performer' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:informant) &lt;= 0">informant: maximum cardinality of 'informant' is 0</sch:assert>
      <sch:assert test="count(f:participant) &lt;= 1">participant: maximum cardinality of 'participant' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 0">reference: maximum cardinality of 'reference' is 0</sch:assert>
      <sch:assert test="count(f:precondition) &lt;= 0">precondition: maximum cardinality of 'precondition' is 0</sch:assert>
      <sch:assert test="count(f:sdtcPrecondition2) &lt;= 0">sdtcPrecondition2: maximum cardinality of 'sdtcPrecondition2' is 0</sch:assert>
      <sch:assert test="count(f:referenceRange) &lt;= 0">referenceRange: maximum cardinality of 'referenceRange' is 0</sch:assert>
      <sch:assert test="count(f:sdtcInFulfillmentOf1) &lt;= 0">sdtcInFulfillmentOf1: maximum cardinality of 'sdtcInFulfillmentOf1' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:templateId</sch:title>
    <sch:rule context="f:Observation/f:templateId">
      <sch:assert test="count(f:nullFlavor) &lt;= 0">nullFlavor: maximum cardinality of 'nullFlavor' is 0</sch:assert>
      <sch:assert test="count(f:assigningAuthorityName) &lt;= 0">assigningAuthorityName: maximum cardinality of 'assigningAuthorityName' is 0</sch:assert>
      <sch:assert test="count(f:displayable) &lt;= 0">displayable: maximum cardinality of 'displayable' is 0</sch:assert>
      <sch:assert test="count(f:root) &gt;= 1">root: minimum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:root) &lt;= 1">root: maximum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:nullFlavor) &lt;= 0">nullFlavor: maximum cardinality of 'nullFlavor' is 0</sch:assert>
      <sch:assert test="count(f:assigningAuthorityName) &lt;= 0">assigningAuthorityName: maximum cardinality of 'assigningAuthorityName' is 0</sch:assert>
      <sch:assert test="count(f:displayable) &lt;= 0">displayable: maximum cardinality of 'displayable' is 0</sch:assert>
      <sch:assert test="count(f:root) &gt;= 1">root: minimum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:root) &lt;= 1">root: maximum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:nullFlavor) &lt;= 0">nullFlavor: maximum cardinality of 'nullFlavor' is 0</sch:assert>
      <sch:assert test="count(f:assigningAuthorityName) &lt;= 0">assigningAuthorityName: maximum cardinality of 'assigningAuthorityName' is 0</sch:assert>
      <sch:assert test="count(f:displayable) &lt;= 0">displayable: maximum cardinality of 'displayable' is 0</sch:assert>
      <sch:assert test="count(f:root) &gt;= 1">root: minimum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:root) &lt;= 1">root: maximum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:nullFlavor) &lt;= 0">nullFlavor: maximum cardinality of 'nullFlavor' is 0</sch:assert>
      <sch:assert test="count(f:assigningAuthorityName) &lt;= 0">assigningAuthorityName: maximum cardinality of 'assigningAuthorityName' is 0</sch:assert>
      <sch:assert test="count(f:displayable) &lt;= 0">displayable: maximum cardinality of 'displayable' is 0</sch:assert>
      <sch:assert test="count(f:root) &gt;= 1">root: minimum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:root) &lt;= 1">root: maximum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:nullFlavor) &lt;= 0">nullFlavor: maximum cardinality of 'nullFlavor' is 0</sch:assert>
      <sch:assert test="count(f:assigningAuthorityName) &lt;= 0">assigningAuthorityName: maximum cardinality of 'assigningAuthorityName' is 0</sch:assert>
      <sch:assert test="count(f:displayable) &lt;= 0">displayable: maximum cardinality of 'displayable' is 0</sch:assert>
      <sch:assert test="count(f:root) &gt;= 1">root: minimum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:root) &lt;= 1">root: maximum cardinality of 'root' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:statusCode</sch:title>
    <sch:rule context="f:Observation/f:statusCode">
      <sch:assert test="count(f:nullFlavor) &lt;= 0">nullFlavor: maximum cardinality of 'nullFlavor' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:codeSystem) &lt;= 0">codeSystem: maximum cardinality of 'codeSystem' is 0</sch:assert>
      <sch:assert test="count(f:codeSystemName) &lt;= 0">codeSystemName: maximum cardinality of 'codeSystemName' is 0</sch:assert>
      <sch:assert test="count(f:codeSystemVersion) &lt;= 0">codeSystemVersion: maximum cardinality of 'codeSystemVersion' is 0</sch:assert>
      <sch:assert test="count(f:displayName) &lt;= 0">displayName: maximum cardinality of 'displayName' is 0</sch:assert>
      <sch:assert test="count(f:sdtcValueSet) &lt;= 0">sdtcValueSet: maximum cardinality of 'sdtcValueSet' is 0</sch:assert>
      <sch:assert test="count(f:sdtcValueSetVersion) &lt;= 0">sdtcValueSetVersion: maximum cardinality of 'sdtcValueSetVersion' is 0</sch:assert>
      <sch:assert test="count(f:originalText) &lt;= 0">originalText: maximum cardinality of 'originalText' is 0</sch:assert>
      <sch:assert test="count(f:qualifier) &lt;= 0">qualifier: maximum cardinality of 'qualifier' is 0</sch:assert>
      <sch:assert test="count(f:translation) &lt;= 0">translation: maximum cardinality of 'translation' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:effectiveTime</sch:title>
    <sch:rule context="f:Observation/f:effectiveTime">
      <sch:assert test="count(f:nullFlavor) &lt;= 0">nullFlavor: maximum cardinality of 'nullFlavor' is 0</sch:assert>
      <sch:assert test="count(f:value) &lt;= 0">value: maximum cardinality of 'value' is 0</sch:assert>
      <sch:assert test="count(f:operator) &lt;= 0">operator: maximum cardinality of 'operator' is 0</sch:assert>
      <sch:assert test="count(f:low) &gt;= 1">low: minimum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:center) &lt;= 0">center: maximum cardinality of 'center' is 0</sch:assert>
      <sch:assert test="count(f:width) &lt;= 0">width: maximum cardinality of 'width' is 0</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
