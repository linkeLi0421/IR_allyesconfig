; ModuleID = '/llk/IR_all_yes/security/inode.c_pt.bc'
source_filename = "../security/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+securityfs_create_file\22, \22a\22\09"
module asm "\09.weak\09__crc_securityfs_create_file\09\09\09\09"
module asm "\09.long\09__crc_securityfs_create_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_securityfs_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22securityfs_create_file\22\09\09\09\09\09"
module asm "__kstrtabns_securityfs_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+securityfs_create_dir\22, \22a\22\09"
module asm "\09.weak\09__crc_securityfs_create_dir\09\09\09\09"
module asm "\09.long\09__crc_securityfs_create_dir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_securityfs_create_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22securityfs_create_dir\22\09\09\09\09\09"
module asm "__kstrtabns_securityfs_create_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+securityfs_create_symlink\22, \22a\22\09"
module asm "\09.weak\09__crc_securityfs_create_symlink\09\09\09\09"
module asm "\09.long\09__crc_securityfs_create_symlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_securityfs_create_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22securityfs_create_symlink\22\09\09\09\09\09"
module asm "__kstrtabns_securityfs_create_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+securityfs_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_securityfs_remove\09\09\09\09"
module asm "\09.long\09__crc_securityfs_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_securityfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22securityfs_remove\22\09\09\09\09\09"
module asm "__kstrtabns_securityfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.67 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }

@__kstrtab_securityfs_create_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_securityfs_create_file = external dso_local constant [0 x i8], align 1
@__ksymtab_securityfs_create_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @securityfs_create_file to i32), ptr @__kstrtab_securityfs_create_file, ptr @__kstrtabns_securityfs_create_file }, section "___ksymtab_gpl+securityfs_create_file", align 4
@__kstrtab_securityfs_create_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_securityfs_create_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_securityfs_create_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @securityfs_create_dir to i32), ptr @__kstrtab_securityfs_create_dir, ptr @__kstrtabns_securityfs_create_dir }, section "___ksymtab_gpl+securityfs_create_dir", align 4
@__kstrtab_securityfs_create_symlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_securityfs_create_symlink = external dso_local constant [0 x i8], align 1
@__ksymtab_securityfs_create_symlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @securityfs_create_symlink to i32), ptr @__kstrtab_securityfs_create_symlink, ptr @__kstrtabns_securityfs_create_symlink }, section "___ksymtab_gpl+securityfs_create_symlink", align 4
@mount = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mount_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_securityfs_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_securityfs_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_securityfs_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @securityfs_remove to i32), ptr @__kstrtab_securityfs_remove, ptr @__kstrtabns_securityfs_remove }, section "___ksymtab_gpl+securityfs_remove", align 4
@__initcall__kmod_inode__237_350_securityfs_init1 = internal global ptr @securityfs_init, section ".initcall1.init", align 4
@securityfs_create_dentry.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inode\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"securityfs_create_dentry\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"security/inode.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"securityfs: creating file '%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.4, i32 0, ptr @securityfs_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@simple_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"securityfs\00", [21 x i8] zeroinitializer }, align 32
@securityfs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @securityfs_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@securityfs_fill_super.files = internal constant { [1 x %struct.tree_descr], [20 x i8] } { [1 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.5, ptr null, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@securityfs_super_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr @securityfs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"security\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lsm\00", [28 x i8] zeroinitializer }, align 32
@lsm_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lsm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@lsm_dentry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lsm_names = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 25, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"mount_count\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 26, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 119, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [8 x i8] c"fs_type\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 69, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 71, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"securityfs_context_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 59, i32 43 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 42, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 42, i32 45 }
@___asan_gen_.41 = private unnamed_addr constant [28 x i8] c"securityfs_super_operations\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 35, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 335, i32 49 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 345, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"lsm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 325, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"lsm_dentry\00", align 1
@___asan_gen_.54 = private constant [20 x i8] c"../security/inode.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 317, i32 23 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_inode__237_350_securityfs_init1, ptr @__ksymtab_securityfs_create_dir, ptr @__ksymtab_securityfs_create_file, ptr @__ksymtab_securityfs_create_symlink, ptr @__ksymtab_securityfs_remove, ptr @mount, ptr @mount_count, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fs_type, ptr @.str.4, ptr @securityfs_context_ops, ptr @securityfs_fill_super.files, ptr @.str.5, ptr @securityfs_super_operations, ptr @.str.6, ptr @.str.7, ptr @lsm_ops, ptr @lsm_dentry], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @securityfs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @securityfs_fill_super.files to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @securityfs_super_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsm_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsm_dentry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @securityfs_create_file(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @securityfs_create_dentry(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @securityfs_create_dentry(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops, ptr noundef %iops) unnamed_addr #0 align 64 {
entry:
  %tmp31 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %mode)
  %tobool.not = icmp ult i16 %mode, 4096
  %and2 = and i16 %mode, 4095
  %or = or i16 %and2, -32768
  %mode.addr.0 = select i1 %tobool.not, i16 %or, i16 %mode
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @securityfs_create_dentry.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@securityfs_create_dentry, %if.then7)) #6
          to label %do.end [label %if.then7], !srcloc !49

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @securityfs_create_dentry.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.3, ptr noundef %name) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %entry
  %call9 = tail call i32 @simple_pin_fs(ptr noundef nonnull @fs_type, ptr noundef nonnull @mount, ptr noundef nonnull @mount_count) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %tobool14.not = icmp eq ptr %parent, null
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @mount, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %parent.addr.0 = phi ptr [ %parent, %if.end13.if.end16_crit_edge ], [ %3, %if.then15 ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent.addr.0, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #6
  %call18 = tail call i32 @strlen(ptr noundef %name) #9
  %call19 = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %parent.addr.0, i32 noundef %call18) #6
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end16.out_crit_edge, label %if.end22

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end22:                                         ; preds = %if.end16
  %d_inode.i87 = getelementptr inbounds %struct.dentry, ptr %call19, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i87 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i87, align 8
  %cmp.i88.not = icmp eq ptr %7, null
  br i1 %cmp.i88.not, label %if.end25, label %if.end22.out1_crit_edge

if.end22.out1_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end25:                                         ; preds = %if.end22
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %call26 = tail call ptr @new_inode(ptr noundef %9) #6
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.out1_crit_edge, label %if.end29

if.end25.out1_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @get_next_ino() #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call30, ptr %i_ino, align 8
  %11 = ptrtoint ptr %call26 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %mode.addr.0, ptr %call26, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp31) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp31, ptr noundef nonnull %call26) #6
  %12 = call ptr @memcpy(ptr %i_ctime, ptr %tmp31, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp31) #6
  %13 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %14 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %i_private = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 54
  %15 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data, ptr %i_private, align 4
  %16 = and i16 %mode.addr.0, -4096
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %if.else43 [
    i16 16384, label %if.then35
    i16 -24576, label %if.then40
  ]

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %i_op = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 7
  %18 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @simple_dir_inode_operations, ptr %i_op, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 44
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @simple_dir_operations, ptr %19, align 8
  call void @inc_nlink(ptr noundef nonnull %call26) #6
  call void @inc_nlink(ptr noundef %5) #6
  br label %if.end45

if.then40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %tobool41.not = icmp eq ptr %iops, null
  %spec.select = select i1 %tobool41.not, ptr @simple_symlink_inode_operations, ptr %iops
  %i_op42 = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 7
  %21 = ptrtoint ptr %i_op42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select, ptr %i_op42, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 48
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data, ptr %22, align 4
  br label %if.end45

if.else43:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %24 = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 44
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %fops, ptr %24, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then40, %if.then35
  call void @d_instantiate(ptr noundef %call19, ptr noundef nonnull %call26) #6
  %tobool.not.i = icmp eq ptr %call19, null
  br i1 %tobool.not.i, label %if.end45.dget.exit_crit_edge, label %if.then.i

if.end45.dget.exit_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %dget.exit

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call19, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #6
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end45.dget.exit_crit_edge
  call void @up_write(ptr noundef %i_rwsem.i) #6
  br label %cleanup

out1:                                             ; preds = %if.end25.out1_crit_edge, %if.end22.out1_crit_edge
  %error.0 = phi ptr [ inttoptr (i32 -17 to ptr), %if.end22.out1_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end25.out1_crit_edge ]
  tail call void @dput(ptr noundef %call19) #6
  br label %out

out:                                              ; preds = %out1, %if.end16.out_crit_edge
  %dentry.0 = phi ptr [ %call19, %if.end16.out_crit_edge ], [ %error.0, %out1 ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #6
  tail call void @simple_release_fs(ptr noundef nonnull @mount, ptr noundef nonnull @mount_count) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %dget.exit, %if.then11
  %retval.0 = phi ptr [ %0, %if.then11 ], [ %dentry.0, %out ], [ %call19, %dget.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @securityfs_create_dir(ptr noundef %name, ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @securityfs_create_dentry(ptr noundef %name, i16 noundef zeroext 16877, ptr noundef %parent, ptr noundef null, ptr noundef null, ptr noundef null) #6
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @securityfs_create_symlink(ptr noundef %name, ptr noundef %parent, ptr noundef %target, ptr noundef %iops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %target, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @kstrdup(ptr noundef nonnull %target, i32 noundef 3264) #6
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %link.0 = phi ptr [ %call, %if.then.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  %call5 = tail call fastcc ptr @securityfs_create_dentry(ptr noundef %name, i16 noundef zeroext -24284, ptr noundef %parent, ptr noundef %link.0, ptr noundef null, ptr noundef %iops)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %link.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.then7 ], [ %call5, %if.end4.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @securityfs_remove(ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  %cmp.i = icmp ugt ptr %dentry, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #6
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %5, null
  br i1 %cmp.i.not.i, label %if.end.if.end10_crit_edge, label %simple_positive.exit

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

simple_positive.exit:                             ; preds = %if.end
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i.not, label %simple_positive.exit.if.end10_crit_edge, label %if.then4

simple_positive.exit.if.end10_crit_edge:          ; preds = %simple_positive.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %simple_positive.exit
  %8 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dentry, align 8
  %10 = and i32 %9, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %10)
  %11 = icmp eq i32 %10, 2097152
  br i1 %11, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @simple_rmdir(ptr noundef %3, ptr noundef nonnull %dentry) #6
  br label %if.end9

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @simple_unlink(ptr noundef %3, ptr noundef nonnull %dentry) #6
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  tail call void @dput(ptr noundef nonnull %dentry) #6
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %simple_positive.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i) #6
  tail call void @simple_release_fs(ptr noundef nonnull @mount, ptr noundef nonnull @mount_count) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rmdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @securityfs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call i32 @sysfs_create_mount_point(ptr noundef %0, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_filesystem(ptr noundef nonnull @fs_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %1 = load ptr, ptr @kernel_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call fastcc ptr @securityfs_create_dentry(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef nonnull @lsm_ops, ptr noundef null) #6
  store ptr %call.i, ptr @lsm_dentry, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @securityfs_init_fs_context(ptr nocapture noundef writeonly %fc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @securityfs_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @securityfs_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_single(ptr noundef %fc, ptr noundef nonnull @securityfs_fill_super) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @securityfs_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_fill_super(ptr noundef %sb, i32 noundef 1935894131, ptr noundef nonnull @securityfs_fill_super.files) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %0 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @securityfs_super_operations, ptr %s_op, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @securityfs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %2)
  %cmp = icmp eq i16 %2, -24576
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @free_inode_nonrcu(ptr noundef %inode) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lsm_read(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lsm_names to i32))
  %0 = load ptr, ptr @lsm_names, align 4
  %call = tail call i32 @strlen(ptr noundef %0) #9
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %0, i32 noundef %call) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__ksymtab_securityfs_create_file, !1, !"__ksymtab_securityfs_create_file", i1 false, i1 false}
!1 = !{!"../security/inode.c", i32 206, i32 1}
!2 = !{ptr @__ksymtab_securityfs_create_dir, !3, !"__ksymtab_securityfs_create_dir", i1 false, i1 false}
!3 = !{!"../security/inode.c", i32 232, i32 1}
!4 = !{ptr @__ksymtab_securityfs_create_symlink, !5, !"__ksymtab_securityfs_create_symlink", i1 false, i1 false}
!5 = !{!"../security/inode.c", i32 280, i32 1}
!6 = !{ptr @__ksymtab_securityfs_remove, !7, !"__ksymtab_securityfs_remove", i1 false, i1 false}
!7 = !{!"../security/inode.c", i32 314, i32 1}
!8 = !{ptr @__initcall__kmod_inode__237_350_securityfs_init1, !9, !"__initcall__kmod_inode__237_350_securityfs_init1", i1 false, i1 false}
!9 = !{!"../security/inode.c", i32 350, i32 1}
!10 = !{ptr @mount, !11, !"mount", i1 false, i1 false}
!11 = !{!"../security/inode.c", i32 25, i32 25}
!12 = !{ptr @mount_count, !13, !"mount_count", i1 false, i1 false}
!13 = !{!"../security/inode.c", i32 26, i32 12}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/inode.c", i32 119, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @securityfs_create_dentry.__UNIQUE_ID_ddebug236, !15, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/inode.c", i32 71, i32 11}
!22 = !{ptr @fs_type, !23, !"fs_type", i1 false, i1 false}
!23 = !{!"../security/inode.c", i32 69, i32 32}
!24 = !{ptr @securityfs_context_ops, !25, !"securityfs_context_ops", i1 false, i1 false}
!25 = !{!"../security/inode.c", i32 59, i32 43}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/inode.c", i32 42, i32 45}
!28 = !{ptr @securityfs_fill_super.files, !29, !"files", i1 false, i1 false}
!29 = !{!"../security/inode.c", i32 42, i32 33}
!30 = !{ptr @securityfs_super_operations, !31, !"securityfs_super_operations", i1 false, i1 false}
!31 = !{!"../security/inode.c", i32 35, i32 38}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/inode.c", i32 335, i32 49}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/inode.c", i32 345, i32 38}
!36 = !{ptr @lsm_ops, !37, !"lsm_ops", i1 false, i1 false}
!37 = !{!"../security/inode.c", i32 325, i32 37}
!38 = !{ptr @lsm_dentry, !39, !"lsm_dentry", i1 false, i1 false}
!39 = !{!"../security/inode.c", i32 317, i32 23}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148326691, i64 2148326696, i64 2148326709, i64 2148326753, i64 2148326787, i64 2148326808}
