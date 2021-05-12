apt update && apt upgrade
apt install tor
apt install nginx

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
read -p "next...you will get your hostname soon:"
tor service stop
tor service start
nano /var/lib/tor/hidden_service/hostname
echo "congrats this is your hostname now(:"
read -p "and now we will start nginx"
service nginx start
service nginx status
echo "now it should be working..."
