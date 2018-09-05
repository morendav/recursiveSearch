# Recursive Search

Perform an iterative recursive search through a destination directory through a number of terms stored in a search terms file, comma separated.
Print the result to a log file in the current working directory.
Used to comb through many log files for single records corresponding to troubleshooting related exercise.

## Getting Started

Copy the recSearch.sh script into working directory.

The script will require at least one, no more than two of the following options:


> -i          Input file containing comma separate search terms to iterate through

> -d          Search directory parent - through which the recursive search should be performed

> -help       Utility help and usage info


### Prerequisites

Search Terms File: file with comma separated search values that will be used to comb the search directory.
Search Directory: directory containing files or sub-folders that should be searched through.


## Using Included Sample Data

There are two sample files included in this git repo:

```
  sample_search.txt       >> Sample search terms comma seperated
  sample_searchDir/*      >> Sample directory to search through
```
where there are three search terms in the search terms file, one of which shows up twice in the search directory, and one shows up 0 times.

## Releases
### Version 1.1
    - functional and tested on OSx and Enterprise RedHat environments
    - Planned next update: introduce passing options as the directory and file input parameters instead of having hard coded values
### Version 2.1
    - functional and tested on OSx and Enterprise RedHat environments
    - intake of options for passing the search term and search base parameters into the script
