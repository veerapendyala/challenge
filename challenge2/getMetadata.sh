#!/bin/bash
#Challenge #2
#Get VM Instance Metadata 
echo "######### Get VM Instance Metadata #########"
curl -s -H Metadata:true "http://169.254.169.254/metadata/instance?api-version=2017-08-01" > vmMetadata.json

#Metadata JSON
echo "######### vmMetadata.json #########"
cat vmMetadata.json | jq

echo "######### VM Metadata #########"
echo "Azure Region the VM is running:" "$(cat vmMetadata.json | jq -r '.compute.location')"
echo "Name of the VM:" "$(cat vmMetadata.json | jq -r '.compute.name')"
echo "Offer:" "$(cat vmMetadata.json | jq -r '.compute.offer')"
echo "Publisher of the VM image:" "$(cat vmMetadata.json | jq -r '.compute.publisher')"
echo "SKU for the VM image:" "$(cat vmMetadata.json | jq -r '.compute.sku')"
echo "Version of the VM Image:" "$(cat vmMetadata.json | jq -r '.compute.version')"
echo "OS Type:" "$(cat vmMetadata.json | jq -r '.compute.osType')"
echo "platformUpdateDomain:" "$(cat vmMetadata.json | jq -r '.compute.platformUpdateDomain')"
echo "platformFaultDomain:" "$(cat vmMetadata.json | jq -r '.compute.platformFaultDomain')"
echo "Unique identifier for the VM:" "$(cat vmMetadata.json | jq -r '.compute.vmId')"
echo "VM Size:" "$(cat vmMetadata.json | jq -r '.compute.vmSize')"

echo "Private IpAddress:" "$(cat vmMetadata.json | jq -r '.network.interface[0].ipv4.ipAddress[].privateIpAddress ')"
echo "Public IpAddress:" "$(cat vmMetadata.json | jq -r '.network.interface[0].ipv4.ipAddress[].publicIpAddress ')"
echo "Subnet Address:" "$(cat vmMetadata.json | jq -r '.network.interface[0].ipv4.subnet[].address ')"
echo "Subnet Prefix:" "$(cat vmMetadata.json | jq -r '.network.interface[0].ipv4.subnet[].prefix ')"
echo "macAddress :" "$(cat vmMetadata.json | jq -r '.network.interface[0].macAddress ')"
echo "######### Done #########"
