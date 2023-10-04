bcdedit /set x2apicpolicy Enable

bcdedit /set configaccesspolicy Default

bcdedit /set MSI Default

bcdedit /set usephysicaldestination No

bcdedit /set usefirmwarepcisettings No

bcdedit /deletevalue useplatformclock

bcdedit /deletevalue disabledynamictick

bcdedit /set useplatformtick Yes

bcdedit /set tscsyncpolicy Enhanced

bcdedit /set vsmlaunchtype Off

bcdedit /set vm No

bcdedit /set allowedinmemorysettings 0x0

bcdedit /set isolatedcontext No