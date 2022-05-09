; ModuleID = '/llk/IR_all_yes/fs/cifs/cifs_dfs_ref.c_pt.bc'
source_filename = "../fs/cifs/cifs_dfs_ref.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.dfs_info3_param = type { i32, i32, i32, i32, ptr, ptr, i32 }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.131, %struct.list_head, %struct.list_head, %union.anon.132 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.129 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%union.anon.131 = type { %struct.list_head }
%union.anon.132 = type { %struct.hlist_node }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.rb_root = type { ptr }
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.148 }
%union.anon.148 = type { ptr, [124 x i8] }

@cifs_dfs_automount_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cifs_dfs_automount_list, ptr @cifs_dfs_automount_list }, [24 x i8] zeroinitializer }, align 32
@cifs_dfs_automount_task = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @cifs_dfs_automount_task, i64 4), ptr getelementptr (i8, ptr @cifs_dfs_automount_task, i64 4) }, ptr @cifs_dfs_expire_automounts, %struct.lockdep_map { ptr @cifs_dfs_automount_task, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.19, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_compose_mount_options.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/cifs/cifs_dfs_ref.c\00", [41 x i8] zeroinitializer }, align 32
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_compose_mount_options._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cifs_compose_mount_options.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cifs_compose_mount_options\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"CIFS: %s: %s: Failed to resolve server part of %s to IP: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sep=\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cruid=\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unc=\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ip=\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"prefixpath=\00", [20 x i8] zeroinitializer }, align 32
@cifs_dfs_d_automount._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_d_automount.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cifs_dfs_d_automount\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CIFS: %s: in %s\0A\00", [47 x i8] zeroinitializer }, align 32
@cifs_dfs_d_automount._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_d_automount.descriptor.13 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str, ptr @.str.14, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CIFS: %s: leaving %s [automount failed]\0A\00", [55 x i8] zeroinitializer }, align 32
@cifs_dfs_d_automount._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_d_automount.descriptor.16 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str, ptr @.str.17, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: leaving %s [ok]\0A\00", [37 x i8] zeroinitializer }, align 32
@cifs_dfs_referral_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(cifs_dfs_automount_task).work\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/cifs/cifs_dfs_ref.c:32\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\\\00", [30 x i8] zeroinitializer }, align 32
@cifs_dfs_do_automount._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_do_automount.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str, ptr @.str.11, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cifs_dfs_do_automount\00", [42 x i8] zeroinitializer }, align 32
@cifs_dfs_do_automount._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_do_automount.descriptor.23 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str, ptr @.str.24, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIFS: %s: %s: full_path: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@cifs_dfs_do_automount._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_do_automount.descriptor.26 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str, ptr @.str.27, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CIFS: %s: %s: cifs_dfs_do_mount:%s , mnt:%p\0A\00", [51 x i8] zeroinitializer }, align 32
@cifs_dfs_do_automount._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_do_automount.descriptor.29 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str, ptr @.str.30, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CIFS: %s: leaving %s\0A\00", [42 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@cifs_fs_type = external dso_local global %struct.file_system_type, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"cifs_dfs_automount_list\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 28, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"cifs_dfs_automount_task\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 154, i32 7 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 181, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 201, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 214, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 218, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 222, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 226, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 357, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 361, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 369, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 31, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 72, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 314, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 338, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 341, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [26 x i8] c"../fs/cifs/cifs_dfs_ref.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 346, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @cifs_dfs_automount_list, ptr @cifs_dfs_automount_task, ptr @.str, ptr @cifs_compose_mount_options._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cifs_dfs_d_automount._rs, ptr @.str.10, ptr @.str.11, ptr @cifs_dfs_d_automount._rs.12, ptr @.str.14, ptr @cifs_dfs_d_automount._rs.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @cifs_dfs_do_automount._rs, ptr @.str.21, ptr @cifs_dfs_do_automount._rs.22, ptr @.str.24, ptr @cifs_dfs_do_automount._rs.25, ptr @.str.27, ptr @cifs_dfs_do_automount._rs.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_automount_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_automount_task to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_compose_mount_options._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_d_automount._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_d_automount._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_d_automount._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_do_automount._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_do_automount._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_do_automount._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_do_automount._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_dfs_release_automount_timer() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @cifs_dfs_automount_list, align 4
  %cmp.i.not = icmp eq ptr %0, @cifs_dfs_automount_list
  br i1 %cmp.i.not, label %do.end7, label %do.body4, !prof !70

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/cifs/cifs_dfs_ref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 47, 0\0A.popsection", ""() #7, !srcloc !71
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @cifs_dfs_automount_task) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_compose_mount_options(ptr noundef %sb_mountdata, ptr noundef %fullpath, ptr noundef readonly %ref, ptr noundef writeonly %devname) local_unnamed_addr #0 align 64 {
entry:
  %srvIP = alloca ptr, align 4
  %sep = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srvIP) #7
  %0 = ptrtoint ptr %srvIP to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %srvIP, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sep) #7
  %1 = ptrtoint ptr %sep to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 44, ptr %sep, align 1
  %cmp = icmp eq ptr %sb_mountdata, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %ref, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %node_name = getelementptr inbounds %struct.dfs_info3_param, ptr %ref, i32 0, i32 5
  %2 = ptrtoint ptr %node_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node_name, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then1.land.rhs_crit_edge, label %lor.rhs

if.then1.land.rhs_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

lor.rhs:                                          ; preds = %if.then1
  %path_consumed = getelementptr inbounds %struct.dfs_info3_param, ptr %ref, i32 0, i32 1
  %4 = ptrtoint ptr %path_consumed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %path_consumed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %lor.rhs.land.rhs_crit_edge, label %if.end44

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %if.then1.land.rhs_crit_edge
  %.b262 = load i1, ptr @cifs_compose_mount_options.__already_done, align 1
  br i1 %.b262, label %land.rhs.cleanup_crit_edge, label %if.then11, !prof !70

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cifs_compose_mount_options.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end44:                                         ; preds = %lor.rhs
  %call45 = tail call i32 @strlen(ptr noundef %fullpath) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call45, i32 %5)
  %tobool47.not = icmp eq i32 %call45, %5
  br i1 %tobool47.not, label %if.end44.if.end57_crit_edge, label %if.then48

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then48:                                        ; preds = %if.end44
  %add.ptr = getelementptr i8, ptr %fullpath, i32 %5
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.then48.if.end57_crit_edge [
    i8 47, label %if.then48.if.then55_crit_edge
    i8 92, label %if.then48.if.then55_crit_edge269
  ]

if.then48.if.then55_crit_edge269:                 ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.then48.if.then55_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.then48.if.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then55:                                        ; preds = %if.then48.if.then55_crit_edge, %if.then48.if.then55_crit_edge269
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then48.if.end57_crit_edge, %if.end44.if.end57_crit_edge
  %prepath.0 = phi ptr [ %incdec.ptr, %if.then55 ], [ null, %if.end44.if.end57_crit_edge ], [ %add.ptr, %if.then48.if.end57_crit_edge ]
  %call59 = tail call fastcc ptr @cifs_build_devname(ptr noundef nonnull %3, ptr noundef %prepath.0)
  %cmp.i = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then61, label %if.end57.if.end69_crit_edge

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call59 to i32
  br label %compose_mount_options_err

if.else:                                          ; preds = %if.end
  %call64 = tail call fastcc ptr @cifs_build_devname(ptr noundef %fullpath, ptr noundef null)
  %cmp.i264 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i264, label %if.then66, label %if.else.if.end69_crit_edge

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call64 to i32
  br label %compose_mount_options_err

if.end69:                                         ; preds = %if.else.if.end69_crit_edge, %if.end57.if.end69_crit_edge
  %name.0 = phi ptr [ %call59, %if.end57.if.end69_crit_edge ], [ %call64, %if.else.if.end69_crit_edge ]
  %call70 = call i32 @dns_resolve_server_name_to_ip(ptr noundef %name.0, ptr noundef nonnull %srvIP, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.body75, label %if.end101

do.body75:                                        ; preds = %if.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %do.body75.compose_mount_options_err_crit_edge, label %do.body78

do.body75.compose_mount_options_err_crit_edge:    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %compose_mount_options_err

do.body78:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_compose_mount_options.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_compose_mount_options, %land.lhs.true)) #7
          to label %compose_mount_options_err [label %land.lhs.true], !srcloc !72

land.lhs.true:                                    ; preds = %do.body78
  %call89 = call i32 @___ratelimit(ptr noundef nonnull @cifs_compose_mount_options._rs, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %land.lhs.true.compose_mount_options_err_crit_edge, label %if.then91

land.lhs.true.compose_mount_options_err_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %compose_mount_options_err

if.then91:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_compose_mount_options.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef %name.0, i32 noundef %call70) #7
  br label %compose_mount_options_err

if.end101:                                        ; preds = %if.end69
  %call102 = call i32 @strlen(ptr noundef nonnull %sb_mountdata) #10
  %add = add i32 %call102, 48
  %add104 = add i32 %call102, 53
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add104, i32 noundef 3520) #11
  %cmp106 = icmp eq ptr %call9.i.i, null
  br i1 %cmp106, label %if.end101.compose_mount_options_err_crit_edge, label %if.end109

if.end101.compose_mount_options_err_crit_edge:    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %compose_mount_options_err

if.end109:                                        ; preds = %if.end101
  %call110 = call i32 @strncmp(ptr noundef nonnull %sb_mountdata, ptr noundef nonnull dereferenceable(5) @.str.5, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.end109.if.end116_crit_edge

if.end109.if.end116_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %sb_mountdata, i32 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = ptrtoint ptr %sep to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %sep, align 1
  %call114 = call ptr @strncpy(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %sb_mountdata, i32 noundef 5)
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.end109.if.end116_crit_edge
  %off.0 = phi i32 [ 5, %if.then113 ], [ 0, %if.end109.if.end116_crit_edge ]
  %15 = ptrtoint ptr %sep to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sep, align 1
  %conv119 = zext i8 %16 to i32
  br label %do.body117

do.body117:                                       ; preds = %do.cond161.do.body117_crit_edge, %if.end116
  %off.1 = phi i32 [ %off.0, %if.end116 ], [ %off.2, %do.cond161.do.body117_crit_edge ]
  %add.ptr118 = getelementptr i8, ptr %sb_mountdata, i32 %off.1
  %call120 = call ptr @strchr(ptr noundef %add.ptr118, i32 noundef %conv119)
  %cmp121 = icmp eq ptr %call120, null
  br i1 %cmp121, label %if.then123, label %if.else126

if.then123:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  %call125 = call i32 @strlen(ptr noundef %add.ptr118) #10
  br label %if.end129

if.else126:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast = ptrtoint ptr %call120 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr118 to i32
  %sub.ptr.sub = sub i32 1, %sub.ptr.rhs.cast
  %add128 = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  br label %if.end129

if.end129:                                        ; preds = %if.else126, %if.then123
  %noff.0 = phi i32 [ %call125, %if.then123 ], [ %add128, %if.else126 ]
  %call131 = call i32 @strncasecmp(ptr noundef %add.ptr118, ptr noundef nonnull @.str.6, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.end129.do.cond161_crit_edge, label %if.end136

if.end129.do.cond161_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond161

if.end136:                                        ; preds = %if.end129
  %call138 = call i32 @strncasecmp(ptr noundef %add.ptr118, ptr noundef nonnull @.str.7, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %if.end136.do.cond161_crit_edge, label %if.end143

if.end136.do.cond161_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond161

if.end143:                                        ; preds = %if.end136
  %call145 = call i32 @strncasecmp(ptr noundef %add.ptr118, ptr noundef nonnull @.str.8, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %if.end143.do.cond161_crit_edge, label %if.end150

if.end143.do.cond161_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond161

if.end150:                                        ; preds = %if.end143
  %call152 = call i32 @strncasecmp(ptr noundef %add.ptr118, ptr noundef nonnull @.str.9, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %if.end150.do.cond161_crit_edge, label %if.end157

if.end150.do.cond161_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond161

if.end157:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %call159 = call ptr @strncat(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr118, i32 noundef %noff.0)
  br label %do.cond161

do.cond161:                                       ; preds = %if.end157, %if.end150.do.cond161_crit_edge, %if.end143.do.cond161_crit_edge, %if.end136.do.cond161_crit_edge, %if.end129.do.cond161_crit_edge
  %off.2 = add i32 %noff.0, %off.1
  br i1 %cmp121, label %do.end163, label %do.cond161.do.body117_crit_edge

do.cond161.do.body117_crit_edge:                  ; preds = %do.cond161
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body117

do.end163:                                        ; preds = %do.cond161
  %add.ptr164 = getelementptr i8, ptr %sb_mountdata, i32 %off.2
  %call165 = call ptr @strcat(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr164)
  %arrayidx166 = getelementptr i8, ptr %call9.i.i, i32 %add
  %17 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx166, align 1
  %call167 = call i32 @strlen(ptr noundef nonnull %call9.i.i) #10
  %sub168 = add i32 %call167, -1
  %arrayidx169 = getelementptr i8, ptr %call9.i.i, i32 %sub168
  %18 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx169, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %16)
  %cmp172.not = icmp eq i8 %19, %16
  br i1 %cmp172.not, label %do.end163.if.end176_crit_edge, label %if.then174

do.end163.if.end176_crit_edge:                    ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.then174:                                       ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #9
  %call175 = call ptr @strncat(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %sep, i32 noundef 1)
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %do.end163.if.end176_crit_edge
  %strlen = call i32 @strlen(ptr nonnull %call9.i.i) #10
  %endptr = getelementptr i8, ptr %call9.i.i, i32 %strlen
  %20 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 1768963328, ptr %endptr, align 1
  %21 = ptrtoint ptr %srvIP to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %srvIP, align 4
  %call178 = call ptr @strcat(ptr noundef nonnull %call9.i.i, ptr noundef %22)
  %tobool179.not = icmp eq ptr %devname, null
  br i1 %tobool179.not, label %if.else181, label %if.then180

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %devname to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %name.0, ptr %devname, align 4
  br label %compose_mount_options_out

if.else181:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef %name.0) #7
  br label %compose_mount_options_out

compose_mount_options_out:                        ; preds = %compose_mount_options_err, %if.else181, %if.then180
  %mountdata.0 = phi ptr [ %26, %compose_mount_options_err ], [ %call9.i.i, %if.then180 ], [ %call9.i.i, %if.else181 ]
  %24 = ptrtoint ptr %srvIP to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %srvIP, align 4
  call void @kfree(ptr noundef %25) #7
  br label %cleanup

compose_mount_options_err:                        ; preds = %if.end101.compose_mount_options_err_crit_edge, %if.then91, %land.lhs.true.compose_mount_options_err_crit_edge, %do.body78, %do.body75.compose_mount_options_err_crit_edge, %if.then66, %if.then61
  %name.1 = phi ptr [ null, %if.then61 ], [ %name.0, %if.then91 ], [ %name.0, %land.lhs.true.compose_mount_options_err_crit_edge ], [ %name.0, %do.body75.compose_mount_options_err_crit_edge ], [ null, %if.then66 ], [ %name.0, %if.end101.compose_mount_options_err_crit_edge ], [ %name.0, %do.body78 ]
  %rc.0 = phi i32 [ %9, %if.then61 ], [ %call70, %if.then91 ], [ %call70, %land.lhs.true.compose_mount_options_err_crit_edge ], [ %call70, %do.body75.compose_mount_options_err_crit_edge ], [ %10, %if.then66 ], [ -12, %if.end101.compose_mount_options_err_crit_edge ], [ %call70, %do.body78 ]
  call void @kfree(ptr noundef null) #7
  %26 = inttoptr i32 %rc.0 to ptr
  call void @kfree(ptr noundef %name.1) #7
  br label %compose_mount_options_out

cleanup:                                          ; preds = %compose_mount_options_out, %if.then11, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %mountdata.0, %compose_mount_options_out ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.rhs.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sep) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srvIP) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cifs_build_devname(ptr nocapture noundef readonly %nodename, ptr noundef readonly %prepath) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strspn(ptr noundef %nodename, ptr noundef nonnull @.str.20)
  %add.ptr = getelementptr i8, ptr %nodename, i32 %call
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strlen(ptr noundef %add.ptr) #10
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %call2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %unclen.0 = phi i32 [ %call2, %if.end ], [ %dec, %while.cond.while.cond_crit_edge ]
  %add.ptr3.pn = phi ptr [ %add.ptr3, %if.end ], [ %pos.0, %while.cond.while.cond_crit_edge ]
  %pos.0 = getelementptr i8, ptr %add.ptr3.pn, i32 -1
  %2 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pos.0, align 1
  %cmp = icmp eq i8 %3, 92
  %dec = add i32 %unclen.0, -1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tobool6.not = icmp eq ptr %prepath, null
  br i1 %tobool6.not, label %while.end.if.end8.i_crit_edge, label %cond.true

while.end.if.end8.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

cond.true:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @strlen(ptr noundef nonnull %prepath) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %cond.true, %while.end.if.end8.i_crit_edge
  %cond = phi i32 [ %call7, %cond.true ], [ 0, %while.end.if.end8.i_crit_edge ]
  %add8 = add i32 %unclen.0, 3
  %add9 = add i32 %add8, %cond
  %add10 = add i32 %add9, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 3264) #11
  %tobool12.not = icmp eq ptr %call9.i, null
  br i1 %tobool12.not, label %if.end8.i.cleanup_crit_edge, label %if.end15

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end8.i
  %4 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 47, ptr %call9.i, align 128
  %incdec.ptr16 = getelementptr i8, ptr %call9.i, i32 1
  %5 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 47, ptr %incdec.ptr16, align 1
  %incdec.ptr17 = getelementptr i8, ptr %call9.i, i32 2
  %6 = call ptr @memcpy(ptr %incdec.ptr17, ptr %add.ptr, i32 %unclen.0)
  %add.ptr18 = getelementptr i8, ptr %incdec.ptr17, i32 %unclen.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool19.not = icmp eq i32 %cond, 0
  br i1 %tobool19.not, label %if.end15.if.end23_crit_edge, label %if.then20

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 47, ptr %add.ptr18, align 1
  %incdec.ptr21 = getelementptr i8, ptr %add.ptr18, i32 1
  %8 = call ptr @memcpy(ptr %incdec.ptr21, ptr %prepath, i32 %cond)
  %add.ptr22 = getelementptr i8, ptr %incdec.ptr21, i32 %cond
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end15.if.end23_crit_edge
  %pos.1 = phi ptr [ %add.ptr22, %if.then20 ], [ %add.ptr18, %if.end15.if.end23_crit_edge ]
  %9 = ptrtoint ptr %pos.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pos.1, align 1
  %call5.i = tail call ptr @strchr(ptr noundef nonnull %call9.i, i32 noundef 92) #7
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %if.end23.cleanup_crit_edge, label %if.end23.while.body.i_crit_edge

if.end23.while.body.i_crit_edge:                  ; preds = %if.end23
  br label %while.body.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end23.while.body.i_crit_edge
  %call7.i56 = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %if.end23.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %call7.i56 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 47, ptr %call7.i56, align 1
  %call.i = tail call ptr @strchr(ptr noundef nonnull %call7.i56, i32 noundef 92) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ], [ %call9.i, %if.end23.cleanup_crit_edge ], [ %call9.i, %while.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dns_resolve_server_name_to_ip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_dfs_d_automount(ptr nocapture noundef readonly %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_d_automount.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_d_automount, %land.lhs.true)) #7
          to label %do.end13 [label %land.lhs.true], !srcloc !72

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_d_automount._rs, ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_d_automount.descriptor, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dentry, align 4
  %call14 = tail call fastcc ptr @cifs_dfs_do_automount(ptr noundef %2)
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body18, label %if.end47

do.body18:                                        ; preds = %do.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %3 = load i32, ptr @cifsFYI, align 4
  %and19 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.body22

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_d_automount.descriptor.13, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_d_automount, %land.lhs.true34)) #7
          to label %cleanup [label %land.lhs.true34], !srcloc !72

land.lhs.true34:                                  ; preds = %do.body22
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_d_automount._rs.12, ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.cleanup_crit_edge, label %if.then37

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_d_automount.descriptor.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end47:                                         ; preds = %do.end13
  %call48 = tail call ptr @mntget(ptr noundef %call14) #7
  tail call void @mnt_set_expiry(ptr noundef %call14, ptr noundef nonnull @cifs_dfs_automount_list) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef nonnull @cifs_dfs_automount_task, i32 noundef 50000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and52 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end47.cleanup_crit_edge, label %do.body55

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_d_automount.descriptor.16, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_d_automount, %land.lhs.true67)) #7
          to label %cleanup [label %land.lhs.true67], !srcloc !72

land.lhs.true67:                                  ; preds = %do.body55
  %call68 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_d_automount._rs.15, ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.cleanup_crit_edge, label %if.then70

land.lhs.true67.cleanup_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then70:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_d_automount.descriptor.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %land.lhs.true67.cleanup_crit_edge, %do.body55, %if.end47.cleanup_crit_edge, %if.then37, %land.lhs.true34.cleanup_crit_edge, %do.body22, %do.body18.cleanup_crit_edge
  ret ptr %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cifs_dfs_do_automount(ptr noundef %mntpt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %do.body2

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_do_automount.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_do_automount, %land.lhs.true)) #7
          to label %do.body14 [label %land.lhs.true], !srcloc !72

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_do_automount._rs, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.body14_crit_edge, label %if.then8

land.lhs.true.do.body14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_do_automount.descriptor, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21) #7
  br label %do.body14

do.body14:                                        ; preds = %if.then8, %land.lhs.true.do.body14_crit_edge, %do.body2, %entry.do.body14_crit_edge
  %d_parent = getelementptr inbounds %struct.dentry, ptr %mntpt, i32 0, i32 3
  %1 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_parent, align 8
  %cmp = icmp eq ptr %2, %mntpt
  br i1 %cmp, label %do.body22, label %do.end30, !prof !73

do.body22:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/cifs/cifs_dfs_ref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 315, 0\0A.popsection", ""() #7, !srcloc !74
  unreachable

do.end30:                                         ; preds = %do.body14
  %d_sb = getelementptr inbounds %struct.dentry, ptr %mntpt, i32 0, i32 9
  %3 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mnt_cifs_flags, align 4
  %and32 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end36, label %do.end30.do.body105_crit_edge

do.end30.do.body105_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

if.end36:                                         ; preds = %do.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %9 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3264) #7
  %call38 = tail call ptr @build_path_from_dentry_optional_prefix(ptr noundef %mntpt, ptr noundef %call.i, i1 noundef zeroext true) #7
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end36.free_full_path_crit_edge, label %if.end42

if.end36.free_full_path_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_full_path

if.end42:                                         ; preds = %if.end36
  %call5.i = tail call ptr @strchr(ptr noundef %call38, i32 noundef 47) #7
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %if.end42.convert_delimiter.exit_crit_edge, label %if.end42.while.body.i_crit_edge

if.end42.while.body.i_crit_edge:                  ; preds = %if.end42
  br label %while.body.i

if.end42.convert_delimiter.exit_crit_edge:        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_delimiter.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end42.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i155, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %if.end42.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 92, ptr %call7.i, align 1
  %call.i155 = tail call ptr @strchr(ptr noundef nonnull %call7.i, i32 noundef 47) #7
  %tobool.not.i = icmp eq ptr %call.i155, null
  br i1 %tobool.not.i, label %while.body.i.convert_delimiter.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.convert_delimiter.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_delimiter.exit

convert_delimiter.exit:                           ; preds = %while.body.i.convert_delimiter.exit_crit_edge, %if.end42.convert_delimiter.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and45 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %convert_delimiter.exit.do.end72_crit_edge, label %do.body48

convert_delimiter.exit.do.end72_crit_edge:        ; preds = %convert_delimiter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

do.body48:                                        ; preds = %convert_delimiter.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_do_automount.descriptor.23, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_do_automount, %land.lhs.true60)) #7
          to label %do.end72 [label %land.lhs.true60], !srcloc !72

land.lhs.true60:                                  ; preds = %do.body48
  %call61 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_do_automount._rs.22, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true60.do.end72_crit_edge, label %if.then63

land.lhs.true60.do.end72_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_do_automount.descriptor.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, ptr noundef %call38) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then63, %land.lhs.true60.do.end72_crit_edge, %do.body48, %convert_delimiter.exit.do.end72_crit_edge
  %call.i156 = tail call noalias ptr @kstrdup(ptr noundef %call38, i32 noundef 3264) #7
  %tobool.not.i157 = icmp eq ptr %call.i156, null
  br i1 %tobool.not.i157, label %do.end72.cifs_dfs_do_mount.exit_crit_edge, label %if.end.i

do.end72.cifs_dfs_do_mount.exit_crit_edge:        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cifs_dfs_do_mount.exit

if.end.i:                                         ; preds = %do.end72
  %call5.i.i = tail call ptr @strchr(ptr noundef nonnull %call.i156, i32 noundef 92) #7
  %tobool.not6.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not6.i.i, label %if.end.i.convert_delimiter.exit.i_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.convert_delimiter.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_delimiter.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %call7.i.i = phi ptr [ %call.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call5.i.i, %if.end.i.while.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 47, ptr %call7.i.i, align 1
  %call.i.i = tail call ptr @strchr(ptr noundef nonnull %call7.i.i, i32 noundef 92) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.body.i.i.convert_delimiter.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.convert_delimiter.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %convert_delimiter.exit.i

convert_delimiter.exit.i:                         ; preds = %while.body.i.i.convert_delimiter.exit.i_crit_edge, %if.end.i.convert_delimiter.exit.i_crit_edge
  %ctx.i = getelementptr inbounds %struct.cifs_sb_info, ptr %6, i32 0, i32 4
  %13 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx.i, align 4
  %mount_options.i = getelementptr inbounds %struct.smb3_fs_context, ptr %14, i32 0, i32 61
  %15 = ptrtoint ptr %mount_options.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mount_options.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call38, i32 1
  %call2.i = tail call ptr @cifs_compose_mount_options(ptr noundef %16, ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %convert_delimiter.exit.i.cleanup.sink.split.i_crit_edge, label %if.end5.i

convert_delimiter.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %convert_delimiter.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end5.i:                                        ; preds = %convert_delimiter.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call ptr @vfs_submount(ptr noundef %mntpt, ptr noundef nonnull @cifs_fs_type, ptr noundef nonnull %call.i156, ptr noundef %call2.i) #7
  tail call void @kfree(ptr noundef %call2.i) #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end5.i, %convert_delimiter.exit.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi ptr [ %call6.i, %if.end5.i ], [ %call2.i, %convert_delimiter.exit.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i156) #7
  br label %cifs_dfs_do_mount.exit

cifs_dfs_do_mount.exit:                           ; preds = %cleanup.sink.split.i, %do.end72.cifs_dfs_do_mount.exit_crit_edge
  %retval.0.i158 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end72.cifs_dfs_do_mount.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %17 = load i32, ptr @cifsFYI, align 4
  %and76 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %cifs_dfs_do_mount.exit.free_full_path_crit_edge, label %do.body79

cifs_dfs_do_mount.exit.free_full_path_crit_edge:  ; preds = %cifs_dfs_do_mount.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_full_path

do.body79:                                        ; preds = %cifs_dfs_do_mount.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_do_automount.descriptor.26, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_do_automount, %land.lhs.true91)) #7
          to label %free_full_path [label %land.lhs.true91], !srcloc !72

land.lhs.true91:                                  ; preds = %do.body79
  %call92 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_do_automount._rs.25, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %land.lhs.true91.free_full_path_crit_edge, label %if.then94

land.lhs.true91.free_full_path_crit_edge:         ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_full_path

if.then94:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %call38, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_do_automount.descriptor.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, ptr noundef %add.ptr, ptr noundef %retval.0.i158) #7
  br label %free_full_path

free_full_path:                                   ; preds = %if.then94, %land.lhs.true91.free_full_path_crit_edge, %do.body79, %cifs_dfs_do_mount.exit.free_full_path_crit_edge, %if.end36.free_full_path_crit_edge
  %mnt.0 = phi ptr [ %retval.0.i158, %if.then94 ], [ %retval.0.i158, %land.lhs.true91.free_full_path_crit_edge ], [ %retval.0.i158, %cifs_dfs_do_mount.exit.free_full_path_crit_edge ], [ %call38, %if.end36.free_full_path_crit_edge ], [ %retval.0.i158, %do.body79 ]
  %tobool.not.i159 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i159, label %free_full_path.do.body105_crit_edge, label %if.then.i

free_full_path.do.body105_crit_edge:              ; preds = %free_full_path
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

if.then.i:                                        ; preds = %free_full_path
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %18 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef nonnull %call.i) #7
  br label %do.body105

do.body105:                                       ; preds = %if.then.i, %free_full_path.do.body105_crit_edge, %do.end30.do.body105_crit_edge
  %mnt.1 = phi ptr [ inttoptr (i32 -66 to ptr), %do.end30.do.body105_crit_edge ], [ %mnt.0, %free_full_path.do.body105_crit_edge ], [ %mnt.0, %if.then.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %19 = load i32, ptr @cifsFYI, align 4
  %and106 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body105.do.end133_crit_edge, label %do.body109

do.body105.do.end133_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133

do.body109:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_do_automount.descriptor.29, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_do_automount, %land.lhs.true121)) #7
          to label %do.end133 [label %land.lhs.true121], !srcloc !72

land.lhs.true121:                                 ; preds = %do.body109
  %call122 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_do_automount._rs.28, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.lhs.true121.do.end133_crit_edge, label %if.then124

land.lhs.true121.do.end133_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133

if.then124:                                       ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_do_automount.descriptor.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21) #7
  br label %do.end133

do.end133:                                        ; preds = %if.then124, %land.lhs.true121.do.end133_crit_edge, %do.body109, %do.body105.do.end133_crit_edge
  ret ptr %mnt.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_set_expiry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_dfs_expire_automounts(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mark_mounts_for_expiry(ptr noundef nonnull @cifs_dfs_automount_list) #7
  %0 = load volatile ptr, ptr @cifs_dfs_automount_list, align 4
  %cmp.i.not = icmp eq ptr %0, @cifs_dfs_automount_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef nonnull @cifs_dfs_automount_task, i32 noundef 50000) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_mounts_for_expiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_path_from_dentry_optional_prefix(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_submount(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 154, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 181, i32 3}
!5 = !{ptr @cifs_compose_mount_options._rs, !4, !"_rs", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cifs_compose_mount_options.descriptor, !4, !"descriptor", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 201, i32 28}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 214, i32 39}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 218, i32 39}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 222, i32 39}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 226, i32 39}
!20 = !{ptr @cifs_dfs_d_automount._rs, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 357, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cifs_dfs_d_automount.descriptor, !21, !"descriptor", i1 false, i1 false}
!25 = !{ptr @cifs_dfs_d_automount._rs.12, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 361, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cifs_dfs_d_automount.descriptor.13, !26, !"descriptor", i1 false, i1 false}
!29 = !{ptr @cifs_dfs_d_automount._rs.15, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 369, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cifs_dfs_d_automount.descriptor.16, !30, !"descriptor", i1 false, i1 false}
!33 = !{ptr @cifs_dfs_referral_inode_operations, !34, !"cifs_dfs_referral_inode_operations", i1 false, i1 false}
!34 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 373, i32 31}
!35 = !{ptr @cifs_dfs_automount_list, !36, !"cifs_dfs_automount_list", i1 false, i1 false}
!36 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 28, i32 8}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 31, i32 8}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cifs_dfs_automount_task, !38, !"cifs_dfs_automount_task", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 72, i32 31}
!43 = !{ptr @cifs_dfs_do_automount._rs, !44, !"_rs", i1 false, i1 false}
!44 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 314, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cifs_dfs_do_automount.descriptor, !44, !"descriptor", i1 false, i1 false}
!47 = !{ptr @cifs_dfs_do_automount._rs.22, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 338, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cifs_dfs_do_automount.descriptor.23, !48, !"descriptor", i1 false, i1 false}
!51 = !{ptr @cifs_dfs_do_automount._rs.25, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 341, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cifs_dfs_do_automount.descriptor.26, !52, !"descriptor", i1 false, i1 false}
!55 = !{ptr @cifs_dfs_do_automount._rs.28, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 346, i32 2}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cifs_dfs_do_automount.descriptor.29, !56, !"descriptor", i1 false, i1 false}
!59 = distinct !{null, !60, !"cifs_dfs_mountpoint_expiry_timeout", i1 false, i1 false}
!60 = !{!"../fs/cifs/cifs_dfs_ref.c", i32 33, i32 12}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2159069605, i64 2159070091, i64 2159069642, i64 2159069698, i64 2159069732, i64 2159069756, i64 2159069797, i64 2159069818, i64 2159069846, i64 2159069880}
!72 = !{i64 2148891692, i64 2148891697, i64 2148891710, i64 2148891754, i64 2148891788, i64 2148891809}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2159108140, i64 2159108627, i64 2159108177, i64 2159108233, i64 2159108267, i64 2159108291, i64 2159108332, i64 2159108353, i64 2159108381, i64 2159108415}
