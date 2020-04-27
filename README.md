# An In-memory Key-Value Store and Load Generator

One Paragraph of project description goes here

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. <!-- See deployment for notes on how to deploy the project on a live system.-->

### Prerequisites
Clone the repository to get a copy for yourself
```
$ git clone https://github.com/mohapeameya/kv-store-load-gen.git
```
Change current directory to ```kv-store-load-gen```
```
$ cd kv-store-load-gen
```
Install the following dependencies if not already installed
```
$ sudo apt install g++ -y
$ sudo apt install util-linux -y
$ sudo apt install python3 python-tk -y
$ pip3 install matplotlib
```
### Installing
Run ```make all``` to build
```
$ make all
```

## Running the test
For valid test results we need to ensure the following:
1. There is a clear separation between server and load generator resources
2. Load generator can saturate server without becoming a bottleneck itself

This can be achieved using ```taskset``` utility by pinning the processes to specific cores  
For example, in a 4 core system, run ```server``` locally(127.0.0.1) on port 55555 with 5 worker threads on core 0
```
$ taskset 0x1 ./server 127.0.0.1 55555 5
```
and ```loadgenerator``` on cores 1,2, and 3 with minimum 1 thread and maximum 5 threads with 10 seconds per thread
```
$ taskset 0xE ./loadgenerator 127.0.0.1 55555 1 5 10
```
Graphical visualization of test data(wait for the load generator to exit)
```
$ python3 ./plot.py
```

<!--Explain how to run the automated tests for this system-->

<!--### Break down into end to end tests-->

<!--Explain what these tests test and why-->

<!--### And coding style tests-->

<!--Explain what these tests test and why-->

<!-- ## Deployment-->

<!--Add additional notes about how to deploy this on a live system-->

<!-- ## Built With -->

<!-- * [django](https://www.djangoproject.com) - a high-level Python Web framework that encourages rapid development and clean, pragmatic design. -->

<!--## Contributing-->

<!--Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.-->

<!--## Versioning-->

<!--We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). -->

## Authors

* **Ameya Mohape** - *Initial work* - [mohapeameya](https://github.com/mohapeameya)

<!--See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.-->

## License

This project is licensed under the GNU GENERAL PUBLIC LICENSE Version 3 - see the [LICENSE](LICENSE) file for details

<!--## Acknowledgments
* Hat tip to anyone whose code was used
* Inspiration
* etc-->
