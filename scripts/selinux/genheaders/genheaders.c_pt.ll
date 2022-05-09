; ModuleID = '/llk/IR_all_yes/scripts/selinux/genheaders/genheaders.c_pt.bc'
source_filename = "../scripts/selinux/genheaders/genheaders.c"
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
@progname = dso_local local_unnamed_addr global ptr null, align 8
@.str.278 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.279 = private unnamed_addr constant [36 x i8] c"Could not open %s for writing:  %s\0A\00", align 1
@initial_sid_to_string = internal unnamed_addr global [28 x ptr] [ptr null, ptr @.str.272, ptr @.str, ptr @.str.303, ptr null, ptr @.str.99, ptr null, ptr null, ptr @.str.304, ptr @.str.305, ptr @.str.153, ptr @.str.306, ptr @.str.152, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.307], align 16
@.str.280 = private unnamed_addr constant [59 x i8] c"/* This file is automatically generated.  Do not edit. */\0A\00", align 1
@.str.281 = private unnamed_addr constant [54 x i8] c"#ifndef _SELINUX_FLASK_H_\0A#define _SELINUX_FLASK_H_\0A\0A\00", align 1
@.str.282 = private unnamed_addr constant [28 x i8] c"#define SECCLASS_%-39s %2d\0A\00", align 1
@.str.284 = private unnamed_addr constant [30 x i8] c"#define SECINITSID_%-39s %2d\0A\00", align 1
@.str.285 = private unnamed_addr constant [28 x i8] c"\0A#define SECINITSID_NUM %d\0A\00", align 1
@.str.286 = private unnamed_addr constant [63 x i8] c"\0Astatic inline bool security_is_socket_class(u16 kern_tclass)\0A\00", align 1
@.str.287 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.288 = private unnamed_addr constant [22 x i8] c"\09bool sock = false;\0A\0A\00", align 1
@.str.289 = private unnamed_addr constant [25 x i8] c"\09switch (kern_tclass) {\0A\00", align 1
@main.s = internal global [7 x i8] c"SOCKET\00", align 1
@.str.290 = private unnamed_addr constant [20 x i8] c"\09case SECCLASS_%s:\0A\00", align 1
@.str.291 = private unnamed_addr constant [16 x i8] c"\09\09sock = true;\0A\00", align 1
@.str.292 = private unnamed_addr constant [10 x i8] c"\09\09break;\0A\00", align 1
@.str.293 = private unnamed_addr constant [11 x i8] c"\09default:\0A\00", align 1
@.str.294 = private unnamed_addr constant [5 x i8] c"\09}\0A\0A\00", align 1
@.str.295 = private unnamed_addr constant [15 x i8] c"\09return sock;\0A\00", align 1
@.str.296 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.297 = private unnamed_addr constant [9 x i8] c"\0A#endif\0A\00", align 1
@.str.298 = private unnamed_addr constant [72 x i8] c"#ifndef _SELINUX_AV_PERMISSIONS_H_\0A#define _SELINUX_AV_PERMISSIONS_H_\0A\0A\00", align 1
@.str.299 = private unnamed_addr constant [64 x i8] c"Too many permissions to fit into an access vector at (%s, %s).\0A\00", align 1
@.str.300 = private unnamed_addr constant [26 x i8] c"#define %s__%-*s 0x%08xU\0A\00", align 1
@.str.301 = private unnamed_addr constant [36 x i8] c"usage: %s flask.h av_permissions.h\0A\00", align 1
@.str.302 = private unnamed_addr constant [20 x i8] c"%s:  out of memory\0A\00", align 1
@.str.303 = private unnamed_addr constant [10 x i8] c"unlabeled\00", align 1
@.str.304 = private unnamed_addr constant [11 x i8] c"any_socket\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"netmsg\00", align 1
@.str.307 = private unnamed_addr constant [8 x i8] c"devnull\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %argv, align 8, !tbaa !5
  store ptr %0, ptr @progname, align 8, !tbaa !5
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.301, ptr noundef %0) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds ptr, ptr %argv, i64 1
  %1 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  %call = tail call ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.278)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %2 = load ptr, ptr @secclass_map, align 16, !tbaa !9
  %tobool9.not291 = icmp eq ptr %2, null
  br i1 %tobool9.not291, label %for.body32.preheader, label %for.body

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  %call4 = tail call ptr @__errno_location() #11
  %5 = load i32, ptr %call4, align 4, !tbaa !11
  %call5 = tail call ptr @strerror(i32 noundef %5) #9
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.279, ptr noundef %4, ptr noundef %call5) #12
  tail call void @exit(i32 noundef 2) #10
  unreachable

for.body:                                         ; preds = %for.end, %for.cond.preheader
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %for.end ], [ 0, %for.cond.preheader ]
  %6 = phi ptr [ %24, %for.end ], [ %2, %for.cond.preheader ]
  %arrayidx8294 = phi ptr [ %arrayidx8, %for.end ], [ @secclass_map, %for.cond.preheader ]
  %call.i252 = tail call noalias ptr @strdup(ptr noundef nonnull %6) #9
  %tobool.not.i = icmp eq ptr %call.i252, null
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.body
  %7 = load i8, ptr %call.i252, align 1, !tbaa !13
  %tobool2.not10.i = icmp eq i8 %7, 0
  br i1 %tobool2.not10.i, label %stoupperx.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %call3.i = tail call ptr @__ctype_toupper_loc() #11
  %8 = load ptr, ptr %call3.i, align 8, !tbaa !5
  br label %for.body.i

if.then.i:                                        ; preds = %for.body
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %10 = load ptr, ptr @progname, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.302, ptr noundef %10) #13
  tail call void @exit(i32 noundef 3) #10
  unreachable

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %11 = phi i8 [ %7, %for.body.lr.ph.i ], [ %13, %for.body.i ]
  %p.011.i = phi ptr [ %call.i252, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i ]
  %idxprom.i = sext i8 %11 to i64
  %arrayidx.i = getelementptr inbounds i32, ptr %8, i64 %idxprom.i
  %12 = load i32, ptr %arrayidx.i, align 4, !tbaa !11
  %conv4.i = trunc i32 %12 to i8
  store i8 %conv4.i, ptr %p.011.i, align 1, !tbaa !13
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.011.i, i64 1
  %13 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !13
  %tobool2.not.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.i, label %stoupperx.exit, label %for.body.i

stoupperx.exit:                                   ; preds = %for.body.i, %for.cond.preheader.i
  store ptr %call.i252, ptr %arrayidx8294, align 16, !tbaa !9
  %arrayidx17287 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv312, i32 1, i64 0
  %14 = load ptr, ptr %arrayidx17287, align 8, !tbaa !5
  %tobool18.not288 = icmp eq ptr %14, null
  br i1 %tobool18.not288, label %for.end, label %for.body19

for.body19:                                       ; preds = %stoupperx.exit268, %stoupperx.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %stoupperx.exit268 ], [ 0, %stoupperx.exit ]
  %15 = phi ptr [ %23, %stoupperx.exit268 ], [ %14, %stoupperx.exit ]
  %arrayidx17290 = phi ptr [ %arrayidx17, %stoupperx.exit268 ], [ %arrayidx17287, %stoupperx.exit ]
  %call.i253 = tail call noalias ptr @strdup(ptr noundef nonnull %15) #9
  %tobool.not.i254 = icmp eq ptr %call.i253, null
  br i1 %tobool.not.i254, label %if.then.i260, label %for.cond.preheader.i256

for.cond.preheader.i256:                          ; preds = %for.body19
  %16 = load i8, ptr %call.i253, align 1, !tbaa !13
  %tobool2.not10.i255 = icmp eq i8 %16, 0
  br i1 %tobool2.not10.i255, label %stoupperx.exit268, label %for.body.lr.ph.i258

for.body.lr.ph.i258:                              ; preds = %for.cond.preheader.i256
  %call3.i257 = tail call ptr @__ctype_toupper_loc() #11
  %17 = load ptr, ptr %call3.i257, align 8, !tbaa !5
  br label %for.body.i267

if.then.i260:                                     ; preds = %for.body19
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %19 = load ptr, ptr @progname, align 8, !tbaa !5
  %call1.i259 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.302, ptr noundef %19) #13
  tail call void @exit(i32 noundef 3) #10
  unreachable

for.body.i267:                                    ; preds = %for.body.i267, %for.body.lr.ph.i258
  %20 = phi i8 [ %16, %for.body.lr.ph.i258 ], [ %22, %for.body.i267 ]
  %p.011.i261 = phi ptr [ %call.i253, %for.body.lr.ph.i258 ], [ %incdec.ptr.i265, %for.body.i267 ]
  %idxprom.i262 = sext i8 %20 to i64
  %arrayidx.i263 = getelementptr inbounds i32, ptr %17, i64 %idxprom.i262
  %21 = load i32, ptr %arrayidx.i263, align 4, !tbaa !11
  %conv4.i264 = trunc i32 %21 to i8
  store i8 %conv4.i264, ptr %p.011.i261, align 1, !tbaa !13
  %incdec.ptr.i265 = getelementptr inbounds i8, ptr %p.011.i261, i64 1
  %22 = load i8, ptr %incdec.ptr.i265, align 1, !tbaa !13
  %tobool2.not.i266 = icmp eq i8 %22, 0
  br i1 %tobool2.not.i266, label %stoupperx.exit268, label %for.body.i267

stoupperx.exit268:                                ; preds = %for.body.i267, %for.cond.preheader.i256
  store ptr %call.i253, ptr %arrayidx17290, align 8, !tbaa !5
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx17 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv312, i32 1, i64 %indvars.iv.next
  %23 = load ptr, ptr %arrayidx17, align 8, !tbaa !5
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %for.end, label %for.body19

for.end:                                          ; preds = %stoupperx.exit268, %stoupperx.exit
  %indvars.iv.next313 = add nuw i64 %indvars.iv312, 1
  %arrayidx8 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv.next313
  %24 = load ptr, ptr %arrayidx8, align 16, !tbaa !9
  %tobool9.not = icmp eq ptr %24, null
  br i1 %tobool9.not, label %for.body32.preheader, label %for.body

for.body32.preheader:                             ; preds = %for.end, %for.cond.preheader
  br label %for.body32

for.body32:                                       ; preds = %if.end40, %for.body32.preheader
  %indvars.iv315 = phi i64 [ %indvars.iv.next316, %if.end40 ], [ 1, %for.body32.preheader ]
  %arrayidx34 = getelementptr inbounds [28 x ptr], ptr @initial_sid_to_string, i64 0, i64 %indvars.iv315
  %25 = load ptr, ptr %arrayidx34, align 8, !tbaa !5
  %tobool35.not = icmp eq ptr %25, null
  br i1 %tobool35.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %for.body32
  %call.i269 = tail call noalias ptr @strdup(ptr noundef nonnull %25) #9
  %tobool.not.i270 = icmp eq ptr %call.i269, null
  br i1 %tobool.not.i270, label %if.then.i276, label %for.cond.preheader.i272

for.cond.preheader.i272:                          ; preds = %if.then36
  %26 = load i8, ptr %call.i269, align 1, !tbaa !13
  %tobool2.not10.i271 = icmp eq i8 %26, 0
  br i1 %tobool2.not10.i271, label %stoupperx.exit284, label %for.body.lr.ph.i274

for.body.lr.ph.i274:                              ; preds = %for.cond.preheader.i272
  %call3.i273 = tail call ptr @__ctype_toupper_loc() #11
  %27 = load ptr, ptr %call3.i273, align 8, !tbaa !5
  br label %for.body.i283

if.then.i276:                                     ; preds = %if.then36
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %29 = load ptr, ptr @progname, align 8, !tbaa !5
  %call1.i275 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.302, ptr noundef %29) #13
  tail call void @exit(i32 noundef 3) #10
  unreachable

for.body.i283:                                    ; preds = %for.body.i283, %for.body.lr.ph.i274
  %30 = phi i8 [ %26, %for.body.lr.ph.i274 ], [ %32, %for.body.i283 ]
  %p.011.i277 = phi ptr [ %call.i269, %for.body.lr.ph.i274 ], [ %incdec.ptr.i281, %for.body.i283 ]
  %idxprom.i278 = sext i8 %30 to i64
  %arrayidx.i279 = getelementptr inbounds i32, ptr %27, i64 %idxprom.i278
  %31 = load i32, ptr %arrayidx.i279, align 4, !tbaa !11
  %conv4.i280 = trunc i32 %31 to i8
  store i8 %conv4.i280, ptr %p.011.i277, align 1, !tbaa !13
  %incdec.ptr.i281 = getelementptr inbounds i8, ptr %p.011.i277, i64 1
  %32 = load i8, ptr %incdec.ptr.i281, align 1, !tbaa !13
  %tobool2.not.i282 = icmp eq i8 %32, 0
  br i1 %tobool2.not.i282, label %stoupperx.exit284, label %for.body.i283

stoupperx.exit284:                                ; preds = %for.body.i283, %for.cond.preheader.i272
  store ptr %call.i269, ptr %arrayidx34, align 8, !tbaa !5
  br label %if.end40

if.end40:                                         ; preds = %stoupperx.exit284, %for.body32
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next316, 28
  br i1 %exitcond.not, label %for.end43, label %for.body32

for.end43:                                        ; preds = %if.end40
  %33 = tail call i64 @fwrite(ptr nonnull @.str.280, i64 58, i64 1, ptr %call)
  %34 = tail call i64 @fwrite(ptr nonnull @.str.281, i64 53, i64 1, ptr %call)
  %35 = load ptr, ptr @secclass_map, align 16, !tbaa !9
  %tobool50.not296 = icmp eq ptr %35, null
  br i1 %tobool50.not296, label %for.end59, label %for.body51

for.body51:                                       ; preds = %for.body51, %for.end43
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %for.body51 ], [ 0, %for.end43 ]
  %36 = phi ptr [ %38, %for.body51 ], [ %35, %for.end43 ]
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1
  %37 = trunc i64 %indvars.iv.next319 to i32
  %call56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call, ptr noundef nonnull @.str.282, ptr noundef nonnull %36, i32 noundef %37)
  %arrayidx48 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv.next319
  %38 = load ptr, ptr %arrayidx48, align 16, !tbaa !9
  %tobool50.not = icmp eq ptr %38, null
  br i1 %tobool50.not, label %for.end59, label %for.body51

for.end59:                                        ; preds = %for.body51, %for.end43
  %fputc = tail call i32 @fputc(i32 10, ptr %call)
  br label %for.body63

for.body63:                                       ; preds = %if.end70, %for.end59
  %indvars.iv321 = phi i64 [ 1, %for.end59 ], [ %indvars.iv.next322, %if.end70 ]
  %arrayidx66 = getelementptr inbounds [28 x ptr], ptr @initial_sid_to_string, i64 0, i64 %indvars.iv321
  %39 = load ptr, ptr %arrayidx66, align 8, !tbaa !5
  %tobool67.not = icmp eq ptr %39, null
  br i1 %tobool67.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %for.body63
  %40 = trunc i64 %indvars.iv321 to i32
  %call69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call, ptr noundef nonnull @.str.284, ptr noundef nonnull %39, i32 noundef %40)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %for.body63
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1
  %exitcond324.not = icmp eq i64 %indvars.iv.next322, 28
  br i1 %exitcond324.not, label %for.end73, label %for.body63

for.end73:                                        ; preds = %if.end70
  %call74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call, ptr noundef nonnull @.str.285, i32 noundef 27)
  %41 = tail call i64 @fwrite(ptr nonnull @.str.286, i64 62, i64 1, ptr %call)
  %42 = tail call i64 @fwrite(ptr nonnull @.str.287, i64 2, i64 1, ptr %call)
  %43 = tail call i64 @fwrite(ptr nonnull @.str.288, i64 21, i64 1, ptr %call)
  %44 = tail call i64 @fwrite(ptr nonnull @.str.289, i64 24, i64 1, ptr %call)
  %45 = load ptr, ptr @secclass_map, align 16, !tbaa !9
  %tobool83.not300 = icmp eq ptr %45, null
  br i1 %tobool83.not300, label %for.end105, label %for.body84

for.body84:                                       ; preds = %if.end102, %for.end73
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %if.end102 ], [ 0, %for.end73 ]
  %46 = phi ptr [ %47, %if.end102 ], [ %45, %for.end73 ]
  %call89 = tail call i64 @strlen(ptr noundef nonnull %46) #14
  %conv = trunc i64 %call89 to i32
  %cmp90 = icmp sgt i32 %conv, 5
  br i1 %cmp90, label %land.lhs.true, label %if.end102

land.lhs.true:                                    ; preds = %for.body84
  %sext = shl i64 %call89, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, ptr %46, i64 -6
  %add.ptr94 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %add.ptr94, ptr noundef nonnull dereferenceable(6) @main.s, i64 6)
  %cmp97 = icmp eq i32 %bcmp, 0
  br i1 %cmp97, label %if.then99, label %if.end102

if.then99:                                        ; preds = %land.lhs.true
  %call101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call, ptr noundef nonnull @.str.290, ptr noundef nonnull %46)
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %land.lhs.true, %for.body84
  %indvars.iv.next326 = add nuw i64 %indvars.iv325, 1
  %arrayidx81 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv.next326
  %47 = load ptr, ptr %arrayidx81, align 16, !tbaa !9
  %tobool83.not = icmp eq ptr %47, null
  br i1 %tobool83.not, label %for.end105, label %for.body84

for.end105:                                       ; preds = %if.end102, %for.end73
  %48 = tail call i64 @fwrite(ptr nonnull @.str.291, i64 15, i64 1, ptr %call)
  %49 = tail call i64 @fwrite(ptr nonnull @.str.292, i64 9, i64 1, ptr %call)
  %50 = tail call i64 @fwrite(ptr nonnull @.str.293, i64 10, i64 1, ptr %call)
  %51 = tail call i64 @fwrite(ptr nonnull @.str.292, i64 9, i64 1, ptr %call)
  %52 = tail call i64 @fwrite(ptr nonnull @.str.294, i64 4, i64 1, ptr %call)
  %53 = tail call i64 @fwrite(ptr nonnull @.str.295, i64 14, i64 1, ptr %call)
  %54 = tail call i64 @fwrite(ptr nonnull @.str.296, i64 2, i64 1, ptr %call)
  %55 = tail call i64 @fwrite(ptr nonnull @.str.297, i64 8, i64 1, ptr %call)
  %call114 = tail call i32 @fclose(ptr noundef %call)
  %arrayidx115 = getelementptr inbounds ptr, ptr %argv, i64 2
  %56 = load ptr, ptr %arrayidx115, align 8, !tbaa !5
  %call116 = tail call ptr @fopen(ptr noundef %56, ptr noundef nonnull @.str.278)
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %if.then118, label %if.end123

if.then118:                                       ; preds = %for.end105
  %57 = load ptr, ptr @stderr, align 8, !tbaa !5
  %58 = load ptr, ptr %arrayidx115, align 8, !tbaa !5
  %call120 = tail call ptr @__errno_location() #11
  %59 = load i32, ptr %call120, align 4, !tbaa !11
  %call121 = tail call ptr @strerror(i32 noundef %59) #9
  %call122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.279, ptr noundef %58, ptr noundef %call121) #12
  tail call void @exit(i32 noundef 4) #10
  unreachable

if.end123:                                        ; preds = %for.end105
  %60 = tail call i64 @fwrite(ptr nonnull @.str.280, i64 58, i64 1, ptr nonnull %call116)
  %61 = tail call i64 @fwrite(ptr nonnull @.str.298, i64 71, i64 1, ptr nonnull %call116)
  %62 = load ptr, ptr @secclass_map, align 16, !tbaa !9
  %tobool130.not305 = icmp eq ptr %62, null
  br i1 %tobool130.not305, label %for.end165, label %for.body131

for.body131:                                      ; preds = %for.end162, %if.end123
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %for.end162 ], [ 0, %if.end123 ]
  %63 = phi ptr [ %71, %for.end162 ], [ %62, %if.end123 ]
  %arrayidx128308 = phi ptr [ %arrayidx128, %for.end162 ], [ @secclass_map, %if.end123 ]
  %arrayidx142302 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv332, i32 1, i64 0
  %64 = load ptr, ptr %arrayidx142302, align 8, !tbaa !5
  %tobool143.not303 = icmp eq ptr %64, null
  br i1 %tobool143.not303, label %for.end162, label %for.body144.lr.ph

for.body144.lr.ph:                                ; preds = %for.body131
  %call137 = tail call i64 @strlen(ptr noundef nonnull %63) #14
  %conv138 = trunc i64 %call137 to i32
  %sub155 = sub nsw i32 39, %conv138
  br label %for.body144

for.body144:                                      ; preds = %if.end153, %for.body144.lr.ph
  %indvars.iv328 = phi i64 [ 0, %for.body144.lr.ph ], [ %indvars.iv.next329, %if.end153 ]
  %65 = phi ptr [ %64, %for.body144.lr.ph ], [ %70, %if.end153 ]
  %exitcond331 = icmp eq i64 %indvars.iv328, 32
  br i1 %exitcond331, label %if.then147, label %if.end153

if.then147:                                       ; preds = %for.body144
  %66 = load ptr, ptr @stderr, align 8, !tbaa !5
  %67 = load ptr, ptr %arrayidx128308, align 16, !tbaa !9
  %call152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.299, ptr noundef %67, ptr noundef nonnull %65) #12
  tail call void @exit(i32 noundef 5) #10
  unreachable

if.end153:                                        ; preds = %for.body144
  %68 = load ptr, ptr %arrayidx128308, align 16, !tbaa !9
  %69 = trunc i64 %indvars.iv328 to i32
  %shl = shl nuw i32 1, %69
  %call159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call116, ptr noundef nonnull @.str.300, ptr noundef %68, i32 noundef %sub155, ptr noundef nonnull %65, i32 noundef %shl)
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1
  %arrayidx142 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv332, i32 1, i64 %indvars.iv.next329
  %70 = load ptr, ptr %arrayidx142, align 8, !tbaa !5
  %tobool143.not = icmp eq ptr %70, null
  br i1 %tobool143.not, label %for.end162, label %for.body144

for.end162:                                       ; preds = %if.end153, %for.body131
  %indvars.iv.next333 = add nuw i64 %indvars.iv332, 1
  %arrayidx128 = getelementptr inbounds [97 x %struct.security_class_mapping], ptr @secclass_map, i64 0, i64 %indvars.iv.next333
  %71 = load ptr, ptr %arrayidx128, align 16, !tbaa !9
  %tobool130.not = icmp eq ptr %71, null
  br i1 %tobool130.not, label %for.end165, label %for.body131

for.end165:                                       ; preds = %for.end162, %if.end123
  %72 = tail call i64 @fwrite(ptr nonnull @.str.297, i64 8, i64 1, ptr nonnull %call116)
  %call167 = tail call i32 @fclose(ptr noundef nonnull %call116)
  tail call void @exit(i32 noundef 0) #10
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!7, !7, i64 0}
