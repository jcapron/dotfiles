# export GOPATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=/Users/jcapron/Code/CBI/cbi-api
export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:/usr/local/opt/go/libexec/bin
alias goreboot='make && ./bin/cbi-api -ssl=false -with.auth=false'
export CBICONF=/Users/jcapron/Code/CBI/cbi-lib/.config.ini
export GOPATH=/Users/jcapron/Code/CBI/cbi-lib/go:$GOPATH
alias goreboot2="vagrant ssh -c 'cd cbi-api && make build && make cmd_follow_logs'"
# export GOROOT=/usr/local/bin/go:/Users/jcapron/Code/CBI/crons/bmulley/aws_cloudsearch_docs_sqs:/Users/jcapron/Code/CBI/crons/aabbi/go/:/Users/jcapron/Code/CBI/cbi-lib/go:/Users/jcapron/Code/CBI/cbi-lib/go/_vendor
