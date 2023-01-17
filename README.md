A Dockerfile for running KE Validator<br><br>
## How to run ?

The project launch is in two parts: build and start.<br>
Make image again as perl script is moved to docker container

Library documentation to read json in perl<br>
https://metacpan.org/dist/JSON-Parse/view/lib/JSON/Parse.pod

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
Make changes to files instance.json and schema.json<br>
Move files with name instance.json and schema.json to /usr/src

```
$ docker cp [c:\path\to\local\file] container_name:/path/to/target/dir/
```

To check container_name
```
$ docker ps
```

change working directory to /usr/src, run the following script
```
$ perl runScript.pl
```

### Change parameters
changing output formats in runScript.pl<br>
Available types :<br>
strict_basic can only be used with specification_version = draft2019-09<br>
output_format = flag, basic, strict_basic, detailed, verbose, terse