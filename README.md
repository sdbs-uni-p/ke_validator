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
Move your instance and schema json files to /usr/src.

```
$ docker cp [path_of_file_from_system] container_name:/usr/src
```

To check container_name.
```
$ docker ps
```

Change working directory to /usr/src, run the following script.<br>
The <TT>[output_type]</TT> argument is optional. By default it is set to 'flag'.
```
$ perl runScript.pl [schema_file_path] [instance_file_path] [output_type]
```

### Change parameters
If you want to change output format, it can be passed as third argument while running the perl script<br>
Use of each output formats can be found <a href="https://metacpan.org/pod/JSON::Schema::Modern::Result#output_format">here</a>.
Available types :<br>
<TT>flag, basic, detailed, verbose, terse</TT><br>