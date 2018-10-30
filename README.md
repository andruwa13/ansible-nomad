# ansible-nomad

https://www.nomadproject.io/

Deploy nomad cluster. Readability prioritized

Work in progress..

Note: Typically any agent running in client mode must be run with root level privilege. Nomad makes use of operating system primitives for resource isolation which require elevated permissions. The agent will function as non-root, but certain task drivers will not be available.

Ref: https://www.nomadproject.io/intro/getting-started/running.html
