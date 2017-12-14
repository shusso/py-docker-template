### Usage
```
# Build
docker build -t py-template .

# Test by running some random python command
docker run --rm -v "$(pwd)":/"$(basename $(pwd))" py-template python3 -c 'print("hello world")'

# Test by running some Python file
docker run --rm -v "$(pwd)":/"$(basename $(pwd))" py-template /bin/bash -c "cd /$(basename$(pwd)) && python3 some_file.py"

# Tag
docker tag py-template REGISTRY:PORT/py-template:master
docker tag py-template REGISTRY:PORT/py-template:latest

# Push
docker push REGISTRY:PORT/py-template
```
