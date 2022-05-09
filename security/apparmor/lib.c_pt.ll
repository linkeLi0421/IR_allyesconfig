; ModuleID = '/llk/IR_all_yes/security/apparmor/lib.c_pt.bc'
source_filename = "../security/apparmor/lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aa_perms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%union.anon.163 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, ptr, ptr, i32 }
%struct.common_audit_data = type { i8, %union.anon.158, %union.anon.163 }
%union.anon.158 = type { %struct.path }
%struct.path = type { ptr, ptr }
%struct.counted_str = type { %struct.kref, [0 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.aa_dfa = type { %struct.kref, i16, i32, [8 x ptr] }
%struct.table_header = type { i16, i16, i32, i32, [0 x i8] }

@allperms = dso_local global { %struct.aa_perms, [52 x i8] } { %struct.aa_perms { i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i16 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"//\00", [29 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@audit_enabled = external dso_local local_unnamed_addr global i32, align 4
@__const.aa_info_message.sa = private unnamed_addr constant { i8, [3 x i8], { ptr, [4 x i8] }, %union.anon.163 } { i8 7, [3 x i8] zeroinitializer, { ptr, [4 x i8] } { ptr null, [4 x i8] c"\FF\FF\FF\FF" }, %union.anon.163 zeroinitializer }, align 4
@aa_info_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016AppArmor: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aa_info_message\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"security/apparmor/lib.c\00", [40 x i8] zeroinitializer }, align 32
@aa_info_message._entry_ptr = internal global ptr @aa_info_message._entry, section ".printk_index", align 4
@aa_file_perm_chrs = dso_local constant { [25 x i8], [39 x i8] } { [25 x i8] c"xwracd         km l     \00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exec\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"append\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"delete\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rename\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setattr\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"getattr\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setcred\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"getcred\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chmod\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chown\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chgrp\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmap\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mprot\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snapshot\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stack\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"change_onexec\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"change_profile\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"change_hat\00", [21 x i8] zeroinitializer }, align 32
@aa_file_perm_names = dso_local global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.24, ptr @.str.24, ptr @.str.24, ptr @.str.24, ptr @.str.24, ptr @.str.24, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [32 x i8] zeroinitializer }, align 32
@aa_perm_mask_to_str.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@aa_g_profile_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s//%s\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"AppArmor WARN %s: (((!list_empty(&policy->profiles) && (&policy->profiles)->prev != ((void *) 0x122 + 0)))): \00", [50 x i8] zeroinitializer }, align 32
@__func__.aa_policy_destroy = private unnamed_addr constant [18 x i8] c"aa_policy_destroy\00", align 1
@.str.35 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"AppArmor WARN %s: (((!list_empty(&policy->list) && (&policy->list)->prev != ((void *) 0x122 + 0)))): \00", [58 x i8] zeroinitializer }, align 32
@nullperms = dso_local global { %struct.aa_perms, [52 x i8] } zeroinitializer, align 32
@aa_g_audit = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" requested_mask=\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"denied_mask=\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" peer=\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"allperms\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 24, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 53, i32 23 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 132, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"aa_file_perm_chrs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 153, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 155, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 156, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 157, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 158, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 160, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 161, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 162, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 163, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 165, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 166, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 167, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 168, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 170, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 171, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 172, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 173, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 175, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 176, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 177, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 178, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 180, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 190, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 191, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 192, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 193, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"aa_file_perm_names\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 154, i32 13 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 224, i32 20 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 233, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 244, i32 23 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 250, i32 25 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 497, i32 19 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 520, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 521, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"nullperms\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 23, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 267, i32 24 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 273, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [27 x i8] c"../security/apparmor/lib.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 278, i32 23 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @aa_info_message._entry, ptr @aa_info_message._entry_ptr, ptr @allperms, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @aa_file_perm_chrs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @aa_file_perm_names, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @nullperms, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allperms to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_info_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_file_perm_chrs to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_file_perm_names to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullperms to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_split_fqname(ptr noundef %fqname, ptr nocapture noundef writeonly %ns_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strim(ptr noundef %fqname) #12
  %0 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ns_name, align 4
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %2)
  %cmp = icmp eq i8 %2, 58
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %call, i32 1
  %call3 = tail call ptr @strchr(ptr noundef %arrayidx2, i32 noundef 58)
  %call5 = tail call ptr @skip_spaces(ptr noundef %arrayidx2) #12
  %3 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %ns_name, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then.if.end19_crit_edge, label %if.then6

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr = getelementptr i8, ptr %call3, i32 1
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call3, align 1
  %call7 = tail call i32 @strncmp(ptr noundef %incdec.ptr, ptr noundef nonnull dereferenceable(3) @.str, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  %add.ptr = getelementptr i8, ptr %call3, i32 3
  %spec.select = select i1 %cmp8, ptr %add.ptr, ptr %incdec.ptr
  %call11 = tail call ptr @skip_spaces(ptr noundef %spec.select) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %entry.if.end13_crit_edge
  %name.1 = phi ptr [ %call, %entry.if.end13_crit_edge ], [ %call11, %if.then6 ]
  %tobool14.not = icmp eq ptr %name.1, null
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %land.lhs.true

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %name.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %name.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp16 = icmp eq i8 %6, 0
  %spec.store.select = select i1 %cmp16, ptr null, ptr %name.1
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end13.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %name.2 = phi ptr [ %spec.store.select, %land.lhs.true ], [ null, %if.end13.if.end19_crit_edge ], [ null, %if.then.if.end19_crit_edge ]
  ret ptr %name.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @skipn_spaces(ptr noundef readonly %str, i32 noundef %n) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not8 = icmp eq i32 %n, 0
  br i1 %tobool.not8, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %n.addr.010 = phi i32 [ %dec, %for.body.land.rhs_crit_edge ], [ %n, %entry.land.rhs_crit_edge ]
  %str.addr.09 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %str, %entry.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %str.addr.09 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str.addr.09, align 1
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %str.addr.09, i32 1
  %dec = add i32 %n.addr.010, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %.str.addr.0 = phi ptr [ null, %entry.for.end_crit_edge ], [ null, %for.body.for.end_crit_edge ], [ %str.addr.09, %land.rhs.for.end_crit_edge ]
  ret ptr %.str.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_splitn_fqname(ptr noundef %fqname, i32 noundef %n, ptr nocapture noundef writeonly %ns_name, ptr nocapture noundef writeonly %ns_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fqname, i32 %n
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not8.i = icmp eq i32 %n, 0
  br i1 %tobool.not8.i, label %entry.skipn_spaces.exit.thread_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.skipn_spaces.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skipn_spaces.exit.thread

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %n.addr.010.i = phi i32 [ %dec.i, %for.body.i.land.rhs.i_crit_edge ], [ %n, %entry.land.rhs.i_crit_edge ]
  %str.addr.09.i = phi ptr [ %incdec.ptr.i, %for.body.i.land.rhs.i_crit_edge ], [ %fqname, %entry.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %str.addr.09.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str.addr.09.i, align 1
  %conv.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 0
  br i1 %cmp.not.i, label %skipn_spaces.exit, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.09.i, i32 1
  %dec.i = add i32 %n.addr.010.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i.skipn_spaces.exit.thread_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.body.i.skipn_spaces.exit.thread_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skipn_spaces.exit.thread

skipn_spaces.exit.thread:                         ; preds = %for.body.i.skipn_spaces.exit.thread_crit_edge, %entry.skipn_spaces.exit.thread_crit_edge
  %5 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ns_name, align 4
  %6 = ptrtoint ptr %ns_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ns_len, align 4
  br label %cleanup51

skipn_spaces.exit:                                ; preds = %land.rhs.i
  %7 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ns_name, align 4
  %8 = ptrtoint ptr %ns_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ns_len, align 4
  %tobool.not = icmp eq ptr %str.addr.09.i, null
  br i1 %tobool.not, label %skipn_spaces.exit.cleanup51_crit_edge, label %if.end

skipn_spaces.exit.cleanup51_crit_edge:            ; preds = %skipn_spaces.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup51

if.end:                                           ; preds = %skipn_spaces.exit
  %9 = ptrtoint ptr %str.addr.09.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %str.addr.09.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %10)
  %cmp = icmp eq i8 %10, 58
  br i1 %cmp, label %if.then2, label %if.end.land.lhs.true45_crit_edge

if.end.land.lhs.true45_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true45

if.then2:                                         ; preds = %if.end
  %arrayidx3 = getelementptr i8, ptr %str.addr.09.i, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call5 = tail call ptr @strnchr(ptr noundef %arrayidx3, i32 noundef %sub.ptr.sub, i32 noundef 58) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %tobool.not8.i82 = icmp eq i32 %sub.ptr.sub, 0
  br i1 %tobool.not8.i82, label %if.then2.skipn_spaces.exit94.thread_crit_edge, label %if.then2.land.rhs.i88_crit_edge

if.then2.land.rhs.i88_crit_edge:                  ; preds = %if.then2
  br label %land.rhs.i88

if.then2.skipn_spaces.exit94.thread_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %skipn_spaces.exit94.thread

land.rhs.i88:                                     ; preds = %for.body.i92.land.rhs.i88_crit_edge, %if.then2.land.rhs.i88_crit_edge
  %n.addr.010.i83 = phi i32 [ %dec.i90, %for.body.i92.land.rhs.i88_crit_edge ], [ %sub.ptr.sub, %if.then2.land.rhs.i88_crit_edge ]
  %str.addr.09.i84 = phi ptr [ %incdec.ptr.i89, %for.body.i92.land.rhs.i88_crit_edge ], [ %arrayidx3, %if.then2.land.rhs.i88_crit_edge ]
  %11 = ptrtoint ptr %str.addr.09.i84 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %str.addr.09.i84, align 1
  %conv.i85 = zext i8 %12 to i32
  %arrayidx.i86 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i85
  %13 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i86, align 1
  %15 = and i8 %14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not.i87 = icmp eq i8 %15, 0
  br i1 %cmp.not.i87, label %skipn_spaces.exit94, label %for.body.i92

for.body.i92:                                     ; preds = %land.rhs.i88
  %incdec.ptr.i89 = getelementptr i8, ptr %str.addr.09.i84, i32 1
  %dec.i90 = add i32 %n.addr.010.i83, -1
  %tobool.not.i91 = icmp eq i32 %dec.i90, 0
  br i1 %tobool.not.i91, label %for.body.i92.skipn_spaces.exit94.thread_crit_edge, label %for.body.i92.land.rhs.i88_crit_edge

for.body.i92.land.rhs.i88_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i88

for.body.i92.skipn_spaces.exit94.thread_crit_edge: ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %skipn_spaces.exit94.thread

skipn_spaces.exit94.thread:                       ; preds = %for.body.i92.skipn_spaces.exit94.thread_crit_edge, %if.then2.skipn_spaces.exit94.thread_crit_edge
  %16 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ns_name, align 4
  br label %cleanup51

skipn_spaces.exit94:                              ; preds = %land.rhs.i88
  %17 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %str.addr.09.i84, ptr %ns_name, align 4
  %tobool12.not = icmp eq ptr %str.addr.09.i84, null
  br i1 %tobool12.not, label %skipn_spaces.exit94.cleanup51_crit_edge, label %if.end14

skipn_spaces.exit94.cleanup51_crit_edge:          ; preds = %skipn_spaces.exit94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup51

if.end14:                                         ; preds = %skipn_spaces.exit94
  %tobool15.not = icmp eq ptr %call5, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %sub.ptr.lhs.cast17 = ptrtoint ptr %call5 to i32
  %sub.ptr.rhs.cast18 = ptrtoint ptr %str.addr.09.i84 to i32
  %sub.ptr.sub19 = sub i32 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %18 = ptrtoint ptr %ns_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.ptr.sub19, ptr %ns_len, align 4
  %cmp20 = icmp eq ptr %call5, %str.addr.09.i84
  br i1 %cmp20, label %if.then22, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ns_name, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then16.if.end23_crit_edge
  %incdec.ptr = getelementptr i8, ptr %call5, i32 1
  %sub.ptr.rhs.cast25 = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.sub26 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub26)
  %cmp27 = icmp sgt i32 %sub.ptr.sub26, 1
  br i1 %cmp27, label %land.lhs.true, label %if.end23.if.end34_crit_edge

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call i32 @strncmp(ptr noundef %incdec.ptr, ptr noundef nonnull dereferenceable(3) @.str, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  %add.ptr33 = getelementptr i8, ptr %call5, i32 3
  %spec.select = select i1 %cmp30, ptr %add.ptr33, ptr %incdec.ptr
  %.pre = ptrtoint ptr %spec.select to i32
  %.pre129 = sub i32 %sub.ptr.lhs.cast, %.pre
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true, %if.end23.if.end34_crit_edge
  %sub.ptr.sub37.pre-phi = phi i32 [ %.pre129, %land.lhs.true ], [ %sub.ptr.sub26, %if.end23.if.end34_crit_edge ]
  %split.0 = phi ptr [ %spec.select, %land.lhs.true ], [ %incdec.ptr, %if.end23.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub37.pre-phi)
  %tobool.not8.i95 = icmp eq i32 %sub.ptr.sub37.pre-phi, 0
  br i1 %tobool.not8.i95, label %if.end34.cleanup51_crit_edge, label %if.end34.land.rhs.i101_crit_edge

if.end34.land.rhs.i101_crit_edge:                 ; preds = %if.end34
  br label %land.rhs.i101

if.end34.cleanup51_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup51

land.rhs.i101:                                    ; preds = %for.body.i105.land.rhs.i101_crit_edge, %if.end34.land.rhs.i101_crit_edge
  %n.addr.010.i96 = phi i32 [ %dec.i103, %for.body.i105.land.rhs.i101_crit_edge ], [ %sub.ptr.sub37.pre-phi, %if.end34.land.rhs.i101_crit_edge ]
  %str.addr.09.i97 = phi ptr [ %incdec.ptr.i102, %for.body.i105.land.rhs.i101_crit_edge ], [ %split.0, %if.end34.land.rhs.i101_crit_edge ]
  %20 = ptrtoint ptr %str.addr.09.i97 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %str.addr.09.i97, align 1
  %conv.i98 = zext i8 %21 to i32
  %arrayidx.i99 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i98
  %22 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i99, align 1
  %24 = and i8 %23, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.not.i100 = icmp eq i8 %24, 0
  br i1 %cmp.not.i100, label %cleanup, label %for.body.i105

for.body.i105:                                    ; preds = %land.rhs.i101
  %incdec.ptr.i102 = getelementptr i8, ptr %str.addr.09.i97, i32 1
  %dec.i103 = add i32 %n.addr.010.i96, -1
  %tobool.not.i104 = icmp eq i32 %dec.i103, 0
  br i1 %tobool.not.i104, label %for.body.i105.cleanup51_crit_edge, label %for.body.i105.land.rhs.i101_crit_edge

for.body.i105.land.rhs.i101_crit_edge:            ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i101

for.body.i105.cleanup51_crit_edge:                ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup51

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast40 = ptrtoint ptr %str.addr.09.i84 to i32
  %sub.ptr.sub41 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast40
  %25 = ptrtoint ptr %ns_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.ptr.sub41, ptr %ns_len, align 4
  br label %cleanup51

cleanup:                                          ; preds = %land.rhs.i101
  %tobool44.not = icmp eq ptr %str.addr.09.i97, null
  br i1 %tobool44.not, label %cleanup.cleanup51_crit_edge, label %cleanup.land.lhs.true45_crit_edge

cleanup.land.lhs.true45_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true45

cleanup.cleanup51_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup51

land.lhs.true45:                                  ; preds = %cleanup.land.lhs.true45_crit_edge, %if.end.land.lhs.true45_crit_edge
  %name.2124 = phi ptr [ %str.addr.09.i, %if.end.land.lhs.true45_crit_edge ], [ %str.addr.09.i97, %cleanup.land.lhs.true45_crit_edge ]
  %26 = ptrtoint ptr %name.2124 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %name.2124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp47 = icmp eq i8 %27, 0
  %spec.store.select = select i1 %cmp47, ptr null, ptr %name.2124
  br label %cleanup51

cleanup51:                                        ; preds = %land.lhs.true45, %cleanup.cleanup51_crit_edge, %if.else, %for.body.i105.cleanup51_crit_edge, %if.end34.cleanup51_crit_edge, %skipn_spaces.exit94.cleanup51_crit_edge, %skipn_spaces.exit94.thread, %skipn_spaces.exit.cleanup51_crit_edge, %skipn_spaces.exit.thread
  %retval.1 = phi ptr [ null, %cleanup.cleanup51_crit_edge ], [ null, %skipn_spaces.exit.cleanup51_crit_edge ], [ %spec.store.select, %land.lhs.true45 ], [ null, %skipn_spaces.exit.thread ], [ null, %skipn_spaces.exit94.cleanup51_crit_edge ], [ null, %skipn_spaces.exit94.thread ], [ null, %if.end34.cleanup51_crit_edge ], [ null, %if.else ], [ null, %for.body.i105.cleanup51_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_info_message(ptr noundef %str) local_unnamed_addr #0 align 64 {
entry:
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %0 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #12
  %1 = call ptr @memset(ptr %sa_aad, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #12
  %2 = call ptr @memcpy(ptr %sa, ptr @__const.aa_info_message.sa, i32 12)
  %3 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sa_aad, ptr %3, align 4
  %info = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 5
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %str, ptr %info, align 4
  call void @aa_audit_msg(i32 noundef 4, ptr noundef nonnull %sa, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %str) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_audit_msg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_str_alloc(i32 noundef %size, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %gfp) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef 4) #12
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %call9.i, align 128
  %name = getelementptr inbounds %struct.counted_str, ptr %call9.i, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %name, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_str_kref(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kref) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_perm_mask_to_str(ptr nocapture noundef writeonly %str, i32 noundef %str_size, ptr nocapture noundef readonly %chrs, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %chrs) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp54.not = icmp eq i32 %call, 0
  br i1 %cmp54.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %str.addr.059 = phi ptr [ %str.addr.1, %for.inc.for.body_crit_edge ], [ %str, %entry.for.body_crit_edge ]
  %str_size.addr.058 = phi i32 [ %str_size.addr.1, %for.inc.for.body_crit_edge ], [ %str_size, %entry.for.body_crit_edge ]
  %perm.057 = phi i32 [ %shl, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %i.055 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %and = and i32 %perm.057, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %str_size.addr.058)
  %cmp1 = icmp ult i32 %str_size.addr.058, 2
  br i1 %cmp1, label %land.rhs, label %if.end40.critedge

land.rhs:                                         ; preds = %if.then
  %.b50 = load i1, ptr @aa_perm_mask_to_str.__already_done, align 1
  br i1 %.b50, label %land.rhs.for.end_crit_edge, label %if.then9, !prof !98

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @aa_perm_mask_to_str.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef null) #12
  br label %for.end

if.end40.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr i8, ptr %chrs, i32 %i.055
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %incdec.ptr = getelementptr i8, ptr %str.addr.059, i32 1
  %2 = ptrtoint ptr %str.addr.059 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %str.addr.059, align 1
  %dec = add i32 %str_size.addr.058, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end40.critedge, %for.body.for.inc_crit_edge
  %str_size.addr.1 = phi i32 [ %dec, %if.end40.critedge ], [ %str_size.addr.058, %for.body.for.inc_crit_edge ]
  %str.addr.1 = phi ptr [ %incdec.ptr, %if.end40.critedge ], [ %str.addr.059, %for.body.for.inc_crit_edge ]
  %shl = shl i32 %perm.057, 1
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then9, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %str.addr.053 = phi ptr [ %str.addr.059, %land.rhs.for.end_crit_edge ], [ %str.addr.059, %if.then9 ], [ %str, %entry.for.end_crit_edge ], [ %str.addr.1, %for.inc.for.end_crit_edge ]
  %3 = ptrtoint ptr %str.addr.053 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %str.addr.053, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_audit_perm_names(ptr noundef %ab, ptr nocapture noundef readonly %names, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %prev.0.off014 = phi i1 [ false, %entry ], [ %prev.1.off0, %for.inc.for.body_crit_edge ]
  %perm.013 = phi i32 [ 1, %entry ], [ %shl, %for.inc.for.body_crit_edge ]
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %fmt.010 = phi ptr [ @.str.29, %entry ], [ %fmt.1, %for.inc.for.body_crit_edge ]
  %and = and i32 %perm.013, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr ptr, ptr %names, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef %fmt.010, ptr noundef %1) #12
  %spec.select = select i1 %prev.0.off014, ptr %fmt.010, ptr @.str.30
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %fmt.1 = phi ptr [ %fmt.010, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then ]
  %prev.1.off0 = phi i1 [ %prev.0.off014, %for.body.for.inc_crit_edge ], [ true, %if.then ]
  %shl = shl i32 %perm.013, 1
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_audit_perm_mask(ptr noundef %ab, i32 noundef %mask, ptr noundef readonly %chrs, i32 noundef %chrsmask, ptr noundef readonly %names, i32 noundef %namesmask) local_unnamed_addr #0 align 64 {
entry:
  %str = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %str) #12
  %0 = call ptr @memset(ptr %str, i32 255, i32 33)
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.31) #12
  %and = and i32 %chrsmask, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq ptr %chrs, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @strlen(ptr noundef nonnull %chrs) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp54.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp54.not.i, label %if.then.aa_perm_mask_to_str.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.aa_perm_mask_to_str.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_perm_mask_to_str.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %str.addr.059.i = phi ptr [ %str.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %str, %if.then.for.body.i_crit_edge ]
  %str_size.addr.058.i = phi i32 [ %str_size.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ 33, %if.then.for.body.i_crit_edge ]
  %perm.057.i = phi i32 [ %shl.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.then.for.body.i_crit_edge ]
  %i.055.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %and.i = and i32 %perm.057.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %str_size.addr.058.i)
  %cmp1.i = icmp ult i32 %str_size.addr.058.i, 2
  br i1 %cmp1.i, label %land.rhs.i, label %if.end40.critedge.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b50.i = load i1, ptr @aa_perm_mask_to_str.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.aa_perm_mask_to_str.exit_crit_edge, label %if.then9.i, !prof !98

land.rhs.i.aa_perm_mask_to_str.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_perm_mask_to_str.exit

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @aa_perm_mask_to_str.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef null) #12
  br label %aa_perm_mask_to_str.exit

if.end40.critedge.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i8, ptr %chrs, i32 %i.055.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.059.i, i32 1
  %3 = ptrtoint ptr %str.addr.059.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %str.addr.059.i, align 1
  %dec.i = add i32 %str_size.addr.058.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end40.critedge.i, %for.body.i.for.inc.i_crit_edge
  %str_size.addr.1.i = phi i32 [ %dec.i, %if.end40.critedge.i ], [ %str_size.addr.058.i, %for.body.i.for.inc.i_crit_edge ]
  %str.addr.1.i = phi ptr [ %incdec.ptr.i, %if.end40.critedge.i ], [ %str.addr.059.i, %for.body.i.for.inc.i_crit_edge ]
  %shl.i = shl i32 %perm.057.i, 1
  %inc.i = add nuw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.aa_perm_mask_to_str.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.aa_perm_mask_to_str.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_perm_mask_to_str.exit

aa_perm_mask_to_str.exit:                         ; preds = %for.inc.i.aa_perm_mask_to_str.exit_crit_edge, %if.then9.i, %land.rhs.i.aa_perm_mask_to_str.exit_crit_edge, %if.then.aa_perm_mask_to_str.exit_crit_edge
  %str.addr.053.i = phi ptr [ %str.addr.059.i, %land.rhs.i.aa_perm_mask_to_str.exit_crit_edge ], [ %str.addr.059.i, %if.then9.i ], [ %str, %if.then.aa_perm_mask_to_str.exit_crit_edge ], [ %str.addr.1.i, %for.inc.i.aa_perm_mask_to_str.exit_crit_edge ]
  %4 = ptrtoint ptr %str.addr.053.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %str.addr.053.i, align 1
  %neg = xor i32 %chrsmask, -1
  %and3 = and i32 %neg, %mask
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.29, ptr noundef nonnull %str) #12
  %and5 = and i32 %and3, %namesmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %aa_perm_mask_to_str.exit.if.end8_crit_edge, label %if.then7

aa_perm_mask_to_str.exit.if.end8_crit_edge:       ; preds = %aa_perm_mask_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %aa_perm_mask_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.32) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %aa_perm_mask_to_str.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mask.addr.0 = phi i32 [ %and3, %if.then7 ], [ %and3, %aa_perm_mask_to_str.exit.if.end8_crit_edge ], [ %mask, %entry.if.end8_crit_edge ]
  %and9 = and i32 %mask.addr.0, %namesmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %tobool12.not = icmp eq ptr %names, null
  %or.cond31 = or i1 %tobool12.not, %tobool10.not
  br i1 %or.cond31, label %if.end8.if.end15_crit_edge, label %if.end8.for.body.i34_crit_edge

if.end8.for.body.i34_crit_edge:                   ; preds = %if.end8
  br label %for.body.i34

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

for.body.i34:                                     ; preds = %for.inc.i40.for.body.i34_crit_edge, %if.end8.for.body.i34_crit_edge
  %prev.0.off014.i = phi i1 [ %prev.1.off0.i, %for.inc.i40.for.body.i34_crit_edge ], [ false, %if.end8.for.body.i34_crit_edge ]
  %perm.013.i = phi i32 [ %shl.i37, %for.inc.i40.for.body.i34_crit_edge ], [ 1, %if.end8.for.body.i34_crit_edge ]
  %i.011.i = phi i32 [ %inc.i38, %for.inc.i40.for.body.i34_crit_edge ], [ 0, %if.end8.for.body.i34_crit_edge ]
  %fmt.010.i = phi ptr [ %fmt.1.i, %for.inc.i40.for.body.i34_crit_edge ], [ @.str.29, %if.end8.for.body.i34_crit_edge ]
  %and.i32 = and i32 %perm.013.i, %and9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i33 = icmp eq i32 %and.i32, 0
  br i1 %tobool.not.i33, label %for.body.i34.for.inc.i40_crit_edge, label %if.then.i36

for.body.i34.for.inc.i40_crit_edge:               ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i40

if.then.i36:                                      ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i35 = getelementptr ptr, ptr %names, i32 %i.011.i
  %5 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i35, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef %fmt.010.i, ptr noundef %6) #12
  %spec.select.i = select i1 %prev.0.off014.i, ptr %fmt.010.i, ptr @.str.30
  br label %for.inc.i40

for.inc.i40:                                      ; preds = %if.then.i36, %for.body.i34.for.inc.i40_crit_edge
  %fmt.1.i = phi ptr [ %fmt.010.i, %for.body.i34.for.inc.i40_crit_edge ], [ %spec.select.i, %if.then.i36 ]
  %prev.1.off0.i = phi i1 [ %prev.0.off014.i, %for.body.i34.for.inc.i40_crit_edge ], [ true, %if.then.i36 ]
  %shl.i37 = shl i32 %perm.013.i, 1
  %inc.i38 = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 32
  br i1 %exitcond.not.i39, label %for.inc.i40.if.end15_crit_edge, label %for.inc.i40.for.body.i34_crit_edge

for.inc.i40.for.body.i34_crit_edge:               ; preds = %for.inc.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i34

for.inc.i40.if.end15_crit_edge:                   ; preds = %for.inc.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end15:                                         ; preds = %for.inc.i40.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.31) #12
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %str) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aa_apply_modes_to_perms(ptr nocapture noundef readonly %profile, ptr nocapture noundef writeonly %perms) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %0 = load i32, ptr @aa_g_audit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not.i = icmp eq i32 %0, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.AUDIT_MODE.exit_crit_edge

entry.AUDIT_MODE.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %AUDIT_MODE.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %audit.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %1 = ptrtoint ptr %audit.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %audit.i, align 4
  br label %AUDIT_MODE.exit

AUDIT_MODE.exit:                                  ; preds = %if.end.i, %entry.AUDIT_MODE.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.end.i ], [ %0, %entry.AUDIT_MODE.exit_crit_edge ]
  %3 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %AUDIT_MODE.exit.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 3, label %AUDIT_MODE.exit.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb2
    i32 1, label %AUDIT_MODE.exit.sw.bb4_crit_edge
  ]

AUDIT_MODE.exit.sw.bb4_crit_edge:                 ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

AUDIT_MODE.exit.sw.epilog.sink.split_crit_edge:   ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

AUDIT_MODE.exit.sw.epilog_crit_edge:              ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #14
  %audit = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %4 = ptrtoint ptr %audit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %audit, align 4
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #14
  %audit3 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %5 = ptrtoint ptr %audit3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %audit3, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb2, %AUDIT_MODE.exit.sw.bb4_crit_edge
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb, %AUDIT_MODE.exit.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ -1, %sw.bb4 ], [ 0, %AUDIT_MODE.exit.sw.epilog.sink.split_crit_edge ], [ 0, %sw.bb ]
  %quiet5 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 3
  %6 = ptrtoint ptr %quiet5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %quiet5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %AUDIT_MODE.exit.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %7 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %sw.epilog.if.then_crit_edge, label %lor.lhs.false

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.epilog.if.then_crit_edge
  %kill = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 4
  br label %if.end12.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp7 = icmp eq i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp10 = icmp eq i32 %9, 1
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then11, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %complain = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 6
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then11, %if.then
  %complain.sink = phi ptr [ %complain, %if.then11 ], [ %kill, %if.then ]
  %10 = ptrtoint ptr %complain.sink to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %complain.sink, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aa_compute_perms(ptr nocapture noundef readonly %dfa, i32 noundef %state, ptr nocapture noundef %perms) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tables = getelementptr inbounds %struct.aa_dfa, ptr %dfa, i32 0, i32 3
  %0 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tables, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 4
  %arrayidx1 = getelementptr i32, ptr %td_data, i32 %state
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %or = and i32 %3, -2147483521
  %arrayidx9 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx9, align 4
  %td_data10 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 4
  %arrayidx12 = getelementptr i32, ptr %td_data10, i32 %state
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx12, align 4
  %and13 = and i32 %7, 127
  %shr = lshr i32 %7, 7
  %and19 = and i32 %shr, 127
  %8 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %perms, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %perms, i32 4
  %9 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and13, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %perms, i32 8
  %10 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %perms, i32 12
  %11 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and19, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %perms, i32 16
  %12 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx, i32 0, i32 26)
  %13 = load ptr, ptr %tables, align 4
  %td_data22 = getelementptr inbounds %struct.table_header, ptr %13, i32 0, i32 4
  %arrayidx24 = getelementptr i32, ptr %td_data22, i32 %state
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %shr25 = lshr i32 %15, 14
  %and26 = and i32 %shr25, 127
  %and.i = shl nuw nsw i32 %shr25, 8
  %shl.i = and i32 %and.i, 768
  %and1.i = shl nuw nsw i32 %and26, 18
  %shl2.i = and i32 %and1.i, 7340032
  %and3.i = shl nuw nsw i32 %and26, 19
  %shl4.i = and i32 %and3.i, 50331648
  %or.i = or i32 %shl.i, %or
  %or5.i = or i32 %or.i, %shl2.i
  %or35 = or i32 %or5.i, %shl4.i
  store i32 %or35, ptr %perms, align 4
  %16 = load ptr, ptr %arrayidx9, align 4
  %td_data38 = getelementptr inbounds %struct.table_header, ptr %16, i32 0, i32 4
  %arrayidx40 = getelementptr i32, ptr %td_data38, i32 %state
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx40, align 4
  %shr41 = lshr i32 %18, 14
  %and42 = and i32 %shr41, 127
  %and.i74 = shl nuw nsw i32 %shr41, 8
  %shl.i75 = and i32 %and.i74, 768
  %and1.i76 = shl nuw nsw i32 %and42, 18
  %shl2.i77 = and i32 %and1.i76, 7340032
  %and3.i79 = shl nuw nsw i32 %and42, 19
  %shl4.i80 = and i32 %and3.i79, 50331648
  %or.i78 = or i32 %shl.i75, %and13
  %or5.i81 = or i32 %or.i78, %shl2.i77
  %or45 = or i32 %or5.i81, %shl4.i80
  store i32 %or45, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %19 = load ptr, ptr %arrayidx9, align 4
  %td_data48 = getelementptr inbounds %struct.table_header, ptr %19, i32 0, i32 4
  %arrayidx50 = getelementptr i32, ptr %td_data48, i32 %state
  %20 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx50, align 4
  %shr51 = lshr i32 %21, 21
  %and.i82 = shl nuw nsw i32 %shr51, 8
  %shl.i83 = and i32 %and.i82, 768
  %and1.i84 = shl nuw nsw i32 %shr51, 18
  %shl2.i85 = and i32 %and1.i84, 7340032
  %and53 = shl nuw nsw i32 %shr51, 19
  %shl4.i88 = and i32 %and53, 50331648
  %or.i86 = or i32 %shl2.i85, %and19
  %or5.i89 = or i32 %or.i86, %shl.i83
  %or56 = or i32 %or5.i89, %shl4.i88
  store i32 %or56, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aa_perms_accum_raw(ptr nocapture noundef %accum, ptr nocapture noundef readonly %addend) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %deny = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 2
  %0 = ptrtoint ptr %deny to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %deny, align 4
  %deny1 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 2
  %2 = ptrtoint ptr %deny1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %deny1, align 4
  %or = or i32 %3, %1
  store i32 %or, ptr %deny1, align 4
  %4 = ptrtoint ptr %addend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addend, align 4
  %6 = load i32, ptr %deny, align 4
  %neg = xor i32 %6, -1
  %and = and i32 %5, %neg
  %7 = ptrtoint ptr %accum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %accum, align 4
  %and4 = and i32 %and, %8
  store i32 %and4, ptr %accum, align 4
  %audit = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 1
  %9 = ptrtoint ptr %audit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audit, align 4
  %11 = load i32, ptr %addend, align 4
  %and6 = and i32 %11, %10
  %audit7 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 1
  %12 = ptrtoint ptr %audit7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audit7, align 4
  %or8 = or i32 %13, %and6
  store i32 %or8, ptr %audit7, align 4
  %quiet = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 3
  %14 = ptrtoint ptr %quiet to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quiet, align 4
  %16 = load i32, ptr %addend, align 4
  %neg10 = xor i32 %16, -1
  %and11 = and i32 %15, %neg10
  %quiet12 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 3
  %17 = ptrtoint ptr %quiet12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quiet12, align 4
  %and13 = and i32 %and11, %18
  store i32 %and13, ptr %quiet12, align 4
  %kill = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 4
  %19 = ptrtoint ptr %kill to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %kill, align 4
  %21 = load i32, ptr %addend, align 4
  %neg15 = xor i32 %21, -1
  %and16 = and i32 %20, %neg15
  %kill17 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 4
  %22 = ptrtoint ptr %kill17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %kill17, align 4
  %or18 = or i32 %23, %and16
  store i32 %or18, ptr %kill17, align 4
  %stop = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 5
  %24 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stop, align 4
  %26 = load i32, ptr %addend, align 4
  %neg20 = xor i32 %26, -1
  %and21 = and i32 %25, %neg20
  %stop22 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 5
  %27 = ptrtoint ptr %stop22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stop22, align 4
  %or23 = or i32 %28, %and21
  store i32 %or23, ptr %stop22, align 4
  %complain = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 6
  %29 = ptrtoint ptr %complain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %complain, align 4
  %31 = load i32, ptr %addend, align 4
  %32 = load i32, ptr %deny, align 4
  %33 = or i32 %32, %31
  %34 = xor i32 %33, -1
  %and29 = and i32 %30, %34
  %complain30 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 6
  %35 = ptrtoint ptr %complain30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %complain30, align 4
  %or31 = or i32 %and29, %36
  store i32 %or31, ptr %complain30, align 4
  %cond = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 7
  %37 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cond, align 4
  %39 = load i32, ptr %addend, align 4
  %40 = load i32, ptr %deny, align 4
  %41 = or i32 %40, %39
  %42 = xor i32 %41, -1
  %and37 = and i32 %38, %42
  %cond38 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 7
  %43 = ptrtoint ptr %cond38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cond38, align 4
  %or39 = or i32 %and37, %44
  store i32 %or39, ptr %cond38, align 4
  %hide = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 8
  %45 = ptrtoint ptr %hide to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hide, align 4
  %47 = load i32, ptr %addend, align 4
  %neg41 = xor i32 %47, -1
  %and42 = and i32 %46, %neg41
  %hide43 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 8
  %48 = ptrtoint ptr %hide43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hide43, align 4
  %and44 = and i32 %and42, %49
  store i32 %and44, ptr %hide43, align 4
  %prompt = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 9
  %50 = ptrtoint ptr %prompt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prompt, align 4
  %52 = load i32, ptr %addend, align 4
  %53 = load i32, ptr %deny, align 4
  %54 = or i32 %53, %52
  %55 = xor i32 %54, -1
  %and50 = and i32 %51, %55
  %prompt51 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 9
  %56 = ptrtoint ptr %prompt51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %prompt51, align 4
  %or52 = or i32 %and50, %57
  store i32 %or52, ptr %prompt51, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aa_perms_accum(ptr nocapture noundef %accum, ptr nocapture noundef readonly %addend) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %deny = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 2
  %0 = ptrtoint ptr %deny to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %deny, align 4
  %deny1 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 2
  %2 = ptrtoint ptr %deny1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %deny1, align 4
  %or = or i32 %3, %1
  store i32 %or, ptr %deny1, align 4
  %4 = ptrtoint ptr %addend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addend, align 4
  %neg = xor i32 %or, -1
  %and = and i32 %5, %neg
  %6 = ptrtoint ptr %accum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %accum, align 4
  %and4 = and i32 %and, %7
  store i32 %and4, ptr %accum, align 4
  %audit = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 1
  %8 = ptrtoint ptr %audit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audit, align 4
  %and6 = and i32 %9, %and4
  %audit7 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 1
  %10 = ptrtoint ptr %audit7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %audit7, align 4
  %or8 = or i32 %11, %and6
  store i32 %or8, ptr %audit7, align 4
  %quiet = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 3
  %12 = ptrtoint ptr %quiet to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quiet, align 4
  %neg10 = xor i32 %and4, -1
  %and11 = and i32 %13, %neg10
  %quiet12 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 3
  %14 = ptrtoint ptr %quiet12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quiet12, align 4
  %and13 = and i32 %and11, %15
  store i32 %and13, ptr %quiet12, align 4
  %kill = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 4
  %16 = ptrtoint ptr %kill to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %kill, align 4
  %and16 = and i32 %17, %neg10
  %kill17 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 4
  %18 = ptrtoint ptr %kill17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %kill17, align 4
  %or18 = or i32 %19, %and16
  store i32 %or18, ptr %kill17, align 4
  %stop = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 5
  %20 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stop, align 4
  %and21 = and i32 %21, %neg10
  %stop22 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 5
  %22 = ptrtoint ptr %stop22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stop22, align 4
  %or23 = or i32 %23, %and21
  store i32 %or23, ptr %stop22, align 4
  %complain = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 6
  %24 = ptrtoint ptr %complain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %complain, align 4
  %26 = or i32 %and4, %or
  %27 = xor i32 %26, -1
  %and29 = and i32 %25, %27
  %complain30 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 6
  %28 = ptrtoint ptr %complain30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %complain30, align 4
  %or31 = or i32 %29, %and29
  store i32 %or31, ptr %complain30, align 4
  %cond = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 7
  %30 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cond, align 4
  %and37 = and i32 %31, %27
  %cond38 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 7
  %32 = ptrtoint ptr %cond38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cond38, align 4
  %or39 = or i32 %33, %and37
  store i32 %or39, ptr %cond38, align 4
  %hide = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 8
  %34 = ptrtoint ptr %hide to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hide, align 4
  %and42 = and i32 %35, %neg10
  %hide43 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 8
  %36 = ptrtoint ptr %hide43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hide43, align 4
  %and44 = and i32 %and42, %37
  store i32 %and44, ptr %hide43, align 4
  %prompt = getelementptr inbounds %struct.aa_perms, ptr %addend, i32 0, i32 9
  %38 = ptrtoint ptr %prompt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prompt, align 4
  %and50 = and i32 %39, %27
  %prompt51 = getelementptr inbounds %struct.aa_perms, ptr %accum, i32 0, i32 9
  %40 = ptrtoint ptr %prompt51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prompt51, align 4
  %or52 = or i32 %41, %and50
  store i32 %or52, ptr %prompt51, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_profile_match_label(ptr noundef %profile, ptr noundef %label, i32 noundef %type, i32 noundef %request, ptr noundef %perms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %policy = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  %0 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policy, align 4
  %arrayidx = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 12, i32 1, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %type to i8
  %call = tail call i32 @aa_dfa_next(ptr noundef %1, i32 noundef %3, i8 noundef zeroext %conv) #12
  %call2 = tail call i32 @aa_label_match(ptr noundef %profile, ptr noundef %label, i32 noundef %call, i1 noundef zeroext false, i32 noundef %request, ptr noundef %perms) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_next(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_match(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_profile_label_perm(ptr noundef %profile, ptr noundef %target, i32 noundef %request, i32 noundef %type, ptr nocapture noundef %deny, ptr noundef %sa) local_unnamed_addr #0 align 64 {
entry:
  %perms = alloca %struct.aa_perms, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms) #12
  %0 = call ptr @memset(ptr %perms, i32 255, i32 44)
  %label = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %1 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %label1 = getelementptr inbounds %struct.apparmor_audit_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %label1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %label, ptr %label1, align 4
  %label2 = getelementptr inbounds %struct.aa_profile, ptr %target, i32 0, i32 25
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.apparmor_audit_data, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %label2, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %request3 = getelementptr inbounds %struct.apparmor_audit_data, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %request3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %request, ptr %request3, align 4
  %policy.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  %10 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %policy.i, align 4
  %arrayidx.i = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 12, i32 1, i32 16
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %type to i8
  %call.i = tail call i32 @aa_dfa_next(ptr noundef %11, i32 noundef %13, i8 noundef zeroext %conv.i) #12
  %call2.i = call i32 @aa_label_match(ptr noundef %profile, ptr noundef %label2, i32 noundef %call.i, i1 noundef zeroext false, i32 noundef %request, ptr noundef nonnull %perms) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %14 = load i32, ptr @aa_g_audit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.AUDIT_MODE.exit.i_crit_edge

entry.AUDIT_MODE.exit.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %AUDIT_MODE.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %audit.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %15 = ptrtoint ptr %audit.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %audit.i.i, align 4
  br label %AUDIT_MODE.exit.i

AUDIT_MODE.exit.i:                                ; preds = %if.end.i.i, %entry.AUDIT_MODE.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %16, %if.end.i.i ], [ %14, %entry.AUDIT_MODE.exit.i_crit_edge ]
  %17 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %retval.0.i.i, label %AUDIT_MODE.exit.i.sw.epilog.i_crit_edge [
    i32 4, label %sw.bb.i
    i32 3, label %AUDIT_MODE.exit.i.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb2.i
    i32 1, label %AUDIT_MODE.exit.i.sw.bb4.i_crit_edge
  ]

AUDIT_MODE.exit.i.sw.bb4.i_crit_edge:             ; preds = %AUDIT_MODE.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4.i

AUDIT_MODE.exit.i.sw.epilog.sink.split.i_crit_edge: ; preds = %AUDIT_MODE.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

AUDIT_MODE.exit.i.sw.epilog.i_crit_edge:          ; preds = %AUDIT_MODE.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %AUDIT_MODE.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %audit.i = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %18 = ptrtoint ptr %audit.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %audit.i, align 4
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %AUDIT_MODE.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %audit3.i = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %19 = ptrtoint ptr %audit3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %audit3.i, align 4
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %sw.bb2.i, %AUDIT_MODE.exit.i.sw.bb4.i_crit_edge
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb4.i, %sw.bb.i, %AUDIT_MODE.exit.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ -1, %sw.bb4.i ], [ 0, %AUDIT_MODE.exit.i.sw.epilog.sink.split.i_crit_edge ], [ 0, %sw.bb.i ]
  %quiet5.i = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 3
  %20 = ptrtoint ptr %quiet5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %quiet5.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %AUDIT_MODE.exit.i.sw.epilog.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %21 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  br i1 %cmp.i, label %sw.epilog.i.if.then.i_crit_edge, label %lor.lhs.false.i

sw.epilog.i.if.then.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %mode.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %22 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp6.i = icmp eq i32 %23, 2
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.epilog.i.if.then.i_crit_edge
  %kill.i = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 4
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp7.i = icmp eq i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp10.i = icmp eq i32 %23, 1
  %or.cond.i = select i1 %cmp7.i, i1 true, i1 %cmp10.i
  br i1 %or.cond.i, label %if.then11.i, label %if.else.i.aa_apply_modes_to_perms.exit_crit_edge

if.else.i.aa_apply_modes_to_perms.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_apply_modes_to_perms.exit

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %complain.i = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 6
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.then11.i, %if.then.i
  %complain.sink.i = phi ptr [ %complain.i, %if.then11.i ], [ %kill.i, %if.then.i ]
  %24 = ptrtoint ptr %complain.sink.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %complain.sink.i, align 4
  br label %aa_apply_modes_to_perms.exit

aa_apply_modes_to_perms.exit:                     ; preds = %if.end12.sink.split.i, %if.else.i.aa_apply_modes_to_perms.exit_crit_edge
  %deny5 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 2
  %25 = ptrtoint ptr %deny5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %deny5, align 4
  %and = and i32 %26, %request
  %27 = ptrtoint ptr %deny to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %deny, align 4
  %or = or i32 %28, %and
  store i32 %or, ptr %deny, align 4
  %29 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %perms, align 4
  %neg.i = xor i32 %30, -1
  %or.i = or i32 %26, %neg.i
  %and.i = and i32 %or.i, %request
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i18, label %if.else.i20, !prof !98

if.then.i18:                                      ; preds = %aa_apply_modes_to_perms.exit
  %audit.i16 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %31 = ptrtoint ptr %audit.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %audit.i16, align 4
  %and4.i = and i32 %32, %request
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %tobool6.not.i = icmp eq ptr %sa, null
  %or.cond.i17 = or i1 %tobool6.not.i, %tobool5.not.i
  br i1 %or.cond.i17, label %if.then.i18.aa_check_perms.exit_crit_edge, label %if.then.i18.if.end35.i_crit_edge

if.then.i18.if.end35.i_crit_edge:                 ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then.i18.aa_check_perms.exit_crit_edge:        ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_check_perms.exit

if.else.i20:                                      ; preds = %aa_apply_modes_to_perms.exit
  %kill.i19 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 4
  %33 = ptrtoint ptr %kill.i19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %kill.i19, align 4
  %and8.i = and i32 %34, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else11.i, label %if.else.i20.if.end16.i_crit_edge

if.else.i20.if.end16.i_crit_edge:                 ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.else11.i:                                      ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #14
  %complain.i21 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 6
  %35 = ptrtoint ptr %complain.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %complain.i21, align 4
  %and12.i = and i32 %36, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and12.i)
  %cmp.i22 = icmp eq i32 %and.i, %and12.i
  %..i = select i1 %cmp.i22, i32 1, i32 2
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else11.i, %if.else.i20.if.end16.i_crit_edge
  %type.0.i = phi i32 [ 6, %if.else.i20.if.end16.i_crit_edge ], [ %..i, %if.else11.i ]
  %hide.i = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 8
  %37 = ptrtoint ptr %hide.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hide.i, align 4
  %and17.i = and i32 %38, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and17.i)
  %cmp18.i = icmp eq i32 %and.i, %and17.i
  %spec.select.i = select i1 %cmp18.i, i32 -2, i32 -13
  %tobool23.not.i = icmp eq ptr %sa, null
  br i1 %tobool23.not.i, label %if.end16.i.aa_check_perms.exit_crit_edge, label %lor.lhs.false24.i

if.end16.i.aa_check_perms.exit_crit_edge:         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_check_perms.exit

lor.lhs.false24.i:                                ; preds = %if.end16.i
  %quiet.i = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 3
  %39 = ptrtoint ptr %quiet.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quiet.i, align 4
  %neg21.i = xor i32 %40, -1
  %and22.i = and i32 %and.i, %neg21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool25.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool25.not.i, label %lor.lhs.false24.i.aa_check_perms.exit_crit_edge, label %lor.lhs.false24.i.if.end35.i_crit_edge

lor.lhs.false24.i.if.end35.i_crit_edge:           ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

lor.lhs.false24.i.aa_check_perms.exit_crit_edge:  ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_check_perms.exit

if.end35.i:                                       ; preds = %lor.lhs.false24.i.if.end35.i_crit_edge, %if.then.i18.if.end35.i_crit_edge
  %request.addr.0.i = phi i32 [ %request, %lor.lhs.false24.i.if.end35.i_crit_edge ], [ %and4.i, %if.then.i18.if.end35.i_crit_edge ]
  %type.1.i = phi i32 [ %type.0.i, %lor.lhs.false24.i.if.end35.i_crit_edge ], [ 0, %if.then.i18.if.end35.i_crit_edge ]
  %error.1.i = phi i32 [ %spec.select.i, %lor.lhs.false24.i.if.end35.i_crit_edge ], [ 0, %if.then.i18.if.end35.i_crit_edge ]
  %denied.0.i = phi i32 [ %and22.i, %lor.lhs.false24.i.if.end35.i_crit_edge ], [ 0, %if.then.i18.if.end35.i_crit_edge ]
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %label31.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %label31.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %label, ptr %label31.i, align 4
  %44 = load ptr, ptr %1, align 4
  %request32.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %request32.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %request.addr.0.i, ptr %request32.i, align 4
  %46 = load ptr, ptr %1, align 4
  %denied33.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %denied33.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %denied.0.i, ptr %denied33.i, align 4
  %48 = load ptr, ptr %1, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %error.1.i, ptr %48, align 4
  call void @aa_audit_msg(i32 noundef %type.1.i, ptr noundef nonnull %sa, ptr noundef nonnull @aa_audit_perms_cb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.1.i)
  %cmp36.i = icmp eq i32 %type.1.i, 1
  %spec.select = select i1 %cmp36.i, i32 0, i32 %error.1.i
  br label %aa_check_perms.exit

aa_check_perms.exit:                              ; preds = %if.end35.i, %lor.lhs.false24.i.aa_check_perms.exit_crit_edge, %if.end16.i.aa_check_perms.exit_crit_edge, %if.then.i18.aa_check_perms.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i18.aa_check_perms.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false24.i.aa_check_perms.exit_crit_edge ], [ %spec.select.i, %if.end16.i.aa_check_perms.exit_crit_edge ], [ %spec.select, %if.end35.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_check_perms(ptr noundef %profile, ptr nocapture noundef readonly %perms, i32 noundef %request, ptr noundef %sa, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %perms, align 4
  %neg = xor i32 %1, -1
  %deny = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 2
  %2 = ptrtoint ptr %deny to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %deny, align 4
  %or = or i32 %3, %neg
  %and = and i32 %or, %request
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !98

if.then:                                          ; preds = %entry
  %audit = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %4 = ptrtoint ptr %audit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audit, align 4
  %and4 = and i32 %5, %request
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %tobool6.not = icmp eq ptr %sa, null
  %or.cond = or i1 %tobool6.not, %tobool5.not
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then.if.end35_crit_edge

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %kill = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 4
  %6 = ptrtoint ptr %kill to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kill, align 4
  %and8 = and i32 %7, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else11, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %complain = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 6
  %8 = ptrtoint ptr %complain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %complain, align 4
  %and12 = and i32 %9, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and12)
  %cmp = icmp eq i32 %and, %and12
  %. = select i1 %cmp, i32 1, i32 2
  br label %if.end16

if.end16:                                         ; preds = %if.else11, %if.else.if.end16_crit_edge
  %type.0 = phi i32 [ 6, %if.else.if.end16_crit_edge ], [ %., %if.else11 ]
  %hide = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 8
  %10 = ptrtoint ptr %hide to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hide, align 4
  %and17 = and i32 %11, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and17)
  %cmp18 = icmp eq i32 %and, %and17
  %spec.select = select i1 %cmp18, i32 -2, i32 -13
  %tobool23.not = icmp eq ptr %sa, null
  br i1 %tobool23.not, label %if.end16.cleanup_crit_edge, label %lor.lhs.false24

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false24:                                  ; preds = %if.end16
  %quiet = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 3
  %12 = ptrtoint ptr %quiet to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quiet, align 4
  %neg21 = xor i32 %13, -1
  %and22 = and i32 %and, %neg21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool25.not = icmp eq i32 %and22, 0
  br i1 %tobool25.not, label %lor.lhs.false24.cleanup_crit_edge, label %lor.lhs.false24.if.end35_crit_edge

lor.lhs.false24.if.end35_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false24.if.end35_crit_edge, %if.then.if.end35_crit_edge
  %request.addr.0 = phi i32 [ %request, %lor.lhs.false24.if.end35_crit_edge ], [ %and4, %if.then.if.end35_crit_edge ]
  %type.1 = phi i32 [ %type.0, %lor.lhs.false24.if.end35_crit_edge ], [ 0, %if.then.if.end35_crit_edge ]
  %error.1 = phi i32 [ %spec.select, %lor.lhs.false24.if.end35_crit_edge ], [ 0, %if.then.if.end35_crit_edge ]
  %denied.0 = phi i32 [ %and22, %lor.lhs.false24.if.end35_crit_edge ], [ 0, %if.then.if.end35_crit_edge ]
  %label = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %14 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %label31 = getelementptr inbounds %struct.apparmor_audit_data, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %label31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %label, ptr %label31, align 4
  %18 = load ptr, ptr %14, align 4
  %request32 = getelementptr inbounds %struct.apparmor_audit_data, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %request32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %request.addr.0, ptr %request32, align 4
  %20 = load ptr, ptr %14, align 4
  %denied33 = getelementptr inbounds %struct.apparmor_audit_data, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %denied33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %denied.0, ptr %denied33, align 4
  %22 = load ptr, ptr %14, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %error.1, ptr %22, align 4
  tail call void @aa_audit_msg(i32 noundef %type.1, ptr noundef nonnull %sa, ptr noundef %cb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.1)
  %cmp36 = icmp eq i32 %type.1, 1
  %spec.select70 = select i1 %cmp36, i32 0, i32 %error.1
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %lor.lhs.false24.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false24.cleanup_crit_edge ], [ %spec.select, %if.end16.cleanup_crit_edge ], [ %spec.select70, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aa_audit_perms_cb(ptr noundef %ab, ptr nocapture noundef readonly %va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %request = getelementptr inbounds %struct.apparmor_audit_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.36) #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %request1 = getelementptr inbounds %struct.apparmor_audit_data, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %request1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %request1, align 4
  tail call void @aa_audit_perm_mask(ptr noundef %ab, i32 noundef %8, ptr noundef nonnull @aa_file_perm_chrs, i32 noundef 360511, ptr noundef nonnull @aa_file_perm_names, i32 noundef -267386881)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %denied = getelementptr inbounds %struct.apparmor_audit_data, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %denied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.37) #12
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %denied4 = getelementptr inbounds %struct.apparmor_audit_data, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %denied4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %denied4, align 4
  tail call void @aa_audit_perm_mask(ptr noundef %ab, i32 noundef %16, ptr noundef nonnull @aa_file_perm_chrs, i32 noundef 360511, ptr noundef nonnull @aa_file_perm_names, i32 noundef -267386881)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.38) #12
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
  %arrayidx7 = getelementptr ptr, ptr %vec, i32 %sub
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx7, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ns, align 4
  %27 = getelementptr inbounds %struct.apparmor_audit_data, ptr %18, i32 0, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void @aa_label_xaudit(ptr noundef %ab, ptr noundef %26, ptr noundef %29, i32 noundef 0, i32 noundef 2592) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_policy_init(ptr noundef %policy, ptr noundef %prefix, ptr noundef %name, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prefix, null
  %call7 = tail call i32 @strlen(ptr noundef %name) #17
  br i1 %tobool.not, label %if.end8.i.i75, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %prefix) #17
  %add = add i32 %call7, %call
  %add.i = add i32 %add, 7
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef %gfp) #16
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.cleanup_crit_edge, label %aa_str_alloc.exit

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

aa_str_alloc.exit:                                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #12
  %0 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %call9.i.i, align 128
  %name.i = getelementptr inbounds %struct.counted_str, ptr %call9.i.i, i32 0, i32 1
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.33, ptr noundef nonnull %prefix, ptr noundef %name)
  br label %if.end17

if.end8.i.i75:                                    ; preds = %entry
  %add.i37 = add i32 %call7, 5
  %call9.i.i74 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i37, i32 noundef %gfp) #16
  %tobool.not.i77 = icmp eq ptr %call9.i.i74, null
  br i1 %tobool.not.i77, label %if.end8.i.i75.cleanup_crit_edge, label %aa_str_alloc.exit84

if.end8.i.i75.cleanup_crit_edge:                  ; preds = %if.end8.i.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

aa_str_alloc.exit84:                              ; preds = %if.end8.i.i75
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i74, i32 noundef 4) #12
  %1 = ptrtoint ptr %call9.i.i74 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call9.i.i74, align 128
  %name.i81 = getelementptr inbounds %struct.counted_str, ptr %call9.i.i74, i32 0, i32 1
  %call12 = tail call ptr @strcpy(ptr noundef nonnull %name.i81, ptr noundef %name) #17
  br label %if.end17

if.end17:                                         ; preds = %aa_str_alloc.exit84, %aa_str_alloc.exit
  %hname.0 = phi ptr [ %name.i, %aa_str_alloc.exit ], [ %name.i81, %aa_str_alloc.exit84 ]
  %hname18 = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 1
  %2 = ptrtoint ptr %hname18 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hname.0, ptr %hname18, align 4
  %call.i = tail call ptr @strim(ptr noundef nonnull %hname.0) #12
  %call1.i = tail call ptr @strstr(ptr noundef %call.i, ptr noundef nonnull @.str) #12
  %tobool.not7.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not7.i, label %if.end17.basename.exit_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.basename.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %basename.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %split.08.i = phi ptr [ %call2.i, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %if.end17.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %split.08.i, i32 2
  %call2.i = tail call ptr @strstr(ptr noundef %add.ptr.i, ptr noundef nonnull @.str) #12
  %tobool.not.i85 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i85, label %for.body.i.basename.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.basename.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %basename.exit

basename.exit:                                    ; preds = %for.body.i.basename.exit_crit_edge, %if.end17.basename.exit_crit_edge
  %hname.addr.0.lcssa.i = phi ptr [ %call.i, %if.end17.basename.exit_crit_edge ], [ %add.ptr.i, %for.body.i.basename.exit_crit_edge ]
  %3 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hname.addr.0.lcssa.i, ptr %policy, align 4
  %list = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 2
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 3
  %6 = ptrtoint ptr %profiles to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %profiles, ptr %profiles, align 4
  %prev.i86 = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %profiles, ptr %prev.i86, align 4
  br label %cleanup

cleanup:                                          ; preds = %basename.exit, %if.end8.i.i75.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %tobool15.not93 = phi i1 [ true, %basename.exit ], [ false, %if.end8.i.i.cleanup_crit_edge ], [ false, %if.end8.i.i75.cleanup_crit_edge ]
  ret i1 %tobool15.not93
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_policy_destroy(ptr noundef %policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 3
  %0 = ptrtoint ptr %profiles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %profiles, align 4
  %cmp.i.not = icmp eq ptr %1, %profiles
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %prev = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %3, inttoptr (i32 290 to ptr)
  br i1 %cmp.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !98

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 520, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.aa_policy_destroy) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %list = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 2
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list, align 4
  %cmp.i70.not = icmp eq ptr %5, %list
  br i1 %cmp.i70.not, label %if.end.if.end54_crit_edge, label %land.rhs28

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.rhs28:                                       ; preds = %if.end
  %prev30 = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev30, align 4
  %cmp31.not = icmp eq ptr %7, inttoptr (i32 290 to ptr)
  br i1 %cmp31.not, label %land.rhs28.if.end54_crit_edge, label %do.end48, !prof !98

land.rhs28.if.end54_crit_edge:                    ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

do.end48:                                         ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 521, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.aa_policy_destroy) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %land.rhs28.if.end54_crit_edge, %if.end.if.end54_crit_edge
  %hname = getelementptr inbounds %struct.aa_policy, ptr %policy, i32 0, i32 1
  %8 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hname, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end54.aa_put_str.exit_crit_edge, label %if.then.i

if.end54.aa_put_str.exit_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_str.exit

if.then.i:                                        ; preds = %if.end54
  %add.ptr.i = getelementptr i8, ptr %9, i32 -4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #12, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_str.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.aa_put_str.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_str.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 3) #12
  br label %aa_put_str.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  br label %aa_put_str.exit

aa_put_str.exit:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_str.exit_crit_edge, %if.end54.aa_put_str.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_xaudit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @allperms, !1, !"allperms", i1 false, i1 false}
!1 = !{!"../security/apparmor/lib.c", i32 24, i32 17}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/apparmor/lib.c", i32 53, i32 23}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/lib.c", i32 132, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @aa_info_message._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @aa_info_message._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @aa_file_perm_chrs, !11, !"aa_file_perm_chrs", i1 false, i1 false}
!11 = !{!"../security/apparmor/lib.c", i32 153, i32 12}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/apparmor/lib.c", i32 155, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/apparmor/lib.c", i32 156, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/apparmor/lib.c", i32 157, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/apparmor/lib.c", i32 158, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/apparmor/lib.c", i32 160, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/apparmor/lib.c", i32 161, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/apparmor/lib.c", i32 162, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/apparmor/lib.c", i32 163, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/apparmor/lib.c", i32 165, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/apparmor/lib.c", i32 166, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/apparmor/lib.c", i32 167, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/apparmor/lib.c", i32 168, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/apparmor/lib.c", i32 170, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/apparmor/lib.c", i32 171, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/apparmor/lib.c", i32 172, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/apparmor/lib.c", i32 173, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/apparmor/lib.c", i32 175, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/apparmor/lib.c", i32 176, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/apparmor/lib.c", i32 177, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/apparmor/lib.c", i32 178, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/apparmor/lib.c", i32 180, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/apparmor/lib.c", i32 190, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/apparmor/lib.c", i32 191, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/apparmor/lib.c", i32 192, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/apparmor/lib.c", i32 193, i32 2}
!62 = !{ptr @aa_file_perm_names, !63, !"aa_file_perm_names", i1 false, i1 false}
!63 = !{!"../security/apparmor/lib.c", i32 154, i32 13}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../security/apparmor/lib.c", i32 211, i32 8}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/apparmor/lib.c", i32 224, i32 20}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/apparmor/lib.c", i32 233, i32 11}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/apparmor/lib.c", i32 244, i32 23}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/apparmor/lib.c", i32 250, i32 25}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/apparmor/lib.c", i32 497, i32 19}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/apparmor/lib.c", i32 520, i32 2}
!78 = !{ptr @__func__.aa_policy_destroy, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../security/apparmor/lib.c", i32 521, i32 2}
!81 = !{ptr @nullperms, !82, !"nullperms", i1 false, i1 false}
!82 = !{!"../security/apparmor/lib.c", i32 23, i32 17}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../security/apparmor/lib.c", i32 267, i32 24}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../security/apparmor/lib.c", i32 273, i32 24}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../security/apparmor/lib.c", i32 278, i32 23}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148768943}
!100 = !{i64 2148683383, i64 2148683415, i64 2148683444, i64 2148683478, i64 2148683509, i64 2148683532}
!101 = !{i64 2149965178}
