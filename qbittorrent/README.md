# Web port
Due to issues with CSRF and port mapping, should you require to alter the port for the web UI you need to change both sides of the -p 8080 switch AND set the WEBUI_PORT variable to the new port.

For example, to set the port to 8090 you need to set -p 8090:8090 and -e WEBUI_PORT=8090

# Default account:
Check container logs