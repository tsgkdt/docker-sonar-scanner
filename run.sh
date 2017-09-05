if [ -z "${SONAR_PROJECT_BASEDIR+x}" ] ; then
    export SONAR_PROJECT_BASEDIR=/opt
fi

if [ -z "${SONAR_LANGUAGE+x}"]; then
    sonar-scanner -Dsonar.host.url="${SONAR_HOST_URL}" \
              -Dsonar.projectKey="${SONAR_PROJECT_KEY}" \
              -Dsonar.sources="${SONAR_SOURCE}" \
              -Dsonar.sourceEncoding="${SONAR_SOURCE_ENCODING}" \
              -Dsonar.projectName="${SONAR_PROJECT_NAME}" \
              -Dsonar.projectVersion="${SONAR_PROJECT_VERSION}" \
              -Dsonar.projectBaseDir="${SONAR_PROJECT_BASEDIR}"
else
    sonar-scanner -Dsonar.host.url="${SONAR_HOST_URL}" \
              -Dsonar.projectKey="${SONAR_PROJECT_KEY}" \
              -Dsonar.sources="${SONAR_SOURCE}" \
              -Dsonar.sourceEncoding="${SONAR_SOURCE_ENCODING}" \
              -Dsonar.projectName="${SONAR_PROJECT_NAME}" \
              -Dsonar.projectVersion="${SONAR_PROJECT_VERSION}" \
              -Dsonar.projectBaseDir="${SONAR_PROJECT_BASEDIR}" \
              -Dsonar.language=${SONAR_LANGUAGE}
fi
