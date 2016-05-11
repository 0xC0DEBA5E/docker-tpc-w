# docker-tpc-w

This Project is based on the TPC-W Benchmark of the Univrsity of


## Installation

1. Install [docker-compose](https://docs.docker.com/compose/install/) , if you haven't already.

2. Checkout this repository to a folder of your choice.

3. Run `docker-compose up` within that folder to build the containers and start the services.


## Usage

### Building the Benchmark

1. To start the Ant-build, enter the Java-Docker-Container with `docker-compose run java bash`.

2. CD to the opt-dir within the container `cd /opt` (which is mapped to the data-directory of the repository).

3. Start the build with `ant`

### Running the populator

1. 
