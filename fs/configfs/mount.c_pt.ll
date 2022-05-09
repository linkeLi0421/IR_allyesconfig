; ModuleID = '/llk/IR_all_yes/fs/configfs/mount.c_pt.bc'
source_filename = "../fs/configfs/mount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.configfs_dirent = type { %struct.atomic_t, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, i16, ptr, ptr, i32, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.58, %struct.list_head, %struct.list_head, %union.anon.59 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.58 = type { %struct.list_head }
%union.anon.59 = type { %struct.hlist_node }

@configfs_root_group = internal global { %struct.config_group, [48 x i8] } { %struct.config_group { %struct.config_item { ptr getelementptr (i8, ptr @configfs_root_group, i64 4), [20 x i8] c"root\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias242 = internal constant [27 x i8] c"configfs.alias=fs-configfs\00", section ".modinfo", align 1
@configfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.2, i32 0, ptr @configfs_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@configfs_mount = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@configfs_mnt_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@configfs_dir_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author243 = internal constant [23 x i8] c"configfs.author=Oracle\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [35 x i8] c"configfs.file=fs/configfs/configfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [21 x i8] c"configfs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version246 = internal constant [23 x i8] c"configfs.version=0.0.2\00", section ".modinfo", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"configfs\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.2, ptr @.str.3 }, section "__modver", align 4
@__UNIQUE_ID_description247 = internal constant [91 x i8] c"configfs.description=Simple RAM filesystem for user driven kernel subsystem configuration.\00", section ".modinfo", align 1
@__initcall__kmod_configfs__248_177_configfs_init1 = internal global ptr @configfs_init, section ".initcall1.init", align 4
@__exitcall_configfs_exit = internal global ptr @configfs_exit, section ".exitcall.exit", align 4
@configfs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @configfs_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@configfs_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr @configfs_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@configfs_root = internal global { %struct.configfs_dirent, [40 x i8] } { %struct.configfs_dirent { %struct.atomic_t zeroinitializer, i32 0, %struct.list_head { ptr getelementptr (i8, ptr @configfs_root, i64 8), ptr getelementptr (i8, ptr @configfs_root, i64 8) }, %struct.list_head { ptr getelementptr (i8, ptr @configfs_root, i64 16), ptr getelementptr (i8, ptr @configfs_root, i64 16) }, i32 0, ptr @configfs_root_group, i32 1, i16 0, ptr null, ptr null, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@configfs_root_inode_operations = external dso_local constant %struct.inode_operations, align 128
@configfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@configfs_fill_super.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"configfs_fill_super\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/configfs/mount.c\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get root inode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"configfs: could not get root inode\0A\00", [60 x i8] zeroinitializer }, align 32
@configfs_fill_super.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: could not get root dentry!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"configfs: %s: could not get root dentry!\0A\00", [54 x i8] zeroinitializer }, align 32
@configfs_dentry_ops = external dso_local constant %struct.dentry_operations, align 128
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"configfs_dir_cache\00", [45 x i8] zeroinitializer }, align 32
@configfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013configfs: Unable to register filesystem!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"configfs_init\00", [18 x i8] zeroinitializer }, align 32
@configfs_init._entry_ptr = internal global ptr @configfs_init._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"configfs_root_group\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 43, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"configfs_fs_type\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 114, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"configfs_mount\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 25, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"configfs_mnt_count\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 27, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 167, i32 40 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"configfs_dir_cachep\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 26, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 174, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"configfs_context_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 104, i32 43 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"configfs_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 37, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"configfs_root\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 55, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 82, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 88, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 139, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [23 x i8] c"../fs/configfs/mount.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 155, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_version246, ptr @__exitcall_configfs_exit, ptr @__initcall__kmod_configfs__248_177_configfs_init1, ptr @__modver_attr, ptr @configfs_exit, ptr @configfs_init._entry, ptr @configfs_init._entry_ptr, ptr @configfs_root_group, ptr @configfs_fs_type, ptr @configfs_mount, ptr @configfs_mnt_count, ptr @.str, ptr @configfs_dir_cachep, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @configfs_context_ops, ptr @configfs_ops, ptr @configfs_root, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_root_group to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_mount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_mnt_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_dir_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_root to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @configfs_is_root(ptr noundef readnone %item) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %item, @configfs_root_group
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @configfs_pin_fs() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_pin_fs(ptr noundef nonnull @configfs_fs_type, ptr noundef nonnull @configfs_mount, ptr noundef nonnull @configfs_mnt_count) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = inttoptr i32 %call to ptr
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @configfs_mount, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %0, %cond.true ], [ %3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @configfs_release_fs() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @simple_release_fs(ptr noundef nonnull @configfs_mount, ptr noundef nonnull @configfs_mnt_count) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @configfs_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @configfs_fs_type) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %0, ptr noundef nonnull @.str) #6
  %1 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #6
  store ptr null, ptr @configfs_dir_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.10, i32 noundef 56, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  store ptr %call, ptr @configfs_dir_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call1 = tail call i32 @sysfs_create_mount_point(ptr noundef %0, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out2_crit_edge

if.end.out2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out2

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_filesystem(ptr noundef nonnull @configfs_fs_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %1 = load ptr, ptr @kernel_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %1, ptr noundef nonnull @.str) #6
  br label %out2

out2:                                             ; preds = %do.end, %if.end.out2_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out2_crit_edge ], [ %call5, %do.end ]
  %2 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #6
  store ptr null, ptr @configfs_dir_cachep, align 4
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %err.0, %out2 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @configfs_init_fs_context(ptr nocapture noundef writeonly %fc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @configfs_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_get_tree(ptr noundef %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_single(ptr noundef %fc, ptr noundef nonnull @configfs_fill_super) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %2 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1650812272, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %3 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @configfs_ops, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %4 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %s_time_gran, align 4
  %call = tail call ptr @configfs_new_inode(i16 noundef zeroext 16877, ptr noundef nonnull @configfs_root, ptr noundef %sb) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @configfs_root_inode_operations, ptr %i_op, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @configfs_dir_operations, ptr %6, align 8
  tail call void @inc_nlink(ptr noundef nonnull %call) #6
  %call7 = tail call ptr @d_make_root(ptr noundef nonnull %call) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.body10, label %if.end26

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configfs_fill_super.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configfs_fill_super, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !63

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @configfs_fill_super.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.7) #6
  br label %cleanup

do.body10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configfs_fill_super.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configfs_fill_super, %if.then22)) #6
          to label %cleanup [label %if.then22], !srcloc !63

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @configfs_fill_super.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end26:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @config_group_init(ptr noundef nonnull @configfs_root_group) #6
  store ptr %call7, ptr getelementptr inbounds (%struct.config_group, ptr @configfs_root_group, i32 0, i32 0, i32 7), align 4
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %call7, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @configfs_root, ptr %d_fsdata, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %9 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %s_root, align 64
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %10 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @configfs_dentry_ops, ptr %s_d_op, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then22, %do.body10, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -12, %if.then5 ], [ -12, %if.then22 ], [ -12, %do.body ], [ -12, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @configfs_new_inode(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @configfs_free_inode(ptr noundef %inode) #1 align 64 {
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
declare dso_local i32 @generic_delete_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__UNIQUE_ID_alias242, !1, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!1 = !{!"../fs/configfs/mount.c", i32 120, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/configfs/mount.c", i32 167, i32 40}
!4 = !{ptr @__UNIQUE_ID_author243, !5, !"__UNIQUE_ID_author243", i1 false, i1 false}
!5 = !{!"../fs/configfs/mount.c", i32 172, i32 1}
!6 = !{ptr @__UNIQUE_ID_file244, !7, !"__UNIQUE_ID_file244", i1 false, i1 false}
!7 = !{!"../fs/configfs/mount.c", i32 173, i32 1}
!8 = !{ptr @__UNIQUE_ID_license245, !7, !"__UNIQUE_ID_license245", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_version246, !10, !"__UNIQUE_ID_version246", i1 false, i1 false}
!10 = !{!"../fs/configfs/mount.c", i32 174, i32 1}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__modver_attr, !10, !"__modver_attr", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description247, !16, !"__UNIQUE_ID_description247", i1 false, i1 false}
!16 = !{!"../fs/configfs/mount.c", i32 175, i32 1}
!17 = !{ptr @__initcall__kmod_configfs__248_177_configfs_init1, !18, !"__initcall__kmod_configfs__248_177_configfs_init1", i1 false, i1 false}
!18 = !{!"../fs/configfs/mount.c", i32 177, i32 1}
!19 = !{ptr @__exitcall_configfs_exit, !20, !"__exitcall_configfs_exit", i1 false, i1 false}
!20 = !{!"../fs/configfs/mount.c", i32 178, i32 1}
!21 = !{ptr @configfs_dir_cachep, !22, !"configfs_dir_cachep", i1 false, i1 false}
!22 = !{!"../fs/configfs/mount.c", i32 26, i32 20}
!23 = !{ptr @configfs_root_group, !24, !"configfs_root_group", i1 false, i1 false}
!24 = !{!"../fs/configfs/mount.c", i32 43, i32 28}
!25 = !{ptr @configfs_fs_type, !26, !"configfs_fs_type", i1 false, i1 false}
!26 = !{!"../fs/configfs/mount.c", i32 114, i32 32}
!27 = !{ptr @configfs_context_ops, !28, !"configfs_context_ops", i1 false, i1 false}
!28 = !{!"../fs/configfs/mount.c", i32 104, i32 43}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/configfs/mount.c", i32 82, i32 3}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @configfs_fill_super.__UNIQUE_ID_ddebug240, !30, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!34 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/configfs/mount.c", i32 88, i32 3}
!37 = !{ptr @configfs_fill_super.__UNIQUE_ID_ddebug241, !36, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!38 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @configfs_ops, !40, !"configfs_ops", i1 false, i1 false}
!40 = !{!"../fs/configfs/mount.c", i32 37, i32 38}
!41 = !{ptr @configfs_root, !42, !"configfs_root", i1 false, i1 false}
!42 = !{!"../fs/configfs/mount.c", i32 55, i32 31}
!43 = !{ptr @configfs_mount, !44, !"configfs_mount", i1 false, i1 false}
!44 = !{!"../fs/configfs/mount.c", i32 25, i32 25}
!45 = !{ptr @configfs_mnt_count, !46, !"configfs_mnt_count", i1 false, i1 false}
!46 = !{!"../fs/configfs/mount.c", i32 27, i32 12}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/configfs/mount.c", i32 139, i32 42}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/configfs/mount.c", i32 155, i32 2}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @configfs_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @configfs_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148479184, i64 2148479189, i64 2148479202, i64 2148479246, i64 2148479280, i64 2148479301}
