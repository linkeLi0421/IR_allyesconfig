; ModuleID = '/llk/IR_all_yes/scripts/selinux/mdp/mdp.c_pt.bc'
source_filename = "../scripts/selinux/mdp/mdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.security_class_mapping = type { ptr, [33 x ptr] }

@.str = private unnamed_addr constant [9 x i8] c"security\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compute_av\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"compute_create\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"compute_member\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"check_context\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"load_policy\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"compute_relabel\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"compute_user\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"setenforce\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"setbool\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"setsecparam\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"setcheckreqprot\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"read_policy\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"validate_trans\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"transition\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"sigchld\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"sigkill\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"sigstop\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"signull\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"ptrace\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"getsched\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"setsched\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"getsession\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"getpgid\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"setpgid\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"getcap\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"setcap\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"getattr\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"setexec\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"setfscreate\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"noatsecure\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"siginh\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"setrlimit\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"rlimitinh\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"dyntransition\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"setcurrent\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"execmem\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"execstack\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"execheap\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"setkeycreate\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"setsockcreate\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"getrlimit\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"process2\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"nnp_transition\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"nosuid_transition\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ipc_info\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"syslog_read\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"syslog_mod\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"syslog_console\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"module_request\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"module_load\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"capability\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"dac_override\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"dac_read_search\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"fowner\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"fsetid\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"setuid\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"setpcap\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"linux_immutable\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"net_bind_service\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"net_broadcast\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"net_admin\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"net_raw\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"ipc_lock\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"ipc_owner\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"sys_module\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"sys_rawio\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"sys_chroot\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"sys_ptrace\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"sys_pacct\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"sys_admin\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"sys_boot\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"sys_nice\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"sys_resource\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"sys_time\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"sys_tty_config\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"mknod\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"lease\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"audit_write\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"audit_control\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"setfcap\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"filesystem\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"remount\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"unmount\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"relabelfrom\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"relabelto\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"associate\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"quotamod\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"quotaget\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"watch\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"setattr\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"quotaon\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"mounton\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"audit_access\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"execmod\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"watch_mount\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"watch_sb\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"watch_with_perm\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"watch_reads\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"execute_no_trans\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"entrypoint\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"add_name\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"remove_name\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"reparent\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"lnk_file\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"chr_file\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"blk_file\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"sock_file\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"fifo_file\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"getopt\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"setopt\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"name_bind\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"tcp_socket\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"node_bind\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"name_connect\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"udp_socket\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"rawip_socket\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"netif\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"ingress\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"egress\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"netlink_socket\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"packet_socket\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"key_socket\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"unix_stream_socket\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"connectto\00", align 1
@.str.161 = private unnamed_addr constant [18 x i8] c"unix_dgram_socket\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"sem\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"unix_read\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"unix_write\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"msgq\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"enqueue\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"shm\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"ipc\00", align 1
@.str.173 = private unnamed_addr constant [21 x i8] c"netlink_route_socket\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"nlmsg_read\00", align 1
@.str.175 = private unnamed_addr constant [12 x i8] c"nlmsg_write\00", align 1
@.str.176 = private unnamed_addr constant [23 x i8] c"netlink_tcpdiag_socket\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"netlink_nflog_socket\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"netlink_xfrm_socket\00", align 1
@.str.179 = private unnamed_addr constant [23 x i8] c"netlink_selinux_socket\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"netlink_iscsi_socket\00", align 1
@.str.181 = private unnamed_addr constant [21 x i8] c"netlink_audit_socket\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"nlmsg_relay\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"nlmsg_readpriv\00", align 1
@.str.184 = private unnamed_addr constant [16 x i8] c"nlmsg_tty_audit\00", align 1
@.str.185 = private unnamed_addr constant [26 x i8] c"netlink_fib_lookup_socket\00", align 1
@.str.186 = private unnamed_addr constant [25 x i8] c"netlink_connector_socket\00", align 1
@.str.187 = private unnamed_addr constant [25 x i8] c"netlink_netfilter_socket\00", align 1
@.str.188 = private unnamed_addr constant [20 x i8] c"netlink_dnrt_socket\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"association\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"setcontext\00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c"polmatch\00", align 1
@.str.192 = private unnamed_addr constant [30 x i8] c"netlink_kobject_uevent_socket\00", align 1
@.str.193 = private unnamed_addr constant [23 x i8] c"netlink_generic_socket\00", align 1
@.str.194 = private unnamed_addr constant [29 x i8] c"netlink_scsitransport_socket\00", align 1
@.str.195 = private unnamed_addr constant [20 x i8] c"netlink_rdma_socket\00", align 1
@.str.196 = private unnamed_addr constant [22 x i8] c"netlink_crypto_socket\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"appletalk_socket\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"forward_in\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"forward_out\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"dccp_socket\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"memprotect\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"mmap_zero\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"capability2\00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"mac_override\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"mac_admin\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"wake_alarm\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"block_suspend\00", align 1
@.str.214 = private unnamed_addr constant [11 x i8] c"audit_read\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"perfmon\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"bpf\00", align 1
@.str.217 = private unnamed_addr constant [19 x i8] c"checkpoint_restore\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"kernel_service\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"use_as_override\00", align 1
@.str.220 = private unnamed_addr constant [16 x i8] c"create_files_as\00", align 1
@.str.221 = private unnamed_addr constant [11 x i8] c"tun_socket\00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c"attach_queue\00", align 1
@.str.223 = private unnamed_addr constant [7 x i8] c"binder\00", align 1
@.str.224 = private unnamed_addr constant [12 x i8] c"impersonate\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.226 = private unnamed_addr constant [16 x i8] c"set_context_mgr\00", align 1
@.str.227 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@.str.228 = private unnamed_addr constant [11 x i8] c"cap_userns\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"cap2_userns\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c"sctp_socket\00", align 1
@.str.231 = private unnamed_addr constant [12 x i8] c"icmp_socket\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"ax25_socket\00", align 1
@.str.233 = private unnamed_addr constant [11 x i8] c"ipx_socket\00", align 1
@.str.234 = private unnamed_addr constant [14 x i8] c"netrom_socket\00", align 1
@.str.235 = private unnamed_addr constant [14 x i8] c"atmpvc_socket\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"x25_socket\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"rose_socket\00", align 1
@.str.238 = private unnamed_addr constant [14 x i8] c"decnet_socket\00", align 1
@.str.239 = private unnamed_addr constant [14 x i8] c"atmsvc_socket\00", align 1
@.str.240 = private unnamed_addr constant [11 x i8] c"rds_socket\00", align 1
@.str.241 = private unnamed_addr constant [12 x i8] c"irda_socket\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"pppox_socket\00", align 1
@.str.243 = private unnamed_addr constant [11 x i8] c"llc_socket\00", align 1
@.str.244 = private unnamed_addr constant [11 x i8] c"can_socket\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"tipc_socket\00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"bluetooth_socket\00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"iucv_socket\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"rxrpc_socket\00", align 1
@.str.249 = private unnamed_addr constant [12 x i8] c"isdn_socket\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"phonet_socket\00", align 1
@.str.251 = private unnamed_addr constant [18 x i8] c"ieee802154_socket\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"caif_socket\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"alg_socket\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"nfc_socket\00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"vsock_socket\00", align 1
@.str.256 = private unnamed_addr constant [11 x i8] c"kcm_socket\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"qipcrtr_socket\00", align 1
@.str.258 = private unnamed_addr constant [11 x i8] c"smc_socket\00", align 1
@.str.259 = private unnamed_addr constant [16 x i8] c"infiniband_pkey\00", align 1
@.str.260 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.261 = private unnamed_addr constant [19 x i8] c"infiniband_endport\00", align 1
@.str.262 = private unnamed_addr constant [14 x i8] c"manage_subnet\00", align 1
@.str.263 = private unnamed_addr constant [11 x i8] c"map_create\00", align 1
@.str.264 = private unnamed_addr constant [9 x i8] c"map_read\00", align 1
@.str.265 = private unnamed_addr constant [10 x i8] c"map_write\00", align 1
@.str.266 = private unnamed_addr constant [10 x i8] c"prog_load\00", align 1
@.str.267 = private unnamed_addr constant [9 x i8] c"prog_run\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"xdp_socket\00", align 1
@.str.269 = private unnamed_addr constant [12 x i8] c"mctp_socket\00", align 1
@.str.270 = private unnamed_addr constant [11 x i8] c"perf_event\00", align 1
@.str.271 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.272 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.273 = private unnamed_addr constant [11 x i8] c"tracepoint\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"anon_inode\00", align 1
@.str.275 = private unnamed_addr constant [9 x i8] c"io_uring\00", align 1
@.str.276 = private unnamed_addr constant [15 x i8] c"override_creds\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"sqpoll\00", align 1
@secclass_map = dso_local local_unnamed_addr global <{ { ptr, <{ [13 x ptr], [20 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ [10 x ptr], [23 x ptr] }> }, %struct.security_class_mapping, %struct.security_class_mapping, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [26 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ [24 x ptr], [9 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, %struct.security_class_mapping }> <{ { ptr, <{ [13 x ptr], [20 x ptr] }> } { ptr @.str, <{ [13 x ptr], [20 x ptr] }> <{ [13 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [20 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.14, [33 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr null, ptr null] }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.46, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.47, ptr @.str.48, [31 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> } { ptr @.str.49, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> <{ ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, [27 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.56, [33 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr null] }, { ptr, <{ [10 x ptr], [23 x ptr] }> } { ptr @.str.89, <{ [10 x ptr], [23 x ptr] }> <{ [10 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.31, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], [23 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.99, [33 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null] }, %struct.security_class_mapping { ptr @.str.123, [33 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr null, ptr null, ptr null] }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.129, <{ ptr, [32 x ptr] }> <{ ptr @.str.130, [32 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.131, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.132, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.133, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.134, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.135, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.136, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.147, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.149], [10 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.150, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148], [11 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.151, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148], [11 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.152, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.144, ptr @.str.145, [31 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.153, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.154, ptr @.str.155, [31 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.156, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.157, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.158, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.159, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.160], [11 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.161, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> } { ptr @.str.162, <{ [9 x ptr], [24 x ptr] }> <{ [9 x ptr] [ptr @.str.103, ptr @.str.163, ptr @.str.31, ptr @.str.104, ptr @.str.101, ptr @.str.102, ptr @.str.95, ptr @.str.164, ptr @.str.165], [24 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.166, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.167, ptr @.str.168, [31 x ptr] zeroinitializer }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> } { ptr @.str.169, <{ [10 x ptr], [23 x ptr] }> <{ [10 x ptr] [ptr @.str.103, ptr @.str.163, ptr @.str.31, ptr @.str.104, ptr @.str.101, ptr @.str.102, ptr @.str.95, ptr @.str.164, ptr @.str.165, ptr @.str.170], [23 x ptr] zeroinitializer }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> } { ptr @.str.171, <{ [10 x ptr], [23 x ptr] }> <{ [10 x ptr] [ptr @.str.103, ptr @.str.163, ptr @.str.31, ptr @.str.104, ptr @.str.101, ptr @.str.102, ptr @.str.95, ptr @.str.164, ptr @.str.165, ptr @.str.105], [23 x ptr] zeroinitializer }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> } { ptr @.str.172, <{ [9 x ptr], [24 x ptr] }> <{ [9 x ptr] [ptr @.str.103, ptr @.str.163, ptr @.str.31, ptr @.str.104, ptr @.str.101, ptr @.str.102, ptr @.str.95, ptr @.str.164, ptr @.str.165], [24 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.173, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.174, ptr @.str.175], [10 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.176, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.174, ptr @.str.175], [10 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.177, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.178, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.174, ptr @.str.175], [10 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.179, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.180, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.181, [33 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.174, ptr @.str.175, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null] }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.185, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.186, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.187, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.188, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> } { ptr @.str.189, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> <{ ptr @.str.145, ptr @.str.144, ptr @.str.190, ptr @.str.191, [29 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.192, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.193, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.194, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.195, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.196, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.197, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> } { ptr @.str.198, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> <{ ptr @.str.167, ptr @.str.199, ptr @.str.94, ptr @.str.200, ptr @.str.201, [28 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [26 x ptr] }> } { ptr @.str.202, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.203, ptr @.str.101, ptr @.str.102, ptr @.str.127, ptr @.str.109, ptr @.str.104, ptr @.str.103, [26 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.204, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.149], [10 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.205, <{ ptr, [32 x ptr] }> <{ ptr @.str.206, [32 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.207, <{ ptr, [32 x ptr] }> <{ ptr @.str.199, [32 x ptr] zeroinitializer }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> } { ptr @.str.208, <{ [9 x ptr], [24 x ptr] }> <{ [9 x ptr] [ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217], [24 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.218, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.219, ptr @.str.220, [31 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.221, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.222], [11 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> } { ptr @.str.223, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> <{ ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, [29 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.228, [33 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr null] }, { ptr, <{ [9 x ptr], [24 x ptr] }> } { ptr @.str.229, <{ [9 x ptr], [24 x ptr] }> <{ [9 x ptr] [ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217], [24 x ptr] zeroinitializer }> }, { ptr, <{ [24 x ptr], [9 x ptr] }> } { ptr @.str.230, <{ [24 x ptr], [9 x ptr] }> <{ [24 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.189], [9 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.231, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148], [11 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.232, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.233, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.234, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.235, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.236, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.237, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.238, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.239, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.240, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.241, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.242, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.243, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.244, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.245, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.246, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.247, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.248, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.249, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.250, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.251, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.252, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.253, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.254, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.255, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.256, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.257, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.258, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.259, <{ ptr, [32 x ptr] }> <{ ptr @.str.260, [32 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.261, <{ ptr, [32 x ptr] }> <{ ptr @.str.262, [32 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> } { ptr @.str.216, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> <{ ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, [28 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.268, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.269, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> } { ptr @.str.270, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> <{ ptr @.str.115, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.101, ptr @.str.102, [27 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.274, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.275, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.276, ptr @.str.277, [31 x ptr] zeroinitializer }> }, %struct.security_class_mapping zeroinitializer }>, align 16
@.str.278 = private unnamed_addr constant [22 x i8] c"network_peer_controls\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"open_perms\00", align 1
@.str.280 = private unnamed_addr constant [22 x i8] c"extended_socket_class\00", align 1
@.str.281 = private unnamed_addr constant [21 x i8] c"always_check_network\00", align 1
@.str.282 = private unnamed_addr constant [16 x i8] c"cgroup_seclabel\00", align 1
@.str.283 = private unnamed_addr constant [22 x i8] c"nnp_nosuid_transition\00", align 1
@.str.284 = private unnamed_addr constant [24 x i8] c"genfs_seclabel_symlinks\00", align 1
@selinux_policycap_names = dso_local local_unnamed_addr global [7 x ptr] [ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284], align 16
@.str.285 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.286 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.287 = private unnamed_addr constant [31 x i8] c"Could not open %s for writing\0A\00", align 1
@.str.288 = private unnamed_addr constant [10 x i8] c"class %s\0A\00", align 1
@initial_sid_to_string = internal unnamed_addr constant [28 x ptr] [ptr null, ptr @.str.272, ptr @.str, ptr @.str.355, ptr null, ptr @.str.99, ptr null, ptr null, ptr @.str.356, ptr @.str.357, ptr @.str.153, ptr @.str.358, ptr @.str.152, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.359], align 16
@.str.290 = private unnamed_addr constant [8 x i8] c"sid %s\0A\00", align 1
@.str.291 = private unnamed_addr constant [14 x i8] c"sid unused%d\0A\00", align 1
@.str.292 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.293 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.294 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.295 = private unnamed_addr constant [17 x i8] c"sensitivity s0;\0A\00", align 1
@.str.296 = private unnamed_addr constant [17 x i8] c"sensitivity s1;\0A\00", align 1
@.str.297 = private unnamed_addr constant [21 x i8] c"dominance { s0 s1 }\0A\00", align 1
@.str.298 = private unnamed_addr constant [14 x i8] c"category c0;\0A\00", align 1
@.str.299 = private unnamed_addr constant [14 x i8] c"category c1;\0A\00", align 1
@.str.300 = private unnamed_addr constant [17 x i8] c"level s0:c0.c1;\0A\00", align 1
@.str.301 = private unnamed_addr constant [17 x i8] c"level s1:c0.c1;\0A\00", align 1
@.str.302 = private unnamed_addr constant [19 x i8] c"mlsconstrain %s {\0A\00", align 1
@.str.303 = private unnamed_addr constant [30 x i8] c"} (l2 eq h2 and h1 dom h2);\0A\0A\00", align 1
@.str.304 = private unnamed_addr constant [15 x i8] c"policycap %s;\0A\00", align 1
@.str.305 = private unnamed_addr constant [14 x i8] c"type base_t;\0A\00", align 1
@.str.306 = private unnamed_addr constant [14 x i8] c"role base_r;\0A\00", align 1
@.str.307 = private unnamed_addr constant [31 x i8] c"role base_r types { base_t };\0A\00", align 1
@.str.308 = private unnamed_addr constant [27 x i8] c"allow base_t base_t:%s *;\0A\00", align 1
@.str.309 = private unnamed_addr constant [29 x i8] c"user user_u roles { base_r }\00", align 1
@.str.310 = private unnamed_addr constant [24 x i8] c" level %s range %s - %s\00", align 1
@.str.311 = private unnamed_addr constant [3 x i8] c"s0\00", align 1
@.str.312 = private unnamed_addr constant [9 x i8] c"s1:c0.c1\00", align 1
@.str.313 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.314 = private unnamed_addr constant [8 x i8] c"sid %s \00", align 1
@.str.315 = private unnamed_addr constant [24 x i8] c"user_u:base_r:base_t%s\0A\00", align 1
@.str.316 = private unnamed_addr constant [4 x i8] c":s0\00", align 1
@.str.317 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.318 = private unnamed_addr constant [40 x i8] c"fs_use_%s %s user_u:object_r:base_t%s;\0A\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"xattr\00", align 1
@.str.320 = private unnamed_addr constant [5 x i8] c"ext2\00", align 1
@.str.321 = private unnamed_addr constant [5 x i8] c"ext3\00", align 1
@.str.322 = private unnamed_addr constant [5 x i8] c"ext4\00", align 1
@.str.323 = private unnamed_addr constant [4 x i8] c"jfs\00", align 1
@.str.324 = private unnamed_addr constant [9 x i8] c"reiserfs\00", align 1
@.str.325 = private unnamed_addr constant [6 x i8] c"jffs2\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"xfs\00", align 1
@.str.327 = private unnamed_addr constant [5 x i8] c"gfs2\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"btrfs\00", align 1
@.str.329 = private unnamed_addr constant [5 x i8] c"f2fs\00", align 1
@.str.330 = private unnamed_addr constant [7 x i8] c"ocsfs2\00", align 1
@.str.331 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.332 = private unnamed_addr constant [9 x i8] c"squashfs\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.334 = private unnamed_addr constant [7 x i8] c"pipefs\00", align 1
@.str.335 = private unnamed_addr constant [7 x i8] c"sockfs\00", align 1
@.str.336 = private unnamed_addr constant [6 x i8] c"trans\00", align 1
@.str.337 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@.str.338 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@.str.339 = private unnamed_addr constant [9 x i8] c"devtmpfs\00", align 1
@.str.340 = private unnamed_addr constant [7 x i8] c"mqueue\00", align 1
@.str.341 = private unnamed_addr constant [41 x i8] c"genfscon %s %s user_u:object_r:base_t%s\0A\00", align 1
@.str.342 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.343 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.344 = private unnamed_addr constant [10 x i8] c"selinuxfs\00", align 1
@.str.345 = private unnamed_addr constant [6 x i8] c"sysfs\00", align 1
@.str.346 = private unnamed_addr constant [8 x i8] c"debugfs\00", align 1
@.str.347 = private unnamed_addr constant [8 x i8] c"tracefs\00", align 1
@.str.348 = private unnamed_addr constant [7 x i8] c"pstore\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.350 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@.str.351 = private unnamed_addr constant [46 x i8] c"Wrote policy, but cannot open %s for writing\0A\00", align 1
@.str.352 = private unnamed_addr constant [28 x i8] c"/ user_u:object_r:base_t%s\0A\00", align 1
@.str.353 = private unnamed_addr constant [30 x i8] c"/.* user_u:object_r:base_t%s\0A\00", align 1
@.str.354 = private unnamed_addr constant [41 x i8] c"usage: %s [-m] policy_file context_file\0A\00", align 1
@.str.355 = private unnamed_addr constant [10 x i8] c"unlabeled\00", align 1
@.str.356 = private unnamed_addr constant [11 x i8] c"any_socket\00", align 1
@.str.357 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.358 = private unnamed_addr constant [7 x i8] c"netmsg\00", align 1
@.str.359 = private unnamed_addr constant [8 x i8] c"devnull\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %argv, align 8, !tbaa !5
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.354, ptr noundef %0) #5
  tail call void @exit(i32 noundef 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds ptr, ptr %argv, i64 1
  %cmp1 = icmp eq i32 %argc, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %1 = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.285) #7
  %cmp3 = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr inbounds ptr, ptr %argv, i64 2
  %spec.select = select i1 %cmp3, ptr %incdec.ptr, ptr %add.ptr
  %not.cmp3 = xor i1 %cmp3, true
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %arg.0 = phi ptr [ %add.ptr, %if.end ], [ %spec.select, %land.lhs.true ]
  %tobool62.not = phi i1 [ true, %if.end ], [ %not.cmp3, %land.lhs.true ]
  %incdec.ptr6 = getelementptr inbounds ptr, ptr %arg.0, i64 1
  %2 = load ptr, ptr %arg.0, align 8, !tbaa !5
  %3 = load ptr, ptr %incdec.ptr6, align 8, !tbaa !5
  %call7 = tail call ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.286)
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %4 = load ptr, ptr @secclass_map, align 16, !tbaa !9
  %tobool13.not399 = icmp eq ptr %4, null
  br i1 %tobool13.not399, label %for.end, label %for.body

if.then8:                                         ; preds = %if.end5
  %call9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.287, ptr noundef %2)
  %5 = load ptr, ptr %argv, align 8, !tbaa !5
  %call.i395 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.354, ptr noundef %5) #5
  tail call void @exit(i32 noundef 1) #6
  unreachable

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %6 = phi ptr [ %7, %for.body ], [ %4, %for.cond.preheader ]
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.288, ptr noundef nonnull %6)
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx12 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv.next
  %7 = load ptr, ptr %arrayidx12, align 16, !tbaa !9
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %fputc = tail call i32 @fputc(i32 10, ptr %call7)
  br label %for.body21

for.body21:                                       ; preds = %if.end29, %for.end
  %indvars.iv419 = phi i64 [ 1, %for.end ], [ %indvars.iv.next420, %if.end29 ]
  %8 = lshr i64 134209745, %indvars.iv419
  %9 = and i64 %8, 1
  %tobool25.not.not = icmp eq i64 %9, 0
  br i1 %tobool25.not.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %for.body21
  %arrayidx24 = getelementptr inbounds [28 x ptr], ptr @initial_sid_to_string, i64 0, i64 %indvars.iv419
  %10 = load ptr, ptr %arrayidx24, align 8, !tbaa !5
  %call27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.290, ptr noundef %10)
  br label %if.end29

if.else:                                          ; preds = %for.body21
  %11 = trunc i64 %indvars.iv419 to i32
  %call28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.291, i32 noundef %11)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next420, 28
  br i1 %exitcond.not, label %for.end32, label %for.body21

for.end32:                                        ; preds = %if.end29
  %fputc391 = tail call i32 @fputc(i32 10, ptr %call7)
  %12 = load ptr, ptr @secclass_map, align 16, !tbaa !9
  %tobool38.not405 = icmp eq ptr %12, null
  br i1 %tobool38.not405, label %for.end60, label %for.body39

for.body39:                                       ; preds = %for.end56, %for.end32
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %for.end56 ], [ 0, %for.end32 ]
  %13 = phi ptr [ %19, %for.end56 ], [ %12, %for.end32 ]
  %call43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.288, ptr noundef nonnull %13)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.292, i64 2, i64 1, ptr %call7)
  %arrayidx47402 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv425, i32 1, i64 0
  %15 = load ptr, ptr %arrayidx47402, align 8, !tbaa !5
  %tobool48.not403 = icmp eq ptr %15, null
  br i1 %tobool48.not403, label %for.end56, label %for.body49

for.body49:                                       ; preds = %for.body49, %for.body39
  %indvars.iv422 = phi i64 [ %indvars.iv.next423, %for.body49 ], [ 0, %for.body39 ]
  %16 = phi ptr [ %17, %for.body49 ], [ %15, %for.body39 ]
  %call53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.293, ptr noundef nonnull %16)
  %indvars.iv.next423 = add nuw i64 %indvars.iv422, 1
  %arrayidx47 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv425, i32 1, i64 %indvars.iv.next423
  %17 = load ptr, ptr %arrayidx47, align 8, !tbaa !5
  %tobool48.not = icmp eq ptr %17, null
  br i1 %tobool48.not, label %for.end56, label %for.body49

for.end56:                                        ; preds = %for.body49, %for.body39
  %18 = tail call i64 @fwrite(ptr nonnull @.str.294, i64 3, i64 1, ptr %call7)
  %indvars.iv.next426 = add nuw i64 %indvars.iv425, 1
  %arrayidx36 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv.next426
  %19 = load ptr, ptr %arrayidx36, align 16, !tbaa !9
  %tobool38.not = icmp eq ptr %19, null
  br i1 %tobool38.not, label %for.end60, label %for.body39

for.end60:                                        ; preds = %for.end56, %for.end32
  %fputc392 = tail call i32 @fputc(i32 10, ptr %call7)
  br i1 %tobool62.not, label %if.end99, label %if.then63

if.then63:                                        ; preds = %for.end60
  %20 = tail call i64 @fwrite(ptr nonnull @.str.295, i64 16, i64 1, ptr %call7)
  %21 = tail call i64 @fwrite(ptr nonnull @.str.296, i64 16, i64 1, ptr %call7)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.297, i64 20, i64 1, ptr %call7)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.298, i64 13, i64 1, ptr %call7)
  %24 = tail call i64 @fwrite(ptr nonnull @.str.299, i64 13, i64 1, ptr %call7)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.300, i64 16, i64 1, ptr %call7)
  %26 = tail call i64 @fwrite(ptr nonnull @.str.301, i64 16, i64 1, ptr %call7)
  %27 = load ptr, ptr @secclass_map, align 16, !tbaa !9
  %tobool75.not411 = icmp eq ptr %27, null
  br i1 %tobool75.not411, label %if.end99, label %for.body76

for.body76:                                       ; preds = %for.end94, %if.then63
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %for.end94 ], [ 0, %if.then63 ]
  %28 = phi ptr [ %33, %for.end94 ], [ %27, %if.then63 ]
  %call81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.302, ptr noundef nonnull %28)
  %arrayidx85408 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv431, i32 1, i64 0
  %29 = load ptr, ptr %arrayidx85408, align 8, !tbaa !5
  %tobool86.not409 = icmp eq ptr %29, null
  br i1 %tobool86.not409, label %for.end94, label %for.body87

for.body87:                                       ; preds = %for.body87, %for.body76
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %for.body87 ], [ 0, %for.body76 ]
  %30 = phi ptr [ %31, %for.body87 ], [ %29, %for.body76 ]
  %call91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.293, ptr noundef nonnull %30)
  %indvars.iv.next429 = add nuw i64 %indvars.iv428, 1
  %arrayidx85 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv431, i32 1, i64 %indvars.iv.next429
  %31 = load ptr, ptr %arrayidx85, align 8, !tbaa !5
  %tobool86.not = icmp eq ptr %31, null
  br i1 %tobool86.not, label %for.end94, label %for.body87

for.end94:                                        ; preds = %for.body87, %for.body76
  %32 = tail call i64 @fwrite(ptr nonnull @.str.303, i64 29, i64 1, ptr %call7)
  %indvars.iv.next432 = add nuw i64 %indvars.iv431, 1
  %arrayidx73 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv.next432
  %33 = load ptr, ptr %arrayidx73, align 16, !tbaa !9
  %tobool75.not = icmp eq ptr %33, null
  br i1 %tobool75.not, label %if.end99, label %for.body76

if.end99:                                         ; preds = %for.end94, %if.then63, %for.end60
  %34 = load ptr, ptr @selinux_policycap_names, align 16, !tbaa !5
  %call106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.304, ptr noundef %34)
  %35 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i64 0, i64 1), align 8, !tbaa !5
  %call106.1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.304, ptr noundef %35)
  %36 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i64 0, i64 2), align 16, !tbaa !5
  %call106.2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.304, ptr noundef %36)
  %37 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i64 0, i64 3), align 8, !tbaa !5
  %call106.3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.304, ptr noundef %37)
  %38 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i64 0, i64 4), align 16, !tbaa !5
  %call106.4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.304, ptr noundef %38)
  %39 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i64 0, i64 5), align 8, !tbaa !5
  %call106.5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.304, ptr noundef %39)
  %40 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i64 0, i64 6), align 16, !tbaa !5
  %call106.6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.304, ptr noundef %40)
  %41 = tail call i64 @fwrite(ptr nonnull @.str.305, i64 13, i64 1, ptr %call7)
  %42 = tail call i64 @fwrite(ptr nonnull @.str.306, i64 13, i64 1, ptr %call7)
  %43 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 30, i64 1, ptr %call7)
  %44 = load ptr, ptr @secclass_map, align 16, !tbaa !9
  %tobool117.not415 = icmp eq ptr %44, null
  br i1 %tobool117.not415, label %for.end125, label %for.body118

for.body118:                                      ; preds = %for.body118, %if.end99
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %for.body118 ], [ 0, %if.end99 ]
  %45 = phi ptr [ %46, %for.body118 ], [ %44, %if.end99 ]
  %call122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.308, ptr noundef nonnull %45)
  %indvars.iv.next439 = add nuw i64 %indvars.iv438, 1
  %arrayidx115 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv.next439
  %46 = load ptr, ptr %arrayidx115, align 16, !tbaa !9
  %tobool117.not = icmp eq ptr %46, null
  br i1 %tobool117.not, label %for.end125, label %for.body118

for.end125:                                       ; preds = %for.body118, %if.end99
  %47 = tail call i64 @fwrite(ptr nonnull @.str.309, i64 28, i64 1, ptr %call7)
  br i1 %tobool62.not, label %if.end130, label %if.then128

if.then128:                                       ; preds = %for.end125
  %call129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.312)
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %for.end125
  %cond = phi ptr [ @.str.316, %if.then128 ], [ @.str.317, %for.end125 ]
  %48 = tail call i64 @fwrite(ptr nonnull @.str.313, i64 2, i64 1, ptr %call7)
  br label %for.body135

for.body135:                                      ; preds = %if.end144, %if.end130
  %indvars.iv441 = phi i64 [ 1, %if.end130 ], [ %indvars.iv.next442, %if.end144 ]
  %49 = lshr i64 134209745, %indvars.iv441
  %50 = and i64 %49, 1
  %tobool139.not.not = icmp eq i64 %50, 0
  br i1 %tobool139.not.not, label %if.then140, label %if.else142

if.then140:                                       ; preds = %for.body135
  %arrayidx138 = getelementptr inbounds [28 x ptr], ptr @initial_sid_to_string, i64 0, i64 %indvars.iv441
  %51 = load ptr, ptr %arrayidx138, align 8, !tbaa !5
  %call141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.314, ptr noundef %51)
  br label %if.end144

if.else142:                                       ; preds = %for.body135
  %52 = trunc i64 %indvars.iv441 to i32
  %call143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.291, i32 noundef %52)
  br label %if.end144

if.end144:                                        ; preds = %if.else142, %if.then140
  %call146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.315, ptr noundef nonnull %cond)
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1
  %exitcond444.not = icmp eq i64 %indvars.iv.next442, 28
  br i1 %exitcond444.not, label %for.end149, label %for.body135

for.end149:                                       ; preds = %if.end144
  %fputc393 = tail call i32 @fputc(i32 10, ptr %call7)
  %cond152 = select i1 %tobool62.not, ptr @.str.317, ptr @.str.316
  %call153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.320, ptr noundef nonnull %cond152)
  %call156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.321, ptr noundef nonnull %cond152)
  %call159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.322, ptr noundef nonnull %cond152)
  %call162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.323, ptr noundef nonnull %cond152)
  %call165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.324, ptr noundef nonnull %cond152)
  %call168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.325, ptr noundef nonnull %cond152)
  %call171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.326, ptr noundef nonnull %cond152)
  %call174 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.327, ptr noundef nonnull %cond152)
  %call177 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.328, ptr noundef nonnull %cond152)
  %call180 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.329, ptr noundef nonnull %cond152)
  %call183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.330, ptr noundef nonnull %cond152)
  %call186 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.331, ptr noundef nonnull %cond152)
  %call189 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.332, ptr noundef nonnull %cond152)
  %call192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.333, ptr noundef nonnull @.str.334, ptr noundef nonnull %cond152)
  %call195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.333, ptr noundef nonnull @.str.335, ptr noundef nonnull %cond152)
  %call198 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.336, ptr noundef nonnull @.str.337, ptr noundef nonnull %cond152)
  %call201 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.336, ptr noundef nonnull @.str.338, ptr noundef nonnull %cond152)
  %call204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.336, ptr noundef nonnull @.str.339, ptr noundef nonnull %cond152)
  %call207 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.336, ptr noundef nonnull @.str.340, ptr noundef nonnull %cond152)
  %call210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.342, ptr noundef nonnull @.str.343, ptr noundef nonnull %cond152)
  %call213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.343, ptr noundef nonnull %cond152)
  %call216 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.343, ptr noundef nonnull %cond152)
  %call219 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.343, ptr noundef nonnull %cond152)
  %call222 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.343, ptr noundef nonnull %cond152)
  %call225 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.343, ptr noundef nonnull %cond152)
  %call228 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.349, ptr noundef nonnull @.str.343, ptr noundef nonnull %cond152)
  %call231 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call7, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.343, ptr noundef nonnull %cond152)
  %call232 = tail call i32 @fclose(ptr noundef %call7)
  %call233 = tail call ptr @fopen(ptr noundef %3, ptr noundef nonnull @.str.286)
  %tobool234.not = icmp eq ptr %call233, null
  br i1 %tobool234.not, label %if.then235, label %if.end238

if.then235:                                       ; preds = %for.end149
  %call236 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.351, ptr noundef %3)
  %53 = load ptr, ptr %argv, align 8, !tbaa !5
  %call.i397 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.354, ptr noundef %53) #5
  tail call void @exit(i32 noundef 1) #6
  unreachable

if.end238:                                        ; preds = %for.end149
  %call241 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call233, ptr noundef nonnull @.str.352, ptr noundef nonnull %cond152)
  %call244 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call233, ptr noundef nonnull @.str.353, ptr noundef nonnull %cond152)
  %call245 = tail call i32 @fclose(ptr noundef nonnull %call233)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"security_class_mapping", !6, i64 0, !7, i64 8}
