# /bin/sh
# if [ -d "$WORKING_DIR" ]; then rm -Rf $WORKING_DIR; fi
mkdir -p tmp && cd tmp && tree ..
echo 'Starts === git clone git@github.com:GSA/ECASDAS_BASE_CONFIG.git .  ==='
git clone git@github.com:oadekoya12/npmydrupal9.git .
rm -rf .git .gitignore README.md buildspec.yml imagedefinitions.json Dockerfile docker-compose.yml
ls -al
cp -rf  ./* ../ 
cd .. && rm -fr tmp

# combine drupal file content with shellenv.sh to form cmd.sh
sed '/Drupal/r drupal/script/drupal' shellenv.sh > combine.sh 

sh combine.sh -s drupal9.live  -p 81
#