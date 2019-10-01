[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
unset GEM_HOME
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
export RSENSE_HOME=$HOME/.emacs.d/rsense-0.3
export DYLD_LIBRARY_PATH=/usr/local/opt/mysql/lib:$DYLD_LIBRARY_PATH
export EDITOR="/usr/local/bin/mate -w"

# bash-completion
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
#Env settings for cocoapods
export GEM_HOME=$HOME/gems
export PATH=$GEM_HOME/bin:$PATH

#ENV parameters for golang
export GOPATH=$HOME/GoWorkspace
export GOBIN=$HOME/GoWorkspace/bin
export GOROOT=/usr/local/Cellar/go/1.12.9/libexec
export PATH=$PATH:$GOPATH/bin:/usr/local/Cellar/go/1.12.9/bin

#ENV parameters for java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
export JAVA_TOOL_OPTIONS=-Duser.language=en
export PATH=$JAVA_HOME/bin:$PATH:.

#ENV parameters for Maven
export MAVEN_HOME=/Users/master/ProgramSoftwares/apache-maven/apache-maven-3.6.2
export PATH=$PATH:$MAVEN_HOME/bin

#ENV parameters for MYSQL
export MYSQL_HOME=/usr/local/mysql
export PATH=$PATH:$MYSQL_HOME/bin

#ENV parameters for Redis
export REDIS_HOME=/usr/local/Cellar/redis/5.0.5
export PATH=$PATH:$REDIS_HOME/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#ENV parameters for Zookeeper
export ZOOKEEPER_HOME=/Users/master/opt/zookeeper/zookeeper-3.4.6
export PATH=$PATH:$ZOOKEEPER_HOME/bin

#ENV parameters for Kafka
export KAFKA_HOME=/Users/master/opt/kafka/kafka_2.10-0.10.2.0
export PATH=$PATH:$KAFKA_HOME/bin

#ENV parameters for Storm
export STORM_HOME=/Users/master/opt/storm/apache-storm-2.0.0-SNAPSHOT
export PATH=$PATH:$STORM_HOME/bin:$STORM_HOME/sbin

### Settings for gradle
export GRADLE_HOME=/usr/local/Cellar/gradle/5.6.2
export PATH=$PATH:$GRADLE_HOME/bin

#source <(kubectl completion bash)
