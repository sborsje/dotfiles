export JAVA_HOME="$(/usr/libexec/java_home)"
export AWS_IAM_HOME="/usr/local/opt/aws-iam-tools/libexec"
export AWS_CREDENTIAL_FILE=$HOME/.aws-credentials-master

# Go settings
export GOROOT=`go env GOROOT`
export GOPATH=$HOME/Projects/goworkspace

export PATH=$GOROOT/bin:$GOPATH/bin:$PATH
