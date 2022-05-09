; ModuleID = '/llk/IR_all_yes/security/safesetid/lsm.c_pt.bc'
source_filename = "../security/safesetid/lsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.security_list_options = type { ptr }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.setid_ruleset = type { [256 x %struct.hlist_head], ptr, %struct.callback_head, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.setid_rule = type { %struct.hlist_node, %union.kid_t, %union.kid_t, i32 }
%union.kid_t = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.8 }
%struct.atomic_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.8 = type { %struct.callback_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"safesetid\00", [22 x i8] zeroinitializer }, align 32
@__lsm_safesetid_security_init = internal global %struct.lsm_info { ptr @.str, i32 0, i32 0, ptr null, ptr @safesetid_security_init, ptr null }, section ".lsm_info.init", align 4
@safesetid_initialized = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@safesetid_setuid_rules = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@safesetid_setgid_rules = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@safesetid_security_hooks = internal global { [3 x %struct.security_hook_list], [36 x i8] } { [3 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 436), %union.security_list_options { ptr @safesetid_task_fix_setuid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 440), %union.security_list_options { ptr @safesetid_task_fix_setgid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 32), %union.security_list_options { ptr @safesetid_security_capable }, ptr null }], [36 x i8] zeroinitializer }, align 32
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@setid_policy_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/safesetid/lsm.c\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@setid_policy_lookup.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@id_permitted_for_cred._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.1, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014SafeSetID: UID transition ((%d,%d,%d) -> %d) blocked\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"id_permitted_for_cred\00", [42 x i8] zeroinitializer }, align 32
@id_permitted_for_cred._entry_ptr = internal global ptr @id_permitted_for_cred._entry, section ".printk_index", align 4
@id_permitted_for_cred._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.1, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014SafeSetID: GID transition ((%d,%d,%d) -> %d) blocked\0A\00", [40 x i8] zeroinitializer }, align 32
@id_permitted_for_cred._entry_ptr.11 = internal global ptr @id_permitted_for_cred._entry.9, section ".printk_index", align 4
@safesetid_security_capable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.1, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"\014SafeSetID: Operation requires CAP_SETUID, which is not available to UID %u for operations besides approved set*uid transitions\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"safesetid_security_capable\00", [37 x i8] zeroinitializer }, align 32
@safesetid_security_capable._entry_ptr = internal global ptr @safesetid_security_capable._entry, section ".printk_index", align 4
@safesetid_security_capable._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.1, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"\014SafeSetID: Operation requires CAP_SETGID, which is not available to GID %u for operations besides approved set*gid transitions\0A\00", [62 x i8] zeroinitializer }, align 32
@safesetid_security_capable._entry_ptr.16 = internal global ptr @safesetid_security_capable._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 263, i32 10 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"safesetid_setuid_rules\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 27, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"safesetid_setgid_rules\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 28, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"safesetid_security_hooks\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 244, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 73, i32 9 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 178, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 182, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 125, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [28 x i8] c"../security/safesetid/lsm.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 139, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__lsm_safesetid_security_init, ptr @id_permitted_for_cred._entry, ptr @id_permitted_for_cred._entry.9, ptr @id_permitted_for_cred._entry_ptr, ptr @id_permitted_for_cred._entry_ptr.11, ptr @safesetid_security_capable._entry, ptr @safesetid_security_capable._entry.14, ptr @safesetid_security_capable._entry_ptr, ptr @safesetid_security_capable._entry_ptr.16, ptr @.str, ptr @safesetid_setuid_rules, ptr @safesetid_setgid_rules, ptr @safesetid_security_hooks, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safesetid_setuid_rules to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safesetid_setgid_rules to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safesetid_security_hooks to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_permitted_for_cred._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_permitted_for_cred._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safesetid_security_capable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safesetid_security_capable._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_setid_policy_lookup(ptr nocapture noundef readonly %policy, [1 x i32] %src.coerce, [1 x i32] %dst.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.setid_ruleset, ptr %policy, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %uid.coerce.fca.0.extract.i = extractvalue [1 x i32] %src.coerce, 0
  %mul.i.i = mul i32 %uid.coerce.fca.0.extract.i, 1640531527
  %shr.i = lshr i32 %mul.i.i, 24
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr %policy, i32 0, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %rule.0135 = load ptr, ptr %arrayidx, align 4
  %tobool7.not136 = icmp eq ptr %rule.0135, null
  br i1 %tobool7.not136, label %if.then.cleanup_crit_edge, label %for.body.lr.ph

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then
  %uid.coerce.fca.0.extract.i6.i121 = extractvalue [1 x i32] %dst.coerce, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rule.0138 = phi ptr [ %rule.0135, %for.body.lr.ph ], [ %rule.0, %for.inc.for.body_crit_edge ]
  %result.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %result.1, %for.inc.for.body_crit_edge ]
  %src_id = getelementptr inbounds %struct.setid_rule, ptr %rule.0138, i32 0, i32 1
  %4 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack116 = load i32, ptr %src_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack116, i32 %uid.coerce.fca.0.extract.i)
  %cmp.i = icmp eq i32 %.unpack116, %uid.coerce.fca.0.extract.i
  br i1 %cmp.i, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %dst_id = getelementptr inbounds %struct.setid_rule, ptr %rule.0138, i32 0, i32 2
  %5 = ptrtoint ptr %dst_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack117 = load i32, ptr %dst_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack117, i32 %uid.coerce.fca.0.extract.i6.i121)
  %cmp.i122 = icmp eq i32 %.unpack117, %uid.coerce.fca.0.extract.i6.i121
  br i1 %cmp.i122, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %result.1 = phi i32 [ %result.0137, %for.body.for.inc_crit_edge ], [ 1, %if.end.for.inc_crit_edge ]
  %6 = ptrtoint ptr %rule.0138 to i32
  call void @__asan_load4_noabort(i32 %6)
  %rule.0 = load ptr, ptr %rule.0138, align 4
  %tobool7.not = icmp eq ptr %rule.0, null
  br i1 %tobool7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %entry
  %gid.coerce.fca.0.extract.i = extractvalue [1 x i32] %src.coerce, 0
  %mul.i.i123 = mul i32 %gid.coerce.fca.0.extract.i, 1640531527
  %shr.i124 = lshr i32 %mul.i.i123, 24
  %arrayidx36 = getelementptr [256 x %struct.hlist_head], ptr %policy, i32 0, i32 %shr.i124
  %7 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %rule.1130 = load ptr, ptr %arrayidx36, align 4
  %tobool48.not131 = icmp eq ptr %rule.1130, null
  br i1 %tobool48.not131, label %if.then30.cleanup_crit_edge, label %for.body49.lr.ph

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body49.lr.ph:                                 ; preds = %if.then30
  %gid.coerce.fca.0.extract.i6.i126 = extractvalue [1 x i32] %dst.coerce, 0
  br label %for.body49

for.body49:                                       ; preds = %for.inc62.for.body49_crit_edge, %for.body49.lr.ph
  %rule.1133 = phi ptr [ %rule.1130, %for.body49.lr.ph ], [ %rule.1, %for.inc62.for.body49_crit_edge ]
  %result.2132 = phi i32 [ 0, %for.body49.lr.ph ], [ %result.3, %for.inc62.for.body49_crit_edge ]
  %src_id50 = getelementptr inbounds %struct.setid_rule, ptr %rule.1133, i32 0, i32 1
  %8 = ptrtoint ptr %src_id50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %src_id50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %gid.coerce.fca.0.extract.i)
  %cmp.i125 = icmp eq i32 %.unpack, %gid.coerce.fca.0.extract.i
  br i1 %cmp.i125, label %if.end55, label %for.body49.for.inc62_crit_edge

for.body49.for.inc62_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62

if.end55:                                         ; preds = %for.body49
  %dst_id56 = getelementptr inbounds %struct.setid_rule, ptr %rule.1133, i32 0, i32 2
  %9 = ptrtoint ptr %dst_id56 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack115 = load i32, ptr %dst_id56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack115, i32 %gid.coerce.fca.0.extract.i6.i126)
  %cmp.i127 = icmp eq i32 %.unpack115, %gid.coerce.fca.0.extract.i6.i126
  br i1 %cmp.i127, label %if.end55.cleanup_crit_edge, label %if.end55.for.inc62_crit_edge

if.end55.for.inc62_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc62:                                        ; preds = %if.end55.for.inc62_crit_edge, %for.body49.for.inc62_crit_edge
  %result.3 = phi i32 [ %result.2132, %for.body49.for.inc62_crit_edge ], [ 1, %if.end55.for.inc62_crit_edge ]
  %10 = ptrtoint ptr %rule.1133 to i32
  call void @__asan_load4_noabort(i32 %10)
  %rule.1 = load ptr, ptr %rule.1133, align 4
  %tobool48.not = icmp eq ptr %rule.1, null
  br i1 %tobool48.not, label %for.inc62.cleanup_crit_edge, label %for.inc62.for.body49_crit_edge

for.inc62.for.body49_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49

for.inc62.cleanup_crit_edge:                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc62.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then30.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %result.1, %for.inc.cleanup_crit_edge ], [ 2, %if.end55.cleanup_crit_edge ], [ %result.3, %for.inc62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @safesetid_security_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @security_add_hooks(ptr noundef nonnull @safesetid_security_hooks, i32 noundef 3, ptr noundef nonnull @.str) #7
  store i32 1, ptr @safesetid_initialized, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safesetid_task_fix_setuid(ptr nocapture noundef readonly %new, ptr noundef readonly %old, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uid = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 4
  %0 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %0)
  %.compoundliteral.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %.fca.0.insert30 = insertvalue [1 x i32] poison, i32 %.compoundliteral.sroa.0.0.copyload, 0
  %call = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert30, [1 x i32] [i32 -1], i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %uid6 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 4
  %1 = ptrtoint ptr %uid6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.compoundliteral5.sroa.0.0.copyload = load i32, ptr %uid6, align 4
  %.fca.0.insert28 = insertvalue [1 x i32] poison, i32 %.compoundliteral5.sroa.0.0.copyload, 0
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack134.i = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral5.sroa.0.0.copyload, i32 %.unpack134.i)
  %cmp.i.i = icmp eq i32 %.compoundliteral5.sroa.0.0.copyload, %.unpack134.i
  br i1 %cmp.i.i, label %if.end.land.lhs.true_crit_edge, label %lor.lhs.false.i

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false.i:                                  ; preds = %if.end
  %euid.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 8
  %3 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack135.i = load i32, ptr %euid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral5.sroa.0.0.copyload, i32 %.unpack135.i)
  %cmp.i138.i = icmp eq i32 %.compoundliteral5.sroa.0.0.copyload, %.unpack135.i
  br i1 %cmp.i138.i, label %lor.lhs.false.i.land.lhs.true_crit_edge, label %lor.lhs.false7.i

lor.lhs.false.i.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %suid.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 6
  %4 = ptrtoint ptr %suid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack136.i = load i32, ptr %suid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral5.sroa.0.0.copyload, i32 %.unpack136.i)
  %cmp.i140.i = icmp eq i32 %.compoundliteral5.sroa.0.0.copyload, %.unpack136.i
  br i1 %cmp.i140.i, label %lor.lhs.false7.i.land.lhs.true_crit_edge, label %if.end29.i

lor.lhs.false7.i.land.lhs.true_crit_edge:         ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end29.i:                                       ; preds = %lor.lhs.false7.i
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %.unpack134.i, 0
  %call35.i = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert.i, [1 x i32] %.fca.0.insert28, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i)
  %cmp36.not.i = icmp eq i32 %call35.i, 1
  br i1 %cmp36.not.i, label %if.end29.i.if.end25_crit_edge, label %if.end29.i.land.lhs.true_crit_edge

if.end29.i.land.lhs.true_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end29.i.if.end25_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end29.i.land.lhs.true_crit_edge, %lor.lhs.false7.i.land.lhs.true_crit_edge, %lor.lhs.false.i.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %euid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 8
  %5 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %5)
  %.compoundliteral10.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert27 = insertvalue [1 x i32] poison, i32 %.compoundliteral10.sroa.0.0.copyload, 0
  %6 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack134.i39 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral10.sroa.0.0.copyload, i32 %.unpack134.i39)
  %cmp.i.i40 = icmp eq i32 %.compoundliteral10.sroa.0.0.copyload, %.unpack134.i39
  br i1 %cmp.i.i40, label %land.lhs.true.land.lhs.true14_crit_edge, label %lor.lhs.false.i44

land.lhs.true.land.lhs.true14_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

lor.lhs.false.i44:                                ; preds = %land.lhs.true
  %euid.i41 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 8
  %7 = ptrtoint ptr %euid.i41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack135.i42 = load i32, ptr %euid.i41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral10.sroa.0.0.copyload, i32 %.unpack135.i42)
  %cmp.i138.i43 = icmp eq i32 %.compoundliteral10.sroa.0.0.copyload, %.unpack135.i42
  br i1 %cmp.i138.i43, label %lor.lhs.false.i44.land.lhs.true14_crit_edge, label %lor.lhs.false7.i48

lor.lhs.false.i44.land.lhs.true14_crit_edge:      ; preds = %lor.lhs.false.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

lor.lhs.false7.i48:                               ; preds = %lor.lhs.false.i44
  %suid.i45 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 6
  %8 = ptrtoint ptr %suid.i45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack136.i46 = load i32, ptr %suid.i45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral10.sroa.0.0.copyload, i32 %.unpack136.i46)
  %cmp.i140.i47 = icmp eq i32 %.compoundliteral10.sroa.0.0.copyload, %.unpack136.i46
  br i1 %cmp.i140.i47, label %lor.lhs.false7.i48.land.lhs.true14_crit_edge, label %if.end29.i54

lor.lhs.false7.i48.land.lhs.true14_crit_edge:     ; preds = %lor.lhs.false7.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end29.i54:                                     ; preds = %lor.lhs.false7.i48
  %.fca.0.insert.i51 = insertvalue [1 x i32] poison, i32 %.unpack134.i39, 0
  %call35.i52 = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert.i51, [1 x i32] %.fca.0.insert27, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i52)
  %cmp36.not.i53 = icmp eq i32 %call35.i52, 1
  br i1 %cmp36.not.i53, label %if.end29.i54.if.end25_crit_edge, label %if.end29.i54.land.lhs.true14_crit_edge

if.end29.i54.land.lhs.true14_crit_edge:           ; preds = %if.end29.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end29.i54.if.end25_crit_edge:                  ; preds = %if.end29.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true14:                                  ; preds = %if.end29.i54.land.lhs.true14_crit_edge, %lor.lhs.false7.i48.land.lhs.true14_crit_edge, %lor.lhs.false.i44.land.lhs.true14_crit_edge, %land.lhs.true.land.lhs.true14_crit_edge
  %suid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 6
  %9 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.compoundliteral15.sroa.0.0.copyload = load i32, ptr %suid, align 4
  %.fca.0.insert26 = insertvalue [1 x i32] poison, i32 %.compoundliteral15.sroa.0.0.copyload, 0
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack134.i65 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral15.sroa.0.0.copyload, i32 %.unpack134.i65)
  %cmp.i.i66 = icmp eq i32 %.compoundliteral15.sroa.0.0.copyload, %.unpack134.i65
  br i1 %cmp.i.i66, label %land.lhs.true14.land.lhs.true19_crit_edge, label %lor.lhs.false.i70

land.lhs.true14.land.lhs.true19_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

lor.lhs.false.i70:                                ; preds = %land.lhs.true14
  %euid.i67 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 8
  %11 = ptrtoint ptr %euid.i67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack135.i68 = load i32, ptr %euid.i67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral15.sroa.0.0.copyload, i32 %.unpack135.i68)
  %cmp.i138.i69 = icmp eq i32 %.compoundliteral15.sroa.0.0.copyload, %.unpack135.i68
  br i1 %cmp.i138.i69, label %lor.lhs.false.i70.land.lhs.true19_crit_edge, label %lor.lhs.false7.i74

lor.lhs.false.i70.land.lhs.true19_crit_edge:      ; preds = %lor.lhs.false.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

lor.lhs.false7.i74:                               ; preds = %lor.lhs.false.i70
  %suid.i71 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 6
  %12 = ptrtoint ptr %suid.i71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack136.i72 = load i32, ptr %suid.i71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral15.sroa.0.0.copyload, i32 %.unpack136.i72)
  %cmp.i140.i73 = icmp eq i32 %.compoundliteral15.sroa.0.0.copyload, %.unpack136.i72
  br i1 %cmp.i140.i73, label %lor.lhs.false7.i74.land.lhs.true19_crit_edge, label %if.end29.i80

lor.lhs.false7.i74.land.lhs.true19_crit_edge:     ; preds = %lor.lhs.false7.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

if.end29.i80:                                     ; preds = %lor.lhs.false7.i74
  %.fca.0.insert.i77 = insertvalue [1 x i32] poison, i32 %.unpack134.i65, 0
  %call35.i78 = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert.i77, [1 x i32] %.fca.0.insert26, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i78)
  %cmp36.not.i79 = icmp eq i32 %call35.i78, 1
  br i1 %cmp36.not.i79, label %if.end29.i80.if.end25_crit_edge, label %if.end29.i80.land.lhs.true19_crit_edge

if.end29.i80.land.lhs.true19_crit_edge:           ; preds = %if.end29.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

if.end29.i80.if.end25_crit_edge:                  ; preds = %if.end29.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true19:                                  ; preds = %if.end29.i80.land.lhs.true19_crit_edge, %lor.lhs.false7.i74.land.lhs.true19_crit_edge, %lor.lhs.false.i70.land.lhs.true19_crit_edge, %land.lhs.true14.land.lhs.true19_crit_edge
  %fsuid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %13)
  %.compoundliteral20.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.compoundliteral20.sroa.0.0.copyload, 0
  %14 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack134.i91 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral20.sroa.0.0.copyload, i32 %.unpack134.i91)
  %cmp.i.i92 = icmp eq i32 %.compoundliteral20.sroa.0.0.copyload, %.unpack134.i91
  br i1 %cmp.i.i92, label %land.lhs.true19.return_crit_edge, label %lor.lhs.false.i96

land.lhs.true19.return_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.i96:                                ; preds = %land.lhs.true19
  %euid.i93 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 8
  %15 = ptrtoint ptr %euid.i93 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack135.i94 = load i32, ptr %euid.i93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral20.sroa.0.0.copyload, i32 %.unpack135.i94)
  %cmp.i138.i95 = icmp eq i32 %.compoundliteral20.sroa.0.0.copyload, %.unpack135.i94
  br i1 %cmp.i138.i95, label %lor.lhs.false.i96.return_crit_edge, label %lor.lhs.false7.i100

lor.lhs.false.i96.return_crit_edge:               ; preds = %lor.lhs.false.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false7.i100:                              ; preds = %lor.lhs.false.i96
  %suid.i97 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 6
  %16 = ptrtoint ptr %suid.i97 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack136.i98 = load i32, ptr %suid.i97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral20.sroa.0.0.copyload, i32 %.unpack136.i98)
  %cmp.i140.i99 = icmp eq i32 %.compoundliteral20.sroa.0.0.copyload, %.unpack136.i98
  br i1 %cmp.i140.i99, label %lor.lhs.false7.i100.return_crit_edge, label %if.end29.i106

lor.lhs.false7.i100.return_crit_edge:             ; preds = %lor.lhs.false7.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end29.i106:                                    ; preds = %lor.lhs.false7.i100
  %.fca.0.insert.i103 = insertvalue [1 x i32] poison, i32 %.unpack134.i91, 0
  %call35.i104 = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert.i103, [1 x i32] %.fca.0.insert, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i104)
  %cmp36.not.i105 = icmp eq i32 %call35.i104, 1
  br i1 %cmp36.not.i105, label %if.end29.i106.if.end25_crit_edge, label %if.end29.i106.return_crit_edge

if.end29.i106.return_crit_edge:                   ; preds = %if.end29.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end29.i106.if.end25_crit_edge:                 ; preds = %if.end29.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end25:                                         ; preds = %if.end29.i106.if.end25_crit_edge, %if.end29.i80.if.end25_crit_edge, %if.end29.i54.if.end25_crit_edge, %if.end29.i.if.end25_crit_edge
  %euid.i93.sink = phi ptr [ %euid.i, %if.end29.i.if.end25_crit_edge ], [ %euid.i41, %if.end29.i54.if.end25_crit_edge ], [ %euid.i67, %if.end29.i80.if.end25_crit_edge ], [ %euid.i93, %if.end29.i106.if.end25_crit_edge ]
  %suid.i97.sink = phi ptr [ %suid.i, %if.end29.i.if.end25_crit_edge ], [ %suid.i45, %if.end29.i54.if.end25_crit_edge ], [ %suid.i71, %if.end29.i80.if.end25_crit_edge ], [ %suid.i97, %if.end29.i106.if.end25_crit_edge ]
  %.compoundliteral20.sroa.0.0.copyload.sink = phi i32 [ %.compoundliteral5.sroa.0.0.copyload, %if.end29.i.if.end25_crit_edge ], [ %.compoundliteral10.sroa.0.0.copyload, %if.end29.i54.if.end25_crit_edge ], [ %.compoundliteral15.sroa.0.0.copyload, %if.end29.i80.if.end25_crit_edge ], [ %.compoundliteral20.sroa.0.0.copyload, %if.end29.i106.if.end25_crit_edge ]
  %17 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack131.i108 = load i32, ptr %uid, align 4
  %18 = ptrtoint ptr %euid.i93.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack132.i110 = load i32, ptr %euid.i93.sink, align 4
  %19 = ptrtoint ptr %suid.i97.sink to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack133.i112 = load i32, ptr %suid.i97.sink, align 4
  %call51.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %.unpack131.i108, i32 noundef %.unpack132.i110, i32 noundef %.unpack133.i112, i32 noundef %.compoundliteral20.sroa.0.0.copyload.sink) #10
  tail call void @force_sig(i32 noundef 9) #7
  br label %return

return:                                           ; preds = %if.end25, %if.end29.i106.return_crit_edge, %lor.lhs.false7.i100.return_crit_edge, %lor.lhs.false.i96.return_crit_edge, %land.lhs.true19.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -13, %if.end25 ], [ 0, %entry.return_crit_edge ], [ 0, %lor.lhs.false7.i100.return_crit_edge ], [ 0, %lor.lhs.false.i96.return_crit_edge ], [ 0, %land.lhs.true19.return_crit_edge ], [ 0, %if.end29.i106.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safesetid_task_fix_setgid(ptr nocapture noundef readonly %new, ptr noundef readonly %old, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gid = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 5
  %0 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %0)
  %.compoundliteral.sroa.0.0.copyload = load i32, ptr %gid, align 4
  %.fca.0.insert30 = insertvalue [1 x i32] poison, i32 %.compoundliteral.sroa.0.0.copyload, 0
  %call = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert30, [1 x i32] [i32 -1], i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %gid6 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 5
  %1 = ptrtoint ptr %gid6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.compoundliteral5.sroa.0.0.copyload = load i32, ptr %gid6, align 4
  %.fca.0.insert28 = insertvalue [1 x i32] poison, i32 %.compoundliteral5.sroa.0.0.copyload, 0
  %2 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack.i = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral5.sroa.0.0.copyload, i32 %.unpack.i)
  %cmp.i141.i = icmp eq i32 %.compoundliteral5.sroa.0.0.copyload, %.unpack.i
  br i1 %cmp.i141.i, label %if.end.land.lhs.true_crit_edge, label %lor.lhs.false17.i

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false17.i:                                ; preds = %if.end
  %egid.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 9
  %3 = ptrtoint ptr %egid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack126.i = load i32, ptr %egid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral5.sroa.0.0.copyload, i32 %.unpack126.i)
  %cmp.i143.i = icmp eq i32 %.compoundliteral5.sroa.0.0.copyload, %.unpack126.i
  br i1 %cmp.i143.i, label %lor.lhs.false17.i.land.lhs.true_crit_edge, label %lor.lhs.false21.i

lor.lhs.false17.i.land.lhs.true_crit_edge:        ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false21.i:                                ; preds = %lor.lhs.false17.i
  %sgid.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 7
  %4 = ptrtoint ptr %sgid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack127.i = load i32, ptr %sgid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral5.sroa.0.0.copyload, i32 %.unpack127.i)
  %cmp.i145.i = icmp eq i32 %.compoundliteral5.sroa.0.0.copyload, %.unpack127.i
  br i1 %cmp.i145.i, label %lor.lhs.false21.i.land.lhs.true_crit_edge, label %if.end29.i

lor.lhs.false21.i.land.lhs.true_crit_edge:        ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end29.i:                                       ; preds = %lor.lhs.false21.i
  %uid30.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 4
  %5 = ptrtoint ptr %uid30.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.compoundliteral.sroa.0.0.copyload.i = load i32, ptr %uid30.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %.compoundliteral.sroa.0.0.copyload.i, 0
  %call35.i = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert.i, [1 x i32] %.fca.0.insert28, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i)
  %cmp36.not.i = icmp eq i32 %call35.i, 1
  br i1 %cmp36.not.i, label %if.end29.i.if.end25_crit_edge, label %if.end29.i.land.lhs.true_crit_edge

if.end29.i.land.lhs.true_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end29.i.if.end25_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end29.i.land.lhs.true_crit_edge, %lor.lhs.false21.i.land.lhs.true_crit_edge, %lor.lhs.false17.i.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %egid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 9
  %6 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.compoundliteral10.sroa.0.0.copyload = load i32, ptr %egid, align 4
  %.fca.0.insert27 = insertvalue [1 x i32] poison, i32 %.compoundliteral10.sroa.0.0.copyload, 0
  %7 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack.i39 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral10.sroa.0.0.copyload, i32 %.unpack.i39)
  %cmp.i141.i40 = icmp eq i32 %.compoundliteral10.sroa.0.0.copyload, %.unpack.i39
  br i1 %cmp.i141.i40, label %land.lhs.true.land.lhs.true14_crit_edge, label %lor.lhs.false17.i44

land.lhs.true.land.lhs.true14_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

lor.lhs.false17.i44:                              ; preds = %land.lhs.true
  %egid.i41 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 9
  %8 = ptrtoint ptr %egid.i41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack126.i42 = load i32, ptr %egid.i41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral10.sroa.0.0.copyload, i32 %.unpack126.i42)
  %cmp.i143.i43 = icmp eq i32 %.compoundliteral10.sroa.0.0.copyload, %.unpack126.i42
  br i1 %cmp.i143.i43, label %lor.lhs.false17.i44.land.lhs.true14_crit_edge, label %lor.lhs.false21.i48

lor.lhs.false17.i44.land.lhs.true14_crit_edge:    ; preds = %lor.lhs.false17.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

lor.lhs.false21.i48:                              ; preds = %lor.lhs.false17.i44
  %sgid.i45 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 7
  %9 = ptrtoint ptr %sgid.i45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack127.i46 = load i32, ptr %sgid.i45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral10.sroa.0.0.copyload, i32 %.unpack127.i46)
  %cmp.i145.i47 = icmp eq i32 %.compoundliteral10.sroa.0.0.copyload, %.unpack127.i46
  br i1 %cmp.i145.i47, label %lor.lhs.false21.i48.land.lhs.true14_crit_edge, label %if.end29.i54

lor.lhs.false21.i48.land.lhs.true14_crit_edge:    ; preds = %lor.lhs.false21.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end29.i54:                                     ; preds = %lor.lhs.false21.i48
  %uid30.i49 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 4
  %10 = ptrtoint ptr %uid30.i49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.compoundliteral.sroa.0.0.copyload.i50 = load i32, ptr %uid30.i49, align 4
  %.fca.0.insert.i51 = insertvalue [1 x i32] poison, i32 %.compoundliteral.sroa.0.0.copyload.i50, 0
  %call35.i52 = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert.i51, [1 x i32] %.fca.0.insert27, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i52)
  %cmp36.not.i53 = icmp eq i32 %call35.i52, 1
  br i1 %cmp36.not.i53, label %if.end29.i54.if.end25_crit_edge, label %if.end29.i54.land.lhs.true14_crit_edge

if.end29.i54.land.lhs.true14_crit_edge:           ; preds = %if.end29.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end29.i54.if.end25_crit_edge:                  ; preds = %if.end29.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true14:                                  ; preds = %if.end29.i54.land.lhs.true14_crit_edge, %lor.lhs.false21.i48.land.lhs.true14_crit_edge, %lor.lhs.false17.i44.land.lhs.true14_crit_edge, %land.lhs.true.land.lhs.true14_crit_edge
  %sgid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 7
  %11 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.compoundliteral15.sroa.0.0.copyload = load i32, ptr %sgid, align 4
  %.fca.0.insert26 = insertvalue [1 x i32] poison, i32 %.compoundliteral15.sroa.0.0.copyload, 0
  %12 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack.i66 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral15.sroa.0.0.copyload, i32 %.unpack.i66)
  %cmp.i141.i67 = icmp eq i32 %.compoundliteral15.sroa.0.0.copyload, %.unpack.i66
  br i1 %cmp.i141.i67, label %land.lhs.true14.land.lhs.true19_crit_edge, label %lor.lhs.false17.i71

land.lhs.true14.land.lhs.true19_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

lor.lhs.false17.i71:                              ; preds = %land.lhs.true14
  %egid.i68 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 9
  %13 = ptrtoint ptr %egid.i68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack126.i69 = load i32, ptr %egid.i68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral15.sroa.0.0.copyload, i32 %.unpack126.i69)
  %cmp.i143.i70 = icmp eq i32 %.compoundliteral15.sroa.0.0.copyload, %.unpack126.i69
  br i1 %cmp.i143.i70, label %lor.lhs.false17.i71.land.lhs.true19_crit_edge, label %lor.lhs.false21.i75

lor.lhs.false17.i71.land.lhs.true19_crit_edge:    ; preds = %lor.lhs.false17.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

lor.lhs.false21.i75:                              ; preds = %lor.lhs.false17.i71
  %sgid.i72 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 7
  %14 = ptrtoint ptr %sgid.i72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack127.i73 = load i32, ptr %sgid.i72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral15.sroa.0.0.copyload, i32 %.unpack127.i73)
  %cmp.i145.i74 = icmp eq i32 %.compoundliteral15.sroa.0.0.copyload, %.unpack127.i73
  br i1 %cmp.i145.i74, label %lor.lhs.false21.i75.land.lhs.true19_crit_edge, label %if.end29.i81

lor.lhs.false21.i75.land.lhs.true19_crit_edge:    ; preds = %lor.lhs.false21.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

if.end29.i81:                                     ; preds = %lor.lhs.false21.i75
  %uid30.i76 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 4
  %15 = ptrtoint ptr %uid30.i76 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.compoundliteral.sroa.0.0.copyload.i77 = load i32, ptr %uid30.i76, align 4
  %.fca.0.insert.i78 = insertvalue [1 x i32] poison, i32 %.compoundliteral.sroa.0.0.copyload.i77, 0
  %call35.i79 = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert.i78, [1 x i32] %.fca.0.insert26, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i79)
  %cmp36.not.i80 = icmp eq i32 %call35.i79, 1
  br i1 %cmp36.not.i80, label %if.end29.i81.if.end25_crit_edge, label %if.end29.i81.land.lhs.true19_crit_edge

if.end29.i81.land.lhs.true19_crit_edge:           ; preds = %if.end29.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19

if.end29.i81.if.end25_crit_edge:                  ; preds = %if.end29.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true19:                                  ; preds = %if.end29.i81.land.lhs.true19_crit_edge, %lor.lhs.false21.i75.land.lhs.true19_crit_edge, %lor.lhs.false17.i71.land.lhs.true19_crit_edge, %land.lhs.true14.land.lhs.true19_crit_edge
  %fsgid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 11
  %16 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.compoundliteral20.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.compoundliteral20.sroa.0.0.copyload, 0
  %17 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i93 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral20.sroa.0.0.copyload, i32 %.unpack.i93)
  %cmp.i141.i94 = icmp eq i32 %.compoundliteral20.sroa.0.0.copyload, %.unpack.i93
  br i1 %cmp.i141.i94, label %land.lhs.true19.return_crit_edge, label %lor.lhs.false17.i98

land.lhs.true19.return_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false17.i98:                              ; preds = %land.lhs.true19
  %egid.i95 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 9
  %18 = ptrtoint ptr %egid.i95 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack126.i96 = load i32, ptr %egid.i95, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral20.sroa.0.0.copyload, i32 %.unpack126.i96)
  %cmp.i143.i97 = icmp eq i32 %.compoundliteral20.sroa.0.0.copyload, %.unpack126.i96
  br i1 %cmp.i143.i97, label %lor.lhs.false17.i98.return_crit_edge, label %lor.lhs.false21.i102

lor.lhs.false17.i98.return_crit_edge:             ; preds = %lor.lhs.false17.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false21.i102:                             ; preds = %lor.lhs.false17.i98
  %sgid.i99 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 7
  %19 = ptrtoint ptr %sgid.i99 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack127.i100 = load i32, ptr %sgid.i99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.compoundliteral20.sroa.0.0.copyload, i32 %.unpack127.i100)
  %cmp.i145.i101 = icmp eq i32 %.compoundliteral20.sroa.0.0.copyload, %.unpack127.i100
  br i1 %cmp.i145.i101, label %lor.lhs.false21.i102.return_crit_edge, label %if.end29.i108

lor.lhs.false21.i102.return_crit_edge:            ; preds = %lor.lhs.false21.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end29.i108:                                    ; preds = %lor.lhs.false21.i102
  %uid30.i103 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 4
  %20 = ptrtoint ptr %uid30.i103 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.compoundliteral.sroa.0.0.copyload.i104 = load i32, ptr %uid30.i103, align 4
  %.fca.0.insert.i105 = insertvalue [1 x i32] poison, i32 %.compoundliteral.sroa.0.0.copyload.i104, 0
  %call35.i106 = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert.i105, [1 x i32] %.fca.0.insert, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i106)
  %cmp36.not.i107 = icmp eq i32 %call35.i106, 1
  br i1 %cmp36.not.i107, label %if.end29.i108.if.end25_crit_edge, label %if.end29.i108.return_crit_edge

if.end29.i108.return_crit_edge:                   ; preds = %if.end29.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end29.i108.if.end25_crit_edge:                 ; preds = %if.end29.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end25:                                         ; preds = %if.end29.i108.if.end25_crit_edge, %if.end29.i81.if.end25_crit_edge, %if.end29.i54.if.end25_crit_edge, %if.end29.i.if.end25_crit_edge
  %egid.i95.sink = phi ptr [ %egid.i, %if.end29.i.if.end25_crit_edge ], [ %egid.i41, %if.end29.i54.if.end25_crit_edge ], [ %egid.i68, %if.end29.i81.if.end25_crit_edge ], [ %egid.i95, %if.end29.i108.if.end25_crit_edge ]
  %sgid.i99.sink = phi ptr [ %sgid.i, %if.end29.i.if.end25_crit_edge ], [ %sgid.i45, %if.end29.i54.if.end25_crit_edge ], [ %sgid.i72, %if.end29.i81.if.end25_crit_edge ], [ %sgid.i99, %if.end29.i108.if.end25_crit_edge ]
  %.compoundliteral20.sroa.0.0.copyload.sink = phi i32 [ %.compoundliteral5.sroa.0.0.copyload, %if.end29.i.if.end25_crit_edge ], [ %.compoundliteral10.sroa.0.0.copyload, %if.end29.i54.if.end25_crit_edge ], [ %.compoundliteral15.sroa.0.0.copyload, %if.end29.i81.if.end25_crit_edge ], [ %.compoundliteral20.sroa.0.0.copyload, %if.end29.i108.if.end25_crit_edge ]
  %21 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack128.i111 = load i32, ptr %gid, align 4
  %22 = ptrtoint ptr %egid.i95.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack129.i113 = load i32, ptr %egid.i95.sink, align 4
  %23 = ptrtoint ptr %sgid.i99.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack130.i115 = load i32, ptr %sgid.i99.sink, align 4
  %call70.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %.unpack128.i111, i32 noundef %.unpack129.i113, i32 noundef %.unpack130.i115, i32 noundef %.compoundliteral20.sroa.0.0.copyload.sink) #10
  tail call void @force_sig(i32 noundef 9) #7
  br label %return

return:                                           ; preds = %if.end25, %if.end29.i108.return_crit_edge, %lor.lhs.false21.i102.return_crit_edge, %lor.lhs.false17.i98.return_crit_edge, %land.lhs.true19.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -13, %if.end25 ], [ 0, %entry.return_crit_edge ], [ 0, %lor.lhs.false21.i102.return_crit_edge ], [ 0, %lor.lhs.false17.i98.return_crit_edge ], [ 0, %land.lhs.true19.return_crit_edge ], [ 0, %if.end29.i108.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safesetid_security_capable(ptr nocapture noundef readonly %cred, ptr nocapture noundef readnone %ns, i32 noundef %cap, i32 noundef %opts) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %cap, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %switch = icmp eq i32 %0, 6
  %and = and i32 %opts, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  %or.cond = and i1 %switch, %cmp2.not
  br i1 %or.cond, label %if.end4, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %entry
  %1 = zext i32 %cap to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %cap, label %if.end4.return_crit_edge [
    i32 7, label %sw.bb
    i32 6, label %sw.bb16
  ]

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %if.end4
  %uid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 4
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.compoundliteral.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %.fca.0.insert37 = insertvalue [1 x i32] poison, i32 %.compoundliteral.sroa.0.0.copyload, 0
  %call = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert37, [1 x i32] [i32 -1], i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %sw.bb.return_crit_edge, label %sw.bb.return.sink.split_crit_edge

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb16:                                          ; preds = %if.end4
  %gid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 5
  %3 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %3)
  %.compoundliteral17.sroa.0.0.copyload = load i32, ptr %gid, align 4
  %.fca.0.insert35 = insertvalue [1 x i32] poison, i32 %.compoundliteral17.sroa.0.0.copyload, 0
  %call24 = tail call fastcc i32 @setid_policy_lookup([1 x i32] %.fca.0.insert35, [1 x i32] [i32 -1], i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %sw.bb16.return_crit_edge, label %do.end29

sw.bb16.return_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end29:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %uid31 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 4
  br label %return.sink.split

return.sink.split:                                ; preds = %do.end29, %sw.bb.return.sink.split_crit_edge
  %uid31.sink = phi ptr [ %uid31, %do.end29 ], [ %uid, %sw.bb.return.sink.split_crit_edge ]
  %.str.15.sink = phi ptr [ @.str.15, %do.end29 ], [ @.str.12, %sw.bb.return.sink.split_crit_edge ]
  %4 = ptrtoint ptr %uid31.sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %uid31.sink, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, i32 noundef %.unpack) #10
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb16.return_crit_edge, %sw.bb.return_crit_edge, %if.end4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb16.return_crit_edge ], [ 0, %if.end4.return_crit_edge ], [ -1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setid_policy_lookup([1 x i32] %src.coerce, [1 x i32] %dst.coerce, i32 noundef %new_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_type)
  %cmp = icmp eq i32 %new_type, 0
  br i1 %cmp, label %if.then, label %if.then14

if.then:                                          ; preds = %rcu_read_lock.exit
  %4 = load volatile ptr, ptr @safesetid_setuid_rules, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %if.then
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end34_crit_edge, label %land.lhs.true7

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @setid_policy_lookup.__warned, align 1
  br i1 %.b52, label %land.lhs.true7.if.end34_crit_edge, label %land.lhs.true7.if.end34.sink.split_crit_edge

land.lhs.true7.if.end34.sink.split_crit_edge:     ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split

land.lhs.true7.if.end34_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then14:                                        ; preds = %rcu_read_lock.exit
  %5 = load volatile ptr, ptr @safesetid_setgid_rules, align 4
  %call20 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %if.then14.if.end34_crit_edge

if.then14.if.end34_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true22:                                  ; preds = %if.then14
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.if.end34_crit_edge, label %land.lhs.true25

land.lhs.true22.if.end34_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b5051 = load i1, ptr @setid_policy_lookup.__warned.3, align 1
  br i1 %.b5051, label %land.lhs.true25.if.end34_crit_edge, label %land.lhs.true25.if.end34.sink.split_crit_edge

land.lhs.true25.if.end34.sink.split_crit_edge:    ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split

land.lhs.true25.if.end34_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34.sink.split:                              ; preds = %land.lhs.true25.if.end34.sink.split_crit_edge, %land.lhs.true7.if.end34.sink.split_crit_edge
  %setid_policy_lookup.__warned.3.sink = phi ptr [ @setid_policy_lookup.__warned, %land.lhs.true7.if.end34.sink.split_crit_edge ], [ @setid_policy_lookup.__warned.3, %land.lhs.true25.if.end34.sink.split_crit_edge ]
  %.sink = phi i32 [ 73, %land.lhs.true7.if.end34.sink.split_crit_edge ], [ 75, %land.lhs.true25.if.end34.sink.split_crit_edge ]
  %pol.0.ph = phi ptr [ %4, %land.lhs.true7.if.end34.sink.split_crit_edge ], [ %5, %land.lhs.true25.if.end34.sink.split_crit_edge ]
  %6 = ptrtoint ptr %setid_policy_lookup.__warned.3.sink to i32
  call void @__asan_store1_noabort(i32 %6)
  store i1 true, ptr %setid_policy_lookup.__warned.3.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef %.sink, ptr noundef nonnull @.str.2) #7
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %land.lhs.true25.if.end34_crit_edge, %land.lhs.true22.if.end34_crit_edge, %if.then14.if.end34_crit_edge, %land.lhs.true7.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.then.if.end34_crit_edge
  %pol.0 = phi ptr [ %4, %land.lhs.true7.if.end34_crit_edge ], [ %4, %land.lhs.true.if.end34_crit_edge ], [ %4, %if.then.if.end34_crit_edge ], [ %5, %land.lhs.true25.if.end34_crit_edge ], [ %5, %land.lhs.true22.if.end34_crit_edge ], [ %5, %if.then14.if.end34_crit_edge ], [ %pol.0.ph, %if.end34.sink.split ]
  %tobool35.not = icmp eq ptr %pol.0, null
  br i1 %tobool35.not, label %if.end34.if.end42_crit_edge, label %if.then36

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then36:                                        ; preds = %if.end34
  %type = getelementptr inbounds %struct.setid_ruleset, ptr %pol.0, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new_type, ptr %type, align 4
  %8 = zext i32 %new_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %new_type, label %if.then36.if.end42_crit_edge [
    i32 0, label %if.then.i53
    i32 1, label %if.then30.i
  ]

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then.i53:                                      ; preds = %if.then36
  %uid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %src.coerce, 0
  %mul.i.i.i = mul i32 %uid.coerce.fca.0.extract.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %pol.0, i32 0, i32 %shr.i.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %rule.0135.i = load ptr, ptr %arrayidx.i, align 4
  %tobool7.not136.i = icmp eq ptr %rule.0135.i, null
  br i1 %tobool7.not136.i, label %if.then.i53.if.end42_crit_edge, label %for.body.lr.ph.i

if.then.i53.if.end42_crit_edge:                   ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

for.body.lr.ph.i:                                 ; preds = %if.then.i53
  %uid.coerce.fca.0.extract.i6.i121.i = extractvalue [1 x i32] %dst.coerce, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rule.0138.i = phi ptr [ %rule.0135.i, %for.body.lr.ph.i ], [ %rule.0.i, %for.inc.i.for.body.i_crit_edge ]
  %result.0137.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %result.1.i, %for.inc.i.for.body.i_crit_edge ]
  %src_id.i = getelementptr inbounds %struct.setid_rule, ptr %rule.0138.i, i32 0, i32 1
  %10 = ptrtoint ptr %src_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack116.i = load i32, ptr %src_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack116.i, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp.i.i = icmp eq i32 %.unpack116.i, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp.i.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %dst_id.i = getelementptr inbounds %struct.setid_rule, ptr %rule.0138.i, i32 0, i32 2
  %11 = ptrtoint ptr %dst_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack117.i = load i32, ptr %dst_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack117.i, i32 %uid.coerce.fca.0.extract.i6.i121.i)
  %cmp.i122.i = icmp eq i32 %.unpack117.i, %uid.coerce.fca.0.extract.i6.i121.i
  br i1 %cmp.i122.i, label %if.end.i.if.end42_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.if.end42_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %result.1.i = phi i32 [ %result.0137.i, %for.body.i.for.inc.i_crit_edge ], [ 1, %if.end.i.for.inc.i_crit_edge ]
  %12 = ptrtoint ptr %rule.0138.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %rule.0.i = load ptr, ptr %rule.0138.i, align 4
  %tobool7.not.i = icmp eq ptr %rule.0.i, null
  br i1 %tobool7.not.i, label %for.inc.i.if.end42_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end42_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then30.i:                                      ; preds = %if.then36
  %gid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %src.coerce, 0
  %mul.i.i123.i = mul i32 %gid.coerce.fca.0.extract.i.i, 1640531527
  %shr.i124.i = lshr i32 %mul.i.i123.i, 24
  %arrayidx36.i = getelementptr [256 x %struct.hlist_head], ptr %pol.0, i32 0, i32 %shr.i124.i
  %13 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %rule.1130.i = load ptr, ptr %arrayidx36.i, align 4
  %tobool48.not131.i = icmp eq ptr %rule.1130.i, null
  br i1 %tobool48.not131.i, label %if.then30.i.if.end42_crit_edge, label %for.body49.lr.ph.i

if.then30.i.if.end42_crit_edge:                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

for.body49.lr.ph.i:                               ; preds = %if.then30.i
  %gid.coerce.fca.0.extract.i6.i126.i = extractvalue [1 x i32] %dst.coerce, 0
  br label %for.body49.i

for.body49.i:                                     ; preds = %for.inc62.i.for.body49.i_crit_edge, %for.body49.lr.ph.i
  %rule.1133.i = phi ptr [ %rule.1130.i, %for.body49.lr.ph.i ], [ %rule.1.i, %for.inc62.i.for.body49.i_crit_edge ]
  %result.2132.i = phi i32 [ 0, %for.body49.lr.ph.i ], [ %result.3.i, %for.inc62.i.for.body49.i_crit_edge ]
  %src_id50.i = getelementptr inbounds %struct.setid_rule, ptr %rule.1133.i, i32 0, i32 1
  %14 = ptrtoint ptr %src_id50.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack.i = load i32, ptr %src_id50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp.i125.i = icmp eq i32 %.unpack.i, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp.i125.i, label %if.end55.i, label %for.body49.i.for.inc62.i_crit_edge

for.body49.i.for.inc62.i_crit_edge:               ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62.i

if.end55.i:                                       ; preds = %for.body49.i
  %dst_id56.i = getelementptr inbounds %struct.setid_rule, ptr %rule.1133.i, i32 0, i32 2
  %15 = ptrtoint ptr %dst_id56.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack115.i = load i32, ptr %dst_id56.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack115.i, i32 %gid.coerce.fca.0.extract.i6.i126.i)
  %cmp.i127.i = icmp eq i32 %.unpack115.i, %gid.coerce.fca.0.extract.i6.i126.i
  br i1 %cmp.i127.i, label %if.end55.i.if.end42_crit_edge, label %if.end55.i.for.inc62.i_crit_edge

if.end55.i.for.inc62.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62.i

if.end55.i.if.end42_crit_edge:                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

for.inc62.i:                                      ; preds = %if.end55.i.for.inc62.i_crit_edge, %for.body49.i.for.inc62.i_crit_edge
  %result.3.i = phi i32 [ %result.2132.i, %for.body49.i.for.inc62.i_crit_edge ], [ 1, %if.end55.i.for.inc62.i_crit_edge ]
  %16 = ptrtoint ptr %rule.1133.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %rule.1.i = load ptr, ptr %rule.1133.i, align 4
  %tobool48.not.i = icmp eq ptr %rule.1.i, null
  br i1 %tobool48.not.i, label %for.inc62.i.if.end42_crit_edge, label %for.inc62.i.for.body49.i_crit_edge

for.inc62.i.for.body49.i_crit_edge:               ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49.i

for.inc62.i.if.end42_crit_edge:                   ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42:                                         ; preds = %for.inc62.i.if.end42_crit_edge, %if.end55.i.if.end42_crit_edge, %if.then30.i.if.end42_crit_edge, %for.inc.i.if.end42_crit_edge, %if.end.i.if.end42_crit_edge, %if.then.i53.if.end42_crit_edge, %if.then36.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  %result.0 = phi i32 [ 0, %if.end34.if.end42_crit_edge ], [ 1, %if.then36.if.end42_crit_edge ], [ 0, %if.then.i53.if.end42_crit_edge ], [ 0, %if.then30.i.if.end42_crit_edge ], [ %result.1.i, %for.inc.i.if.end42_crit_edge ], [ 2, %if.end.i.if.end42_crit_edge ], [ %result.3.i, %for.inc62.i.if.end42_crit_edge ], [ 2, %if.end55.i.if.end42_crit_edge ]
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i54, label %if.end42.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

if.end42.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %if.end42
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %if.end42.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %17 = tail call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i61 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sig(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/safesetid/lsm.c", i32 263, i32 10}
!2 = !{ptr @__lsm_safesetid_security_init, !3, !"__lsm_safesetid_security_init", i1 false, i1 false}
!3 = !{!"../security/safesetid/lsm.c", i32 261, i32 1}
!4 = !{ptr @safesetid_initialized, !5, !"safesetid_initialized", i1 false, i1 false}
!5 = !{!"../security/safesetid/lsm.c", i32 25, i32 5}
!6 = !{ptr @safesetid_setuid_rules, !7, !"safesetid_setuid_rules", i1 false, i1 false}
!7 = !{!"../security/safesetid/lsm.c", i32 27, i32 29}
!8 = !{ptr @safesetid_setgid_rules, !9, !"safesetid_setgid_rules", i1 false, i1 false}
!9 = !{!"../security/safesetid/lsm.c", i32 28, i32 29}
!10 = !{ptr @safesetid_security_hooks, !11, !"safesetid_security_hooks", i1 false, i1 false}
!11 = !{!"../security/safesetid/lsm.c", i32 244, i32 34}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../security/safesetid/lsm.c", i32 73, i32 9}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../security/safesetid/lsm.c", i32 75, i32 9}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/safesetid/lsm.c", i32 178, i32 4}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @id_permitted_for_cred._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @id_permitted_for_cred._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/safesetid/lsm.c", i32 182, i32 4}
!32 = !{ptr @id_permitted_for_cred._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @id_permitted_for_cred._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/safesetid/lsm.c", i32 125, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @safesetid_security_capable._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @safesetid_security_capable._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../security/safesetid/lsm.c", i32 139, i32 3}
!41 = !{ptr @safesetid_security_capable._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @safesetid_security_capable._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2149306095}
!54 = !{i64 2149306361}
