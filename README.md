# Ansible examples

## About the project

This project contains [Ansible](https://www.ansible.com/) examples and a Vagrantfile to create a
virtual machine. The connection settings of the examples rely on the default SSH connection settings created by vagrant
for the virtualbox virtual machine.

- **host**: 127.0.0.1
- **port**: 2222
- **ssh private key**: $PROJECT_ROOT/.vagrant/machines/default/virtualbox/private_key
- **user**: vagrant

You can create your own inventory files if you need: [Ansible: Working with Inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html)

Each example has a "run.sh" file which contains the command you can execute or create your own command based on the example.

Requirements:

- Linux host machine (Tested on Kubuntu 19.04)
- [VirtualBox](https://www.virtualbox.org/) (Optional, Tested with VirtualBox 6.0)
- [Vagrant](https://www.vagrantup.com) (Optional, Tested with Vagrant 2.2.3)
- [Python](https://www.python.org/) interpreter (Tested with Python 3)
- [Ansible](https://www.ansible.com/) (Tested with Ansible 2.8.4)


## Install Ansible in virtualenv on Ubuntu

Make sure you have python3 and pip3 installed on your machine. Otherwise, install them or use "pip" and "python" instead
if you want to try it with your default interpreter.
Open a terminal, go to the project root and run the following commands:

```shell script
sudo apt install python3 python3-pip
pip3 install --user --upgrade pip
```

The above command can change the path of python if they were already installed. Log out and log in again or
just log in using su:

```shell script
su - $USER
```

Or source the .bashrc file if you use Bash shell.

```shell script
source $HOME/.bashrc
```

Install the virtualenv module:

```shell script
pip3 install --user virtualenv
```

And create the virtual environment:

```shell script
python3 -m virtualenv ansible-examples-env
source ansible-examples-env/bin/activate
```

You can finally install Ansible:

```shell script
pip3 install -r requirements.txt
```

## Create a virtual machine

This step is optional but recommended if you don't have your own test machine or you don't know how to configure Ansible
to set that as target.
 
In the project root you will find a simple [Vagrantfile](Vagrantfile) to download and start an Ubuntu 18.04 LTS machine.

Open a terminal, navigate to the project root and run the following command:

```shell script
vagrant up
```

## Examples

The examples are in the examples folder. Step into the chosen example folder and execute the run.sh script.

- [01-ad-hoc](examples/01-ad-hoc): The simplest Ad-Hoc command
- [02-ad-hoc-with-inventory](examples/02-ad-hoc-with-inventory): The simplest Ad-Hoc command with an inventory.yml 
- [03-playbook](examples/03-playbook): The first and simplest playbook
- [04-playbook-debug](examples/04-playbook-debug): The simplest playbook with the debug task which displays the standard output of the command
- [05-playbook-block](examples/05-playbook-block): Use blocks to organize tasks
- [06-playbook-role](examples/06-playbook-role): Use roles to organize tasks
- [07-playbook-role-with-include](examples/07-playbook-role-with-include): Use multiple tasks file in a role to organize tasks
- [08-playbook-role-with-loop](examples/08-playbook-role-with-loop): Run tasks in a loop
- [09-playbook-override-parameter](examples/09-playbook-override-parameter): Demonstrate how to override a parameter
- [10-playbook-variable-precedence](examples/10-playbook-variable-precedence): Demonstrate all the 22 level of variable precedence
- [11-playbook-variable-scope](examples/11-playbook-variable-scope): Some demonstration of variable scoping and environment variables