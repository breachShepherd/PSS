function startPs ($names)
{ 
$checkList =$names.Split(" ");
$process = Get-Process;
for($i=0; $i -lt $process.Length; $i++)
{
if($checkList.Contains($process[$i].ProcessName))
{
return $process[$i].ProcessName;
}
} 
return "No AV found";
} 
startPs "ALMon Alsvc SAVAdminService SavService CSFalconService AvastSvc Avastgui PSUAMain PSUAService PSANHost egui ekrn avgcsrva avgemca avgfwsa avgidsagenta avgnsa avgsvca avgui avguix avgwdsvca AVGUI AVGSvc EndpointService EndpointIntegration BITS DevMgmtService ProductAgentService bdagent ZoneAlarmUpdate ZoneAlarmCrashHandler64 ZoneAlarmCrashHandler ZA_WSC ZANG_MgrSvc ZANG_AV UI_Main AR_Service"