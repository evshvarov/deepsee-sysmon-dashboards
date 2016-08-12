/// 
Class kutac.monitor.cubes.HistoryPerfDataWD Extends %DeepSee.CubeDefinition [ DependsOn = kutac.monitor.history.PerfDataWD, ProcedureBlock ]
{

Parameter DOMAIN = "SYSMON";

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="HistoryPerfDataWD" displayName="HistoryPerfDataWD" disabled="false" abstract="false" sourceClass="kutac.monitor.history.PerfDataWD" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0">
  <dimension name="WDStatusFlags" disabled="false" hasAll="false" allCaption="All WDStatusFlags" allDisplayName="WDStatusFlags" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false">
      <level sourceProperty="WDStatusFlags" name="WDStatusFlags" disabled="false" list="false" useDisplayValue="true" useAsFilter="true">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="Measurement Date" disabled="false" hasAll="false" allCaption="All Measurement Date and Time" allDisplayName="Measurement Date and Time" sourceExpression="$zdth(%source.mTS,3)" type="time" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false">
      <level name="Month" disabled="false" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true">
      </level>
      <level name="Day" disabled="false" timeFunction="DayNumber" list="false" useDisplayValue="true" useAsFilter="true">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="Measurement Time" disabled="false" hasAll="false" allCaption="All TM" allDisplayName="TM" sourceExpression="$zdth(%source.mTS,3)" type="time" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false">
      <level name="Hour" disabled="false" timeFunction="HourNumber" list="false" useDisplayValue="true" useAsFilter="true">
      </level>
      <level name="Minute" disabled="false" timeFunction="MinuteNumber" list="false" useDisplayValue="true" useAsFilter="true">
      </level>
    </hierarchy>
  </dimension>
  <measure sourceProperty="WDBufferRedirty" name="WDBufferRedirty" disabled="false" aggregate="AVG" type="number" hidden="false" searchable="false"></measure>
  <measure sourceProperty="WDBufferWrite" name="WDBufferWrite" disabled="false" aggregate="AVG" type="number" hidden="false" searchable="false"></measure>
  <measure sourceProperty="WDCycleTime" name="WDCycleTime" disabled="false" aggregate="AVG" type="number" hidden="false" searchable="false"></measure>
  <measure sourceProperty="WDprocInGlobal" name="WDprocInGlobal" disabled="false" aggregate="AVG" type="number" hidden="false" searchable="false"></measure>
  <measure sourceProperty="WDSizeWrite" name="WDSizeWrite" disabled="false" aggregate="AVG" type="integer" hidden="false" searchable="false"></measure>
  <measure sourceProperty="WDSleep" name="WDSleep" disabled="false" aggregate="AVG" type="integer" hidden="false" searchable="false"></measure>
  <measure sourceProperty="WDTempQueue" name="WDTempQueue" disabled="false" aggregate="AVG" type="number" hidden="false" searchable="false"></measure>
  <measure sourceProperty="WDTempWrite" name="WDTempWrite" disabled="false" aggregate="AVG" type="number" hidden="false" searchable="false"></measure>
  <measure sourceProperty="WDWIJTime" name="WDWIJTime" disabled="false" aggregate="AVG" type="number" hidden="false" searchable="false"></measure>
  <measure sourceProperty="WDWriteTime" name="WDWriteTime" disabled="false" aggregate="AVG" type="number" hidden="false" searchable="false"></measure>
</cube>
}

}

