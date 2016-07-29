#!/bin/bash


if [ -z ${SLURM_CLUSTER_NAME+x} ]; then echo "SLURM_CLUSTER_NAME not set" && exit 1; fi
if [ -z ${SLURM_CONTROL_MACHINE+x} ]; then echo "SLURM_CONTROL_MACHINE not set" && exit 1; fi

sed -i "/###SLURM_CLUSTER_NAME###/c\ClusterName=${SLURM_CLUSTER_NAME}" /usr/local/etc/slurm.conf
sed -i "/###SLURM_CONTROL_MACHINE###/c\ControlMachine=${SLURM_CONTROL_MACHINE}" /usr/local/etc/slurm.conf

/usr/bin/supervisord --nodaemon
