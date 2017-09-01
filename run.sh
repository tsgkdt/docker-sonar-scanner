sonar-scanner -Dsonar.host.url="${SONAR_HOST_URL}" \
              -Dsonar.projectKey="${SONAR_PROJECT_KEY}" \
              -Dsonar.sources="${SONAR_SOURCE}" \
              -Dsonar.sourceEncoding="${SONAR_SOURCE_ENCODING}" \
              -Dsonar.projectName="${SONAR_PROJECT_NAME}" \
              -Dsonar.projectVersion="${SONAR_PROJECT_VERSION}" 
