# Single Node Hadoop

This repository includes a Vagrant VM that uses Ansible to
install and start Hadoop in psudo-distributed mode.

To get started, install Vagrant, Ansible, and VirtualBox.
Then run `vagrant up` from inside the repository. The
VM is configured to use an Ubuntu wily64 box. Hadoop will
be downloaded from a mirror and installed. At the moment 
Hadoop 2.6.3 will be installed; you can configure the
version by setting `hadoop_version` before running the
first `vagrant up` or before running `vagrant provision`.

```shell
export hadoop_version=2.7.1
```

After install, you can visit the [HDFS Name Node][nn] and
[YARN Application Manager][yarn] pages to see the running
services.

The `wordcount` directory has an example application from
the Hadoop docs. To use, first bring up the VM, and run
`vagrant ssh` to get a shell. Then:

```shell
cd /vagrant/wordcount
./build.sh
./ul.sh
./run.sh
```

The application will show up in the application manager and
will also print status and information on the console.


