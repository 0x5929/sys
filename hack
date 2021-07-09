#!/bin/bash

# VMWare instead, works super well. 
# In case machine becomes unbootable, DO NOT Issue the same command again!
# you will delete the only snapshot that can save you (the one you created before starting the machine!)
# None of the commands below need sudo permission


vmrun deleteSnapshot $HOME/vmware/Kali-PreOSCP/Kali-PreOSCP.vmx temp; vmrun snapshot $HOME/vmware/Kali-PreOSCP/Kali-PreOSCP.vmx temp; vmrun start $HOME/vmware/Kali-PreOSCP/Kali-PreOSCP.vmx & firefox & chrome & cherrytree /home/kevin/Documents/notes/pentest-notes-template.ctb & terminal & 
