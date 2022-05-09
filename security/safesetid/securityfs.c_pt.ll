; ModuleID = '/llk/IR_all_yes/security/safesetid/securityfs.c_pt.bc'
source_filename = "../security/safesetid/securityfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type opaque
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.setid_ruleset = type { [256 x %struct.hlist_head], ptr, %struct.callback_head, i32 }
%struct.hlist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.setid_rule = type { %struct.hlist_node, %union.kid_t, %union.kid_t, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.kid_t = type { %struct.kuid_t }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }

@__initcall__kmod_safesetid__223_345_safesetid_init_securityfs5 = internal global ptr @safesetid_init_securityfs, section ".initcall5.init", align 4
@safesetid_initialized = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"safesetid\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uid_allowlist_policy\00", [43 x i8] zeroinitializer }, align 32
@safesetid_uid_file_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @safesetid_uid_file_read, ptr @safesetid_uid_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gid_allowlist_policy\00", [43 x i8] zeroinitializer }, align 32
@safesetid_gid_file_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @safesetid_gid_file_read, ptr @safesetid_gid_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uid_policy_update_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @uid_policy_update_lock, i64 52), ptr getelementptr (i8, ptr @uid_policy_update_lock, i64 52) }, ptr @uid_policy_update_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@safesetid_setuid_rules = external dso_local global ptr, align 4
@safesetid_file_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"security/safesetid/securityfs.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"uid_policy_update_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uid_policy_update_lock\00", [41 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@handle_policy_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014SafeSetID: bad policy: duplicate entry\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"handle_policy_update\00", [43 x i8] zeroinitializer }, align 32
@handle_policy_update._entry_ptr = internal global ptr @handle_policy_update._entry, section ".printk_index", align 4
@handle_policy_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gid_policy_update_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gid_policy_update_lock, i64 52), ptr getelementptr (i8, ptr @gid_policy_update_lock, i64 52) }, ptr @gid_policy_update_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@handle_policy_update.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@safesetid_setgid_rules = external dso_local global ptr, align 4
@handle_policy_update._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014SafeSetID: error: bad policy type\00", [60 x i8] zeroinitializer }, align 32
@handle_policy_update._entry_ptr.12 = internal global ptr @handle_policy_update._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@verify_ruleset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\014SafeSetID: insecure policy detected: uid %d is constrained but transitively unconstrained through uid %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"verify_ruleset\00", [17 x i8] zeroinitializer }, align 32
@verify_ruleset._entry_ptr = internal global ptr @verify_ruleset._entry, section ".printk_index", align 4
@verify_ruleset._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\014SafeSetID: insecure policy detected: gid %d is constrained but transitively unconstrained through gid %d\0A\00", [52 x i8] zeroinitializer }, align 32
@verify_ruleset._entry_ptr.17 = internal global ptr @verify_ruleset._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gid_policy_update_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gid_policy_update_lock\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 318, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 324, i32 43 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"safesetid_uid_file_fops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 298, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 331, i32 43 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"safesetid_gid_file_fops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 303, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"uid_policy_update_lock\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 271, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 22, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 187, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"gid_policy_update_lock\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 223, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 107, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 111, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [35 x i8] c"../security/safesetid/securityfs.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 23, i32 8 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__initcall__kmod_safesetid__223_345_safesetid_init_securityfs5, ptr @handle_policy_update._entry, ptr @handle_policy_update._entry.10, ptr @handle_policy_update._entry_ptr, ptr @handle_policy_update._entry_ptr.12, ptr @verify_ruleset._entry, ptr @verify_ruleset._entry.15, ptr @verify_ruleset._entry_ptr, ptr @verify_ruleset._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @safesetid_uid_file_fops, ptr @.str.2, ptr @safesetid_gid_file_fops, ptr @uid_policy_update_lock, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @gid_policy_update_lock, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safesetid_uid_file_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safesetid_gid_file_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uid_policy_update_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_policy_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gid_policy_update_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_policy_update._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_ruleset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_ruleset._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @safesetid_init_securityfs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @safesetid_initialized to i32))
  %0 = load i32, ptr @safesetid_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @securityfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.error_crit_edge, label %if.end4

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %call, ptr noundef null, ptr noundef nonnull @safesetid_uid_file_fops) #7
  %cmp.i24 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.end4.error_crit_edge, label %if.end9

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end9:                                          ; preds = %if.end4
  %call10 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 384, ptr noundef %call, ptr noundef null, ptr noundef nonnull @safesetid_gid_file_fops) #7
  %cmp.i25 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25, label %if.end9.error_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %if.end9.error_crit_edge, %if.end4.error_crit_edge, %if.end.error_crit_edge
  %ret.0.in = phi ptr [ %call, %if.end.error_crit_edge ], [ %call5, %if.end4.error_crit_edge ], [ %call10, %if.end9.error_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  tail call void @securityfs_remove(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @securityfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safesetid_uid_file_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @safesetid_setuid_rules to i32))
  %0 = load ptr, ptr @safesetid_setuid_rules, align 4
  %call = tail call fastcc i32 @safesetid_file_read(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef nonnull @uid_policy_update_lock, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safesetid_uid_file_write(ptr noundef %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @file_ns_capable(ptr noundef %file, ptr noundef nonnull @init_user_ns, i32 noundef 33) #7
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @handle_policy_update(ptr noundef %file, ptr noundef %buf, i32 noundef %len, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -1, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safesetid_file_read(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef %policy_update_lock, ptr noundef readonly %ruleset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %policy_update_lock, i32 noundef 0) #7
  %dep_map = getelementptr inbounds %struct.mutex, ptr %policy_update_lock, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @safesetid_file_read.__warned, align 1
  br i1 %.b1, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @safesetid_file_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 271, ptr noundef nonnull @.str.4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %tobool5.not = icmp eq ptr %ruleset, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %if.then6

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %policy_str = getelementptr inbounds %struct.setid_ruleset, ptr %ruleset, i32 0, i32 1
  %0 = ptrtoint ptr %policy_str to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policy_str, align 4
  %call7 = tail call i32 @strlen(ptr noundef %1) #10
  %call8 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef %1, i32 noundef %call7) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end.if.end9_crit_edge
  %res.0 = phi i32 [ %call8, %if.then6 ], [ 0, %do.end.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %policy_update_lock) #7
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_policy_update(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %len, i32 noundef %policy_type) unnamed_addr #3 align 64 {
entry:
  %parsed_parent.i = alloca i32, align 4
  %parsed_child.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1040) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup167_crit_edge, label %if.end

entry.cleanup167_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup167

if.end:                                           ; preds = %entry
  %policy_str = getelementptr inbounds %struct.setid_ruleset, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %policy_str to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %policy_str, align 8
  %type = getelementptr inbounds %struct.setid_ruleset, ptr %call7.i, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %policy_type, ptr %type, align 4
  %3 = call ptr @memset(ptr %call7.i, i32 0, i32 1024)
  %call1 = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %len) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_free_pol.thread, label %if.end5

out_free_pol.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call1 to i32
  br label %if.then165

if.end5:                                          ; preds = %if.end
  %call6 = tail call noalias ptr @kstrdup(ptr noundef %call1, i32 noundef 3264) #7
  %5 = ptrtoint ptr %policy_str to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %policy_str, align 8
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %out_free_pol.thread235, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end5
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp11.not242 = icmp eq i8 %7, 0
  br i1 %cmp11.not242, label %while.cond.preheader.for.body.i.preheader_crit_edge, label %while.body.lr.ph

while.cond.preheader.for.body.i.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %f_cred29.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  br label %while.body

out_free_pol.thread235:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %call1) #7
  br label %if.then165

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %p.0243 = phi ptr [ %call1, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %call13 = call ptr @strchr(ptr noundef %p.0243, i32 noundef 10)
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %while.body.out_free_pol_crit_edge, label %if.end17

while.body.out_free_pol_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_pol

if.end17:                                         ; preds = %while.body
  %8 = ptrtoint ptr %call13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %call13, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i208 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 20) #11
  %tobool19.not = icmp eq ptr %call7.i208, null
  br i1 %tobool19.not, label %if.end17.out_free_pol_crit_edge, label %if.end21

if.end17.out_free_pol_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_pol

if.end21:                                         ; preds = %if.end17
  %type22 = getelementptr inbounds %struct.setid_rule, ptr %call7.i208, i32 0, i32 3
  %10 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %policy_type, ptr %type22, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed_parent.i) #7
  %11 = ptrtoint ptr %parsed_parent.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %parsed_parent.i, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed_child.i) #7
  %12 = ptrtoint ptr %parsed_child.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %parsed_child.i, align 4, !annotation !55
  %call.i = call ptr @strchr(ptr noundef %p.0243, i32 noundef 58) #7
  %cmp.i209 = icmp eq ptr %call.i, null
  br i1 %cmp.i209, label %if.end21.parse_policy_line.exit.thread_crit_edge, label %if.end.i

if.end21.parse_policy_line.exit.thread_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_policy_line.exit.thread

if.end.i:                                         ; preds = %if.end21
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call.i, align 1
  %call.i.i = call i32 @kstrtouint(ptr noundef %p.0243, i32 noundef 0, ptr noundef nonnull %parsed_parent.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.parse_policy_line.exit.thread_crit_edge

if.end.i.parse_policy_line.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_policy_line.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %call.i76.i = call i32 @kstrtouint(ptr noundef %incdec.ptr.i, i32 noundef 0, ptr noundef nonnull %parsed_child.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool5.not.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.parse_policy_line.exit.thread_crit_edge

if.end3.i.parse_policy_line.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_policy_line.exit.thread

if.end7.i:                                        ; preds = %if.end3.i
  %14 = ptrtoint ptr %type22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type22, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end7.i.parse_policy_line.exit.thread_crit_edge [
    i32 0, label %if.then9.i
    i32 1, label %if.then26.i
  ]

if.end7.i.parse_policy_line.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_policy_line.exit.thread

if.then9.i:                                       ; preds = %if.end7.i
  %src_id.i = getelementptr inbounds %struct.setid_rule, ptr %call7.i208, i32 0, i32 1
  %17 = ptrtoint ptr %f_cred29.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f_cred29.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns.i, align 4
  %21 = ptrtoint ptr %parsed_parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %parsed_parent.i, align 4
  %call10.i = call i32 @make_kuid(ptr noundef %20, i32 noundef %22) #7
  %23 = ptrtoint ptr %src_id.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call10.i, ptr %src_id.i, align 8
  %dst_id.i = getelementptr inbounds %struct.setid_rule, ptr %call7.i208, i32 0, i32 2
  %24 = ptrtoint ptr %f_cred29.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f_cred29.i, align 8
  %user_ns13.i = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %user_ns13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user_ns13.i, align 4
  %28 = ptrtoint ptr %parsed_child.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %parsed_child.i, align 4
  %call14.i = call i32 @make_kuid(ptr noundef %27, i32 noundef %29) #7
  %30 = ptrtoint ptr %dst_id.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call14.i, ptr %dst_id.i, align 4
  %31 = ptrtoint ptr %src_id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack74.i = load i32, ptr %src_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack74.i)
  %cmp.i.i = icmp ne i32 %.unpack74.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14.i)
  %cmp.i77.i = icmp ne i32 %call14.i, -1
  %or.cond.i = select i1 %cmp.i.i, i1 %cmp.i77.i, i1 false
  br i1 %or.cond.i, label %if.then9.i.if.end26_crit_edge, label %if.then9.i.parse_policy_line.exit.thread_crit_edge

if.then9.i.parse_policy_line.exit.thread_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_policy_line.exit.thread

if.then9.i.if.end26_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then26.i:                                      ; preds = %if.end7.i
  %src_id27.i = getelementptr inbounds %struct.setid_rule, ptr %call7.i208, i32 0, i32 1
  %32 = ptrtoint ptr %f_cred29.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f_cred29.i, align 8
  %user_ns30.i = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %user_ns30.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %user_ns30.i, align 4
  %36 = ptrtoint ptr %parsed_parent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %parsed_parent.i, align 4
  %call31.i = call i32 @make_kgid(ptr noundef %35, i32 noundef %37) #7
  %38 = ptrtoint ptr %src_id27.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call31.i, ptr %src_id27.i, align 8
  %dst_id33.i = getelementptr inbounds %struct.setid_rule, ptr %call7.i208, i32 0, i32 2
  %39 = ptrtoint ptr %f_cred29.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f_cred29.i, align 8
  %user_ns36.i = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 25
  %41 = ptrtoint ptr %user_ns36.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %user_ns36.i, align 4
  %43 = ptrtoint ptr %parsed_child.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %parsed_child.i, align 4
  %call37.i = call i32 @make_kgid(ptr noundef %42, i32 noundef %44) #7
  %45 = ptrtoint ptr %dst_id33.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call37.i, ptr %dst_id33.i, align 4
  %46 = ptrtoint ptr %src_id27.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack.i = load i32, ptr %src_id27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i)
  %cmp.i78.i = icmp ne i32 %.unpack.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37.i)
  %cmp.i79.i = icmp ne i32 %call37.i, -1
  %or.cond80.i = select i1 %cmp.i78.i, i1 %cmp.i79.i, i1 false
  br i1 %or.cond80.i, label %if.then26.i.if.end26_crit_edge, label %if.then26.i.parse_policy_line.exit.thread_crit_edge

if.then26.i.parse_policy_line.exit.thread_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_policy_line.exit.thread

if.then26.i.if.end26_crit_edge:                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

parse_policy_line.exit.thread:                    ; preds = %if.then26.i.parse_policy_line.exit.thread_crit_edge, %if.then9.i.parse_policy_line.exit.thread_crit_edge, %if.end7.i.parse_policy_line.exit.thread_crit_edge, %if.end3.i.parse_policy_line.exit.thread_crit_edge, %if.end.i.parse_policy_line.exit.thread_crit_edge, %if.end21.parse_policy_line.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end7.i.parse_policy_line.exit.thread_crit_edge ], [ -22, %if.then26.i.parse_policy_line.exit.thread_crit_edge ], [ -22, %if.then9.i.parse_policy_line.exit.thread_crit_edge ], [ %call.i76.i, %if.end3.i.parse_policy_line.exit.thread_crit_edge ], [ %call.i.i, %if.end.i.parse_policy_line.exit.thread_crit_edge ], [ -22, %if.end21.parse_policy_line.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_child.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_parent.i) #7
  br label %out_free_rule

if.end26:                                         ; preds = %if.then26.i.if.end26_crit_edge, %if.then9.i.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_child.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_parent.i) #7
  %src_id = getelementptr inbounds %struct.setid_rule, ptr %call7.i208, i32 0, i32 1
  %dst_id = getelementptr inbounds %struct.setid_rule, ptr %call7.i208, i32 0, i32 2
  %47 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack = load i32, ptr %src_id, align 8
  %48 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %49 = ptrtoint ptr %dst_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack207 = load i32, ptr %dst_id, align 4
  %50 = insertvalue [1 x i32] undef, i32 %.unpack207, 0
  %call30 = call i32 @_setid_policy_lookup(ptr noundef nonnull %call7.i, [1 x i32] %48, [1 x i32] %50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 2
  br i1 %cmp31, label %do.end, label %if.end35

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %out_free_rule

if.end35:                                         ; preds = %if.end26
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %52, label %if.end35.cleanup_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then4.i
  ]

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end35
  %54 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack20.i = load i32, ptr %src_id, align 8
  %mul.i.i.i = mul i32 %.unpack20.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %call7.i, i32 0, i32 %shr.i.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %57 = ptrtoint ptr %call7.i208 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %56, ptr %call7.i208, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end13.sink.split.i_crit_edge, label %if.then.i.if.end13.sink.split.sink.split.i_crit_edge

if.then.i.if.end13.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.sink.split.i

if.then.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i

if.then4.i:                                       ; preds = %if.end35
  %58 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack.i212 = load i32, ptr %src_id, align 8
  %mul.i.i21.i = mul i32 %.unpack.i212, 1640531527
  %shr.i22.i = lshr i32 %mul.i.i21.i, 24
  %arrayidx11.i = getelementptr [256 x %struct.hlist_head], ptr %call7.i, i32 0, i32 %shr.i22.i
  %59 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx11.i, align 4
  %61 = ptrtoint ptr %call7.i208 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %60, ptr %call7.i208, align 8
  %tobool.not.i23.i = icmp eq ptr %60, null
  br i1 %tobool.not.i23.i, label %if.then4.i.if.end13.sink.split.i_crit_edge, label %if.then4.i.if.end13.sink.split.sink.split.i_crit_edge

if.then4.i.if.end13.sink.split.sink.split.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.sink.split.i

if.then4.i.if.end13.sink.split.i_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i

if.end13.sink.split.sink.split.i:                 ; preds = %if.then4.i.if.end13.sink.split.sink.split.i_crit_edge, %if.then.i.if.end13.sink.split.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %56, %if.then.i.if.end13.sink.split.sink.split.i_crit_edge ], [ %60, %if.then4.i.if.end13.sink.split.sink.split.i_crit_edge ]
  %arrayidx11.sink28.ph.i = phi ptr [ %arrayidx.i, %if.then.i.if.end13.sink.split.sink.split.i_crit_edge ], [ %arrayidx11.i, %if.then4.i.if.end13.sink.split.sink.split.i_crit_edge ]
  %pprev.i24.i = getelementptr inbounds %struct.hlist_node, ptr %.sink.i, i32 0, i32 1
  %62 = ptrtoint ptr %pprev.i24.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call7.i208, ptr %pprev.i24.i, align 4
  br label %if.end13.sink.split.i

if.end13.sink.split.i:                            ; preds = %if.end13.sink.split.sink.split.i, %if.then4.i.if.end13.sink.split.i_crit_edge, %if.then.i.if.end13.sink.split.i_crit_edge
  %arrayidx11.sink28.i = phi ptr [ %arrayidx.i, %if.then.i.if.end13.sink.split.i_crit_edge ], [ %arrayidx11.i, %if.then4.i.if.end13.sink.split.i_crit_edge ], [ %arrayidx11.sink28.ph.i, %if.end13.sink.split.sink.split.i ]
  %63 = ptrtoint ptr %arrayidx11.sink28.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call7.i208, ptr %arrayidx11.sink28.i, align 4
  %pprev34.i26.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i208, i32 0, i32 1
  %64 = ptrtoint ptr %pprev34.i26.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %arrayidx11.sink28.i, ptr %pprev34.i26.i, align 4
  br label %cleanup

out_free_rule:                                    ; preds = %do.end, %parse_policy_line.exit.thread
  %err.0 = phi i32 [ -17, %do.end ], [ %retval.0.i.ph, %parse_policy_line.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i208) #7
  br label %out_free_pol

cleanup:                                          ; preds = %if.end13.sink.split.i, %if.end35.cleanup_crit_edge
  %add.ptr = getelementptr i8, ptr %call13, i32 1
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr, align 1
  %cmp11.not = icmp eq i8 %66, 0
  br i1 %cmp11.not, label %cleanup.for.body.i.preheader_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.for.body.i.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %cleanup.for.body.i.preheader_crit_edge, %while.cond.preheader.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc66.i.for.body.i_crit_edge, %for.body.i.preheader
  %bucket.0114.i = phi i32 [ %inc.i, %for.inc66.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %res.0113.i = phi i32 [ %res.1.lcssa.i, %for.inc66.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i214 = getelementptr [256 x %struct.hlist_head], ptr %call7.i, i32 0, i32 %bucket.0114.i
  %67 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_load4_noabort(i32 %67)
  %rule.1109.i = load ptr, ptr %arrayidx.i214, align 4
  %tobool4.not110.i = icmp eq ptr %rule.1109.i, null
  br i1 %tobool4.not110.i, label %for.body.i.for.inc66.i_crit_edge, label %for.body.i.for.body5.i_crit_edge

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body.i.for.inc66.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc66.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %rule.1112.i = phi ptr [ %rule.1.i, %for.inc.i.for.body5.i_crit_edge ], [ %rule.1109.i, %for.body.i.for.body5.i_crit_edge ]
  %res.1111.i = phi i32 [ %res.2.i, %for.inc.i.for.body5.i_crit_edge ], [ %res.0113.i, %for.body.i.for.body5.i_crit_edge ]
  %dst_id.i215 = getelementptr inbounds %struct.setid_rule, ptr %rule.1112.i, i32 0, i32 2
  %68 = ptrtoint ptr %dst_id.i215 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack.i216 = load i32, ptr %dst_id.i215, align 4
  %69 = insertvalue [1 x i32] undef, i32 %.unpack.i216, 0
  %call.i217 = call i32 @_setid_policy_lookup(ptr noundef nonnull %call7.i, [1 x i32] %69, [1 x i32] [i32 -1]) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %cmp9.i = icmp eq i32 %call.i217, 0
  br i1 %cmp9.i, label %if.then.i218, label %for.body5.i.for.inc.i_crit_edge

for.body5.i.for.inc.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i218:                                     ; preds = %for.body5.i
  %70 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %71, label %if.then.i218.if.end41_crit_edge [
    i32 0, label %if.then.i218.if.end34.i_crit_edge
    i32 1, label %do.end24.i
  ]

if.then.i218.if.end34.i_crit_edge:                ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then.i218.if.end41_crit_edge:                  ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end24.i:                                       ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end24.i, %if.then.i218.if.end34.i_crit_edge
  %.str.16.sink.i = phi ptr [ @.str.16, %do.end24.i ], [ @.str.13, %if.then.i218.if.end34.i_crit_edge ]
  %src_id26.i = getelementptr inbounds %struct.setid_rule, ptr %rule.1112.i, i32 0, i32 1
  %73 = ptrtoint ptr %src_id26.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.unpack101.i = load i32, ptr %src_id26.i, align 4
  %74 = ptrtoint ptr %dst_id.i215 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.unpack102.i = load i32, ptr %dst_id.i215, align 4
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink.i, i32 noundef %.unpack101.i, i32 noundef %.unpack102.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3264, i32 noundef 20) #11
  %tobool36.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not.i, label %if.end34.i.out_free_pol_crit_edge, label %if.end38.i

if.end34.i.out_free_pol_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_pol

if.end38.i:                                       ; preds = %if.end34.i
  %76 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp40.i = icmp eq i32 %77, 0
  %src_id42.i = getelementptr inbounds %struct.setid_rule, ptr %call7.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %dst_id.i215 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dst_id.i215, align 4
  %80 = ptrtoint ptr %src_id42.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %src_id42.i, align 8
  %dst_id44.i = getelementptr inbounds %struct.setid_rule, ptr %call7.i.i, i32 0, i32 2
  %81 = load i32, ptr %dst_id.i215, align 4
  %82 = ptrtoint ptr %dst_id44.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %dst_id44.i, align 4
  %type46.i = getelementptr inbounds %struct.setid_rule, ptr %call7.i.i, i32 0, i32 3
  br i1 %cmp40.i, label %if.end53.thread.i, label %if.end53.i

if.end53.thread.i:                                ; preds = %if.end38.i
  %83 = ptrtoint ptr %type46.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %type46.i, align 8
  %mul.i.i.i.i = mul i32 %79, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i.i = getelementptr [256 x %struct.hlist_head], ptr %call7.i, i32 0, i32 %shr.i.i.i
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i, align 4
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %85, ptr %call7.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %85, null
  br i1 %tobool.not.i.i.i, label %if.end53.thread.i.if.end13.sink.split.i.i_crit_edge, label %if.end53.thread.i.if.end13.sink.split.sink.split.i.i_crit_edge

if.end53.thread.i.if.end13.sink.split.sink.split.i.i_crit_edge: ; preds = %if.end53.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.sink.split.i.i

if.end53.thread.i.if.end13.sink.split.i.i_crit_edge: ; preds = %if.end53.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i.i

if.end53.i:                                       ; preds = %if.end38.i
  %87 = ptrtoint ptr %type46.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %type46.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cond.i = icmp eq i32 %77, 1
  br i1 %cond.i, label %if.then4.i.i, label %if.end53.i.for.inc.i_crit_edge

if.end53.i.for.inc.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then4.i.i:                                     ; preds = %if.end53.i
  %mul.i.i21.i.i = mul i32 %79, 1640531527
  %shr.i22.i.i = lshr i32 %mul.i.i21.i.i, 24
  %arrayidx11.i.i = getelementptr [256 x %struct.hlist_head], ptr %call7.i, i32 0, i32 %shr.i22.i.i
  %88 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx11.i.i, align 4
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %89, ptr %call7.i.i, align 8
  %tobool.not.i23.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i23.i.i, label %if.then4.i.i.if.end13.sink.split.i.i_crit_edge, label %if.then4.i.i.if.end13.sink.split.sink.split.i.i_crit_edge

if.then4.i.i.if.end13.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.sink.split.i.i

if.then4.i.i.if.end13.sink.split.i.i_crit_edge:   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i.i

if.end13.sink.split.sink.split.i.i:               ; preds = %if.then4.i.i.if.end13.sink.split.sink.split.i.i_crit_edge, %if.end53.thread.i.if.end13.sink.split.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %85, %if.end53.thread.i.if.end13.sink.split.sink.split.i.i_crit_edge ], [ %89, %if.then4.i.i.if.end13.sink.split.sink.split.i.i_crit_edge ]
  %arrayidx11.sink28.ph.i.i = phi ptr [ %arrayidx.i.i, %if.end53.thread.i.if.end13.sink.split.sink.split.i.i_crit_edge ], [ %arrayidx11.i.i, %if.then4.i.i.if.end13.sink.split.sink.split.i.i_crit_edge ]
  %pprev.i24.i.i = getelementptr inbounds %struct.hlist_node, ptr %.sink.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %pprev.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %call7.i.i, ptr %pprev.i24.i.i, align 4
  br label %if.end13.sink.split.i.i

if.end13.sink.split.i.i:                          ; preds = %if.end13.sink.split.sink.split.i.i, %if.then4.i.i.if.end13.sink.split.i.i_crit_edge, %if.end53.thread.i.if.end13.sink.split.i.i_crit_edge
  %arrayidx11.sink28.i.i = phi ptr [ %arrayidx.i.i, %if.end53.thread.i.if.end13.sink.split.i.i_crit_edge ], [ %arrayidx11.i.i, %if.then4.i.i.if.end13.sink.split.i.i_crit_edge ], [ %arrayidx11.sink28.ph.i.i, %if.end13.sink.split.sink.split.i.i ]
  %92 = ptrtoint ptr %arrayidx11.sink28.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %call7.i.i, ptr %arrayidx11.sink28.i.i, align 4
  %pprev34.i26.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %pprev34.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %arrayidx11.sink28.i.i, ptr %pprev34.i26.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.sink.split.i.i, %if.end53.i.for.inc.i_crit_edge, %for.body5.i.for.inc.i_crit_edge
  %res.2.i = phi i32 [ %res.1111.i, %for.body5.i.for.inc.i_crit_edge ], [ -22, %if.end53.i.for.inc.i_crit_edge ], [ -22, %if.end13.sink.split.i.i ]
  %94 = ptrtoint ptr %rule.1112.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %rule.1.i = load ptr, ptr %rule.1112.i, align 4
  %tobool4.not.i = icmp eq ptr %rule.1.i, null
  br i1 %tobool4.not.i, label %for.inc.i.for.inc66.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.i

for.inc.i.for.inc66.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc66.i

for.inc66.i:                                      ; preds = %for.inc.i.for.inc66.i_crit_edge, %for.body.i.for.inc66.i_crit_edge
  %res.1.lcssa.i = phi i32 [ %res.0113.i, %for.body.i.for.inc66.i_crit_edge ], [ %res.2.i, %for.inc.i.for.inc66.i_crit_edge ]
  %inc.i = add nuw nsw i32 %bucket.0114.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %verify_ruleset.exit, label %for.inc66.i.for.body.i_crit_edge

for.inc66.i.for.body.i_crit_edge:                 ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

verify_ruleset.exit:                              ; preds = %for.inc66.i
  %95 = zext i32 %res.1.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %res.1.lcssa.i, label %verify_ruleset.exit.out_free_pol_crit_edge [
    i32 0, label %verify_ruleset.exit.if.end41_crit_edge
    i32 -22, label %verify_ruleset.exit.if.end41_crit_edge263
  ]

verify_ruleset.exit.if.end41_crit_edge263:        ; preds = %verify_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

verify_ruleset.exit.if.end41_crit_edge:           ; preds = %verify_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

verify_ruleset.exit.out_free_pol_crit_edge:       ; preds = %verify_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_pol

if.end41:                                         ; preds = %verify_ruleset.exit.if.end41_crit_edge, %verify_ruleset.exit.if.end41_crit_edge263, %if.then.i218.if.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %policy_type)
  %cmp42 = icmp eq i32 %policy_type, 0
  br i1 %cmp42, label %if.then44, label %if.then100

if.then44:                                        ; preds = %if.end41
  call void @mutex_lock_nested(ptr noundef nonnull @uid_policy_update_lock, i32 noundef 0) #7
  %call.i220 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @uid_policy_update_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool47.not = icmp eq i32 %call.i220, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %if.then44.do.end56_crit_edge

if.then44.do.end56_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

land.lhs.true48:                                  ; preds = %if.then44
  %call49 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.do.end56_crit_edge, label %land.lhs.true51

land.lhs.true48.do.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %.b206 = load i1, ptr @handle_policy_update.__warned, align 1
  br i1 %.b206, label %land.lhs.true51.do.end56_crit_edge, label %if.then53

land.lhs.true51.do.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @handle_policy_update.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 214, ptr noundef nonnull @.str.4) #7
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %land.lhs.true51.do.end56_crit_edge, %land.lhs.true48.do.end56_crit_edge, %if.then44.do.end56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @safesetid_setuid_rules to i32))
  %96 = load ptr, ptr @safesetid_setuid_rules, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @safesetid_setuid_rules to i32))
  store volatile ptr %call7.i, ptr @safesetid_setuid_rules, align 4
  call void @mutex_unlock(ptr noundef nonnull @uid_policy_update_lock) #7
  br label %out_free_pol

if.then100:                                       ; preds = %if.end41
  call void @mutex_lock_nested(ptr noundef nonnull @gid_policy_update_lock, i32 noundef 0) #7
  %call.i221 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @gid_policy_update_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool104.not = icmp eq i32 %call.i221, 0
  br i1 %tobool104.not, label %land.lhs.true105, label %if.then100.do.end113_crit_edge

if.then100.do.end113_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end113

land.lhs.true105:                                 ; preds = %if.then100
  %call106 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %land.lhs.true105.do.end113_crit_edge, label %land.lhs.true108

land.lhs.true105.do.end113_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end113

land.lhs.true108:                                 ; preds = %land.lhs.true105
  %.b204205 = load i1, ptr @handle_policy_update.__warned.9, align 1
  br i1 %.b204205, label %land.lhs.true108.do.end113_crit_edge, label %if.then110

land.lhs.true108.do.end113_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end113

if.then110:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @handle_policy_update.__warned.9, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 219, ptr noundef nonnull @.str.4) #7
  br label %do.end113

do.end113:                                        ; preds = %if.then110, %land.lhs.true108.do.end113_crit_edge, %land.lhs.true105.do.end113_crit_edge, %if.then100.do.end113_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @safesetid_setgid_rules to i32))
  %97 = load ptr, ptr @safesetid_setgid_rules, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @safesetid_setgid_rules to i32))
  store volatile ptr %call7.i, ptr @safesetid_setgid_rules, align 4
  call void @mutex_unlock(ptr noundef nonnull @gid_policy_update_lock) #7
  br label %out_free_pol

out_free_pol:                                     ; preds = %do.end113, %do.end56, %verify_ruleset.exit.out_free_pol_crit_edge, %if.end34.i.out_free_pol_crit_edge, %out_free_rule, %if.end17.out_free_pol_crit_edge, %while.body.out_free_pol_crit_edge
  %err.2 = phi i32 [ %res.1.lcssa.i, %verify_ruleset.exit.out_free_pol_crit_edge ], [ %len, %do.end113 ], [ %len, %do.end56 ], [ %err.0, %out_free_rule ], [ -12, %if.end34.i.out_free_pol_crit_edge ], [ -22, %while.body.out_free_pol_crit_edge ], [ -12, %if.end17.out_free_pol_crit_edge ]
  %pol.1 = phi ptr [ %call7.i, %verify_ruleset.exit.out_free_pol_crit_edge ], [ %97, %do.end113 ], [ %96, %do.end56 ], [ %call7.i, %out_free_rule ], [ %call7.i, %if.end34.i.out_free_pol_crit_edge ], [ %call7.i, %while.body.out_free_pol_crit_edge ], [ %call7.i, %if.end17.out_free_pol_crit_edge ]
  call void @kfree(ptr noundef %call1) #7
  %tobool164.not = icmp eq ptr %pol.1, null
  br i1 %tobool164.not, label %out_free_pol.cleanup167_crit_edge, label %out_free_pol.if.then165_crit_edge

out_free_pol.if.then165_crit_edge:                ; preds = %out_free_pol
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then165

out_free_pol.cleanup167_crit_edge:                ; preds = %out_free_pol
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup167

if.then165:                                       ; preds = %out_free_pol.if.then165_crit_edge, %out_free_pol.thread235, %out_free_pol.thread
  %pol.2234 = phi ptr [ %call7.i, %out_free_pol.thread ], [ %pol.1, %out_free_pol.if.then165_crit_edge ], [ %call7.i, %out_free_pol.thread235 ]
  %err.3233 = phi i32 [ %4, %out_free_pol.thread ], [ %err.2, %out_free_pol.if.then165_crit_edge ], [ -12, %out_free_pol.thread235 ]
  %rcu.i = getelementptr inbounds %struct.setid_ruleset, ptr %pol.2234, i32 0, i32 2
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__release_ruleset) #7
  br label %cleanup167

cleanup167:                                       ; preds = %if.then165, %out_free_pol.cleanup167_crit_edge, %entry.cleanup167_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup167_crit_edge ], [ %err.3233, %if.then165 ], [ %err.2, %out_free_pol.cleanup167_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_setid_policy_lookup(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__release_ruleset(ptr noundef %rcu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -1028
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %entry
  %bucket.039 = phi i32 [ 0, %entry ], [ %inc, %for.inc25.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr %add.ptr, i32 0, i32 %bucket.039
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool8.not37 = icmp eq ptr %1, null
  br i1 %tobool8.not37, label %for.body.for.inc25_crit_edge, label %for.body.land.rhs9_crit_edge

for.body.land.rhs9_crit_edge:                     ; preds = %for.body
  br label %land.rhs9

for.body.for.inc25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25

land.rhs9:                                        ; preds = %land.rhs9.land.rhs9_crit_edge, %for.body.land.rhs9_crit_edge
  %rule.138 = phi ptr [ %3, %land.rhs9.land.rhs9_crit_edge ], [ %1, %for.body.land.rhs9_crit_edge ]
  %2 = ptrtoint ptr %rule.138 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule.138, align 4
  tail call void @kfree(ptr noundef nonnull %rule.138) #7
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %land.rhs9.for.inc25_crit_edge, label %land.rhs9.land.rhs9_crit_edge

land.rhs9.land.rhs9_crit_edge:                    ; preds = %land.rhs9
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs9

land.rhs9.for.inc25_crit_edge:                    ; preds = %land.rhs9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25

for.inc25:                                        ; preds = %land.rhs9.for.inc25_crit_edge, %for.body.for.inc25_crit_edge
  %inc = add nuw nsw i32 %bucket.039, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end26, label %for.inc25.for.body_crit_edge

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end26:                                        ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  %policy_str = getelementptr i8, ptr %rcu, i32 -4
  %4 = ptrtoint ptr %policy_str to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %policy_str, align 4
  tail call void @kfree(ptr noundef %5) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safesetid_gid_file_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @safesetid_setgid_rules to i32))
  %0 = load ptr, ptr @safesetid_setgid_rules, align 4
  %call = tail call fastcc i32 @safesetid_file_read(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef nonnull @gid_policy_update_lock, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safesetid_gid_file_write(ptr noundef %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @file_ns_capable(ptr noundef %file, ptr noundef nonnull @init_user_ns, i32 noundef 33) #7
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @handle_policy_update(ptr noundef %file, ptr noundef %buf, i32 noundef %len, i32 noundef 1)
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -1, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_safesetid__223_345_safesetid_init_securityfs5, !1, !"__initcall__kmod_safesetid__223_345_safesetid_init_securityfs5", i1 false, i1 false}
!1 = !{!"../security/safesetid/securityfs.c", i32 345, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/safesetid/securityfs.c", i32 318, i32 37}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/safesetid/securityfs.c", i32 324, i32 43}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/safesetid/securityfs.c", i32 331, i32 43}
!8 = !{ptr @safesetid_uid_file_fops, !9, !"safesetid_uid_file_fops", i1 false, i1 false}
!9 = !{!"../security/safesetid/securityfs.c", i32 298, i32 37}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../security/safesetid/securityfs.c", i32 271, i32 8}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/safesetid/securityfs.c", i32 22, i32 8}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @uid_policy_update_lock, !15, !"uid_policy_update_lock", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/safesetid/securityfs.c", i32 187, i32 4}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @handle_policy_update._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @handle_policy_update._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../security/safesetid/securityfs.c", i32 213, i32 9}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../security/safesetid/securityfs.c", i32 218, i32 9}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/safesetid/securityfs.c", i32 223, i32 3}
!29 = !{ptr @handle_policy_update._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @handle_policy_update._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/safesetid/securityfs.c", i32 107, i32 5}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @verify_ruleset._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @verify_ruleset._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/safesetid/securityfs.c", i32 111, i32 5}
!38 = !{ptr @verify_ruleset._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @verify_ruleset._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/safesetid/securityfs.c", i32 23, i32 8}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gid_policy_update_lock, !41, !"gid_policy_update_lock", i1 false, i1 false}
!44 = !{ptr @safesetid_gid_file_fops, !45, !"safesetid_gid_file_fops", i1 false, i1 false}
!45 = !{!"../security/safesetid/securityfs.c", i32 303, i32 37}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
!56 = !{i64 2153411536}
!57 = !{i64 2153421487}
