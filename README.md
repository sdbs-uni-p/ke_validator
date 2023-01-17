## How to run ?

The project launch is in two parts: build and start.

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

