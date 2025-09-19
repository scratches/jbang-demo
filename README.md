
Here is a demo that embeds the a `jbang` script in a script file that can be distributed as a standalone and runs it with no dependencies. It's a simple Spring Boot application that uses a Java 25 anonymous `main()`. The dependencies are managed by `jbang` and are declared in the script header via a utility catalog in Github.

You can build it with `make`:

```
$ make
$ ./demo
  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/

 :: Spring Boot ::                (v3.5.5)

2025-09-18T15:03:49.543+01:00  INFO 1817375 --- [           main] script                                   : Starting script using Java 25-beta with PID 1817375 (/home/dsyer/.jbang/cache/jars/script.java.20f0ef5cc326d3b8fc241c3e19489da24feed1c86f571bc916d4557ca409c970/script.jar started by dsyer in /home/dsyer/dev/scratch/jbang-demo)
2025-09-18T15:03:49.545+01:00  INFO 1817375 --- [           main] script                                   : No active profile set, falling back to 1 default profile: "default"
2025-09-18T15:03:49.808+01:00  INFO 1817375 --- [           main] script                                   : Started script in 0.454 seconds (process running for 0.591)
Hello, World!
```

Alternatively (during development for instance) you can run the script directly with:

```
$ ./jbang demo.sh
```

or if `jbang` is already installed (or this directory is on your `PATH`):

```
$ ./demo.sh
```
