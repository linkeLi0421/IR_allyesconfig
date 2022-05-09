; ModuleID = '/llk/IR_all_yes/fs/coda/inode.c_pt.bc'
source_filename = "../fs/coda/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.venus_comm = type { i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.coda_inode_info = type { %struct.CodaFid, i16, i32, i32, %struct.kuid_t, i32, %struct.spinlock, %struct.inode }
%struct.CodaFid = type { [4 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.74 = type { ptr }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { %struct.spinlock, i32 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.coda_vattr = type { i32, i16, i16, i32, i32, i32, i64, i32, %struct.coda_timespec, %struct.coda_timespec, %struct.coda_timespec, i32, i32, i64, i64, i64 }
%struct.coda_timespec = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.coda_mount_data = type { i32, i32 }
%struct.file = type { %union.anon.79, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.79 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coda_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@coda_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@coda_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr @coda_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_setattr, ptr @coda_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"coda\00", [27 x i8] zeroinitializer }, align 32
@coda_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.1, i32 2, ptr null, ptr null, ptr @coda_mount, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias270 = internal constant [19 x i8] c"coda.alias=fs-coda\00", section ".modinfo", align 1
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@coda_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016coda: %s: device index: %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coda_fill_super\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/coda/inode.c\00", [16 x i8] zeroinitializer }, align 32
@coda_fill_super._entry_ptr = internal global ptr @coda_fill_super._entry, section ".printk_index", align 4
@coda_comms = external dso_local global [0 x %struct.venus_comm], align 4
@coda_fill_super._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014coda: %s: No pseudo device\0A\00", [34 x i8] zeroinitializer }, align 32
@coda_fill_super._entry_ptr.7 = internal global ptr @coda_fill_super._entry.5, section ".printk_index", align 4
@coda_fill_super._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014coda: %s: Device already mounted\0A\00", [60 x i8] zeroinitializer }, align 32
@coda_fill_super._entry_ptr.10 = internal global ptr @coda_fill_super._entry.8, section ".printk_index", align 4
@coda_super_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @coda_alloc_inode, ptr null, ptr @coda_free_inode, ptr null, ptr null, ptr null, ptr @coda_evict_inode, ptr @coda_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_statfs, ptr @coda_remount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@coda_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@coda_fill_super._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014coda: %s: coda_get_rootfid failed with %d\0A\00", [51 x i8] zeroinitializer }, align 32
@coda_fill_super._entry_ptr.13 = internal global ptr @coda_fill_super._entry.11, section ".printk_index", align 4
@coda_fill_super._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016coda: %s: rootfid is %s\0A\00", [37 x i8] zeroinitializer }, align 32
@coda_fill_super._entry_ptr.16 = internal global ptr @coda_fill_super._entry.14, section ".printk_index", align 4
@coda_fill_super._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014coda: Failure of coda_cnode_make for root: error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@coda_fill_super._entry_ptr.19 = internal global ptr @coda_fill_super._entry.17, section ".printk_index", align 4
@coda_fill_super._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016coda: %s: rootinode is %ld dev %s\0A\00", [59 x i8] zeroinitializer }, align 32
@coda_fill_super._entry_ptr.22 = internal global ptr @coda_fill_super._entry.20, section ".printk_index", align 4
@get_device_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014coda: %s: Bad mount data\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_device_index\00", [47 x i8] zeroinitializer }, align 32
@get_device_index._entry_ptr = internal global ptr @get_device_index._entry, section ".printk_index", align 4
@get_device_index._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014coda: %s: Bad mount version\0A\00", [33 x i8] zeroinitializer }, align 32
@get_device_index._entry_ptr.27 = internal global ptr @get_device_index._entry.25, section ".printk_index", align 4
@get_device_index._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014coda: %s: Bad minor number\0A\00", [34 x i8] zeroinitializer }, align 32
@get_device_index._entry_ptr.30 = internal global ptr @get_device_index._entry.28, section ".printk_index", align 4
@get_device_index._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.4, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014coda: %s: Bad file\0A\00", [42 x i8] zeroinitializer }, align 32
@get_device_index._entry_ptr.33 = internal global ptr @get_device_index._entry.31, section ".printk_index", align 4
@coda_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ei->c_lock\00", [20 x i8] zeroinitializer }, align 32
@coda_put_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016coda: Bye bye.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"coda_put_super\00", [17 x i8] zeroinitializer }, align 32
@coda_put_super._entry_ptr = internal global ptr @coda_put_super._entry, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 71, i32 40 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"coda_inode_cachep\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 41, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 325, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"coda_fs_type\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 323, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 164, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 170, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 176, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"coda_super_operations\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 98, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 202, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 206, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 212, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 217, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 115, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 120, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 137, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 143, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 53, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [19 x i8] c"../fs/coda/inode.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 244, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias270, ptr @coda_fill_super._entry, ptr @coda_fill_super._entry.11, ptr @coda_fill_super._entry.14, ptr @coda_fill_super._entry.17, ptr @coda_fill_super._entry.20, ptr @coda_fill_super._entry.5, ptr @coda_fill_super._entry.8, ptr @coda_fill_super._entry_ptr, ptr @coda_fill_super._entry_ptr.10, ptr @coda_fill_super._entry_ptr.13, ptr @coda_fill_super._entry_ptr.16, ptr @coda_fill_super._entry_ptr.19, ptr @coda_fill_super._entry_ptr.22, ptr @coda_fill_super._entry_ptr.7, ptr @coda_put_super._entry, ptr @coda_put_super._entry_ptr, ptr @get_device_index._entry, ptr @get_device_index._entry.25, ptr @get_device_index._entry.28, ptr @get_device_index._entry.31, ptr @get_device_index._entry_ptr, ptr @get_device_index._entry_ptr.27, ptr @get_device_index._entry_ptr.30, ptr @get_device_index._entry_ptr.33, ptr @.str, ptr @coda_inode_cachep, ptr @.str.1, ptr @coda_fs_type, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @coda_super_operations, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @coda_alloc_inode.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fill_super._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fill_super._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_super_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fill_super._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fill_super._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fill_super._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fill_super._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_index._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_index._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_index._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_put_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_init_inodecache() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 864, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #6
  store ptr %call, ptr @coda_inode_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.coda_inode_info, ptr %foo, i32 0, i32 7
  tail call void @inode_init_once(ptr noundef %vfs_inode) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_destroy_inodecache() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #6
  %0 = load ptr, ptr @coda_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @coda_revalidate_inode(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %d_inode.i6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i6, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %stat) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_revalidate_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_setattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %de, ptr noundef %iattr) #2 align 64 {
entry:
  %vattr = alloca %struct.coda_vattr, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %vattr) #6
  %2 = call ptr @memset(ptr %vattr, i32 0, i32 120)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #6
  %3 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  call void @coda_iattr_to_vattr(ptr noundef %iattr, ptr noundef nonnull %vattr) #6
  %4 = ptrtoint ptr %vattr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vattr, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -80
  %call2 = call i32 @venus_setattr(ptr noundef %6, ptr noundef %add.ptr.i.i, ptr noundef nonnull %vattr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @coda_vattr_to_iattr(ptr noundef %1, ptr noundef nonnull %vattr) #6
  call void @coda_cache_clear_inode(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %vattr) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_iattr_to_vattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_vattr_to_iattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_cache_clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @coda_mount(ptr noundef %fs_type, i32 noundef %flags, ptr nocapture noundef readnone %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_nodev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %data, ptr noundef nonnull @coda_fill_super) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_nodev(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_fill_super(ptr noundef %sb, ptr noundef readonly %data, i32 noundef %silent) #2 align 64 {
entry:
  %fid = alloca %struct.CodaFid, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fid) #6
  %0 = call ptr @memset(ptr %fid, i32 255, i32 16)
  %1 = tail call i32 @llvm.read_register.i32(metadata !69) #6
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %call1 = tail call ptr @task_active_pid_ns(ptr noundef %4) #6
  %cmp.not = icmp eq ptr %call1, @init_pid_ns
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp eq ptr %data, null
  br i1 %cmp.i, label %if.end._crit_edge, label %if.end.i

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %17

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 1
  br i1 %cmp1.not.i, label %if.end8.i, label %if.end.i._crit_edge

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %17

if.end8.i:                                        ; preds = %if.end.i
  %fd.i = getelementptr inbounds %struct.coda_mount_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fd.i, align 4
  %call.i.i = tail call i32 @__fdget(i32 noundef %8) #6, !noalias !79
  %and.i.i.i = and i32 %call.i.i, -4
  %9 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.end8.i._crit_edge, label %if.end11.i

if.end8.i._crit_edge:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %17

if.end11.i:                                       ; preds = %if.end8.i
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %14)
  %cmp14.i = icmp eq i16 %14, 8192
  br i1 %cmp14.i, label %lor.lhs.false.i, label %if.end11.i.if.then19.i_crit_edge

if.end11.i.if.then19.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19.i

lor.lhs.false.i:                                  ; preds = %if.end11.i
  %i_rdev.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  %15 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_rdev.i.i, align 8
  %shr.i.mask.i = and i32 %16, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 70254592, i32 %shr.i.mask.i)
  %cmp17.not.i = icmp eq i32 %shr.i.mask.i, 70254592
  br i1 %cmp17.not.i, label %if.end20.i, label %lor.lhs.false.i.if.then19.i_crit_edge

lor.lhs.false.i.if.then19.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19.i

if.then19.i:                                      ; preds = %lor.lhs.false.i.if.then19.i_crit_edge, %if.end11.i.if.then19.i_crit_edge
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then19.i._crit_edge, label %if.then.i.i

if.then19.i._crit_edge:                           ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %17

if.then.i.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fput(ptr noundef nonnull %9) #6
  br label %17

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %and.i56.i = and i32 %16, 1048575
  %and.i57.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.i)
  %tobool.not.i58.i = icmp eq i32 %and.i57.i, 0
  br i1 %tobool.not.i58.i, label %if.end20.i.fdput.exit60.i_crit_edge, label %if.then.i59.i

if.end20.i.fdput.exit60.i_crit_edge:              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fdput.exit60.i

if.then.i59.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fput(ptr noundef nonnull %9) #6
  br label %fdput.exit60.i

fdput.exit60.i:                                   ; preds = %if.then.i59.i, %if.end20.i.fdput.exit60.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i56.i)
  %cmp25.i = icmp ugt i32 %and.i56.i, 4
  br i1 %cmp25.i, label %fdput.exit60.i._crit_edge, label %fdput.exit60.i.get_device_index.exit_crit_edge

fdput.exit60.i.get_device_index.exit_crit_edge:   ; preds = %fdput.exit60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_device_index.exit

fdput.exit60.i._crit_edge:                        ; preds = %fdput.exit60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %17

17:                                               ; preds = %fdput.exit60.i._crit_edge, %if.then.i.i, %if.then19.i._crit_edge, %if.end8.i._crit_edge, %if.end.i._crit_edge, %if.end._crit_edge
  %.str.32.sink.i = phi ptr [ @.str.23, %if.end._crit_edge ], [ @.str.26, %if.end.i._crit_edge ], [ @.str.29, %fdput.exit60.i._crit_edge ], [ @.str.32, %if.then.i.i ], [ @.str.32, %if.then19.i._crit_edge ], [ @.str.32, %if.end8.i._crit_edge ]
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.32.sink.i, ptr noundef nonnull @.str.24) #9
  br label %get_device_index.exit

get_device_index.exit:                            ; preds = %17, %fdput.exit60.i.get_device_index.exit_crit_edge
  %18 = phi i32 [ 0, %17 ], [ %and.i56.i, %fdput.exit60.i.get_device_index.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %18) #9
  %arrayidx = getelementptr [0 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %18
  %vc_mutex = getelementptr [0 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %18, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #6
  %vc_inuse = getelementptr [0 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %18, i32 4
  %19 = ptrtoint ptr %vc_inuse to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vc_inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %get_device_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #9
  br label %unlock_out

if.end13:                                         ; preds = %get_device_index.exit
  %vc_sb = getelementptr [0 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %18, i32 5
  %21 = ptrtoint ptr %vc_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vc_sb, align 4
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3) #9
  br label %unlock_out

if.end21:                                         ; preds = %if.end13
  %23 = ptrtoint ptr %vc_sb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sb, ptr %vc_sb, align 4
  tail call void @mutex_unlock(ptr noundef %vc_mutex) #6
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx, ptr %s_fs_info, align 16
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %25 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_flags, align 4
  %or = or i32 %26, 1024
  store i32 %or, ptr %s_flags, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %28 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %29 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1937076805, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %30 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @coda_super_operations, ptr %s_op, align 4
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %31 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @coda_dentry_operations, ptr %s_d_op, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %32 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %s_time_gran, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %33 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 -9223372036854775808, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %34 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 9223372036854775807, ptr %s_time_max, align 64
  %call24 = tail call i32 @super_setup_bdi(ptr noundef %sb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.error63_crit_edge

if.end21.error63_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %error63

if.end27:                                         ; preds = %if.end21
  %call28 = call i32 @venus_rootfid(ptr noundef %sb, ptr noundef nonnull %fid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.end39, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef %call28) #9
  br label %error63

do.end39:                                         ; preds = %if.end27
  %call41 = call ptr @coda_f2s(ptr noundef nonnull %fid) #6
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef %call41) #9
  %call43 = call ptr @coda_cnode_make(ptr noundef nonnull %fid, ptr noundef %sb) #6
  %cmp.i106 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then45, label %do.end55

if.then45:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %call43 to i32
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %35) #9
  br label %error63

do.end55:                                         ; preds = %do.end39
  %i_ino = getelementptr inbounds %struct.inode, ptr %call43, i32 0, i32 11
  %36 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_ino, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %call43, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 39
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, i32 noundef %37, ptr noundef %s_id) #9
  %call58 = call ptr @d_make_root(ptr noundef %call43) #6
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %40 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call58, ptr %s_root, align 64
  %tobool60.not = icmp eq ptr %call58, null
  br i1 %tobool60.not, label %do.end55.error63_crit_edge, label %do.end55.cleanup_crit_edge

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end55.error63_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %error63

error63:                                          ; preds = %do.end55.error63_crit_edge, %if.then45, %do.end33, %if.end21.error63_crit_edge
  %error.0 = phi i32 [ %call24, %if.end21.error63_crit_edge ], [ %call28, %do.end33 ], [ %35, %if.then45 ], [ -22, %do.end55.error63_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #6
  %41 = ptrtoint ptr %vc_sb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %vc_sb, align 4
  %42 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %s_fs_info, align 16
  br label %unlock_out

unlock_out:                                       ; preds = %error63, %do.end18, %do.end10
  %error.1 = phi i32 [ -16, %do.end18 ], [ %error.0, %error63 ], [ -22, %do.end10 ]
  call void @mutex_unlock(ptr noundef %vc_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock_out, %do.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %unlock_out ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fid) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_rootfid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_f2s(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_cnode_make(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @coda_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @coda_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %c_uid = getelementptr inbounds %struct.coda_inode_info, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %c_uid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %c_uid, align 4
  %c_cached_perm = getelementptr inbounds %struct.coda_inode_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %c_cached_perm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c_cached_perm, align 8
  %c_lock = getelementptr inbounds %struct.coda_inode_info, ptr %call, i32 0, i32 6
  %3 = call ptr @memset(ptr %call, i32 0, i32 18)
  tail call void @__raw_spin_lock_init(ptr noundef %c_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @coda_alloc_inode.__key, i16 noundef signext 3) #6
  %vfs_inode = getelementptr inbounds %struct.coda_inode_info, ptr %call, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @coda_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -80
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_evict_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #6
  tail call void @clear_inode(ptr noundef %inode) #6
  tail call void @coda_cache_clear_inode(ptr noundef %inode) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_put_super(ptr nocapture noundef %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %vc_mutex = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #6
  %vc_sb = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vc_sb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vc_sb, align 4
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %s_fs_info.i, align 16
  tail call void @mutex_unlock(ptr noundef %vc_mutex) #6
  tail call void @mutex_destroy(ptr noundef %vc_mutex) #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_statfs(ptr noundef %dentry, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @venus_statfs(ptr noundef %dentry, ptr noundef %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 9000000, ptr %f_blocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %1 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 9000000, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %2 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 9000000, ptr %f_bavail, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %3 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 9000000, ptr %f_files, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %4 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 9000000, ptr %f_ffree, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1937076805, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %f_bsize, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %7 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 1024
  store i32 %or, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_statfs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !66, !67, !68}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/coda/inode.c", i32 71, i32 40}
!2 = !{ptr @coda_file_inode_operations, !3, !"coda_file_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/coda/inode.c", i32 286, i32 31}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/coda/inode.c", i32 325, i32 11}
!6 = !{ptr @coda_fs_type, !7, !"coda_fs_type", i1 false, i1 false}
!7 = !{!"../fs/coda/inode.c", i32 323, i32 25}
!8 = !{ptr @__UNIQUE_ID_alias270, !9, !"__UNIQUE_ID_alias270", i1 false, i1 false}
!9 = !{!"../fs/coda/inode.c", i32 330, i32 1}
!10 = !{ptr @coda_inode_cachep, !11, !"coda_inode_cachep", i1 false, i1 false}
!11 = !{!"../fs/coda/inode.c", i32 41, i32 28}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/coda/inode.c", i32 164, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @coda_fill_super._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @coda_fill_super._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/coda/inode.c", i32 170, i32 3}
!20 = !{ptr @coda_fill_super._entry.5, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @coda_fill_super._entry_ptr.7, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/coda/inode.c", i32 176, i32 3}
!24 = !{ptr @coda_fill_super._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @coda_fill_super._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/coda/inode.c", i32 202, i32 3}
!28 = !{ptr @coda_fill_super._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @coda_fill_super._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/coda/inode.c", i32 206, i32 2}
!32 = !{ptr @coda_fill_super._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @coda_fill_super._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/coda/inode.c", i32 212, i32 3}
!36 = !{ptr @coda_fill_super._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @coda_fill_super._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/coda/inode.c", i32 217, i32 2}
!40 = !{ptr @coda_fill_super._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @coda_fill_super._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/coda/inode.c", i32 115, i32 3}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @get_device_index._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @get_device_index._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/coda/inode.c", i32 120, i32 3}
!49 = !{ptr @get_device_index._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @get_device_index._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/coda/inode.c", i32 137, i32 3}
!53 = !{ptr @get_device_index._entry.28, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @get_device_index._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/coda/inode.c", i32 143, i32 2}
!57 = !{ptr @get_device_index._entry.31, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @get_device_index._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @coda_super_operations, !60, !"coda_super_operations", i1 false, i1 false}
!60 = !{!"../fs/coda/inode.c", i32 98, i32 38}
!61 = !{ptr @coda_alloc_inode.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../fs/coda/inode.c", i32 53, i32 2}
!63 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/coda/inode.c", i32 244, i32 2}
!66 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @coda_put_super._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @coda_put_super._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"fdget: %agg.result"}
!81 = distinct !{!81, !"fdget"}
