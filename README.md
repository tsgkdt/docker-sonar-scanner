# sonar-scanner

```
docker run --rm \
       -e SONAR_HOST_URL=http://XXX.XXX.XXX.XXX:9000 \
       -e SONAR_SOURCE=/opt/code \
       -v $(pwd)/my_source_folder:/opt/code \
       tsgkadot/docker-sonar-scanner:latest
```

# Default Settings

| Config | Value |
|-------------------|-----------|
| SONAR_PROJECT_KEY | my:project | 
| SONAR_PROJECT_NAME | my project |
| SONAR_PROJECT_VERSION | 1.0 |
| SONAR_SOURCE | . | 
| SONAR_SOURCE_ENCODING | UTF-8 | 
| SONAR_HOST | http://localhost:9000 | 
| SONAR_SCANNER_OPTS | -Xms512m |