# Recursive Search

Perform an iterative recursive search through a destination directory through a number of terms stored in a search terms file, comma separated.
Used to comb through many log files for single records corresponding to troubleshooting related exercise.

## Getting Started

Copy the recSearch.sh script into working directory.
Modify the shell script such that in the codeBlock = Init Var:


> outputFile="$curDir/<outputfilenamehere>.log"            

> searchTerms="$curDir/<searchtermsfilehere>.txt"   

> searchDir="$curDir/<searchDirectoryhere>"   


### Prerequisites

Search Terms File: file with comma separated search values that will be used to comb the search directory. (searchtermsfilehere)
Search Directory: directory containing files or sub-folders that should be searched through (searchDirectoryhere)


## Example

In the contained examples as outlined:

```
  outputFile="$curDir/recursiveSearch.log"            # Log File Creator
  searchTerms="$curDir/search.txt"                    #input Search Terms
  searchDir="$curDir/searchDir"                       # search files within this directory
```

where there are three search terms in the search terms file, one of which shows up twice in the search directory, and one shows up 0 times.

## Releases
### Version 1.1
    - functional and tested on OSx and Enterprise RedHat environments
    - Planned next update: introduce passing options as the directory and file input parameters instead of having hard coded values
