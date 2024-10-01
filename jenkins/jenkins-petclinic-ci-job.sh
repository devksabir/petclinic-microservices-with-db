# ddfd
echo 'Running Unit Tests on Petclinic Application'
# create maven container --rm means to be deleted at the end of the execusion
docker run --rm 
# attach a volume  and move maven repositories $HOME = /var/lib/jenkins contains .m2 folder
-v $HOME/.m2:/root/.m2 
# move the source code to pwd / current location - pwd is the current localtion 
# current localtion: workspace folder of the jenkins user = /var/lib/jenkins/workspace/petclinic-ci-job
-v `pwd`:/app 
# move inside the container to app folder - w means workspace
-w /app 
# maven container as base
maven:3.8-openjdk-11 
# execute maven clean test command on the top of the container
mvn clean test