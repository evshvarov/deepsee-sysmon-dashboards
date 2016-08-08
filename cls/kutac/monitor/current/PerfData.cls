/// kutac.monitor.current.PerfData
Class kutac.monitor.current.PerfData Extends %DeepSee.KPI
{

Parameter DOMAIN;

Parameter RESOURCE;

/// This XData definition defines the KPI.
XData KPI [ XMLNamespace = "http://www.intersystems.com/deepsee/kpi" ]
{
<kpi xmlns="http://www.intersystems.com/deepsee/kpi"
 name="CurrPerfData" sourceType="sql"
 caption="Current Performance Data"
 sql="SELECT top 1 * FROM SYS_History.PerfData order by DateTime Desc"
>
<property columnNo="1" name="ID" />
<property columnNo="2" name="DateTime" />
<property columnNo="3" name="PerfGloRef" />
</kpi>
}

/// Notification that this KPI is being executed.
/// This is a good place to override properties, such as range and threshold.
Method %OnLoadKPI() As %Status
{
	Quit $$$OK
}

/// Return an SQL statement to execute.
Method %OnGetSQL(ByRef pSQL As %String) As %Status
{
	Quit $$$OK
}

/// This callback is invoked from a dashboard when an action defined by this dashboard is invoked.
ClassMethod %OnDashboardAction(pAction As %String, pContext As %ZEN.proxyObject) As %Status
{
	// pAction is the name of the action (as defined in the XML list).
	// pContext contains information from the client
	// and can be used to return information.
	Quit $$$OK
}

}

