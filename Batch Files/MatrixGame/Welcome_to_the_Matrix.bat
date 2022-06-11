@echo off
title The Matrix
color a
mode 1000
:L
set /p n=Enter your name in the Matrix:
set /p p=Enter your Matrix password:
echo Entering the Matrix.Please wait...
Pause
start Matrixloading.bat path
Timeout 5 /NOBREAK
taskkill /FI "WINDOWTITLE eq Loading"
echo Welcome to the Matrix, %n% .
Pause
echo Let me present you to your room:
echo..................................................``````.````.......``..............................
echo...............://-.......................``````````````````````````````````````....................
echo..............-ssss:..........................````````````````````````````````......--..............
echo.............-/yyyo/............................```````````````````````..````.....:yhho.............
echo...........-ohhhhy-.................................`````.```````..................+ooo+/-..........
echo..........-oddddhho-..................................`.....`.......................-:shhh+.........
echo.........--odddmddho................................................................./ddddd:........
echo........-..odddmdddd--..............................................................-+dddmdy........
echo...........:sddddddyoosysyss+//+/...................................::::/++ooo+//+ohddddmmdd/.......
echo........---.+ddmmdmdyyhyhyhyhhdhy/.................................:yhhhhyyyhyhyyy//sdmmmmddy.......
echo............sddddddmhhyhyhyyyydhy:....................`.``.........:yhdyyyyyyhyyys-..hmmmdddd/......
echo............yhdddddddhhhhhhhhhdhy..........................```````.-yhdhyhyyyyhhyo...yyhdddd:.......
echo............-+ddddmdhddhhhhhhhddh:--....-osssssssooossssoso+````...:hdhhhhyhyhhhyo`.```:ddds........
echo.............:dddmmssyhhhyhyhyhdhhhdy...-hhhhhhhhyyyhhyyyyyy``.ohyyhhhyhyyhyyyyyy/`.```.hdds........
echo.............sdddmhosyddyhhyyyhhhhyyh/..-hhyyyyyyyyyyyyyyyyy`.-yyyhhddhhhhyhhysso/``````sddy........
echo............:hdddm++ooyhyhyyyysyyyhhhh..-hhhyhhhhhyhhhhhyyhy`.hyyyyssssssyyyyssoo:``````-hdh-.......
echo............/ddddd-/ooyhhhhhhyyyyyyyhy-.-hhhhyhhyyyyhhyyhhhy`-yyhhyyyyyhhhhhssooo-..`````+dh+.......
echo............/ddddy`++/oyyyssooso+//:so..-hyhhhyyhhhhhyyhhhhs..os/++oosyyyyyysso+s.```````.hdo.......
echo............/ddddo.o-../y-``..:.....o+..-hyyyyyhyhyyyyyyyyyo..++`````:-..-os.```y.`````..:hds..`.``.
echo............+hddddo+-..:y-..........:-..-hhyyyyyhyyyyyyyyyyo..:-.`````````so````:.`````/shhhh-......
echo............/syys:--..../...............:yyyyyyyyyyyyyyyyyyo............../:...........--::::-......
Pause
echo I'm sorry, we're still setting things up.
echo Meet our team:
Pause
echo This is Morpheus, our leader
echo MMMMMMMMo+----------:://+++o++++++++++++/+///++//////::-..`` `.`   -/dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMho/-------:://++oooooo+++++++++oo+++oo+oo++++////::--.```     :yMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMdo----:-:::///++oossssssoooooooooooooooooooo+++++///::-.```    -/dMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMho---:-::::///++ossssssssssssssooooooooooo++oo++o++///::-.```    -+MMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMNs/..-:::::///+oossssssssssooosooossooo+++++///+////////::-.```````osMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMos``.---::///++osooooooo++++++++/+++++++++////:::::::::::--.```````o/MMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMM//```.--::///+++oooo+++++++////::////+////::://::::::::::--.``````./+dMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMdo: ```.---////++ooooooooooo+++o++/++//++/++++++++++//////:--.` ````.yhMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMM/d-   `.---:://///+ooooosssssssyssooosssssssyyyyyyyyysyyyss++:.` ```.hhMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMM/d-   `..:-::::/+osyyyyhhhhhhdddhhhhhhhhhhhhhddmmmmmmmmmmdhyys+/. ```yyMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMh/:  ````.-::/+syhdddmmNNNNNNNNmmdddddddddddmmNNNNNNNNNmmmmdhyyso-```yyMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMM//  ``..---/syhddmmNNNNNNNNNNNNmmmdhhdddddmmNNNNNNNNNNmmNNmmmdhyo..`:ydhdNMMMMMMMMMMMMMMMMMMMMMM
echo MMMMs+  `.:--.:+sydmNNNNNNNNNNNNNNNmNmdhyyyyyhdNNNNNNNNNNmssmNNNmNNms/.`-:o//yshMMMMMMMMMMMMMMMMMMMM
echo MMMMhy  `-::-.-:+hNNNNNmmmmNNNNNNmssmNNmysoosymNmdmNNNNNNm+/omNNNNNNms/-`-:://shMMMMMMMMMMMMMMMMMMMM
echo hsoosy`..-::::::yNmNmysymmmNNNNNNmo+ymNmhysssymNNdNNNNNNNNy++hmmmNNNNh+-`.oos+ysMMMMMMMMMMMMMMMMMMMM
echo :-:::+/:--::/oosommmdhmmNNNNNNNNNNhoomNhoo///+smmNNdhNNNmNdsydmmmNNNmso:.`/os+yoMMMMMMMMMMMMMMMMMMMM
echo -++/ooo+--:/sshhsdmmNNNNNNNhdNNNNNdydmyso+////+sddmhymmmmmmmmmmmmmNdooo+-`-+//ssMMMMMMMMMMMMMMMMMMMM
echo -os+++so..-+ssyyyydmNNNNNNNhdmNNNNNmdhso+//::/+osyhhhNNNmmmmmmmmdhso++oo/.-so/syNMMMMMMMMMMMMMMMMMMM
echo .oo/ys++``-/ossssyyhdmNNNNNddNNNmmmdyso+/:::::/++osyyyhhhdddddhhysoooooo+:-sy+/dyMMMMMMMMMMMMMMMMMMM
echo .o+oyys+ `-:oossyyyhhdmmmmmmmmmddddyso++/::::::/++osyyssossyhhyyyyssssss+/-syo:dsMMMMMMMMMMMMMMMMMMM
echo +//shhhs  .:+osyyhhhhddmmdddddddmdyssooo++++////+oooyhyyssoossyyyyyyyyyso+:ss+:hsMMMMMMMMMMMMMMMMMMM
echo o/:oyhhs` `-/+syyhhhdddddddddddmdsoooosssssssooooo//ohdhysoooossyyyyyyyyo+:o/-/dsMMMMMMMMMMMMMMMMMMM
echo oy.+shhs.``.:+ssyhhhhhdddddddddmsossyssyhhhhhyyyyssoosddhyssssssyyyyyyyys+://:/omMMMMMMMMMMMMMMMMMMM
echo hy-:++yy/```:osssyyyhhhhhhhhdddmhhhdmmhhhhhhhhdmmmdhyyhhhhyyssssyyyyyyyyo+-os/+sMMMMMMMMMMMMMMMMMMMM
echo Mss---+o+.``./ssssyyyyhhhhhhhddhhdmmmmNNmmmmmNNmddhyssosyyssyyssyyyyyyyyo+:/+/ydMMMMMMMMMMMMMMMMMMMM
echo MMo+-.+so- `.:+osssysyhhhhhhhhyyyhdmmmNNNNNNNNmhyysooo+++oooossyyyyyyyyys+:+oymMMMMMMMMMMMMMMMMMMMMM
echo MMN++./oo: `.:++sssysyhhhhyyyyysyyyyyyhhdddmdhyso++++++++++o+oosssssyyyso+-y+NMMMMMMMMMMMMMMMMMMMMMM
echo MMMMs+/:so ``-/+ossssyhyyyyhyyssssosyhhhhhhhhhhhhys++/++++++oooosssysssso+-hoMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMmddyh ``-:++ssssyhyssyyyyysoohhddddddddddddddddhyo+oooooo+ossyyyysso+-hoMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMh+. ..:/+osssysoosyyyyyoyddddmmmmmmmNmNNNNmmmddyssyssso+ossyyyyss+-h+MMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMM//`..:/+oososo+osyhhdhhddmmNNNNmmmmmdddhhhhdmmmdddhyys++ossyyssso:hoNMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMm::`.-:+ossoo+o+shdmmmmmmmddhyyssssssssooooossyyyhhyyys++ssyyssss/ooshhmMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMM:: `-::+oso+oo+shdddddhhyyyyyhyyhhhhhhhyyyyyssoossyyysssssyyyyssshyyo/osNMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMys``.:/+oo++++oshhhhhhhyhhhdddmmmmmmmmmddhyysssosossyyssssyyyyysdNNNd:.//NMMMMMMMMMMMMMMMM
echo MMMMMMMMMMNs:`.-:/o+o+/++syhhhhyhhhhdddmmmmmmmmmddhhyyysyyyyyyyysssyyyyyyhNNNNm+.`+yMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMM+/.-:/o+oo//+osyyyhhhhhhhhdddmmmmmmmdddhhhyyyyyyyyyysssyyyhhdNNNNNm/:.-+hMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMss/:-:/+oo+:/+osyhhhdhhhhddddddddddddhhhhhyyyyyyyysssyyyyyhdNNNNNNd+-:`:/hMMMMMMMMMMMMMM
echo MMMMMMMMMNdyoymm+:///+///:+oyhhhhdhhhhhhhyyyyysssssyyyysyyyyyysssyyyhhyhNNmmNNs//:`.::omMMMMMMMMMMMM
echo MMMMMMMNdd+smNMMN+::-///::+oyyhhhhhhhhyyyyyyyyyyysssssssyyyyyyyyyhhddhyhNNmmdyooo:.-` ++MMMMMMMMMMMM
echo MMMMMMdy+odNMMNMNh://://///+syyyhhhhhhhhhhhhhdddhhhyyyyyyyyyyyhhddmmdhhdNNNmssyyh/.-.../+mMMMMMMMMMM
echo MMMMMyh+ymNMNNNMMNyooo//////osyyhhhdhddddddddmmmdddddhhhhhhhhhdmNNmdhhhdNNdoshhhys::.--`+yMMMMMMMMMM
echo MMMMhs/omNMMNNNNNNmhyyyso+++++ssyhhddddddddmmmmmmmmdddddddddmNNNNmddddhhdysyhhhhhy+:.-.`::NMMMMMMMMM
echo MMMs+/odNNNNNNNmmNNdhddhhyyysoossyhhddddddddmmmmmmmmmmmmmNNNNNNNNmNNmddhsyhddhdhhho:::--`o+MMMMMMMMM
echo MMmy+:hNNNNmmmNNNNMNhdddmmdddmmdhyhhdddddmmmmmmmmmmmNNNNMMMNNNNNNNNmmdyhmmddddhhddo///++:-+mMMMMMMMM
echo MMyy:/dNNNmhyymNNNMNmddmmmmmmNNmmmmmdmmmmmmNNNNNNNNNNNMNNNNNNNNNNmmdhmNNmNdddddddhs+sssyhy:/smMMMMMM
echo MMhh-/dNNNNmmNNMNNMMNmmmmmmmmmmmmNNNNNNNNNNNNNMMMNNNNNNNNNNNNNNmddmNNNNNmmmdddddddhyyhmdddy:/osyyydM
echo MMdo//sNNNNNNNNMMMMMMmdmmmNNNNmNNNNNNNNNNNNNNNNNNNNNMNNNNNNNmdmmNNNNNNNNNNmmdddddmmmmNmmdds/-//+:/+y
echo MMMd+-/yMNNNNNNNNNMMMNmmmNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMNNNNNNNNNmddmmNNNNNNmdysoys:-:::::
echo MMMM/:-/hNNNNMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmmmhysyhs/+///::-
echo MMMMhh../sNMMMMMNNNNMNNNNNNNNNNNNNNNNNNNNNNNMNNNNNNNNMMNNNNNNNNNNNNNNMMMNNNNNNNNNNNNmdyydhooo++/////
Pause
echo (Morpheus) Morpheus speaking. Hello,%n%. Welcome to the team. I see you've been to your room. Nice. These are Neo and Trinity, the best people I know. Speak to them quickly, because we will have an exausting day tomorrow. Goodnight.
Pause
echo  (Neo) I am pleased to meet you,%n%.  Tomorrow we will fight the agents at the south subway station at Mega City to retrieve the code to decipher the file containing the password  needed to open up the gates at North Railway,356, an abandoned house with a  computer remotely controlled by the Matrix's center of operations. The computer is responsable for spawning 3/7ths of the agents at Mega City. Meet me in two hours so that I can upload the close combat data to your brain so that you can help us tomorrow. See you soon.
echo                                     :mNMMNMNMMMMMMMMMN+                                           
echo                                     /MMMNdysyys//sdNMMMM/                                          
echo                                    hMNms/-..`` ```-omMMm`                                         
echo                                    mMNhs+:...``````./mMM+                                         
echo                                   `NMNhs+:-..``````.:dMMd                                         
echo                                  `NNNmhyo/---:/+o+//dMMN                                         
echo                                   hMMMMMMNy:mNMMMMNmhMMN`                                        
echo                                   mNMMMMNNo`sNMMMMNh/Ny+`                                        
  echo                                 .Nmmdysod/`.:++//:--h/:`                                        
   echo                                :Ndmh+:oho::.```.-::-.-                                         
echo                                    oymms+mNdso....-//::.`                                         
echo                                     .mmhhdds+/::--://:o                                           
echo                                       sddmdhyso+++:/++:.                                           
  echo                                      `+ddho+/:::/oshho.                                           
  echo                                       `yhhso+++ohmNmdho`                                          
   echo                                      .ddddmmNNNNNmmdhh+                                          
   echo                                      :MMNmNMMMNNNmmdddy+.                                        
    echo                                     oMMMMMMNNNNmmmmdddhs+::-.``                                 
   echo                                      yMMMNNNNmmmmmdmddhhhhhhhyyso+/-.``                          
     echo                                   .NMMMNmmmmmmmmdddddddddddhhhhhyyyso/:.                       
   echo                                  `-smMMMNNNNmmmmmmmdmdmddddddddddhdhhyyyys:                      
   echo                                `/hNMMMMNNNmNNmmmmmmmmmdmddddddddddddhhhhyys/                     
     echo                           `-smNMNNNNNNmNNNNmmmmmmmmmmmmmmmmmmmmmddddhhhyyo-                    
      echo                        `:yNNNNNNNNNMNNNNNNNNNNmmmmmmmmmmmmmmmNmddddddhhys+`                   
    echo                        `/hNNNNNNNNNNNNNNNNNNNNNNNNmmmmmmmmmmmmNmmddddddhhyys-                   
   echo                       `/hNMNNNNNNNNNNNNNNNNNNNNNNNNNmmmmmmmmmNNMNmddddddhhyyso`                  
   echo                      `dNMMMMNMNNNNNNNNNNNNNNNNNNNNNNmmmmmmmmmNNMNNmmdddddhhyys:                  
   echo                      .NMMMMNMMNNNNNNMNNNNNNNNNNNNNNNNNNNNNNNNMMMMNNmmdddhhhyys+`                 
   echo                      -NMMMMMMMNNNNNNMNNNNNNNNNNNNNNNNNNNNNMNNMMMMNNNNmmdhhhyyso-                 
    echo                     /MMMMMMMMMNNNNMNNNNNNNNNNNNNNNNNNNNNNNMNNMMMNNmmmmmdhhyyss+                 
   echo                      sMMMMMMMMMMMMNMMNNNNNNNNNNNNNNNNNNNNNNMMMMMMNNmmmmmmdhyysso.                                                     
                  
TIMEOUT 30 /NOBREAK
echo (Trinity) %n%... 	I've heard so much about you. Morpheus believes that you will be as great as Neo some day... You should probrably get ready.Let me just inform you of what the agents are. The agents are, as Morpheus well describes them, "Sentient programs. They can move in and out of any software still hardwired to the system. That means that anyone we haven't unplugged...is potentially an Agent. Inside the Matrix, they are everyone...and they are no one."
                                   
     echo                                    .dm+-..`````.-smNMNd:                                        
         echo                               -mh/-..````````.:smMMNo                                       
      echo                                  dd+:-..````````..:yMMMMs                                      
        echo                               :Nyo+/:-...:+osysosomMMMM/                                     
   echo                                    yNmNNNdhs/sNMMMMMMMNhNMMMN`                                    
     echo                                 `NMMMMMMMh.hMMMMMMMNy/yMMMM+                                    
    echo                                  `NMMMMMMNo.-hNNNNmy+/:/NMhy+                                    
    echo                                   hdmmmdhs/..-/++/:..-:/dm++o                                    
    echo                                  :hdhs+/:+hsys:.....-:+ohoh-.`                                   
    echo                                  :oyyo/::+oo/..`...-:/+o+:-.`                                    
     echo                                  :yys++/oysooo+/-.-:::/+//.                                     
      echo                                 `/yso+ossoo+::-.----/+yN/                                      
      echo                                   +sso+/:-.....--::oyyNd                                       
     echo                                     ossso++++++oosydddmMh                                       
     echo                                     `NmyoyhdmmmmNNNdyymm+                                       
      echo                                     +shdddmmNmmdommmmm+.                                       
      echo                                       `dNmmmhys++dNNNNmds                                      
     echo                                      -+:dNNm+/+yhoNNNNNNNm-                                     
      echo                                      +mNmmmhyo//dMNNNNNNNh:``                                  
       echo                                     -hNdhhmmmdddmNmddNNmNmddy+oyhhhhys+:--`                   
      echo                                     `ommhosdmmNMNNmssmNmmNmmmddmNNNNNdmdmmmho`                 
     echo                                      :mNhy:+hsymNNNmmdhdmNNNmhhmNNNNds/y--dNmds.                
      echo                                    -mMdo/-:ohommmNmmdmNNNNdhdmNNNNo-:++o/yNNmmo                
     echo                                `:///hmd:--:/homhyNNNNNNdNhhmNNNNdyh:-+: `+hNNNmy                
      echo                           .:+ydmmhmNy+---:yydshNMNNNNNmdmNNNNm/.`:+m+m..+oNNNNd`               
       echo                      `-+ydmNNNNNdNNh:---:oysdNNMNNNNNNNMMNNNy-`.+NNoN::mhNNNNm+               
     echo                     `:ohmNNNNNNNNNmNNd----/hmNNNNNNNNMNmdhyssommyomNNyN:-NNNNNmNy               
      echo                   -dNNNNNNNNNNNNNNNNh:-osmNNNmNNMMMMNyoossyssNNNmNNNNNo+yNNNNmmd               
       echo                  oNNNNNNNNNNNNNNNNNs-+mNNNNNMMMMMNmdhhsoymmmNNNmMMMNNy/+NNNNmmm`              
      echo                   omNNNNNNNNNNNNNNNm+/hNMMMMMMMMMmhhhhdyodMNNNNNNMNMNNhh/hNNNNmm:              
       echo                  shddmNNMMMMNNNNNmNhhNMMMMMMMMMdss+:yddNNNNNNNMNMNMNNNNy+NNNNNmo              
        echo                 do/+NNMMMMMMMMMNmdhmMMMMMMMMMNy+dysNMMNNdNMMMMMMMMNNNNNoyNNNNmy              
        echo                `h//mMMMMMMMMMMMmyyymMMMMMMMMMNmhmdNMMMNmhNMMMMMMMMNNNNNd+mNNNmh              
        echo                /h+hMMMMMMMMNMMMmysymMMMMMMMMMNNNMMMMMNNNNNMMMMNMMMNNNNNNdsNNNmh`             
          echo              sNomNMMMMMMMNMMNNyyymMMMMMMMMMNNMMMMMNNNNNNNNMNNNMMNNNNNNNyyNNNm-             
          echo              dNoNmMMMMMMMMMMMmyhhmMMMMMMMMNNNMMMMMMMMNNNmNNNNNNMNMMNNNNNodNNm:             
           echo            `NNymNmMMMMMMMMMMmhmddNMMMMMMMMNNMMMMNmddmmdmmNNNmNMNMMMNNNNNsmNm:             
         echo              :NMNsNddNMMMMMMNNNydmmNNNNNmNmNmmNNmmho:+ohmdNMMmNMMNMMMNNNNNNdmm:             
        

echo (Trinity) You should probrably rest. Meet Neo at the central in 2 hours.
TIMEOUT /T 7200
echo (Neo) So we meet again, %n%. Time to wake up.   It's time for you to train. I am remotely uploading the combat data to your brain... Just relax...
Timeout 10
echo (Neo) These are the agents. They identify themselves as "Agent Smith". They can be anyone and everyone. They can be anywhere and everywhere. It is extremely difficult to beat an agent in close combat by yourself.
echo                            
 echo                                                         `:ohNNNmNNNNNmmo.                            
 echo                                                    `.--sdmdddmmmNNNNMMMNm:                           
 echo                                                 -smNNdy+/----:/+sydmNNmhmm-                          
 echo                                              `/dNMNd+--........---:/odh+sdo                          
 echo                                             -hmNNNN+.`........-----:/ohh+y:                          
  echo                                           /dmmmmNd:...`````...-::://+sshy-                          
echo                                            -NNNNNNNh:.....``..`.-:/+++o+oydo                          
 echo                                          `dNMMMMNmy/-.......`...-/+++//+syd.                         
 echo                                          +NNNNMMNNy/-....:/+++/////+o/:/ohm/                         
 echo                                          hNNNNMMNNs--::/odmNNNNNmdhhhsshhmNh                         
 echo                                         `mNmmNNNNNh+/://sNNNNMMMMMMMhdNNNMMN+:`                      
  echo                                        :mo+//+ohms----:/sdmmmNNNMNmsyNMMMMNss+                      
 echo                                         /h/-./-./do....``-/ydmmddmh-`:dNNNNy+/                       
echo                                          .h-./s+-.hs---....-/shhhho..`.+dddy.`                        
 echo                                          -/.--...o/------..---:/:-/+o+hdNmd`                         
  echo                                          :/..-::::------....-::-ossdmNmNmd`                         
echo          .+hhs:                            .my/-//::::::----.----:::+hmNNNmy                          
echo         :dmhNNm+`                           ymm:+o-::::::::::::+osssyhdNNNmo                          
echo         /mmddNNNo`                          `+m::::://///////+++///+sydNNNm-                          
echo          /dmddmNNs.                          `y+--:://////+++++++osyddNNNNh                           
 echo          :dmmdmNNh.                          `-----:::///+++oosssoshdNNNm-                           
 echo           -dmmdmNNd-                           .---:::/+ooooo++++oyhmNNm:                            
echo             -hmmmmNNm/                          .---:://+ooooossyhmNNNNMNs-     `.-----..`            
echo              .yNNmmNNmo.                        .---:--:::/+oyhdmmNNNMMMMMNy-/ohdmNMMNNNmdy/.         
echo              `.ymNNmNNNm:                       `-----:/oyddmNNNMMMMMMMMMMNNNNNNMMMMMMMMMMMMms.       
 echo            -syhdhh+/ymNN+`                     `.-:::/++++++smMMMMMMMMNNNNNNNMMMMMMMMMMMMMMMMm+`     
 echo           `-o//+---.-oymNh+`                   .:+syy.````-odNNNNNNNNNNNNNNNMMMMMMMMMMMMMMMMMMMy`    
 echo        .--..`.-----:/syosmNs`                 -o+syhNy..:smNNNNNNNNNMMNNNMMMMMMMMMMMMMMMMMMMMMMMs    
 echo      .:oss.```.-:--:++shymNNh.             `/:ysyNMMMMsymNNmmmNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN-   
echo      +mdmmd.````.-:://+odmNNNNm-          `/hd-oodNMNNmNNmmmmmmmNMMMMMNNNNNMMMNNMMMMMMMMMMMMMMMMMMo   
echo      +dmmmN+````..-///+sdNNNNNNm+       `+dmh:/oymmmmmmmmmmmNNNNMMMMNNNNNNNNNNMMMMMMMMMMMMMMMMMMMMs   
echo       /dmmmh````...-:/+oymNNNNNNh.    .odNh-`/+ohmmmmmmmmNNMNNNMMMMNNNNNNNNNNMMNNMMMMMMMMMMMMMMMMM+   
echo        :dmNN:```````...`-sddddmo.   `omNMN/.os+hmNNNmmNNNMNNNMMMMMNNNNNNNNMMMMMMMMMMMMMMMMMMMMMMMM/   
echo         -sdm+.``````` `+yyhdddddhyyshmmNm+-hhymNNNNNNNNNNNNNMMMMNmNmNNNNMMMMMMMMMMMMMMMMMMMMMMMMNd`   
  echo         `..-```````-syyhhhhhddddmmdmmmhymmmNNNNNNNNNNNNNNMMMNmmmNNNNNNMMMMMMMMMMMMMMMMMMMMMNNNN:    
  echo                ```-syyyyyhhhhhddmmmmmmmNMNNNNNNNmNNNNNNNMMMNNNNNNNMMMNNNMMMMMMMMMMMMMMMMMNNMMNd     
 echo                   -osssyyyhhhhdddmNmmmmmmNmNNNmmmNNNNNmmmNNNNNNNNNNNMMMMNNMMMMMMMMMMMMMMMMMNNNN/     
 echo                  `+sssys/odhdddmmmmNmmmmmmNNNmmmdddNNNNNNNNNNMMmNNNMNNMMMNNMMMMMMMMMMMMMMMNMNNm`     
echo                   :ossyh++s+::dsymmmmNmmmmmmmmmNmmmmmNmNmNNmmmMNNmMNMMNMMMMNMMMMMMMMMMMMMNNMNNN+      
 echo                  ohhddmdhhhymhsyNmmmmNmmmmmdmNNmmNNmmNmNmNNmNMNNmNMNMNNMMMMMMMMMMMMMMMNNNNmNNN-      
 echo                   `-/shmmmmNmmmNmdmmmmNNmmmddmNNNNNNmmNNNNNNNMNNNNMNMNNMMMMMMMMMMMMMNNNmmmhssm`      
 echo                       `.:ohmmmNNNmmNNmmNNmmmmdmNNNNNmdNNNNNNMMmNMNNNNMMMMMMMMMMMMMMMNNNmmddddo       
 echo                           :mmmmNmmmNNNNNNmmNmmdmNNNNmmdmMNNNMMNNMMNNMMMMMMNMMMNMMNNmmmmdhhmNNs       
 echo                           /NMMMNsNMmhhmmmNNNNmmdmNNNmmmmmNNNNMNNMMNMMMNNMNNNMMMNNmddddmNNNNdh.       
  echo                          :NMMMNyMMMNmdNNNNNNNNNNNNNNmmNdNNNNMNMMMMMMNNNNNMMNNNmmmmmNMMMMMNdo        
 echo                           .mNMMNhMMNMMMMMMMNNNNNNNNNNNNNmmNNNMMMMMMMNNNNNNNmmmmmNMMMMMMMNNMNo        
  echo                           hNMMMNMMMMMMMMMMMMMMNNNNNNNNNNNNNNMMMMMNNNmmmmmmmNNMMMMMMMMMNNNNy`        
 echo                           .oNNMMMMMMMMMMMMMMMMMMMMMMMNNNNNNNNMMMMNNmmmmmNNMMMMMMMMMMMMMMNmh`         
  echo                         /d/mNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMNNNmmNNMMMMMMMMMMMMMMMMMNNs          
   echo                      .odm/hmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNy.          
  echo                      -hmNNm+smMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNN.           
 echo                      .dNNNmms/mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNN-           
  echo                     .ymmmmm+oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMMN:  
Pause         
                
echo (Neo) Now let's go ahead to training. This is where you will practice your combat skills in realistic simulations against artificial agents:
echo MMMMhmNNNmmNMmNNNNMNyyNdyo/-------/+odMNssssssssssssooooooooooooo+++++++++++++++++++++++NMMMo+++++++
echo MMMMdNMMMMMMMMMMMMMNdmmdhysoo:----:++mMNssssssssssoooooooooooo++++++++++++++++++++++++++MMMN++++++++
echo MMMNhyNMMMMMMMmdddddNMdhhhyym/----:/+mMmooooooooooooooooo++++++++++++++++//++++////////oMMMm//////+/
echo mMMMdyNMMMMMMMdhhhhhNN/::::/d/..--:/+mMmoooooooooooo++++++++++/////////////////////////sMMMd////////
echo dMMMdsNMMMMMMMdyyyhhmm::::::d:..---:/mMdooooooooo+++++++++/////////////////////////::::sMMMy////////
echo dMMMdoNMMMMMMMhyysoohm:::::/d-...--:/NMdooooooooo++++++++///////////////:///:::::::::::yMMMs:///////
echo dMMMhoNMMMMMMMmysso+hm/////sm-...--:/NMh+++++++++++++++++//////////////::::::::::::::::dMMM+::::////
echo mMMMhoNMMMMMMMhsso++hm//////m-....--/MMy+++++++++++++++//////////::::::::::::::::::::::mMMM/::::::::
echo mMMMy+NMMMMMMMysoo+/hm//////m-....--/MMs++++++++++++++//////::::::::::::::::::::::::---NMMN:::::::::
echo mMMMyoNMMMMMMMyoo++/hd/////+m:-....-/MMo////////////////::::::::::::::-----------------MMMm-----::::
echo dMNMmmMMMMMMMMhyyyssddossssyhsooosyyhMM+//////////////:::::-::::-----------...........-MMMh..-------
echo mMMMdhmmmNNMMMNNNmddmdyyysyydsssydmmmNNhyssooo+++++//::::-------------..............``/MMMs`........
echo MMMMs+yhhdmmNNmmmmmmNNmmmmddddddddhhddddddddddddddddhhyysoo++//::---......````````````+MMM+``.......
echo MMMNhyhdddddhhhyyyyyyyyyyyyyyyyyyyyhhhhhhhhhdddddddddmmmmmdddddhhhhyysoo+/:--...````` sMMM:`````````
echo o+//::::::::::::::://///++++ooooosssssyyhhhdddddddddddddddddhhhhhhhhhhhhhhyyyyyssssoo+dMMN:....`````
echo .........-------::::::///////+++oossyyyysssoo++++ooooooossyyyyyhhhhhhhhyyyyyyyyyyyhhhddmddyysssooo++
echo ...............------::://+ooo++///:----------------------:::://+++oossyyyyhhhyyyyyyhhhhhhyyysssssss
echo ````````````..--:/++++//:-.```````....................--------:::::::://oydmdsoosssyyyyyyyyyyyyyyyyy
echo ```..-:/+++//::-.````````.................................-------:/oyhdho+/://////////+++ooossyyyyy
echo ++++//:-.`````````````...............````````````````.......--:+shdhs+/:::///////////////////////++o
echo -.`` `````````````````````````````````````````.........--:+shddyo/:::::://////:::://////////////////
echo +ooo+/-............................................-:+shdmhs/:----::::::::::::::::::////////////////
echo oooosyyhyyyo+///:::::::::---------............--/ohdmdyo/------:::::::::::::::::::://///////////////
echo sssyyyyysssyhhyyso+///:/:::::::------------/oydNmho+:-::::::::::::::::::::::::::///////////+++++++++
echo ssssysssssssssssssyhhyyo/:::::::::::::+shmNmhs+:----:::::::::::::::::::::://////////////////++++++++
echo sssssoosssssssooooooooosyhyys+:-/oydmNmhy+/------::::::::::::::::::::::://////////////////+/++++++++
echo oooooooooooooooooooooooo++++oyydmNNh+:-------:-:-------------:-:::::::::::::::::://////////+++++++++
echo (Neo) You are now in a Matrix simulation room. You will now be controlled by commands  sent by you. If you want to punch inside the Matrix, type "punch" and press enter. If you want to kick, type "kick" and press enter. Remember: press enter for your commands. The commands you can send are:
echo "Punch" "Kick" "Jump" "Defend"
:W
set /p b=Please enter your Matrix password to proceed: (if it is wrong you might be awaken from the Matrix.)
if %b% neq %p% echo Yur Matrix password is incorrect. Goto W
if %b%==%p% pause
echo (Neo) Get ready...You'll be in the Matrix in...
TIMEOUT 3 /NOBREAK
start Matrixloading.bat path
Timeout 5 /NOBREAK
taskkill /FI "WINDOWTITLE eq Loading"
echo The agents are coming!

             
  echo       `hody++/::+`            
    echo     .ysdmh/oo:/.            
  echo       /hshdd+/::+/            
 echo        `++hdhs//-.`            
   echo        -shy+/+::`            
  echo          omds//hd+-.```       
  echo         .mmo/smmNmmmmhyo:`    
   echo       `hddyymNNNNNNNdhss/`   
   echo      -hmmyymNNNmNNMNmdyyo-   
 echo       :dhNmhmNNNmmmNMNNmhhs/   
 echo       ydhNmdmNmmmmmMMMNNmmy+   
 echo      `mymNdNNNmmmmmMMMMNmNh+   
 echo      omhNNmNNmmmmmmMMMMNNNd+   
 echo     `mddNNmMNmmmmmmMMMMNNNds`  
 echo     /MhNMNNMmmmmmmmMMMMMNmdy.  
 echo     oMhNMNNNmmmmmmmNMMMMNmdy:  
 echo     yMmNMNNmmmmmmmmNMMMMNmmh/  
 echo     yMNNMNNmmmmmmmmmNMMMNmmds` 
  echo    yMNMMNNmmmmmmmmmNMMMNmmms- 
 echo     hMNmmmNmmmmmmmmmNMMMNNmmy: 
 echo     dMMmddNmmmmmmmmmNMMMMNmmh+ 
 echo     NMMNNNNNmmmmmmmmNMMMMNmmdo.
  echo   `MMMMMMNmmmmmmmmmNMMMMNNmmy+
 echo    .MMMMMMMNmmmmmmmmNMMMMNmmmh+
 echo    -MMMMMMMNmmmmmmmmNMMMm++oss:
 echo    /MMMMMMMMNNmmmmmmNMMMh+o+s/ 
 echo    +MMMMMMMMNNmmmmmmNMMMhsyss/ 
 echo    +MMMMMMMMMNNmmNmNMMMMNNsd+` 
 echo    -MMMMMMMNMMNNNNNNMMMMh/+.   
 echo     .::dNMNNNNMMMMMMMMMMs      
 echo        omNMMmNNNMMMMNNNMh      
 echo        :hNMMNmdmNNNNNNNMd`     
 echo        `ydNMMNhdmNNNNNNNm-     
  echo        ohNMMMNhdmNNNNNNm:     
 echo         /ymNMMMdhdNNNNNNmo     
  echo        .ymNMMMNhhmNNNNNmy     
 echo          ymNMMMMNhdmNNNNNh.    
  echo         odNMMMMMmhmNNNNNm/    
  echo         /hNMMMMMNydmNNNNmy.   
  echo         /hmMMMMNm+dmmmNNNd/   
 echo          /hNNMMNNd.ydmmNNNNs   
  echo         :hmNMMMNh`-dmNNNNNh.  
    echo       :ydNMMNNy  +dNNNNNd:  
  echo         -hmmNNNNs   ydNNNNm/  
   echo        .hdmNNNNs`  ohNmmmm+  
  echo          ommNMMmy`  +hNmmmmo  
  echo         -sdmNMMNy   /hmNNNNy  
   echo        ymNMMNMNs   -yddmNNy  
  echo        .dmNNNMMNy.   shmNNNy  
 echo      ``-hdNNNNNMNh:   :hdmNNy  
 echo  :+oshhdNNNNmdNNNm/   .dmNNNh` 
 echo  :+osyhhys/.  ...`   `hNNNNNd` 
      echo                 hdNNNhh+  
      echo                -ddNmdy+`


TIMEOUT 10 /NO BREAK
:FIGHT
color a
mode 1000
set ryui=10
echo (Neo) Neo here. I will be comunicating you during your fight simulation.
TIMEOUT 1
echo An agent is punching you!
start <PATH TO PUNCH IMAGE> path
set /p cm=Command:
echo Punch!
if %cm%==defend set /p k=Command:
echo Upper attack (use your fists)
start <PATH TO PUNCH IMAGE> path
if %k%==punch set /p ghj=Command:

echo The agents are on the defence ! Attack! Watch out for your head! (choose between kick or punch)
if %ghj%==punch set /p jhk=Command:
start <PATH TO AIR KICK IMAGE> path
echo Punch!
if %ghj% neq punch set ryui=7
if %jhk%==kick set /p nmk=Command:
start <PATH TO AIR PUNCH IMAGE> path

echo Jump!
if %jhk% neq kick set ryui=6
if %nmk% neq punch set ryui=5
if %nmk%==punch set /p ntk=Command:
start <PATH TO JUMP KICK IMAGE> path

echo You were hit! We can still win this!
echo lower attack! Go high!
if %ntk% neq jump set ryui=4
if %ntk%==jump set /p nmo=Command:

echo My connection to you is being hacked by the agents. I am tracing the hack... It's from the agents trying to dominate Zion. I am failing to send you images of your fight..
echo Defend!

if %nmo%==kick set /p nyk=Command:
if %nmo% neq kick set ryui=3
echo Watch out! The agents are going to attack you! 

if %nyk%==defend set /p nmv=Command:
if %nyk% neq defend set ryui=2
echo Now! Kick!
if %nmv%==kick set /p nmk=Command:
if %nmv% neq kick set ryui=1
echo The agents are everywhere! Jump!
if %nmk%==kick set /p nek=Command:
if %nmk% neq kick set ryui=0
echo 	Defend!
if %nek%==jump set /p nqk=Command:
start <PATH TO BEING HIT IMAGE> path
if %nek% neq jump set ryui=5
echo Watch out! The agents are coming again... They are going to attack... Punch!!
if %nqk%==defend set /p nxk=Command:
echo Connection re-established. I am in full control of your simulation.
if %nqk% neq defend set ryui=6
echo Kick!
if %nxk%==punch set /p emk=Command:
start <PATH TO AIR PUNCH IMAGE> path
if %nxk% neq punch set ryui=3
echo The agents are attacking again...Defend.
if %emk%==kick set /p nmr=Command:
if %emk% neq kick set ryui=2
echo Jump
if %nmr%==defend set /p nwdk=Command:
if %nmr% neq defend set ryui=1
echo kick
if %nwdk%==jump set /p nask=Command:
start <PATH TO JUMP KICK IMAGE>
echo Upper attack! Now we got the agents!
echo Punch
if %nask%==kick set /p iumk=Command:
if %nwdk% neq jump set ryui=0
if %ryui%==0 exit
echo Nice job. You can jump now to exit the Matrix.
echo jump
if %iumk%==punch set /p hjklo=Command:
if %hjklo%==jump echo (Neo) Hi, %n%. You did a nice job back there.
start <PATH TO JUMP IMAGE>
Pause
echo (Neo) You did well, %n%, but there are still mistakes to be fixed. Let's leave that for tomorrow. For now, I can tell you this: You will fight with us tomorrow morning against the agents at the south subway station.
TIMEOUT 43200




Goto L

 
