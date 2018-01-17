# search_stash

## Why

It's fairly common that I forget where a file is in my stashes and I spend tons of time iterating through the stash list trying to find it. I thought I'd share a function that I wrote to automate this process for me.

## Usage

Given you've cloned and sourced the function in the file:

 `
 # For a file that is present
 
 $ search_stash accounts_controller_spec
 Your file was found in stash number: 2
 
 # For non-present files
 
 $ search_stash acro
 We were unable to find the specified file
`

