Role Name
=========

MSSQL Server Playbooks for Standalone and failover cluster.

Requirements
------------

- Windows Servers
- A cluster in an Availability Group joined to a domain network

Role Variables
--------------

### vars file for mssqlserver for LinuxInstall.yml (for install, upgrade, uninstall, patch may not require)
- `mssql_password` : Password123!
- `mssql_edition` : Standard

### Defining Installation Configuration Folder
- `configtemplate` : configuration file

### Defining Defaults for setup executable
- `setupexecutable : SQLServer2019-KB5049235-x64

### Defining Defaults for the checking of services (May not be necessary)
- `SQLServerManager` : SQLServerManager15.msc
- `mmcPath` : C:\Windows\System32\mmc.exe

### MSSQL Server Name (typically windows host name)
- `ServerName` : AAPWIACDBDV02P
- `ServerType` : standalone #alwayson

- `replica_name` : abc

Dependencies
------------

  collections:
      - community.general
      - microsoft.sql
      - ansible.posix
      - ansible.windows
      - community.windows

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      tasks:
      - name: Install/Patch/Uninstall/Upgrade Microsoft SQL Server 2019
        ansible.builtin.include_role:
          name: mssqlserver
          tasks_from: WindowsInstall.yml

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
