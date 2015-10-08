script_dir="$(cd "$(dirname "${BASH_SOURCE:-${(%):-%N}}")"; pwd)"
docker build -t procs/python_sandbox $script_dir/../python_sandbox/
docker build -t procs/python_sandbox $script_dir/../cpp_sandbox/
