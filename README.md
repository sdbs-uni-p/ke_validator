## How to run ?

The project launch is in two parts: build and start.
Make image again as perl script is moved to docker container

### Build

```
$ docker build -t [image_name] . 
```

### Launch

```
$ docker run -it [image_name] bash
```

Gives you bash control to enter commands

### Sample commands

Switch to working directory where code is /usr/src/JSON-Schema-Modern

to run test cases

```
$ perl t/[file_name].t
```

### Run with custom files
Make changes to files instance.json and schema.json
Move files with name instance.json and schema.json to /usr/src

```
$ docker cp [c:\path\to\local\file] container_name:/path/to/target/dir/
```

change working directory to /usr/src, run the following script
```
$ perl runScript.pl
```