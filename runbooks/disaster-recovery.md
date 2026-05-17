# Disaster Recovery Runbook

## Control Plane Failure

1. Verify remaining control planes
2. Check etcd quorum
3. Recreate failed node
4. Rejoin control plane

## Worker Failure

1. Drain node
2. Delete node
3. Recreate EC2
4. Rejoin worker

## etcd Backup

Run:

ETCDCTL_API=3 etcdctl snapshot save snapshot.db

## etcd Restore

Run restore process on replacement control plane.