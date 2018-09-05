#!/bin/bash
#######################################
### Recursive Search
#
#     Perform iterative search through a search file delimited by commas
#     Requires options:
#       -i     = input file location
#       -d     = search directory, perform search iterative through here
#######################################
###     CodeBlock: InitVar
#######################################
### Argument Operations
# For Help Option
while getopts ":h:i:d:" opt; do
  case ${opt} in
    h )
      printf "\nusage: recursiveSearch -i [Search Term File] -d [Search base directory]
      Search Options:
        -i    Comma seperated file of values to use as the search terms
        -o    directory, with potentially sub-directories that will be searched through\n\n";
        exit 0
        ;;
    i ) searchTerms=$OPTARG;;
    d ) searchDir=$OPTARG;;
   \? )
     echo "Invalid Option: -$OPTARG. Use Option -help for more information" 1>&2
     exit 1
     ;;
  esac
done
### Error exits with no directory or search term inputs
[ -z "$searchTerms" ] && { echo "option -i, input search file, is empty. Exit on error"; exit;}
[ -z "$searchDir" ] && { echo "option -d, input search file, is empty. Exit on error"; exit;}

### Direcotry Ops
curDir=$(pwd) # Define directories as variables (env dependent)
outputFile="$curDir/recursiveSearch.log"              # Log File Creator

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
