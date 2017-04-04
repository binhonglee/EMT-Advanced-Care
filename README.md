# EMT Advanced Care

[![Build Status](https://travis-ci.org/binhonglee/EMT-Advanced-Care.svg?branch=master)](https://travis-ci.org/binhonglee/EMT-Advanced-Care)

A Java application that will store your sample information into a json file format so that it can be retrieved by your medical personnel and would expedite the medical treatment process in a case of crisis.

## Dependencies

#### Required:
- Git
- Java
- Apache Ant
- Pre-existing running SQL server with appropriate setup

#### Setup will add:
- [json-to-sql](https://github.com/eHealthAfrica/json-to-sql) (will be cloned through setup.sh)

## Setup

Open your terminal and do the following.

#### Easy way:

Just clone the repository and run the setup shell script to setup the machine to use this program.

```sh
$ git clone https://github.com/binhonglee/EMT-Advanced-Care
$ cd EMT-Advanced-Care
$ ./setup.sh
```

#### Manual way:

Of course, if you would like to do the manual way, feel free to follow the following steps.

```sh
$ git clone https://github.com/binhonglee/EMT-Advanced-Care
$ cd EMT-Advanced-Care
$ git submodule init
$ git submodule update --init --recursive
```

## How to use

First, you need a SQL server properly configured to the format of the json output will be, then have it running.

From here, you can run the Java application by navigating to the folder of this repository and do the following in terminal.

```sh
$ ant execute
```

After creating the json file you wanted, run the following in the same terminal to push the files into SQL server.

```sh
$ ./migrateToSQL.sh
```

Now all the data should be in your SQL server and all the json files are deleted.

## Restart

If you changed the source codes and decided that you wanted to recompile everything, run the following.

```sh
$ ant clean
$ ant build
```

## Removal

To remove this from your computer, simply go to your terminal and do the following.

#### Easy way:

A shell script is written to remove all dependency files added when running setup.sh so you can just run that.

```sh
$ ./uninstall.sh
```


#### Manual way:

If you want to remove each item manually or pick what to keep, follow the steps below and make changes that suits your setup / liking.

```sh
$ cd ../
$ rm -rf EMT-Advanced-Care
```
