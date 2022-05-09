; ModuleID = '/llk/IR_all_yes/security/selinux/avc.c_pt.bc'
source_filename = "../security/selinux/avc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.security_class_mapping = type { ptr, [33 x ptr] }
%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.169 }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.171, %struct.trace_event, ptr, ptr, %union.anon.172, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.171 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.172 = type { ptr }
%union.anon.173 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.avc_cache_stats = type { i32, i32, i32, i32, i32 }
%struct.selinux_avc = type { i32, %struct.avc_cache }
%struct.avc_cache = type { [512 x %struct.hlist_head], [512 x %struct.spinlock], %struct.atomic_t, %struct.atomic_t, i32 }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.selinux_state = type { i8, i8, i8, i8, [7 x i8], ptr, %struct.mutex, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_selinux_audited = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.selinux_audit_data = type { i32, i32, i16, i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.common_audit_data = type { i8, %union.anon.174, %union.anon.179 }
%union.anon.174 = type { %struct.path }
%struct.path = type { ptr, ptr }
%union.anon.179 = type { ptr }
%struct.avc_callback_node = type { ptr, i32, ptr }
%struct.avc_node = type { %struct.avc_entry, %struct.hlist_node, %struct.callback_head }
%struct.avc_entry = type { i32, i32, i16, %struct.av_decision, ptr }
%struct.av_decision = type { i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.extended_perms_decision = type { i8, i8, ptr, ptr, ptr }
%struct.extended_perms_data = type { [8 x i32] }
%struct.avc_xperms_node = type { %struct.extended_perms, %struct.list_head }
%struct.extended_perms = type { i16, %struct.extended_perms_data }
%struct.avc_xperms_decision_node = type { %struct.extended_perms_decision, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"security\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compute_av\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"compute_create\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"compute_member\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_context\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"load_policy\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"compute_relabel\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"compute_user\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setenforce\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setbool\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"setsecparam\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"setcheckreqprot\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_policy\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"validate_trans\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"process\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fork\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"transition\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sigchld\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sigkill\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sigstop\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"signull\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"signal\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ptrace\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"getsched\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setsched\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"getsession\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"getpgid\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setpgid\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"getcap\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setcap\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"share\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"getattr\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setexec\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"setfscreate\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"noatsecure\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"siginh\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setrlimit\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rlimitinh\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dyntransition\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setcurrent\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"execmem\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"execstack\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"execheap\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"setkeycreate\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setsockcreate\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"getrlimit\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"process2\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nnp_transition\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nosuid_transition\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"system\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipc_info\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syslog_read\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syslog_mod\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"syslog_console\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"module_request\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"module_load\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"capability\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chown\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dac_override\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dac_read_search\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fowner\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fsetid\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kill\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setgid\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setuid\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setpcap\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"linux_immutable\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net_bind_service\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net_broadcast\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"net_admin\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net_raw\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipc_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipc_owner\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_module\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_rawio\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_chroot\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_ptrace\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_pacct\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_admin\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_boot\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_nice\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_resource\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_time\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_tty_config\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mknod\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lease\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audit_write\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audit_control\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setfcap\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"filesystem\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mount\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remount\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unmount\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"relabelfrom\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"relabelto\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"associate\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"quotamod\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"quotaget\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"watch\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ioctl\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setattr\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"append\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"map\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unlink\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rename\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"execute\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"quotaon\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mounton\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audit_access\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"execmod\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"watch_mount\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watch_sb\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"watch_with_perm\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"watch_reads\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"execute_no_trans\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"entrypoint\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_name\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remove_name\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reparent\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"search\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rmdir\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"use\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lnk_file\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chr_file\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"blk_file\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sock_file\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fifo_file\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"socket\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bind\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"connect\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"listen\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"accept\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"getopt\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setopt\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"recvfrom\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sendto\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tcp_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"node_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"name_connect\00", [19 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udp_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rawip_socket\00", [19 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"netif\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ingress\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"egress\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netlink_socket\00", [17 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"packet_socket\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"key_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unix_stream_socket\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connectto\00", [22 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unix_dgram_socket\00", [46 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sem\00", [28 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"destroy\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unix_read\00", [22 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unix_write\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"send\00", [27 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"receive\00", [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msgq\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enqueue\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"shm\00", [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipc\00", [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netlink_route_socket\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nlmsg_read\00", [21 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nlmsg_write\00", [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netlink_tcpdiag_socket\00", [41 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netlink_nflog_socket\00", [43 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netlink_xfrm_socket\00", [44 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netlink_selinux_socket\00", [41 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netlink_iscsi_socket\00", [43 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netlink_audit_socket\00", [43 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nlmsg_relay\00", [20 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nlmsg_readpriv\00", [17 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlmsg_tty_audit\00", [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netlink_fib_lookup_socket\00", [38 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netlink_connector_socket\00", [39 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netlink_netfilter_socket\00", [39 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netlink_dnrt_socket\00", [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"association\00", [20 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setcontext\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"polmatch\00", [23 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"netlink_kobject_uevent_socket\00", [34 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netlink_generic_socket\00", [41 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netlink_scsitransport_socket\00", [35 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netlink_rdma_socket\00", [44 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netlink_crypto_socket\00", [42 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"appletalk_socket\00", [47 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"packet\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"recv\00", [27 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"forward_in\00", [21 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"forward_out\00", [20 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"view\00", [27 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dccp_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"memprotect\00", [21 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmap_zero\00", [22 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"peer\00", [27 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"capability2\00", [20 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_override\00", [19 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac_admin\00", [22 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syslog\00", [25 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wake_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"block_suspend\00", [18 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audit_read\00", [21 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"perfmon\00", [24 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bpf\00", [28 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"checkpoint_restore\00", [45 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel_service\00", [17 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"use_as_override\00", [16 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"create_files_as\00", [16 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tun_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"attach_queue\00", [19 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"binder\00", [25 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"impersonate\00", [20 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"call\00", [27 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_context_mgr\00", [16 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"transfer\00", [23 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cap_userns\00", [21 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cap2_userns\00", [20 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sctp_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"icmp_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ax25_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipx_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"netrom_socket\00", [18 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmpvc_socket\00", [18 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"x25_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rose_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"decnet_socket\00", [18 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmsvc_socket\00", [18 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rds_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irda_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pppox_socket\00", [19 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"llc_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"can_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tipc_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bluetooth_socket\00", [47 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iucv_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxrpc_socket\00", [19 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isdn_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phonet_socket\00", [18 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ieee802154_socket\00", [46 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"caif_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alg_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfc_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vsock_socket\00", [19 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kcm_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qipcrtr_socket\00", [17 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smc_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infiniband_pkey\00", [16 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"access\00", [25 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infiniband_endport\00", [45 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"manage_subnet\00", [18 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"map_create\00", [21 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"map_read\00", [23 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"map_write\00", [22 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prog_load\00", [22 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prog_run\00", [23 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xdp_socket\00", [21 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mctp_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"perf_event\00", [21 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tracepoint\00", [21 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"anon_inode\00", [21 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"io_uring\00", [23 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"override_creds\00", [17 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sqpoll\00", [25 x i8] zeroinitializer }, align 32
@secclass_map = dso_local global { <{ { ptr, <{ [13 x ptr], [20 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ [10 x ptr], [23 x ptr] }> }, %struct.security_class_mapping, %struct.security_class_mapping, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [26 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ [24 x ptr], [9 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, %struct.security_class_mapping }>, [3320 x i8] } { <{ { ptr, <{ [13 x ptr], [20 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ [10 x ptr], [23 x ptr] }> }, %struct.security_class_mapping, %struct.security_class_mapping, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [26 x ptr] }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> }, %struct.security_class_mapping, { ptr, <{ [9 x ptr], [24 x ptr] }> }, { ptr, <{ [24 x ptr], [9 x ptr] }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ ptr, [32 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> }, %struct.security_class_mapping }> <{ { ptr, <{ [13 x ptr], [20 x ptr] }> } { ptr @.str, <{ [13 x ptr], [20 x ptr] }> <{ [13 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [20 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.14, [33 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr null, ptr null] }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.46, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.47, ptr @.str.48, [31 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> } { ptr @.str.49, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> <{ ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, [27 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.56, [33 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr null] }, { ptr, <{ [10 x ptr], [23 x ptr] }> } { ptr @.str.89, <{ [10 x ptr], [23 x ptr] }> <{ [10 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.31, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], [23 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.99, [33 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null] }, %struct.security_class_mapping { ptr @.str.123, [33 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr null, ptr null, ptr null] }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.129, <{ ptr, [32 x ptr] }> <{ ptr @.str.130, [32 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.131, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.132, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.133, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.134, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.135, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.136, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.147, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.149], [10 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.150, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148], [11 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.151, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148], [11 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.152, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.144, ptr @.str.145, [31 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.153, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.154, ptr @.str.155, [31 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.156, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.157, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.158, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.159, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.160], [11 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.161, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> } { ptr @.str.162, <{ [9 x ptr], [24 x ptr] }> <{ [9 x ptr] [ptr @.str.103, ptr @.str.163, ptr @.str.31, ptr @.str.104, ptr @.str.101, ptr @.str.102, ptr @.str.95, ptr @.str.164, ptr @.str.165], [24 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.166, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.167, ptr @.str.168, [31 x ptr] zeroinitializer }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> } { ptr @.str.169, <{ [10 x ptr], [23 x ptr] }> <{ [10 x ptr] [ptr @.str.103, ptr @.str.163, ptr @.str.31, ptr @.str.104, ptr @.str.101, ptr @.str.102, ptr @.str.95, ptr @.str.164, ptr @.str.165, ptr @.str.170], [23 x ptr] zeroinitializer }> }, { ptr, <{ [10 x ptr], [23 x ptr] }> } { ptr @.str.171, <{ [10 x ptr], [23 x ptr] }> <{ [10 x ptr] [ptr @.str.103, ptr @.str.163, ptr @.str.31, ptr @.str.104, ptr @.str.101, ptr @.str.102, ptr @.str.95, ptr @.str.164, ptr @.str.165, ptr @.str.105], [23 x ptr] zeroinitializer }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> } { ptr @.str.172, <{ [9 x ptr], [24 x ptr] }> <{ [9 x ptr] [ptr @.str.103, ptr @.str.163, ptr @.str.31, ptr @.str.104, ptr @.str.101, ptr @.str.102, ptr @.str.95, ptr @.str.164, ptr @.str.165], [24 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.173, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.174, ptr @.str.175], [10 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.176, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.174, ptr @.str.175], [10 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.177, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.178, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.174, ptr @.str.175], [10 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.179, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.180, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.181, [33 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.174, ptr @.str.175, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null] }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.185, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.186, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.187, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.188, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> } { ptr @.str.189, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> <{ ptr @.str.145, ptr @.str.144, ptr @.str.190, ptr @.str.191, [29 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.192, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.193, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.194, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.195, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.196, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.197, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> } { ptr @.str.198, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> <{ ptr @.str.167, ptr @.str.199, ptr @.str.94, ptr @.str.200, ptr @.str.201, [28 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [26 x ptr] }> } { ptr @.str.202, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.203, ptr @.str.101, ptr @.str.102, ptr @.str.127, ptr @.str.109, ptr @.str.104, ptr @.str.103, [26 x ptr] zeroinitializer }> }, { ptr, <{ [23 x ptr], [10 x ptr] }> } { ptr @.str.204, <{ [23 x ptr], [10 x ptr] }> <{ [23 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.149], [10 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.205, <{ ptr, [32 x ptr] }> <{ ptr @.str.206, [32 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.207, <{ ptr, [32 x ptr] }> <{ ptr @.str.199, [32 x ptr] zeroinitializer }> }, { ptr, <{ [9 x ptr], [24 x ptr] }> } { ptr @.str.208, <{ [9 x ptr], [24 x ptr] }> <{ [9 x ptr] [ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217], [24 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.218, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.219, ptr @.str.220, [31 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.221, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.222], [11 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> } { ptr @.str.223, <{ ptr, ptr, ptr, ptr, [29 x ptr] }> <{ ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, [29 x ptr] zeroinitializer }> }, %struct.security_class_mapping { ptr @.str.228, [33 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr null] }, { ptr, <{ [9 x ptr], [24 x ptr] }> } { ptr @.str.229, <{ [9 x ptr], [24 x ptr] }> <{ [9 x ptr] [ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217], [24 x ptr] zeroinitializer }> }, { ptr, <{ [24 x ptr], [9 x ptr] }> } { ptr @.str.230, <{ [24 x ptr], [9 x ptr] }> <{ [24 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.189], [9 x ptr] zeroinitializer }> }, { ptr, <{ [22 x ptr], [11 x ptr] }> } { ptr @.str.231, <{ [22 x ptr], [11 x ptr] }> <{ [22 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148], [11 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.232, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.233, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.234, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.235, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.236, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.237, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.238, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.239, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.240, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.241, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.242, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.243, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.244, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.245, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.246, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.247, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.248, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.249, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.250, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.251, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.252, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.253, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.254, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.255, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.256, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.257, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.258, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.259, <{ ptr, [32 x ptr] }> <{ ptr @.str.260, [32 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [32 x ptr] }> } { ptr @.str.261, <{ ptr, [32 x ptr] }> <{ ptr @.str.262, [32 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> } { ptr @.str.216, <{ ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> <{ ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, [28 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.268, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ [21 x ptr], [12 x ptr] }> } { ptr @.str.269, <{ [21 x ptr], [12 x ptr] }> <{ [21 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [12 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> } { ptr @.str.270, <{ ptr, ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> <{ ptr @.str.115, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.101, ptr @.str.102, [27 x ptr] zeroinitializer }> }, { ptr, <{ [25 x ptr], [8 x ptr] }> } { ptr @.str.274, <{ [25 x ptr], [8 x ptr] }> <{ [25 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.31, ptr @.str.104, ptr @.str.105, ptr @.str.93, ptr @.str.94, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.98, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [8 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [31 x ptr] }> } { ptr @.str.275, <{ ptr, ptr, [31 x ptr] }> <{ ptr @.str.276, ptr @.str.277, [31 x ptr] zeroinitializer }> }, %struct.security_class_mapping zeroinitializer }>, [3320 x i8] zeroinitializer }, align 32
@__tpstrtab_selinux_audited = internal constant [16 x i8] c"selinux_audited\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_selinux_audited = dso_local global %struct.static_call_key { ptr @__traceiter_selinux_audited }, align 4
@__tracepoint_selinux_audited = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_selinux_audited, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_selinux_audited, ptr null, ptr @__traceiter_selinux_audited, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_selinux_audited = internal constant ptr @__tracepoint_selinux_audited, section "__tracepoints_ptrs", align 4
@str__avc__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"avc\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_selinux_audited = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.287, %union.anon.169 { %struct.anon.170 { ptr @.str.288, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.287, %union.anon.169 { %struct.anon.170 { ptr @.str.289, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.287, %union.anon.169 { %struct.anon.170 { ptr @.str.290, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.291, %union.anon.169 { %struct.anon.170 { ptr @.str.292, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.293, %union.anon.169 { %struct.anon.170 { ptr @.str.294, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.293, %union.anon.169 { %struct.anon.170 { ptr @.str.295, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.293, %union.anon.169 { %struct.anon.170 { ptr @.str.296, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_selinux_audited = internal global %struct.trace_event_class { ptr @str__avc__trace_system_name, ptr @trace_event_raw_event_selinux_audited, ptr @perf_trace_selinux_audited, ptr @trace_event_reg, ptr @trace_event_fields_selinux_audited, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_selinux_audited, i64 24), ptr getelementptr (i8, ptr @event_class_selinux_audited, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_selinux_audited = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_selinux_audited, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_selinux_audited = internal global { [203 x i8], [53 x i8] } { [203 x i8] c"\22requested=0x%x denied=0x%x audited=0x%x result=%d scontext=%s tcontext=%s tclass=%s\22, REC->requested, REC->denied, REC->audited, REC->result, __get_str(scontext), __get_str(tcontext), __get_str(tclass)\00", [53 x i8] zeroinitializer }, align 32
@event_selinux_audited = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_selinux_audited, %union.anon.171 { ptr @__tracepoint_selinux_audited }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_selinux_audited }, ptr @print_fmt_selinux_audited, ptr null, %union.anon.172 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_selinux_audited = internal global ptr @event_selinux_audited, section "_ftrace_events", align 4
@__bpf_trace_tp_map_selinux_audited = internal global %union.anon.173 { %struct.bpf_raw_event_map { ptr @__tracepoint_selinux_audited, ptr @__bpf_trace_selinux_audited, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@avc_cache_stats = weak dso_local global %struct.avc_cache_stats zeroinitializer, section ".data..percpu", align 4
@selinux_avc = internal global { %struct.selinux_avc, [6160 x i8] } zeroinitializer, align 32
@selinux_avc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.278 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&selinux_avc.avc_cache.slots_lock[i]\00", [59 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avc_node\00", [23 x i8] zeroinitializer }, align 32
@avc_node_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.280 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"avc_xperms_node\00", [16 x i8] zeroinitializer }, align 32
@avc_xperms_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.281 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"avc_xperms_decision_node\00", [39 x i8] zeroinitializer }, align 32
@avc_xperms_decision_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.282 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"avc_xperms_data\00", [16 x i8] zeroinitializer }, align 32
@avc_xperms_data_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@avc_get_hash_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.283 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"security/selinux/avc.c\00", [41 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"entries: %d\0Abuckets used: %d/%d\0Alongest chain: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@avc_callbacks = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@selinux_state = external dso_local local_unnamed_addr global %struct.selinux_state, align 4
@__pcpu_scope_avc_cache_stats = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_avc_cache_stats = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.286 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"requested\00", [22 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"denied\00", [25 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"audited\00", [24 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scontext\00", [23 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcontext\00", [23 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tclass\00", [25 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"requested=0x%x denied=0x%x audited=0x%x result=%d scontext=%s tcontext=%s tclass=%s\0A\00", [43 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.298 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.300 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avc:  %s \00", [22 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"granted\00", [24 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" null\00", [26 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" {\00", [29 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" 0x%x\00", [26 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" } for \00", [24 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" ssid=%d\00", [23 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" scontext=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" tsid=%d\00", [23 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" tcontext=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" tclass=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" permissive=%u\00", [17 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" srawcon=\00", [22 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" trawcon=\00", [22 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/avc.h\00", [37 x i8] zeroinitializer }, align 32
@trace_selinux_audited.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.317 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.318 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@avc_latest_notif_update.notif_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.319, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"notif_lock\00", [21 x i8] zeroinitializer }, align 32
@avc_latest_notif_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.320, ptr @.str.321, ptr @.str.283, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014SELinux: avc:  seqno %d < latest_notif %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"avc_latest_notif_update\00", [40 x i8] zeroinitializer }, align 32
@avc_latest_notif_update._entry_ptr = internal global ptr @avc_latest_notif_update._entry, section ".printk_index", align 4
@avc_search_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 16, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 42, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 43, i32 6 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 43, i32 20 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 43, i32 38 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 44, i32 6 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 44, i32 23 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 44, i32 38 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 45, i32 6 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 45, i32 22 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 45, i32 36 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 45, i32 47 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 46, i32 6 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 46, i32 25 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 46, i32 40 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 47, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 48, i32 6 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 48, i32 14 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 48, i32 28 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 48, i32 39 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 49, i32 6 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 49, i32 17 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 49, i32 28 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 49, i32 38 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 49, i32 48 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 49, i32 60 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 50, i32 6 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 50, i32 20 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 50, i32 31 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 50, i32 42 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 50, i32 52 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 50, i32 62 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 51, i32 6 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 51, i32 17 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 51, i32 28 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 51, i32 43 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 51, i32 57 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 52, i32 6 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 52, i32 19 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 52, i32 32 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 52, i32 49 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 53, i32 6 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 53, i32 17 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 53, i32 30 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 53, i32 42 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 54, i32 6 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 54, i32 23 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 55, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 56, i32 6 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 56, i32 24 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 57, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 58, i32 6 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 58, i32 18 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 58, i32 33 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 59, i32 6 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 59, i32 24 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 59, i32 42 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 60, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 61, i32 6 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 62, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 63, i32 6 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 63, i32 15 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 63, i32 26 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 64, i32 6 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 64, i32 21 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 64, i32 34 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 64, i32 47 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 65, i32 6 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 65, i32 18 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 66, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 67, i32 6 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 68, i32 6 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 68, i32 26 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 69, i32 4 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 70, i32 25 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 70, i32 37 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 71, i32 6 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 71, i32 18 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 71, i32 28 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 72, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 72, i32 12 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 73, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 75, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 77, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 79, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 81, i32 4 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 83, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 84, i32 6 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 85, i32 4 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 87, i32 6 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 87, i32 19 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 89, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 92, i32 4 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 95, i32 4 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 97, i32 4 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 98, i32 6 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 98, i32 17 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 99, i32 4 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 101, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 103, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 105, i32 4 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 106, i32 25 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 107, i32 4 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 109, i32 4 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 110, i32 6 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 111, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 111, i32 13 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 111, i32 21 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 112, i32 4 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 113, i32 24 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 114, i32 4 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 116, i32 4 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 118, i32 4 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 120, i32 6 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 120, i32 20 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 121, i32 4 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 124, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 126, i32 4 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 129, i32 4 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 131, i32 4 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 133, i32 4 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 135, i32 35 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 135, i32 50 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 136, i32 6 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 137, i32 4 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 139, i32 4 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 141, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 143, i32 4 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 145, i32 4 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 146, i32 28 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 146, i32 42 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 147, i32 4 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 149, i32 4 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 151, i32 4 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 153, i32 4 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 155, i32 4 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 157, i32 4 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 159, i32 4 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 160, i32 14 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 160, i32 35 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 160, i32 49 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 161, i32 4 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 162, i32 6 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 164, i32 4 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 167, i32 4 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 167, i32 20 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 168, i32 4 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 169, i32 4 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 170, i32 6 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 171, i32 4 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 171, i32 24 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 171, i32 43 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 172, i32 4 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 173, i32 25 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 174, i32 4 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 174, i32 16 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 174, i32 31 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 174, i32 39 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 174, i32 58 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 176, i32 4 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 178, i32 4 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 180, i32 4 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 183, i32 4 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 186, i32 4 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 188, i32 4 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 190, i32 4 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 192, i32 4 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 194, i32 4 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 196, i32 4 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 198, i32 4 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 200, i32 4 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 202, i32 4 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 204, i32 4 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 206, i32 4 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 208, i32 4 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 210, i32 4 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 212, i32 4 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 214, i32 4 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 216, i32 4 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 218, i32 4 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 220, i32 4 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 222, i32 4 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 224, i32 4 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 226, i32 4 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 228, i32 4 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 230, i32 4 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 232, i32 4 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 234, i32 4 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 236, i32 4 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 238, i32 4 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 240, i32 4 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 241, i32 6 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 242, i32 4 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 243, i32 6 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 245, i32 6 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 245, i32 20 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 245, i32 32 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 245, i32 45 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 245, i32 58 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 247, i32 4 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 249, i32 4 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 251, i32 4 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 252, i32 14 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 252, i32 21 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 252, i32 31 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 253, i32 4 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 255, i32 4 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 256, i32 6 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 256, i32 24 }
@___asan_gen_.1156 = private unnamed_addr constant [13 x i8] c"secclass_map\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant [39 x i8] c"../security/selinux/include/classmap.h\00", align 1
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1157, i32 41, i32 31 }
@___asan_gen_.1159 = private unnamed_addr constant [28 x i8] c"str__avc__trace_system_name\00", align 1
@___asan_gen_.1160 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1160, i32 36, i32 1 }
@___asan_gen_.1162 = private unnamed_addr constant [35 x i8] c"trace_event_fields_selinux_audited\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_selinux_audited\00", align 1
@___asan_gen_.1168 = private unnamed_addr constant [26 x i8] c"print_fmt_selinux_audited\00", align 1
@___asan_gen_.1171 = private unnamed_addr constant [22 x i8] c"event_selinux_audited\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant [12 x i8] c"selinux_avc\00", align 1
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 94, i32 27 }
@___asan_gen_.1177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 103, i32 3 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 139, i32 38 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 141, i32 40 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 145, i32 6 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 148, i32 45 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 168, i32 4 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 177, i32 36 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1247, i32 695, i32 2 }
@___asan_gen_.1247 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1247, i32 723, i32 2 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 674, i32 23 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 674, i32 61 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 677, i32 24 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 683, i32 23 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 688, i32 25 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 696, i32 24 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 698, i32 23 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 721, i32 24 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 723, i32 24 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 728, i32 24 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 730, i32 24 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 733, i32 23 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 736, i32 24 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 748, i32 24 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 758, i32 24 }
@___asan_gen_.1298 = private unnamed_addr constant [30 x i8] c"../include/trace/events/avc.h\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1298, i32 14, i32 1 }
@___asan_gen_.1301 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1301, i32 108, i32 2 }
@___asan_gen_.1303 = private unnamed_addr constant [11 x i8] c"notif_lock\00", align 1
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 580, i32 9 }
@___asan_gen_.1309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1316 = private constant [26 x i8] c"../security/selinux/avc.c\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1316, i32 586, i32 4 }
@llvm.compiler.used = appending global [338 x ptr] [ptr @__bpf_trace_tp_map_selinux_audited, ptr @__event_selinux_audited, ptr @__tracepoint_ptr_selinux_audited, ptr @__tracepoint_selinux_audited, ptr @avc_latest_notif_update._entry, ptr @avc_latest_notif_update._entry_ptr, ptr @event_class_selinux_audited, ptr @event_selinux_audited, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @secclass_map, ptr @str__avc__trace_system_name, ptr @trace_event_fields_selinux_audited, ptr @trace_event_type_funcs_selinux_audited, ptr @print_fmt_selinux_audited, ptr @selinux_avc, ptr @selinux_avc_init.__key, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @avc_latest_notif_update.notif_lock, ptr @.str.319, ptr @.str.320, ptr @.str.321], section "llvm.metadata"
@0 = internal global [332 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secclass_map to i32), i32 13192, i32 16512, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__avc__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_selinux_audited to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_selinux_audited to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_selinux_audited to i32), i32 203, i32 256, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_selinux_audited to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selinux_avc to i32), i32 24592, i32 30752, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selinux_avc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_latest_notif_update.notif_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_latest_notif_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_selinux_audited(ptr nocapture readnone %__data, ptr noundef %sad, ptr noundef %scontext, ptr noundef %tcontext, ptr noundef %tclass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_selinux_audited, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %sad, ptr noundef %scontext, ptr noundef %tcontext, ptr noundef %tclass) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_selinux_audited(ptr noundef %__data, ptr nocapture noundef readonly %sad, ptr noundef readonly %scontext, ptr noundef readonly %tcontext, ptr noundef readonly %tclass) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !611

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !612

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #18
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i62 = icmp eq ptr %scontext, null
  %spec.select.i = select i1 %tobool.not.i62, ptr @.str.286, ptr %scontext
  %call.i63 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #21
  %add.i = add i32 %call.i63, 1
  %tobool6.not.i = icmp eq ptr %tcontext, null
  %cond10.i = select i1 %tobool6.not.i, ptr @.str.286, ptr %tcontext
  %call11.i = tail call i32 @strlen(ptr noundef nonnull %cond10.i) #21
  %add12.i = add i32 %call11.i, 1
  %tobool20.not.i = icmp eq ptr %tclass, null
  %cond24.i = select i1 %tobool20.not.i, ptr @.str.286, ptr %tclass
  %add19.i = add i32 %add12.i, %add.i
  %call25.i = tail call i32 @strlen(ptr noundef nonnull %cond24.i) #21
  %add26.i = add i32 %call25.i, 1
  %add33.i = add i32 %add19.i, 36
  %add = add i32 %add33.i, %add26.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #18
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %shl30.i = shl i32 %add26.i, 16
  %or32.i = or i32 %shl30.i, %add33.i
  %shl16.i = shl i32 %add12.i, 16
  %add14.i = add i32 %call.i63, 37
  %or18.i = or i32 %shl16.i, %add14.i
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 36
  %__data_loc_scontext = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call3, i32 0, i32 5
  %3 = ptrtoint ptr %__data_loc_scontext to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_scontext, align 4
  %__data_loc_tcontext = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call3, i32 0, i32 6
  %4 = ptrtoint ptr %__data_loc_tcontext to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or18.i, ptr %__data_loc_tcontext, align 4
  %__data_loc_tclass = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call3, i32 0, i32 7
  %5 = ptrtoint ptr %__data_loc_tclass to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or32.i, ptr %__data_loc_tclass, align 4
  %requested = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 3
  %6 = ptrtoint ptr %requested to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %requested, align 4
  %requested9 = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %requested9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %requested9, align 4
  %denied = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 5
  %9 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %denied, align 4
  %denied10 = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %denied10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %denied10, align 4
  %audited = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 4
  %12 = ptrtoint ptr %audited to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audited, align 4
  %audited11 = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %audited11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %audited11, align 4
  %result = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 6
  %15 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %result, align 4
  %result12 = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %result12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %result12, align 4
  %and = and i32 %add14.i, 65535
  %add.ptr = getelementptr i8, ptr %call3, i32 %and
  %call15 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %cond10.i) #22
  %18 = ptrtoint ptr %__data_loc_scontext to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__data_loc_scontext, align 4
  %and17 = and i32 %19, 65535
  %add.ptr18 = getelementptr i8, ptr %call3, i32 %and17
  %call24 = call ptr @strcpy(ptr noundef %add.ptr18, ptr noundef nonnull %spec.select.i) #22
  %20 = ptrtoint ptr %__data_loc_tclass to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %__data_loc_tclass, align 4
  %and26 = and i32 %21, 65535
  %add.ptr27 = getelementptr i8, ptr %call3, i32 %and26
  %call33 = call ptr @strcpy(ptr noundef %add.ptr27, ptr noundef nonnull %cond24.i) #22
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_selinux_audited(ptr noundef %__data, ptr nocapture noundef readonly %sad, ptr noundef readonly %scontext, ptr noundef readonly %tcontext, ptr noundef readonly %tclass) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !613
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !613
  %tobool.not.i = icmp eq ptr %scontext, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.286, ptr %scontext
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #21
  %add.i = add i32 %call.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 36
  %tobool6.not.i = icmp eq ptr %tcontext, null
  %cond10.i = select i1 %tobool6.not.i, ptr @.str.286, ptr %tcontext
  %call11.i = tail call i32 @strlen(ptr noundef nonnull %cond10.i) #21
  %add12.i = add i32 %call11.i, 1
  %add14.i = add i32 %call.i, 37
  %shl16.i = shl i32 %add12.i, 16
  %or18.i = or i32 %shl16.i, %add14.i
  %tobool20.not.i = icmp eq ptr %tclass, null
  %cond24.i = select i1 %tobool20.not.i, ptr @.str.286, ptr %tclass
  %add19.i = add i32 %add12.i, %add.i
  %call25.i = tail call i32 @strlen(ptr noundef nonnull %cond24.i) #21
  %add26.i = add i32 %call25.i, 1
  %add28.i = add i32 %add19.i, 36
  %shl30.i = shl i32 %add26.i, 16
  %or32.i = or i32 %shl30.i, %add28.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i86.not = icmp eq ptr %15, null
  br i1 %tobool.not.i86.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add33.i = add i32 %add19.i, 47
  %add12 = add i32 %add33.i, %add26.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #18
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #18
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !601) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_scontext = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call13, i32 0, i32 5
  %27 = ptrtoint ptr %__data_loc_scontext to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_scontext, align 4
  %__data_loc_tcontext = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call13, i32 0, i32 6
  %28 = ptrtoint ptr %__data_loc_tcontext to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or18.i, ptr %__data_loc_tcontext, align 4
  %__data_loc_tclass = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call13, i32 0, i32 7
  %29 = ptrtoint ptr %__data_loc_tclass to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or32.i, ptr %__data_loc_tclass, align 4
  %requested = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 3
  %30 = ptrtoint ptr %requested to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %requested, align 4
  %requested20 = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %requested20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %requested20, align 4
  %denied = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 5
  %33 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %denied, align 4
  %denied21 = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %denied21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %denied21, align 4
  %audited = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 4
  %36 = ptrtoint ptr %audited to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %audited, align 4
  %audited22 = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %audited22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %audited22, align 4
  %result = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 6
  %39 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %result, align 4
  %result23 = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %result23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %result23, align 4
  %and25 = and i32 %add14.i, 65535
  %add.ptr = getelementptr i8, ptr %call13, i32 %and25
  %call27 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %cond10.i) #22
  %42 = ptrtoint ptr %__data_loc_scontext to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %__data_loc_scontext, align 4
  %and29 = and i32 %43, 65535
  %add.ptr30 = getelementptr i8, ptr %call13, i32 %and29
  %call36 = call ptr @strcpy(ptr noundef %add.ptr30, ptr noundef nonnull %spec.select.i) #22
  %44 = ptrtoint ptr %__data_loc_tclass to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %__data_loc_tclass, align 4
  %and38 = and i32 %45, 65535
  %add.ptr39 = getelementptr i8, ptr %call13, i32 %and38
  %call45 = call ptr @strcpy(ptr noundef %add.ptr39, ptr noundef nonnull %cond24.i) #22
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %11, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_selinux_audited(ptr noundef %__data, ptr noundef %sad, ptr noundef %scontext, ptr noundef %tcontext, ptr noundef %tclass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %sad to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %scontext to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %tcontext to i32
  %conv8 = zext i32 %2 to i64
  %3 = ptrtoint ptr %tclass to i32
  %conv12 = zext i32 %3 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_avc_init(ptr nocapture noundef writeonly %avc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 512, ptr @selinux_avc, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [512 x %struct.hlist_head], ptr getelementptr inbounds (%struct.selinux_avc, ptr @selinux_avc, i32 0, i32 1), i32 0, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.selinux_avc, ptr @selinux_avc, i32 0, i32 1, i32 1, i32 %i.06
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx1, ptr noundef nonnull @.str.278, ptr noundef nonnull @selinux_avc_init.__key, i16 noundef signext 3) #18
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.selinux_avc, ptr @selinux_avc, i32 0, i32 1, i32 3), i32 noundef 4) #18
  store volatile i32 0, ptr getelementptr inbounds (%struct.selinux_avc, ptr @selinux_avc, i32 0, i32 1, i32 3), align 4
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.selinux_avc, ptr @selinux_avc, i32 0, i32 1, i32 2), i32 noundef 4) #18
  store volatile i32 0, ptr getelementptr inbounds (%struct.selinux_avc, ptr @selinux_avc, i32 0, i32 1, i32 2), align 4
  %1 = ptrtoint ptr %avc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @selinux_avc, ptr %avc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @avc_get_cache_threshold(ptr nocapture noundef readonly %avc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %avc, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @avc_set_cache_threshold(ptr nocapture noundef writeonly %avc, i32 noundef %cache_threshold) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %avc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cache_threshold, ptr %avc, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @avc_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.279, i32 noundef 52, i32 noundef 0, i32 noundef 262144, ptr noundef null) #18
  store ptr %call, ptr @avc_node_cachep, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.280, i32 noundef 44, i32 noundef 0, i32 noundef 262144, ptr noundef null) #18
  store ptr %call1, ptr @avc_xperms_cachep, align 4
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.281, i32 noundef 24, i32 noundef 0, i32 noundef 262144, ptr noundef null) #18
  store ptr %call2, ptr @avc_xperms_decision_cachep, align 4
  %call3 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.282, i32 noundef 32, i32 noundef 0, i32 noundef 262144, ptr noundef null) #18
  store ptr %call3, ptr @avc_xperms_data_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_get_hash_stats(ptr noundef %avc, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !614
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 696, ptr noundef nonnull @.str.299) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %avc_cache = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %rcu_read_lock.exit
  %i.076 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc39, %for.inc38.for.body_crit_edge ]
  %max_chain_len.075 = phi i32 [ 0, %rcu_read_lock.exit ], [ %max_chain_len.1, %for.inc38.for.body_crit_edge ]
  %slots_used.074 = phi i32 [ 0, %rcu_read_lock.exit ], [ %slots_used.1, %for.inc38.for.body_crit_edge ]
  %arrayidx = getelementptr [512 x %struct.hlist_head], ptr %avc_cache, i32 0, i32 %i.076
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i59.not = icmp eq ptr %5, null
  br i1 %tobool.not.i59.not, label %for.body.for.inc38_crit_edge, label %if.then

for.body.for.inc38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc38

if.then:                                          ; preds = %for.body
  %inc = add i32 %slots_used.074, 1
  %call1 = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @avc_get_hash_stats.__warned, align 1
  br i1 %.b56, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @avc_get_hash_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.283, i32 noundef 168, ptr noundef nonnull @.str.284) #18
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then.do.end_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -36
  %tobool16.not7177 = icmp eq ptr %add.ptr, null
  %tobool16.not71 = or i1 %tobool13.not, %tobool16.not7177
  br i1 %tobool16.not71, label %do.end.for.end_crit_edge, label %do.end.for.body17_crit_edge

do.end.for.body17_crit_edge:                      ; preds = %do.end
  br label %for.body17

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %do.end.for.body17_crit_edge
  %chain_len.073 = phi i32 [ %inc18, %for.body17.for.body17_crit_edge ], [ 0, %do.end.for.body17_crit_edge ]
  %8 = phi ptr [ %10, %for.body17.for.body17_crit_edge ], [ %7, %do.end.for.body17_crit_edge ]
  %inc18 = add i32 %chain_len.073, 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 4
  %tobool26.not = icmp eq ptr %10, null
  %add.ptr30 = getelementptr i8, ptr %10, i32 -36
  %tobool16.not78 = icmp eq ptr %add.ptr30, null
  %tobool16.not = or i1 %tobool26.not, %tobool16.not78
  br i1 %tobool16.not, label %for.body17.for.end_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body17

for.body17.for.end_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body17.for.end_crit_edge, %do.end.for.end_crit_edge
  %chain_len.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %inc18, %for.body17.for.end_crit_edge ]
  %11 = tail call i32 @llvm.smax.i32(i32 %chain_len.0.lcssa, i32 %max_chain_len.075)
  br label %for.inc38

for.inc38:                                        ; preds = %for.end, %for.body.for.inc38_crit_edge
  %slots_used.1 = phi i32 [ %slots_used.074, %for.body.for.inc38_crit_edge ], [ %inc, %for.end ]
  %max_chain_len.1 = phi i32 [ %max_chain_len.075, %for.body.for.inc38_crit_edge ], [ %11, %for.end ]
  %inc39 = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc39, 512
  br i1 %exitcond.not, label %for.end40, label %for.inc38.for.body_crit_edge

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end40:                                        ; preds = %for.inc38
  %call.i60 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i60, label %for.end40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i63

for.end40.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i63:                                ; preds = %for.end40
  %call1.i61 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i65

land.lhs.true.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i65:                               ; preds = %land.lhs.true.i63
  %.b4.i64 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64, label %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, label %if.then.i66

land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i66:                                      ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 724, ptr noundef nonnull @.str.300) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i66, %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, %for.end40.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !615
  %12 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i67 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i68, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i68, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %active_nodes = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_nodes, i32 noundef 4) #18
  %16 = ptrtoint ptr %active_nodes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %active_nodes, align 4
  %call43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.285, i32 noundef %17, i32 noundef %slots_used.1, i32 noundef 512, i32 noundef %max_chain_len.1) #18
  ret i32 %call43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 724, ptr noundef nonnull @.str.300) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !615
  %0 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slow_avc_audit(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, i32 noundef %audited, i32 noundef %denied, i32 noundef %result, ptr noundef %a) local_unnamed_addr #7 align 64 {
entry:
  %stack_data = alloca %struct.common_audit_data, align 4
  %sad = alloca %struct.selinux_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stack_data) #18
  %0 = call ptr @memset(ptr %stack_data, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sad) #18
  %1 = getelementptr inbounds i8, ptr %sad, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = add i16 %tclass, -97
  call void @__sanitizer_cov_trace_const_cmp2(i16 -96, i16 %3)
  %4 = icmp ult i16 %3, -96
  br i1 %4, label %do.end, label %if.end23, !prof !612

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.283, i32 noundef 777, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

if.end23:                                         ; preds = %entry
  %tobool24.not = icmp eq ptr %a, null
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %stack_data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 7, ptr %stack_data, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %a.addr.0 = phi ptr [ %a, %if.end23.if.end26_crit_edge ], [ %stack_data, %if.then25 ]
  %tclass27 = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 2
  %6 = ptrtoint ptr %tclass27 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %tclass, ptr %tclass27, align 4
  %requested28 = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 3
  %7 = ptrtoint ptr %requested28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %requested, ptr %requested28, align 4
  %8 = ptrtoint ptr %sad to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ssid, ptr %sad, align 4
  %tsid30 = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 1
  %9 = ptrtoint ptr %tsid30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %tsid, ptr %tsid30, align 4
  %audited31 = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 4
  %10 = ptrtoint ptr %audited31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %audited, ptr %audited31, align 4
  %denied32 = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 5
  %11 = ptrtoint ptr %denied32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %denied, ptr %denied32, align 4
  %result33 = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 6
  %12 = ptrtoint ptr %result33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %result, ptr %result33, align 4
  %state34 = getelementptr inbounds %struct.selinux_audit_data, ptr %sad, i32 0, i32 7
  %13 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %state, ptr %state34, align 4
  %14 = getelementptr inbounds %struct.common_audit_data, ptr %a.addr.0, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sad, ptr %14, align 4
  call void @common_lsm_audit(ptr noundef nonnull %a.addr.0, ptr noundef nonnull @avc_audit_pre_callback, ptr noundef nonnull @avc_audit_post_callback) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sad) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stack_data) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @common_lsm_audit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avc_audit_pre_callback(ptr noundef %ab, ptr nocapture noundef readonly %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %audited = getelementptr inbounds %struct.selinux_audit_data, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %audited to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %audited, align 4
  %denied = getelementptr inbounds %struct.selinux_audit_data, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %denied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool.not, ptr @.str.302, ptr @.str.289
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.301, ptr noundef nonnull %cond) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %tclass = getelementptr inbounds %struct.selinux_audit_data, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tclass, align 4
  %conv = zext i16 %8 to i32
  %sub = add nsw i32 %conv, -1
  %perms1 = getelementptr [97 x %struct.security_class_mapping], ptr @secclass_map, i32 0, i32 %sub, i32 1
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.304) #18
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %if.end
  %perm.040 = phi i32 [ 1, %if.end ], [ %shl, %if.end10.while.body_crit_edge ]
  %i.038 = phi i32 [ 0, %if.end ], [ %inc, %if.end10.while.body_crit_edge ]
  %av.037 = phi i32 [ %4, %if.end ], [ %av.1, %if.end10.while.body_crit_edge ]
  %and = and i32 %perm.040, %av.037
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %while.body.if.end10_crit_edge, label %land.lhs.true

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

land.lhs.true:                                    ; preds = %while.body
  %arrayidx5 = getelementptr ptr, ptr %perms1, i32 %i.038
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.305, ptr noundef nonnull %10) #18
  %neg = xor i32 %perm.040, -1
  %and9 = and i32 %av.037, %neg
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %av.1 = phi i32 [ %and9, %if.then7 ], [ %av.037, %land.lhs.true.if.end10_crit_edge ], [ %av.037, %while.body.if.end10_crit_edge ]
  %inc = add nuw nsw i32 %i.038, 1
  %shl = shl i32 %perm.040, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %while.end, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %av.1)
  %tobool11.not = icmp eq i32 %av.1, 0
  br i1 %tobool11.not, label %while.end.cleanup_crit_edge, label %if.then12

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then12:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.306, i32 noundef %av.1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.str.307.sink = phi ptr [ @.str.303, %entry.cleanup_crit_edge ], [ @.str.307, %if.then12 ], [ @.str.307, %while.end.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull %.str.307.sink) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avc_audit_post_callback(ptr noundef %ab, ptr nocapture noundef readonly %a) #0 align 64 {
entry:
  %scontext = alloca ptr, align 4
  %tcontext = alloca ptr, align 4
  %scontext_len = alloca i32, align 4
  %tcontext_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scontext) #18
  %3 = ptrtoint ptr %scontext to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %scontext, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcontext) #18
  %4 = ptrtoint ptr %tcontext to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tcontext, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scontext_len) #18
  %5 = ptrtoint ptr %scontext_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %scontext_len, align 4, !annotation !613
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcontext_len) #18
  %6 = ptrtoint ptr %tcontext_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tcontext_len, align 4, !annotation !613
  %state = getelementptr inbounds %struct.selinux_audit_data, ptr %2, i32 0, i32 7
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  %call = call i32 @security_sid_to_context(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %scontext, ptr noundef nonnull %scontext_len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.308, i32 noundef %12) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scontext, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.309, ptr noundef %14) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %tsid = getelementptr inbounds %struct.selinux_audit_data, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %tsid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tsid, align 4
  %call3 = call i32 @security_sid_to_context(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %tcontext, ptr noundef nonnull %tcontext_len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %tsid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tsid, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.310, i32 noundef %20) #18
  br label %if.end8

if.else7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %tcontext to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tcontext, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.311, ptr noundef %22) #18
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then5
  %tclass9 = getelementptr inbounds %struct.selinux_audit_data, ptr %2, i32 0, i32 2
  %23 = ptrtoint ptr %tclass9 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tclass9, align 4
  %conv = zext i16 %24 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [97 x %struct.security_class_mapping], ptr @secclass_map, i32 0, i32 %sub
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.312, ptr noundef %26) #18
  %denied = getelementptr inbounds %struct.selinux_audit_data, ptr %2, i32 0, i32 5
  %27 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %denied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not = icmp eq i32 %28, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %result = getelementptr inbounds %struct.selinux_audit_data, ptr %2, i32 0, i32 6
  %29 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool12.not = icmp eq i32 %30, 0
  %cond = zext i1 %tobool12.not to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.313, i32 noundef %cond) #18
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %31 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scontext, align 4
  %33 = ptrtoint ptr %tcontext to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tcontext, align 4
  call fastcc void @trace_selinux_audited(ptr noundef %2, ptr noundef %32, ptr noundef %34, ptr noundef %26)
  %35 = ptrtoint ptr %tcontext to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tcontext, align 4
  call void @kfree(ptr noundef %36) #18
  %37 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scontext, align 4
  call void @kfree(ptr noundef %38) #18
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %2, align 4
  %call16 = call i32 @security_sid_to_context_inval(ptr noundef %40, i32 noundef %42, ptr noundef nonnull %scontext, ptr noundef nonnull %scontext_len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %if.end13.if.end28_crit_edge

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end13
  %43 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %scontext, align 4
  %tobool18.not = icmp eq ptr %44, null
  br i1 %tobool18.not, label %land.lhs.true.if.end28_crit_edge, label %if.then19

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then19:                                        ; preds = %land.lhs.true
  %45 = ptrtoint ptr %scontext_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scontext_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool20.not = icmp eq i32 %46, 0
  br i1 %tobool20.not, label %if.then19.if.end27_crit_edge, label %land.lhs.true21

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

land.lhs.true21:                                  ; preds = %if.then19
  %sub22 = add i32 %46, -1
  %arrayidx23 = getelementptr i8, ptr %44, i32 %sub22
  %47 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp = icmp eq i8 %48, 0
  br i1 %cmp, label %if.then26, label %land.lhs.true21.if.end27_crit_edge

land.lhs.true21.if.end27_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #20
  %49 = ptrtoint ptr %scontext_len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub22, ptr %scontext_len, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.lhs.true21.if.end27_crit_edge, %if.then19.if.end27_crit_edge
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.314) #18
  %50 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scontext, align 4
  %52 = ptrtoint ptr %scontext_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scontext_len, align 4
  call void @audit_log_n_untrustedstring(ptr noundef %ab, ptr noundef %51, i32 noundef %53) #18
  %54 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %scontext, align 4
  call void @kfree(ptr noundef %55) #18
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %land.lhs.true.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state, align 4
  %58 = ptrtoint ptr %tsid to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tsid, align 4
  %call31 = call i32 @security_sid_to_context_inval(ptr noundef %57, i32 noundef %59, ptr noundef nonnull %scontext, ptr noundef nonnull %scontext_len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %if.end28.if.end46_crit_edge

if.end28.if.end46_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

land.lhs.true33:                                  ; preds = %if.end28
  %60 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %scontext, align 4
  %tobool34.not = icmp eq ptr %61, null
  br i1 %tobool34.not, label %land.lhs.true33.if.end46_crit_edge, label %if.then35

land.lhs.true33.if.end46_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.then35:                                        ; preds = %land.lhs.true33
  %62 = ptrtoint ptr %scontext_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %scontext_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool36.not = icmp eq i32 %63, 0
  br i1 %tobool36.not, label %if.then35.if.end45_crit_edge, label %land.lhs.true37

if.then35.if.end45_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45

land.lhs.true37:                                  ; preds = %if.then35
  %sub38 = add i32 %63, -1
  %arrayidx39 = getelementptr i8, ptr %61, i32 %sub38
  %64 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp41 = icmp eq i8 %65, 0
  br i1 %cmp41, label %if.then43, label %land.lhs.true37.if.end45_crit_edge

land.lhs.true37.if.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45

if.then43:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #20
  %66 = ptrtoint ptr %scontext_len to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub38, ptr %scontext_len, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true37.if.end45_crit_edge, %if.then35.if.end45_crit_edge
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.315) #18
  %67 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %scontext, align 4
  %69 = ptrtoint ptr %scontext_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %scontext_len, align 4
  call void @audit_log_n_untrustedstring(ptr noundef %ab, ptr noundef %68, i32 noundef %70) #18
  %71 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %scontext, align 4
  call void @kfree(ptr noundef %72) #18
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %land.lhs.true33.if.end46_crit_edge, %if.end28.if.end46_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcontext_len) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scontext_len) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcontext) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scontext) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_add_callback(ptr noundef %callback, i32 noundef %events) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #23
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %callback, ptr %call7.i, align 8
  %events2 = getelementptr inbounds %struct.avc_callback_node, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %events2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %events, ptr %events2, align 4
  %3 = load ptr, ptr @avc_callbacks, align 4
  %next = getelementptr inbounds %struct.avc_callback_node, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %next, align 8
  store ptr %call7.i, ptr @avc_callbacks, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end ], [ -12, %entry.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_ss_reset(ptr noundef %avc, i32 noundef %seqno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @avc_flush(ptr noundef %avc)
  %c.011 = load ptr, ptr @avc_callbacks, align 4
  %tobool.not12 = icmp eq ptr %c.011, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %c.014 = phi ptr [ %c.0, %for.inc.for.body_crit_edge ], [ %c.011, %entry.for.body_crit_edge ]
  %rc.013 = phi i32 [ %rc.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %events = getelementptr inbounds %struct.avc_callback_node, ptr %c.014, i32 0, i32 1
  %0 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %events, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %c.014 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c.014, align 4
  %call = tail call i32 %3(i32 noundef 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.013)
  %tobool2.not = icmp eq i32 %rc.013, 0
  %spec.select = select i1 %tobool2.not, i32 %call, i32 %rc.013
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %rc.1 = phi i32 [ %rc.013, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then ]
  %next = getelementptr inbounds %struct.avc_callback_node, ptr %c.014, i32 0, i32 2
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %c.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %rc.1, %for.inc.for.end_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @avc_latest_notif_update.notif_lock) #18
  %latest_notif16.i = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %latest_notif16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %latest_notif16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %seqno)
  %cmp17.i = icmp ult i32 %6, %seqno
  br i1 %cmp17.i, label %if.then19.i, label %for.end.avc_latest_notif_update.exit_crit_edge

for.end.avc_latest_notif_update.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_latest_notif_update.exit

if.then19.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %latest_notif16.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %seqno, ptr %latest_notif16.i, align 4
  br label %avc_latest_notif_update.exit

avc_latest_notif_update.exit:                     ; preds = %if.then19.i, %for.end.avc_latest_notif_update.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @avc_latest_notif_update.notif_lock, i32 noundef %call2.i) #18
  ret i32 %rc.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @avc_flush(ptr noundef %avc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_cache = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1
  %active_nodes.i = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %entry
  %i.050 = phi i32 [ 0, %entry ], [ %inc, %rcu_read_unlock.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [512 x %struct.hlist_head], ptr %avc_cache, i32 0, i32 %i.050
  %arrayidx2 = getelementptr %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 1, i32 %i.050
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx2) #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !614
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 696, ptr noundef nonnull @.str.299) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -36
  %tobool11.not4851 = icmp eq ptr %add.ptr, null
  %tobool11.not48 = or i1 %tobool.not, %tobool11.not4851
  br i1 %tobool11.not48, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body12_crit_edge

rcu_read_lock.exit.for.body12_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %for.body12

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body12:                                       ; preds = %avc_node_delete.exit.for.body12_crit_edge, %rcu_read_lock.exit.for.body12_crit_edge
  %node.049 = phi ptr [ %add.ptr19, %avc_node_delete.exit.for.body12_crit_edge ], [ %add.ptr, %rcu_read_lock.exit.for.body12_crit_edge ]
  %list.i = getelementptr inbounds %struct.avc_node, ptr %node.049, i32 0, i32 1
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.avc_node, ptr %node.049, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev2.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %for.body12.avc_node_delete.exit_crit_edge, label %do.body13.i.i.i

for.body12.avc_node_delete.exit_crit_edge:        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_node_delete.exit

do.body13.i.i.i:                                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #20
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i.i, align 4
  br label %avc_node_delete.exit

avc_node_delete.exit:                             ; preds = %do.body13.i.i.i, %for.body12.avc_node_delete.exit_crit_edge
  %12 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rhead.i = getelementptr inbounds %struct.avc_node, ptr %node.049, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rhead.i, ptr noundef nonnull @avc_node_free) #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_nodes.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %active_nodes.i, i32 1, i32 3, i32 1) #18
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_nodes.i, ptr %active_nodes.i, i32 1, ptr elementtype(i32) %active_nodes.i) #18, !srcloc !616
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i, align 4
  %tobool15.not = icmp eq ptr %15, null
  %add.ptr19 = getelementptr i8, ptr %15, i32 -36
  %tobool11.not52 = icmp eq ptr %add.ptr19, null
  %tobool11.not = or i1 %tobool15.not, %tobool11.not52
  br i1 %tobool11.not, label %avc_node_delete.exit.for.end_crit_edge, label %avc_node_delete.exit.for.body12_crit_edge

avc_node_delete.exit.for.body12_crit_edge:        ; preds = %avc_node_delete.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body12

avc_node_delete.exit.for.end_crit_edge:           ; preds = %avc_node_delete.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %avc_node_delete.exit.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i37 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i37, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %for.end
  %call1.i38 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 724, ptr noundef nonnull @.str.300) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !615
  %16 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i44 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx2, i32 noundef %call5) #18
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end24, label %rcu_read_unlock.exit.for.body_crit_edge

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end24:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_has_extended_perms(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, i8 noundef zeroext %driver, i8 noundef zeroext %xperm, ptr noundef %ad) local_unnamed_addr #0 align 64 {
entry:
  %avd = alloca %struct.av_decision, align 4
  %local_xpd = alloca %struct.extended_perms_decision, align 4
  %allowed = alloca %struct.extended_perms_data, align 4
  %auditallow = alloca %struct.extended_perms_data, align 4
  %dontaudit = alloca %struct.extended_perms_data, align 4
  %local_xp_node = alloca %struct.avc_xperms_node, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %avd) #18
  %0 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 3
  %3 = call ptr @memset(ptr %avd, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_xpd) #18
  %4 = call ptr @memset(ptr %local_xpd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %allowed) #18
  %5 = call ptr @memset(ptr %allowed, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %auditallow) #18
  %6 = call ptr @memset(ptr %auditallow, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dontaudit) #18
  %7 = call ptr @memset(ptr %dontaudit, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %local_xp_node) #18
  %8 = call ptr @memset(ptr %local_xp_node, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested)
  %tobool.not = icmp eq i32 %requested, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !612

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.283, i32 noundef 1055, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

if.end23:                                         ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !614
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end23.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end23.rcu_read_lock.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 696, ptr noundef nonnull @.str.299) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end23.rcu_read_lock.exit_crit_edge
  %avc = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 7
  %13 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %avc, align 4
  %call = tail call fastcc ptr @avc_lookup(ptr noundef %14, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass)
  %tobool24.not = icmp eq ptr %call, null
  br i1 %tobool24.not, label %if.end38.thread, label %if.end38, !prof !612

if.end38.thread:                                  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @avc_compute_av(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, ptr noundef nonnull %avd, ptr noundef nonnull %local_xp_node)
  br label %lor.lhs.false

if.end38:                                         ; preds = %rcu_read_lock.exit
  %avd35 = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %avd, ptr %avd35, i32 20)
  %xp_node37 = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %xp_node37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xp_node37, align 4
  %tobool39.not = icmp eq ptr %17, null
  br i1 %tobool39.not, label %if.end38.decision_crit_edge, label %if.end38.lor.lhs.false_crit_edge

if.end38.lor.lhs.false_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

if.end38.decision_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %decision

lor.lhs.false:                                    ; preds = %if.end38.lor.lhs.false_crit_edge, %if.end38.thread
  %xp_node.0184 = phi ptr [ %local_xp_node, %if.end38.thread ], [ %17, %if.end38.lor.lhs.false_crit_edge ]
  %18 = ptrtoint ptr %xp_node.0184 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %xp_node.0184, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool40.not = icmp eq i16 %19, 0
  br i1 %tobool40.not, label %lor.lhs.false.decision_crit_edge, label %if.end42

lor.lhs.false.decision_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %decision

if.end42:                                         ; preds = %lor.lhs.false
  %allowed43 = getelementptr inbounds %struct.extended_perms_decision, ptr %local_xpd, i32 0, i32 2
  %20 = ptrtoint ptr %allowed43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %allowed, ptr %allowed43, align 4
  %auditallow44 = getelementptr inbounds %struct.extended_perms_decision, ptr %local_xpd, i32 0, i32 3
  %21 = ptrtoint ptr %auditallow44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %auditallow, ptr %auditallow44, align 4
  %dontaudit45 = getelementptr inbounds %struct.extended_perms_decision, ptr %local_xpd, i32 0, i32 4
  %22 = ptrtoint ptr %dontaudit45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dontaudit, ptr %dontaudit45, align 4
  %xpd_head.i = getelementptr inbounds %struct.avc_xperms_node, ptr %xp_node.0184, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end42
  %.pn.in.i = phi ptr [ %xpd_head.i, %if.end42 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %23 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %xpd_head.i
  br i1 %cmp.not.i, label %for.cond.i.if.then56_crit_edge, label %for.body.i

for.cond.i.if.then56_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then56

for.body.i:                                       ; preds = %for.cond.i
  %driver2.i = getelementptr i8, ptr %.pn.i, i32 -15
  %24 = ptrtoint ptr %driver2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %driver2.i, align 1
  %cmp4.i = icmp eq i8 %25, %driver
  br i1 %cmp4.i, label %avc_xperms_decision_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

avc_xperms_decision_lookup.exit:                  ; preds = %for.body.i
  %xpd_node.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %tobool47.not = icmp eq ptr %xpd_node.0.le.i, null
  br i1 %tobool47.not, label %avc_xperms_decision_lookup.exit.if.then56_crit_edge, label %if.else68, !prof !612

avc_xperms_decision_lookup.exit.if.then56_crit_edge: ; preds = %avc_xperms_decision_lookup.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then56

if.then56:                                        ; preds = %avc_xperms_decision_lookup.exit.if.then56_crit_edge, %for.cond.i.if.then56_crit_edge
  %drivers = getelementptr inbounds %struct.extended_perms, ptr %xp_node.0184, i32 0, i32 1
  %conv = zext i8 %driver to i32
  %26 = lshr i32 %conv, 5
  %arrayidx = getelementptr [8 x i32], ptr %drivers, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %and = and i32 %conv, 31
  %29 = shl nuw i32 1, %and
  %30 = and i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool61.not = icmp eq i32 %30, 0
  br i1 %tobool61.not, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #20
  %neg = xor i32 %requested, -1
  %31 = ptrtoint ptr %avd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %avd, align 4
  %and64 = and i32 %32, %neg
  store i32 %and64, ptr %avd, align 4
  br label %decision

if.end65:                                         ; preds = %if.then56
  call fastcc void @rcu_read_unlock()
  call void @security_compute_xperms_decision(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i8 noundef zeroext %driver, ptr noundef nonnull %local_xpd) #18
  %33 = call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i152 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i152 to ptr
  %preempt_count.i.i.i.i153 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i153, align 4
  %add.i.i.i154 = add i32 %36, 1
  store volatile i32 %add.i.i.i154, ptr %preempt_count.i.i.i.i153, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !614
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i155 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i155, label %if.end65.rcu_read_lock.exit162_crit_edge, label %land.lhs.true.i158

if.end65.rcu_read_lock.exit162_crit_edge:         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit162

land.lhs.true.i158:                               ; preds = %if.end65
  %call1.i156 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156)
  %tobool.not.i157 = icmp eq i32 %call1.i156, 0
  br i1 %tobool.not.i157, label %land.lhs.true.i158.rcu_read_lock.exit162_crit_edge, label %land.lhs.true2.i160

land.lhs.true.i158.rcu_read_lock.exit162_crit_edge: ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit162

land.lhs.true2.i160:                              ; preds = %land.lhs.true.i158
  %.b4.i159 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i159, label %land.lhs.true2.i160.rcu_read_lock.exit162_crit_edge, label %if.then.i161

land.lhs.true2.i160.rcu_read_lock.exit162_crit_edge: ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit162

if.then.i161:                                     ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 696, ptr noundef nonnull @.str.299) #18
  br label %rcu_read_lock.exit162

rcu_read_lock.exit162:                            ; preds = %if.then.i161, %land.lhs.true2.i160.rcu_read_lock.exit162_crit_edge, %land.lhs.true.i158.rcu_read_lock.exit162_crit_edge, %if.end65.rcu_read_lock.exit162_crit_edge
  %37 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %avc, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %2, align 4
  call fastcc void @avc_update_node(ptr noundef %38, i32 noundef 256, i32 noundef %requested, i8 noundef zeroext %driver, i8 noundef zeroext %xperm, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %40, ptr noundef nonnull %local_xpd, i32 noundef 0)
  br label %if.end69

if.else68:                                        ; preds = %avc_xperms_decision_lookup.exit
  %41 = lshr i8 %xperm, 5
  %42 = ptrtoint ptr %xpd_node.0.le.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %xpd_node.0.le.i, align 4
  %44 = ptrtoint ptr %local_xpd to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %local_xpd, align 4
  %45 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i163 = icmp eq i8 %45, 0
  br i1 %tobool.not.i163, label %if.else68.if.end.i_crit_edge, label %if.then.i164

if.else68.if.end.i_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i164:                                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #20
  %allowed.i = getelementptr i8, ptr %.pn.i, i32 -12
  %46 = ptrtoint ptr %allowed.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %allowed.i, align 4
  %idxprom.i = zext i8 %41 to i32
  %arrayidx.i = getelementptr [8 x i32], ptr %47, i32 0, i32 %idxprom.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %arrayidx8.i = getelementptr [8 x i32], ptr %allowed, i32 0, i32 %idxprom.i
  %50 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx8.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i164, %if.else68.if.end.i_crit_edge
  %51 = ptrtoint ptr %local_xpd to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %local_xpd, align 4
  %53 = and i8 %52, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool12.not.i = icmp eq i8 %53, 0
  br i1 %tobool12.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then13.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %auditallow.i = getelementptr i8, ptr %.pn.i, i32 -8
  %54 = ptrtoint ptr %auditallow.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %auditallow.i, align 4
  %idxprom15.i = zext i8 %41 to i32
  %arrayidx16.i = getelementptr [8 x i32], ptr %55, i32 0, i32 %idxprom15.i
  %56 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx16.i, align 4
  %58 = ptrtoint ptr %auditallow44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %auditallow44, align 4
  %arrayidx20.i = getelementptr [8 x i32], ptr %59, i32 0, i32 %idxprom15.i
  %60 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %arrayidx20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then13.i, %if.end.i.if.end21.i_crit_edge
  %61 = ptrtoint ptr %local_xpd to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %local_xpd, align 4
  %63 = and i8 %62, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool25.not.i = icmp eq i8 %63, 0
  br i1 %tobool25.not.i, label %if.end21.i.if.end69_crit_edge, label %if.then26.i

if.end21.i.if.end69_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #20
  %dontaudit.i = getelementptr i8, ptr %.pn.i, i32 -4
  %64 = ptrtoint ptr %dontaudit.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dontaudit.i, align 4
  %idxprom28.i = zext i8 %41 to i32
  %arrayidx29.i = getelementptr [8 x i32], ptr %65, i32 0, i32 %idxprom28.i
  %66 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx29.i, align 4
  %68 = ptrtoint ptr %dontaudit45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dontaudit45, align 4
  %arrayidx33.i = getelementptr [8 x i32], ptr %69, i32 0, i32 %idxprom28.i
  %70 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %arrayidx33.i, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then26.i, %if.end21.i.if.end69_crit_edge, %rcu_read_lock.exit162
  %71 = ptrtoint ptr %local_xpd to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %local_xpd, align 4
  %73 = and i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i165 = icmp eq i8 %73, 0
  br i1 %tobool.not.i165, label %if.end69.if.then72_crit_edge, label %avc_xperms_has_perm.exit

if.end69.if.then72_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then72

avc_xperms_has_perm.exit:                         ; preds = %if.end69
  %74 = ptrtoint ptr %allowed43 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %allowed43, align 4
  %conv3.i = zext i8 %xperm to i32
  %76 = lshr i32 %conv3.i, 5
  %arrayidx20.i169 = getelementptr [8 x i32], ptr %75, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx20.i169 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx20.i169, align 4
  %and22.i = and i32 %conv3.i, 31
  %79 = shl nuw i32 1, %and22.i
  %80 = and i32 %78, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool71.not = icmp eq i32 %80, 0
  br i1 %tobool71.not, label %avc_xperms_has_perm.exit.if.then72_crit_edge, label %avc_xperms_has_perm.exit.decision_crit_edge

avc_xperms_has_perm.exit.decision_crit_edge:      ; preds = %avc_xperms_has_perm.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %decision

avc_xperms_has_perm.exit.if.then72_crit_edge:     ; preds = %avc_xperms_has_perm.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then72

if.then72:                                        ; preds = %avc_xperms_has_perm.exit.if.then72_crit_edge, %if.end69.if.then72_crit_edge
  %neg73 = xor i32 %requested, -1
  %81 = ptrtoint ptr %avd to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %avd, align 4
  %and75 = and i32 %82, %neg73
  store i32 %and75, ptr %avd, align 4
  br label %decision

decision:                                         ; preds = %if.then72, %avc_xperms_has_perm.exit.decision_crit_edge, %if.then62, %lor.lhs.false.decision_crit_edge, %if.end38.decision_crit_edge
  %xpd.0 = phi ptr [ %local_xpd, %avc_xperms_has_perm.exit.decision_crit_edge ], [ %local_xpd, %if.then72 ], [ null, %if.then62 ], [ null, %lor.lhs.false.decision_crit_edge ], [ null, %if.end38.decision_crit_edge ]
  %83 = ptrtoint ptr %avd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %avd, align 4
  %neg78 = xor i32 %84, -1
  %and79 = and i32 %neg78, %requested
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %decision.if.end89_crit_edge, label %if.then87, !prof !611

decision.if.end89_crit_edge:                      ; preds = %decision
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end89

if.then87:                                        ; preds = %decision
  call void @__sanitizer_cov_trace_pc() #20
  %call88 = call fastcc i32 @avc_denied(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, i8 noundef zeroext %driver, i8 noundef zeroext %xperm, i32 noundef 2, ptr noundef nonnull %avd)
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %decision.if.end89_crit_edge
  %rc.0 = phi i32 [ %call88, %if.then87 ], [ 0, %decision.if.end89_crit_edge ]
  %call.i170 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i170, label %if.end89.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i173

if.end89.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i173:                               ; preds = %if.end89
  %call1.i171 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i171)
  %tobool.not.i172 = icmp eq i32 %call1.i171, 0
  br i1 %tobool.not.i172, label %land.lhs.true.i173.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i175

land.lhs.true.i173.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i175:                              ; preds = %land.lhs.true.i173
  %.b4.i174 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i174, label %land.lhs.true2.i175.rcu_read_unlock.exit_crit_edge, label %if.then.i176

land.lhs.true2.i175.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i175
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i176:                                     ; preds = %land.lhs.true2.i175
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 724, ptr noundef nonnull @.str.300) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i176, %land.lhs.true2.i175.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i173.rcu_read_unlock.exit_crit_edge, %if.end89.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !615
  %85 = call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i177 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i177 to ptr
  %preempt_count.i.i.i.i178 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i178, align 4
  %sub.i.i.i = add i32 %88, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i178, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %89 = ptrtoint ptr %avd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %avd, align 4
  %neg.i.i = xor i32 %90, -1
  %and.i.i = and i32 %neg.i.i, %requested
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !611

if.then.i.i:                                      ; preds = %rcu_read_unlock.exit
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %1, align 4
  %and3.i.i = and i32 %92, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.avc_xperms_audit.exit.thread_crit_edge, label %land.lhs.true.i.i

if.then.i.i.avc_xperms_audit.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit.thread

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %tobool5.not.i.i = icmp eq ptr %xpd.0, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.avc_xperms_audit.exit_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.avc_xperms_audit.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  %93 = ptrtoint ptr %xpd.0 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %xpd.0, align 4
  %95 = and i8 %94, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool33.not.i.i.i = icmp eq i8 %95, 0
  br i1 %tobool33.not.i.i.i, label %if.then6.i.i.avc_xperms_audit.exit_crit_edge, label %avc_xperms_has_perm.exit.i.i

if.then6.i.i.avc_xperms_audit.exit_crit_edge:     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit

avc_xperms_has_perm.exit.i.i:                     ; preds = %if.then6.i.i
  %dontaudit.i.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %xpd.0, i32 0, i32 4
  %96 = ptrtoint ptr %dontaudit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dontaudit.i.i.i, align 4
  %conv3.i.i.i = zext i8 %xperm to i32
  %98 = lshr i32 %conv3.i.i.i, 5
  %arrayidx20.i.i.i = getelementptr [8 x i32], ptr %97, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx20.i.i.i, align 4
  %and22.i.i.i = and i32 %conv3.i.i.i, 31
  %101 = shl nuw i32 1, %and22.i.i.i
  %102 = and i32 %100, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool7.not.i.i = icmp eq i32 %102, 0
  br i1 %tobool7.not.i.i, label %avc_xperms_has_perm.exit.i.i.avc_xperms_audit.exit_crit_edge, label %avc_xperms_has_perm.exit.i.i.avc_xperms_audit.exit.thread_crit_edge

avc_xperms_has_perm.exit.i.i.avc_xperms_audit.exit.thread_crit_edge: ; preds = %avc_xperms_has_perm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit.thread

avc_xperms_has_perm.exit.i.i.avc_xperms_audit.exit_crit_edge: ; preds = %avc_xperms_has_perm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit

if.else.i.i:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool12.not.i.i = icmp eq i32 %rc.0, 0
  br i1 %tobool12.not.i.i, label %if.else14.i.i, label %if.else.i.i.avc_xperms_audit.exit_crit_edge

if.else.i.i.avc_xperms_audit.exit_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit

if.else14.i.i:                                    ; preds = %if.else.i.i
  %103 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %0, align 4
  %and15.i.i = and i32 %104, %requested
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.else14.i.i.avc_xperms_audit.exit.thread_crit_edge, label %land.lhs.true17.i.i

if.else14.i.i.avc_xperms_audit.exit.thread_crit_edge: ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit.thread

land.lhs.true17.i.i:                              ; preds = %if.else14.i.i
  %tobool18.not.i.i = icmp eq ptr %xpd.0, null
  br i1 %tobool18.not.i.i, label %land.lhs.true17.i.i.avc_xperms_audit.exit_crit_edge, label %if.then19.i.i

land.lhs.true17.i.i.avc_xperms_audit.exit_crit_edge: ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit

if.then19.i.i:                                    ; preds = %land.lhs.true17.i.i
  %105 = ptrtoint ptr %xpd.0 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %xpd.0, align 4
  %107 = and i8 %106, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool15.not.i.i.i = icmp eq i8 %107, 0
  br i1 %tobool15.not.i.i.i, label %if.then19.i.i.avc_xperms_audit.exit.thread_crit_edge, label %avc_xperms_has_perm.exit52.i.i

if.then19.i.i.avc_xperms_audit.exit.thread_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit.thread

avc_xperms_has_perm.exit52.i.i:                   ; preds = %if.then19.i.i
  %auditallow.i.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %xpd.0, i32 0, i32 3
  %108 = ptrtoint ptr %auditallow.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %auditallow.i.i.i, align 4
  %conv3.i46.i.i = zext i8 %xperm to i32
  %110 = lshr i32 %conv3.i46.i.i, 5
  %arrayidx20.i47.i.i = getelementptr [8 x i32], ptr %109, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx20.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx20.i47.i.i, align 4
  %and22.i48.i.i = and i32 %conv3.i46.i.i, 31
  %113 = shl nuw i32 1, %and22.i48.i.i
  %114 = and i32 %112, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool21.not.i.i = icmp eq i32 %114, 0
  br i1 %tobool21.not.i.i, label %avc_xperms_has_perm.exit52.i.i.avc_xperms_audit.exit.thread_crit_edge, label %avc_xperms_has_perm.exit52.i.i.avc_xperms_audit.exit_crit_edge

avc_xperms_has_perm.exit52.i.i.avc_xperms_audit.exit_crit_edge: ; preds = %avc_xperms_has_perm.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit

avc_xperms_has_perm.exit52.i.i.avc_xperms_audit.exit.thread_crit_edge: ; preds = %avc_xperms_has_perm.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit.thread

avc_xperms_audit.exit:                            ; preds = %avc_xperms_has_perm.exit52.i.i.avc_xperms_audit.exit_crit_edge, %land.lhs.true17.i.i.avc_xperms_audit.exit_crit_edge, %if.else.i.i.avc_xperms_audit.exit_crit_edge, %avc_xperms_has_perm.exit.i.i.avc_xperms_audit.exit_crit_edge, %if.then6.i.i.avc_xperms_audit.exit_crit_edge, %land.lhs.true.i.i.avc_xperms_audit.exit_crit_edge
  %audited.0.i18.i = phi i32 [ %and15.i.i, %avc_xperms_has_perm.exit52.i.i.avc_xperms_audit.exit_crit_edge ], [ %and15.i.i, %land.lhs.true17.i.i.avc_xperms_audit.exit_crit_edge ], [ %and3.i.i, %land.lhs.true.i.i.avc_xperms_audit.exit_crit_edge ], [ %and3.i.i, %avc_xperms_has_perm.exit.i.i.avc_xperms_audit.exit_crit_edge ], [ %and3.i.i, %if.then6.i.i.avc_xperms_audit.exit_crit_edge ], [ %requested, %if.else.i.i.avc_xperms_audit.exit_crit_edge ]
  %denied.0.i17.i = phi i32 [ 0, %avc_xperms_has_perm.exit52.i.i.avc_xperms_audit.exit_crit_edge ], [ 0, %land.lhs.true17.i.i.avc_xperms_audit.exit_crit_edge ], [ %and.i.i, %land.lhs.true.i.i.avc_xperms_audit.exit_crit_edge ], [ %and.i.i, %avc_xperms_has_perm.exit.i.i.avc_xperms_audit.exit_crit_edge ], [ %and.i.i, %if.then6.i.i.avc_xperms_audit.exit_crit_edge ], [ %requested, %if.else.i.i.avc_xperms_audit.exit_crit_edge ]
  %call4.i = call i32 @slow_avc_audit(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, i32 noundef %audited.0.i18.i, i32 noundef %denied.0.i17.i, i32 noundef %rc.0, ptr noundef %ad) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool91.not = icmp eq i32 %call4.i, 0
  br i1 %tobool91.not, label %avc_xperms_audit.exit.avc_xperms_audit.exit.thread_crit_edge, label %avc_xperms_audit.exit.cleanup_crit_edge

avc_xperms_audit.exit.cleanup_crit_edge:          ; preds = %avc_xperms_audit.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

avc_xperms_audit.exit.avc_xperms_audit.exit.thread_crit_edge: ; preds = %avc_xperms_audit.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_audit.exit.thread

avc_xperms_audit.exit.thread:                     ; preds = %avc_xperms_audit.exit.avc_xperms_audit.exit.thread_crit_edge, %avc_xperms_has_perm.exit52.i.i.avc_xperms_audit.exit.thread_crit_edge, %if.then19.i.i.avc_xperms_audit.exit.thread_crit_edge, %if.else14.i.i.avc_xperms_audit.exit.thread_crit_edge, %avc_xperms_has_perm.exit.i.i.avc_xperms_audit.exit.thread_crit_edge, %if.then.i.i.avc_xperms_audit.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %avc_xperms_audit.exit.thread, %avc_xperms_audit.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -13, %do.end ], [ %rc.0, %avc_xperms_audit.exit.thread ], [ %call4.i, %avc_xperms_audit.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %local_xp_node) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dontaudit) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %auditallow) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %allowed) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_xpd) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %avd) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @avc_lookup(ptr noundef %avc, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !617
  %1 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @avc_cache_stats to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add14 = add i32 %9, 1
  store i32 %add14, ptr %7, align 4
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !618
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end29_crit_edge, !prof !612

entry.do.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end29

do.end29:                                         ; preds = %if.then, %entry.do.end29_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #18, !srcloc !619
  %shl.i.i = shl i32 %tsid, 2
  %xor.i.i = xor i32 %shl.i.i, %ssid
  %conv.i.i = zext i16 %tclass to i32
  %shl1.i.i = shl nuw nsw i32 %conv.i.i, 4
  %xor2.i.i = xor i32 %xor.i.i, %shl1.i.i
  %and.i.i99 = and i32 %xor2.i.i, 511
  %avc_cache.i = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1
  %arrayidx.i = getelementptr [512 x %struct.hlist_head], ptr %avc_cache.i, i32 0, i32 %and.i.i99
  %call1.i = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end29.do.end.i_crit_edge

do.end29.do.end.i_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.end29
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b54.i = load i1, ptr @avc_search_node.__warned, align 1
  br i1 %.b54.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @avc_search_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.283, i32 noundef 536, ptr noundef nonnull @.str.284) #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.end29.do.end.i_crit_edge
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %12, null
  %add.ptr.i = getelementptr i8, ptr %12, i32 -36
  %tobool13.not5862.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not58.i = or i1 %tobool11.not.i, %tobool13.not5862.i
  br i1 %tobool13.not58.i, label %do.end.i.do.body41_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.do.body41_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body41

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %node.059.i = phi ptr [ %add.ptr39.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %node.059.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node.059.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %ssid)
  %cmp.i = icmp eq i32 %14, %ssid
  br i1 %cmp.i, label %land.lhs.true15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %for.body.i
  %tclass17.i = getelementptr inbounds %struct.avc_entry, ptr %node.059.i, i32 0, i32 2
  %15 = ptrtoint ptr %tclass17.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tclass17.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %tclass)
  %cmp19.i = icmp eq i16 %16, %tclass
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true21.i:                                ; preds = %land.lhs.true15.i
  %tsid23.i = getelementptr inbounds %struct.avc_entry, ptr %node.059.i, i32 0, i32 1
  %17 = ptrtoint ptr %tsid23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tsid23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %tsid)
  %cmp24.i = icmp eq i32 %18, %tsid
  br i1 %cmp24.i, label %land.lhs.true21.i.cleanup_crit_edge, label %land.lhs.true21.i.for.inc.i_crit_edge

land.lhs.true21.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true21.i.cleanup_crit_edge:              ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true21.i.for.inc.i_crit_edge, %land.lhs.true15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %list.i = getelementptr inbounds %struct.avc_node, ptr %node.059.i, i32 0, i32 1
  %19 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %list.i, align 4
  %tobool35.not.i = icmp eq ptr %20, null
  %add.ptr39.i = getelementptr i8, ptr %20, i32 -36
  %tobool13.not63.i = icmp eq ptr %add.ptr39.i, null
  %tobool13.not.i = or i1 %tobool35.not.i, %tobool13.not63.i
  br i1 %tobool13.not.i, label %for.inc.i.do.body41_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.do.body41_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body41

do.body41:                                        ; preds = %for.inc.i.do.body41_crit_edge, %do.end.i.do.body41_crit_edge
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !617
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx66, align 4
  %add67 = add i32 %25, ptrtoint (ptr getelementptr inbounds (%struct.avc_cache_stats, ptr @avc_cache_stats, i32 0, i32 1) to i32)
  %26 = inttoptr i32 %add67 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add68 = add i32 %28, 1
  store i32 %add68, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !618
  %and.i.i100 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100)
  %tobool79.not = icmp eq i32 %and.i.i100, 0
  br i1 %tobool79.not, label %if.then88, label %do.body41.do.end91_crit_edge, !prof !612

do.body41.do.end91_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end91

if.then88:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end91

do.end91:                                         ; preds = %if.then88, %do.body41.do.end91_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #18, !srcloc !619
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %land.lhs.true21.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end91 ], [ %node.059.i, %land.lhs.true21.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @avc_compute_av(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, ptr noundef %avd, ptr noundef %xp_node) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i1, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %entry
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 724, ptr noundef nonnull @.str.300) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !615
  %0 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i8 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %xpd_head = getelementptr inbounds %struct.avc_xperms_node, ptr %xp_node, i32 0, i32 1
  %4 = ptrtoint ptr %xpd_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %xpd_head, ptr %xpd_head, align 4
  %prev.i = getelementptr inbounds %struct.avc_xperms_node, ptr %xp_node, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xpd_head, ptr %prev.i, align 4
  tail call void @security_compute_av(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, ptr noundef %avd, ptr noundef %xp_node) #18
  %6 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !614
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %rcu_read_unlock.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 696, ptr noundef nonnull @.str.299) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge
  %avc = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 7
  %10 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %avc, align 4
  %seqno.i = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 3
  %12 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seqno.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @avc_latest_notif_update.notif_lock) #18
  %latest_notif16.i.i = getelementptr inbounds %struct.selinux_avc, ptr %11, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %latest_notif16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %latest_notif16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp5.i.i = icmp ugt i32 %15, %13
  br i1 %cmp5.i.i, label %avc_latest_notif_update.exit.i, label %if.end.i

avc_latest_notif_update.exit.i:                   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.320, i32 noundef %13, i32 noundef %15) #24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @avc_latest_notif_update.notif_lock, i32 noundef %call2.i.i) #18
  br label %avc_insert.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @avc_latest_notif_update.notif_lock, i32 noundef %call2.i.i) #18
  %call1.i10 = tail call fastcc ptr @avc_alloc_node(ptr noundef %11) #18
  %tobool2.not.i = icmp eq ptr %call1.i10, null
  br i1 %tobool2.not.i, label %if.end.i.avc_insert.exit_crit_edge, label %if.end4.i

if.end.i.avc_insert.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_insert.exit

if.end4.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %call1.i10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ssid, ptr %call1.i10, align 4
  %tsid3.i.i = getelementptr inbounds %struct.avc_entry, ptr %call1.i10, i32 0, i32 1
  %17 = ptrtoint ptr %tsid3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %tsid, ptr %tsid3.i.i, align 4
  %tclass5.i.i = getelementptr inbounds %struct.avc_entry, ptr %call1.i10, i32 0, i32 2
  %18 = ptrtoint ptr %tclass5.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %tclass, ptr %tclass5.i.i, align 4
  %avd7.i.i = getelementptr inbounds %struct.avc_entry, ptr %call1.i10, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %avd7.i.i, ptr %avd, i32 20)
  %call5.i = tail call fastcc i32 @avc_xperms_populate(ptr noundef nonnull %call1.i10, ptr noundef %xp_node) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @avc_node_kill(ptr noundef %11, ptr noundef nonnull %call1.i10) #18
  br label %avc_insert.exit

if.end8.i:                                        ; preds = %if.end4.i
  %shl.i.i = shl i32 %tsid, 2
  %xor.i.i = xor i32 %shl.i.i, %ssid
  %conv.i.i = zext i16 %tclass to i32
  %shl1.i.i = shl nuw nsw i32 %conv.i.i, 4
  %xor2.i.i = xor i32 %xor.i.i, %shl1.i.i
  %and.i.i = and i32 %xor2.i.i, 511
  %avc_cache.i = getelementptr inbounds %struct.selinux_avc, ptr %11, i32 0, i32 1
  %arrayidx.i = getelementptr [512 x %struct.hlist_head], ptr %avc_cache.i, i32 0, i32 %and.i.i
  %arrayidx11.i = getelementptr %struct.selinux_avc, ptr %11, i32 0, i32 1, i32 1, i32 %and.i.i
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx11.i) #18
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool18.not.i = icmp eq ptr %21, null
  %add.ptr.i = getelementptr i8, ptr %21, i32 -36
  %tobool20.not711.i = icmp eq ptr %add.ptr.i, null
  %tobool20.not7.i = or i1 %tobool18.not.i, %tobool20.not711.i
  br i1 %tobool20.not7.i, label %if.end8.i.for.end.i_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %pos.08.i = phi ptr [ %add.ptr43.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end8.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %pos.08.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos.08.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %ssid)
  %cmp22.i = icmp eq i32 %23, %ssid
  br i1 %cmp22.i, label %land.lhs.true.i11, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i11:                                ; preds = %for.body.i
  %tsid25.i = getelementptr inbounds %struct.avc_entry, ptr %pos.08.i, i32 0, i32 1
  %24 = ptrtoint ptr %tsid25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tsid25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %tsid)
  %cmp26.i = icmp eq i32 %25, %tsid
  br i1 %cmp26.i, label %land.lhs.true28.i, label %land.lhs.true.i11.for.inc.i_crit_edge

land.lhs.true.i11.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true28.i:                                ; preds = %land.lhs.true.i11
  %tclass30.i = getelementptr inbounds %struct.avc_entry, ptr %pos.08.i, i32 0, i32 2
  %26 = ptrtoint ptr %tclass30.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tclass30.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %tclass)
  %cmp33.i = icmp eq i16 %27, %tclass
  br i1 %cmp33.i, label %if.then35.i, label %land.lhs.true28.i.for.inc.i_crit_edge

land.lhs.true28.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then35.i:                                      ; preds = %land.lhs.true28.i
  %list.i12 = getelementptr inbounds %struct.avc_node, ptr %pos.08.i, i32 0, i32 1
  %list1.i = getelementptr inbounds %struct.avc_node, ptr %call1.i10, i32 0, i32 1
  %28 = ptrtoint ptr %list.i12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list.i12, align 4
  %30 = ptrtoint ptr %list1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %list1.i, align 4
  %pprev.i.i13 = getelementptr inbounds %struct.avc_node, ptr %pos.08.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %pprev.i.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pprev.i.i13, align 4
  %pprev5.i.i = getelementptr inbounds %struct.avc_node, ptr %call1.i10, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %pprev5.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %pprev5.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !620
  %34 = ptrtoint ptr %pprev5.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pprev5.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list1.i, ptr %35, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.then35.i.avc_node_replace.exit_crit_edge, label %do.body50.i.i

if.then35.i.avc_node_replace.exit_crit_edge:      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_node_replace.exit

do.body50.i.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %list1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list1.i, align 4
  %pprev53.i.i = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pprev53.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list1.i, ptr %pprev53.i.i, align 4
  br label %avc_node_replace.exit

avc_node_replace.exit:                            ; preds = %do.body50.i.i, %if.then35.i.avc_node_replace.exit_crit_edge
  %40 = ptrtoint ptr %pprev.i.i13 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i13, align 4
  %rhead.i = getelementptr inbounds %struct.avc_node, ptr %pos.08.i, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rhead.i, ptr noundef nonnull @avc_node_free) #18
  %active_nodes.i = getelementptr inbounds %struct.selinux_avc, ptr %11, i32 0, i32 1, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_nodes.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %active_nodes.i, i32 1, i32 3, i32 1) #18
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_nodes.i, ptr %active_nodes.i, i32 1, ptr elementtype(i32) %active_nodes.i) #18, !srcloc !616
  br label %found.i

for.inc.i:                                        ; preds = %land.lhs.true28.i.for.inc.i_crit_edge, %land.lhs.true.i11.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %list.i = getelementptr inbounds %struct.avc_node, ptr %pos.08.i, i32 0, i32 1
  %42 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %list.i, align 4
  %tobool39.not.i = icmp eq ptr %43, null
  %add.ptr43.i = getelementptr i8, ptr %43, i32 -36
  %tobool20.not13.i = icmp eq ptr %add.ptr43.i, null
  %tobool20.not.i = or i1 %tobool39.not.i, %tobool20.not13.i
  br i1 %tobool20.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge
  %list47.i = getelementptr inbounds %struct.avc_node, ptr %call1.i10, i32 0, i32 1
  %44 = ptrtoint ptr %list47.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %21, ptr %list47.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.avc_node, ptr %call1.i10, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !621
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %list47.i, ptr %arrayidx.i, align 4
  br i1 %tobool18.not.i, label %for.end.i.found.i_crit_edge, label %do.body49.i.i

for.end.i.found.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %found.i

do.body49.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %47 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list47.i, ptr %pprev51.i.i, align 4
  br label %found.i

found.i:                                          ; preds = %do.body49.i.i, %for.end.i.found.i_crit_edge, %avc_node_replace.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx11.i, i32 noundef %call14.i) #18
  br label %avc_insert.exit

avc_insert.exit:                                  ; preds = %found.i, %if.then7.i, %if.end.i.avc_insert.exit_crit_edge, %avc_latest_notif_update.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_compute_xperms_decision(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @avc_update_node(ptr noundef %avc, i32 noundef %event, i32 noundef %perms, i8 noundef zeroext %driver, i8 noundef zeroext %xperm, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %seqno, ptr nocapture noundef readonly %xpd, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @avc_alloc_node(ptr noundef %avc)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %shl.i = shl i32 %tsid, 2
  %xor.i = xor i32 %shl.i, %ssid
  %conv.i = zext i16 %tclass to i32
  %shl1.i = shl nuw nsw i32 %conv.i, 4
  %xor2.i = xor i32 %xor.i, %shl1.i
  %and.i = and i32 %xor2.i, 511
  %avc_cache = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1
  %arrayidx = getelementptr [512 x %struct.hlist_head], ptr %avc_cache, i32 0, i32 %and.i
  %arrayidx3 = getelementptr %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 1, i32 %and.i
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx3) #18
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -36
  %tobool12.not913 = icmp eq ptr %add.ptr, null
  %tobool12.not9 = or i1 %tobool10.not, %tobool12.not913
  br i1 %tobool12.not9, label %if.end.if.then45_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.then45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %pos.010 = phi ptr [ %add.ptr40, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %pos.010 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos.010, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ssid)
  %cmp14 = icmp eq i32 %3, %ssid
  br i1 %cmp14, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %tsid17 = getelementptr inbounds %struct.avc_entry, ptr %pos.010, i32 0, i32 1
  %4 = ptrtoint ptr %tsid17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tsid17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %tsid)
  %cmp18 = icmp eq i32 %5, %tsid
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true
  %tclass23 = getelementptr inbounds %struct.avc_entry, ptr %pos.010, i32 0, i32 2
  %6 = ptrtoint ptr %tclass23 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tclass23, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %tclass)
  %cmp25 = icmp eq i16 %7, %tclass
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true27:                                  ; preds = %land.lhs.true20
  %seqno29 = getelementptr inbounds %struct.avc_entry, ptr %pos.010, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %seqno29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seqno29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %seqno)
  %cmp30 = icmp eq i32 %9, %seqno
  br i1 %cmp30, label %if.end46, label %land.lhs.true27.for.inc_crit_edge

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true27.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %list = getelementptr inbounds %struct.avc_node, ptr %pos.010, i32 0, i32 1
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %tobool36.not = icmp eq ptr %11, null
  %add.ptr40 = getelementptr i8, ptr %11, i32 -36
  %tobool12.not15 = icmp eq ptr %add.ptr40, null
  %tobool12.not = or i1 %tobool36.not, %tobool12.not15
  br i1 %tobool12.not, label %for.inc.if.then45_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.if.then45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

if.then45:                                        ; preds = %for.inc.if.then45_crit_edge, %if.end.if.then45_crit_edge
  tail call fastcc void @avc_node_kill(ptr noundef %avc, ptr noundef nonnull %call)
  br label %out_unlock

if.end46:                                         ; preds = %land.lhs.true27
  %avd48 = getelementptr inbounds %struct.avc_entry, ptr %pos.010, i32 0, i32 3
  %12 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ssid, ptr %call, align 4
  %tsid3.i = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %tsid3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %tsid, ptr %tsid3.i, align 4
  %tclass5.i = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %tclass5.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %tclass, ptr %tclass5.i, align 4
  %avd7.i = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %avd7.i, ptr %avd48, i32 20)
  %xp_node = getelementptr inbounds %struct.avc_entry, ptr %pos.010, i32 0, i32 4
  %16 = ptrtoint ptr %xp_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xp_node, align 4
  %tobool50.not = icmp eq ptr %17, null
  br i1 %tobool50.not, label %if.end46.if.end58_crit_edge, label %if.then51

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then51:                                        ; preds = %if.end46
  %call54 = tail call fastcc i32 @avc_xperms_populate(ptr noundef nonnull %call, ptr noundef nonnull %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then51.if.end58_crit_edge, label %if.then56

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @avc_node_kill(ptr noundef %avc, ptr noundef nonnull %call)
  br label %out_unlock

if.end58:                                         ; preds = %if.then51.if.end58_crit_edge, %if.end46.if.end58_crit_edge
  %18 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end58.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end58.sw.bb70_crit_edge
    i32 4, label %if.end58.sw.bb70_crit_edge19
    i32 16, label %sw.bb75
    i32 32, label %sw.bb79
    i32 64, label %sw.bb85
    i32 128, label %sw.bb89
    i32 256, label %sw.bb95
  ]

if.end58.sw.bb70_crit_edge19:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb70

if.end58.sw.bb70_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb70

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end58
  %19 = ptrtoint ptr %avd7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %avd7.i, align 4
  %or = or i32 %20, %perms
  store i32 %or, ptr %avd7.i, align 4
  %xp_node62 = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 4
  %21 = ptrtoint ptr %xp_node62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xp_node62, align 4
  %tobool63.not = icmp eq ptr %22, null
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool65.not, %tobool63.not
  br i1 %or.cond, label %sw.bb.sw.epilog_crit_edge, label %if.then66

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then66:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @avc_xperms_allow_perm(ptr noundef nonnull %22, i8 noundef zeroext %driver, i8 noundef zeroext %xperm)
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end58.sw.bb70_crit_edge, %if.end58.sw.bb70_crit_edge19
  %neg = xor i32 %perms, -1
  %23 = ptrtoint ptr %avd7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %avd7.i, align 4
  %and74 = and i32 %24, %neg
  store i32 %and74, ptr %avd7.i, align 4
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  %auditallow = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %auditallow to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %auditallow, align 4
  %or78 = or i32 %26, %perms
  store i32 %or78, ptr %auditallow, align 4
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  %neg80 = xor i32 %perms, -1
  %auditallow83 = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %auditallow83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %auditallow83, align 4
  %and84 = and i32 %28, %neg80
  store i32 %and84, ptr %auditallow83, align 4
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  %auditdeny = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %auditdeny to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %auditdeny, align 4
  %or88 = or i32 %30, %perms
  store i32 %or88, ptr %auditdeny, align 4
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  %neg90 = xor i32 %perms, -1
  %auditdeny93 = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %auditdeny93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %auditdeny93, align 4
  %and94 = and i32 %32, %neg90
  store i32 %and94, ptr %auditdeny93, align 4
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end58
  %xp_node.i = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 4
  %33 = ptrtoint ptr %xp_node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xp_node.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 4
  %inc.i = add i16 %36, 1
  store i16 %inc.i, ptr %34, align 4
  %37 = ptrtoint ptr %xpd to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %xpd, align 4
  %call.i = tail call fastcc ptr @avc_xperms_decision_alloc(i8 noundef zeroext %38) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb95.sw.epilog_crit_edge, label %if.end.i

sw.bb95.sw.epilog_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb95
  %driver.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %xpd, i32 0, i32 1
  %39 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %driver.i.i, align 1
  %driver1.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %driver1.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %driver1.i.i, align 1
  %42 = ptrtoint ptr %xpd to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %xpd, align 4
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %call.i, align 4
  %45 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %allowed.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 2
  %46 = ptrtoint ptr %allowed.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %allowed.i.i, align 4
  %allowed4.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %xpd, i32 0, i32 2
  %48 = ptrtoint ptr %allowed4.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %allowed4.i.i, align 4
  %50 = call ptr @memcpy(ptr %47, ptr %49, i32 32)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %call.i, align 4
  %53 = and i8 %52, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool10.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i.if.end17.i.i_crit_edge, label %if.then11.i.i

if.end.i.i.if.end17.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %auditallow.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 3
  %54 = ptrtoint ptr %auditallow.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %auditallow.i.i, align 4
  %auditallow14.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %xpd, i32 0, i32 3
  %56 = ptrtoint ptr %auditallow14.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %auditallow14.i.i, align 4
  %58 = call ptr @memcpy(ptr %55, ptr %57, i32 32)
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then11.i.i, %if.end.i.i.if.end17.i.i_crit_edge
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %call.i, align 4
  %61 = and i8 %60, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool21.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool21.not.i.i, label %if.end17.i.i.avc_copy_xperms_decision.exit.i_crit_edge, label %if.then22.i.i

if.end17.i.i.avc_copy_xperms_decision.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_copy_xperms_decision.exit.i

if.then22.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %dontaudit.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 4
  %62 = ptrtoint ptr %dontaudit.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dontaudit.i.i, align 4
  %dontaudit25.i.i = getelementptr inbounds %struct.extended_perms_decision, ptr %xpd, i32 0, i32 4
  %64 = ptrtoint ptr %dontaudit25.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dontaudit25.i.i, align 4
  %66 = call ptr @memcpy(ptr %63, ptr %65, i32 32)
  br label %avc_copy_xperms_decision.exit.i

avc_copy_xperms_decision.exit.i:                  ; preds = %if.then22.i.i, %if.end17.i.i.avc_copy_xperms_decision.exit.i_crit_edge
  %xpd_list.i = getelementptr inbounds %struct.avc_xperms_decision_node, ptr %call.i, i32 0, i32 1
  %67 = ptrtoint ptr %xp_node.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xp_node.i, align 4
  %xpd_head.i = getelementptr inbounds %struct.avc_xperms_node, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %xpd_head.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xpd_head.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %xpd_list.i, ptr noundef %xpd_head.i, ptr noundef %70) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %avc_copy_xperms_decision.exit.i.sw.epilog_crit_edge

avc_copy_xperms_decision.exit.i.sw.epilog_crit_edge: ; preds = %avc_copy_xperms_decision.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %avc_copy_xperms_decision.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %xpd_list.i, ptr %prev1.i.i.i, align 4
  %72 = ptrtoint ptr %xpd_list.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %70, ptr %xpd_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.avc_xperms_decision_node, ptr %call.i, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %xpd_head.i, ptr %prev3.i.i.i, align 4
  %74 = ptrtoint ptr %xpd_head.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %xpd_list.i, ptr %xpd_head.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i.i.i, %avc_copy_xperms_decision.exit.i.sw.epilog_crit_edge, %sw.bb95.sw.epilog_crit_edge, %sw.bb89, %sw.bb85, %sw.bb79, %sw.bb75, %sw.bb70, %if.then66, %sw.bb.sw.epilog_crit_edge, %if.end58.sw.epilog_crit_edge
  %list.i = getelementptr inbounds %struct.avc_node, ptr %pos.010, i32 0, i32 1
  %list1.i = getelementptr inbounds %struct.avc_node, ptr %call, i32 0, i32 1
  %75 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %list.i, align 4
  %77 = ptrtoint ptr %list1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %list1.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.avc_node, ptr %pos.010, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pprev.i.i, align 4
  %pprev5.i.i = getelementptr inbounds %struct.avc_node, ptr %call, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %pprev5.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %79, ptr %pprev5.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !620
  %81 = ptrtoint ptr %pprev5.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pprev5.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %list1.i, ptr %82, align 4
  %tobool.not.i.i2 = icmp eq ptr %76, null
  br i1 %tobool.not.i.i2, label %sw.epilog.avc_node_replace.exit_crit_edge, label %do.body50.i.i

sw.epilog.avc_node_replace.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_node_replace.exit

do.body50.i.i:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  %84 = ptrtoint ptr %list1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %list1.i, align 4
  %pprev53.i.i = getelementptr inbounds %struct.hlist_node, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %pprev53.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %list1.i, ptr %pprev53.i.i, align 4
  br label %avc_node_replace.exit

avc_node_replace.exit:                            ; preds = %do.body50.i.i, %sw.epilog.avc_node_replace.exit_crit_edge
  %87 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i, align 4
  %rhead.i = getelementptr inbounds %struct.avc_node, ptr %pos.010, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rhead.i, ptr noundef nonnull @avc_node_free) #18
  %active_nodes.i = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 3
  %call.i.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_nodes.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %active_nodes.i, i32 1, i32 3, i32 1) #18
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_nodes.i, ptr %active_nodes.i, i32 1, ptr elementtype(i32) %active_nodes.i) #18, !srcloc !616
  br label %out_unlock

out_unlock:                                       ; preds = %avc_node_replace.exit, %if.then56, %if.then45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx3, i32 noundef %call6) #18
  br label %out

out:                                              ; preds = %out_unlock, %entry.out_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @avc_denied(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, i8 noundef zeroext %driver, i8 noundef zeroext %xperm, i32 noundef %flags, ptr nocapture noundef readonly %avd) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %enforcing.i = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %enforcing.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %enforcing.i, align 1, !range !622
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %flags1 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 4
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %and2 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %avc = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 7
  %4 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %avc, align 4
  %seqno = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 3
  %6 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seqno, align 4
  tail call fastcc void @avc_update_node(ptr noundef %5, i32 noundef 1, i32 noundef %requested, i8 noundef zeroext %driver, i8 noundef zeroext %xperm, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %7, ptr noundef null, i32 noundef %flags)
  br label %return

return:                                           ; preds = %if.end5, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -13, %entry.return_crit_edge ], [ -13, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_has_perm_noaudit(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, i32 noundef %flags, ptr noundef %avd) local_unnamed_addr #6 align 64 {
entry:
  %xp_node = alloca %struct.avc_xperms_node, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %xp_node) #18
  %0 = call ptr @memset(ptr %xp_node, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested)
  %tobool.not = icmp eq i32 %requested, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !612

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.283, i32 noundef 1147, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

if.end23:                                         ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !614
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end23.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end23.rcu_read_lock.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 696, ptr noundef nonnull @.str.299) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end23.rcu_read_lock.exit_crit_edge
  %avc = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 7
  %5 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %avc, align 4
  %call = tail call fastcc ptr @avc_lookup(ptr noundef %6, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass)
  %tobool24.not = icmp eq ptr %call, null
  br i1 %tobool24.not, label %if.then33, label %if.else, !prof !612

if.then33:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @avc_compute_av(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, ptr noundef %avd, ptr noundef nonnull %xp_node)
  br label %if.end36

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  %avd35 = getelementptr inbounds %struct.avc_entry, ptr %call, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %avd, ptr %avd35, i32 20)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  %8 = ptrtoint ptr %avd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avd, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %neg, %requested
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end36.if.end46_crit_edge, label %if.then44, !prof !611

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  %call45 = call fastcc i32 @avc_denied(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %flags, ptr noundef %avd)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end36.if.end46_crit_edge
  %rc.0 = phi i32 [ %call45, %if.then44 ], [ 0, %if.end36.if.end46_crit_edge ]
  %call.i65 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i65, label %if.end46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

if.end46.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %if.end46
  %call1.i66 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 724, ptr noundef nonnull @.str.300) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %if.end46.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !615
  %10 = call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i72 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %do.end
  %retval.0 = phi i32 [ -13, %do.end ], [ %rc.0, %rcu_read_unlock.exit ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %xp_node) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_has_perm(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, ptr noundef %auditdata) local_unnamed_addr #0 align 64 {
entry:
  %avd = alloca %struct.av_decision, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %avd) #18
  %0 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 2
  %1 = call ptr @memset(ptr %avd, i32 255, i32 20)
  %call = call i32 @avc_has_perm_noaudit(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, i32 noundef 0, ptr noundef nonnull %avd), !range !623
  %2 = ptrtoint ptr %avd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avd, align 4
  %neg.i.i = xor i32 %3, -1
  %and.i.i = and i32 %neg.i.i, %requested
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, !prof !611

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %4 = getelementptr inbounds %struct.av_decision, ptr %avd, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not.i.i = icmp eq i32 %call, 0
  br i1 %tobool10.not.i.i, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i.avc_audit_required.exit.i_crit_edge

if.else.i.i.avc_audit_required.exit.i_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_audit_required.exit.i

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %auditdeny3.sink.i.i = phi ptr [ %0, %entry.if.end15.sink.split.i.i_crit_edge ], [ %4, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  %and.sink.i.i = phi i32 [ %and.i.i, %entry.if.end15.sink.split.i.i_crit_edge ], [ %requested, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  %5 = ptrtoint ptr %auditdeny3.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auditdeny3.sink.i.i, align 4
  %and4.i.i = and i32 %6, %and.sink.i.i
  br label %avc_audit_required.exit.i

avc_audit_required.exit.i:                        ; preds = %if.end15.sink.split.i.i, %if.else.i.i.avc_audit_required.exit.i_crit_edge
  %denied.0.i.i = phi i32 [ %requested, %if.else.i.i.avc_audit_required.exit.i_crit_edge ], [ %and.i.i, %if.end15.sink.split.i.i ]
  %audited.0.i.i = phi i32 [ %requested, %if.else.i.i.avc_audit_required.exit.i_crit_edge ], [ %and4.i.i, %if.end15.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %audited.0.i.i)
  %tobool.not.i = icmp eq i32 %audited.0.i.i, 0
  br i1 %tobool.not.i, label %avc_audit_required.exit.i.avc_audit.exit.thread_crit_edge, label %avc_audit.exit, !prof !611

avc_audit_required.exit.i.avc_audit.exit.thread_crit_edge: ; preds = %avc_audit_required.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_audit.exit.thread

avc_audit.exit:                                   ; preds = %avc_audit_required.exit.i
  %call4.i = call i32 @slow_avc_audit(ptr noundef %state, i32 noundef %ssid, i32 noundef %tsid, i16 noundef zeroext %tclass, i32 noundef %requested, i32 noundef %audited.0.i.i, i32 noundef %denied.0.i.i, i32 noundef %call, ptr noundef %auditdata) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %avc_audit.exit.avc_audit.exit.thread_crit_edge, label %avc_audit.exit._crit_edge

avc_audit.exit._crit_edge:                        ; preds = %avc_audit.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %7

avc_audit.exit.avc_audit.exit.thread_crit_edge:   ; preds = %avc_audit.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_audit.exit.thread

avc_audit.exit.thread:                            ; preds = %avc_audit.exit.avc_audit.exit.thread_crit_edge, %avc_audit_required.exit.i.avc_audit.exit.thread_crit_edge
  br label %7

7:                                                ; preds = %avc_audit.exit.thread, %avc_audit.exit._crit_edge
  %8 = phi i32 [ %call, %avc_audit.exit.thread ], [ %call4.i, %avc_audit.exit._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %avd) #18
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @avc_policy_seqno(ptr nocapture noundef readonly %state) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %avc = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 7
  %0 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %avc, align 4
  %latest_notif = getelementptr inbounds %struct.selinux_avc, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %latest_notif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %latest_notif, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @avc_disable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @avc_node_cachep, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.selinux_state, ptr @selinux_state, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.selinux_state, ptr @selinux_state, i32 0, i32 7), align 4
  tail call fastcc void @avc_flush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_selinux_audited(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %requested = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %requested to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested, align 4
  %denied = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %denied, align 4
  %audited = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %audited to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audited, align 4
  %result = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %result, align 4
  %__data_loc_scontext = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %__data_loc_scontext to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__data_loc_scontext, align 4
  %and = and i32 %11, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_tcontext = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %__data_loc_tcontext to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__data_loc_tcontext, align 4
  %and1 = and i32 %13, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %__data_loc_tclass = getelementptr inbounds %struct.trace_event_raw_selinux_audited, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %__data_loc_tclass to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__data_loc_tclass, align 4
  %and3 = and i32 %15, 65535
  %add.ptr4 = getelementptr i8, ptr %1, i32 %and3
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.297, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %add.ptr, ptr noundef %add.ptr2, ptr noundef %add.ptr4) #18
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sid_to_context(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_selinux_audited(ptr noundef %sad, ptr noundef %scontext, ptr noundef %tcontext, ptr noundef %tclass) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_selinux_audited, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_selinux_audited, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !624

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !611

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.318, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !625
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_selinux_audited, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %sad, ptr noundef %scontext, ptr noundef %tcontext, ptr noundef %tclass) #18
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !626
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !626
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !611

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.318, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !627
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_selinux_audited, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_selinux_audited.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_selinux_audited.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.316, i32 noundef 48, ptr noundef nonnull @.str.317) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !628
  %38 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sid_to_context_inval(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_n_untrustedstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avc_node_free(ptr noundef %rhead) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rhead, i32 -44
  %xp_node = getelementptr i8, ptr %rhead, i32 -12
  %0 = ptrtoint ptr %xp_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xp_node, align 4
  tail call fastcc void @avc_xperms_free(ptr noundef %1)
  %2 = load ptr, ptr @avc_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %add.ptr) #18
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !617
  %4 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.avc_cache_stats, ptr @avc_cache_stats, i32 0, i32 4) to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add15 = add i32 %12, 1
  store i32 %add15, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !618
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end30_crit_edge, !prof !612

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end30

do.end30:                                         ; preds = %if.then, %entry.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #18, !srcloc !619
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @avc_xperms_free(ptr noundef %xp_node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %xp_node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %xpd_head = getelementptr inbounds %struct.avc_xperms_node, ptr %xp_node, i32 0, i32 1
  %0 = ptrtoint ptr %xpd_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xpd_head, align 4
  %cmp.not23 = icmp eq ptr %1, %xpd_head
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %avc_xperms_decision_free.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn, %avc_xperms_decision_free.exit.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %xpd_node.0 = getelementptr i8, ptr %.pn.in24, i32 -16
  %2 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in24, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24) #18
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %allowed.i = getelementptr i8, ptr %.pn.in24, i32 -12
  %11 = ptrtoint ptr %allowed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %allowed.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %list_del.exit.if.end.i_crit_edge, label %if.then.i

list_del.exit.if.end.i_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  %13 = load ptr, ptr @avc_xperms_data_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %12) #18
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.if.end.i_crit_edge
  %auditallow.i = getelementptr i8, ptr %.pn.in24, i32 -8
  %14 = ptrtoint ptr %auditallow.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %auditallow.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %16 = load ptr, ptr @avc_xperms_data_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %15) #18
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %dontaudit.i = getelementptr i8, ptr %.pn.in24, i32 -4
  %17 = ptrtoint ptr %dontaudit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dontaudit.i, align 4
  %tobool7.not.i = icmp eq ptr %18, null
  br i1 %tobool7.not.i, label %if.end6.i.avc_xperms_decision_free.exit_crit_edge, label %if.then8.i

if.end6.i.avc_xperms_decision_free.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_decision_free.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  %19 = load ptr, ptr @avc_xperms_data_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef nonnull %18) #18
  br label %avc_xperms_decision_free.exit

avc_xperms_decision_free.exit:                    ; preds = %if.then8.i, %if.end6.i.avc_xperms_decision_free.exit_crit_edge
  %20 = load ptr, ptr @avc_xperms_decision_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %xpd_node.0) #18
  %cmp.not = icmp eq ptr %.pn, %xpd_head
  br i1 %cmp.not, label %avc_xperms_decision_free.exit.for.end_crit_edge, label %avc_xperms_decision_free.exit.for.body_crit_edge

avc_xperms_decision_free.exit.for.body_crit_edge: ; preds = %avc_xperms_decision_free.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

avc_xperms_decision_free.exit.for.end_crit_edge:  ; preds = %avc_xperms_decision_free.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %avc_xperms_decision_free.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %21 = load ptr, ptr @avc_xperms_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %xp_node) #18
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_compute_av(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @avc_alloc_node(ptr noundef %avc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @avc_node_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 10496) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.avc_node, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %list, align 4
  %pprev.i = getelementptr inbounds %struct.avc_node, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pprev.i, align 8
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !617
  %4 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.avc_cache_stats, ptr @avc_cache_stats, i32 0, i32 2) to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add15 = add i32 %12, 1
  store i32 %add15, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !618
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool26.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool26.not, label %if.then30, label %if.end.do.end33_crit_edge, !prof !612

if.end.do.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end33

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %if.end.do.end33_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #18, !srcloc !619
  %active_nodes = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_nodes, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !629
  tail call void @llvm.prefetch.p0(ptr %active_nodes, i32 1, i32 3, i32 1) #18
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_nodes, ptr %active_nodes, i32 1, ptr elementtype(i32) %active_nodes) #18, !srcloc !630
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !631
  %15 = ptrtoint ptr %avc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %avc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %16)
  %cmp41 = icmp ugt i32 %asmresult.i.i.i.i, %16
  br i1 %cmp41, label %if.then43, label %do.end33.out_crit_edge

do.end33.out_crit_edge:                           ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then43:                                        ; preds = %do.end33
  %avc_cache.i = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1
  %lru_hint.i = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc133.i.for.body.i_crit_edge, %if.then43
  %try.034.i = phi i32 [ 0, %if.then43 ], [ %inc134.i, %for.inc133.i.for.body.i_crit_edge ]
  %ecx.032.i = phi i32 [ 0, %if.then43 ], [ %ecx.2.i, %for.inc133.i.for.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lru_hint.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !629
  tail call void @llvm.prefetch.p0(ptr %lru_hint.i, i32 1, i32 3, i32 1) #18
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lru_hint.i, ptr %lru_hint.i, i32 1, ptr elementtype(i32) %lru_hint.i) #18, !srcloc !630
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !631
  %and.i50 = and i32 %asmresult.i.i.i.i.i, 511
  %arrayidx.i = getelementptr [512 x %struct.hlist_head], ptr %avc_cache.i, i32 0, i32 %and.i50
  %arrayidx3.i = getelementptr %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 1, i32 %and.i50
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !617
  %and.i.i51 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool.not.i = icmp eq i32 %and.i.i51, 0
  br i1 %tobool.not.i, label %do.end16.i, label %do.end16.thread.i

do.end16.i:                                       ; preds = %for.body.i
  tail call void @trace_hardirqs_off() #18
  %call19.i = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx3.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then30.i, label %do.end16.i.if.end55.critedge.i_crit_edge

do.end16.i.if.end55.critedge.i_crit_edge:         ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55.critedge.i

do.end16.thread.i:                                ; preds = %for.body.i
  %call1924.i = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx3.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1924.i)
  %tobool20.not25.i = icmp eq i32 %call1924.i, 0
  br i1 %tobool20.not25.i, label %do.end16.thread.i.do.body32.i_crit_edge, label %do.end16.thread.i.if.end55.critedge.i_crit_edge

do.end16.thread.i.if.end55.critedge.i_crit_edge:  ; preds = %do.end16.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55.critedge.i

do.end16.thread.i.do.body32.i_crit_edge:          ; preds = %do.end16.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body32.i

if.then30.i:                                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_on() #18
  br label %do.body32.i

do.body32.i:                                      ; preds = %if.then30.i, %do.end16.thread.i.do.body32.i_crit_edge
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !618
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool40.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool40.not.i, label %if.then44.i, label %do.body32.i.do.end47.i_crit_edge, !prof !612

do.body32.i.do.end47.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end47.i

if.then44.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end47.i

do.end47.i:                                       ; preds = %if.then44.i, %do.body32.i.do.end47.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #18, !srcloc !619
  br label %for.inc133.i

if.end55.critedge.i:                              ; preds = %do.end16.thread.i.if.end55.critedge.i_crit_edge, %do.end16.i.if.end55.critedge.i_crit_edge
  %20 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !614
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i52 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i52, label %if.end55.critedge.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end55.critedge.i.rcu_read_lock.exit.i_crit_edge: ; preds = %if.end55.critedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end55.critedge.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 696, ptr noundef nonnull @.str.299) #18
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end55.critedge.i.rcu_read_lock.exit.i_crit_edge
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool57.not.i = icmp eq ptr %25, null
  %add.ptr.i = getelementptr i8, ptr %25, i32 -36
  %tobool64.not2938.i = icmp eq ptr %add.ptr.i, null
  %tobool64.not29.i = or i1 %tobool57.not.i, %tobool64.not2938.i
  br i1 %tobool64.not29.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body65.i_crit_edge

rcu_read_lock.exit.i.for.body65.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  br label %for.body65.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body65.i:                                     ; preds = %for.inc.i.for.body65.i_crit_edge, %rcu_read_lock.exit.i.for.body65.i_crit_edge
  %node.031.i = phi ptr [ %add.ptr129.i, %for.inc.i.for.body65.i_crit_edge ], [ %add.ptr.i, %rcu_read_lock.exit.i.for.body65.i_crit_edge ]
  %ecx.130.i = phi i32 [ %inc.i, %for.inc.i.for.body65.i_crit_edge ], [ %ecx.032.i, %rcu_read_lock.exit.i.for.body65.i_crit_edge ]
  %list.i.i = getelementptr inbounds %struct.avc_node, ptr %node.031.i, i32 0, i32 1
  %26 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.avc_node, ptr %node.031.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %27, ptr %29, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i.i, label %for.body65.i.avc_node_delete.exit.i_crit_edge, label %do.body13.i.i.i.i

for.body65.i.avc_node_delete.exit.i_crit_edge:    ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_node_delete.exit.i

do.body13.i.i.i.i:                                ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #20
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %pprev14.i.i.i.i, align 4
  br label %avc_node_delete.exit.i

avc_node_delete.exit.i:                           ; preds = %do.body13.i.i.i.i, %for.body65.i.avc_node_delete.exit.i_crit_edge
  %32 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %rhead.i.i = getelementptr inbounds %struct.avc_node, ptr %node.031.i, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rhead.i.i, ptr noundef nonnull @avc_node_free) #18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_nodes, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %active_nodes, i32 1, i32 3, i32 1) #18
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_nodes, ptr %active_nodes, i32 1, ptr elementtype(i32) %active_nodes) #18, !srcloc !616
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !617
  %35 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i2.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i, align 4
  %arrayidx88.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx88.i, align 4
  %add.i = add i32 %40, ptrtoint (ptr getelementptr inbounds (%struct.avc_cache_stats, ptr @avc_cache_stats, i32 0, i32 3) to i32)
  %41 = inttoptr i32 %add.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add89.i = add i32 %43, 1
  store i32 %add89.i, ptr %41, align 4
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !618
  %and.i.i3.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3.i)
  %tobool100.not.i = icmp eq i32 %and.i.i3.i, 0
  br i1 %tobool100.not.i, label %if.then109.i, label %avc_node_delete.exit.i.do.end112.i_crit_edge, !prof !612

avc_node_delete.exit.i.do.end112.i_crit_edge:     ; preds = %avc_node_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end112.i

if.then109.i:                                     ; preds = %avc_node_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end112.i

do.end112.i:                                      ; preds = %if.then109.i, %avc_node_delete.exit.i.do.end112.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #18, !srcloc !619
  %inc.i = add i32 %ecx.130.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i)
  %cmp119.i = icmp sgt i32 %inc.i, 15
  br i1 %cmp119.i, label %if.then121.i, label %for.inc.i

if.then121.i:                                     ; preds = %do.end112.i
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i4.i, label %if.then121.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i7.i

if.then121.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i

land.lhs.true.i7.i:                               ; preds = %if.then121.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 724, ptr noundef nonnull @.str.300) #18
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i7.i.rcu_read_unlock.exit.i_crit_edge, %if.then121.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !615
  %45 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i11.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx3.i, i32 noundef %18) #18
  br label %out

for.inc.i:                                        ; preds = %do.end112.i
  %49 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %list.i.i, align 4
  %tobool125.not.i = icmp eq ptr %50, null
  %add.ptr129.i = getelementptr i8, ptr %50, i32 -36
  %tobool64.not42.i = icmp eq ptr %add.ptr129.i, null
  %tobool64.not.i = or i1 %tobool125.not.i, %tobool64.not42.i
  br i1 %tobool64.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body65.i_crit_edge

for.inc.i.for.body65.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body65.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %ecx.1.lcssa.i = phi i32 [ %ecx.032.i, %rcu_read_lock.exit.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i13.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i13.i, label %for.end.i.rcu_read_unlock.exit23.i_crit_edge, label %land.lhs.true.i16.i

for.end.i.rcu_read_unlock.exit23.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit23.i

land.lhs.true.i16.i:                              ; preds = %for.end.i
  %call1.i14.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call1.i14.i, 0
  br i1 %tobool.not.i15.i, label %land.lhs.true.i16.i.rcu_read_unlock.exit23.i_crit_edge, label %land.lhs.true2.i18.i

land.lhs.true.i16.i.rcu_read_unlock.exit23.i_crit_edge: ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit23.i

land.lhs.true2.i18.i:                             ; preds = %land.lhs.true.i16.i
  %.b4.i17.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i, label %land.lhs.true2.i18.i.rcu_read_unlock.exit23.i_crit_edge, label %if.then.i19.i

land.lhs.true2.i18.i.rcu_read_unlock.exit23.i_crit_edge: ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit23.i

if.then.i19.i:                                    ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.298, i32 noundef 724, ptr noundef nonnull @.str.300) #18
  br label %rcu_read_unlock.exit23.i

rcu_read_unlock.exit23.i:                         ; preds = %if.then.i19.i, %land.lhs.true2.i18.i.rcu_read_unlock.exit23.i_crit_edge, %land.lhs.true.i16.i.rcu_read_unlock.exit23.i_crit_edge, %for.end.i.rcu_read_unlock.exit23.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !615
  %51 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i.i.i.i.i20.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i20.i to ptr
  %preempt_count.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i21.i, align 4
  %sub.i.i.i22.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i22.i, ptr %preempt_count.i.i.i.i21.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx3.i, i32 noundef %18) #18
  br label %for.inc133.i

for.inc133.i:                                     ; preds = %rcu_read_unlock.exit23.i, %do.end47.i
  %ecx.2.i = phi i32 [ %ecx.1.lcssa.i, %rcu_read_unlock.exit23.i ], [ %ecx.032.i, %do.end47.i ]
  %inc134.i = add nuw nsw i32 %try.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc134.i, 512
  br i1 %exitcond.not.i, label %for.inc133.i.out_crit_edge, label %for.inc133.i.for.body.i_crit_edge

for.inc133.i.for.body.i_crit_edge:                ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc133.i.out_crit_edge:                       ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

out:                                              ; preds = %for.inc133.i.out_crit_edge, %rcu_read_unlock.exit.i, %do.end33.out_crit_edge, %entry.out_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @avc_xperms_populate(ptr nocapture noundef writeonly %node, ptr noundef readonly %src) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @avc_xperms_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 10496) #18
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %xpd_head.i = getelementptr inbounds %struct.avc_xperms_node, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %xpd_head.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %xpd_head.i, ptr %xpd_head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.avc_xperms_node, ptr %call.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %xpd_head.i, ptr %prev.i.i, align 8
  %drivers = getelementptr inbounds %struct.extended_perms, ptr %call.i.i, i32 0, i32 1
  %drivers6 = getelementptr inbounds %struct.extended_perms, ptr %src, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %drivers, ptr %drivers6, i32 32)
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %src, align 4
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %call.i.i, align 8
  %xpd_head = getelementptr inbounds %struct.avc_xperms_node, ptr %src, i32 0, i32 1
  %9 = ptrtoint ptr %xpd_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn48 = load ptr, ptr %xpd_head, align 4
  %cmp14.not50 = icmp eq ptr %.pn48, %xpd_head
  br i1 %cmp14.not50, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %if.end3.for.body_crit_edge
  %.pn51 = phi ptr [ %.pn, %list_add.exit.for.body_crit_edge ], [ %.pn48, %if.end3.for.body_crit_edge ]
  %src_xpd.052 = getelementptr i8, ptr %.pn51, i32 -16
  %10 = ptrtoint ptr %src_xpd.052 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %src_xpd.052, align 4
  %call16 = tail call fastcc ptr @avc_xperms_decision_alloc(i8 noundef zeroext %11)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %error, label %if.end19

if.end19:                                         ; preds = %for.body
  %driver.i = getelementptr i8, ptr %.pn51, i32 -15
  %12 = ptrtoint ptr %driver.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %driver.i, align 1
  %driver1.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call16, i32 0, i32 1
  %14 = ptrtoint ptr %driver1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %driver1.i, align 1
  %15 = ptrtoint ptr %src_xpd.052 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %src_xpd.052, align 4
  %17 = ptrtoint ptr %call16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %call16, align 4
  %18 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i45 = icmp eq i8 %18, 0
  br i1 %tobool.not.i45, label %if.end19.if.end.i46_crit_edge, label %if.then.i

if.end19.if.end.i46_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i46

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %allowed.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call16, i32 0, i32 2
  %19 = ptrtoint ptr %allowed.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %allowed.i, align 4
  %allowed4.i = getelementptr i8, ptr %.pn51, i32 -12
  %21 = ptrtoint ptr %allowed4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %allowed4.i, align 4
  %23 = call ptr @memcpy(ptr %20, ptr %22, i32 32)
  br label %if.end.i46

if.end.i46:                                       ; preds = %if.then.i, %if.end19.if.end.i46_crit_edge
  %24 = ptrtoint ptr %call16 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call16, align 4
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool10.not.i = icmp eq i8 %26, 0
  br i1 %tobool10.not.i, label %if.end.i46.if.end17.i_crit_edge, label %if.then11.i

if.end.i46.if.end17.i_crit_edge:                  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #20
  %auditallow.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call16, i32 0, i32 3
  %27 = ptrtoint ptr %auditallow.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %auditallow.i, align 4
  %auditallow14.i = getelementptr i8, ptr %.pn51, i32 -8
  %29 = ptrtoint ptr %auditallow14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %auditallow14.i, align 4
  %31 = call ptr @memcpy(ptr %28, ptr %30, i32 32)
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %if.end.i46.if.end17.i_crit_edge
  %32 = ptrtoint ptr %call16 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %call16, align 4
  %34 = and i8 %33, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool21.not.i = icmp eq i8 %34, 0
  br i1 %tobool21.not.i, label %if.end17.i.avc_copy_xperms_decision.exit_crit_edge, label %if.then22.i

if.end17.i.avc_copy_xperms_decision.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_copy_xperms_decision.exit

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  %dontaudit.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call16, i32 0, i32 4
  %35 = ptrtoint ptr %dontaudit.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dontaudit.i, align 4
  %dontaudit25.i = getelementptr i8, ptr %.pn51, i32 -4
  %37 = ptrtoint ptr %dontaudit25.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dontaudit25.i, align 4
  %39 = call ptr @memcpy(ptr %36, ptr %38, i32 32)
  br label %avc_copy_xperms_decision.exit

avc_copy_xperms_decision.exit:                    ; preds = %if.then22.i, %if.end17.i.avc_copy_xperms_decision.exit_crit_edge
  %xpd_list22 = getelementptr inbounds %struct.avc_xperms_decision_node, ptr %call16, i32 0, i32 1
  %40 = ptrtoint ptr %xpd_head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xpd_head.i, align 4
  %call.i.i47 = tail call zeroext i1 @__list_add_valid(ptr noundef %xpd_list22, ptr noundef %xpd_head.i, ptr noundef %41) #18
  br i1 %call.i.i47, label %if.end.i.i, label %avc_copy_xperms_decision.exit.list_add.exit_crit_edge

avc_copy_xperms_decision.exit.list_add.exit_crit_edge: ; preds = %avc_copy_xperms_decision.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit

if.end.i.i:                                       ; preds = %avc_copy_xperms_decision.exit
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %xpd_list22, ptr %prev1.i.i, align 4
  %43 = ptrtoint ptr %xpd_list22 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %xpd_list22, align 4
  %prev3.i.i = getelementptr inbounds %struct.avc_xperms_decision_node, ptr %call16, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %xpd_head.i, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %xpd_head.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %xpd_list22, ptr %xpd_head.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %avc_copy_xperms_decision.exit.list_add.exit_crit_edge
  %46 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn51, align 4
  %cmp14.not = icmp eq ptr %.pn, %xpd_head
  br i1 %cmp14.not, label %list_add.exit.for.end_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %if.end3.for.end_crit_edge
  %xp_node = getelementptr inbounds %struct.avc_entry, ptr %node, i32 0, i32 4
  %47 = ptrtoint ptr %xp_node to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i, ptr %xp_node, align 4
  br label %cleanup

error:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @avc_xperms_free(ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %error, %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %error ], [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @avc_node_kill(ptr noundef %avc, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %xp_node = getelementptr inbounds %struct.avc_entry, ptr %node, i32 0, i32 4
  %0 = ptrtoint ptr %xp_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xp_node, align 4
  tail call fastcc void @avc_xperms_free(ptr noundef %1)
  %2 = load ptr, ptr @avc_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %node) #18
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !617
  %4 = tail call i32 @llvm.read_register.i32(metadata !601) #18
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.avc_cache_stats, ptr @avc_cache_stats, i32 0, i32 4) to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !618
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end28_crit_edge, !prof !612

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end28

do.end28:                                         ; preds = %if.then, %entry.do.end28_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #18, !srcloc !619
  %active_nodes = getelementptr inbounds %struct.selinux_avc, ptr %avc, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_nodes, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %active_nodes, i32 1, i32 3, i32 1) #18
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_nodes, ptr %active_nodes, i32 1, ptr elementtype(i32) %active_nodes) #18, !srcloc !616
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @avc_xperms_decision_alloc(i8 noundef zeroext %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @avc_xperms_decision_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 10496) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %which to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @avc_xperms_data_cachep, align 4
  %call.i41 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 10496) #18
  %allowed = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %allowed to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i41, ptr %allowed, align 4
  %tobool6.not = icmp eq ptr %call.i41, null
  br i1 %tobool6.not, label %if.then3.error_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then3.error_crit_edge:                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %error

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %and11 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end19_crit_edge, label %if.then13

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then13:                                        ; preds = %if.end9
  %3 = load ptr, ptr @avc_xperms_data_cachep, align 4
  %call.i42 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 10496) #18
  %auditallow = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %auditallow to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i42, ptr %auditallow, align 8
  %tobool16.not = icmp eq ptr %call.i42, null
  br i1 %tobool16.not, label %if.then13.error_crit_edge, label %if.then13.if.end19_crit_edge

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then13.error_crit_edge:                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %error

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %and21 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.then23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  %5 = load ptr, ptr @avc_xperms_data_cachep, align 4
  %call.i43 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 10496) #18
  %dontaudit = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %dontaudit to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i43, ptr %dontaudit, align 4
  %tobool26.not = icmp eq ptr %call.i43, null
  br i1 %tobool26.not, label %if.then23.error_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then23.error_crit_edge:                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  br label %error

error:                                            ; preds = %if.then23.error_crit_edge, %if.then13.error_crit_edge, %if.then3.error_crit_edge
  %allowed.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %allowed.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %allowed.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %error.if.end.i_crit_edge, label %if.then.i

error.if.end.i_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #20
  %9 = load ptr, ptr @avc_xperms_data_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef nonnull %8) #18
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %error.if.end.i_crit_edge
  %auditallow.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %auditallow.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %auditallow.i, align 8
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %12 = load ptr, ptr @avc_xperms_data_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef nonnull %11) #18
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %dontaudit.i = getelementptr inbounds %struct.extended_perms_decision, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %dontaudit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dontaudit.i, align 4
  %tobool7.not.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i, label %if.end6.i.avc_xperms_decision_free.exit_crit_edge, label %if.then8.i

if.end6.i.avc_xperms_decision_free.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %avc_xperms_decision_free.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  %15 = load ptr, ptr @avc_xperms_data_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef nonnull %14) #18
  br label %avc_xperms_decision_free.exit

avc_xperms_decision_free.exit:                    ; preds = %if.then8.i, %if.end6.i.avc_xperms_decision_free.exit_crit_edge
  %16 = load ptr, ptr @avc_xperms_decision_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %call.i) #18
  br label %cleanup

cleanup:                                          ; preds = %avc_xperms_decision_free.exit, %if.then23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %avc_xperms_decision_free.exit ], [ null, %entry.cleanup_crit_edge ], [ %call.i, %if.then23.cleanup_crit_edge ], [ %call.i, %if.end19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @avc_xperms_allow_perm(ptr noundef %xp_node, i8 noundef zeroext %driver, i8 noundef zeroext %perm) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %driver to i32
  %and = and i32 %conv, 31
  %shl = shl nuw i32 1, %and
  %drivers = getelementptr inbounds %struct.extended_perms, ptr %xp_node, i32 0, i32 1
  %0 = lshr i32 %conv, 5
  %arrayidx = getelementptr [8 x i32], ptr %drivers, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %or = or i32 %2, %shl
  store i32 %or, ptr %arrayidx, align 4
  %xpd_head.i = getelementptr inbounds %struct.avc_xperms_node, ptr %xp_node, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %xpd_head.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %xpd_head.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %driver2.i = getelementptr i8, ptr %.pn.i, i32 -15
  %4 = ptrtoint ptr %driver2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %driver2.i, align 1
  %cmp4.i = icmp eq i8 %5, %driver
  br i1 %cmp4.i, label %avc_xperms_decision_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

avc_xperms_decision_lookup.exit:                  ; preds = %for.body.i
  %xpd_node.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %tobool.not = icmp eq ptr %xpd_node.0.le.i, null
  br i1 %tobool.not, label %avc_xperms_decision_lookup.exit.if.end_crit_edge, label %land.lhs.true

avc_xperms_decision_lookup.exit.if.end_crit_edge: ; preds = %avc_xperms_decision_lookup.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %avc_xperms_decision_lookup.exit
  %allowed = getelementptr i8, ptr %.pn.i, i32 -12
  %6 = ptrtoint ptr %allowed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %allowed, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %conv3 = zext i8 %perm to i32
  %and4 = and i32 %conv3, 31
  %shl5 = shl nuw i32 1, %and4
  %8 = lshr i32 %conv3, 5
  %arrayidx10 = getelementptr [8 x i32], ptr %7, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx10, align 4
  %or11 = or i32 %10, %shl5
  store i32 %or11, ptr %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %avc_xperms_decision_lookup.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 332)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 332)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !269, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !359, !360, !361, !362, !363, !364, !365, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !491, !492, !493, !494, !495, !496, !498, !500, !501, !503, !505, !507, !509, !511, !512, !513, !515, !516, !517, !519, !521, !523, !525, !527, !529, !530, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !549, !550, !551, !553, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !585, !586, !587, !588, !590, !591, !593, !594, !596, !597, !598, !599}
!llvm.named.register.sp = !{!601}
!llvm.module.flags = !{!602, !603, !604, !605, !606, !607, !608, !609}
!llvm.ident = !{!610}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/selinux/include/classmap.h", i32 42, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/selinux/include/classmap.h", i32 43, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/selinux/include/classmap.h", i32 43, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/selinux/include/classmap.h", i32 43, i32 38}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/selinux/include/classmap.h", i32 44, i32 6}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/selinux/include/classmap.h", i32 44, i32 23}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/selinux/include/classmap.h", i32 44, i32 38}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/selinux/include/classmap.h", i32 45, i32 6}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/selinux/include/classmap.h", i32 45, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/selinux/include/classmap.h", i32 45, i32 36}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/selinux/include/classmap.h", i32 45, i32 47}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/selinux/include/classmap.h", i32 46, i32 6}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/selinux/include/classmap.h", i32 46, i32 25}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/selinux/include/classmap.h", i32 46, i32 40}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/selinux/include/classmap.h", i32 47, i32 4}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/selinux/include/classmap.h", i32 48, i32 6}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/selinux/include/classmap.h", i32 48, i32 14}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/selinux/include/classmap.h", i32 48, i32 28}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/selinux/include/classmap.h", i32 48, i32 39}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/selinux/include/classmap.h", i32 49, i32 6}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/selinux/include/classmap.h", i32 49, i32 17}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/selinux/include/classmap.h", i32 49, i32 28}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/selinux/include/classmap.h", i32 49, i32 38}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/selinux/include/classmap.h", i32 49, i32 48}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/selinux/include/classmap.h", i32 49, i32 60}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/selinux/include/classmap.h", i32 50, i32 6}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/selinux/include/classmap.h", i32 50, i32 20}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/selinux/include/classmap.h", i32 50, i32 31}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/selinux/include/classmap.h", i32 50, i32 42}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/selinux/include/classmap.h", i32 50, i32 52}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/selinux/include/classmap.h", i32 50, i32 62}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/selinux/include/classmap.h", i32 51, i32 6}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../security/selinux/include/classmap.h", i32 51, i32 17}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/selinux/include/classmap.h", i32 51, i32 28}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/selinux/include/classmap.h", i32 51, i32 43}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/selinux/include/classmap.h", i32 51, i32 57}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/selinux/include/classmap.h", i32 52, i32 6}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/selinux/include/classmap.h", i32 52, i32 19}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/selinux/include/classmap.h", i32 52, i32 32}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/selinux/include/classmap.h", i32 52, i32 49}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../security/selinux/include/classmap.h", i32 53, i32 6}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../security/selinux/include/classmap.h", i32 53, i32 17}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../security/selinux/include/classmap.h", i32 53, i32 30}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../security/selinux/include/classmap.h", i32 53, i32 42}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../security/selinux/include/classmap.h", i32 54, i32 6}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../security/selinux/include/classmap.h", i32 54, i32 23}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../security/selinux/include/classmap.h", i32 55, i32 4}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../security/selinux/include/classmap.h", i32 56, i32 6}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../security/selinux/include/classmap.h", i32 56, i32 24}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../security/selinux/include/classmap.h", i32 57, i32 4}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../security/selinux/include/classmap.h", i32 58, i32 6}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../security/selinux/include/classmap.h", i32 58, i32 18}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../security/selinux/include/classmap.h", i32 58, i32 33}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../security/selinux/include/classmap.h", i32 59, i32 6}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../security/selinux/include/classmap.h", i32 59, i32 24}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../security/selinux/include/classmap.h", i32 59, i32 42}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../security/selinux/include/classmap.h", i32 60, i32 4}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../security/selinux/include/classmap.h", i32 61, i32 6}
!116 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.68, !115, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.69, !115, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.70, !115, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.72, !115, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.73, !115, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.74, !115, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.75, !115, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.76, !115, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.77, !115, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.78, !115, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.79, !115, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.80, !115, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.81, !115, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.82, !115, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.83, !115, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.84, !115, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.85, !115, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.86, !115, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.87, !115, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.88, !115, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.89, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../security/selinux/include/classmap.h", i32 62, i32 4}
!149 = !{ptr @.str.90, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../security/selinux/include/classmap.h", i32 63, i32 6}
!151 = !{ptr @.str.91, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../security/selinux/include/classmap.h", i32 63, i32 15}
!153 = !{ptr @.str.92, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../security/selinux/include/classmap.h", i32 63, i32 26}
!155 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../security/selinux/include/classmap.h", i32 64, i32 6}
!157 = !{ptr @.str.94, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../security/selinux/include/classmap.h", i32 64, i32 21}
!159 = !{ptr @.str.95, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../security/selinux/include/classmap.h", i32 64, i32 34}
!161 = !{ptr @.str.96, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../security/selinux/include/classmap.h", i32 64, i32 47}
!163 = !{ptr @.str.97, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../security/selinux/include/classmap.h", i32 65, i32 6}
!165 = !{ptr @.str.98, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../security/selinux/include/classmap.h", i32 65, i32 18}
!167 = !{ptr @.str.99, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../security/selinux/include/classmap.h", i32 66, i32 4}
!169 = !{ptr @.str.100, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../security/selinux/include/classmap.h", i32 67, i32 6}
!171 = !{ptr @.str.101, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.102, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.103, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.104, !170, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.105, !170, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.106, !170, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.107, !170, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.108, !170, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.109, !170, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.110, !170, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.111, !170, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.112, !170, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.113, !170, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.114, !170, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.115, !170, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.116, !170, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.117, !170, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.118, !170, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.119, !170, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.120, !170, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.121, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../security/selinux/include/classmap.h", i32 68, i32 6}
!193 = !{ptr @.str.122, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../security/selinux/include/classmap.h", i32 68, i32 26}
!195 = !{ptr @.str.123, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../security/selinux/include/classmap.h", i32 69, i32 4}
!197 = !{ptr @.str.124, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../security/selinux/include/classmap.h", i32 70, i32 25}
!199 = !{ptr @.str.125, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../security/selinux/include/classmap.h", i32 70, i32 37}
!201 = !{ptr @.str.126, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../security/selinux/include/classmap.h", i32 71, i32 6}
!203 = !{ptr @.str.127, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../security/selinux/include/classmap.h", i32 71, i32 18}
!205 = !{ptr @.str.128, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../security/selinux/include/classmap.h", i32 71, i32 28}
!207 = !{ptr @.str.129, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../security/selinux/include/classmap.h", i32 72, i32 4}
!209 = !{ptr @.str.130, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../security/selinux/include/classmap.h", i32 72, i32 12}
!211 = !{ptr @.str.131, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../security/selinux/include/classmap.h", i32 73, i32 4}
!213 = !{ptr @.str.132, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../security/selinux/include/classmap.h", i32 75, i32 4}
!215 = !{ptr @.str.133, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../security/selinux/include/classmap.h", i32 77, i32 4}
!217 = !{ptr @.str.134, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../security/selinux/include/classmap.h", i32 79, i32 4}
!219 = !{ptr @.str.135, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../security/selinux/include/classmap.h", i32 81, i32 4}
!221 = !{ptr @.str.136, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../security/selinux/include/classmap.h", i32 83, i32 4}
!223 = !{ptr @.str.137, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../security/selinux/include/classmap.h", i32 84, i32 6}
!225 = !{ptr @.str.138, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.139, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.140, !224, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.141, !224, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.142, !224, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.143, !224, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.144, !224, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.145, !224, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.146, !224, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.147, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../security/selinux/include/classmap.h", i32 85, i32 4}
!236 = !{ptr @.str.148, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../security/selinux/include/classmap.h", i32 87, i32 6}
!238 = !{ptr @.str.149, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../security/selinux/include/classmap.h", i32 87, i32 19}
!240 = !{ptr @.str.150, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../security/selinux/include/classmap.h", i32 89, i32 4}
!242 = !{ptr @.str.151, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../security/selinux/include/classmap.h", i32 92, i32 4}
!244 = !{ptr @.str.152, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../security/selinux/include/classmap.h", i32 95, i32 4}
!246 = !{ptr @.str.153, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../security/selinux/include/classmap.h", i32 97, i32 4}
!248 = !{ptr @.str.154, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../security/selinux/include/classmap.h", i32 98, i32 6}
!250 = !{ptr @.str.155, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../security/selinux/include/classmap.h", i32 98, i32 17}
!252 = !{ptr @.str.156, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../security/selinux/include/classmap.h", i32 99, i32 4}
!254 = !{ptr @.str.157, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../security/selinux/include/classmap.h", i32 101, i32 4}
!256 = !{ptr @.str.158, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../security/selinux/include/classmap.h", i32 103, i32 4}
!258 = !{ptr @.str.159, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../security/selinux/include/classmap.h", i32 105, i32 4}
!260 = !{ptr @.str.160, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../security/selinux/include/classmap.h", i32 106, i32 25}
!262 = !{ptr @.str.161, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../security/selinux/include/classmap.h", i32 107, i32 4}
!264 = !{ptr @.str.162, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../security/selinux/include/classmap.h", i32 109, i32 4}
!266 = !{ptr @.str.163, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../security/selinux/include/classmap.h", i32 110, i32 6}
!268 = !{ptr @.str.164, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.165, !267, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.166, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../security/selinux/include/classmap.h", i32 111, i32 4}
!272 = !{ptr @.str.167, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../security/selinux/include/classmap.h", i32 111, i32 13}
!274 = !{ptr @.str.168, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../security/selinux/include/classmap.h", i32 111, i32 21}
!276 = !{ptr @.str.169, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../security/selinux/include/classmap.h", i32 112, i32 4}
!278 = !{ptr @.str.170, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../security/selinux/include/classmap.h", i32 113, i32 24}
!280 = !{ptr @.str.171, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../security/selinux/include/classmap.h", i32 114, i32 4}
!282 = !{ptr @.str.172, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../security/selinux/include/classmap.h", i32 116, i32 4}
!284 = !{ptr @.str.173, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../security/selinux/include/classmap.h", i32 118, i32 4}
!286 = !{ptr @.str.174, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../security/selinux/include/classmap.h", i32 120, i32 6}
!288 = !{ptr @.str.175, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../security/selinux/include/classmap.h", i32 120, i32 20}
!290 = !{ptr @.str.176, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../security/selinux/include/classmap.h", i32 121, i32 4}
!292 = !{ptr @.str.177, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../security/selinux/include/classmap.h", i32 124, i32 4}
!294 = !{ptr @.str.178, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../security/selinux/include/classmap.h", i32 126, i32 4}
!296 = !{ptr @.str.179, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../security/selinux/include/classmap.h", i32 129, i32 4}
!298 = !{ptr @.str.180, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../security/selinux/include/classmap.h", i32 131, i32 4}
!300 = !{ptr @.str.181, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../security/selinux/include/classmap.h", i32 133, i32 4}
!302 = !{ptr @.str.182, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../security/selinux/include/classmap.h", i32 135, i32 35}
!304 = !{ptr @.str.183, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../security/selinux/include/classmap.h", i32 135, i32 50}
!306 = !{ptr @.str.184, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../security/selinux/include/classmap.h", i32 136, i32 6}
!308 = !{ptr @.str.185, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../security/selinux/include/classmap.h", i32 137, i32 4}
!310 = !{ptr @.str.186, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../security/selinux/include/classmap.h", i32 139, i32 4}
!312 = !{ptr @.str.187, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../security/selinux/include/classmap.h", i32 141, i32 4}
!314 = !{ptr @.str.188, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../security/selinux/include/classmap.h", i32 143, i32 4}
!316 = !{ptr @.str.189, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../security/selinux/include/classmap.h", i32 145, i32 4}
!318 = !{ptr @.str.190, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../security/selinux/include/classmap.h", i32 146, i32 28}
!320 = !{ptr @.str.191, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../security/selinux/include/classmap.h", i32 146, i32 42}
!322 = !{ptr @.str.192, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../security/selinux/include/classmap.h", i32 147, i32 4}
!324 = !{ptr @.str.193, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../security/selinux/include/classmap.h", i32 149, i32 4}
!326 = !{ptr @.str.194, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../security/selinux/include/classmap.h", i32 151, i32 4}
!328 = !{ptr @.str.195, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../security/selinux/include/classmap.h", i32 153, i32 4}
!330 = !{ptr @.str.196, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../security/selinux/include/classmap.h", i32 155, i32 4}
!332 = !{ptr @.str.197, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../security/selinux/include/classmap.h", i32 157, i32 4}
!334 = !{ptr @.str.198, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../security/selinux/include/classmap.h", i32 159, i32 4}
!336 = !{ptr @.str.199, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../security/selinux/include/classmap.h", i32 160, i32 14}
!338 = !{ptr @.str.200, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../security/selinux/include/classmap.h", i32 160, i32 35}
!340 = !{ptr @.str.201, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../security/selinux/include/classmap.h", i32 160, i32 49}
!342 = !{ptr @.str.202, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../security/selinux/include/classmap.h", i32 161, i32 4}
!344 = !{ptr @.str.203, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../security/selinux/include/classmap.h", i32 162, i32 6}
!346 = !{ptr @.str.204, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../security/selinux/include/classmap.h", i32 164, i32 4}
!348 = !{ptr @.str.205, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../security/selinux/include/classmap.h", i32 167, i32 4}
!350 = !{ptr @.str.206, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../security/selinux/include/classmap.h", i32 167, i32 20}
!352 = !{ptr @.str.207, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../security/selinux/include/classmap.h", i32 168, i32 4}
!354 = !{ptr @.str.208, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../security/selinux/include/classmap.h", i32 169, i32 4}
!356 = !{ptr @.str.209, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../security/selinux/include/classmap.h", i32 170, i32 6}
!358 = !{ptr @.str.210, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.211, !357, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @.str.212, !357, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.213, !357, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.214, !357, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @.str.215, !357, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @.str.216, !357, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.217, !357, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.218, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../security/selinux/include/classmap.h", i32 171, i32 4}
!368 = !{ptr @.str.219, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../security/selinux/include/classmap.h", i32 171, i32 24}
!370 = !{ptr @.str.220, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../security/selinux/include/classmap.h", i32 171, i32 43}
!372 = !{ptr @.str.221, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../security/selinux/include/classmap.h", i32 172, i32 4}
!374 = !{ptr @.str.222, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../security/selinux/include/classmap.h", i32 173, i32 25}
!376 = !{ptr @.str.223, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../security/selinux/include/classmap.h", i32 174, i32 4}
!378 = !{ptr @.str.224, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../security/selinux/include/classmap.h", i32 174, i32 16}
!380 = !{ptr @.str.225, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../security/selinux/include/classmap.h", i32 174, i32 31}
!382 = !{ptr @.str.226, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../security/selinux/include/classmap.h", i32 174, i32 39}
!384 = !{ptr @.str.227, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../security/selinux/include/classmap.h", i32 174, i32 58}
!386 = !{ptr @.str.228, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../security/selinux/include/classmap.h", i32 176, i32 4}
!388 = !{ptr @.str.229, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../security/selinux/include/classmap.h", i32 178, i32 4}
!390 = !{ptr @.str.230, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../security/selinux/include/classmap.h", i32 180, i32 4}
!392 = !{ptr @.str.231, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../security/selinux/include/classmap.h", i32 183, i32 4}
!394 = !{ptr @.str.232, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../security/selinux/include/classmap.h", i32 186, i32 4}
!396 = !{ptr @.str.233, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../security/selinux/include/classmap.h", i32 188, i32 4}
!398 = !{ptr @.str.234, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../security/selinux/include/classmap.h", i32 190, i32 4}
!400 = !{ptr @.str.235, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../security/selinux/include/classmap.h", i32 192, i32 4}
!402 = !{ptr @.str.236, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../security/selinux/include/classmap.h", i32 194, i32 4}
!404 = !{ptr @.str.237, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../security/selinux/include/classmap.h", i32 196, i32 4}
!406 = !{ptr @.str.238, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../security/selinux/include/classmap.h", i32 198, i32 4}
!408 = !{ptr @.str.239, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../security/selinux/include/classmap.h", i32 200, i32 4}
!410 = !{ptr @.str.240, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../security/selinux/include/classmap.h", i32 202, i32 4}
!412 = !{ptr @.str.241, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../security/selinux/include/classmap.h", i32 204, i32 4}
!414 = !{ptr @.str.242, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../security/selinux/include/classmap.h", i32 206, i32 4}
!416 = !{ptr @.str.243, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../security/selinux/include/classmap.h", i32 208, i32 4}
!418 = !{ptr @.str.244, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../security/selinux/include/classmap.h", i32 210, i32 4}
!420 = !{ptr @.str.245, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../security/selinux/include/classmap.h", i32 212, i32 4}
!422 = !{ptr @.str.246, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../security/selinux/include/classmap.h", i32 214, i32 4}
!424 = !{ptr @.str.247, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../security/selinux/include/classmap.h", i32 216, i32 4}
!426 = !{ptr @.str.248, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../security/selinux/include/classmap.h", i32 218, i32 4}
!428 = !{ptr @.str.249, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../security/selinux/include/classmap.h", i32 220, i32 4}
!430 = !{ptr @.str.250, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../security/selinux/include/classmap.h", i32 222, i32 4}
!432 = !{ptr @.str.251, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../security/selinux/include/classmap.h", i32 224, i32 4}
!434 = !{ptr @.str.252, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../security/selinux/include/classmap.h", i32 226, i32 4}
!436 = !{ptr @.str.253, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../security/selinux/include/classmap.h", i32 228, i32 4}
!438 = !{ptr @.str.254, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../security/selinux/include/classmap.h", i32 230, i32 4}
!440 = !{ptr @.str.255, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../security/selinux/include/classmap.h", i32 232, i32 4}
!442 = !{ptr @.str.256, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../security/selinux/include/classmap.h", i32 234, i32 4}
!444 = !{ptr @.str.257, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../security/selinux/include/classmap.h", i32 236, i32 4}
!446 = !{ptr @.str.258, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../security/selinux/include/classmap.h", i32 238, i32 4}
!448 = !{ptr @.str.259, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../security/selinux/include/classmap.h", i32 240, i32 4}
!450 = !{ptr @.str.260, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../security/selinux/include/classmap.h", i32 241, i32 6}
!452 = !{ptr @.str.261, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../security/selinux/include/classmap.h", i32 242, i32 4}
!454 = !{ptr @.str.262, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../security/selinux/include/classmap.h", i32 243, i32 6}
!456 = !{ptr @.str.263, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../security/selinux/include/classmap.h", i32 245, i32 6}
!458 = !{ptr @.str.264, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../security/selinux/include/classmap.h", i32 245, i32 20}
!460 = !{ptr @.str.265, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../security/selinux/include/classmap.h", i32 245, i32 32}
!462 = !{ptr @.str.266, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../security/selinux/include/classmap.h", i32 245, i32 45}
!464 = !{ptr @.str.267, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../security/selinux/include/classmap.h", i32 245, i32 58}
!466 = !{ptr @.str.268, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../security/selinux/include/classmap.h", i32 247, i32 4}
!468 = !{ptr @.str.269, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../security/selinux/include/classmap.h", i32 249, i32 4}
!470 = !{ptr @.str.270, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../security/selinux/include/classmap.h", i32 251, i32 4}
!472 = !{ptr @.str.271, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../security/selinux/include/classmap.h", i32 252, i32 14}
!474 = !{ptr @.str.272, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../security/selinux/include/classmap.h", i32 252, i32 21}
!476 = !{ptr @.str.273, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../security/selinux/include/classmap.h", i32 252, i32 31}
!478 = !{ptr @.str.274, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../security/selinux/include/classmap.h", i32 253, i32 4}
!480 = !{ptr @.str.275, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../security/selinux/include/classmap.h", i32 255, i32 4}
!482 = !{ptr @.str.276, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../security/selinux/include/classmap.h", i32 256, i32 6}
!484 = !{ptr @.str.277, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../security/selinux/include/classmap.h", i32 256, i32 24}
!486 = !{ptr @secclass_map, !487, !"secclass_map", i1 false, i1 false}
!487 = !{!"../security/selinux/include/classmap.h", i32 41, i32 31}
!488 = !{ptr @__tracepoint_selinux_audited, !489, !"__tracepoint_selinux_audited", i1 false, i1 false}
!489 = !{!"../include/trace/events/avc.h", i32 14, i32 1}
!490 = !{ptr @__tracepoint_ptr_selinux_audited, !489, !"__tracepoint_ptr_selinux_audited", i1 false, i1 false}
!491 = !{ptr @__SCK__tp_func_selinux_audited, !489, !"__SCK__tp_func_selinux_audited", i1 false, i1 false}
!492 = !{ptr @event_class_selinux_audited, !489, !"event_class_selinux_audited", i1 false, i1 false}
!493 = !{ptr @event_selinux_audited, !489, !"event_selinux_audited", i1 false, i1 false}
!494 = !{ptr @__event_selinux_audited, !489, !"__event_selinux_audited", i1 false, i1 false}
!495 = !{ptr @__bpf_trace_tp_map_selinux_audited, !489, !"__bpf_trace_tp_map_selinux_audited", i1 false, i1 false}
!496 = !{ptr @avc_cache_stats, !497, !"avc_cache_stats", i1 false, i1 false}
!497 = !{!"../security/selinux/avc.c", i32 86, i32 1}
!498 = !{ptr @selinux_avc_init.__key, !499, !"__key", i1 false, i1 false}
!499 = !{!"../security/selinux/avc.c", i32 103, i32 3}
!500 = !{ptr @.str.278, !499, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @.str.279, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../security/selinux/avc.c", i32 139, i32 38}
!503 = !{ptr @.str.280, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../security/selinux/avc.c", i32 141, i32 40}
!505 = !{ptr @.str.281, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../security/selinux/avc.c", i32 145, i32 6}
!507 = !{ptr @.str.282, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../security/selinux/avc.c", i32 148, i32 45}
!509 = distinct !{null, !510, !"__warned", i1 false, i1 false}
!510 = !{!"../security/selinux/avc.c", i32 168, i32 4}
!511 = !{ptr @.str.283, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @.str.284, !510, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @.str.285, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../security/selinux/avc.c", i32 177, i32 36}
!515 = !{ptr @__pcpu_scope_avc_cache_stats, !497, !"__pcpu_scope_avc_cache_stats", i1 false, i1 false}
!516 = !{ptr @__pcpu_unique_avc_cache_stats, !497, !"__pcpu_unique_avc_cache_stats", i1 false, i1 false}
!517 = !{ptr @selinux_avc, !518, !"selinux_avc", i1 false, i1 false}
!518 = !{!"../security/selinux/avc.c", i32 94, i32 27}
!519 = !{ptr @avc_callbacks, !520, !"avc_callbacks", i1 false, i1 false}
!520 = !{!"../security/selinux/avc.c", i32 121, i32 34}
!521 = !{ptr @avc_node_cachep, !522, !"avc_node_cachep", i1 false, i1 false}
!522 = !{!"../security/selinux/avc.c", i32 122, i32 27}
!523 = !{ptr @avc_xperms_data_cachep, !524, !"avc_xperms_data_cachep", i1 false, i1 false}
!524 = !{!"../security/selinux/avc.c", i32 123, i32 27}
!525 = !{ptr @avc_xperms_decision_cachep, !526, !"avc_xperms_decision_cachep", i1 false, i1 false}
!526 = !{!"../security/selinux/avc.c", i32 124, i32 27}
!527 = !{ptr @avc_xperms_cachep, !528, !"avc_xperms_cachep", i1 false, i1 false}
!528 = !{!"../security/selinux/avc.c", i32 125, i32 27}
!529 = !{ptr @__tpstrtab_selinux_audited, !489, !"__tpstrtab_selinux_audited", i1 false, i1 false}
!530 = !{ptr @str__avc__trace_system_name, !531, !"str__avc__trace_system_name", i1 false, i1 false}
!531 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!532 = !{ptr @.str.286, !489, !"<string literal>", i1 false, i1 false}
!533 = !{ptr @.str.287, !489, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @.str.288, !489, !"<string literal>", i1 false, i1 false}
!535 = !{ptr @.str.289, !489, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @.str.290, !489, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @.str.291, !489, !"<string literal>", i1 false, i1 false}
!538 = !{ptr @.str.292, !489, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @.str.293, !489, !"<string literal>", i1 false, i1 false}
!540 = !{ptr @.str.294, !489, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @.str.295, !489, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @.str.296, !489, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @trace_event_fields_selinux_audited, !489, !"trace_event_fields_selinux_audited", i1 false, i1 false}
!544 = !{ptr @trace_event_type_funcs_selinux_audited, !489, !"trace_event_type_funcs_selinux_audited", i1 false, i1 false}
!545 = !{ptr @.str.297, !489, !"<string literal>", i1 false, i1 false}
!546 = !{ptr @print_fmt_selinux_audited, !489, !"print_fmt_selinux_audited", i1 false, i1 false}
!547 = distinct !{null, !548, !"__warned", i1 false, i1 false}
!548 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!549 = !{ptr @.str.298, !548, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @.str.299, !548, !"<string literal>", i1 false, i1 false}
!551 = distinct !{null, !552, !"__warned", i1 false, i1 false}
!552 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!553 = !{ptr @.str.300, !552, !"<string literal>", i1 false, i1 false}
!554 = !{ptr @.str.301, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../security/selinux/avc.c", i32 674, i32 23}
!556 = !{ptr @.str.302, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../security/selinux/avc.c", i32 674, i32 61}
!558 = !{ptr @.str.303, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../security/selinux/avc.c", i32 677, i32 24}
!560 = !{ptr @.str.304, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../security/selinux/avc.c", i32 683, i32 23}
!562 = !{ptr @.str.305, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../security/selinux/avc.c", i32 688, i32 25}
!564 = !{ptr @.str.306, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../security/selinux/avc.c", i32 696, i32 24}
!566 = !{ptr @.str.307, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../security/selinux/avc.c", i32 698, i32 23}
!568 = !{ptr @.str.308, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../security/selinux/avc.c", i32 721, i32 24}
!570 = !{ptr @.str.309, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../security/selinux/avc.c", i32 723, i32 24}
!572 = !{ptr @.str.310, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../security/selinux/avc.c", i32 728, i32 24}
!574 = !{ptr @.str.311, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../security/selinux/avc.c", i32 730, i32 24}
!576 = !{ptr @.str.312, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../security/selinux/avc.c", i32 733, i32 23}
!578 = !{ptr @.str.313, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../security/selinux/avc.c", i32 736, i32 24}
!580 = !{ptr @.str.314, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../security/selinux/avc.c", i32 748, i32 24}
!582 = !{ptr @.str.315, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../security/selinux/avc.c", i32 758, i32 24}
!584 = distinct !{null, !489, !"__already_done", i1 false, i1 false}
!585 = !{ptr @.str.316, !489, !"<string literal>", i1 false, i1 false}
!586 = distinct !{null, !489, !"__warned", i1 false, i1 false}
!587 = !{ptr @.str.317, !489, !"<string literal>", i1 false, i1 false}
!588 = distinct !{null, !589, !"__already_done", i1 false, i1 false}
!589 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!590 = !{ptr @.str.318, !589, !"<string literal>", i1 false, i1 false}
!591 = !{ptr @.str.319, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../security/selinux/avc.c", i32 580, i32 9}
!593 = !{ptr @avc_latest_notif_update.notif_lock, !592, !"notif_lock", i1 false, i1 false}
!594 = !{ptr @.str.320, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../security/selinux/avc.c", i32 586, i32 4}
!596 = !{ptr @.str.321, !595, !"<string literal>", i1 false, i1 false}
!597 = !{ptr @avc_latest_notif_update._entry, !595, !"_entry", i1 false, i1 false}
!598 = !{ptr @avc_latest_notif_update._entry_ptr, !595, !"_entry_ptr", i1 false, i1 false}
!599 = distinct !{null, !600, !"__warned", i1 false, i1 false}
!600 = !{!"../security/selinux/avc.c", i32 536, i32 2}
!601 = !{!"sp"}
!602 = !{i32 1, !"wchar_size", i32 2}
!603 = !{i32 1, !"min_enum_size", i32 4}
!604 = !{i32 8, !"branch-target-enforcement", i32 0}
!605 = !{i32 8, !"sign-return-address", i32 0}
!606 = !{i32 8, !"sign-return-address-all", i32 0}
!607 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!608 = !{i32 7, !"uwtable", i32 1}
!609 = !{i32 7, !"frame-pointer", i32 2}
!610 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!611 = !{!"branch_weights", i32 2000, i32 1}
!612 = !{!"branch_weights", i32 1, i32 2000}
!613 = !{!"auto-init"}
!614 = !{i64 2149948183}
!615 = !{i64 2149948449}
!616 = !{i64 2148242985, i64 2148243011, i64 2148243040, i64 2148243074, i64 2148243105, i64 2148243128}
!617 = !{i64 633001, i64 633062}
!618 = !{i64 635733}
!619 = !{i64 636018}
!620 = !{i64 2151494931}
!621 = !{i64 2151531095}
!622 = !{i8 0, i8 2}
!623 = !{i32 -13, i32 1}
!624 = !{i64 2148722335, i64 2148722340, i64 2148722353, i64 2148722397, i64 2148722431, i64 2148722452}
!625 = !{i64 2158189767}
!626 = !{i64 2158190022}
!627 = !{i64 2149956742}
!628 = !{i64 2149957778}
!629 = !{i64 2148325931}
!630 = !{i64 2148241240, i64 2148241272, i64 2148241301, i64 2148241335, i64 2148241366, i64 2148241389}
!631 = !{i64 2148326160}
