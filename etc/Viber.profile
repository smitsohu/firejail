# Firejail profile for Viber
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/Viber.local
# Persistent global definitions
include /etc/firejail/globals.local


noblacklist ${HOME}/.ViberPC

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

whitelist ${DOWNLOADS}
whitelist ${HOME}/.ViberPC
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
netfilter
nodvd
nogroups
nonewprivs
# noroot
notv
protocol unix,inet,inet6,netlink
seccomp.drop @clock,@cpu-emulation,@debug,@module,@obsolete,@raw-io,@reboot,@resources,@swap,acct,add_key,bpf,fanotify_init,io_cancel,io_destroy,io_getevents,io_setup,io_submit,ioprio_set,kcmp,keyctl,mount,name_to_handle_at,nfsservctl,ni_syscall,open_by_handle_at,personality,pivot_root,process_vm_readv,ptrace,remap_file_pages,request_key,setdomainname,sethostname,syslog,umount,umount2,userfaultfd,vhangup,vmsplice
shell none

disable-mnt
private-bin sh,dig,awk,xdg-mime,cut,touch,mv
private-etc hosts,fonts,mailcap,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf,ssl,proxychains.conf
private-tmp

env QML_DISABLE_DISK_CACHE=1
noexec ${HOME}
noexec /tmp
