# -*- mode: ruby -*-
# # vi: set ft=ruby :

# Defaults for config options defined in CONFIG
$num_instances = 3
$instance_name_prefix = "k8s"
$vm_gui = false
$vm_memory = 6144
$vm_cpus = 3
$shared_folders = {}
$forwarded_ports = {}
$subnet = "172.17.8"
$os = "ubuntu"
$network_plugin = "flannel"
# The first three nodes are etcd servers
$etcd_instances = $num_instances
# The first two nodes are kube masters
$kube_master_instances = $num_instances == 1 ? $num_instances : ($num_instances - 1)
# All nodes are kube nodes
$kube_node_instances = $num_instances
# The following only works when using the libvirt provider
$kube_node_instances_with_disks = false
$kube_node_instances_with_disks_size = "20G"
$kube_node_instances_with_disks_number = 2

$local_release_dir = "/vagrant/temp"

$inventory = File.join(File.dirname(File.dirname(__FILE__)), "inventory", "a22")
puts "config.rb set $inventory to #{$inventory}"
