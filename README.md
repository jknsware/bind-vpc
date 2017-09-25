# Bind Example

## Purpose

This is an example of something I've implemented. It makes the following assumptions:
* Prod and Test AWS VPC
* Prod and Test Datacenter VPC
* Internal network
* Multiple internal domains used for routing to each site

After an initial Ansible baseline is run against each machine, this playbook can be run to setup Bind9 and 
all the forwarding rules. Update/change the playbook as neccesary to have this run in the real world.
