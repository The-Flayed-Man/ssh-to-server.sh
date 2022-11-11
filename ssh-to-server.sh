#!/bin/bash
   echo "Enter the server you want to ssh:"
   read h
   ssh -t USER@$h
   if [ $? != 0 ]
   then
   sleep 2
   ping -c4 $h
   sleep 2
   ssh -t $h
   if [ $? != 0 ]
   then    
   echo "The $h server is not active"
   else
   echo "The $h server is active"
   fi
   fi
