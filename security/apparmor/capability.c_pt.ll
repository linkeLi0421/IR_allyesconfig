; ModuleID = '/llk/IR_all_yes/security/apparmor/capability.c_pt.bc'
source_filename = "../security/apparmor/capability.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aa_sfs_entry = type { ptr, ptr, i16, i32, %union.anon.149, ptr }
%union.anon.149 = type { ptr }
%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, %union.anon.152 }
%union.anon.152 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, i32, ptr, ptr, i32 }
%union.anon.164 = type { ptr }
%struct.audit_cache = type { ptr, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.common_audit_data = type { i8, %union.anon.159, %union.anon.164 }
%union.anon.159 = type { %struct.path }
%struct.path = type { ptr, ptr }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [421 x i8], [123 x i8] } { [421 x i8] c"chown dac_override dac_read_search fowner fsetid kill setgid setuid setpcap linux_immutable net_bind_service net_broadcast net_admin net_raw ipc_lock ipc_owner sys_module sys_rawio sys_chroot sys_ptrace sys_pacct sys_admin sys_boot sys_nice sys_resource sys_time sys_tty_config mknod lease audit_write audit_control setfcap mac_override mac_admin syslog wake_alarm block_suspend audit_read perfmon bpf checkpoint_restore\00", [123 x i8] zeroinitializer }, align 32
@aa_sfs_seq_file_ops = external dso_local constant %struct.file_operations, align 4
@aa_sfs_entry_caps = dso_local global { [2 x %struct.aa_sfs_entry], [48 x i8] } { [2 x %struct.aa_sfs_entry] [%struct.aa_sfs_entry { ptr @.str, ptr null, i16 292, i32 1, %union.anon.149 { ptr @.str.1 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capable\00", [24 x i8] zeroinitializer }, align 32
@__const.aa_capable.sa_aad = private unnamed_addr constant %struct.apparmor_audit_data { i32 0, i32 0, ptr @.str.2, ptr null, ptr null, ptr null, i32 0, i32 0, %union.anon.150 zeroinitializer }, align 4
@__const.aa_capable.sa = private unnamed_addr constant { i8, [3 x i8], { ptr, [4 x i8] }, %union.anon.164 } { i8 3, [3 x i8] zeroinitializer, { ptr, [4 x i8] } { ptr null, [4 x i8] c"\FF\FF\FF\FF" }, %union.anon.164 zeroinitializer }, align 4
@__pcpu_unique_audit_cache = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@audit_cache = weak dso_local global %struct.audit_cache zeroinitializer, section ".data..percpu", align 4
@aa_g_profile_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"optional: no audit\00", [45 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@aa_g_audit = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" capname=\00", [22 x i8] zeroinitializer }, align 32
@capability_names = internal constant { [41 x ptr], [60 x i8] } { [41 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chown\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dac_override\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dac_read_search\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fowner\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fsetid\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kill\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setgid\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setuid\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setpcap\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"linux_immutable\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net_bind_service\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net_broadcast\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"net_admin\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net_raw\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipc_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipc_owner\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_module\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_rawio\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_chroot\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_ptrace\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_pacct\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_admin\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_boot\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_nice\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_resource\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_time\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_tty_config\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mknod\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lease\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audit_write\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audit_control\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setfcap\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_override\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac_admin\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syslog\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wake_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"block_suspend\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audit_read\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"perfmon\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bpf\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"checkpoint_restore\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 28, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"aa_sfs_entry_caps\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 27, i32 21 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 151, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 131, i32 19 }
@___asan_gen_.62 = private constant [34 x i8] c"../security/apparmor/capability.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 48, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"capability_names\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 3, i32 7 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 4, i32 7 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 5, i32 7 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 6, i32 7 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 7, i32 7 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8, i32 7 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 9, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 10, i32 7 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 11, i32 7 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 12, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 13, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 14, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 15, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 16, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 17, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 18, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 19, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 20, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 21, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 22, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 23, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 24, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 25, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 26, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 27, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 28, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 29, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 30, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 31, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 32, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 33, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 34, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 35, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 36, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 37, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 38, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 39, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 40, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 41, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [39 x i8] c"./security/apparmor/capability_names.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 42, i32 8 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @.str, ptr @.str.1, ptr @aa_sfs_entry_caps, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @capability_names, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 421, i32 544, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_caps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capability_names to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_capable(ptr noundef %label, i32 noundef %cap, i32 noundef %opts) local_unnamed_addr #0 align 64 {
entry:
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #5
  %0 = call ptr @memcpy(ptr %sa_aad, ptr @__const.aa_capable.sa_aad, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #5
  %1 = call ptr @memcpy(ptr %sa, ptr @__const.aa_capable.sa, i32 12)
  %2 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sa_aad, ptr %2, align 4
  %u = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cap, ptr %u, align 4
  %call = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #5
  %arrayidx18 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx18, align 4
  %tobool.not19 = icmp eq ptr %6, null
  br i1 %tobool.not19, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %shr.i = ashr i32 %cap, 5
  %and.i = and i32 %cap, 31
  %shl.i = shl nuw i32 1, %and.i
  %and11.i = and i32 %opts, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br label %do.body

do.body:                                          ; preds = %profile_capable.exit.thread15.do.body_crit_edge, %do.body.lr.ph
  %7 = phi ptr [ %6, %do.body.lr.ph ], [ %71, %profile_capable.exit.thread15.do.body_crit_edge ]
  %__E.021 = phi i32 [ 0, %do.body.lr.ph ], [ %69, %profile_capable.exit.thread15.do.body_crit_edge ]
  %i.sroa.0.020 = phi i32 [ %call, %do.body.lr.ph ], [ %call6, %profile_capable.exit.thread15.do.body_crit_edge ]
  %caps.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 14
  %arrayidx.i = getelementptr [2 x i32], ptr %caps.i, i32 0, i32 %shr.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and2.i = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %do.body.if.else.i_crit_edge, label %land.lhs.true.i

do.body.if.else.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.body
  %denied.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 14, i32 2
  %arrayidx6.i = getelementptr [2 x i32], ptr %denied.i, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i, align 4
  %and9.i = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.body.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %tobool.not.i.i = phi i1 [ true, %land.lhs.true.i.if.end.i_crit_edge ], [ false, %if.else.i ]
  %error.0.i = phi i32 [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ -1, %if.else.i ]
  br i1 %tobool12.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then13.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %12 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %if.then13.i.if.end16.i_crit_edge, label %lor.lhs.false.i

if.then13.i.if.end16.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

lor.lhs.false.i:                                  ; preds = %if.then13.i
  %mode.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp14.i = icmp eq i32 %14, 1
  br i1 %cmp14.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %lor.lhs.false.i.profile_capable.exit_crit_edge

lor.lhs.false.i.profile_capable.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %profile_capable.exit

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %lor.lhs.false.i.if.end16.i_crit_edge, %if.then13.i.if.end16.i_crit_edge
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %info.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.3, ptr %info.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end16.i, %if.end.i.if.end17.i_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %error.0.i, ptr %19, align 4
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i, !prof !108

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %21 = load i32, ptr @aa_g_audit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.AUDIT_MODE.exit.i.i_crit_edge

if.then.i.i.AUDIT_MODE.exit.i.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %AUDIT_MODE.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %audit.i.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 7
  %22 = ptrtoint ptr %audit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audit.i.i.i, align 4
  br label %AUDIT_MODE.exit.i.i

AUDIT_MODE.exit.i.i:                              ; preds = %if.end.i.i.i, %if.then.i.i.AUDIT_MODE.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %23, %if.end.i.i.i ], [ %21, %if.then.i.i.AUDIT_MODE.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i.i.i)
  %cmp.not.i.i = icmp eq i32 %retval.0.i.i.i, 4
  br i1 %cmp.not.i.i, label %AUDIT_MODE.exit.i.i.do.body.i.i_crit_edge, label %land.rhs.i.i, !prof !109

AUDIT_MODE.exit.i.i.do.body.i.i_crit_edge:        ; preds = %AUDIT_MODE.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

land.rhs.i.i:                                     ; preds = %AUDIT_MODE.exit.i.i
  %audit.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 14, i32 1
  %arrayidx.i.i = getelementptr [2 x i32], ptr %audit.i.i, i32 0, i32 %shr.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %and6.i.i = and i32 %25, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.rhs.i.i.profile_capable.exit.thread_crit_edge, label %land.rhs.i.i.do.body.i.i_crit_edge, !prof !108

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

land.rhs.i.i.profile_capable.exit.thread_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %profile_capable.exit.thread

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %26 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp17.i.i = icmp eq i32 %26, 2
  br i1 %cmp17.i.i, label %if.else.i.i.do.body.i.i_crit_edge, label %lor.lhs.false.i.i

if.else.i.i.do.body.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %if.else.i.i
  %mode.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 8
  %27 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp18.i.i = icmp eq i32 %28, 2
  br i1 %cmp18.i.i, label %lor.lhs.false.i.i.do.body.i.i_crit_edge, label %lor.lhs.false19.i.i

lor.lhs.false.i.i.do.body.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

lor.lhs.false19.i.i:                              ; preds = %lor.lhs.false.i.i
  %kill.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 14, i32 4
  %arrayidx23.i.i = getelementptr [2 x i32], ptr %kill.i.i, i32 0, i32 %shr.i
  %29 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx23.i.i, align 4
  %and26.i.i = and i32 %30, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.else29.i.i, label %lor.lhs.false19.i.i.do.body.i.i_crit_edge

lor.lhs.false19.i.i.do.body.i.i_crit_edge:        ; preds = %lor.lhs.false19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

if.else29.i.i:                                    ; preds = %lor.lhs.false19.i.i
  %quiet.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 14, i32 3
  %arrayidx33.i.i = getelementptr [2 x i32], ptr %quiet.i.i, i32 0, i32 %shr.i
  %31 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx33.i.i, align 4
  %and36.i.i = and i32 %32, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.else29.i.i.do.body.i.i_crit_edge, label %land.lhs.true.i.i

if.else29.i.i.do.body.i.i_crit_edge:              ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

land.lhs.true.i.i:                                ; preds = %if.else29.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %33 = load i32, ptr @aa_g_audit, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %land.lhs.true.i.i.AUDIT_MODE.exit140.i.i_crit_edge [
    i32 0, label %AUDIT_MODE.exit135.i.i
    i32 3, label %land.lhs.true.i.i.do.body.i.i_crit_edge
  ]

land.lhs.true.i.i.do.body.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

land.lhs.true.i.i.AUDIT_MODE.exit140.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %AUDIT_MODE.exit140.i.i

AUDIT_MODE.exit135.i.i:                           ; preds = %land.lhs.true.i.i
  %audit.i132.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 7
  %35 = ptrtoint ptr %audit.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %audit.i132.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp39.not.i.i = icmp eq i32 %36, 3
  br i1 %cmp39.not.i.i, label %AUDIT_MODE.exit135.i.i.do.body.i.i_crit_edge, label %AUDIT_MODE.exit135.i.i.AUDIT_MODE.exit140.i.i_crit_edge

AUDIT_MODE.exit135.i.i.AUDIT_MODE.exit140.i.i_crit_edge: ; preds = %AUDIT_MODE.exit135.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %AUDIT_MODE.exit140.i.i

AUDIT_MODE.exit135.i.i.do.body.i.i_crit_edge:     ; preds = %AUDIT_MODE.exit135.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

AUDIT_MODE.exit140.i.i:                           ; preds = %AUDIT_MODE.exit135.i.i.AUDIT_MODE.exit140.i.i_crit_edge, %land.lhs.true.i.i.AUDIT_MODE.exit140.i.i_crit_edge
  %retval.0.i139.i.i = phi i32 [ %33, %land.lhs.true.i.i.AUDIT_MODE.exit140.i.i_crit_edge ], [ %36, %AUDIT_MODE.exit135.i.i.AUDIT_MODE.exit140.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i139.i.i)
  %cmp42.not.i.i = icmp eq i32 %retval.0.i139.i.i, 4
  br i1 %cmp42.not.i.i, label %AUDIT_MODE.exit140.i.i.do.body.i.i_crit_edge, label %AUDIT_MODE.exit140.i.i.profile_capable.exit.thread15_crit_edge

AUDIT_MODE.exit140.i.i.profile_capable.exit.thread15_crit_edge: ; preds = %AUDIT_MODE.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %profile_capable.exit.thread15

AUDIT_MODE.exit140.i.i.do.body.i.i_crit_edge:     ; preds = %AUDIT_MODE.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %AUDIT_MODE.exit140.i.i.do.body.i.i_crit_edge, %AUDIT_MODE.exit135.i.i.do.body.i.i_crit_edge, %land.lhs.true.i.i.do.body.i.i_crit_edge, %if.else29.i.i.do.body.i.i_crit_edge, %lor.lhs.false19.i.i.do.body.i.i_crit_edge, %lor.lhs.false.i.i.do.body.i.i_crit_edge, %if.else.i.i.do.body.i.i_crit_edge, %land.rhs.i.i.do.body.i.i_crit_edge, %AUDIT_MODE.exit.i.i.do.body.i.i_crit_edge
  %type.0.i.i = phi i32 [ 7, %AUDIT_MODE.exit140.i.i.do.body.i.i_crit_edge ], [ 7, %AUDIT_MODE.exit135.i.i.do.body.i.i_crit_edge ], [ 7, %if.else29.i.i.do.body.i.i_crit_edge ], [ 0, %AUDIT_MODE.exit.i.i.do.body.i.i_crit_edge ], [ 0, %land.rhs.i.i.do.body.i.i_crit_edge ], [ 6, %lor.lhs.false19.i.i.do.body.i.i_crit_edge ], [ 6, %lor.lhs.false.i.i.do.body.i.i_crit_edge ], [ 6, %if.else.i.i.do.body.i.i_crit_edge ], [ 7, %land.lhs.true.i.i.do.body.i.i_crit_edge ]
  %37 = call i32 @llvm.read_register.i32(metadata !98) #5
  %and.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !110
  %41 = call i32 @llvm.read_register.i32(metadata !98) #5
  %and.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i, align 4
  %arrayidx53.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx53.i.i, align 4
  %add.i.i = add i32 %46, ptrtoint (ptr @audit_cache to i32)
  %47 = inttoptr i32 %add.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %cmp55.i.i = icmp eq ptr %49, %7
  br i1 %cmp55.i.i, label %land.lhs.true56.i.i, label %do.body.i.i.if.else79.i.i_crit_edge

do.body.i.i.if.else79.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else79.i.i

land.lhs.true56.i.i:                              ; preds = %do.body.i.i
  %caps57.i.i = getelementptr inbounds %struct.audit_cache, ptr %47, i32 0, i32 1
  %arrayidx60.i.i = getelementptr [2 x i32], ptr %caps57.i.i, i32 0, i32 %shr.i
  %50 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx60.i.i, align 4
  %and63.i.i = and i32 %51, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i)
  %tobool64.not.i.i = icmp eq i32 %and63.i.i, 0
  br i1 %tobool64.not.i.i, label %land.lhs.true56.i.i.if.else79.i.i_crit_edge, label %do.body67.i.i

land.lhs.true56.i.i.if.else79.i.i_crit_edge:      ; preds = %land.lhs.true56.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else79.i.i

do.body67.i.i:                                    ; preds = %land.lhs.true56.i.i
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !111
  %52 = call i32 @llvm.read_register.i32(metadata !98) #5
  %and.i.i.i126.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i126.i.i to ptr
  %preempt_count.i.i127.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i127.i.i, align 4
  %sub.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i127.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %56 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp72.i.i = icmp eq i32 %56, 1
  br i1 %cmp72.i.i, label %do.body67.i.i.profile_capable.exit.thread_crit_edge, label %lor.lhs.false73.i.i

do.body67.i.i.profile_capable.exit.thread_crit_edge: ; preds = %do.body67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %profile_capable.exit.thread

lor.lhs.false73.i.i:                              ; preds = %do.body67.i.i
  %mode74.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 8
  %57 = ptrtoint ptr %mode74.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mode74.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp75.i.i = icmp eq i32 %58, 1
  br i1 %cmp75.i.i, label %lor.lhs.false73.i.i.profile_capable.exit.thread_crit_edge, label %lor.lhs.false73.i.i.profile_capable.exit_crit_edge

lor.lhs.false73.i.i.profile_capable.exit_crit_edge: ; preds = %lor.lhs.false73.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %profile_capable.exit

lor.lhs.false73.i.i.profile_capable.exit.thread_crit_edge: ; preds = %lor.lhs.false73.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %profile_capable.exit.thread

if.else79.i.i:                                    ; preds = %land.lhs.true56.i.i.if.else79.i.i_crit_edge, %do.body.i.i.if.else79.i.i_crit_edge
  %tobool.not.i29.i = icmp eq ptr %49, null
  br i1 %tobool.not.i29.i, label %if.else79.i.i.if.then.i28.i_crit_edge, label %if.then.i32.i

if.else79.i.i.if.then.i28.i_crit_edge:            ; preds = %if.else79.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i28.i

if.then.i32.i:                                    ; preds = %if.else79.i.i
  %label.i30.i = getelementptr inbounds %struct.aa_profile, ptr %49, i32 0, i32 25
  %call.i.i.i.i.i.i.i31.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i30.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !112
  call void @llvm.prefetch.p0(ptr %label.i30.i, i32 1, i32 3, i32 1) #5
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i30.i, ptr %label.i30.i, i32 1, ptr elementtype(i32) %label.i30.i) #5, !srcloc !113
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i33.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i33.i, label %if.end5.i.i.i.i.i.i.if.then.i28.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !108

if.end5.i.i.i.i.i.i.if.then.i28.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i28.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %label.i30.i, i32 noundef 3) #5
  br label %if.then.i28.i

if.then.i.i.i:                                    ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !114
  call void @aa_label_kref(ptr noundef %label.i30.i) #5
  br label %if.then.i28.i

if.then.i28.i:                                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.then.i28.i_crit_edge, %if.else79.i.i.if.then.i28.i_crit_edge
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #5
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #5, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i28.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !109

if.then.i28.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i28.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %61 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %.not.i.i.i.i.i.i = icmp sgt i32 %61, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_profile.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !108

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_profile.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %aa_get_profile.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i28.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i28.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %aa_get_profile.exit.i

aa_get_profile.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_profile.exit.i_crit_edge
  %62 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %7, ptr %47, align 4
  %caps85.i.i = getelementptr inbounds %struct.audit_cache, ptr %47, i32 0, i32 1
  %arrayidx88.i.i = getelementptr [2 x i32], ptr %caps85.i.i, i32 0, i32 %shr.i
  %63 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx88.i.i, align 4
  %or.i.i = or i32 %64, %shl.i
  store i32 %or.i.i, ptr %arrayidx88.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !116
  %65 = call i32 @llvm.read_register.i32(metadata !98) #5
  %and.i.i.i128.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i128.i.i to ptr
  %preempt_count.i.i129.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i129.i.i, align 4
  %sub.i130.i.i = add i32 %68, -1
  store volatile i32 %sub.i130.i.i, ptr %preempt_count.i.i129.i.i, align 4
  %call96.i.i = call i32 @aa_audit(i32 noundef %type.0.i.i, ptr noundef nonnull %7, ptr noundef nonnull %sa, ptr noundef nonnull @audit_cb) #5
  br label %profile_capable.exit

profile_capable.exit:                             ; preds = %aa_get_profile.exit.i, %lor.lhs.false73.i.i.profile_capable.exit_crit_edge, %lor.lhs.false.i.profile_capable.exit_crit_edge
  %retval.0.i = phi i32 [ %error.0.i, %lor.lhs.false.i.profile_capable.exit_crit_edge ], [ %call96.i.i, %aa_get_profile.exit.i ], [ %error.0.i, %lor.lhs.false73.i.i.profile_capable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %profile_capable.exit.profile_capable.exit.thread_crit_edge, label %profile_capable.exit.profile_capable.exit.thread15_crit_edge

profile_capable.exit.profile_capable.exit.thread15_crit_edge: ; preds = %profile_capable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %profile_capable.exit.thread15

profile_capable.exit.profile_capable.exit.thread_crit_edge: ; preds = %profile_capable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %profile_capable.exit.thread

profile_capable.exit.thread:                      ; preds = %profile_capable.exit.profile_capable.exit.thread_crit_edge, %lor.lhs.false73.i.i.profile_capable.exit.thread_crit_edge, %do.body67.i.i.profile_capable.exit.thread_crit_edge, %land.rhs.i.i.profile_capable.exit.thread_crit_edge
  br label %profile_capable.exit.thread15

profile_capable.exit.thread15:                    ; preds = %profile_capable.exit.thread, %profile_capable.exit.profile_capable.exit.thread15_crit_edge, %AUDIT_MODE.exit140.i.i.profile_capable.exit.thread15_crit_edge
  %69 = phi i32 [ %__E.021, %profile_capable.exit.thread ], [ %retval.0.i, %profile_capable.exit.profile_capable.exit.thread15_crit_edge ], [ -1, %AUDIT_MODE.exit140.i.i.profile_capable.exit.thread15_crit_edge ]
  %add = add i32 %i.sroa.0.020, 1
  %call6 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #5
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call6
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %71, null
  br i1 %tobool.not, label %profile_capable.exit.thread15.for.end_crit_edge, label %profile_capable.exit.thread15.do.body_crit_edge

profile_capable.exit.thread15.do.body_crit_edge:  ; preds = %profile_capable.exit.thread15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

profile_capable.exit.thread15.for.end_crit_edge:  ; preds = %profile_capable.exit.thread15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %profile_capable.exit.thread15.for.end_crit_edge, %entry.for.end_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %69, %profile_capable.exit.thread15.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #5
  ret i32 %__E.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_next_confined(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_audit(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_cb(ptr noundef %ab, ptr nocapture noundef readonly %va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.4) #5
  %u = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  %arrayidx = getelementptr [41 x ptr], ptr @capability_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.named.register.sp = !{!98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/capability.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @aa_sfs_entry_caps, !4, !"aa_sfs_entry_caps", i1 false, i1 false}
!4 = !{!"../security/apparmor/capability.c", i32 27, i32 21}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../security/apparmor/capability.c", i32 151, i32 2}
!7 = !{ptr @__pcpu_unique_audit_cache, !8, !"__pcpu_unique_audit_cache", i1 false, i1 false}
!8 = !{!"../security/apparmor/capability.c", i32 37, i32 8}
!9 = !{ptr @audit_cache, !8, !"audit_cache", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/apparmor/capability.c", i32 131, i32 19}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/apparmor/capability.c", i32 48, i32 23}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"./security/apparmor/capability_names.h", i32 2, i32 7}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"./security/apparmor/capability_names.h", i32 3, i32 7}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"./security/apparmor/capability_names.h", i32 4, i32 7}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"./security/apparmor/capability_names.h", i32 5, i32 7}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"./security/apparmor/capability_names.h", i32 6, i32 7}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"./security/apparmor/capability_names.h", i32 7, i32 7}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"./security/apparmor/capability_names.h", i32 8, i32 7}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"./security/apparmor/capability_names.h", i32 9, i32 7}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"./security/apparmor/capability_names.h", i32 10, i32 7}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"./security/apparmor/capability_names.h", i32 11, i32 7}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"./security/apparmor/capability_names.h", i32 12, i32 8}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"./security/apparmor/capability_names.h", i32 13, i32 8}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"./security/apparmor/capability_names.h", i32 14, i32 8}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"./security/apparmor/capability_names.h", i32 15, i32 8}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"./security/apparmor/capability_names.h", i32 16, i32 8}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"./security/apparmor/capability_names.h", i32 17, i32 8}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"./security/apparmor/capability_names.h", i32 18, i32 8}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"./security/apparmor/capability_names.h", i32 19, i32 8}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"./security/apparmor/capability_names.h", i32 20, i32 8}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"./security/apparmor/capability_names.h", i32 21, i32 8}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"./security/apparmor/capability_names.h", i32 22, i32 8}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"./security/apparmor/capability_names.h", i32 23, i32 8}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"./security/apparmor/capability_names.h", i32 24, i32 8}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"./security/apparmor/capability_names.h", i32 25, i32 8}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"./security/apparmor/capability_names.h", i32 26, i32 8}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"./security/apparmor/capability_names.h", i32 27, i32 8}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"./security/apparmor/capability_names.h", i32 28, i32 8}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"./security/apparmor/capability_names.h", i32 29, i32 8}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"./security/apparmor/capability_names.h", i32 30, i32 8}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"./security/apparmor/capability_names.h", i32 31, i32 8}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"./security/apparmor/capability_names.h", i32 32, i32 8}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"./security/apparmor/capability_names.h", i32 33, i32 8}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"./security/apparmor/capability_names.h", i32 34, i32 8}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"./security/apparmor/capability_names.h", i32 35, i32 8}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"./security/apparmor/capability_names.h", i32 36, i32 8}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"./security/apparmor/capability_names.h", i32 37, i32 8}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"./security/apparmor/capability_names.h", i32 38, i32 8}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"./security/apparmor/capability_names.h", i32 39, i32 8}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"./security/apparmor/capability_names.h", i32 40, i32 8}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"./security/apparmor/capability_names.h", i32 41, i32 8}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"./security/apparmor/capability_names.h", i32 42, i32 8}
!96 = !{ptr @capability_names, !97, !"capability_names", i1 false, i1 false}
!97 = !{!"./security/apparmor/capability_names.h", i32 1, i32 26}
!98 = !{!"sp"}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{i64 2158385930}
!111 = !{i64 2158387119}
!112 = !{i64 2148688291}
!113 = !{i64 2148602731, i64 2148602763, i64 2148602792, i64 2148602826, i64 2148602857, i64 2148602880}
!114 = !{i64 2149884526}
!115 = !{i64 2148600266, i64 2148600298, i64 2148600327, i64 2148600361, i64 2148600392, i64 2148600415}
!116 = !{i64 2158387630}
