; 
; script with gui for AHKv2
;
#Requires AutoHotkey v2.0-beta
#NoTrayIcon
#SingleInstance Ignore
setKeyDelay 50, 50
setMouseDelay 50
#maxThreadsPerHotkey 10 ;important to disable after loop is enabled
SetWorkingDir A_ScriptDir

CoordMode "Pixel", "Screen"

Global counter2 :=0
Global maxloop2 :=100

Global oGui

global myList := [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
global mouselocations := [






[481, 424], ;cannon location 1
[1000, 424], ;cannon location 2





]


WinSGui()
WinSGui() {
	global mouselocations
    Global oGui
    oGui := Gui("AlwaysOnTop Resize MinSize +DPIScale","")
    oGui.OnEvent("Close",WinSClose)
    oGui.Add("Text","w250","YingNoob")
    oGui.Add("Text","w250","WARNING! it will click on the first screen you got! ")
    oGui.Add("Text","w250","WARNING! Drawn location can be off!@")
    oGui.Add("Text","w250","Restart after stopping ( bugged )")   
    oGui.Add("Text","w250"," ")
    oGui.Add("Checkbox"," w150 h15 vEnableMouse1","Run script (F3)").OnEvent("Click",startcb)
    oGui.Add("Text","w250"," ")
    oGui.Show("NoActivate")

    oGui.Move(200,150)  ;;;;; start up locattiioonn



; add more of each (this draws location on screen)


     Loop
	{
	    if (A_Index >  mouselocations.Length)
	        break
  		 createNewGui(A_Index,0,0,true,"0xFF0000")
    		 setlocation(A_Index,mouselocations[A_Index][1], mouselocations[A_Index][2]) 
	}



}


setlocation(id,locationx,locationy){
      global myList
	GuiObj := GuiFromHwnd(myList[id])
      if(GuiObj!="")
	{
		GuiObj.Move(locationx-6,locationy-6)
	}
} 

createNewGui(id,locationx,locationy,boolround,colll){

	 global myList
	
       oGuix := Gui("AlwaysOnTop -Caption MinSize +DPIScale  E0x20","Use hotkeysr")
	 oGuix.BackColor := colll
       oGuix.Show("NoActivate w70 h70 NA")
	 oGuix.Move(locationx,locationy)
	 WinSetTransparent 98, oGuix.Hwnd

	 if(boolround){
        	finalRegion := DllCall("CreateEllipticRgn", "Int", 0, "Int", 0, "Int", 12, "Int", 12)
            DllCall("SetWindowRgn", "UInt", oGuix.Hwnd, "UInt", finalRegion, "UInt", true)
	 }
	
	 myList[id]:=oGuix.Hwnd


	;GuiFromHwnd(MyGui.Hwnd).Title

}




WinSClose(GuiObj) {
    ExitApp
}

Global instance :=0

startcb(*) {
	if(oGui["EnableMouse1"].Value==1)
	{
		start()
	}
}
start(*) {

       Global instance
        if(instance==0){
 		instance :=1
		while (oGui["EnableMouse1"].Value==1)
		{
		     
		      doLoop1()
       		}
       		instance :=0	
       }
}
;hotkey name down here this is f3 ( $f3:: )
$f3::{
	oGui["EnableMouse1"].Value := !oGui["EnableMouse1"].Value
	if(oGui["EnableMouse1"].Value==1)
	{
		start()
	}
}

clicklocation(iddddd){


		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		if (Random(6543,7123)=6666){
			
		 Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)
		}



		Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)


		Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)


		Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)


		Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)


		Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)


		Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)


		Click mouselocations[iddddd][1], mouselocations[iddddd][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
	         sleep Random(195,302)


                sleep Random(15000,15302)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}


		if (Random(5555,7777)=6666){
			sleep Random(10,777)
		}
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}

		if (Random(5555,7777)=6666){
			sleep Random(10,777)
		}
			    if(oGui["EnableMouse1"].Value!=1){
			return
		}


}


doLoop1() {  

	Loop
	{
	    if (A_Index >  mouselocations.Length)
	        break
	    clicklocation(A_Index)
	}

	
		
}
