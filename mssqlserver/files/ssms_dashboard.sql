select * from sys.dm_hadr_cluster

select * from sys.dm_hadr_cluster_members

select * from sys.dm_hadr_cluster_networks

select * from sys.availability_groups

select * from sys.availability_groups_cluster

select * from sys.dm_hadr_availability_group_states

select * from sys.availability_replicas

select * from sys.dm_hadr_availability_replica_cluster_nodes

select * from sys.dm_hadr_availability_replica_cluster_states

select * from sys.dm_hadr_availability_replica_states

select * from sys.dm_hadr_auto_page_repair

select * from sys.dm_hadr_database_replica_states

select * from sys.dm_hadr_database_replica_cluster_states

select * from sys.availability_group_listener_ip_addresses

select * from sys.availability_group_listeners

select * from sys.dm_tcp_listener_states

select object_name,counter_name,instance_name,cntr_value
from sys.dm_os_performance_counters
where object_name like '%replica%';