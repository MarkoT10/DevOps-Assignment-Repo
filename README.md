# Decryption and Environment Variable Injection Script with Docker

This project contains a script that decrypts an encrypted file containing environment variables, then runs a child process with those variables available in its environment.

## Prerequisites

- Docker
- Git
- GNU Privacy Guard (GnuPG)

## Project Structure

- `Dockerfile`: Dockerfile to build a Docker image containing the necessary dependencies and scripts.
- `script.sh`: Bash script to decrypt the encrypted file, source environment variables, and then run a user-specified child process.
- `test.py`: Python script for testing purposes.
- `env.enc`: Encrypted file containing environment variables.

## Building and Running the Docker Image

To build the Docker image, navigate to the project's root directory and run:

docker build -t testprojectimage .

This will create a Docker image tagged as `testprojectimage`.

To run a container from this image, use:

docker run -it --rm testprojectimage ./script.sh ./test.py

This command runs the `script.sh` in the container and executes `python3 test.py` as the child process.

## License

This project is licensed under the MIT License.

