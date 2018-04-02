
Arcade
======

Installation Instructions
-------------------------

### Prerequisites

You need an administration machine and target machine. The target machine will be your home-theater PC (HTPC), and the administration machine will be the place you enter commands to setup the target machine from. You can use the same machine for both tasks, however this will leave extra unneeded software on the target machine.

#### Target machine

Requirements:
* Ubuntu 16.04, either headless or with the XFCE desktop environment installed. This installation will install XFCE.

#### Administration machine

Requirements:
* Ansible installed. This can be either on a Linux/Mac OS operating system, or through the Windows Subsystem for Linux installed on Windows 10.

#### Network requirements

* Ability to ssh to this machine from the administration machine with an ssh key.

### Steps:

1. Setup an inventory file on your administration machine with your target machine as part of the "arcade-machines" group.

```
[arcade-machines]
<IP Address or hostname of target machine>
```

2. Run the arcade playbook using ansible-playbook.

```
ansible-playbook -i <inventory_file> arcade.yml
```

Development Instructions
------------------------

To develop Arcade, you need a development machine with the following software installed:

1. VirtualBox - Used to test deployments.
2. Vagrant - Used to script VirtualBox.
3. Ansible - Used for installation.

If you are on Windows 10, you must also have the following:

4. Windows Subsystem for Linux
5. Ubuntu (from Windows store)
6. Vagrant installed in Ubuntu, the same version as what is installed in windows.

With this software installed, you should be able to run a complete test by executing the `test.sh` script.
