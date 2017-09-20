rem this command runs a local github pages server using docker
rem you will need to have docker pre-installed for it to work
powershell -NoExit -Command "& {$p = $pwd.Path + ':/usr/src/app';write-host ''; write-host 'Use ' -nonewline; write-host 'docker ps' -f yellow -nonewline; write-host ' to list the running containers'; write-host 'And ' -nonewline; write-host 'docker stop <container_id>' -f yellow -nonewline; write-host ' to stop a running container';write-host '';docker @('run', '-p', '4000:4000', '-v', $p , '--env', 'JEKYLL_GITHUB_TOKEN=d411cc1d38d2f5118d02f815554587561caa6302', 'starefossen/github-pages')}"
