# golang_hello

### Description
`golang` program that prints 'hello'

### List of files in the repository and their purpose.
- `provision.sh` - scrip that checks the apt database is up-to date, installs `golang` and `terraform`.
- `.gitignore` - file that tells Git which files to ignore.
- `hello.go` - Scrip that prints 'hello'.
- `test.sh` - Script that calls `hello.go` and checks if the test pass or fails. 
- `Vagrantfile` - Configuration file for creating test environment to test the script for this project.
- `.travis.yml` - Script for continous integration


### How to use this repository.
#### In this example I will use Ubuntu test enviroment if you don't have Windows enviroment to test the script.
* Clone the repository to your local computer: `git@github.com:nikcbg/golang_hello.git`
* Go to the cloned repo in your computer: `cd golang_hello`
* Create your test Ubuntu machine by typing: `vagrant up` 
* Login to the newlly created Ubuntu box by typing: `vagrant ssh`
* You need to download and isntall `golang` on the Ubuntu box in case to test the script. 
* Run the following lines of code on your Ubuntu test machine to set-up `golang`:
 * ##### Step 1 - Installing Go
 * `sudo apt-get update`
 * `sudo apt-get -y upgrade`
 * `crl -O https://storage.googleapis.com/golang/go1.11.2.linux-amd64.tar.gz`
 * `tar -xvf go1.11.2.linux-amd64.tar.gz`
 * `sudo mv go /usr/local`
 * ##### Step 2- Setting Go environment
 * `sudo vim ~/.profile`
 * When you open the above file in `vim` editor add the below lines at the end of the file:
 * `export GOPATH=$HOME/work`
 * `export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin`
 * Resfresh your profile with the following command:
 * source ~/.profile
* Once you install `golang` on the Ubuntu box you can test the `hello.go`script with following command:
 * `go run hello.go`
* Execute `bash test.sh` command to see if the `test.sh` script passes or fails.
* When you done testing you can exit the test Uuntu box by typing `exit` command. 
* If you no longer need the Ubuntu box you can delete it by typig `vagrant destroy` command.

### TO DO:
* Run travis test to check if the script passes or fails.
