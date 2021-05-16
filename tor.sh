apt update && apt upgrade
apt install tor
apt install nginx
touch yourhostname.txt
echo """                                                                                                    
                                            #%%%%%%%%%%%%%%%%%%/                                    
                                       #%%%%%%%%%#*   .,,(%%%%%%%%%%(                               
                                   .%%%%%%%.                    .%%%%%%%                            
                                 %%%%%%                             *%%%%%/                         
                               %%%%%/                                  %%%%%.                       
                             .%%%%                                       %%%%%                      
                            #%%%%                        , .               %%%%                     
                           *%%%%  %%%%%%%%%%%%%%%%     /(/                  %%%%                    
                           %%%%   %%%%%%%%%%%%%%%%   %((                    .%%%%                   
                          (%%%*        %%%%%%        @ #@          #%%%%%/   %%%%                   
                          %%%%         %%%%%%     @    ,*//&.     %%%%%%%/   %%%%                   
                          %%%%         %%%%%%   # .   ..#@(((#   %%%%%%.     %%%%                   
                          ,%%%#        %%%%%%  @ /     ,,*####@  %%%%%%      %%%%                   
                           %%%%        %%%%%%  , *   (.%%&###%#  %%%%%%     #%%%*                   
                            %%%%       %%%%%%    @   ..%&%%%@    %%%%%%    #%%%%                    
                             %%%%                                         %%%%%                     
                              %%%%                                      *%%%%.                      
                            %%%%%                                     %%%%%#                        
                         #%%%%%. .*%%%%%.                          #%%%%%*                          
                          %%%%%%%%%%%%%%%%%%%                 .%%%%%%%#                             
                                        .%%%%%%%%%%%%%%%%%%%%%%%%%%                                 
                                               (%%%%%%%%%%%%,                                       """




echo "welcome,this tool will help you to create a  .onion website"
read -p "now this tool will get you to a file uncomment  Hiddenservicedir,hiddenserviceport:"
tor service start
nano etc/tor/torrc
read -p "next...this tool will save your hostname in yourhostname.txt:"
tor service stop
tor service start
cat /var/lib/tor/hidden_service/hostname > yourhostname.txt
read -p "and now we will start nginx"
service nginx start
service nginx status
echo "now it should be working..."
