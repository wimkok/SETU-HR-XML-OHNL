<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <title>Validations for StatusAssignment Mapping; strict=false</title>
  <ns prefix="hrxml" uri="http://ns.hr-xml.org/2007-04-15" />
  <ns prefix="setu" uri="http://ns.setu.nl/2012-01" />
  <pattern id="cardinality-redefines">
    <rule context="hrxml:Assignment">
      <assert test="count(hrxml:AssignmentId) &lt;= 1">hrxml:Assignment may contain hrxml:AssignmentId at most 1 time(s)</assert>
      <assert test="count(hrxml:UserArea) &gt;= 1">hrxml:Assignment must contain hrxml:UserArea at least 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:AssignmentId">
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:AssignmentId may contain hrxml:IdValue at most 1 time(s)</assert>
      <assert test="count(@idOwner) &gt;= 1">hrxml:Assignment/hrxml:AssignmentId must contain @idOwner at least 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:CustomerReportingRequirements">
      <assert test="count(hrxml:AdditionalRequirement) &gt;= 2">hrxml:Assignment/hrxml:CustomerReportingRequirements must contain hrxml:AdditionalRequirement at least 2 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:CustomerReportingRequirements/hrxml:AdditionalRequirement">
      <assert test="count(@requirementTitle) &gt;= 1">hrxml:Assignment/hrxml:CustomerReportingRequirements/hrxml:AdditionalRequirement must contain @requirementTitle at least 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:Rates">
      <assert test="count(hrxml:Multiplier) &lt;= 1">hrxml:Assignment/hrxml:Rates may contain hrxml:Multiplier at most 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:Rates/hrxml:CustomerRateClassification">
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:Rates/hrxml:CustomerRateClassification may contain hrxml:IdValue at most 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:Rates/hrxml:ExternalRateSetId">
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:Rates/hrxml:ExternalRateSetId may contain hrxml:IdValue at most 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:Rates/hrxml:RatesId">
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:Rates/hrxml:RatesId may contain hrxml:IdValue at most 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:ReferenceInformation">
      <assert test="count(hrxml:OrderId) &lt;= 1">hrxml:Assignment/hrxml:ReferenceInformation may contain hrxml:OrderId at most 1 time(s)</assert>
      <assert test="count(hrxml:StaffingSupplierId) &lt;= 3">hrxml:Assignment/hrxml:ReferenceInformation may contain hrxml:StaffingSupplierId at most 3 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:ReferenceInformation/hrxml:HumanResourceId">
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:HumanResourceId may contain hrxml:IdValue at most 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:ReferenceInformation/hrxml:OrderId">
      <assert test="count(@idOwner) &gt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:OrderId must contain @idOwner at least 1 time(s)</assert>
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:OrderId may contain hrxml:IdValue at most 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingCustomerId">
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingCustomerId may contain hrxml:IdValue at most 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingCustomerOrgUnitId">
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingCustomerOrgUnitId may contain hrxml:IdValue at most 1 time(s)</assert>
      <assert test="count(@idOwner) &gt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingCustomerOrgUnitId must contain @idOwner at least 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingSupplierId">
      <assert test="count(@idOwner) &gt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingSupplierId must contain @idOwner at least 1 time(s)</assert>
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingSupplierId may contain hrxml:IdValue at most 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingSupplierOrgUnitId">
      <assert test="count(hrxml:IdValue) &lt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingSupplierOrgUnitId may contain hrxml:IdValue at most 1 time(s)</assert>
      <assert test="count(@idOwner) &gt;= 1">hrxml:Assignment/hrxml:ReferenceInformation/hrxml:StaffingSupplierOrgUnitId must contain @idOwner at least 1 time(s)</assert>
    </rule>
    <rule context="hrxml:Assignment/hrxml:UserArea">
      <assert test="count(setu:AssignmentAdditionalNL) &gt;= 1 and count(setu:AssignmentAdditionalNL) &lt;= 1">hrxml:Assignment/hrxml:UserArea must contain setu:AssignmentAdditionalNL at least 1 and at most 1 time(s)</assert>
    </rule>
  </pattern>
  <pattern id="type-restrictions">
    <rule context="hrxml:Assignment">
      <assert test="empty(@assignmentStatus) or (@assignmentStatus='active') or (@assignmentStatus='cancelled') or (@assignmentStatus='revised') or (@assignmentStatus='x:rejected')">Allowed values: [active, cancelled, revised, x:rejected]</assert>
    </rule>
  </pattern>
</schema>
