# docker-java

Minimal docker image for JVM apps built by the sbt-native-packager.

In SBT configuration add the following settings:
	
    	enablePlugins(JavaServerAppPackaging)
    	enablePlugins(DebianDeployPlugin)
    	enablePlugins(DockerPlugin)

      	daemonUser in Docker := "root", // user in the Docker image which will execute the application (must already exist)
      	dockerBaseImage := "voxsupplychain/docker-java", // Docker image to use as a base for the application image
      	dockerExposedPorts in Docker := Seq(7000, 7002), // Ports to expose from container for Docker container linking
      	dockerRepository := Some("voxsupplychain"), // Repository used when publishing Docker image
      	dockerUpdateLatest := true,

