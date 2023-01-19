A Dockerfile for running <a href="https://github.com/karenetheridge/JSON-Schema-Modern">KE</a> Validator.<br><br>
## How to run ?

The project launch is in two parts: build and launch.<br>

### Build

```
$ docker build -t [image_name] . 
```

### Launch

```
$ docker run -it [image_name] bash
```

Gives you bash control to enter commands.

### Sample commands

Switch to working directory where code is /usr/src/JSON-Schema-Modern
to run test cases

```
$ perl t/[file_name].t
```

### Run with custom files
Move your instance and schema json files to /usr/src

```
$ docker cp [path_of_file_from_system] container_name:/usr/src
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
The [output_type] argument is optional. By default it is set to 'flag'. But if you want to change output formats, it can be passed as third argument while running the perl script<br>
Available types :<br>
<span style="font-family: 'typewriter';">flag, basic, detailed, verbose, terse</span><br>