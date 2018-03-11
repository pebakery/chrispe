 Wireless networking is not supported in WinPE - connect the 
 PC to a router using an ethernet cable before booting. 

 If the network card is supported then an IP address will be
 assigned to the system if a DHCP server is running - most 
 routers include (and run) this feature by default. If a static 
 IP address needs to be assigned then check the instructions
 at the end of this file.




  1] Running the menu option "Network > Start" will 
     execute the command -

        wpeutil InitializeNetwork 

     ...this will initializes network components and 
     drivers, and sets the computer name to a randomly
     chosen value.



  2] Try connecting to the internet. If there is no
     connection then it's likely that the network card
     is not supported (or a DHCP server is not running).
     Running the command "ipconfig /all" will list any
     assigned IP addresses. To install drivers see
     below.



  3] Copy the driver files (INF/CAT/SYS etc) and run the
     command "drvload #:\DRIVERS\xxxx.inf" where 
     "#:\DRIVERS\xxxx.inf" is the path to the network
     driver file. 



  4] Wait for one minute and re-run the command "ipconfig
     /all" to check if an IP address has been assigned. If 
     not, try running the command "netcfg -winpe" to 
     re-initialise the network stack
 


 =============================================================

 To assign a static IP address, use the following netsh commands -


     netsh int ip set address local static [IP] [SUBNET] [GATEWAY]
     netsh int ip set dns local static [GATEWAY] primary

 Where 
     [IP] is the IP address to be assigned to the WinPE system
     [SUBNET] is the subnet mask to be assigned to WinPE
     [GATEWAY] is the IP address assigned to the router

=============================================================

NOTE - 	THE COMMAND SYNTAX APPEARS TO HAVE CHANGED IN WINPE 4.0/5.0 -
	IF RUNNING EITHER OF THESE VERSIONS, TRY THE FOLLOWING -

     netsh interface ipv4 set address [NAME] static [IP] [SUBNET] [GATEWAY]

 Where 
     [NAME] 	- name of the adaptor (e.g. Ethernet) - run the 
		  command "netsh interface ipv4 show interfaces"
		  to find this information if required. 
     [IP]	- the IP address to be assigned to the WinPE system
     [SUBNET]	- the subnet mask to be assigned to WinPE
     [GATEWAY]	- the IP address assigned to the router

E.g.
netsh interface ip set address Ethernet static 192.168.1.64 255.255.255.0 192.168.1.254
