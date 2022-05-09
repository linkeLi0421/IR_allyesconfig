; ModuleID = '/llk/IR_all_yes/security/apparmor/mount.c_pt.bc'
source_filename = "../security/apparmor/mount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.aa_perms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%union.anon.164 = type { ptr }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.129, %struct.list_head, %struct.list_head, %union.anon.130 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.127 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%union.anon.129 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.130 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.aa_dfa = type { %struct.kref, i16, i32, [8 x ptr] }
%struct.table_header = type { i16, i16, i32, i32, [0 x i8] }
%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, %union.anon.152 }
%union.anon.152 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, i32, ptr, ptr, i32 }
%struct.common_audit_data = type { i8, %union.anon.159, %union.anon.164 }
%union.anon.159 = type { %struct.path }
%struct.aa_proxy = type { %struct.kref, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"security/apparmor/mount.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_remount = private unnamed_addr constant [11 x i8] c"aa_remount\00", align 1
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!path)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.aa_bind_mount = private unnamed_addr constant [14 x i8] c"aa_bind_mount\00", align 1
@__func__.aa_mount_change_type = private unnamed_addr constant [21 x i8] c"aa_mount_change_type\00", align 1
@__func__.aa_move_mount = private unnamed_addr constant [14 x i8] c"aa_move_mount\00", align 1
@__func__.aa_new_mount = private unnamed_addr constant [13 x i8] c"aa_new_mount\00", align 1
@__func__.aa_umount = private unnamed_addr constant [10 x i8] c"aa_umount\00", align 1
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!mnt)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.aa_pivotroot = private unnamed_addr constant [13 x i8] c"aa_pivotroot\00", align 1
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!old_path)): \00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!new_path)): \00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!__new_)): \00", [32 x i8] zeroinitializer }, align 32
@aa_g_debug = external dso_local local_unnamed_addr global i8, align 1
@aa_pivotroot._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@aa_pivotroot.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @__func__.aa_pivotroot, ptr @.str, ptr @.str.9, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apparmor\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor: label build failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"label build failed\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pivotroot\00", [22 x i8] zeroinitializer }, align 32
@nullperms = external dso_local local_unnamed_addr global %struct.aa_perms, align 4
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((!profile)): \00", [63 x i8] zeroinitializer }, align 32
@__func__.path_flags = private unnamed_addr constant [11 x i8] c"path_flags\00", align 1
@__func__.match_mnt_path_str = private unnamed_addr constant [19 x i8] c"match_mnt_path_str\00", align 1
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((!mntpath)): \00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!buffer)): \00", [32 x i8] zeroinitializer }, align 32
@mnt_info_table = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mount\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!dfa)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.do_match_mnt = private unnamed_addr constant [13 x i8] c"do_match_mnt\00", align 1
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"match succeeded\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed mntpnt match\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed srcname match\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed type match\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed flags match\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed data match\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"umount\00", [25 x i8] zeroinitializer }, align 32
@__func__.build_pivotroot = private unnamed_addr constant [16 x i8] c"build_pivotroot\00", align 1
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__const.audit_mount.sa = private unnamed_addr constant { i8, [3 x i8], { ptr, [4 x i8] }, %union.anon.164 } { i8 7, [3 x i8] zeroinitializer, { ptr, [4 x i8] } { ptr null, [4 x i8] c"\FF\FF\FF\FF" }, %union.anon.164 zeroinitializer }, align 4
@aa_g_audit = external dso_local local_unnamed_addr global i32, align 4
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" fstype=\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" srcname=\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" trans=\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" flags=\22\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" options=\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", nosuid\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", nodev\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", noexec\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", sync\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", remount\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", mand\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", dirsync\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", noatime\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", nodiratime\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", rbind\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", bind\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", move\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", silent\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", acl\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", runbindable\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", unbindable\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", rprivate\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", private\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", rslave\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", slave\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", rshared\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", shared\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", relatime\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", iversion\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", strictatime\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", nouser\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 4, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 4, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 406, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 407, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 621, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 699, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 700, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 707, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 711, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 732, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 380, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 326, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 327, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"mnt_info_table\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 226, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 354, i32 30 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 246, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 227, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 228, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 229, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 230, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 231, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 232, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 609, i32 30 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 424, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 425, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 431, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 401, i32 7 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 695, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 723, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 91, i32 24 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 95, i32 24 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 99, i32 24 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 103, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 105, i32 24 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 108, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 30, i32 24 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 32, i32 24 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 34, i32 24 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 36, i32 24 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 38, i32 24 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 40, i32 24 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 42, i32 24 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 44, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 46, i32 24 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 48, i32 24 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 50, i32 24 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 52, i32 41 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 52, i32 53 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 54, i32 24 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 56, i32 24 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 58, i32 24 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 60, i32 41 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 61, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 63, i32 41 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 64, i32 6 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 66, i32 41 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 67, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 69, i32 41 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 70, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 72, i32 24 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 74, i32 24 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 76, i32 24 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [29 x i8] c"../security/apparmor/mount.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 78, i32 24 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @aa_pivotroot._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @mnt_info_table, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_pivotroot._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt_info_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_remount(ptr noundef %label, ptr noundef %path, i32 noundef %flags, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_remount) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %path, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !171

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 407, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.aa_remount) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_type, align 32
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fs_flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60 = icmp ne i32 %and, 0
  %call = tail call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool61.not = icmp eq ptr %call, null
  br i1 %tobool61.not, label %if.end50.cleanup_crit_edge, label %if.end63

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %if.end50
  %call64 = tail call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx96 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call64
  %8 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx96, align 4
  %tobool67.not97 = icmp eq ptr %9, null
  br i1 %tobool67.not97, label %if.end63.for.end_crit_edge, label %if.end63.if.end.i_crit_edge

if.end63.if.end.i_crit_edge:                      ; preds = %if.end63
  br label %if.end.i

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i:                                         ; preds = %for.cond.if.end.i_crit_edge, %if.end63.if.end.i_crit_edge
  %10 = phi ptr [ %15, %for.cond.if.end.i_crit_edge ], [ %9, %if.end63.if.end.i_crit_edge ]
  %__E.099 = phi i32 [ %13, %for.cond.if.end.i_crit_edge ], [ 0, %if.end63.if.end.i_crit_edge ]
  %i.sroa.0.098 = phi i32 [ %call77, %for.cond.if.end.i_crit_edge ], [ %call64, %if.end63.if.end.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.aa_profile, ptr %10, i32 0, i32 12, i32 1, i32 7
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool61.not.i = icmp eq i32 %12, 0
  br i1 %tobool61.not.i, label %if.end.i.match_mnt.exit.thread_crit_edge, label %match_mnt.exit

if.end.i.match_mnt.exit.thread_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_mnt.exit.thread

match_mnt.exit:                                   ; preds = %if.end.i
  %call74.i = tail call fastcc i32 @match_mnt_path_str(ptr noundef nonnull %10, ptr noundef %path, ptr noundef nonnull %call, ptr noundef null, ptr noundef null, i32 noundef %flags, ptr noundef %data, i1 noundef zeroext %tobool60, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool71.not = icmp eq i32 %call74.i, 0
  br i1 %tobool71.not, label %match_mnt.exit.match_mnt.exit.thread_crit_edge, label %match_mnt.exit.for.cond_crit_edge

match_mnt.exit.for.cond_crit_edge:                ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

match_mnt.exit.match_mnt.exit.thread_crit_edge:   ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_mnt.exit.thread

match_mnt.exit.thread:                            ; preds = %match_mnt.exit.match_mnt.exit.thread_crit_edge, %if.end.i.match_mnt.exit.thread_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %match_mnt.exit.thread, %match_mnt.exit.for.cond_crit_edge
  %13 = phi i32 [ %__E.099, %match_mnt.exit.thread ], [ %call74.i, %match_mnt.exit.for.cond_crit_edge ]
  %add = add i32 %i.sroa.0.098, 1
  %call77 = tail call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call77
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool67.not = icmp eq ptr %15, null
  br i1 %tobool67.not, label %for.cond.for.end_crit_edge, label %for.cond.if.end.i_crit_edge

for.cond.if.end.i_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end63.for.end_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %if.end63.for.end_crit_edge ], [ %13, %for.cond.for.end_crit_edge ]
  tail call void @aa_put_buffer(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %__E.0.lcssa, %for.end ], [ -12, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_get_buffer(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_next_confined(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_put_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_bind_mount(ptr noundef %label, ptr noundef %path, ptr noundef %dev_name, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %devname.i = alloca ptr, align 4
  %info.i = alloca ptr, align 4
  %old_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_path) #8
  %0 = ptrtoint ptr %old_path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_path, align 4, !annotation !172
  %1 = getelementptr inbounds %struct.path, ptr %old_path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !172
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 430, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_bind_mount) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %path, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !171

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.aa_bind_mount) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool60.not = icmp eq ptr %dev_name, null
  br i1 %tobool60.not, label %if.end50.cleanup_crit_edge, label %lor.lhs.false

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end50
  %3 = ptrtoint ptr %dev_name to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dev_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool61.not = icmp eq i8 %4, 0
  br i1 %tobool61.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end63

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false
  %and = and i32 %flags, 20480
  %call = call i32 @kern_path(ptr noundef nonnull %dev_name, i32 noundef 5, ptr noundef nonnull %old_path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool64.not = icmp eq i32 %call, 0
  br i1 %tobool64.not, label %if.end66, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.end63
  %call67 = call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %call68 = call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool69.not = icmp eq ptr %call67, null
  %tobool71.not = icmp eq ptr %call68, null
  %or.cond = select i1 %tobool69.not, i1 true, i1 %tobool71.not
  br i1 %or.cond, label %if.end66.out_crit_edge, label %if.end73

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end73:                                         ; preds = %if.end66
  %call74 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx112 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call74
  %5 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx112, align 4
  %tobool77.not113 = icmp eq ptr %6, null
  br i1 %tobool77.not113, label %if.end73.out_crit_edge, label %if.end73.if.end51.i_crit_edge

if.end73.if.end51.i_crit_edge:                    ; preds = %if.end73
  br label %if.end51.i

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end51.i:                                       ; preds = %for.cond.if.end51.i_crit_edge, %if.end73.if.end51.i_crit_edge
  %7 = phi ptr [ %32, %for.cond.if.end51.i_crit_edge ], [ %6, %if.end73.if.end51.i_crit_edge ]
  %__E.0115 = phi i32 [ %30, %for.cond.if.end51.i_crit_edge ], [ 0, %if.end73.if.end51.i_crit_edge ]
  %i.sroa.0.0114 = phi i32 [ %call86, %for.cond.if.end51.i_crit_edge ], [ %call74, %if.end73.if.end51.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devname.i) #8
  %8 = ptrtoint ptr %devname.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %devname.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #8
  %9 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %info.i, align 4
  %arrayidx.i.i = getelementptr %struct.aa_profile, ptr %7, i32 0, i32 12, i32 1, i32 7
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool61.not.i = icmp eq i32 %11, 0
  br i1 %tobool61.not.i, label %match_mnt.exit.thread, label %path_flags.exit.i

match_mnt.exit.thread:                            ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devname.i) #8
  br label %29

path_flags.exit.i:                                ; preds = %if.end51.i
  %path_flags.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %path_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %path_flags.i.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %20)
  %cmp.i.i = icmp eq i16 %20, 16384
  %cond.i.i = zext i1 %cmp.i.i to i32
  %or.i.i = or i32 %13, %cond.i.i
  %disconnected.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 10
  %21 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disconnected.i, align 4
  %call67.i = call i32 @aa_path_name(ptr noundef nonnull %old_path, i32 noundef %or.i.i, ptr noundef %call68, ptr noundef nonnull %devname.i, ptr noundef nonnull %info.i, ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %path_flags.exit.i.match_mnt.exit_crit_edge, label %if.then69.i

path_flags.exit.i.match_mnt.exit_crit_edge:       ; preds = %path_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_mnt.exit

if.then69.i:                                      ; preds = %path_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = inttoptr i32 %call67.i to ptr
  %24 = ptrtoint ptr %devname.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %devname.i, align 4
  br label %match_mnt.exit

match_mnt.exit:                                   ; preds = %if.then69.i, %path_flags.exit.i.match_mnt.exit_crit_edge
  %25 = ptrtoint ptr %devname.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devname.i, align 4
  %27 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info.i, align 4
  %call74.i = call fastcc i32 @match_mnt_path_str(ptr noundef nonnull %7, ptr noundef %path, ptr noundef %call67, ptr noundef %26, ptr noundef null, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, ptr noundef %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devname.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool80.not = icmp eq i32 %call74.i, 0
  br i1 %tobool80.not, label %match_mnt.exit._crit_edge, label %match_mnt.exit.for.cond_crit_edge

match_mnt.exit.for.cond_crit_edge:                ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

match_mnt.exit._crit_edge:                        ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %29

29:                                               ; preds = %match_mnt.exit._crit_edge, %match_mnt.exit.thread
  br label %for.cond

for.cond:                                         ; preds = %29, %match_mnt.exit.for.cond_crit_edge
  %30 = phi i32 [ %__E.0115, %29 ], [ %call74.i, %match_mnt.exit.for.cond_crit_edge ]
  %add = add i32 %i.sroa.0.0114, 1
  %call86 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call86
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %tobool77.not = icmp eq ptr %32, null
  br i1 %tobool77.not, label %for.cond.out_crit_edge, label %for.cond.if.end51.i_crit_edge

for.cond.if.end51.i_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.cond.out_crit_edge, %if.end73.out_crit_edge, %if.end66.out_crit_edge
  %error.0 = phi i32 [ -12, %if.end66.out_crit_edge ], [ 0, %if.end73.out_crit_edge ], [ %30, %for.cond.out_crit_edge ]
  call void @aa_put_buffer(ptr noundef %call67) #8
  call void @aa_put_buffer(ptr noundef %call68) #8
  call void @path_put(ptr noundef nonnull %old_path) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end63.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end50.cleanup_crit_edge ], [ %call, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_path) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_mount_change_type(ptr noundef %label, ptr noundef %path, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 466, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_mount_change_type) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %path, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !171

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 467, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.aa_mount_change_type) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %and = and i32 %flags, 2015232
  %call = tail call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool60.not = icmp eq ptr %call, null
  br i1 %tobool60.not, label %if.end50.cleanup_crit_edge, label %if.end62

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62:                                         ; preds = %if.end50
  %call63 = tail call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx93 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call63
  %0 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx93, align 4
  %tobool66.not94 = icmp eq ptr %1, null
  br i1 %tobool66.not94, label %if.end62.for.end_crit_edge, label %if.end62.if.end.i_crit_edge

if.end62.if.end.i_crit_edge:                      ; preds = %if.end62
  br label %if.end.i

if.end62.for.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i:                                         ; preds = %for.cond.if.end.i_crit_edge, %if.end62.if.end.i_crit_edge
  %2 = phi ptr [ %7, %for.cond.if.end.i_crit_edge ], [ %1, %if.end62.if.end.i_crit_edge ]
  %__E.096 = phi i32 [ %5, %for.cond.if.end.i_crit_edge ], [ 0, %if.end62.if.end.i_crit_edge ]
  %i.sroa.0.095 = phi i32 [ %call75, %for.cond.if.end.i_crit_edge ], [ %call63, %if.end62.if.end.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.aa_profile, ptr %2, i32 0, i32 12, i32 1, i32 7
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool61.not.i = icmp eq i32 %4, 0
  br i1 %tobool61.not.i, label %if.end.i.match_mnt.exit.thread_crit_edge, label %match_mnt.exit

if.end.i.match_mnt.exit.thread_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_mnt.exit.thread

match_mnt.exit:                                   ; preds = %if.end.i
  %call74.i = tail call fastcc i32 @match_mnt_path_str(ptr noundef nonnull %2, ptr noundef %path, ptr noundef nonnull %call, ptr noundef null, ptr noundef null, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool69.not = icmp eq i32 %call74.i, 0
  br i1 %tobool69.not, label %match_mnt.exit.match_mnt.exit.thread_crit_edge, label %match_mnt.exit.for.cond_crit_edge

match_mnt.exit.for.cond_crit_edge:                ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

match_mnt.exit.match_mnt.exit.thread_crit_edge:   ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_mnt.exit.thread

match_mnt.exit.thread:                            ; preds = %match_mnt.exit.match_mnt.exit.thread_crit_edge, %if.end.i.match_mnt.exit.thread_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %match_mnt.exit.thread, %match_mnt.exit.for.cond_crit_edge
  %5 = phi i32 [ %__E.096, %match_mnt.exit.thread ], [ %call74.i, %match_mnt.exit.for.cond_crit_edge ]
  %add = add i32 %i.sroa.0.095, 1
  %call75 = tail call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call75
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool66.not = icmp eq ptr %7, null
  br i1 %tobool66.not, label %for.cond.for.end_crit_edge, label %for.cond.if.end.i_crit_edge

for.cond.if.end.i_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end62.for.end_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %if.end62.for.end_crit_edge ], [ %5, %for.cond.for.end_crit_edge ]
  tail call void @aa_put_buffer(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %__E.0.lcssa, %for.end ], [ -12, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_move_mount(ptr noundef %label, ptr noundef %path, ptr noundef %orig_name) local_unnamed_addr #0 align 64 {
entry:
  %devname.i = alloca ptr, align 4
  %info.i = alloca ptr, align 4
  %old_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_path) #8
  %0 = ptrtoint ptr %old_path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_path, align 4, !annotation !172
  %1 = getelementptr inbounds %struct.path, ptr %old_path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !172
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 492, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_move_mount) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %path, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !171

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 493, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.aa_move_mount) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool60.not = icmp eq ptr %orig_name, null
  br i1 %tobool60.not, label %if.end50.cleanup_crit_edge, label %lor.lhs.false

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end50
  %3 = ptrtoint ptr %orig_name to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %orig_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool61.not = icmp eq i8 %4, 0
  br i1 %tobool61.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end63

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false
  %call = call i32 @kern_path(ptr noundef nonnull %orig_name, i32 noundef 1, ptr noundef nonnull %old_path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool64.not = icmp eq i32 %call, 0
  br i1 %tobool64.not, label %if.end66, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.end63
  %call67 = call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %call68 = call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool69.not = icmp eq ptr %call67, null
  %tobool71.not = icmp eq ptr %call68, null
  %or.cond = select i1 %tobool69.not, i1 true, i1 %tobool71.not
  br i1 %or.cond, label %if.end66.out_crit_edge, label %if.end73

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end73:                                         ; preds = %if.end66
  %call74 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx111 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call74
  %5 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx111, align 4
  %tobool77.not112 = icmp eq ptr %6, null
  br i1 %tobool77.not112, label %if.end73.out_crit_edge, label %if.end73.if.end51.i_crit_edge

if.end73.if.end51.i_crit_edge:                    ; preds = %if.end73
  br label %if.end51.i

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end51.i:                                       ; preds = %for.cond.if.end51.i_crit_edge, %if.end73.if.end51.i_crit_edge
  %7 = phi ptr [ %32, %for.cond.if.end51.i_crit_edge ], [ %6, %if.end73.if.end51.i_crit_edge ]
  %__E.0114 = phi i32 [ %30, %for.cond.if.end51.i_crit_edge ], [ 0, %if.end73.if.end51.i_crit_edge ]
  %i.sroa.0.0113 = phi i32 [ %call86, %for.cond.if.end51.i_crit_edge ], [ %call74, %if.end73.if.end51.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devname.i) #8
  %8 = ptrtoint ptr %devname.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %devname.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #8
  %9 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %info.i, align 4
  %arrayidx.i.i = getelementptr %struct.aa_profile, ptr %7, i32 0, i32 12, i32 1, i32 7
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool61.not.i = icmp eq i32 %11, 0
  br i1 %tobool61.not.i, label %match_mnt.exit.thread, label %path_flags.exit.i

match_mnt.exit.thread:                            ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devname.i) #8
  br label %29

path_flags.exit.i:                                ; preds = %if.end51.i
  %path_flags.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %path_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %path_flags.i.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %20)
  %cmp.i.i = icmp eq i16 %20, 16384
  %cond.i.i = zext i1 %cmp.i.i to i32
  %or.i.i = or i32 %13, %cond.i.i
  %disconnected.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 10
  %21 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disconnected.i, align 4
  %call67.i = call i32 @aa_path_name(ptr noundef nonnull %old_path, i32 noundef %or.i.i, ptr noundef %call68, ptr noundef nonnull %devname.i, ptr noundef nonnull %info.i, ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %path_flags.exit.i.match_mnt.exit_crit_edge, label %if.then69.i

path_flags.exit.i.match_mnt.exit_crit_edge:       ; preds = %path_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_mnt.exit

if.then69.i:                                      ; preds = %path_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = inttoptr i32 %call67.i to ptr
  %24 = ptrtoint ptr %devname.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %devname.i, align 4
  br label %match_mnt.exit

match_mnt.exit:                                   ; preds = %if.then69.i, %path_flags.exit.i.match_mnt.exit_crit_edge
  %25 = ptrtoint ptr %devname.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devname.i, align 4
  %27 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info.i, align 4
  %call74.i = call fastcc i32 @match_mnt_path_str(ptr noundef nonnull %7, ptr noundef %path, ptr noundef %call67, ptr noundef %26, ptr noundef null, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, ptr noundef %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devname.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool80.not = icmp eq i32 %call74.i, 0
  br i1 %tobool80.not, label %match_mnt.exit._crit_edge, label %match_mnt.exit.for.cond_crit_edge

match_mnt.exit.for.cond_crit_edge:                ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

match_mnt.exit._crit_edge:                        ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %29

29:                                               ; preds = %match_mnt.exit._crit_edge, %match_mnt.exit.thread
  br label %for.cond

for.cond:                                         ; preds = %29, %match_mnt.exit.for.cond_crit_edge
  %30 = phi i32 [ %__E.0114, %29 ], [ %call74.i, %match_mnt.exit.for.cond_crit_edge ]
  %add = add i32 %i.sroa.0.0113, 1
  %call86 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call86
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %tobool77.not = icmp eq ptr %32, null
  br i1 %tobool77.not, label %for.cond.out_crit_edge, label %for.cond.if.end51.i_crit_edge

for.cond.if.end51.i_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.cond.out_crit_edge, %if.end73.out_crit_edge, %if.end66.out_crit_edge
  %error.0 = phi i32 [ -12, %if.end66.out_crit_edge ], [ 0, %if.end73.out_crit_edge ], [ %30, %for.cond.out_crit_edge ]
  call void @aa_put_buffer(ptr noundef %call67) #8
  call void @aa_put_buffer(ptr noundef %call68) #8
  call void @path_put(ptr noundef nonnull %old_path) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end63.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end50.cleanup_crit_edge ], [ %call, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_path) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_new_mount(ptr noundef %label, ptr noundef %dev_name, ptr noundef %path, ptr noundef %type, i32 noundef %flags, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %devname.i = alloca ptr, align 4
  %info.i = alloca ptr, align 4
  %tmp_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_path) #8
  %0 = ptrtoint ptr %tmp_path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp_path, align 4, !annotation !172
  %1 = getelementptr inbounds %struct.path, ptr %tmp_path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !172
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 529, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_new_mount) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %path, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !171

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 530, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.aa_new_mount) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool60.not = icmp eq ptr %type, null
  br i1 %tobool60.not, label %if.end50.if.end79_crit_edge, label %if.then61

if.end50.if.end79_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then61:                                        ; preds = %if.end50
  %call = tail call ptr @get_fs_type(ptr noundef nonnull %type) #8
  %tobool62.not = icmp eq ptr %call, null
  br i1 %tobool62.not, label %if.then61.cleanup136_crit_edge, label %if.end64

if.then61.cleanup136_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup136

if.end64:                                         ; preds = %if.then61
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fs_flags, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65 = icmp ne i32 %and, 0
  %and67 = and i32 %4, 1
  tail call void @put_filesystem(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end64.if.end79_crit_edge, label %if.then69

if.end64.if.end79_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then69:                                        ; preds = %if.end64
  %tobool70.not = icmp eq ptr %dev_name, null
  br i1 %tobool70.not, label %if.then69.cleanup136_crit_edge, label %lor.lhs.false

if.then69.cleanup136_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup136

lor.lhs.false:                                    ; preds = %if.then69
  %5 = ptrtoint ptr %dev_name to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dev_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool71.not = icmp eq i8 %6, 0
  br i1 %tobool71.not, label %lor.lhs.false.cleanup136_crit_edge, label %if.end73

lor.lhs.false.cleanup136_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup136

if.end73:                                         ; preds = %lor.lhs.false
  %call74 = call i32 @kern_path(ptr noundef nonnull %dev_name, i32 noundef 1, ptr noundef nonnull %tmp_path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end73.if.end79_crit_edge, label %if.end73.cleanup136_crit_edge

if.end73.cleanup136_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup136

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.end79:                                         ; preds = %if.end73.if.end79_crit_edge, %if.end64.if.end79_crit_edge, %if.end50.if.end79_crit_edge
  %dev_path.2 = phi ptr [ null, %if.end50.if.end79_crit_edge ], [ null, %if.end64.if.end79_crit_edge ], [ %tmp_path, %if.end73.if.end79_crit_edge ]
  %binary.1.off0 = phi i1 [ true, %if.end50.if.end79_crit_edge ], [ %tobool65, %if.end64.if.end79_crit_edge ], [ %tobool65, %if.end73.if.end79_crit_edge ]
  %call80 = call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.end79.out_crit_edge, label %if.end83

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end83:                                         ; preds = %if.end79
  %tobool84.not = icmp eq ptr %dev_path.2, null
  br i1 %tobool84.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %if.end83
  %call86 = call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.then85.out_crit_edge, label %if.end89

if.then85.out_crit_edge:                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end89:                                         ; preds = %if.then85
  %call90 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx190 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call90
  %7 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx190, align 4
  %tobool93.not191 = icmp eq ptr %8, null
  br i1 %tobool93.not191, label %if.end89.out_crit_edge, label %if.end51.i.lr.ph

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end51.i.lr.ph:                                 ; preds = %if.end89
  %dentry.i.i = getelementptr inbounds %struct.path, ptr %dev_path.2, i32 0, i32 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %for.cond.if.end51.i_crit_edge, %if.end51.i.lr.ph
  %9 = phi ptr [ %8, %if.end51.i.lr.ph ], [ %34, %for.cond.if.end51.i_crit_edge ]
  %__E.0193 = phi i32 [ 0, %if.end51.i.lr.ph ], [ %32, %for.cond.if.end51.i_crit_edge ]
  %i.sroa.0.0192 = phi i32 [ %call90, %if.end51.i.lr.ph ], [ %call103, %for.cond.if.end51.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devname.i) #8
  %10 = ptrtoint ptr %devname.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %devname.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #8
  %11 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %info.i, align 4
  %arrayidx.i.i = getelementptr %struct.aa_profile, ptr %9, i32 0, i32 12, i32 1, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool61.not.i = icmp eq i32 %13, 0
  br i1 %tobool61.not.i, label %match_mnt.exit.thread, label %path_flags.exit.i

match_mnt.exit.thread:                            ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devname.i) #8
  br label %31

path_flags.exit.i:                                ; preds = %if.end51.i
  %path_flags.i.i = getelementptr inbounds %struct.aa_profile, ptr %9, i32 0, i32 9
  %14 = ptrtoint ptr %path_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %path_flags.i.i, align 4
  %16 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %22)
  %cmp.i.i = icmp eq i16 %22, 16384
  %cond.i.i = zext i1 %cmp.i.i to i32
  %or.i.i = or i32 %15, %cond.i.i
  %disconnected.i = getelementptr inbounds %struct.aa_profile, ptr %9, i32 0, i32 10
  %23 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %disconnected.i, align 4
  %call67.i = call i32 @aa_path_name(ptr noundef nonnull %dev_path.2, i32 noundef %or.i.i, ptr noundef nonnull %call86, ptr noundef nonnull %devname.i, ptr noundef nonnull %info.i, ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %path_flags.exit.i.match_mnt.exit_crit_edge, label %if.then69.i

path_flags.exit.i.match_mnt.exit_crit_edge:       ; preds = %path_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_mnt.exit

if.then69.i:                                      ; preds = %path_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = inttoptr i32 %call67.i to ptr
  %26 = ptrtoint ptr %devname.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %devname.i, align 4
  br label %match_mnt.exit

match_mnt.exit:                                   ; preds = %if.then69.i, %path_flags.exit.i.match_mnt.exit_crit_edge
  %27 = ptrtoint ptr %devname.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %devname.i, align 4
  %29 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info.i, align 4
  %call74.i = call fastcc i32 @match_mnt_path_str(ptr noundef nonnull %9, ptr noundef %path, ptr noundef nonnull %call80, ptr noundef %28, ptr noundef %type, i32 noundef %flags, ptr noundef %data, i1 noundef zeroext %binary.1.off0, ptr noundef %30) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devname.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool97.not = icmp eq i32 %call74.i, 0
  br i1 %tobool97.not, label %match_mnt.exit._crit_edge, label %match_mnt.exit.for.cond_crit_edge

match_mnt.exit.for.cond_crit_edge:                ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

match_mnt.exit._crit_edge:                        ; preds = %match_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %31

31:                                               ; preds = %match_mnt.exit._crit_edge, %match_mnt.exit.thread
  br label %for.cond

for.cond:                                         ; preds = %31, %match_mnt.exit.for.cond_crit_edge
  %32 = phi i32 [ %__E.0193, %31 ], [ %call74.i, %match_mnt.exit.for.cond_crit_edge ]
  %add = add i32 %i.sroa.0.0192, 1
  %call103 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call103
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %tobool93.not = icmp eq ptr %34, null
  br i1 %tobool93.not, label %for.cond.out_crit_edge, label %for.cond.if.end51.i_crit_edge

for.cond.if.end51.i_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else:                                          ; preds = %if.end83
  %call108 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx113194 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call108
  %35 = ptrtoint ptr %arrayidx113194 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx113194, align 4
  %tobool114.not195 = icmp eq ptr %36, null
  br i1 %tobool114.not195, label %if.else.out_crit_edge, label %if.else.do.body116_crit_edge

if.else.do.body116_crit_edge:                     ; preds = %if.else
  br label %do.body116

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body116:                                       ; preds = %do.body116.do.body116_crit_edge, %if.else.do.body116_crit_edge
  %37 = phi ptr [ %39, %do.body116.do.body116_crit_edge ], [ %36, %if.else.do.body116_crit_edge ]
  %__E107.0197 = phi i32 [ %spec.select182, %do.body116.do.body116_crit_edge ], [ 0, %if.else.do.body116_crit_edge ]
  %i106.sroa.0.0196 = phi i32 [ %call128, %do.body116.do.body116_crit_edge ], [ %call108, %if.else.do.body116_crit_edge ]
  %call119 = call fastcc i32 @match_mnt_path_str(ptr noundef nonnull %37, ptr noundef %path, ptr noundef nonnull %call80, ptr noundef %dev_name, ptr noundef %type, i32 noundef %flags, ptr noundef %data, i1 noundef zeroext %binary.1.off0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  %spec.select182 = select i1 %tobool120.not, i32 %__E107.0197, i32 %call119
  %add127 = add i32 %i106.sroa.0.0196, 1
  %call128 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add127) #8
  %arrayidx113 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call128
  %38 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx113, align 4
  %tobool114.not = icmp eq ptr %39, null
  br i1 %tobool114.not, label %do.body116.out_crit_edge, label %do.body116.do.body116_crit_edge

do.body116.do.body116_crit_edge:                  ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body116

do.body116.out_crit_edge:                         ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %do.body116.out_crit_edge, %if.else.out_crit_edge, %for.cond.out_crit_edge, %if.end89.out_crit_edge, %if.then85.out_crit_edge, %if.end79.out_crit_edge
  %error.0 = phi i32 [ -12, %if.end79.out_crit_edge ], [ -12, %if.then85.out_crit_edge ], [ 0, %if.else.out_crit_edge ], [ 0, %if.end89.out_crit_edge ], [ %spec.select182, %do.body116.out_crit_edge ], [ %32, %for.cond.out_crit_edge ]
  %dev_buffer.0 = phi ptr [ null, %if.end79.out_crit_edge ], [ null, %if.then85.out_crit_edge ], [ null, %if.else.out_crit_edge ], [ %call86, %if.end89.out_crit_edge ], [ null, %do.body116.out_crit_edge ], [ %call86, %for.cond.out_crit_edge ]
  call void @aa_put_buffer(ptr noundef %call80) #8
  call void @aa_put_buffer(ptr noundef %dev_buffer.0) #8
  %tobool133.not = icmp eq ptr %dev_path.2, null
  br i1 %tobool133.not, label %out.cleanup136_crit_edge, label %if.then134

out.cleanup136_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup136

if.then134:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @path_put(ptr noundef nonnull %dev_path.2) #8
  br label %cleanup136

cleanup136:                                       ; preds = %if.then134, %out.cleanup136_crit_edge, %if.end73.cleanup136_crit_edge, %lor.lhs.false.cleanup136_crit_edge, %if.then69.cleanup136_crit_edge, %if.then61.cleanup136_crit_edge
  %retval.1 = phi i32 [ %error.0, %if.then134 ], [ %error.0, %out.cleanup136_crit_edge ], [ %call74, %if.end73.cleanup136_crit_edge ], [ -2, %if.then69.cleanup136_crit_edge ], [ -2, %lor.lhs.false.cleanup136_crit_edge ], [ -19, %if.then61.cleanup136_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_path) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @match_mnt_path_str(ptr noundef %profile, ptr noundef %mntpath, ptr noundef %buffer, ptr noundef %devname, ptr noundef %type, i32 noundef %flags, ptr noundef %data, i1 noundef zeroext %binary, ptr noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  %perms = alloca %struct.aa_perms, align 4
  %mntpnt = alloca ptr, align 4
  %info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms) #8
  %0 = call ptr @memset(ptr %perms, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mntpnt) #8
  %1 = ptrtoint ptr %mntpnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %mntpnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %info, align 4
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 325, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.match_mnt_path_str) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %mntpath, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !171

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.match_mnt_path_str) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %buffer, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !171

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.match_mnt_path_str) #8
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %arrayidx.i = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 12, i32 1, i32 7
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool96.not = icmp eq i32 %4, 0
  br i1 %tobool96.not, label %if.end86.cleanup_crit_edge, label %if.end98

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end98:                                         ; preds = %if.end86
  br i1 %tobool.not, label %do.end.i, label %if.end98.if.end.i_crit_edge, !prof !171

if.end98.if.end.i_crit_edge:                      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.path_flags) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end98.if.end.i_crit_edge
  br i1 %tobool26.not, label %do.end44.i, label %if.end.i.path_flags.exit_crit_edge, !prof !171

if.end.i.path_flags.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %path_flags.exit

do.end44.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.path_flags) #8
  br label %path_flags.exit

path_flags.exit:                                  ; preds = %do.end44.i, %if.end.i.path_flags.exit_crit_edge
  %path_flags.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 9
  %5 = ptrtoint ptr %path_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %path_flags.i, align 4
  %dentry.i = getelementptr inbounds %struct.path, ptr %mntpath, i32 0, i32 1
  %7 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp.i = icmp eq i16 %13, 16384
  %cond.i = zext i1 %cmp.i to i32
  %or.i = or i32 %6, %cond.i
  %disconnected = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 10
  %14 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disconnected, align 4
  %call100 = call i32 @aa_path_name(ptr noundef %mntpath, i32 noundef %or.i, ptr noundef %buffer, ptr noundef nonnull %mntpnt, ptr noundef nonnull %info, ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %path_flags.exit.audit_crit_edge

path_flags.exit.audit_crit_edge:                  ; preds = %path_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.end103:                                        ; preds = %path_flags.exit
  %cmp.i140 = icmp ugt ptr %devname, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %devname to i32
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %devinfo, ptr %info, align 4
  br label %audit

if.end107:                                        ; preds = %if.end103
  %policy = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  %18 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %policy, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %mntpnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mntpnt, align 4
  %tobool.not.i141 = icmp eq ptr %19, null
  br i1 %tobool.not.i141, label %do.end.i142, label %if.end107.if.end.i143_crit_edge, !prof !171

if.end107.if.end.i143_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i143

do.end.i142:                                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.do_match_mnt) #8
  br label %if.end.i143

if.end.i143:                                      ; preds = %do.end.i142, %if.end107.if.end.i143_crit_edge
  %call.i = call i32 @aa_dfa_match(ptr noundef %19, i32 noundef %21, ptr noundef %23) #8
  %call.i.i = call i32 @aa_dfa_next(ptr noundef %19, i32 noundef %call.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool61.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool61.not.i, label %if.end.i143.if.then112_crit_edge, label %if.end63.i

if.end.i143.if.then112_crit_edge:                 ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.end63.i:                                       ; preds = %if.end.i143
  %tobool64.not.i = icmp eq ptr %devname, null
  br i1 %tobool64.not.i, label %if.end63.i.if.end67.i_crit_edge, label %if.then65.i

if.end63.i.if.end67.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  %call66.i = call i32 @aa_dfa_match(ptr noundef %19, i32 noundef %call.i.i, ptr noundef nonnull %devname) #8
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then65.i, %if.end63.i.if.end67.i_crit_edge
  %state.0.i = phi i32 [ %call66.i, %if.then65.i ], [ %call.i.i, %if.end63.i.if.end67.i_crit_edge ]
  %call.i146.i = call i32 @aa_dfa_next(ptr noundef %19, i32 noundef %state.0.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146.i)
  %tobool69.not.i = icmp eq i32 %call.i146.i, 0
  br i1 %tobool69.not.i, label %if.end67.i.if.then112_crit_edge, label %if.end71.i

if.end67.i.if.then112_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.end71.i:                                       ; preds = %if.end67.i
  %tobool72.not.i = icmp eq ptr %type, null
  br i1 %tobool72.not.i, label %if.end71.i.if.end75.i_crit_edge, label %if.then73.i

if.end71.i.if.end75.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.then73.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  %call74.i = call i32 @aa_dfa_match(ptr noundef %19, i32 noundef %call.i146.i, ptr noundef nonnull %type) #8
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then73.i, %if.end71.i.if.end75.i_crit_edge
  %state.1.i = phi i32 [ %call74.i, %if.then73.i ], [ %call.i146.i, %if.end71.i.if.end75.i_crit_edge ]
  %call.i147.i = call i32 @aa_dfa_next(ptr noundef %19, i32 noundef %state.1.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %tobool77.not.i = icmp eq i32 %call.i147.i, 0
  br i1 %tobool77.not.i, label %if.end75.i.if.then112_crit_edge, label %if.end75.i.for.body.i.i_crit_edge

if.end75.i.for.body.i.i_crit_edge:                ; preds = %if.end75.i
  br label %for.body.i.i

if.end75.i.if.then112_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end75.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end75.i.for.body.i.i_crit_edge ]
  %state.addr.05.i.i = phi i32 [ %state.addr.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i147.i, %if.end75.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.06.i.i
  %and.i.i = and i32 %shl.i.i, %flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = trunc i32 %i.06.i.i to i8
  %conv.i.i = add nuw nsw i8 %24, 1
  %call.i148.i = call i32 @aa_dfa_next(ptr noundef %19, i32 noundef %state.addr.05.i.i, i8 noundef zeroext %conv.i.i) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %state.addr.1.i.i = phi i32 [ %call.i148.i, %if.then.i.i ], [ %state.addr.05.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %match_mnt_flags.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

match_mnt_flags.exit.i:                           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.addr.1.i.i)
  %tobool81.not.i = icmp eq i32 %state.addr.1.i.i, 0
  br i1 %tobool81.not.i, label %match_mnt_flags.exit.i.if.then112_crit_edge, label %if.end83.i

match_mnt_flags.exit.i.if.then112_crit_edge:      ; preds = %match_mnt_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.end83.i:                                       ; preds = %match_mnt_flags.exit.i
  %tables.i.i = getelementptr inbounds %struct.aa_dfa, ptr %19, i32 0, i32 3
  %25 = ptrtoint ptr %tables.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tables.i.i, align 4, !noalias !173
  %td_data.i.i = getelementptr inbounds %struct.table_header, ptr %26, i32 0, i32 4
  %arrayidx1.i.i = getelementptr i32, ptr %td_data.i.i, i32 %state.addr.1.i.i
  %27 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1.i.i, align 4, !noalias !173
  %or.i.i = and i32 %28, -2147483521
  %arrayidx9.i.i = getelementptr %struct.aa_dfa, ptr %19, i32 0, i32 3, i32 6
  %29 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx9.i.i, align 4, !noalias !173
  %td_data10.i.i = getelementptr inbounds %struct.table_header, ptr %30, i32 0, i32 4
  %arrayidx12.i.i = getelementptr i32, ptr %td_data10.i.i, i32 %state.addr.1.i.i
  %31 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx12.i.i, align 4, !noalias !173
  %and13.i.i = and i32 %32, 127
  %shr.i.i = lshr i32 %32, 7
  %and19.i.i = and i32 %shr.i.i, 127
  %33 = trunc i32 %28 to i16
  %conv.i149.i = lshr i16 %33, 10
  %and3.i.i.i = shl i16 %33, 4
  %34 = and i16 %and3.i.i.i, 4096
  %and7.i.i.i = shl i16 %33, 5
  %35 = and i16 %and7.i.i.i, 16384
  %36 = or i16 %35, %34
  %37 = shl i16 %33, 8
  %38 = and i16 %37, -32768
  %39 = or i16 %36, %38
  %trunc.i.i.i = trunc i16 %conv.i149.i to i4
  %40 = zext i4 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i.i.i, label %if.then45.i.i.i [
    i4 1, label %if.then24.i.i.i
    i4 2, label %if.then31.i.i.i
    i4 3, label %if.then39.i.i.i
    i4 0, label %if.end83.i.compute_mnt_perms.exit.i_crit_edge
  ]

if.end83.i.compute_mnt_perms.exit.i_crit_edge:    ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %compute_mnt_perms.exit.i

if.then24.i.i.i:                                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = or i16 %36, -32768
  br label %compute_mnt_perms.exit.i

if.then31.i.i.i:                                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = or i16 %39, 1024
  br label %compute_mnt_perms.exit.i

if.then39.i.i.i:                                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = or i16 %39, 9216
  br label %compute_mnt_perms.exit.i

if.then45.i.i.i:                                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = and i16 %conv.i149.i, 15
  %sub.i.i.i = add nsw i16 %44, -4
  %45 = or i16 %sub.i.i.i, %39
  %or51.i.i.i = or i16 %45, 2048
  br label %compute_mnt_perms.exit.i

compute_mnt_perms.exit.i:                         ; preds = %if.then45.i.i.i, %if.then39.i.i.i, %if.then31.i.i.i, %if.then24.i.i.i, %if.end83.i.compute_mnt_perms.exit.i_crit_edge
  %index.3.i.i.i = phi i16 [ %41, %if.then24.i.i.i ], [ %42, %if.then31.i.i.i ], [ %43, %if.then39.i.i.i ], [ %or51.i.i.i, %if.then45.i.i.i ], [ %39, %if.end83.i.compute_mnt_perms.exit.i_crit_edge ]
  %tmp84.sroa.8.40.insert.ext.i = zext i16 %index.3.i.i.i to i32
  %tmp84.sroa.8.40.insert.shift.i = shl nuw i32 %tmp84.sroa.8.40.insert.ext.i, 16
  %tmp84.sroa.8.40.insert.insert.i = or i32 %tmp84.sroa.8.40.insert.shift.i, 65535
  %46 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i, ptr %perms, align 4
  %tmp84.sroa.4.0.perms.sroa_idx.i = getelementptr inbounds i8, ptr %perms, i32 4
  %47 = ptrtoint ptr %tmp84.sroa.4.0.perms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and13.i.i, ptr %tmp84.sroa.4.0.perms.sroa_idx.i, align 4
  %tmp84.sroa.5.0.perms.sroa_idx.i = getelementptr inbounds i8, ptr %perms, i32 8
  %48 = ptrtoint ptr %tmp84.sroa.5.0.perms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %tmp84.sroa.5.0.perms.sroa_idx.i, align 4
  %tmp84.sroa.6.0.perms.sroa_idx.i = getelementptr inbounds i8, ptr %perms, i32 12
  %49 = ptrtoint ptr %tmp84.sroa.6.0.perms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and19.i.i, ptr %tmp84.sroa.6.0.perms.sroa_idx.i, align 4
  %tmp84.sroa.7.0.perms.sroa_idx.i = getelementptr inbounds i8, ptr %perms, i32 16
  %50 = call ptr @memset(ptr %tmp84.sroa.7.0.perms.sroa_idx.i, i32 0, i32 24)
  %tmp84.sroa.8.0.perms.sroa_idx.i = getelementptr inbounds i8, ptr %perms, i32 40
  %51 = ptrtoint ptr %tmp84.sroa.8.0.perms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %tmp84.sroa.8.40.insert.insert.i, ptr %tmp84.sroa.8.0.perms.sroa_idx.i, align 4
  %and.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool85.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool85.not.i, label %if.end87.i, label %compute_mnt_perms.exit.i.audit_crit_edge

compute_mnt_perms.exit.i.audit_crit_edge:         ; preds = %compute_mnt_perms.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.end87.i:                                       ; preds = %compute_mnt_perms.exit.i
  %tobool88.not.i = icmp eq ptr %data, null
  %brmerge.i = or i1 %tobool88.not.i, %binary
  %and92.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  %or.cond.i = select i1 %brmerge.i, i1 true, i1 %tobool93.not.i
  br i1 %or.cond.i, label %if.end87.i.if.then112_crit_edge, label %if.then94.i

if.end87.i.if.then112_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.then94.i:                                      ; preds = %if.end87.i
  %call.i150.i = call i32 @aa_dfa_next(ptr noundef %19, i32 noundef %state.addr.1.i.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150.i)
  %tobool96.not.i = icmp eq i32 %call.i150.i, 0
  br i1 %tobool96.not.i, label %if.then94.i.if.then112_crit_edge, label %if.end98.i

if.then94.i.if.then112_crit_edge:                 ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.end98.i:                                       ; preds = %if.then94.i
  %call99.i = call i32 @aa_dfa_match(ptr noundef %19, i32 noundef %call.i150.i, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %if.end98.i.if.then112_crit_edge, label %if.end102.i

if.end98.i.if.then112_crit_edge:                  ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.end102.i:                                      ; preds = %if.end98.i
  call fastcc void @compute_mnt_perms(ptr nonnull sret(%struct.aa_perms) align 4 %perms, ptr noundef %19, i32 noundef %call99.i) #8
  %52 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %perms, align 4
  %and105.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %if.end102.i.if.then112_crit_edge, label %if.end102.i.audit_crit_edge

if.end102.i.audit_crit_edge:                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.end102.i.if.then112_crit_edge:                 ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.then112:                                       ; preds = %if.end102.i.if.then112_crit_edge, %if.end98.i.if.then112_crit_edge, %if.then94.i.if.then112_crit_edge, %if.end87.i.if.then112_crit_edge, %match_mnt_flags.exit.i.if.then112_crit_edge, %if.end75.i.if.then112_crit_edge, %if.end67.i.if.then112_crit_edge, %if.end.i143.if.then112_crit_edge
  %retval.0.i.ph = phi i32 [ 5, %if.end98.i.if.then112_crit_edge ], [ 4, %if.then94.i.if.then112_crit_edge ], [ 4, %match_mnt_flags.exit.i.if.then112_crit_edge ], [ 3, %if.end75.i.if.then112_crit_edge ], [ 2, %if.end67.i.if.then112_crit_edge ], [ 1, %if.end.i143.if.then112_crit_edge ], [ 4, %if.end102.i.if.then112_crit_edge ], [ 4, %if.end87.i.if.then112_crit_edge ]
  %arrayidx113 = getelementptr [6 x ptr], ptr @mnt_info_table, i32 0, i32 %retval.0.i.ph
  %54 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx113, align 4
  %56 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %info, align 4
  br label %audit

audit:                                            ; preds = %if.then112, %if.end102.i.audit_crit_edge, %compute_mnt_perms.exit.i.audit_crit_edge, %if.then105, %path_flags.exit.audit_crit_edge
  %error.0 = phi i32 [ %call100, %path_flags.exit.audit_crit_edge ], [ %16, %if.then105 ], [ -13, %if.then112 ], [ 0, %compute_mnt_perms.exit.i.audit_crit_edge ], [ 0, %if.end102.i.audit_crit_edge ]
  %devname.addr.0 = phi ptr [ %devname, %path_flags.exit.audit_crit_edge ], [ null, %if.then105 ], [ %devname, %if.then112 ], [ %devname, %compute_mnt_perms.exit.i.audit_crit_edge ], [ %devname, %if.end102.i.audit_crit_edge ]
  %57 = ptrtoint ptr %mntpnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mntpnt, align 4
  %59 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %info, align 4
  %call115 = call fastcc i32 @audit_mount(ptr noundef %profile, ptr noundef nonnull @.str.16, ptr noundef %58, ptr noundef %devname.addr.0, ptr noundef %type, i32 noundef %flags, ptr noundef %data, i32 noundef 2, ptr noundef nonnull %perms, ptr noundef %60, i32 noundef %error.0)
  br label %cleanup

cleanup:                                          ; preds = %audit, %if.end86.cleanup_crit_edge
  %retval.0 = phi i32 [ %call115, %audit ], [ 0, %if.end86.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mntpnt) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_umount(ptr noundef %label, ptr noundef %mnt, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %sa_aad.i.i = alloca %struct.apparmor_audit_data, align 4
  %sa.i.i = alloca %struct.common_audit_data, align 4
  %name.i = alloca ptr, align 4
  %info.i = alloca ptr, align 4
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mnt, ptr %path, align 4
  %2 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %0, align 4
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 620, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_umount) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool27.not = icmp eq ptr %mnt, null
  br i1 %tobool27.not, label %do.end45, label %if.end.if.end51_crit_edge, !prof !171

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 621, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.aa_umount) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end.if.end51_crit_edge
  %call = tail call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool61.not = icmp eq ptr %call, null
  br i1 %tobool61.not, label %if.end51.cleanup_crit_edge, label %if.end63

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %if.end51
  %call64 = tail call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx102 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call64
  %5 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx102, align 4
  %tobool67.not103 = icmp eq ptr %6, null
  br i1 %tobool67.not103, label %if.end63.for.end_crit_edge, label %if.end.i.lr.ph

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %if.end63
  %7 = getelementptr inbounds i8, ptr %sa_aad.i.i, i32 4
  %op3.i.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i.i, i32 0, i32 2
  %name49.i.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 4
  %9 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 8
  %type51.i.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 8, i32 0, i32 1
  %trans52.i.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %flags53.i.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 8, i32 0, i32 1, i32 0, i32 3
  %info62.i.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i.i, i32 0, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %for.cond.if.end.i_crit_edge, %if.end.i.lr.ph
  %10 = phi ptr [ %6, %if.end.i.lr.ph ], [ %67, %for.cond.if.end.i_crit_edge ]
  %__E.0105 = phi i32 [ 0, %if.end.i.lr.ph ], [ %65, %for.cond.if.end.i_crit_edge ]
  %i.sroa.0.0104 = phi i32 [ %call64, %if.end.i.lr.ph ], [ %call76, %for.cond.if.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #8
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %name.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #8
  %12 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %info.i, align 4
  %arrayidx.i.i = getelementptr %struct.aa_profile, ptr %10, i32 0, i32 12, i32 1, i32 7
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool60.not.i = icmp eq i32 %14, 0
  br i1 %tobool60.not.i, label %profile_umount.exit.thread, label %if.end.i.i

profile_umount.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #8
  br label %64

if.end.i.i:                                       ; preds = %if.end.i
  %path_flags.i.i = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 9
  %15 = ptrtoint ptr %path_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %path_flags.i.i, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 8
  %23 = and i16 %22, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %23)
  %cmp.i.i = icmp eq i16 %23, 16384
  %cond.i.i = zext i1 %cmp.i.i to i32
  %or.i.i = or i32 %16, %cond.i.i
  %disconnected.i = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 10
  %24 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disconnected.i, align 4
  %call64.i = call i32 @aa_path_name(ptr noundef nonnull %path, i32 noundef %or.i.i, ptr noundef nonnull %call, ptr noundef nonnull %name.i, ptr noundef nonnull %info.i, ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %if.end.i.i.audit.i_crit_edge

if.end.i.i.audit.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit.i

if.end67.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %policy.i = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 12
  %26 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %policy.i, align 4
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 4
  %call69.i = call i32 @aa_dfa_match(ptr noundef %27, i32 noundef %29, ptr noundef %31) #8
  %32 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %policy.i, align 4
  %tables.i.i = getelementptr inbounds %struct.aa_dfa, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %tables.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tables.i.i, align 4, !noalias !176
  %td_data.i.i = getelementptr inbounds %struct.table_header, ptr %35, i32 0, i32 4
  %arrayidx1.i.i = getelementptr i32, ptr %td_data.i.i, i32 %call69.i
  %36 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx1.i.i, align 4, !noalias !176
  %arrayidx9.i.i = getelementptr %struct.aa_dfa, ptr %33, i32 0, i32 3, i32 6
  %38 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx9.i.i, align 4, !noalias !176
  %td_data10.i.i = getelementptr inbounds %struct.table_header, ptr %39, i32 0, i32 4
  %arrayidx12.i.i = getelementptr i32, ptr %td_data10.i.i, i32 %call69.i
  %40 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx12.i.i, align 4, !noalias !176
  %shr.i.i = lshr i32 %41, 7
  %and19.i.i = and i32 %shr.i.i, 127
  %neg.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool73.not.not.i = icmp eq i32 %neg.i, 0
  %phi.bo106.i = xor i32 %neg.i, 4
  %phi.bo107.i = and i32 %41, 4
  %spec.select106 = select i1 %tobool73.not.not.i, i32 -13, i32 0
  br label %audit.i

audit.i:                                          ; preds = %if.end67.i, %if.end.i.i.audit.i_crit_edge
  %perms.sroa.9.0.i = phi i32 [ 0, %if.end.i.i.audit.i_crit_edge ], [ %and19.i.i, %if.end67.i ]
  %perms.sroa.6.0.i = phi i32 [ 0, %if.end.i.i.audit.i_crit_edge ], [ %phi.bo107.i, %if.end67.i ]
  %perms.sroa.0.0.i = phi i32 [ 4, %if.end.i.i.audit.i_crit_edge ], [ %phi.bo106.i, %if.end67.i ]
  %error.0.i = phi i32 [ %call64.i, %if.end.i.i.audit.i_crit_edge ], [ %spec.select106, %if.end67.i ]
  %42 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i, align 4
  %44 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i.i) #8
  %46 = call ptr @memset(ptr %7, i32 0, i32 52)
  %47 = ptrtoint ptr %op3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.25, ptr %op3.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i.i) #8
  %48 = call ptr @memcpy(ptr %sa.i.i, ptr @__const.audit_mount.sa, i32 12)
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sa_aad.i.i, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool.not.i94.i = icmp eq i32 %error.0.i, 0
  br i1 %tobool.not.i94.i, label %if.then.i.i, label %if.else.i.i, !prof !179

if.then.i.i:                                      ; preds = %audit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %50 = load i32, ptr @aa_g_audit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.not.i.i.i = icmp eq i32 %50, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.AUDIT_MODE.exit.i.i_crit_edge

if.then.i.i.AUDIT_MODE.exit.i.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %audit.i.i.i = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 7
  %51 = ptrtoint ptr %audit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %audit.i.i.i, align 4
  br label %AUDIT_MODE.exit.i.i

AUDIT_MODE.exit.i.i:                              ; preds = %if.end.i.i.i, %if.then.i.i.AUDIT_MODE.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %52, %if.end.i.i.i ], [ %50, %if.then.i.i.AUDIT_MODE.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i.i.i)
  %cmp.i96.i = icmp ne i32 %retval.0.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perms.sroa.6.0.i)
  %tobool17.not.i.i = icmp eq i32 %perms.sroa.6.0.i, 0
  %or.cond.i = select i1 %cmp.i96.i, i1 %tobool17.not.i.i, i1 false
  br i1 %or.cond.i, label %profile_umount.exit.thread95, label %AUDIT_MODE.exit.i.i.profile_umount.exit_crit_edge, !prof !180

AUDIT_MODE.exit.i.i.profile_umount.exit_crit_edge: ; preds = %AUDIT_MODE.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_umount.exit

profile_umount.exit.thread95:                     ; preds = %AUDIT_MODE.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #8
  br label %64

if.else.i.i:                                      ; preds = %audit.i
  %and33.i.i = and i32 %perms.sroa.0.0.i, %perms.sroa.9.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.else.i.i.if.end44.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.if.end44.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %53 = load i32, ptr @aa_g_audit, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %53, label %land.lhs.true.i.i.AUDIT_MODE.exit10.i.i_crit_edge [
    i32 0, label %AUDIT_MODE.exit5.i.i
    i32 3, label %land.lhs.true.i.i.if.end44.i.i_crit_edge
  ]

land.lhs.true.i.i.if.end44.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i

land.lhs.true.i.i.AUDIT_MODE.exit10.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit10.i.i

AUDIT_MODE.exit5.i.i:                             ; preds = %land.lhs.true.i.i
  %audit.i2.i.i = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 7
  %55 = ptrtoint ptr %audit.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %audit.i2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp36.not.i.i = icmp eq i32 %56, 3
  br i1 %cmp36.not.i.i, label %AUDIT_MODE.exit5.i.i.if.end44.i.i_crit_edge, label %AUDIT_MODE.exit5.i.i.AUDIT_MODE.exit10.i.i_crit_edge

AUDIT_MODE.exit5.i.i.AUDIT_MODE.exit10.i.i_crit_edge: ; preds = %AUDIT_MODE.exit5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit10.i.i

AUDIT_MODE.exit5.i.i.if.end44.i.i_crit_edge:      ; preds = %AUDIT_MODE.exit5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i

AUDIT_MODE.exit10.i.i:                            ; preds = %AUDIT_MODE.exit5.i.i.AUDIT_MODE.exit10.i.i_crit_edge, %land.lhs.true.i.i.AUDIT_MODE.exit10.i.i_crit_edge
  %retval.0.i9.i.i = phi i32 [ %53, %land.lhs.true.i.i.AUDIT_MODE.exit10.i.i_crit_edge ], [ %56, %AUDIT_MODE.exit5.i.i.AUDIT_MODE.exit10.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i9.i.i)
  %cmp39.not.i.i = icmp eq i32 %retval.0.i9.i.i, 4
  br i1 %cmp39.not.i.i, label %AUDIT_MODE.exit10.i.i.if.end44.i.i_crit_edge, label %if.then40.i.i

AUDIT_MODE.exit10.i.i.if.end44.i.i_crit_edge:     ; preds = %AUDIT_MODE.exit10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i

if.then40.i.i:                                    ; preds = %AUDIT_MODE.exit10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg42.i.i = xor i32 %perms.sroa.9.0.i, -1
  %and43.i.i = and i32 %perms.sroa.0.0.i, %neg42.i.i
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then40.i.i, %AUDIT_MODE.exit10.i.i.if.end44.i.i_crit_edge, %AUDIT_MODE.exit5.i.i.if.end44.i.i_crit_edge, %land.lhs.true.i.i.if.end44.i.i_crit_edge, %if.else.i.i.if.end44.i.i_crit_edge
  %request.addr.0.i.i = phi i32 [ %and43.i.i, %if.then40.i.i ], [ %perms.sroa.0.0.i, %AUDIT_MODE.exit10.i.i.if.end44.i.i_crit_edge ], [ %perms.sroa.0.0.i, %AUDIT_MODE.exit5.i.i.if.end44.i.i_crit_edge ], [ %perms.sroa.0.0.i, %if.else.i.i.if.end44.i.i_crit_edge ], [ %perms.sroa.0.0.i, %land.lhs.true.i.i.if.end44.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request.addr.0.i.i)
  %tobool45.not.i.i = icmp eq i32 %request.addr.0.i.i, 0
  br i1 %tobool45.not.i.i, label %profile_umount.exit.thread98, label %if.end44.i.i.profile_umount.exit_crit_edge

if.end44.i.i.profile_umount.exit_crit_edge:       ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_umount.exit

profile_umount.exit.thread98:                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #8
  br label %for.cond

profile_umount.exit:                              ; preds = %if.end44.i.i.profile_umount.exit_crit_edge, %AUDIT_MODE.exit.i.i.profile_umount.exit_crit_edge
  %audit_type.2.i.i = phi i32 [ 7, %if.end44.i.i.profile_umount.exit_crit_edge ], [ 0, %AUDIT_MODE.exit.i.i.profile_umount.exit_crit_edge ]
  %57 = ptrtoint ptr %name49.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %43, ptr %name49.i.i, align 4
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %9, align 4
  %59 = ptrtoint ptr %type51.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %type51.i.i, align 4
  %60 = ptrtoint ptr %trans52.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %trans52.i.i, align 4
  %61 = ptrtoint ptr %flags53.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %flags53.i.i, align 4
  %62 = ptrtoint ptr %info62.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %45, ptr %info62.i.i, align 4
  %63 = ptrtoint ptr %sa_aad.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %error.0.i, ptr %sa_aad.i.i, align 4
  %call64.i.i = call i32 @aa_audit(i32 noundef %audit_type.2.i.i, ptr noundef nonnull %10, ptr noundef nonnull %sa.i.i, ptr noundef nonnull @audit_cb) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i.i)
  %tobool70.not = icmp eq i32 %call64.i.i, 0
  br i1 %tobool70.not, label %profile_umount.exit._crit_edge, label %profile_umount.exit.for.cond_crit_edge

profile_umount.exit.for.cond_crit_edge:           ; preds = %profile_umount.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

profile_umount.exit._crit_edge:                   ; preds = %profile_umount.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %64

64:                                               ; preds = %profile_umount.exit._crit_edge, %profile_umount.exit.thread95, %profile_umount.exit.thread
  br label %for.cond

for.cond:                                         ; preds = %64, %profile_umount.exit.for.cond_crit_edge, %profile_umount.exit.thread98
  %65 = phi i32 [ %__E.0105, %64 ], [ %call64.i.i, %profile_umount.exit.for.cond_crit_edge ], [ %error.0.i, %profile_umount.exit.thread98 ]
  %add = add i32 %i.sroa.0.0104, 1
  %call76 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call76
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %tobool67.not = icmp eq ptr %67, null
  br i1 %tobool67.not, label %for.cond.for.end_crit_edge, label %for.cond.if.end.i_crit_edge

for.cond.if.end.i_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end63.for.end_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %if.end63.for.end_crit_edge ], [ %65, %for.cond.for.end_crit_edge ]
  call void @aa_put_buffer(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end51.cleanup_crit_edge
  %retval.0 = phi i32 [ %__E.0.lcssa, %for.end ], [ -12, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_pivotroot(ptr noundef readonly %label, ptr noundef %old_path, ptr noundef %new_path) local_unnamed_addr #0 align 64 {
entry:
  %sa_aad.i = alloca %struct.apparmor_audit_data, align 4
  %sa.i = alloca %struct.common_audit_data, align 4
  %___lvec_localtmp = alloca [8 x ptr], align 4
  %___pvec_localtmp = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_pivotroot) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %old_path, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !171

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 699, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.aa_pivotroot) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %new_path, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !171

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 700, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.aa_pivotroot) #8
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %call = tail call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %call96 = tail call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool97.not = icmp eq ptr %call, null
  %tobool98.not = icmp eq ptr %call96, null
  %or.cond = select i1 %tobool97.not, i1 true, i1 %tobool98.not
  br i1 %or.cond, label %if.end86.out_crit_edge, label %if.end100

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end100:                                        ; preds = %if.end86
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then101, label %if.else278

if.then101:                                       ; preds = %if.end100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  %2 = call ptr @memset(ptr %___lvec_localtmp, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp103 = icmp ult i32 %1, 9
  %3 = call ptr @memset(ptr %___pvec_localtmp, i32 255, i32 32)
  %4 = shl i32 %1, 2
  br i1 %cmp103, label %for.body.preheader, label %if.end8.i.i

for.body.preheader:                               ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memset(ptr %___lvec_localtmp, i32 0, i32 %4)
  br label %for.cond116.preheader

if.end8.i.i:                                      ; preds = %if.then101
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #11
  %tobool111.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool111.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.for.cond116.preheader_crit_edge

if.end8.i.i.for.cond116.preheader_crit_edge:      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond116.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond116.preheader:                            ; preds = %if.end8.i.i.for.cond116.preheader_crit_edge, %for.body.preheader
  %__lvec.0549 = phi ptr [ %call9.i.i, %if.end8.i.i.for.cond116.preheader_crit_edge ], [ %___lvec_localtmp, %for.body.preheader ]
  %arrayidx118519 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %6 = ptrtoint ptr %arrayidx118519 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx118519, align 4
  %tobool119.not520 = icmp eq ptr %7, null
  br i1 %tobool119.not520, label %for.cond116.preheader.for.cond167.preheader_crit_edge, label %for.cond116.preheader.for.body120_crit_edge

for.cond116.preheader.for.body120_crit_edge:      ; preds = %for.cond116.preheader
  br label %for.body120

for.cond116.preheader.for.cond167.preheader_crit_edge: ; preds = %for.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond167.preheader

for.cond167.preheader:                            ; preds = %if.end160.for.cond167.preheader_crit_edge, %for.cond116.preheader.for.cond167.preheader_crit_edge
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp169523 = icmp sgt i32 %9, 0
  br i1 %cmp169523, label %for.cond167.preheader.for.body170_crit_edge, label %for.cond167.preheader.for.end217_crit_edge

for.cond167.preheader.for.end217_crit_edge:       ; preds = %for.cond167.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end217

for.cond167.preheader.for.body170_crit_edge:      ; preds = %for.cond167.preheader
  br label %for.body170

for.body120:                                      ; preds = %if.end160.for.body120_crit_edge, %for.cond116.preheader.for.body120_crit_edge
  %10 = phi ptr [ %13, %if.end160.for.body120_crit_edge ], [ %7, %for.cond116.preheader.for.body120_crit_edge ]
  %__j.0522 = phi i32 [ %inc161, %if.end160.for.body120_crit_edge ], [ 0, %for.cond116.preheader.for.body120_crit_edge ]
  %call121 = call fastcc ptr @build_pivotroot(ptr noundef nonnull %10, ptr noundef %new_path, ptr noundef nonnull %call96, ptr noundef %old_path, ptr noundef nonnull %call)
  %tobool124.not = icmp eq ptr %call121, null
  br i1 %tobool124.not, label %if.end148.thread, label %if.end148, !prof !171

if.end148.thread:                                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 709, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.aa_pivotroot) #8
  br label %if.end160

if.end148:                                        ; preds = %for.body120
  %cmp.i = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end148.do.body251_crit_edge, label %if.end148.if.end160_crit_edge

if.end148.if.end160_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.end148.do.body251_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body251

if.end160:                                        ; preds = %if.end148.if.end160_crit_edge, %if.end148.thread
  %inc161 = add i32 %__j.0522, 1
  %arrayidx162 = getelementptr ptr, ptr %__lvec.0549, i32 %__j.0522
  %11 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call121, ptr %arrayidx162, align 4
  %arrayidx118 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc161
  %12 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx118, align 4
  %tobool119.not = icmp eq ptr %13, null
  br i1 %tobool119.not, label %if.end160.for.cond167.preheader_crit_edge, label %if.end160.for.body120_crit_edge

if.end160.for.body120_crit_edge:                  ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body120

if.end160.for.cond167.preheader_crit_edge:        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond167.preheader

for.body170:                                      ; preds = %for.body170.for.body170_crit_edge, %for.cond167.preheader.for.body170_crit_edge
  %__count.0525 = phi i32 [ %add, %for.body170.for.body170_crit_edge ], [ 0, %for.cond167.preheader.for.body170_crit_edge ]
  %__j.1524 = phi i32 [ %inc174, %for.body170.for.body170_crit_edge ], [ 0, %for.cond167.preheader.for.body170_crit_edge ]
  %arrayidx171 = getelementptr ptr, ptr %__lvec.0549, i32 %__j.1524
  %14 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx171, align 4
  %size172 = getelementptr inbounds %struct.aa_label, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %size172 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size172, align 4
  %add = add i32 %17, %__count.0525
  %inc174 = add nuw nsw i32 %__j.1524, 1
  %exitcond.not = icmp eq i32 %inc174, %9
  br i1 %exitcond.not, label %for.end175, label %for.body170.for.body170_crit_edge

for.body170.for.body170_crit_edge:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body170

for.end175:                                       ; preds = %for.body170
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add)
  %cmp176 = icmp slt i32 %add, 9
  br i1 %cmp176, label %for.cond180.preheader, label %if.end8.i.i468

for.cond180.preheader:                            ; preds = %for.end175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp181526 = icmp sgt i32 %add, 0
  br i1 %cmp181526, label %for.body182.preheader, label %for.cond180.preheader.for.cond196.preheader_crit_edge

for.cond180.preheader.for.cond196.preheader_crit_edge: ; preds = %for.cond180.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond196.preheader

for.body182.preheader:                            ; preds = %for.cond180.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %18 = shl nuw nsw i32 %add, 2
  %19 = call ptr @memset(ptr %___pvec_localtmp, i32 0, i32 %18)
  br label %for.cond196.preheader

if.end8.i.i468:                                   ; preds = %for.end175
  %mul188 = shl i32 %add, 2
  %call9.i.i467 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul188, i32 noundef 3520) #11
  %tobool192.not = icmp eq ptr %call9.i.i467, null
  br i1 %tobool192.not, label %if.end8.i.i468.do.body251_crit_edge, label %if.end8.i.i468.for.cond196.preheader_crit_edge

if.end8.i.i468.for.cond196.preheader_crit_edge:   ; preds = %if.end8.i.i468
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond196.preheader

if.end8.i.i468.do.body251_crit_edge:              ; preds = %if.end8.i.i468
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body251

for.cond196.preheader:                            ; preds = %if.end8.i.i468.for.cond196.preheader_crit_edge, %for.body182.preheader, %for.cond180.preheader.for.cond196.preheader_crit_edge
  %__pvec.0561.ph = phi ptr [ %___pvec_localtmp, %for.cond180.preheader.for.cond196.preheader_crit_edge ], [ %___pvec_localtmp, %for.body182.preheader ], [ %call9.i.i467, %if.end8.i.i468.for.cond196.preheader_crit_edge ]
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp198533 = icmp sgt i32 %.pr, 0
  br i1 %cmp198533, label %for.cond196.preheader.for.cond201.preheader_crit_edge, label %for.cond196.preheader.for.end217_crit_edge

for.cond196.preheader.for.end217_crit_edge:       ; preds = %for.cond196.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end217

for.cond196.preheader.for.cond201.preheader_crit_edge: ; preds = %for.cond196.preheader
  br label %for.cond201.preheader

for.cond201.preheader:                            ; preds = %for.inc215.for.cond201.preheader_crit_edge, %for.cond196.preheader.for.cond201.preheader_crit_edge
  %__k.0535 = phi i32 [ %__k.1.lcssa, %for.inc215.for.cond201.preheader_crit_edge ], [ 0, %for.cond196.preheader.for.cond201.preheader_crit_edge ]
  %__j.2534 = phi i32 [ %inc216, %for.inc215.for.cond201.preheader_crit_edge ], [ 0, %for.cond196.preheader.for.cond201.preheader_crit_edge ]
  %arrayidx202 = getelementptr ptr, ptr %__lvec.0549, i32 %__j.2534
  %21 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx202, align 4
  %arrayidx205528 = getelementptr %struct.aa_label, ptr %22, i32 0, i32 8, i32 0
  %23 = ptrtoint ptr %arrayidx205528 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx205528, align 4
  %tobool206.not529 = icmp eq ptr %24, null
  br i1 %tobool206.not529, label %for.cond201.preheader.for.inc215_crit_edge, label %for.cond201.preheader.if.then.i_crit_edge

for.cond201.preheader.if.then.i_crit_edge:        ; preds = %for.cond201.preheader
  br label %if.then.i

for.cond201.preheader.for.inc215_crit_edge:       ; preds = %for.cond201.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc215

if.then.i:                                        ; preds = %aa_get_profile.exit.if.then.i_crit_edge, %for.cond201.preheader.if.then.i_crit_edge
  %25 = phi ptr [ %32, %aa_get_profile.exit.if.then.i_crit_edge ], [ %24, %for.cond201.preheader.if.then.i_crit_edge ]
  %__k.1531 = phi i32 [ %inc209, %aa_get_profile.exit.if.then.i_crit_edge ], [ %__k.0535, %for.cond201.preheader.if.then.i_crit_edge ]
  %__i.sroa.0.1530 = phi i32 [ %inc213, %aa_get_profile.exit.if.then.i_crit_edge ], [ 0, %for.cond201.preheader.if.then.i_crit_edge ]
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %25, i32 0, i32 25
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #8
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #8, !srcloc !181
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !171

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !179

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_profile.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %aa_get_profile.exit

aa_get_profile.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge
  %inc209 = add i32 %__k.1531, 1
  %arrayidx210 = getelementptr ptr, ptr %__pvec.0561.ph, i32 %__k.1531
  %28 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %arrayidx210, align 4
  %inc213 = add i32 %__i.sroa.0.1530, 1
  %29 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx202, align 4
  %arrayidx205 = getelementptr %struct.aa_label, ptr %30, i32 0, i32 8, i32 %inc213
  %31 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx205, align 4
  %tobool206.not = icmp eq ptr %32, null
  br i1 %tobool206.not, label %aa_get_profile.exit.for.inc215_crit_edge, label %aa_get_profile.exit.if.then.i_crit_edge

aa_get_profile.exit.if.then.i_crit_edge:          ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

aa_get_profile.exit.for.inc215_crit_edge:         ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc215

for.inc215:                                       ; preds = %aa_get_profile.exit.for.inc215_crit_edge, %for.cond201.preheader.for.inc215_crit_edge
  %__k.1.lcssa = phi i32 [ %__k.0535, %for.cond201.preheader.for.inc215_crit_edge ], [ %inc209, %aa_get_profile.exit.for.inc215_crit_edge ]
  %inc216 = add nuw nsw i32 %__j.2534, 1
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %cmp198 = icmp slt i32 %inc216, %34
  br i1 %cmp198, label %for.inc215.for.cond201.preheader_crit_edge, label %for.inc215.for.end217_crit_edge

for.inc215.for.end217_crit_edge:                  ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end217

for.inc215.for.cond201.preheader_crit_edge:       ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond201.preheader

for.end217:                                       ; preds = %for.inc215.for.end217_crit_edge, %for.cond196.preheader.for.end217_crit_edge, %for.cond167.preheader.for.end217_crit_edge
  %__count.0.lcssa553560574 = phi i32 [ %add, %for.cond196.preheader.for.end217_crit_edge ], [ 0, %for.cond167.preheader.for.end217_crit_edge ], [ %add, %for.inc215.for.end217_crit_edge ]
  %__pvec.0562 = phi ptr [ %__pvec.0561.ph, %for.cond196.preheader.for.end217_crit_edge ], [ %___pvec_localtmp, %for.cond167.preheader.for.end217_crit_edge ], [ %__pvec.0561.ph, %for.inc215.for.end217_crit_edge ]
  %call218 = call i32 @aa_vec_unique(ptr noundef nonnull %__pvec.0562, i32 noundef %__count.0.lcssa553560574, i32 noundef 0) #8
  %sub = sub i32 %__count.0.lcssa553560574, %call218
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp219 = icmp sgt i32 %sub, 1
  br i1 %cmp219, label %do.body230.thread, label %if.else225

do.body230.thread:                                ; preds = %for.end217
  call void @__sanitizer_cov_trace_pc() #10
  %call221 = call ptr @aa_vec_find_or_create_label(ptr noundef nonnull %__pvec.0562, i32 noundef %sub, i32 noundef 3264) #8
  br label %for.body234.preheader

if.else225:                                       ; preds = %for.end217
  %35 = ptrtoint ptr %__pvec.0562 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__pvec.0562, align 4
  %label227 = getelementptr inbounds %struct.aa_profile, ptr %36, i32 0, i32 25
  %tobool.not.i471 = icmp eq ptr %label227, null
  br i1 %tobool.not.i471, label %if.else225.do.body230_crit_edge, label %if.then.i475

if.else225.do.body230_crit_edge:                  ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body230

if.then.i475:                                     ; preds = %if.else225
  %call.i.i.i.i.i.i.i472 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label227, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %label227, i32 1, i32 3, i32 1) #8
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label227, ptr nonnull %label227, i32 1, ptr nonnull elementtype(i32) %label227) #8, !srcloc !181
  %asmresult.i.i.i.i.i.i.i473 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i473)
  %tobool1.not.i.i.i.i.i474 = icmp eq i32 %asmresult.i.i.i.i.i.i.i473, 0
  br i1 %tobool1.not.i.i.i.i.i474, label %if.then.i475.if.end15.sink.split.i.i.i.i.i480_crit_edge, label %if.else.i.i.i.i.i478, !prof !171

if.then.i475.if.end15.sink.split.i.i.i.i.i480_crit_edge: ; preds = %if.then.i475
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i480

if.else.i.i.i.i.i478:                             ; preds = %if.then.i475
  %add.i.i.i.i.i476 = add i32 %asmresult.i.i.i.i.i.i.i473, 1
  %38 = or i32 %add.i.i.i.i.i476, %asmresult.i.i.i.i.i.i.i473
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i.i477 = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i.i477, label %if.else.i.i.i.i.i478.do.body230_crit_edge, label %if.else.i.i.i.i.i478.if.end15.sink.split.i.i.i.i.i480_crit_edge, !prof !179

if.else.i.i.i.i.i478.if.end15.sink.split.i.i.i.i.i480_crit_edge: ; preds = %if.else.i.i.i.i.i478
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i480

if.else.i.i.i.i.i478.do.body230_crit_edge:        ; preds = %if.else.i.i.i.i.i478
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body230

if.end15.sink.split.i.i.i.i.i480:                 ; preds = %if.else.i.i.i.i.i478.if.end15.sink.split.i.i.i.i.i480_crit_edge, %if.then.i475.if.end15.sink.split.i.i.i.i.i480_crit_edge
  %.sink.i.i.i.i.i479 = phi i32 [ 2, %if.then.i475.if.end15.sink.split.i.i.i.i.i480_crit_edge ], [ 1, %if.else.i.i.i.i.i478.if.end15.sink.split.i.i.i.i.i480_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %label227, i32 noundef %.sink.i.i.i.i.i479) #8
  br label %do.body230

do.body230:                                       ; preds = %if.end15.sink.split.i.i.i.i.i480, %if.else.i.i.i.i.i478.do.body230_crit_edge, %if.else225.do.body230_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp233536 = icmp sgt i32 %sub, 0
  br i1 %cmp233536, label %do.body230.for.body234.preheader_crit_edge, label %do.body230.for.end242_crit_edge

do.body230.for.end242_crit_edge:                  ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end242

do.body230.for.body234.preheader_crit_edge:       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body234.preheader

for.body234.preheader:                            ; preds = %do.body230.for.body234.preheader_crit_edge, %do.body230.thread
  %__new_.0570 = phi ptr [ %call221, %do.body230.thread ], [ %label227, %do.body230.for.body234.preheader_crit_edge ]
  br label %for.body234

for.body234:                                      ; preds = %for.inc240.for.body234_crit_edge, %for.body234.preheader
  %i231.0537 = phi i32 [ %inc241, %for.inc240.for.body234_crit_edge ], [ 0, %for.body234.preheader ]
  %arrayidx235 = getelementptr ptr, ptr %__pvec.0562, i32 %i231.0537
  %39 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx235, align 4
  %tobool.not.i481 = icmp eq ptr %40, null
  %cmp.i482 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i481, %cmp.i482
  br i1 %spec.select.i, label %for.body234.for.inc240_crit_edge, label %if.then.i486

for.body234.for.inc240_crit_edge:                 ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc240

if.then.i486:                                     ; preds = %for.body234
  %label.i484 = getelementptr inbounds %struct.aa_profile, ptr %40, i32 0, i32 25
  %call.i.i.i.i.i.i.i485 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i484, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @llvm.prefetch.p0(ptr %label.i484, i32 1, i32 3, i32 1) #8
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i484, ptr %label.i484, i32 1, ptr elementtype(i32) %label.i484) #8, !srcloc !183
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i488, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i486
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i487 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i487, label %if.end5.i.i.i.i.i.for.inc240_crit_edge, label %if.then10.i.i.i.i.i, !prof !179

if.end5.i.i.i.i.i.for.inc240_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc240

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %label.i484, i32 noundef 3) #8
  br label %for.inc240

if.then.i.i488:                                   ; preds = %if.then.i486
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void @aa_label_kref(ptr noundef %label.i484) #8
  br label %for.inc240

for.inc240:                                       ; preds = %if.then.i.i488, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc240_crit_edge, %for.body234.for.inc240_crit_edge
  %inc241 = add nuw nsw i32 %i231.0537, 1
  %exitcond546.not = icmp eq i32 %inc241, %sub
  br i1 %exitcond546.not, label %for.inc240.for.end242_crit_edge, label %for.inc240.for.body234_crit_edge

for.inc240.for.body234_crit_edge:                 ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body234

for.inc240.for.end242_crit_edge:                  ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end242

for.end242:                                       ; preds = %for.inc240.for.end242_crit_edge, %do.body230.for.end242_crit_edge
  %__new_.0569 = phi ptr [ %label227, %do.body230.for.end242_crit_edge ], [ %__new_.0570, %for.inc240.for.end242_crit_edge ]
  %cmp244.not = icmp eq ptr %__pvec.0562, %___pvec_localtmp
  br i1 %cmp244.not, label %for.end242.do.body251_crit_edge, label %if.then245

for.end242.do.body251_crit_edge:                  ; preds = %for.end242
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body251

if.then245:                                       ; preds = %for.end242
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__pvec.0562) #8
  br label %do.body251

do.body251:                                       ; preds = %if.then245, %for.end242.do.body251_crit_edge, %if.end8.i.i468.do.body251_crit_edge, %if.end148.do.body251_crit_edge
  %__new_.1 = phi ptr [ %__new_.0569, %if.then245 ], [ %__new_.0569, %for.end242.do.body251_crit_edge ], [ null, %if.end8.i.i468.do.body251_crit_edge ], [ %call121, %if.end148.do.body251_crit_edge ]
  %42 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp255538 = icmp sgt i32 %43, 0
  br i1 %cmp255538, label %do.body251.for.body256_crit_edge, label %do.body251.for.end264_crit_edge

do.body251.for.end264_crit_edge:                  ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end264

do.body251.for.body256_crit_edge:                 ; preds = %do.body251
  br label %for.body256

for.body256:                                      ; preds = %for.inc262.for.body256_crit_edge, %do.body251.for.body256_crit_edge
  %i252.0539 = phi i32 [ %inc263, %for.inc262.for.body256_crit_edge ], [ 0, %do.body251.for.body256_crit_edge ]
  %arrayidx257 = getelementptr ptr, ptr %__lvec.0549, i32 %i252.0539
  %44 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx257, align 4
  %tobool.not.i489 = icmp eq ptr %45, null
  %cmp.i490 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  %spec.select.i491 = or i1 %tobool.not.i489, %cmp.i490
  br i1 %spec.select.i491, label %for.body256.for.inc262_crit_edge, label %if.then.i496

for.body256.for.inc262_crit_edge:                 ; preds = %for.body256
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc262

if.then.i496:                                     ; preds = %for.body256
  %call.i.i.i.i.i.i.i493 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %45, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @llvm.prefetch.p0(ptr nonnull %45, i32 1, i32 3, i32 1) #8
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %45, ptr nonnull %45, i32 1, ptr nonnull elementtype(i32) %45) #8, !srcloc !183
  %asmresult.i.i.i.i.i.i.i.i494 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i494)
  %cmp.i.i.i.i.i495 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i494, 1
  br i1 %cmp.i.i.i.i.i495, label %if.then.i.i500, label %if.end5.i.i.i.i.i498

if.end5.i.i.i.i.i498:                             ; preds = %if.then.i496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i494)
  %.not.i.i.i.i.i497 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i494, 0
  br i1 %.not.i.i.i.i.i497, label %if.end5.i.i.i.i.i498.for.inc262_crit_edge, label %if.then10.i.i.i.i.i499, !prof !179

if.end5.i.i.i.i.i498.for.inc262_crit_edge:        ; preds = %if.end5.i.i.i.i.i498
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc262

if.then10.i.i.i.i.i499:                           ; preds = %if.end5.i.i.i.i.i498
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %45, i32 noundef 3) #8
  br label %for.inc262

if.then.i.i500:                                   ; preds = %if.then.i496
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void @aa_label_kref(ptr noundef nonnull %45) #8
  br label %for.inc262

for.inc262:                                       ; preds = %if.then.i.i500, %if.then10.i.i.i.i.i499, %if.end5.i.i.i.i.i498.for.inc262_crit_edge, %for.body256.for.inc262_crit_edge
  %inc263 = add nuw nsw i32 %i252.0539, 1
  %47 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size, align 4
  %cmp255 = icmp slt i32 %inc263, %48
  br i1 %cmp255, label %for.inc262.for.body256_crit_edge, label %for.inc262.for.end264_crit_edge

for.inc262.for.end264_crit_edge:                  ; preds = %for.inc262
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end264

for.inc262.for.body256_crit_edge:                 ; preds = %for.inc262
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body256

for.end264:                                       ; preds = %for.inc262.for.end264_crit_edge, %do.body251.for.end264_crit_edge
  %cmp266.not = icmp eq ptr %__lvec.0549, %___lvec_localtmp
  br i1 %cmp266.not, label %for.end264.cleanup_crit_edge, label %if.then267

for.end264.cleanup_crit_edge:                     ; preds = %for.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then267:                                       ; preds = %for.end264
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__lvec.0549) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then267, %for.end264.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %__new_.2 = phi ptr [ null, %if.end8.i.i.cleanup_crit_edge ], [ %__new_.1, %if.then267 ], [ %__new_.1, %for.end264.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  br label %__done

if.else278:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %sub281 = add i32 %1, -1
  %arrayidx282 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %sub281
  %49 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx282, align 4
  %call283 = tail call fastcc ptr @build_pivotroot(ptr noundef %50, ptr noundef %new_path, ptr noundef nonnull %call96, ptr noundef %old_path, ptr noundef nonnull %call)
  br label %__done

__done:                                           ; preds = %if.else278, %cleanup
  %__new_.3 = phi ptr [ %__new_.2, %cleanup ], [ %call283, %if.else278 ]
  %tobool285.not = icmp eq ptr %__new_.3, null
  br i1 %tobool285.not, label %do.body287, label %if.else313

do.body287:                                       ; preds = %__done
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %51 = load i8, ptr @aa_g_debug, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool288.not = icmp eq i8 %51, 0
  br i1 %tobool288.not, label %do.body287.if.then312_crit_edge, label %do.body290

do.body287.if.then312_crit_edge:                  ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then312

do.body290:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_pivotroot.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_pivotroot, %land.lhs.true)) #8
          to label %if.then312 [label %land.lhs.true], !srcloc !186

land.lhs.true:                                    ; preds = %do.body290
  %call300 = call i32 @___ratelimit(ptr noundef nonnull @aa_pivotroot._rs, ptr noundef nonnull @__func__.aa_pivotroot) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %land.lhs.true.if.then312_crit_edge, label %if.then302

land.lhs.true.if.then312_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then312

if.then302:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_pivotroot.descriptor, ptr noundef nonnull @.str.9) #8
  br label %if.then312

if.then312:                                       ; preds = %if.then302, %land.lhs.true.if.then312_crit_edge, %do.body290, %do.body287.if.then312_crit_edge
  %arrayidx329540 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %52 = ptrtoint ptr %arrayidx329540 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx329540, align 4
  %tobool330.not541 = icmp eq ptr %53, null
  br i1 %tobool330.not541, label %if.then312.out_crit_edge, label %do.body332.lr.ph

if.then312.out_crit_edge:                         ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body332.lr.ph:                                 ; preds = %if.then312
  %54 = getelementptr inbounds i8, ptr %sa_aad.i, i32 4
  %op3.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 2
  %55 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i, i32 0, i32 2
  %name49.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 4
  %56 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8
  %type51.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1
  %trans52.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %flags53.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1, i32 0, i32 3
  %info62.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 5
  br label %do.body332

if.else313:                                       ; preds = %__done
  %cmp.i501 = icmp ugt ptr %__new_.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i501, label %if.else320, label %if.then315

if.then315:                                       ; preds = %if.else313
  %call316 = call i32 @aa_replace_current_label(ptr noundef nonnull %__new_.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %if.then315.out_crit_edge, label %if.then.i506

if.then315.out_crit_edge:                         ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i506:                                     ; preds = %if.then315
  %call.i.i.i.i.i.i.i503 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %__new_.3, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @llvm.prefetch.p0(ptr nonnull %__new_.3, i32 1, i32 3, i32 1) #8
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %__new_.3, ptr nonnull %__new_.3, i32 1, ptr nonnull elementtype(i32) %__new_.3) #8, !srcloc !183
  %asmresult.i.i.i.i.i.i.i.i504 = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i504)
  %cmp.i.i.i.i.i505 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i504, 1
  br i1 %cmp.i.i.i.i.i505, label %if.then.i.i510, label %if.end5.i.i.i.i.i508

if.end5.i.i.i.i.i508:                             ; preds = %if.then.i506
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i504)
  %.not.i.i.i.i.i507 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i504, 0
  br i1 %.not.i.i.i.i.i507, label %if.end5.i.i.i.i.i508.out_crit_edge, label %if.then10.i.i.i.i.i509, !prof !179

if.end5.i.i.i.i.i508.out_crit_edge:               ; preds = %if.end5.i.i.i.i.i508
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then10.i.i.i.i.i509:                           ; preds = %if.end5.i.i.i.i.i508
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %__new_.3, i32 noundef 3) #8
  br label %out

if.then.i.i510:                                   ; preds = %if.then.i506
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void @aa_label_kref(ptr noundef nonnull %__new_.3) #8
  br label %out

if.else320:                                       ; preds = %if.else313
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %__new_.3 to i32
  br label %out

out:                                              ; preds = %for.cond326.out_crit_edge, %if.else320, %if.then.i.i510, %if.then10.i.i.i.i.i509, %if.end5.i.i.i.i.i508.out_crit_edge, %if.then315.out_crit_edge, %if.then312.out_crit_edge, %if.end86.out_crit_edge
  %error.0 = phi i32 [ %58, %if.else320 ], [ 0, %if.then315.out_crit_edge ], [ -12, %if.end86.out_crit_edge ], [ %call316, %if.end5.i.i.i.i.i508.out_crit_edge ], [ %call316, %if.then10.i.i.i.i.i509 ], [ %call316, %if.then.i.i510 ], [ 0, %if.then312.out_crit_edge ], [ %78, %for.cond326.out_crit_edge ]
  call void @aa_put_buffer(ptr noundef %call) #8
  call void @aa_put_buffer(ptr noundef %call96) #8
  ret i32 %error.0

do.body332:                                       ; preds = %for.cond326.do.body332_crit_edge, %do.body332.lr.ph
  %59 = phi ptr [ %53, %do.body332.lr.ph ], [ %80, %for.cond326.do.body332_crit_edge ]
  %__E.0543 = phi i32 [ 0, %do.body332.lr.ph ], [ %78, %for.cond326.do.body332_crit_edge ]
  %i324.sroa.0.0542 = phi i32 [ 0, %do.body332.lr.ph ], [ %inc341, %for.cond326.do.body332_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i) #8
  %60 = call ptr @memset(ptr %54, i32 0, i32 52)
  %61 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.11, ptr %op3.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #8
  %62 = call ptr @memcpy(ptr %sa.i, ptr @__const.audit_mount.sa, i32 12)
  %63 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %sa_aad.i, ptr %55, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nullperms to i32))
  %64 = load i32, ptr @nullperms, align 4
  %neg.i = and i32 %64, 1
  %and28.i = xor i32 %neg.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.aa_perms, ptr @nullperms, i32 0, i32 4) to i32))
  %65 = load i32, ptr getelementptr inbounds (%struct.aa_perms, ptr @nullperms, i32 0, i32 4), align 4
  %and29.i = and i32 %and28.i, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %spec.select.i512 = select i1 %tobool30.not.i, i32 7, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.aa_perms, ptr @nullperms, i32 0, i32 3) to i32))
  %66 = load i32, ptr getelementptr inbounds (%struct.aa_perms, ptr @nullperms, i32 0, i32 3), align 4
  %and33.i = and i32 %66, %and28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.body332.if.end44.i_crit_edge, label %land.lhs.true.i

do.body332.if.end44.i_crit_edge:                  ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %do.body332
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %67 = load i32, ptr @aa_g_audit, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %67, label %land.lhs.true.i.AUDIT_MODE.exit10.i_crit_edge [
    i32 0, label %AUDIT_MODE.exit5.i
    i32 3, label %land.lhs.true.i.if.end44.i_crit_edge
  ]

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

land.lhs.true.i.AUDIT_MODE.exit10.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit10.i

AUDIT_MODE.exit5.i:                               ; preds = %land.lhs.true.i
  %audit.i2.i = getelementptr inbounds %struct.aa_profile, ptr %59, i32 0, i32 7
  %69 = ptrtoint ptr %audit.i2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %audit.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp36.not.i = icmp eq i32 %70, 3
  br i1 %cmp36.not.i, label %AUDIT_MODE.exit5.i.if.end44.i_crit_edge, label %AUDIT_MODE.exit5.i.AUDIT_MODE.exit10.i_crit_edge

AUDIT_MODE.exit5.i.AUDIT_MODE.exit10.i_crit_edge: ; preds = %AUDIT_MODE.exit5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit10.i

AUDIT_MODE.exit5.i.if.end44.i_crit_edge:          ; preds = %AUDIT_MODE.exit5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

AUDIT_MODE.exit10.i:                              ; preds = %AUDIT_MODE.exit5.i.AUDIT_MODE.exit10.i_crit_edge, %land.lhs.true.i.AUDIT_MODE.exit10.i_crit_edge
  %retval.0.i9.i = phi i32 [ %67, %land.lhs.true.i.AUDIT_MODE.exit10.i_crit_edge ], [ %70, %AUDIT_MODE.exit5.i.AUDIT_MODE.exit10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i9.i)
  %cmp39.not.i = icmp eq i32 %retval.0.i9.i, 4
  br i1 %cmp39.not.i, label %AUDIT_MODE.exit10.i.if.end44.i_crit_edge, label %if.then40.i

AUDIT_MODE.exit10.i.if.end44.i_crit_edge:         ; preds = %AUDIT_MODE.exit10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then40.i:                                      ; preds = %AUDIT_MODE.exit10.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg42.i = xor i32 %66, -1
  %and43.i = and i32 %and28.i, %neg42.i
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %AUDIT_MODE.exit10.i.if.end44.i_crit_edge, %AUDIT_MODE.exit5.i.if.end44.i_crit_edge, %land.lhs.true.i.if.end44.i_crit_edge, %do.body332.if.end44.i_crit_edge
  %request.addr.0.i = phi i32 [ %and43.i, %if.then40.i ], [ %and28.i, %AUDIT_MODE.exit10.i.if.end44.i_crit_edge ], [ %and28.i, %AUDIT_MODE.exit5.i.if.end44.i_crit_edge ], [ %and28.i, %do.body332.if.end44.i_crit_edge ], [ %and28.i, %land.lhs.true.i.if.end44.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request.addr.0.i)
  %tobool45.not.i = icmp eq i32 %request.addr.0.i, 0
  br i1 %tobool45.not.i, label %audit_mount.exit.thread, label %audit_mount.exit

audit_mount.exit.thread:                          ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i) #8
  br label %for.cond326

audit_mount.exit:                                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %name49.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %name49.i, align 4
  %72 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %56, align 4
  %73 = ptrtoint ptr %type51.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %type51.i, align 4
  %74 = ptrtoint ptr %trans52.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %trans52.i, align 4
  %75 = ptrtoint ptr %flags53.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %flags53.i, align 4
  %76 = ptrtoint ptr %info62.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.10, ptr %info62.i, align 4
  %77 = ptrtoint ptr %sa_aad.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -12, ptr %sa_aad.i, align 4
  %call64.i = call i32 @aa_audit(i32 noundef %spec.select.i512, ptr noundef nonnull %59, ptr noundef nonnull %sa.i, ptr noundef nonnull @audit_cb) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool334.not = icmp eq i32 %call64.i, 0
  %spec.select = select i1 %tobool334.not, i32 %__E.0543, i32 %call64.i
  br label %for.cond326

for.cond326:                                      ; preds = %audit_mount.exit, %audit_mount.exit.thread
  %78 = phi i32 [ -12, %audit_mount.exit.thread ], [ %spec.select, %audit_mount.exit ]
  %inc341 = add i32 %i324.sroa.0.0542, 1
  %arrayidx329 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc341
  %79 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx329, align 4
  %tobool330.not = icmp eq ptr %80, null
  br i1 %tobool330.not, label %for.cond326.out_crit_edge, label %for.cond326.do.body332_crit_edge

for.cond326.do.body332_crit_edge:                 ; preds = %for.cond326
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body332

for.cond326.out_crit_edge:                        ; preds = %for.cond326
  call void @__sanitizer_cov_trace_pc() #10
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @build_pivotroot(ptr noundef %profile, ptr noundef %new_path, ptr noundef %new_buffer, ptr noundef %old_path, ptr noundef %old_buffer) unnamed_addr #0 align 64 {
entry:
  %sa_aad.i = alloca %struct.apparmor_audit_data, align 4
  %sa.i = alloca %struct.common_audit_data, align 4
  %old_name = alloca ptr, align 4
  %new_name = alloca ptr, align 4
  %info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_name) #8
  %0 = ptrtoint ptr %old_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_name, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_name) #8
  %1 = ptrtoint ptr %new_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %new_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %info, align 4
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.build_pivotroot) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %new_path, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !171

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 651, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.build_pivotroot) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %old_path, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !171

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 652, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.build_pivotroot) #8
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.end86.if.then97_crit_edge, label %lor.lhs.false

if.end86.if.then97_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

lor.lhs.false:                                    ; preds = %if.end86
  %arrayidx.i = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 12, i32 1, i32 7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool96.not = icmp eq i32 %6, 0
  br i1 %tobool96.not, label %lor.lhs.false.if.then97_crit_edge, label %if.end99

lor.lhs.false.if.then97_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

if.then97:                                        ; preds = %lor.lhs.false.if.then97_crit_edge, %if.end86.if.then97_crit_edge
  %label = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call98 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %label)
  br label %cleanup

if.end99:                                         ; preds = %lor.lhs.false
  br i1 %tobool.not, label %do.end.i, label %if.end99.if.end.i_crit_edge, !prof !171

if.end99.if.end.i_crit_edge:                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.path_flags) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end99.if.end.i_crit_edge
  br i1 %tobool62.not, label %do.end44.i, label %if.end.i.path_flags.exit_crit_edge, !prof !171

if.end.i.path_flags.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %path_flags.exit

do.end44.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.path_flags) #8
  br label %path_flags.exit

path_flags.exit:                                  ; preds = %do.end44.i, %if.end.i.path_flags.exit_crit_edge
  %path_flags.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 9
  %7 = ptrtoint ptr %path_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %path_flags.i, align 4
  %dentry.i = getelementptr inbounds %struct.path, ptr %old_path, i32 0, i32 1
  %9 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %15)
  %cmp.i = icmp eq i16 %15, 16384
  %cond.i = zext i1 %cmp.i to i32
  %or.i = or i32 %8, %cond.i
  %disconnected = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 10
  %16 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disconnected, align 4
  %call101 = call i32 @aa_path_name(ptr noundef %old_path, i32 noundef %or.i, ptr noundef %old_buffer, ptr noundef nonnull %old_name, ptr noundef nonnull %info, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %path_flags.exit.audit_crit_edge

path_flags.exit.audit_crit_edge:                  ; preds = %path_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.end104:                                        ; preds = %path_flags.exit
  br i1 %tobool.not, label %do.end.i166, label %if.end104.if.end.i168_crit_edge, !prof !171

if.end104.if.end.i168_crit_edge:                  ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i168

do.end.i166:                                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.path_flags) #8
  br label %if.end.i168

if.end.i168:                                      ; preds = %do.end.i166, %if.end104.if.end.i168_crit_edge
  br i1 %tobool26.not, label %do.end44.i169, label %if.end.i168.path_flags.exit176_crit_edge, !prof !171

if.end.i168.path_flags.exit176_crit_edge:         ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %path_flags.exit176

do.end44.i169:                                    ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.path_flags) #8
  br label %path_flags.exit176

path_flags.exit176:                               ; preds = %do.end44.i169, %if.end.i168.path_flags.exit176_crit_edge
  %18 = ptrtoint ptr %path_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %path_flags.i, align 4
  %dentry.i171 = getelementptr inbounds %struct.path, ptr %new_path, i32 0, i32 1
  %20 = ptrtoint ptr %dentry.i171 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dentry.i171, align 4
  %d_inode.i172 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i172 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i172, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %26)
  %cmp.i173 = icmp eq i16 %26, 16384
  %cond.i174 = zext i1 %cmp.i173 to i32
  %or.i175 = or i32 %19, %cond.i174
  %27 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disconnected, align 4
  %call107 = call i32 @aa_path_name(ptr noundef %new_path, i32 noundef %or.i175, ptr noundef %new_buffer, ptr noundef nonnull %new_name, ptr noundef nonnull %info, ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %path_flags.exit176.audit_crit_edge

path_flags.exit176.audit_crit_edge:               ; preds = %path_flags.exit176
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.end110:                                        ; preds = %path_flags.exit176
  call void @__sanitizer_cov_trace_pc() #10
  %policy = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  %29 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %policy, align 4
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %new_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %new_name, align 4
  %call112 = call i32 @aa_dfa_match(ptr noundef %30, i32 noundef %32, ptr noundef %34) #8
  %35 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %policy, align 4
  %call.i = call i32 @aa_dfa_next(ptr noundef %36, i32 noundef %call112, i8 noundef zeroext 0) #8
  %37 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %policy, align 4
  %39 = ptrtoint ptr %old_name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %old_name, align 4
  %call118 = call i32 @aa_dfa_match(ptr noundef %38, i32 noundef %call.i, ptr noundef %40) #8
  %41 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %policy, align 4
  %tables.i = getelementptr inbounds %struct.aa_dfa, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tables.i, align 4, !noalias !187
  %td_data.i = getelementptr inbounds %struct.table_header, ptr %44, i32 0, i32 4
  %arrayidx1.i = getelementptr i32, ptr %td_data.i, i32 %call118
  %45 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx1.i, align 4, !noalias !187
  %arrayidx9.i = getelementptr %struct.aa_dfa, ptr %42, i32 0, i32 3, i32 6
  %47 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx9.i, align 4, !noalias !187
  %td_data10.i = getelementptr inbounds %struct.table_header, ptr %48, i32 0, i32 4
  %arrayidx12.i = getelementptr i32, ptr %td_data10.i, i32 %call118
  %49 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx12.i, align 4, !noalias !187
  %shr.i = lshr i32 %50, 7
  %and19.i = and i32 %shr.i, 127
  %and = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool122.not = icmp eq i32 %and, 0
  %phi.bo196 = xor i32 %and, 1
  %phi.bo197 = and i32 %50, 1
  %spec.select199 = select i1 %tobool122.not, i32 -13, i32 0
  br label %audit

audit:                                            ; preds = %if.end110, %path_flags.exit176.audit_crit_edge, %path_flags.exit.audit_crit_edge
  %perms.sroa.9.0 = phi i32 [ 0, %path_flags.exit176.audit_crit_edge ], [ 0, %path_flags.exit.audit_crit_edge ], [ %and19.i, %if.end110 ]
  %perms.sroa.6.0 = phi i32 [ 0, %path_flags.exit176.audit_crit_edge ], [ 0, %path_flags.exit.audit_crit_edge ], [ %phi.bo197, %if.end110 ]
  %perms.sroa.0.0 = phi i32 [ 1, %path_flags.exit176.audit_crit_edge ], [ 1, %path_flags.exit.audit_crit_edge ], [ %phi.bo196, %if.end110 ]
  %error.0 = phi i32 [ %call107, %path_flags.exit176.audit_crit_edge ], [ %call101, %path_flags.exit.audit_crit_edge ], [ %spec.select199, %if.end110 ]
  %51 = ptrtoint ptr %new_name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %new_name, align 4
  %53 = ptrtoint ptr %old_name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %old_name, align 4
  %55 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i) #8
  %57 = getelementptr inbounds i8, ptr %sa_aad.i, i32 4
  %58 = call ptr @memset(ptr %57, i32 0, i32 52)
  %op3.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 2
  %59 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.11, ptr %op3.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #8
  %60 = call ptr @memcpy(ptr %sa.i, ptr @__const.audit_mount.sa, i32 12)
  %61 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %sa_aad.i, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool.not.i178 = icmp eq i32 %error.0, 0
  br i1 %tobool.not.i178, label %if.then.i, label %if.else.i, !prof !179

if.then.i:                                        ; preds = %audit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %63 = load i32, ptr @aa_g_audit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.AUDIT_MODE.exit.i_crit_edge

if.then.i.AUDIT_MODE.exit.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %audit.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %64 = ptrtoint ptr %audit.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %audit.i.i, align 4
  br label %AUDIT_MODE.exit.i

AUDIT_MODE.exit.i:                                ; preds = %if.end.i.i, %if.then.i.AUDIT_MODE.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %65, %if.end.i.i ], [ %63, %if.then.i.AUDIT_MODE.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i.i)
  %cmp.i180 = icmp ne i32 %retval.0.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perms.sroa.6.0)
  %tobool17.not.i = icmp eq i32 %perms.sroa.6.0, 0
  %or.cond = select i1 %cmp.i180, i1 %tobool17.not.i, i1 false
  br i1 %or.cond, label %audit_mount.exit.thread, label %AUDIT_MODE.exit.i.audit_mount.exit_crit_edge, !prof !180

AUDIT_MODE.exit.i.audit_mount.exit_crit_edge:     ; preds = %AUDIT_MODE.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit_mount.exit

audit_mount.exit.thread:                          ; preds = %AUDIT_MODE.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i) #8
  br label %if.end129

if.else.i:                                        ; preds = %audit
  %and33.i = and i32 %perms.sroa.0.0, %perms.sroa.9.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else.i.if.end44.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end44.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %66 = load i32, ptr @aa_g_audit, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %66, label %land.lhs.true.i.AUDIT_MODE.exit10.i_crit_edge [
    i32 0, label %AUDIT_MODE.exit5.i
    i32 3, label %land.lhs.true.i.if.end44.i_crit_edge
  ]

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

land.lhs.true.i.AUDIT_MODE.exit10.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit10.i

AUDIT_MODE.exit5.i:                               ; preds = %land.lhs.true.i
  %audit.i2.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %68 = ptrtoint ptr %audit.i2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %audit.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp36.not.i = icmp eq i32 %69, 3
  br i1 %cmp36.not.i, label %AUDIT_MODE.exit5.i.if.end44.i_crit_edge, label %AUDIT_MODE.exit5.i.AUDIT_MODE.exit10.i_crit_edge

AUDIT_MODE.exit5.i.AUDIT_MODE.exit10.i_crit_edge: ; preds = %AUDIT_MODE.exit5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit10.i

AUDIT_MODE.exit5.i.if.end44.i_crit_edge:          ; preds = %AUDIT_MODE.exit5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

AUDIT_MODE.exit10.i:                              ; preds = %AUDIT_MODE.exit5.i.AUDIT_MODE.exit10.i_crit_edge, %land.lhs.true.i.AUDIT_MODE.exit10.i_crit_edge
  %retval.0.i9.i = phi i32 [ %66, %land.lhs.true.i.AUDIT_MODE.exit10.i_crit_edge ], [ %69, %AUDIT_MODE.exit5.i.AUDIT_MODE.exit10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i9.i)
  %cmp39.not.i = icmp eq i32 %retval.0.i9.i, 4
  br i1 %cmp39.not.i, label %AUDIT_MODE.exit10.i.if.end44.i_crit_edge, label %if.then40.i

AUDIT_MODE.exit10.i.if.end44.i_crit_edge:         ; preds = %AUDIT_MODE.exit10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then40.i:                                      ; preds = %AUDIT_MODE.exit10.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg42.i = xor i32 %perms.sroa.9.0, -1
  %and43.i = and i32 %perms.sroa.0.0, %neg42.i
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %AUDIT_MODE.exit10.i.if.end44.i_crit_edge, %AUDIT_MODE.exit5.i.if.end44.i_crit_edge, %land.lhs.true.i.if.end44.i_crit_edge, %if.else.i.if.end44.i_crit_edge
  %request.addr.0.i = phi i32 [ %and43.i, %if.then40.i ], [ %perms.sroa.0.0, %AUDIT_MODE.exit10.i.if.end44.i_crit_edge ], [ %perms.sroa.0.0, %AUDIT_MODE.exit5.i.if.end44.i_crit_edge ], [ %perms.sroa.0.0, %if.else.i.if.end44.i_crit_edge ], [ %perms.sroa.0.0, %land.lhs.true.i.if.end44.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request.addr.0.i)
  %tobool45.not.i = icmp eq i32 %request.addr.0.i, 0
  br i1 %tobool45.not.i, label %audit_mount.exit.thread192, label %if.end44.i.audit_mount.exit_crit_edge

if.end44.i.audit_mount.exit_crit_edge:            ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit_mount.exit

audit_mount.exit.thread192:                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i) #8
  br label %if.then127

audit_mount.exit:                                 ; preds = %if.end44.i.audit_mount.exit_crit_edge, %AUDIT_MODE.exit.i.audit_mount.exit_crit_edge
  %audit_type.2.i = phi i32 [ 7, %if.end44.i.audit_mount.exit_crit_edge ], [ 0, %AUDIT_MODE.exit.i.audit_mount.exit_crit_edge ]
  %name49.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 4
  %70 = ptrtoint ptr %name49.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %52, ptr %name49.i, align 4
  %71 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %54, ptr %71, align 4
  %type51.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1
  %73 = ptrtoint ptr %type51.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %type51.i, align 4
  %trans52.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %74 = ptrtoint ptr %trans52.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %trans52.i, align 4
  %flags53.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1, i32 0, i32 3
  %75 = ptrtoint ptr %flags53.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %flags53.i, align 4
  %info62.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 5
  %76 = ptrtoint ptr %info62.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %56, ptr %info62.i, align 4
  %77 = ptrtoint ptr %sa_aad.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %error.0, ptr %sa_aad.i, align 4
  %call64.i = call i32 @aa_audit(i32 noundef %audit_type.2.i, ptr noundef %profile, ptr noundef nonnull %sa.i, ptr noundef nonnull @audit_cb) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool126.not = icmp eq i32 %call64.i, 0
  br i1 %tobool126.not, label %audit_mount.exit.if.end129_crit_edge, label %audit_mount.exit.if.then127_crit_edge

audit_mount.exit.if.then127_crit_edge:            ; preds = %audit_mount.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then127

audit_mount.exit.if.end129_crit_edge:             ; preds = %audit_mount.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then127:                                       ; preds = %audit_mount.exit.if.then127_crit_edge, %audit_mount.exit.thread192
  %retval.1.i195 = phi i32 [ %error.0, %audit_mount.exit.thread192 ], [ %call64.i, %audit_mount.exit.if.then127_crit_edge ]
  %78 = inttoptr i32 %retval.1.i195 to ptr
  br label %cleanup

if.end129:                                        ; preds = %audit_mount.exit.if.end129_crit_edge, %audit_mount.exit.thread
  %label130 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call131 = call fastcc ptr @aa_get_newest_label(ptr noundef %label130)
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.then127, %if.then97
  %retval.0 = phi ptr [ %call98, %if.then97 ], [ %78, %if.then127 ], [ %call131, %if.end129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_name) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_vec_unique(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_vec_find_or_create_label(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_replace_current_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @audit_mount(ptr noundef %profile, ptr noundef %op, ptr noundef %name, ptr noundef %src_name, ptr noundef %type, i32 noundef %flags, ptr noundef %data, i32 noundef %request, ptr nocapture noundef readonly %perms, ptr noundef %info, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #8
  %0 = getelementptr inbounds i8, ptr %sa_aad, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %op3 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 2
  %2 = ptrtoint ptr %op3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %op, ptr %op3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #8
  %3 = call ptr @memcpy(ptr %sa, ptr @__const.audit_mount.sa, i32 12)
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sa_aad, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !179

if.then:                                          ; preds = %entry
  %audit = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %6 = ptrtoint ptr %audit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audit, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %8 = load i32, ptr @aa_g_audit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.AUDIT_MODE.exit_crit_edge

if.then.AUDIT_MODE.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %audit.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %9 = ptrtoint ptr %audit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audit.i, align 4
  br label %AUDIT_MODE.exit

AUDIT_MODE.exit:                                  ; preds = %if.end.i, %if.then.AUDIT_MODE.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.end.i ], [ %8, %if.then.AUDIT_MODE.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 4
  br i1 %cmp, label %if.then16, label %AUDIT_MODE.exit.if.end_crit_edge, !prof !171

AUDIT_MODE.exit.if.end_crit_edge:                 ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then16:                                        ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.then16, %AUDIT_MODE.exit.if.end_crit_edge
  %mask.0 = phi i32 [ 65535, %if.then16 ], [ %7, %AUDIT_MODE.exit.if.end_crit_edge ]
  %and = and i32 %mask.0, %request
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end.cleanup65_crit_edge, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end.cleanup65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.else:                                          ; preds = %entry
  %11 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %perms, align 4
  %neg = xor i32 %12, -1
  %and28 = and i32 %neg, %request
  %kill = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 4
  %13 = ptrtoint ptr %kill to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %kill, align 4
  %and29 = and i32 %and28, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %spec.select = select i1 %tobool30.not, i32 7, i32 6
  %quiet = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 3
  %15 = ptrtoint ptr %quiet to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quiet, align 4
  %and33 = and i32 %16, %and28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else.if.end44_crit_edge, label %land.lhs.true

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true:                                    ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %17 = load i32, ptr @aa_g_audit, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %17, label %land.lhs.true.AUDIT_MODE.exit10_crit_edge [
    i32 0, label %AUDIT_MODE.exit5
    i32 3, label %land.lhs.true.if.end44_crit_edge
  ]

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true.AUDIT_MODE.exit10_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit10

AUDIT_MODE.exit5:                                 ; preds = %land.lhs.true
  %audit.i2 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %19 = ptrtoint ptr %audit.i2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %audit.i2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp36.not = icmp eq i32 %20, 3
  br i1 %cmp36.not, label %AUDIT_MODE.exit5.if.end44_crit_edge, label %if.end.i8

AUDIT_MODE.exit5.if.end44_crit_edge:              ; preds = %AUDIT_MODE.exit5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end.i8:                                        ; preds = %AUDIT_MODE.exit5
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %audit.i2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %audit.i2, align 4
  br label %AUDIT_MODE.exit10

AUDIT_MODE.exit10:                                ; preds = %if.end.i8, %land.lhs.true.AUDIT_MODE.exit10_crit_edge
  %retval.0.i9 = phi i32 [ %22, %if.end.i8 ], [ %17, %land.lhs.true.AUDIT_MODE.exit10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i9)
  %cmp39.not = icmp eq i32 %retval.0.i9, 4
  br i1 %cmp39.not, label %AUDIT_MODE.exit10.if.end44_crit_edge, label %if.then40

AUDIT_MODE.exit10.if.end44_crit_edge:             ; preds = %AUDIT_MODE.exit10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then40:                                        ; preds = %AUDIT_MODE.exit10
  call void @__sanitizer_cov_trace_pc() #10
  %neg42 = xor i32 %16, -1
  %and43 = and i32 %and28, %neg42
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %AUDIT_MODE.exit10.if.end44_crit_edge, %AUDIT_MODE.exit5.if.end44_crit_edge, %land.lhs.true.if.end44_crit_edge, %if.else.if.end44_crit_edge
  %request.addr.0 = phi i32 [ %and43, %if.then40 ], [ %and28, %AUDIT_MODE.exit10.if.end44_crit_edge ], [ %and28, %AUDIT_MODE.exit5.if.end44_crit_edge ], [ %and28, %if.else.if.end44_crit_edge ], [ %and28, %land.lhs.true.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request.addr.0)
  %tobool45.not = icmp eq i32 %request.addr.0, 0
  br i1 %tobool45.not, label %if.end44.cleanup65_crit_edge, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end44.cleanup65_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end48:                                         ; preds = %if.end44.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %audit_type.2 = phi i32 [ 0, %if.end.if.end48_crit_edge ], [ %spec.select, %if.end44.if.end48_crit_edge ]
  %name49 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 4
  %23 = ptrtoint ptr %name49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %name, ptr %name49, align 4
  %24 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %src_name, ptr %24, align 4
  %type51 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1
  %26 = ptrtoint ptr %type51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %type, ptr %type51, align 4
  %trans52 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %trans52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %trans52, align 4
  %flags53 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %flags53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %flags, ptr %flags53, align 4
  %tobool54.not = icmp eq ptr %data, null
  br i1 %tobool54.not, label %if.end48.if.end61_crit_edge, label %land.lhs.true55

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.lhs.true55:                                  ; preds = %if.end48
  %audit56 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %29 = ptrtoint ptr %audit56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %audit56, align 4
  %and57 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.lhs.true55.if.end61_crit_edge, label %if.then59

land.lhs.true55.if.end61_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then59:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  %data60 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %data60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %data, ptr %data60, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %land.lhs.true55.if.end61_crit_edge, %if.end48.if.end61_crit_edge
  %info62 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 5
  %32 = ptrtoint ptr %info62 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %info, ptr %info62, align 4
  %33 = ptrtoint ptr %sa_aad to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %error, ptr %sa_aad, align 4
  %call64 = call i32 @aa_audit(i32 noundef %audit_type.2, ptr noundef %profile, ptr noundef nonnull %sa, ptr noundef nonnull @audit_cb) #8
  br label %cleanup65

cleanup65:                                        ; preds = %if.end61, %if.end44.cleanup65_crit_edge, %if.end.cleanup65_crit_edge
  %retval.1 = phi i32 [ %call64, %if.end61 ], [ 0, %if.end.cleanup65_crit_edge ], [ %error, %if.end44.cleanup65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_path_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_match(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @compute_mnt_perms(ptr noalias nocapture writeonly sret(%struct.aa_perms) align 4 %agg.result, ptr nocapture noundef readonly %dfa, i32 noundef %state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %agg.result, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !172
  %tables = getelementptr inbounds %struct.aa_dfa, ptr %dfa, i32 0, i32 3
  %2 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tables, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %3, i32 0, i32 4
  %arrayidx1 = getelementptr i32, ptr %td_data, i32 %state
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %or = and i32 %5, -2147483521
  %6 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %agg.result, align 4
  %audit = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 1
  %arrayidx9 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx9, align 4
  %td_data10 = getelementptr inbounds %struct.table_header, ptr %8, i32 0, i32 4
  %arrayidx12 = getelementptr i32, ptr %td_data10, i32 %state
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx12, align 4
  %and13 = and i32 %10, 127
  %11 = ptrtoint ptr %audit to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and13, ptr %audit, align 4
  %deny = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 2
  %12 = ptrtoint ptr %deny to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %deny, align 4
  %quiet = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 3
  %shr = lshr i32 %10, 7
  %and19 = and i32 %shr, 127
  %13 = ptrtoint ptr %quiet to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and19, ptr %quiet, align 4
  %kill = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 4
  %14 = trunc i32 %5 to i16
  %conv = lshr i16 %14, 10
  %and3.i = shl i16 %14, 4
  %15 = and i16 %and3.i, 4096
  %and7.i = shl i16 %14, 5
  %16 = and i16 %and7.i, 16384
  %17 = or i16 %16, %15
  %18 = shl i16 %14, 8
  %19 = and i16 %18, -32768
  %20 = or i16 %17, %19
  %trunc.i = trunc i16 %conv to i4
  %21 = call ptr @memset(ptr %kill, i32 0, i32 24)
  %22 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.72)
  switch i4 %trunc.i, label %if.then45.i [
    i4 1, label %if.then24.i
    i4 2, label %if.then31.i
    i4 3, label %if.then39.i
    i4 0, label %entry.dfa_map_xindex.exit_crit_edge
  ]

entry.dfa_map_xindex.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dfa_map_xindex.exit

if.then24.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = or i16 %17, -32768
  br label %dfa_map_xindex.exit

if.then31.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %24 = or i16 %20, 1024
  br label %dfa_map_xindex.exit

if.then39.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = or i16 %20, 9216
  br label %dfa_map_xindex.exit

if.then45.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %26 = and i16 %conv, 15
  %sub.i = add nsw i16 %26, -4
  %27 = or i16 %sub.i, %20
  %or51.i = or i16 %27, 2048
  br label %dfa_map_xindex.exit

dfa_map_xindex.exit:                              ; preds = %if.then45.i, %if.then39.i, %if.then31.i, %if.then24.i, %entry.dfa_map_xindex.exit_crit_edge
  %index.3.i = phi i16 [ %23, %if.then24.i ], [ %24, %if.then31.i ], [ %25, %if.then39.i ], [ %or51.i, %if.then45.i ], [ %20, %entry.dfa_map_xindex.exit_crit_edge ]
  %xindex = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 10
  %28 = ptrtoint ptr %xindex to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %index.3.i, ptr %xindex, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_next(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_newest_label(ptr noundef %l) unnamed_addr #5 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.aa_label, ptr %l, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.i118, label %if.then2

if.then2:                                         ; preds = %if.end
  %proxy = getelementptr inbounds %struct.aa_label, ptr %l, i32 0, i32 3
  %2 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proxy, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end, label %if.then2.if.end20_crit_edge, !prof !171

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then2.if.end20_crit_edge
  %4 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proxy, align 4
  %label = getelementptr inbounds %struct.aa_proxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %label, align 4
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %do.end51, label %if.end20.if.end57_crit_edge, !prof !171

if.end20.if.end57_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

do.end51:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end20.if.end57_crit_edge
  %8 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proxy, align 4
  %label68 = getelementptr inbounds %struct.aa_proxy, ptr %9, i32 0, i32 1
  %10 = tail call i32 @llvm.read_register.i32(metadata !161) #8
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !190
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end57.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end57.do.body.i.preheader_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end57
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.do.body.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #8
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.i, %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, %land.lhs.true.i.i.do.body.i.preheader_crit_edge, %if.end57.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %kref_get_unless_zero.exit.i.do.body.i_crit_edge, %do.body.i.preheader
  %14 = ptrtoint ptr %label68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %label68, align 4
  %call.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 401, ptr noundef nonnull @.str.30) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.body.i.do.end8.i_crit_edge
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %do.end8.i.do.end14.i_crit_edge, label %land.rhs.i

do.end8.i.do.end14.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

land.rhs.i:                                       ; preds = %do.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %15, i32 noundef 4) #8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.rhs.i
  %18 = phi i32 [ %17, %land.rhs.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %18, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #8
  %20 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 %21, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %15) #8, !srcloc !191
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !179

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !179

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 0) #8
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.do.body.i_crit_edge, label %kref_get_unless_zero.exit.i.do.end14.i_crit_edge

kref_get_unless_zero.exit.i.do.end14.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

kref_get_unless_zero.exit.i.do.body.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end14.i:                                       ; preds = %kref_get_unless_zero.exit.i.do.end14.i_crit_edge, %do.end8.i.do.end14.i_crit_edge
  %call.i18.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i18.i, label %do.end14.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true.i21.i

do.end14.i.aa_get_label_rcu.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label_rcu.exit

land.lhs.true.i21.i:                              ; preds = %do.end14.i
  %call1.i19.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label_rcu.exit

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label_rcu.exit

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.33) #8
  br label %aa_get_label_rcu.exit

aa_get_label_rcu.exit:                            ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, %do.end14.i.aa_get_label_rcu.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  %28 = call i32 @llvm.read_register.i32(metadata !161) #8
  %and.i.i.i.i.i25.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i26.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br i1 %tobool11.not.i, label %do.end89, label %aa_get_label_rcu.exit.return_crit_edge, !prof !171

aa_get_label_rcu.exit.return_crit_edge:           ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end89:                                         ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %return

if.then.i118:                                     ; preds = %if.end
  %call.i.i.i.i.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #8
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #8, !srcloc !181
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !171

if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i118
  %add.i.i.i.i.i119 = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i119, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i120 = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i120, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !179

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %l, i32 noundef %.sink.i.i.i.i.i) #8
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %do.end89, %aa_get_label_rcu.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %do.end89 ], [ %15, %aa_get_label_rcu.exit.return_crit_edge ], [ %l, %if.else.i.i.i.i.i.return_crit_edge ], [ %l, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_audit(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_cb(ptr noundef %ab, ptr nocapture noundef readonly %va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %type = getelementptr inbounds %struct.apparmor_audit_data, ptr %2, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.34) #8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %type1 = getelementptr inbounds %struct.apparmor_audit_data, ptr %6, i32 0, i32 8, i32 0, i32 1
  %7 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type1, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.apparmor_audit_data, ptr %10, i32 0, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.35) #8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.apparmor_audit_data, ptr %15, i32 0, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %18) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %trans = getelementptr inbounds %struct.apparmor_audit_data, ptr %20, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trans, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.36) #8
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %0, align 4
  %trans8 = getelementptr inbounds %struct.apparmor_audit_data, ptr %24, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %trans8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans8, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %26) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %flags = getelementptr inbounds %struct.apparmor_audit_data, ptr %28, i32 0, i32 8, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not = icmp eq i32 %30, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.37) #8
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %0, align 4
  %flags12 = getelementptr inbounds %struct.apparmor_audit_data, ptr %32, i32 0, i32 8, i32 0, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags12, align 4
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %.str.41..str.40.i = select i1 %tobool.not.i, ptr @.str.41, ptr @.str.40
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull %.str.41..str.40.i) #8
  %and1.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then11.if.end4.i_crit_edge, label %if.then3.i

if.then11.if.end4.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.42) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then11.if.end4.i_crit_edge
  %and5.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then7.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.43) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end8.i_crit_edge
  %and9.i = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then11.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.44) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end12.i_crit_edge
  %and13.i = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then15.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.45) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end16.i_crit_edge
  %and17.i = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end20.i_crit_edge, label %if.then19.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.46) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end20.i_crit_edge
  %and21.i = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end24.i_crit_edge, label %if.then23.i

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.47) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end24.i_crit_edge
  %and25.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end28.i_crit_edge, label %if.then27.i

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.48) #8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end28.i_crit_edge
  %and29.i = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end32.i_crit_edge, label %if.then31.i

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.49) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end32.i_crit_edge
  %and33.i = and i32 %34, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end36.i_crit_edge, label %if.then35.i

if.end32.i.if.end36.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.50) #8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end36.i_crit_edge
  %and37.i = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.if.end42.i_crit_edge, label %if.then39.i

if.end36.i.if.end42.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %and40.i = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %cond.i = select i1 %tobool41.not.i, ptr @.str.52, ptr @.str.51
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull %cond.i) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then39.i, %if.end36.i.if.end42.i_crit_edge
  %and43.i = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end46.i_crit_edge, label %if.then45.i

if.end42.i.if.end46.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.53) #8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end46.i_crit_edge
  %and47.i = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end50.i_crit_edge, label %if.then49.i

if.end46.i.if.end50.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.54) #8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end50.i_crit_edge
  %and51.i = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end54.i_crit_edge, label %if.then53.i

if.end50.i.if.end54.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.55) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %if.end50.i.if.end54.i_crit_edge
  %and55.i = and i32 %34, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end54.i.if.end61.i_crit_edge, label %if.then57.i

if.end54.i.if.end61.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %and58.i = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  %cond60.i = select i1 %tobool59.not.i, ptr @.str.57, ptr @.str.56
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull %cond60.i) #8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then57.i, %if.end54.i.if.end61.i_crit_edge
  %and62.i = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end61.i.if.end68.i_crit_edge, label %if.then64.i

if.end61.i.if.end68.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then64.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %and65.i = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  %cond67.i = select i1 %tobool66.not.i, ptr @.str.59, ptr @.str.58
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull %cond67.i) #8
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then64.i, %if.end61.i.if.end68.i_crit_edge
  %and69.i = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.end68.i.if.end75.i_crit_edge, label %if.then71.i

if.end68.i.if.end75.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.then71.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  %and72.i = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  %cond74.i = select i1 %tobool73.not.i, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull %cond74.i) #8
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then71.i, %if.end68.i.if.end75.i_crit_edge
  %and76.i = and i32 %34, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.end75.i.if.end82.i_crit_edge, label %if.then78.i

if.end75.i.if.end82.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then78.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  %and79.i = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  %cond81.i = select i1 %tobool80.not.i, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull %cond81.i) #8
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then78.i, %if.end75.i.if.end82.i_crit_edge
  %and83.i = and i32 %34, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end82.i.if.end86.i_crit_edge, label %if.then85.i

if.end82.i.if.end86.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.i

if.then85.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.64) #8
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then85.i, %if.end82.i.if.end86.i_crit_edge
  %and87.i = and i32 %34, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.end86.i.if.end90.i_crit_edge, label %if.then89.i

if.end86.i.if.end90.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

if.then89.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.65) #8
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then89.i, %if.end86.i.if.end90.i_crit_edge
  %and91.i = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %if.end90.i.if.end94.i_crit_edge, label %if.then93.i

if.end90.i.if.end94.i_crit_edge:                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.then93.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.66) #8
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then93.i, %if.end90.i.if.end94.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool96.not.i = icmp sgt i32 %34, -1
  br i1 %tobool96.not.i, label %if.end94.i.audit_mnt_flags.exit_crit_edge, label %if.then97.i

if.end94.i.audit_mnt_flags.exit_crit_edge:        ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit_mnt_flags.exit

if.then97.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.67) #8
  br label %audit_mnt_flags.exit

audit_mnt_flags.exit:                             ; preds = %if.then97.i, %if.end94.i.audit_mnt_flags.exit_crit_edge
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.38) #8
  br label %if.end13

if.end13:                                         ; preds = %audit_mnt_flags.exit, %if.end9.if.end13_crit_edge
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %data = getelementptr inbounds %struct.apparmor_audit_data, ptr %36, i32 0, i32 8, i32 0, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %tobool14.not = icmp eq ptr %38, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.39) #8
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %data16 = getelementptr inbounds %struct.apparmor_audit_data, ptr %40, i32 0, i32 8, i32 0, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data16, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %42) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !81, !83, !85, !86, !88, !89, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/mount.c", i32 406, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.aa_remount, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/mount.c", i32 407, i32 2}
!6 = !{ptr @__func__.aa_bind_mount, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/mount.c", i32 430, i32 2}
!8 = !{ptr @__func__.aa_mount_change_type, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/apparmor/mount.c", i32 466, i32 2}
!10 = !{ptr @__func__.aa_move_mount, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/apparmor/mount.c", i32 492, i32 2}
!12 = !{ptr @__func__.aa_new_mount, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/apparmor/mount.c", i32 529, i32 2}
!14 = !{ptr @__func__.aa_umount, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/apparmor/mount.c", i32 620, i32 2}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/apparmor/mount.c", i32 621, i32 2}
!18 = !{ptr @__func__.aa_pivotroot, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/apparmor/mount.c", i32 698, i32 2}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/apparmor/mount.c", i32 699, i32 2}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/apparmor/mount.c", i32 700, i32 2}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/apparmor/mount.c", i32 707, i32 11}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @aa_pivotroot._rs, !25, !"_rs", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @aa_pivotroot.descriptor, !25, !"descriptor", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/apparmor/mount.c", i32 711, i32 10}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../security/apparmor/mount.c", i32 732, i32 10}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../security/apparmor/mount.c", i32 380, i32 2}
!37 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/apparmor/mount.c", i32 381, i32 2}
!40 = !{ptr @__func__.path_flags, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/apparmor/mount.c", i32 294, i32 2}
!42 = !{ptr @__func__.match_mnt_path_str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/apparmor/mount.c", i32 325, i32 2}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/apparmor/mount.c", i32 326, i32 2}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/apparmor/mount.c", i32 327, i32 2}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/apparmor/mount.c", i32 354, i32 30}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/apparmor/mount.c", i32 246, i32 2}
!52 = !{ptr @__func__.do_match_mnt, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../security/apparmor/mount.c", i32 247, i32 2}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../security/apparmor/mount.c", i32 227, i32 2}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/apparmor/mount.c", i32 228, i32 2}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../security/apparmor/mount.c", i32 229, i32 2}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../security/apparmor/mount.c", i32 230, i32 2}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../security/apparmor/mount.c", i32 231, i32 2}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../security/apparmor/mount.c", i32 232, i32 2}
!67 = !{ptr @mnt_info_table, !68, !"mnt_info_table", i1 false, i1 false}
!68 = !{!"../security/apparmor/mount.c", i32 226, i32 27}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../security/apparmor/mount.c", i32 590, i32 2}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../security/apparmor/mount.c", i32 609, i32 30}
!73 = !{ptr @__func__.build_pivotroot, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../security/apparmor/mount.c", i32 650, i32 2}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__func__.aa_get_newest_label, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!88 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!92 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../security/apparmor/mount.c", i32 91, i32 24}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../security/apparmor/mount.c", i32 95, i32 24}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../security/apparmor/mount.c", i32 99, i32 24}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../security/apparmor/mount.c", i32 103, i32 24}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../security/apparmor/mount.c", i32 105, i32 24}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../security/apparmor/mount.c", i32 108, i32 24}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../security/apparmor/mount.c", i32 30, i32 24}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../security/apparmor/mount.c", i32 32, i32 24}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../security/apparmor/mount.c", i32 34, i32 24}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../security/apparmor/mount.c", i32 36, i32 24}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../security/apparmor/mount.c", i32 38, i32 24}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../security/apparmor/mount.c", i32 40, i32 24}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../security/apparmor/mount.c", i32 42, i32 24}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../security/apparmor/mount.c", i32 44, i32 24}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../security/apparmor/mount.c", i32 46, i32 24}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../security/apparmor/mount.c", i32 48, i32 24}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../security/apparmor/mount.c", i32 50, i32 24}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../security/apparmor/mount.c", i32 52, i32 41}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../security/apparmor/mount.c", i32 52, i32 53}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../security/apparmor/mount.c", i32 54, i32 24}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../security/apparmor/mount.c", i32 56, i32 24}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../security/apparmor/mount.c", i32 58, i32 24}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../security/apparmor/mount.c", i32 60, i32 41}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../security/apparmor/mount.c", i32 61, i32 6}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../security/apparmor/mount.c", i32 63, i32 41}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../security/apparmor/mount.c", i32 64, i32 6}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../security/apparmor/mount.c", i32 66, i32 41}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../security/apparmor/mount.c", i32 67, i32 6}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../security/apparmor/mount.c", i32 69, i32 41}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../security/apparmor/mount.c", i32 70, i32 6}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../security/apparmor/mount.c", i32 72, i32 24}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../security/apparmor/mount.c", i32 74, i32 24}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../security/apparmor/mount.c", i32 76, i32 24}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../security/apparmor/mount.c", i32 78, i32 24}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{!"auto-init"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"compute_mnt_perms: %agg.result"}
!175 = distinct !{!175, !"compute_mnt_perms"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"compute_mnt_perms: %agg.result"}
!178 = distinct !{!178, !"compute_mnt_perms"}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{!"branch_weights", i32 2000, i32 2002}
!181 = !{i64 2148670573, i64 2148670605, i64 2148670634, i64 2148670668, i64 2148670699, i64 2148670722}
!182 = !{i64 2148758598}
!183 = !{i64 2148673038, i64 2148673070, i64 2148673099, i64 2148673133, i64 2148673164, i64 2148673187}
!184 = !{i64 2150379687}
!185 = !{i8 0, i8 2}
!186 = !{i64 2148493641, i64 2148493646, i64 2148493659, i64 2148493703, i64 2148493737, i64 2148493758}
!187 = !{!188}
!188 = distinct !{!188, !189, !"compute_mnt_perms: %agg.result"}
!189 = distinct !{!189, !"compute_mnt_perms"}
!190 = !{i64 2149481489}
!191 = !{i64 1154556, i64 1154580, i64 1154601, i64 1154618, i64 1154635}
!192 = !{i64 2149481755}
