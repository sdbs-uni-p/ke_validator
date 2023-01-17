A Dockerfile for running KE Validator<br><br>
## How to run ?

The project launch is in two parts: build and start.<br>

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
Move your instance and schema json files to /usr/src

```
$ docker cp [c:\path\to\local\file] container_name:/usr/src
```

To check container_name
```
$ docker ps
```

change working directory to /usr/src, run the following script
```
$ perl runScript.pl [schema_file_path] [instance_file_path] [output_type]
```

### Change parameters
Output formats can be passed as third argument while running the perl script<br>
Available types :<br>
flag, basic, detailed, verbose, terse<br>