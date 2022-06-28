# DNSmelly

Shell execution via DNS server

## Inspiration

Restricted wifi access on my plane trip due to paywall but able to query domains for records

DISCLAIMER: This tool was not actually used to bypass a paywall and was an idea that was implemented after my flight for fun

## Objective

Execute shell commands on own server over DNS

## How

Create a DNS server that will parse the subdomains as a payload to execute in a shell and output to TXT record(s)

## Instructions

pip install dnslib - Install package with pip (python3) to run DNS server

python3 main.py - Run DNS server with python3

./execute.sh "echo hi" - Execute command via DNS

## TODO

- Output goes to multiple records by cutting into chunks
- Compress output with zip before encoding
- Create actual shell instead of one shot commands

## Acknowledgements

@jordanbertasso - Was originally his idea :)

DNS Server code was *borrowed* from here: https://gist.github.com/andreif/6069838
