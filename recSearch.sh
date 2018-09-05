#!/bin/bash
#######################################
# Recursive Search

#######################################
###     CodeBlock: InitVar
#######################################
### Direcotry Ops
curDir=$(pwd) # Define directories as variables (env dependent)
outputFile="$curDir/recursiveSearch.log"            # Log File Creator
searchTerms="$curDir/search.txt"                  #input Search Terms
searchDir="$curDir/searchDir"                              # search files within this directory
### create logging file
printf "#######################################\r\n" >"$outputFile"
printf "### Recursive loop search script $curServ\r\n### Script run on $(date)\r\n" >> "$outputFile"
printf "### Records searched for: " >> "$outputFile"
cat $searchTerms >> "$outputFile"
printf "### within files located in: $searchDir" >> "$outputFile"
printf "\r\n#######################################" >>"$outputFile"
### Variable Initialization
i=1
#######################################
###     CodeBlock: Read and Parse search file
#######################################
numbF=$(grep -o "," < "$searchTerms" | wc -l); let "numbF=numbF+1" # Count number of search terms

while [[ $i -le $numbF ]]
do
  srchTxt=$(cat $searchTerms | cut -d "," -f $i)
  printf "\r\n### $srchTxt matches:\r\n" >> "$outputFile" >> $outputFile
  grep -r "$srchTxt" $searchDir >> "$outputFile"
  let "i = i + 1"
done
