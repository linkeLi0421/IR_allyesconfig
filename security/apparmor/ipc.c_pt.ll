; ModuleID = '/llk/IR_all_yes/security/apparmor/ipc.c_pt.bc'
source_filename = "../security/apparmor/ipc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { ptr, %union.anon.151 }
%union.anon.151 = type { %struct.anon.155 }
%struct.anon.155 = type { i32, i32, ptr, ptr, i32 }
%union.anon.163 = type { ptr }
%struct.aa_perms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.common_audit_data = type { i8, %union.anon.158, %union.anon.163 }
%union.anon.158 = type { %struct.path }
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
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ptrace\00", [25 x i8] zeroinitializer }, align 32
@__const.aa_may_ptrace.sa_aad = private unnamed_addr constant %struct.apparmor_audit_data { i32 0, i32 0, ptr @.str, ptr null, ptr null, ptr null, i32 0, i32 0, %union.anon.149 zeroinitializer }, align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"signal\00", [25 x i8] zeroinitializer }, align 32
@__const.aa_may_signal.sa_aad = private unnamed_addr constant %struct.apparmor_audit_data { i32 0, i32 0, ptr @.str.1, ptr null, ptr null, ptr null, i32 0, i32 0, %union.anon.149 zeroinitializer }, align 4
@__const.aa_may_signal.sa = private unnamed_addr constant { i8, [3 x i8], { ptr, [4 x i8] }, %union.anon.163 } { i8 7, [3 x i8] zeroinitializer, { ptr, [4 x i8] } { ptr null, [4 x i8] c"\FF\FF\FF\FF" }, %union.anon.163 zeroinitializer }, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" requested_mask=\22%s\22\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" denied_mask=\22%s\22\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" peer=\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trace\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"readby\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tracedby\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@sig_map = internal constant { [35 x i32], [52 x i8] } { [35 x i32] [i32 35, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"signal=unknown(%d)\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" signal=%s\00", [21 x i8] zeroinitializer }, align 32
@sig_names = internal constant { [36 x ptr], [48 x i8] } { [36 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" signal=rtmin+%d\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"receive\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"send\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hup\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"quit\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ill\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trap\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"abrt\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fpe\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kill\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usr1\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"segv\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usr2\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alrm\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"term\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stkflt\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"chld\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cont\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"stp\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttin\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttou\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"urg\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xcpu\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xfsz\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vtalrm\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prof\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"winch\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwr\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emt\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unused\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"exists\00", [25 x i8] zeroinitializer }, align 32
@switch.table.audit_ptrace_cb = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.6, ptr @.str.5, ptr @.str.9, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@switch.table.audit_ptrace_cb.51 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.6, ptr @.str.5, ptr @.str.9, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 123, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 211, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 48, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 52, i32 25 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 56, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 31, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 33, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 35, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 37, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 39, i32 9 }
@___asan_gen_.82 = private unnamed_addr constant [8 x i8] c"sig_map\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 12, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 175, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 178, i32 24 }
@___asan_gen_.91 = private unnamed_addr constant [10 x i8] c"sig_names\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 62, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 180, i32 24 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 151, i32 10 }
@___asan_gen_.101 = private constant [27 x i8] c"../security/apparmor/ipc.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 153, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 63, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 64, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 65, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 66, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 67, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 68, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 69, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 70, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 71, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 72, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 73, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 74, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 75, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 76, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 77, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 78, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 79, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 80, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 81, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 82, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 83, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 84, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 85, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 86, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 87, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 88, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 89, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 90, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 91, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 92, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 93, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 94, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 95, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 96, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 97, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [41 x i8] c"../security/apparmor/include/sig_names.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 99, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [29 x i8] c"switch.table.audit_ptrace_cb\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [32 x i8] c"switch.table.audit_ptrace_cb.51\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sig_map, ptr @.str.10, ptr @.str.11, ptr @sig_names, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @switch.table.audit_ptrace_cb, ptr @switch.table.audit_ptrace_cb.51], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sig_map to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sig_names to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.audit_ptrace_cb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.audit_ptrace_cb.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_may_ptrace(ptr noundef %tracer, ptr noundef %tracee, i32 noundef %request) local_unnamed_addr #0 align 64 {
entry:
  %perms.i.i43 = alloca %struct.aa_perms, align 4
  %perms.i.i = alloca %struct.aa_perms, align 4
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %request, 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #4
  %0 = call ptr @memcpy(ptr %sa_aad, ptr @__const.aa_may_ptrace.sa_aad, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #4
  %1 = call ptr @memcpy(ptr %sa, ptr @__const.aa_may_signal.sa, i32 12)
  %2 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sa_aad, ptr %2, align 4
  %arrayidx55 = getelementptr %struct.aa_label, ptr %tracer, i32 0, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx55, align 4
  %tobool.not56 = icmp eq ptr %5, null
  br i1 %tobool.not56, label %entry.for.cond8.preheader_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.cond8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond.for.cond8.preheader_crit_edge, %entry.for.cond8.preheader_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %entry.for.cond8.preheader_crit_edge ], [ %28, %for.cond.for.cond8.preheader_crit_edge ]
  %arrayidx1159 = getelementptr %struct.aa_label, ptr %tracee, i32 0, i32 8, i32 0
  %6 = ptrtoint ptr %arrayidx1159 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1159, align 4
  %tobool12.not60 = icmp eq ptr %7, null
  br i1 %tobool12.not60, label %for.cond8.preheader.for.end25.thread_crit_edge, label %do.body14.lr.ph

for.cond8.preheader.for.end25.thread_crit_edge:   ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end25.thread

do.body14.lr.ph:                                  ; preds = %for.cond8.preheader
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %tracer, i32 0, i32 5
  br label %do.body14

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %entry.do.body_crit_edge
  %8 = phi ptr [ %30, %for.cond.do.body_crit_edge ], [ %5, %entry.do.body_crit_edge ]
  %__E.058 = phi i32 [ %28, %for.cond.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %i.sroa.0.057 = phi i32 [ %inc, %for.cond.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %mode.i = getelementptr inbounds %struct.aa_profile, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i = icmp eq i32 %10, 3
  br i1 %cmp.i, label %do.body.profile_tracer_perm.exit.thread_crit_edge, label %if.end.i

do.body.profile_tracer_perm.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_tracer_perm.exit.thread

if.end.i:                                         ; preds = %do.body
  %arrayidx.i.i = getelementptr %struct.aa_profile, ptr %8, i32 0, i32 12, i32 1, i32 9
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms.i.i) #4
  %13 = call ptr @memset(ptr %perms.i.i, i32 0, i32 44)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.apparmor_audit_data, ptr %15, i32 0, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tracee, ptr %16, align 4
  call void @aa_profile_match_label(ptr noundef nonnull %8, ptr noundef %tracee, i32 noundef 9, i32 noundef %request, ptr noundef nonnull %perms.i.i) #4
  call void @aa_apply_modes_to_perms(ptr noundef nonnull %8, ptr noundef nonnull %perms.i.i) #4
  %call.i.i = call i32 @aa_check_perms(ptr noundef nonnull %8, ptr noundef nonnull %perms.i.i, i32 noundef %request, ptr noundef nonnull %sa, ptr noundef nonnull @audit_ptrace_cb) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i.i) #4
  br label %profile_tracer_perm.exit

if.end3.i:                                        ; preds = %if.end.i
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %8, i32 0, i32 25
  %cmp4.i = icmp eq ptr %label.i, %tracee
  br i1 %cmp4.i, label %if.end3.i.profile_tracer_perm.exit.thread_crit_edge, label %if.end6.i

if.end3.i.profile_tracer_perm.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_tracer_perm.exit.thread

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %label8.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %label8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %label.i, ptr %label8.i, align 4
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.apparmor_audit_data, ptr %21, i32 0, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tracee, ptr %22, align 4
  %request9.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %request9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %request9.i, align 4
  %call11.i = call i32 @aa_capable(ptr noundef %label.i, i32 noundef 19, i32 noundef 0) #4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call11.i, ptr %26, align 4
  %call12.i = call i32 @aa_audit(i32 noundef 7, ptr noundef nonnull %8, ptr noundef nonnull %sa, ptr noundef nonnull @audit_ptrace_cb) #4
  br label %profile_tracer_perm.exit

profile_tracer_perm.exit:                         ; preds = %if.end6.i, %if.then1.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then1.i ], [ %call12.i, %if.end6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %profile_tracer_perm.exit.profile_tracer_perm.exit.thread_crit_edge, label %profile_tracer_perm.exit.for.cond_crit_edge

profile_tracer_perm.exit.for.cond_crit_edge:      ; preds = %profile_tracer_perm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

profile_tracer_perm.exit.profile_tracer_perm.exit.thread_crit_edge: ; preds = %profile_tracer_perm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_tracer_perm.exit.thread

profile_tracer_perm.exit.thread:                  ; preds = %profile_tracer_perm.exit.profile_tracer_perm.exit.thread_crit_edge, %if.end3.i.profile_tracer_perm.exit.thread_crit_edge, %do.body.profile_tracer_perm.exit.thread_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %profile_tracer_perm.exit.thread, %profile_tracer_perm.exit.for.cond_crit_edge
  %28 = phi i32 [ %__E.058, %profile_tracer_perm.exit.thread ], [ %retval.0.i, %profile_tracer_perm.exit.for.cond_crit_edge ]
  %inc = add i32 %i.sroa.0.057, 1
  %arrayidx = getelementptr %struct.aa_label, ptr %tracer, i32 0, i32 8, i32 %inc
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %for.cond.for.cond8.preheader_crit_edge, label %for.cond.do.body_crit_edge

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.cond.for.cond8.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond8.preheader

do.body14:                                        ; preds = %for.cond8.do.body14_crit_edge, %do.body14.lr.ph
  %31 = phi ptr [ %7, %do.body14.lr.ph ], [ %45, %for.cond8.do.body14_crit_edge ]
  %__E6.062 = phi i32 [ 0, %do.body14.lr.ph ], [ %43, %for.cond8.do.body14_crit_edge ]
  %i5.sroa.0.061 = phi i32 [ 0, %do.body14.lr.ph ], [ %inc24, %for.cond8.do.body14_crit_edge ]
  %mode.i44 = getelementptr inbounds %struct.aa_profile, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %mode.i44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i45 = icmp eq i32 %33, 3
  br i1 %cmp.i45, label %do.body14.profile_tracee_perm.exit.thread_crit_edge, label %lor.lhs.false.i

do.body14.profile_tracee_perm.exit.thread_crit_edge: ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_tracee_perm.exit.thread

lor.lhs.false.i:                                  ; preds = %do.body14
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i46 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i46, label %lor.lhs.false1.i, label %lor.lhs.false.i.profile_tracee_perm.exit.thread_crit_edge

lor.lhs.false.i.profile_tracee_perm.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_tracee_perm.exit.thread

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx.i.i47 = getelementptr %struct.aa_profile, ptr %31, i32 0, i32 12, i32 1, i32 9
  %36 = ptrtoint ptr %arrayidx.i.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool2.not.i = icmp eq i32 %37, 0
  br i1 %tobool2.not.i, label %lor.lhs.false1.i.profile_tracee_perm.exit.thread_crit_edge, label %profile_tracee_perm.exit

lor.lhs.false1.i.profile_tracee_perm.exit.thread_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_tracee_perm.exit.thread

profile_tracee_perm.exit:                         ; preds = %lor.lhs.false1.i
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms.i.i43) #4
  %38 = call ptr @memset(ptr %perms.i.i43, i32 0, i32 44)
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr inbounds %struct.apparmor_audit_data, ptr %40, i32 0, i32 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %tracer, ptr %41, align 4
  call void @aa_profile_match_label(ptr noundef nonnull %31, ptr noundef %tracer, i32 noundef 9, i32 noundef %shl, ptr noundef nonnull %perms.i.i43) #4
  call void @aa_apply_modes_to_perms(ptr noundef nonnull %31, ptr noundef nonnull %perms.i.i43) #4
  %call.i.i48 = call i32 @aa_check_perms(ptr noundef nonnull %31, ptr noundef nonnull %perms.i.i43, i32 noundef %shl, ptr noundef nonnull %sa, ptr noundef nonnull @audit_ptrace_cb) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i.i43) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool17.not = icmp eq i32 %call.i.i48, 0
  br i1 %tobool17.not, label %profile_tracee_perm.exit.profile_tracee_perm.exit.thread_crit_edge, label %profile_tracee_perm.exit.for.cond8_crit_edge

profile_tracee_perm.exit.for.cond8_crit_edge:     ; preds = %profile_tracee_perm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond8

profile_tracee_perm.exit.profile_tracee_perm.exit.thread_crit_edge: ; preds = %profile_tracee_perm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_tracee_perm.exit.thread

profile_tracee_perm.exit.thread:                  ; preds = %profile_tracee_perm.exit.profile_tracee_perm.exit.thread_crit_edge, %lor.lhs.false1.i.profile_tracee_perm.exit.thread_crit_edge, %lor.lhs.false.i.profile_tracee_perm.exit.thread_crit_edge, %do.body14.profile_tracee_perm.exit.thread_crit_edge
  br label %for.cond8

for.cond8:                                        ; preds = %profile_tracee_perm.exit.thread, %profile_tracee_perm.exit.for.cond8_crit_edge
  %43 = phi i32 [ %__E6.062, %profile_tracee_perm.exit.thread ], [ %call.i.i48, %profile_tracee_perm.exit.for.cond8_crit_edge ]
  %inc24 = add i32 %i5.sroa.0.061, 1
  %arrayidx11 = getelementptr %struct.aa_label, ptr %tracee, i32 0, i32 8, i32 %inc24
  %44 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %45, null
  br i1 %tobool12.not, label %for.end25, label %for.cond8.do.body14_crit_edge

for.cond8.do.body14_crit_edge:                    ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

for.end25:                                        ; preds = %for.cond8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool27.not = icmp eq i32 %43, 0
  br i1 %tobool27.not, label %for.end25.for.end25.thread_crit_edge, label %for.end25._crit_edge

for.end25._crit_edge:                             ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %46

for.end25.for.end25.thread_crit_edge:             ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end25.thread

for.end25.thread:                                 ; preds = %for.end25.for.end25.thread_crit_edge, %for.cond8.preheader.for.end25.thread_crit_edge
  br label %46

46:                                               ; preds = %for.end25.thread, %for.end25._crit_edge
  %47 = phi i32 [ %__E.0.lcssa, %for.end25.thread ], [ %43, %for.end25._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #4
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_may_signal(ptr noundef %sender, ptr noundef %target, i32 noundef %sig) local_unnamed_addr #0 align 64 {
entry:
  %perms.i46 = alloca %struct.aa_perms, align 4
  %perms.i = alloca %struct.aa_perms, align 4
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #4
  %0 = call ptr @memcpy(ptr %sa_aad, ptr @__const.aa_may_signal.sa_aad, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #4
  %1 = call ptr @memcpy(ptr %sa, ptr @__const.aa_may_signal.sa, i32 12)
  %2 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sa_aad, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sig)
  %cmp.i = icmp sgt i32 %sig, 64
  br i1 %cmp.i, label %entry.map_signal_num.exit_crit_edge, label %if.else.i

entry.map_signal_num.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %map_signal_num.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sig)
  %cmp1.i = icmp sgt i32 %sig, 31
  br i1 %cmp1.i, label %if.then2.i, label %if.then5.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add nuw nsw i32 %sig, 96
  br label %map_signal_num.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr [35 x i32], ptr @sig_map, i32 0, i32 %sig
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  br label %map_signal_num.exit

map_signal_num.exit:                              ; preds = %if.then5.i, %if.then2.i, %entry.map_signal_num.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then2.i ], [ %5, %if.then5.i ], [ 0, %entry.map_signal_num.exit_crit_edge ]
  %6 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i, ptr %6, align 4
  %unmappedsig = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %unmappedsig to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sig, ptr %unmappedsig, align 4
  %arrayidx64 = getelementptr %struct.aa_label, ptr %sender, i32 0, i32 8, i32 0
  %9 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx64, align 4
  %tobool.not65 = icmp eq ptr %10, null
  br i1 %tobool.not65, label %map_signal_num.exit.for.cond9.preheader_crit_edge, label %map_signal_num.exit.do.body_crit_edge

map_signal_num.exit.do.body_crit_edge:            ; preds = %map_signal_num.exit
  br label %do.body

map_signal_num.exit.for.cond9.preheader_crit_edge: ; preds = %map_signal_num.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond.for.cond9.preheader_crit_edge, %map_signal_num.exit.for.cond9.preheader_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %map_signal_num.exit.for.cond9.preheader_crit_edge ], [ %31, %for.cond.for.cond9.preheader_crit_edge ]
  %arrayidx1268 = getelementptr %struct.aa_label, ptr %target, i32 0, i32 8, i32 0
  %11 = ptrtoint ptr %arrayidx1268 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1268, align 4
  %tobool13.not69 = icmp eq ptr %12, null
  br i1 %tobool13.not69, label %for.cond9.preheader.for.end26.thread_crit_edge, label %for.cond9.preheader.do.body15_crit_edge

for.cond9.preheader.do.body15_crit_edge:          ; preds = %for.cond9.preheader
  br label %do.body15

for.cond9.preheader.for.end26.thread_crit_edge:   ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end26.thread

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %map_signal_num.exit.do.body_crit_edge
  %13 = phi ptr [ %33, %for.cond.do.body_crit_edge ], [ %10, %map_signal_num.exit.do.body_crit_edge ]
  %i.sroa.0.067 = phi i32 [ %inc, %for.cond.do.body_crit_edge ], [ 0, %map_signal_num.exit.do.body_crit_edge ]
  %__E.066 = phi i32 [ %31, %for.cond.do.body_crit_edge ], [ 0, %map_signal_num.exit.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms.i) #4
  %14 = call ptr @memset(ptr %perms.i, i32 255, i32 44)
  %mode.i = getelementptr inbounds %struct.aa_profile, ptr %13, i32 0, i32 8
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i44 = icmp eq i32 %16, 3
  br i1 %cmp.i44, label %do.body.profile_signal_perm.exit.thread_crit_edge, label %lor.lhs.false.i

do.body.profile_signal_perm.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_signal_perm.exit.thread

lor.lhs.false.i:                                  ; preds = %do.body
  %arrayidx.i.i = getelementptr %struct.aa_profile, ptr %13, i32 0, i32 12, i32 1, i32 10
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.profile_signal_perm.exit.thread_crit_edge, label %profile_signal_perm.exit

lor.lhs.false.i.profile_signal_perm.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_signal_perm.exit.thread

profile_signal_perm.exit.thread:                  ; preds = %lor.lhs.false.i.profile_signal_perm.exit.thread_crit_edge, %do.body.profile_signal_perm.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i) #4
  br label %30

profile_signal_perm.exit:                         ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.apparmor_audit_data, ptr %20, i32 0, i32 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %target, ptr %21, align 4
  %policy.i = getelementptr inbounds %struct.aa_profile, ptr %13, i32 0, i32 12
  %23 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %policy.i, align 4
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %27 = getelementptr inbounds %struct.apparmor_audit_data, ptr %20, i32 0, i32 8, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %conv.i = trunc i32 %29 to i8
  %call3.i = call i32 @aa_dfa_next(ptr noundef %24, i32 noundef %26, i8 noundef zeroext %conv.i) #4
  %call4.i = call i32 @aa_label_match(ptr noundef nonnull %13, ptr noundef %target, i32 noundef %call3.i, i1 noundef zeroext false, i32 noundef 2, ptr noundef nonnull %perms.i) #4
  call void @aa_apply_modes_to_perms(ptr noundef nonnull %13, ptr noundef nonnull %perms.i) #4
  %call5.i = call i32 @aa_check_perms(ptr noundef nonnull %13, ptr noundef nonnull %perms.i, i32 noundef 2, ptr noundef nonnull %sa, ptr noundef nonnull @audit_signal_cb) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool4.not = icmp eq i32 %call5.i, 0
  br i1 %tobool4.not, label %profile_signal_perm.exit._crit_edge, label %profile_signal_perm.exit.for.cond_crit_edge

profile_signal_perm.exit.for.cond_crit_edge:      ; preds = %profile_signal_perm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

profile_signal_perm.exit._crit_edge:              ; preds = %profile_signal_perm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %30

30:                                               ; preds = %profile_signal_perm.exit._crit_edge, %profile_signal_perm.exit.thread
  br label %for.cond

for.cond:                                         ; preds = %30, %profile_signal_perm.exit.for.cond_crit_edge
  %31 = phi i32 [ %__E.066, %30 ], [ %call5.i, %profile_signal_perm.exit.for.cond_crit_edge ]
  %inc = add i32 %i.sroa.0.067, 1
  %arrayidx = getelementptr %struct.aa_label, ptr %sender, i32 0, i32 8, i32 %inc
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %for.cond.for.cond9.preheader_crit_edge, label %for.cond.do.body_crit_edge

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.cond.for.cond9.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond9.preheader

do.body15:                                        ; preds = %for.cond9.do.body15_crit_edge, %for.cond9.preheader.do.body15_crit_edge
  %34 = phi ptr [ %54, %for.cond9.do.body15_crit_edge ], [ %12, %for.cond9.preheader.do.body15_crit_edge ]
  %__E7.071 = phi i32 [ %52, %for.cond9.do.body15_crit_edge ], [ 0, %for.cond9.preheader.do.body15_crit_edge ]
  %i6.sroa.0.070 = phi i32 [ %inc25, %for.cond9.do.body15_crit_edge ], [ 0, %for.cond9.preheader.do.body15_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms.i46) #4
  %35 = call ptr @memset(ptr %perms.i46, i32 255, i32 44)
  %mode.i47 = getelementptr inbounds %struct.aa_profile, ptr %34, i32 0, i32 8
  %36 = ptrtoint ptr %mode.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.i48 = icmp eq i32 %37, 3
  br i1 %cmp.i48, label %do.body15.profile_signal_perm.exit59.thread_crit_edge, label %lor.lhs.false.i51

do.body15.profile_signal_perm.exit59.thread_crit_edge: ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_signal_perm.exit59.thread

lor.lhs.false.i51:                                ; preds = %do.body15
  %arrayidx.i.i49 = getelementptr %struct.aa_profile, ptr %34, i32 0, i32 12, i32 1, i32 10
  %38 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i50 = icmp eq i32 %39, 0
  br i1 %tobool.not.i50, label %lor.lhs.false.i51.profile_signal_perm.exit59.thread_crit_edge, label %profile_signal_perm.exit59

lor.lhs.false.i51.profile_signal_perm.exit59.thread_crit_edge: ; preds = %lor.lhs.false.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %profile_signal_perm.exit59.thread

profile_signal_perm.exit59.thread:                ; preds = %lor.lhs.false.i51.profile_signal_perm.exit59.thread_crit_edge, %do.body15.profile_signal_perm.exit59.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i46) #4
  br label %51

profile_signal_perm.exit59:                       ; preds = %lor.lhs.false.i51
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.apparmor_audit_data, ptr %41, i32 0, i32 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %sender, ptr %42, align 4
  %policy.i52 = getelementptr inbounds %struct.aa_profile, ptr %34, i32 0, i32 12
  %44 = ptrtoint ptr %policy.i52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %policy.i52, align 4
  %46 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i49, align 4
  %48 = getelementptr inbounds %struct.apparmor_audit_data, ptr %41, i32 0, i32 8, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %conv.i53 = trunc i32 %50 to i8
  %call3.i54 = call i32 @aa_dfa_next(ptr noundef %45, i32 noundef %47, i8 noundef zeroext %conv.i53) #4
  %call4.i55 = call i32 @aa_label_match(ptr noundef nonnull %34, ptr noundef %sender, i32 noundef %call3.i54, i1 noundef zeroext false, i32 noundef 4, ptr noundef nonnull %perms.i46) #4
  call void @aa_apply_modes_to_perms(ptr noundef nonnull %34, ptr noundef nonnull %perms.i46) #4
  %call5.i56 = call i32 @aa_check_perms(ptr noundef nonnull %34, ptr noundef nonnull %perms.i46, i32 noundef 4, ptr noundef nonnull %sa, ptr noundef nonnull @audit_signal_cb) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i46) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i56)
  %tobool18.not = icmp eq i32 %call5.i56, 0
  br i1 %tobool18.not, label %profile_signal_perm.exit59._crit_edge, label %profile_signal_perm.exit59.for.cond9_crit_edge

profile_signal_perm.exit59.for.cond9_crit_edge:   ; preds = %profile_signal_perm.exit59
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond9

profile_signal_perm.exit59._crit_edge:            ; preds = %profile_signal_perm.exit59
  call void @__sanitizer_cov_trace_pc() #6
  br label %51

51:                                               ; preds = %profile_signal_perm.exit59._crit_edge, %profile_signal_perm.exit59.thread
  br label %for.cond9

for.cond9:                                        ; preds = %51, %profile_signal_perm.exit59.for.cond9_crit_edge
  %52 = phi i32 [ %__E7.071, %51 ], [ %call5.i56, %profile_signal_perm.exit59.for.cond9_crit_edge ]
  %inc25 = add i32 %i6.sroa.0.070, 1
  %arrayidx12 = getelementptr %struct.aa_label, ptr %target, i32 0, i32 8, i32 %inc25
  %53 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %54, null
  br i1 %tobool13.not, label %for.end26, label %for.cond9.do.body15_crit_edge

for.cond9.do.body15_crit_edge:                    ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body15

for.end26:                                        ; preds = %for.cond9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool28.not = icmp eq i32 %52, 0
  br i1 %tobool28.not, label %for.end26.for.end26.thread_crit_edge, label %for.end26._crit_edge

for.end26._crit_edge:                             ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %55

for.end26.for.end26.thread_crit_edge:             ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end26.thread

for.end26.thread:                                 ; preds = %for.end26.for.end26.thread_crit_edge, %for.cond9.preheader.for.end26.thread_crit_edge
  br label %55

55:                                               ; preds = %for.end26.thread, %for.end26._crit_edge
  %56 = phi i32 [ %__E.0.lcssa, %for.end26.thread ], [ %52, %for.end26._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #4
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_capable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_audit(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_ptrace_cb(ptr noundef %ab, ptr nocapture noundef readonly %va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %request = getelementptr inbounds %struct.apparmor_audit_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %request, align 4
  %and = and i32 %4, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %5 = add i32 %4, -2
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %7 = icmp ult i32 %6, 8
  br i1 %7, label %switch.lookup, label %if.then.audit_ptrace_mask.exit_crit_edge

if.then.audit_ptrace_mask.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %audit_ptrace_mask.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.audit_ptrace_cb, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %audit_ptrace_mask.exit

audit_ptrace_mask.exit:                           ; preds = %switch.lookup, %if.then.audit_ptrace_mask.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.9, %if.then.audit_ptrace_mask.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.2, ptr noundef nonnull %retval.0.i) #4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %denied = getelementptr inbounds %struct.apparmor_audit_data, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %denied, align 4
  %and2 = and i32 %12, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %audit_ptrace_mask.exit.if.end7_crit_edge, label %if.then4

audit_ptrace_mask.exit.if.end7_crit_edge:         ; preds = %audit_ptrace_mask.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then4:                                         ; preds = %audit_ptrace_mask.exit
  %13 = add i32 %12, -2
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %switch.lookup25, label %if.then4.audit_ptrace_mask.exit24_crit_edge

if.then4.audit_ptrace_mask.exit24_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %audit_ptrace_mask.exit24

switch.lookup25:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep26 = getelementptr inbounds [8 x ptr], ptr @switch.table.audit_ptrace_cb.51, i32 0, i32 %14
  %16 = ptrtoint ptr %switch.gep26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load27 = load ptr, ptr %switch.gep26, align 4
  br label %audit_ptrace_mask.exit24

audit_ptrace_mask.exit24:                         ; preds = %switch.lookup25, %if.then4.audit_ptrace_mask.exit24_crit_edge
  %retval.0.i23 = phi ptr [ %switch.load27, %switch.lookup25 ], [ @.str.9, %if.then4.audit_ptrace_mask.exit24_crit_edge ]
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.3, ptr noundef nonnull %retval.0.i23) #4
  br label %if.end7

if.end7:                                          ; preds = %audit_ptrace_mask.exit24, %audit_ptrace_mask.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.4) #4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %label = getelementptr inbounds %struct.apparmor_audit_data, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %label, align 4
  %vec = getelementptr inbounds %struct.aa_label, ptr %20, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %sub = add i32 %22, -1
  %arrayidx9 = getelementptr ptr, ptr %vec, i32 %sub
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx9, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ns, align 4
  %27 = getelementptr inbounds %struct.apparmor_audit_data, ptr %18, i32 0, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void @aa_label_xaudit(ptr noundef %ab, ptr noundef %26, ptr noundef %29, i32 noundef 0, i32 noundef 2592) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_profile_match_label(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_apply_modes_to_perms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_check_perms(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_xaudit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_next(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_match(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_signal_cb(ptr noundef %ab, ptr nocapture noundef readonly %va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %request = getelementptr inbounds %struct.apparmor_audit_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %request, align 4
  %and = and i32 %4, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %.str.9..str.14.i = select i1 %tobool2.not.i, ptr @.str.9, ptr @.str.14
  %retval.0.i = select i1 %tobool.not.i, ptr %.str.9..str.14.i, ptr @.str.13
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.2, ptr noundef nonnull %retval.0.i) #4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %denied = getelementptr inbounds %struct.apparmor_audit_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %denied, align 4
  %and2 = and i32 %8, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %if.then4

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %and.i38 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  %and1.i40 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i40)
  %tobool2.not.i41 = icmp eq i32 %and1.i40, 0
  %.str.9..str.14.i42 = select i1 %tobool2.not.i41, ptr @.str.9, ptr @.str.14
  %retval.0.i43 = select i1 %tobool.not.i39, ptr %.str.9..str.14.i42, ptr @.str.13
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.3, ptr noundef nonnull %retval.0.i43) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.apparmor_audit_data, ptr %10, i32 0, i32 8, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %unmappedsig = getelementptr inbounds %struct.apparmor_audit_data, ptr %10, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %unmappedsig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %unmappedsig, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.10, i32 noundef %15) #4
  br label %if.end16

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %13)
  %cmp10 = icmp slt i32 %13, 36
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [36 x ptr], ptr @sig_names, i32 0, i32 %13
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.11, ptr noundef %17) #4
  br label %if.end16

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add nsw i32 %13, -128
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.12, i32 noundef %sub) #4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11, %if.then8
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.4) #4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %label = getelementptr inbounds %struct.apparmor_audit_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %label, align 4
  %vec = getelementptr inbounds %struct.aa_label, ptr %21, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %sub19 = add i32 %23, -1
  %arrayidx20 = getelementptr ptr, ptr %vec, i32 %sub19
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx20, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ns, align 4
  %28 = getelementptr inbounds %struct.apparmor_audit_data, ptr %19, i32 0, i32 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void @aa_label_xaudit(ptr noundef %ab, ptr noundef %27, ptr noundef %30, i32 noundef 0, i32 noundef 2592) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/ipc.c", i32 123, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/apparmor/ipc.c", i32 211, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/ipc.c", i32 48, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/ipc.c", i32 52, i32 25}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/apparmor/ipc.c", i32 56, i32 23}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/apparmor/ipc.c", i32 31, i32 10}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/apparmor/ipc.c", i32 33, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/apparmor/ipc.c", i32 35, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/apparmor/ipc.c", i32 37, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/apparmor/ipc.c", i32 39, i32 9}
!20 = !{ptr @sig_map, !21, !"sig_map", i1 false, i1 false}
!21 = !{!"../security/apparmor/include/sig_names.h", i32 12, i32 18}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/apparmor/ipc.c", i32 175, i32 24}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/apparmor/ipc.c", i32 178, i32 24}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/apparmor/ipc.c", i32 180, i32 24}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/apparmor/ipc.c", i32 151, i32 10}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/apparmor/ipc.c", i32 153, i32 10}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/apparmor/include/sig_names.h", i32 63, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/apparmor/include/sig_names.h", i32 64, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/apparmor/include/sig_names.h", i32 65, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/apparmor/include/sig_names.h", i32 66, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/apparmor/include/sig_names.h", i32 67, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/apparmor/include/sig_names.h", i32 68, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/apparmor/include/sig_names.h", i32 69, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/apparmor/include/sig_names.h", i32 70, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/apparmor/include/sig_names.h", i32 71, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/apparmor/include/sig_names.h", i32 72, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/apparmor/include/sig_names.h", i32 73, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/apparmor/include/sig_names.h", i32 74, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/apparmor/include/sig_names.h", i32 75, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/apparmor/include/sig_names.h", i32 76, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/apparmor/include/sig_names.h", i32 77, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/apparmor/include/sig_names.h", i32 78, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../security/apparmor/include/sig_names.h", i32 79, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/apparmor/include/sig_names.h", i32 80, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/apparmor/include/sig_names.h", i32 81, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/apparmor/include/sig_names.h", i32 82, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/apparmor/include/sig_names.h", i32 83, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/apparmor/include/sig_names.h", i32 84, i32 2}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/apparmor/include/sig_names.h", i32 85, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/apparmor/include/sig_names.h", i32 86, i32 2}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../security/apparmor/include/sig_names.h", i32 87, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../security/apparmor/include/sig_names.h", i32 88, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../security/apparmor/include/sig_names.h", i32 89, i32 2}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../security/apparmor/include/sig_names.h", i32 90, i32 2}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../security/apparmor/include/sig_names.h", i32 91, i32 2}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../security/apparmor/include/sig_names.h", i32 92, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../security/apparmor/include/sig_names.h", i32 93, i32 2}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../security/apparmor/include/sig_names.h", i32 94, i32 2}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../security/apparmor/include/sig_names.h", i32 95, i32 2}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../security/apparmor/include/sig_names.h", i32 96, i32 2}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../security/apparmor/include/sig_names.h", i32 97, i32 2}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../security/apparmor/include/sig_names.h", i32 99, i32 2}
!104 = !{ptr @sig_names, !105, !"sig_names", i1 false, i1 false}
!105 = !{!"../security/apparmor/include/sig_names.h", i32 62, i32 26}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
