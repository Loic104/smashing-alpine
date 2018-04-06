# smashing-alpine
Dockerfile for creating a smashing dashboard (https://github.com/Smashing/smashing)

## Run
```docker run -d -p 8080:3030 fengal/smashing-alpine```

And point your browser to [http://localhost:8080/](http://localhost:8080/).


## Configuration
You can provide a custom smashing (including the dashboard, widgets, jobs and configuration) by mounting to the volume /smashing


```docker run -v=/my/custom/smashing:/smashing -d -p 8080:3030 fengal/smashing-alpine```
