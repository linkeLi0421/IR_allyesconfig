; ModuleID = '/llk/IR_all_yes/fs/nilfs2/super.c_pt.bc'
source_filename = "../fs/nilfs2/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.rb_root = type { ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nilfs_super_block = type { i32, i16, i16, i16, i16, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i32, i32, i16, i16, i32, i16, i16, i16, i16, [16 x i8], [80 x i8], i32, i32, i64, i64, i64, [186 x i32] }
%struct.nilfs_inode_info = type { i32, i32, ptr, %struct.nilfs_bmap, i64, i32, i64, %struct.address_space, %struct.list_head, ptr, ptr, %struct.inode }
%struct.nilfs_bmap = type { %union.anon.85, %struct.rw_semaphore, ptr, ptr, i64, i64, i32, i32, i16 }
%union.anon.85 = type { [7 x i64] }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.nilfs_root = type { i64, %struct.rb_node, %struct.refcount_struct, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.kobject, %struct.completion }
%struct.nilfs_checkpoint = type { i32, i32, %struct.nilfs_snapshot_list, i64, i64, i64, i64, i64, %struct.nilfs_inode }
%struct.nilfs_snapshot_list = type { i64, i64 }
%struct.nilfs_inode = type { i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i32, [7 x i64], i64, i32, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.40 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.40 = type { %struct.work_struct }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@__UNIQUE_ID_author285 = internal constant [24 x i8] c"nilfs2.author=NTT Corp.\00", section ".modinfo", align 1
@__UNIQUE_ID_description286 = internal constant [81 x i8] c"nilfs2.description=A New Implementation of the Log-structured Filesystem (NILFS)\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [29 x i8] c"nilfs2.file=fs/nilfs2/nilfs2\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [19 x i8] c"nilfs2.license=GPL\00", section ".modinfo", align 1
@__nilfs_msg._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%c%cNILFS (%s): %pV\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__nilfs_msg\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nilfs2/super.c\00", [46 x i8] zeroinitializer }, align 32
@__nilfs_msg._entry_ptr = internal global ptr @__nilfs_msg._entry, section ".printk_index", align 4
@__nilfs_msg._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, align 1
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%c%cNILFS: %pV\0A\00", [16 x i8] zeroinitializer }, align 32
@__nilfs_msg._entry_ptr.5 = internal global ptr @__nilfs_msg._entry.3, section ".printk_index", align 4
@__nilfs_error._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 132, ptr null, ptr null }, align 1
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\012NILFS error (device %s): %s: %pV\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__nilfs_error\00", [18 x i8] zeroinitializer }, align 32
@__nilfs_error._entry_ptr = internal global ptr @__nilfs_error._entry, section ".printk_index", align 4
@__nilfs_error._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 140, ptr null, ptr null }, align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\012Remounting filesystem read-only\0A\00", [61 x i8] zeroinitializer }, align 32
@__nilfs_error._entry_ptr.10 = internal global ptr @__nilfs_error._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NILFS (device %s): panic forced after error\0A\00", [51 x i8] zeroinitializer }, align 32
@nilfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\012superblock broke\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Invalid checkpoint (checkpoint number=%llu)\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013couldn't mount because of unsupported optional features (%llx)\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013couldn't mount RDWR because of unsupported optional features (%llx)\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nilfs2\00", [25 x i8] zeroinitializer }, align 32
@nilfs_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.16, i32 1, ptr null, ptr null, ptr @nilfs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias289 = internal constant [23 x i8] c"nilfs2.alias=fs-nilfs2\00", section ".modinfo", align 1
@__initcall__kmod_nilfs2__290_1472_init_nilfs_fs6 = internal global ptr @init_nilfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_nilfs_fs = internal global ptr @exit_nilfs_fs, section ".exitcall.exit", align 4
@nilfs_transaction_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@nilfs_segbuf_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@nilfs_btree_path_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013unable to write superblock: err=%d\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014unable to move secondary superblock to block %llu\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal global { [11 x %struct.match_token], [40 x i8] } { [11 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.24 }, %struct.match_token { i32 1, ptr @.str.25 }, %struct.match_token { i32 2, ptr @.str.26 }, %struct.match_token { i32 3, ptr @.str.27 }, %struct.match_token { i32 4, ptr @.str.28 }, %struct.match_token { i32 5, ptr @.str.29 }, %struct.match_token { i32 6, ptr @.str.30 }, %struct.match_token { i32 7, ptr @.str.31 }, %struct.match_token { i32 8, ptr @.str.32 }, %struct.match_token { i32 9, ptr @.str.33 }, %struct.match_token { i32 10, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"relaxed\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"strict\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013\22%s\22 option is invalid for remount\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013unrecognized mount option \22%s\22\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"errors=continue\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"errors=panic\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"errors=remount-ro\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"barrier\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nobarrier\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cp=%u\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"order=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"norecovery\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nodiscard\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pg\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013the device already has a %s mount.\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read/write\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"read-only option is not specified\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"too large checkpoint number\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"malformed argument\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid checkpoint number 0\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013invalid option \22%s\22: %s\00", [38 x i8] zeroinitializer }, align 32
@nilfs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @nilfs_alloc_inode, ptr null, ptr @nilfs_free_inode, ptr @nilfs_dirty_inode, ptr null, ptr null, ptr @nilfs_evict_inode, ptr @nilfs_put_super, ptr @nilfs_sync_fs, ptr null, ptr @nilfs_freeze, ptr null, ptr @nilfs_unfreeze, ptr @nilfs_statfs, ptr @nilfs_remount, ptr null, ptr @nilfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@nilfs_export_ops = external dso_local constant %struct.export_operations, align 4
@.str.43 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013error %d while loading last checkpoint (checkpoint number=%llu)\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014failed to count free inodes: err=%d\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",nobarrier\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",cp=%llu\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",errors=panic\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",errors=continue\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",order=strict\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",norecovery\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",discard\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013error %d getting root inode\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013corrupt root inode\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013error %d getting root dentry\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014mounting fs with errors\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014couldn't remount because the filesystem is in an incomplete recovery state\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014couldn't remount RDWR because of unsupported optional features (%llx)\00", [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013The specified checkpoint is not a snapshot (checkpoint number=%llu)\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013error %d while loading snapshot (checkpoint number=%llu)\00", [37 x i8] zeroinitializer }, align 32
@init_nilfs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016NILFS version 2 loaded\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_nilfs_fs\00", [18 x i8] zeroinitializer }, align 32
@init_nilfs_fs._entry_ptr = internal global ptr @init_nilfs_fs._entry, section ".printk_index", align 4
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nilfs2_inode_cache\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nilfs2_transaction_cache\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nilfs2_segbuf_cache\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nilfs2_btree_path_cache\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@__sancov_gen_cov_switch_values.66 = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.68 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967262]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 15]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 78, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 81, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 131, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 140, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 146, i32 9 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"nilfs_inode_cachep\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 57, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 257, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 532, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 879, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 887, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1365, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"nilfs_fs_type\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1363, i32 25 }
@___asan_gen_.116 = private unnamed_addr constant [25 x i8] c"nilfs_transaction_cachep\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 58, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"nilfs_segbuf_cachep\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 59, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"nilfs_btree_path_cache\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 60, i32 20 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 187, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 367, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 726, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 703, i32 22 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 741, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 744, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 761, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 777, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 704, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 705, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 706, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 707, i32 16 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 708, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 709, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 710, i32 14 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 711, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 712, i32 16 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 713, i32 18 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1313, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1324, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1202, i32 9 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1209, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1211, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1214, i32 9 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1221, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [11 x i8] c"nilfs_sops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 683, i32 38 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1065, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 630, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 666, i32 17 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 668, i32 19 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 670, i32 17 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 672, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 674, i32 17 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 676, i32 17 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 678, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 906, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 911, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 939, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 813, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1127, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1160, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 959, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 968, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1454, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1406, i32 41 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1413, i32 47 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1419, i32 42 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private constant [21 x i8] c"../fs/nilfs2/super.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1425, i32 45 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_exit_nilfs_fs, ptr @__initcall__kmod_nilfs2__290_1472_init_nilfs_fs6, ptr @__nilfs_error._entry, ptr @__nilfs_error._entry.8, ptr @__nilfs_error._entry_ptr, ptr @__nilfs_error._entry_ptr.10, ptr @__nilfs_msg._entry, ptr @__nilfs_msg._entry.3, ptr @__nilfs_msg._entry_ptr, ptr @__nilfs_msg._entry_ptr.5, ptr @exit_nilfs_fs, ptr @init_nilfs_fs._entry, ptr @init_nilfs_fs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @nilfs_inode_cachep, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @nilfs_fs_type, ptr @nilfs_transaction_cachep, ptr @nilfs_segbuf_cachep, ptr @nilfs_btree_path_cache, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @tokens, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @nilfs_sops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_transaction_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segbuf_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_btree_path_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_nilfs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__nilfs_msg(ptr noundef %sb, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #15
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !164
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.printk_skip_level.exit_crit_edge

entry.printk_skip_level.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_skip_level.exit

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr i8, ptr %fmt, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %land.lhs.true.i.land.lhs.true.i.i_crit_edge [
    i8 55, label %land.lhs.true.i.sw.bb6.i_crit_edge
    i8 99, label %land.lhs.true.i.sw.bb6.i_crit_edge15
    i8 48, label %land.lhs.true.i.sw.bb6.i_crit_edge16
    i8 49, label %land.lhs.true.i.sw.bb6.i_crit_edge17
    i8 50, label %land.lhs.true.i.sw.bb6.i_crit_edge18
    i8 51, label %land.lhs.true.i.sw.bb6.i_crit_edge19
    i8 52, label %land.lhs.true.i.sw.bb6.i_crit_edge20
    i8 53, label %land.lhs.true.i.sw.bb6.i_crit_edge21
    i8 54, label %land.lhs.true.i.sw.bb6.i_crit_edge22
  ]

land.lhs.true.i.sw.bb6.i_crit_edge22:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge21:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge20:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge19:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge18:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge17:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge16:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge15:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

land.lhs.true.i.land.lhs.true.i.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i.i

sw.bb6.i:                                         ; preds = %land.lhs.true.i.sw.bb6.i_crit_edge, %land.lhs.true.i.sw.bb6.i_crit_edge15, %land.lhs.true.i.sw.bb6.i_crit_edge16, %land.lhs.true.i.sw.bb6.i_crit_edge17, %land.lhs.true.i.sw.bb6.i_crit_edge18, %land.lhs.true.i.sw.bb6.i_crit_edge19, %land.lhs.true.i.sw.bb6.i_crit_edge20, %land.lhs.true.i.sw.bb6.i_crit_edge21, %land.lhs.true.i.sw.bb6.i_crit_edge22
  %conv8.i = zext i8 %5 to i32
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %arrayidx2.i, align 1
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb6.i, %land.lhs.true.i.land.lhs.true.i.i_crit_edge
  %8 = phi i8 [ %5, %land.lhs.true.i.land.lhs.true.i.i_crit_edge ], [ %.pr, %sw.bb6.i ]
  %retval.0.i.ph = phi i32 [ 0, %land.lhs.true.i.land.lhs.true.i.i_crit_edge ], [ %conv8.i, %sw.bb6.i ]
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %8, label %land.lhs.true.i.i.printk_skip_level.exit_crit_edge [
    i8 55, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge
    i8 99, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge23
    i8 48, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge24
    i8 49, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge25
    i8 50, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge26
    i8 51, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge27
    i8 52, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge28
    i8 53, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge29
    i8 54, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge30
  ]

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge30: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge29: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge28: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge27: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge26: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge25: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge24: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge23: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_skip_level.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %printk_skip_level.exit

printk_get_level.exit.i:                          ; preds = %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge23, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge24, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge25, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge26, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge27, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge28, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge29, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge30
  %add.ptr.i = getelementptr i8, ptr %fmt, i32 2
  br label %printk_skip_level.exit

printk_skip_level.exit:                           ; preds = %printk_get_level.exit.i, %land.lhs.true.i.i.printk_skip_level.exit_crit_edge, %entry.printk_skip_level.exit_crit_edge
  %retval.0.i13 = phi i32 [ %retval.0.i.ph, %printk_get_level.exit.i ], [ %retval.0.i.ph, %land.lhs.true.i.i.printk_skip_level.exit_crit_edge ], [ 0, %entry.printk_skip_level.exit_crit_edge ]
  %10 = phi ptr [ %add.ptr.i, %printk_get_level.exit.i ], [ %fmt, %land.lhs.true.i.i.printk_skip_level.exit_crit_edge ], [ %fmt, %entry.printk_skip_level.exit_crit_edge ]
  %11 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %vaf, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %args, ptr %0, align 4
  %tobool.not = icmp eq ptr %sb, null
  br i1 %tobool.not, label %do.end6, label %do.end

do.end:                                           ; preds = %printk_skip_level.exit
  call void @__sanitizer_cov_trace_pc() #17
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %retval.0.i13, ptr noundef %s_id, ptr noundef nonnull %vaf) #18
  br label %if.end

do.end6:                                          ; preds = %printk_skip_level.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef %retval.0.i13, ptr noundef nonnull %vaf) #18
  br label %if.end

if.end:                                           ; preds = %do.end6, %do.end
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__nilfs_error(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #15
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !164
  call void @llvm.va_start(ptr nonnull %args)
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fmt, ptr %vaf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %args, ptr %2, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #18
  call void @llvm.va_end(ptr nonnull %args)
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %ns_sem.i = getelementptr inbounds %struct.the_nilfs, ptr %9, i32 0, i32 4
  call void @down_write(ptr noundef %ns_sem.i) #15
  %ns_mount_state.i = getelementptr inbounds %struct.the_nilfs, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %ns_mount_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_mount_state.i, align 8
  %and.i23 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.nilfs_set_error.exit_crit_edge

if.then.nilfs_set_error.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_set_error.exit

if.then.i:                                        ; preds = %if.then
  %or.i = or i32 %11, 2
  %12 = ptrtoint ptr %ns_mount_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %ns_mount_state.i, align 8
  %13 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info, align 16
  %ns_sbp.i.i = getelementptr inbounds %struct.the_nilfs, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %ns_sbp.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ns_sbp.i.i, align 4
  %s_magic.i.i = getelementptr inbounds %struct.nilfs_super_block, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %s_magic.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %s_magic.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %18)
  %cmp.not.i.i = icmp eq i16 %18, 13364
  %arrayidx12.i.i = getelementptr %struct.the_nilfs, ptr %14, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %20, null
  br i1 %cmp.not.i.i, label %if.else11.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  br i1 %tobool13.not.i.i, label %if.then.i.i.nilfs_prepare_super.exit.thread.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.nilfs_prepare_super.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %s_magic4.i.i = getelementptr inbounds %struct.nilfs_super_block, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %s_magic4.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %s_magic4.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %22)
  %cmp6.i.i = icmp eq i16 %22, 13364
  br i1 %cmp6.i.i, label %if.then8.i.i, label %land.lhs.true.i.i.nilfs_prepare_super.exit.thread.i_crit_edge

land.lhs.true.i.i.nilfs_prepare_super.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize.i.i = getelementptr inbounds %struct.the_nilfs, ptr %14, i32 0, i32 10
  %23 = ptrtoint ptr %ns_sbsize.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ns_sbsize.i.i, align 4
  %25 = call ptr @memcpy(ptr %16, ptr %20, i32 %24)
  br label %nilfs_prepare_super.exit.i

nilfs_prepare_super.exit.thread.i:                ; preds = %land.lhs.true.i.i.nilfs_prepare_super.exit.thread.i_crit_edge, %if.then.i.i.nilfs_prepare_super.exit.thread.i_crit_edge
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.12) #15
  br label %nilfs_set_error.exit

if.else11.i.i:                                    ; preds = %if.then.i
  br i1 %tobool13.not.i.i, label %if.else11.i.i.nilfs_prepare_super.exit.i_crit_edge, label %land.lhs.true14.i.i

if.else11.i.i.nilfs_prepare_super.exit.i_crit_edge: ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.i

land.lhs.true14.i.i:                              ; preds = %if.else11.i.i
  %s_magic16.i.i = getelementptr inbounds %struct.nilfs_super_block, ptr %20, i32 0, i32 2
  %26 = ptrtoint ptr %s_magic16.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %s_magic16.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %27)
  %cmp18.not.i.i = icmp eq i16 %27, 13364
  br i1 %cmp18.not.i.i, label %land.lhs.true14.i.i.nilfs_prepare_super.exit.i_crit_edge, label %if.then20.i.i

land.lhs.true14.i.i.nilfs_prepare_super.exit.i_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.i

if.then20.i.i:                                    ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize23.i.i = getelementptr inbounds %struct.the_nilfs, ptr %14, i32 0, i32 10
  %28 = ptrtoint ptr %ns_sbsize23.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ns_sbsize23.i.i, align 4
  %30 = call ptr @memcpy(ptr %20, ptr %16, i32 %29)
  br label %nilfs_prepare_super.exit.i

nilfs_prepare_super.exit.i:                       ; preds = %if.then20.i.i, %land.lhs.true14.i.i.nilfs_prepare_super.exit.i_crit_edge, %if.else11.i.i.nilfs_prepare_super.exit.i_crit_edge, %if.then8.i.i
  %31 = ptrtoint ptr %ns_sbp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ns_sbp.i.i, align 4
  %s_state.i = getelementptr inbounds %struct.nilfs_super_block, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %s_state.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %s_state.i, align 4
  %35 = or i16 %34, 512
  store i16 %35, ptr %s_state.i, align 4
  %36 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool9.not.i = icmp eq ptr %37, null
  br i1 %tobool9.not.i, label %nilfs_prepare_super.exit.i.if.end.i_crit_edge, label %if.then10.i

nilfs_prepare_super.exit.i.if.end.i_crit_edge:    ; preds = %nilfs_prepare_super.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then10.i:                                      ; preds = %nilfs_prepare_super.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %s_state12.i = getelementptr inbounds %struct.nilfs_super_block, ptr %37, i32 0, i32 22
  %38 = ptrtoint ptr %s_state12.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %s_state12.i, align 4
  %40 = or i16 %39, 512
  store i16 %40, ptr %s_state12.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %nilfs_prepare_super.exit.i.if.end.i_crit_edge
  %call16.i = call i32 @nilfs_commit_super(ptr noundef %sb, i32 noundef 1) #15
  br label %nilfs_set_error.exit

nilfs_set_error.exit:                             ; preds = %if.end.i, %nilfs_prepare_super.exit.thread.i, %if.then.nilfs_set_error.exit_crit_edge
  call void @up_write(ptr noundef %ns_sem.i) #15
  %ns_mount_opt = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 39
  %41 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ns_mount_opt, align 4
  %and = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %nilfs_set_error.exit.if.end9_crit_edge, label %do.end6

nilfs_set_error.exit.if.end9_crit_edge:           ; preds = %nilfs_set_error.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

do.end6:                                          ; preds = %nilfs_set_error.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #18
  %43 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_flags.i, align 4
  %or = or i32 %44, 1
  store i32 %or, ptr %s_flags.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %nilfs_set_error.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ns_mount_opt10 = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 39
  %45 = ptrtoint ptr %ns_mount_opt10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ns_mount_opt10, align 4
  %and11 = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, ptr noundef %s_id) #19
  unreachable

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #15
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_alloc_inode(ptr nocapture readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nilfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %i_bh = getelementptr inbounds %struct.nilfs_inode_info, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %i_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %i_bh, align 4
  %i_state = getelementptr inbounds %struct.nilfs_inode_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %i_state, align 4
  %i_cno = getelementptr inbounds %struct.nilfs_inode_info, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %i_cno to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %i_cno, align 8
  %i_btnode_cache = getelementptr inbounds %struct.nilfs_inode_info, ptr %call, i32 0, i32 7
  %vfs_inode = getelementptr inbounds %struct.nilfs_inode_info, ptr %call, i32 0, i32 11
  tail call void @nilfs_mapping_init(ptr noundef %i_btnode_cache, ptr noundef %vfs_inode) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_mapping_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_set_log_cursor(ptr nocapture noundef writeonly %sbp, ptr noundef %nilfs) local_unnamed_addr #0 align 64 {
entry:
  %nfreeblocks = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nfreeblocks) #15
  %0 = ptrtoint ptr %nfreeblocks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %nfreeblocks, align 8, !annotation !164
  %call = call i32 @nilfs_count_free_blocks(ptr noundef %nilfs, ptr noundef nonnull %nfreeblocks) #15
  %1 = ptrtoint ptr %nfreeblocks to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %nfreeblocks, align 8
  %3 = call i64 @llvm.bswap.i64(i64 %2)
  %s_free_blocks_count = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 16
  %4 = ptrtoint ptr %s_free_blocks_count to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %s_free_blocks_count, align 8
  %ns_last_segment_lock = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock) #15
  %ns_last_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 23
  %5 = ptrtoint ptr %ns_last_seq to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ns_last_seq, align 8
  %7 = call i64 @llvm.bswap.i64(i64 %6)
  %s_last_seq = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 15
  %8 = ptrtoint ptr %s_last_seq to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %s_last_seq, align 8
  %ns_last_pseg = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 22
  %9 = ptrtoint ptr %ns_last_pseg to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ns_last_pseg, align 8
  %11 = call i64 @llvm.bswap.i64(i64 %10)
  %s_last_pseg = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 14
  %12 = ptrtoint ptr %s_last_pseg to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %s_last_pseg, align 8
  %ns_last_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 24
  %13 = ptrtoint ptr %ns_last_cno to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ns_last_cno, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14)
  %s_last_cno = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 13
  %16 = ptrtoint ptr %s_last_cno to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %s_last_cno, align 8
  call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nfreeblocks) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_count_free_blocks(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_prepare_super(ptr noundef %sb, i32 noundef %flip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_sbp, align 4
  %s_magic = getelementptr inbounds %struct.nilfs_super_block, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_magic to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_magic, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %5)
  %cmp.not = icmp eq i16 %5, 13364
  %arrayidx12 = getelementptr %struct.the_nilfs, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool13.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %s_magic4 = getelementptr inbounds %struct.nilfs_super_block, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %s_magic4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_magic4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %9)
  %cmp6 = icmp eq i16 %9, 13364
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %ns_sbsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_sbsize, align 4
  %12 = call ptr @memcpy(ptr %3, ptr %7, i32 %11)
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.12)
  br label %cleanup

if.else11:                                        ; preds = %entry
  br i1 %tobool13.not, label %if.else11.if.end25_crit_edge, label %land.lhs.true14

if.else11.if.end25_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

land.lhs.true14:                                  ; preds = %if.else11
  %s_magic16 = getelementptr inbounds %struct.nilfs_super_block, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %s_magic16 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %s_magic16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %14)
  %cmp18.not = icmp eq i16 %14, 13364
  br i1 %cmp18.not, label %land.lhs.true14.if.end25_crit_edge, label %if.then20

land.lhs.true14.if.end25_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then20:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize23 = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %ns_sbsize23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ns_sbsize23, align 4
  %17 = call ptr @memcpy(ptr %7, ptr %3, i32 %16)
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %land.lhs.true14.if.end25_crit_edge, %if.else11.if.end25_crit_edge, %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flip)
  %tobool26.not = icmp eq i32 %flip, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %land.lhs.true27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true27:                                  ; preds = %if.end25
  %arrayidx28 = getelementptr %struct.the_nilfs, ptr %1, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %land.lhs.true27.cleanup_crit_edge, label %if.then30

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nilfs_swap_super_block(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %land.lhs.true27.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.else
  %retval.0 = phi ptr [ null, %if.else ], [ %ns_sbp, %if.then30 ], [ %ns_sbp, %land.lhs.true27.cleanup_crit_edge ], [ %ns_sbp, %if.end25.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_swap_super_block(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_commit_super(ptr noundef %sb, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 7
  %call = tail call i64 @ktime_get_real_seconds() #15
  %ns_sbwtime = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ns_sbwtime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call, ptr %ns_sbwtime, align 8
  %3 = tail call i64 @llvm.bswap.i64(i64 %call)
  %4 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_sbp, align 4
  %s_wtime = getelementptr inbounds %struct.nilfs_super_block, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %s_wtime to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %3, ptr %s_wtime, align 8
  %7 = load ptr, ptr %ns_sbp, align 4
  %s_sum = getelementptr inbounds %struct.nilfs_super_block, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %s_sum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %s_sum, align 8
  %ns_crc_seed = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 53
  %9 = ptrtoint ptr %ns_crc_seed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ns_crc_seed, align 4
  %11 = load ptr, ptr %ns_sbp, align 4
  %ns_sbsize = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %ns_sbsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ns_sbsize, align 4
  %call3 = tail call i32 @crc32_le(i32 noundef %10, ptr noundef %11, i32 noundef %13) #20
  %14 = tail call i32 @llvm.bswap.i32(i32 %call3)
  %s_sum5 = getelementptr inbounds %struct.nilfs_super_block, ptr %11, i32 0, i32 6
  %15 = ptrtoint ptr %s_sum5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %s_sum5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flag)
  %cmp = icmp eq i32 %flag, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx6 = getelementptr %struct.the_nilfs, ptr %1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ns_sbp, align 4
  %s_wtime8 = getelementptr inbounds %struct.nilfs_super_block, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %s_wtime8 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s_wtime8, align 8
  %s_wtime10 = getelementptr inbounds %struct.nilfs_super_block, ptr %17, i32 0, i32 19
  %22 = ptrtoint ptr %s_wtime10 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %s_wtime10, align 8
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx6, align 4
  %s_sum12 = getelementptr inbounds %struct.nilfs_super_block, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %s_sum12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %s_sum12, align 8
  %26 = ptrtoint ptr %ns_crc_seed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ns_crc_seed, align 4
  %28 = load ptr, ptr %arrayidx6, align 4
  %29 = ptrtoint ptr %ns_sbsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ns_sbsize, align 4
  %call16 = tail call i32 @crc32_le(i32 noundef %27, ptr noundef %28, i32 noundef %30) #20
  %31 = tail call i32 @llvm.bswap.i32(i32 %call16)
  %s_sum18 = getelementptr inbounds %struct.nilfs_super_block, ptr %28, i32 0, i32 6
  %32 = ptrtoint ptr %s_sum18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %s_sum18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %1) #15
  %ns_flushed_device = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %ns_flushed_device to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %ns_flushed_device, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !165
  %34 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info, align 16
  %ns_sbh.i = getelementptr inbounds %struct.the_nilfs, ptr %35, i32 0, i32 6
  %ns_mount_opt.i = getelementptr inbounds %struct.the_nilfs, ptr %35, i32 0, i32 39
  %arrayidx11.i = getelementptr %struct.the_nilfs, ptr %35, i32 0, i32 6, i32 1
  %ns_sbp.i = getelementptr inbounds %struct.the_nilfs, ptr %35, i32 0, i32 7
  %arrayidx14.i = getelementptr %struct.the_nilfs, ptr %35, i32 0, i32 7, i32 1
  %ns_sbsize.i = getelementptr inbounds %struct.the_nilfs, ptr %35, i32 0, i32 10
  br label %retry.i

retry.i:                                          ; preds = %if.then13.i, %if.end
  %36 = ptrtoint ptr %ns_sbh.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ns_sbh.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %retry.i.set_buffer_dirty.exit.i_crit_edge

retry.i.set_buffer_dirty.exit.i_crit_edge:        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_buffer_dirty.exit.i

if.then.i.i:                                      ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %37) #15
  br label %set_buffer_dirty.exit.i

set_buffer_dirty.exit.i:                          ; preds = %if.then.i.i, %retry.i.set_buffer_dirty.exit.i_crit_edge
  %41 = ptrtoint ptr %ns_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ns_mount_opt.i, align 4
  %and.i = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %43 = ptrtoint ptr %ns_sbh.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ns_sbh.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %set_buffer_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @__sync_dirty_buffer(ptr noundef %44, i32 noundef 395264) #15
  br label %if.end.i

if.else.i:                                        ; preds = %set_buffer_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = tail call i32 @sync_dirty_buffer(ptr noundef %44) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %err.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool6.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool6.not.i, label %if.else18.i, label %if.then9.i, !prof !166

if.then9.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.17, i32 noundef %err.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %err.0.i)
  %cmp.i = icmp eq i32 %err.0.i, -5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then9.i.nilfs_sync_super.exit_crit_edge

if.then9.i.nilfs_sync_super.exit_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_sync_super.exit

land.lhs.true.i:                                  ; preds = %if.then9.i
  %45 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %46, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.nilfs_sync_super.exit_crit_edge, label %if.then13.i

land.lhs.true.i.nilfs_sync_super.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_sync_super.exit

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx14.i, align 4
  %49 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ns_sbp.i, align 4
  %51 = ptrtoint ptr %ns_sbsize.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ns_sbsize.i, align 4
  %53 = call ptr @memcpy(ptr %48, ptr %50, i32 %52)
  tail call void @nilfs_fall_back_super_block(ptr noundef %35) #15
  br label %retry.i

if.else18.i:                                      ; preds = %if.end.i
  %54 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ns_sbp.i, align 4
  %ns_sbwcount.i = getelementptr inbounds %struct.the_nilfs, ptr %35, i32 0, i32 9
  %56 = ptrtoint ptr %ns_sbwcount.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ns_sbwcount.i, align 8
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %ns_sbwcount.i, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %35) #15
  %58 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx11.i, align 4
  %tobool23.not.i = icmp eq ptr %59, null
  br i1 %tobool23.not.i, label %if.else18.i.if.end46.i_crit_edge, label %if.then24.i

if.else18.i.if.end46.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46.i

if.then24.i:                                      ; preds = %if.else18.i
  br i1 %cmp, label %if.then26.i, label %if.then24.i.if.end35.i_crit_edge

if.then24.i.if.end35.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

if.then26.i:                                      ; preds = %if.then24.i
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %62 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i75.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i75.i, label %if.then.i76.i, label %if.then26.i.set_buffer_dirty.exit77.i_crit_edge

if.then26.i.set_buffer_dirty.exit77.i_crit_edge:  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_buffer_dirty.exit77.i

if.then.i76.i:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull %59) #15
  br label %set_buffer_dirty.exit77.i

set_buffer_dirty.exit77.i:                        ; preds = %if.then.i76.i, %if.then26.i.set_buffer_dirty.exit77.i_crit_edge
  %63 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx11.i, align 4
  %call31.i = tail call i32 @sync_dirty_buffer(ptr noundef %64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %set_buffer_dirty.exit77.i.nilfs_sync_super.exit_crit_edge, label %set_buffer_dirty.exit77.i.if.end35.i_crit_edge

set_buffer_dirty.exit77.i.if.end35.i_crit_edge:   ; preds = %set_buffer_dirty.exit77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

set_buffer_dirty.exit77.i.nilfs_sync_super.exit_crit_edge: ; preds = %set_buffer_dirty.exit77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_sync_super.exit

if.end35.i:                                       ; preds = %set_buffer_dirty.exit77.i.if.end35.i_crit_edge, %if.then24.i.if.end35.i_crit_edge
  %65 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx14.i, align 4
  %s_last_cno.i = getelementptr inbounds %struct.nilfs_super_block, ptr %66, i32 0, i32 13
  %67 = ptrtoint ptr %s_last_cno.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %s_last_cno.i, align 8
  %69 = tail call i64 @llvm.bswap.i64(i64 %68) #15
  %70 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ns_sbp.i, align 4
  %s_last_cno40.i = getelementptr inbounds %struct.nilfs_super_block, ptr %71, i32 0, i32 13
  %72 = ptrtoint ptr %s_last_cno40.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %s_last_cno40.i, align 8
  %74 = tail call i64 @llvm.bswap.i64(i64 %73) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %74)
  %cmp41.i = icmp ult i64 %69, %74
  %spec.select.i = select i1 %cmp41.i, ptr %66, ptr %55
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end35.i, %if.else18.i.if.end46.i_crit_edge
  %sbp.0.i = phi ptr [ %55, %if.else18.i.if.end46.i_crit_edge ], [ %spec.select.i, %if.end35.i ]
  %ns_last_segment_lock.i = getelementptr inbounds %struct.the_nilfs, ptr %35, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock.i) #15
  %s_last_seq.i = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp.0.i, i32 0, i32 15
  %75 = ptrtoint ptr %s_last_seq.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %s_last_seq.i, align 8
  %77 = tail call i64 @llvm.bswap.i64(i64 %76) #15
  %ns_prot_seq.i = getelementptr inbounds %struct.the_nilfs, ptr %35, i32 0, i32 25
  %78 = ptrtoint ptr %ns_prot_seq.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %ns_prot_seq.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock.i) #15
  br label %nilfs_sync_super.exit

nilfs_sync_super.exit:                            ; preds = %if.end46.i, %set_buffer_dirty.exit77.i.nilfs_sync_super.exit_crit_edge, %land.lhs.true.i.nilfs_sync_super.exit_crit_edge, %if.then9.i.nilfs_sync_super.exit_crit_edge
  ret i32 %err.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_cleanup_super(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %nfreeblocks.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_sbp.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_sbp.i, align 4
  %s_magic.i = getelementptr inbounds %struct.nilfs_super_block, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_magic.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %5)
  %cmp.not.i = icmp eq i16 %5, 13364
  %arrayidx12.i = getelementptr %struct.the_nilfs, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %if.else11.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool13.not.i, label %if.then.i.nilfs_prepare_super.exit.thread_crit_edge, label %land.lhs.true.i

if.then.i.nilfs_prepare_super.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i
  %s_magic4.i = getelementptr inbounds %struct.nilfs_super_block, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %s_magic4.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_magic4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %9)
  %cmp6.i = icmp eq i16 %9, 13364
  br i1 %cmp6.i, label %if.then8.i, label %land.lhs.true.i.nilfs_prepare_super.exit.thread_crit_edge

land.lhs.true.i.nilfs_prepare_super.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %ns_sbsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_sbsize.i, align 4
  %12 = call ptr @memcpy(ptr %3, ptr %7, i32 %11)
  br label %nilfs_prepare_super.exit

nilfs_prepare_super.exit.thread:                  ; preds = %land.lhs.true.i.nilfs_prepare_super.exit.thread_crit_edge, %if.then.i.nilfs_prepare_super.exit.thread_crit_edge
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.12) #15
  br label %if.end14

if.else11.i:                                      ; preds = %entry
  br i1 %tobool13.not.i, label %if.else11.i.nilfs_prepare_super.exit_crit_edge, label %land.lhs.true14.i

if.else11.i.nilfs_prepare_super.exit_crit_edge:   ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit

land.lhs.true14.i:                                ; preds = %if.else11.i
  %s_magic16.i = getelementptr inbounds %struct.nilfs_super_block, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %s_magic16.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %s_magic16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %14)
  %cmp18.not.i = icmp eq i16 %14, 13364
  br i1 %cmp18.not.i, label %land.lhs.true14.i.nilfs_prepare_super.exit_crit_edge, label %if.then20.i

land.lhs.true14.i.nilfs_prepare_super.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit

if.then20.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize23.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %ns_sbsize23.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ns_sbsize23.i, align 4
  %17 = call ptr @memcpy(ptr %7, ptr %3, i32 %16)
  br label %nilfs_prepare_super.exit

nilfs_prepare_super.exit:                         ; preds = %if.then20.i, %land.lhs.true14.i.nilfs_prepare_super.exit_crit_edge, %if.else11.i.nilfs_prepare_super.exit_crit_edge, %if.then8.i
  %tobool.not = icmp eq ptr %ns_sbp.i, null
  br i1 %tobool.not, label %nilfs_prepare_super.exit.if.end14_crit_edge, label %if.then

nilfs_prepare_super.exit.if.end14_crit_edge:      ; preds = %nilfs_prepare_super.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then:                                          ; preds = %nilfs_prepare_super.exit
  %ns_mount_state = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %ns_mount_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ns_mount_state, align 8
  %conv = trunc i32 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %21 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ns_sbp.i, align 4
  %s_state = getelementptr inbounds %struct.nilfs_super_block, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %s_state to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %s_state, align 4
  %24 = load ptr, ptr %ns_sbp.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nfreeblocks.i) #15
  %25 = ptrtoint ptr %nfreeblocks.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %nfreeblocks.i, align 8, !annotation !164
  %call.i = call i32 @nilfs_count_free_blocks(ptr noundef %1, ptr noundef nonnull %nfreeblocks.i) #15
  %26 = ptrtoint ptr %nfreeblocks.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %nfreeblocks.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #15
  %s_free_blocks_count.i = getelementptr inbounds %struct.nilfs_super_block, ptr %24, i32 0, i32 16
  %29 = ptrtoint ptr %s_free_blocks_count.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %s_free_blocks_count.i, align 8
  %ns_last_segment_lock.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock.i) #15
  %ns_last_seq.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 23
  %30 = ptrtoint ptr %ns_last_seq.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ns_last_seq.i, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31) #15
  %s_last_seq.i = getelementptr inbounds %struct.nilfs_super_block, ptr %24, i32 0, i32 15
  %33 = ptrtoint ptr %s_last_seq.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %s_last_seq.i, align 8
  %ns_last_pseg.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 22
  %34 = ptrtoint ptr %ns_last_pseg.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ns_last_pseg.i, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35) #15
  %s_last_pseg.i = getelementptr inbounds %struct.nilfs_super_block, ptr %24, i32 0, i32 14
  %37 = ptrtoint ptr %s_last_pseg.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %s_last_pseg.i, align 8
  %ns_last_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 24
  %38 = ptrtoint ptr %ns_last_cno.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ns_last_cno.i, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39) #15
  %s_last_cno.i = getelementptr inbounds %struct.nilfs_super_block, ptr %24, i32 0, i32 13
  %41 = ptrtoint ptr %s_last_cno.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %s_last_cno.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nfreeblocks.i) #15
  %42 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx12.i, align 4
  %tobool3.not = icmp eq ptr %43, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %44 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ns_sbp.i, align 4
  %s_last_cno = getelementptr inbounds %struct.nilfs_super_block, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %s_last_cno to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %s_last_cno, align 8
  %s_last_cno6 = getelementptr inbounds %struct.nilfs_super_block, ptr %43, i32 0, i32 13
  %48 = ptrtoint ptr %s_last_cno6 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %s_last_cno6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %49)
  %cmp = icmp eq i64 %47, %49
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %s_state10 = getelementptr inbounds %struct.nilfs_super_block, ptr %45, i32 0, i32 22
  %50 = ptrtoint ptr %s_state10 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %s_state10, align 4
  %s_state12 = getelementptr inbounds %struct.nilfs_super_block, ptr %43, i32 0, i32 22
  %52 = ptrtoint ptr %s_state12 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %s_state12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %flag.0 = phi i32 [ 1, %if.then8 ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %call13 = call i32 @nilfs_commit_super(ptr noundef %sb, i32 noundef %flag.0)
  br label %if.end14

if.end14:                                         ; preds = %if.end, %nilfs_prepare_super.exit.if.end14_crit_edge, %nilfs_prepare_super.exit.thread
  %ret.0 = phi i32 [ %call13, %if.end ], [ -5, %nilfs_prepare_super.exit.if.end14_crit_edge ], [ -5, %nilfs_prepare_super.exit.thread ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_resize_fs(ptr noundef %sb, i64 noundef %newsize) local_unnamed_addr #0 align 64 {
entry:
  %nfreeblocks.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %5, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %newsize)
  %cmp = icmp ult i64 %shl.i, %newsize
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 28
  tail call void @down_write(ptr noundef %ns_segctor_sem) #15
  %6 = add i64 %newsize, -4096
  %shl = and i64 %6, -4096
  %ns_blocksize_bits = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 44
  %7 = ptrtoint ptr %ns_blocksize_bits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ns_blocksize_bits, align 8
  %sh_prom = zext i32 %8 to i64
  %shr1 = ashr i64 %shl, %sh_prom
  %ns_blocks_per_segment = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 47
  %9 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ns_blocks_per_segment, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr1)
  %cmp173 = icmp ult i64 %shr1, 4294967296
  br i1 %cmp173, label %if.then177, label %if.else183, !prof !166

if.then177:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv178 = trunc i64 %shr1 to i32
  %div181 = udiv i32 %conv178, %10
  %conv182 = zext i32 %div181 to i64
  br label %if.end187

if.else183:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %shr1) #21, !srcloc !167
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then177
  %newnsegs.0 = phi i64 [ %conv182, %if.then177 ], [ %asmresult1.i, %if.else183 ]
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns_sufile, align 4
  %call189 = tail call i32 @nilfs_sufile_resize(ptr noundef %13, i64 noundef %newnsegs.0) #15
  tail call void @up_write(ptr noundef %ns_segctor_sem) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp191 = icmp slt i32 %call189, 0
  br i1 %cmp191, label %if.end187.out_crit_edge, label %if.end194

if.end187.out_crit_edge:                          ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end194:                                        ; preds = %if.end187
  %call195 = tail call i32 @nilfs_construct_segment(ptr noundef %sb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %cmp196 = icmp slt i32 %call195, 0
  br i1 %cmp196, label %if.end194.out_crit_edge, label %if.end199

if.end194.out_crit_edge:                          ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end199:                                        ; preds = %if.end194
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 4
  tail call void @down_write(ptr noundef %ns_sem) #15
  %14 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info, align 16
  %ns_sbh.i = getelementptr inbounds %struct.the_nilfs, ptr %15, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.the_nilfs, ptr %15, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end199.if.end19.i_crit_edge, label %land.lhs.true.i

if.end199.if.end19.i_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.end199
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %b_blocknr.i, align 8
  %ns_first_data_block.i = getelementptr inbounds %struct.the_nilfs, ptr %15, i32 0, i32 50
  %20 = ptrtoint ptr %ns_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ns_first_data_block.i, align 8
  %conv.i346 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv.i346)
  %cmp.i = icmp ugt i64 %19, %conv.i346
  br i1 %cmp.i, label %land.lhs.true.i.land.lhs.true22.i_crit_edge, label %land.lhs.true.i.if.end19.i_crit_edge

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

land.lhs.true.i.land.lhs.true22.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true22.i

if.end19.i:                                       ; preds = %land.lhs.true.i.if.end19.i_crit_edge, %if.end199.if.end19.i_crit_edge
  %22 = ptrtoint ptr %ns_sbh.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ns_sbh.i, align 4
  %b_blocknr9.i = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %b_blocknr9.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %b_blocknr9.i, align 8
  %ns_first_data_block10.i = getelementptr inbounds %struct.the_nilfs, ptr %15, i32 0, i32 50
  %26 = ptrtoint ptr %ns_first_data_block10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ns_first_data_block10.i, align 8
  %conv11.i = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %conv11.i)
  %cmp12.i = icmp ugt i64 %25, %conv11.i
  br i1 %cmp12.i, label %if.end19.i.land.lhs.true22.i_crit_edge, label %if.end19.i.if.end26.i_crit_edge

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

if.end19.i.land.lhs.true22.i_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true22.i

land.lhs.true22.i:                                ; preds = %if.end19.i.land.lhs.true22.i_crit_edge, %land.lhs.true.i.land.lhs.true22.i_crit_edge
  %sb2i.013.i = phi i32 [ 0, %if.end19.i.land.lhs.true22.i_crit_edge ], [ 1, %land.lhs.true.i.land.lhs.true22.i_crit_edge ]
  %blocknr.09.i = phi i64 [ %25, %if.end19.i.land.lhs.true22.i_crit_edge ], [ %19, %land.lhs.true.i.land.lhs.true22.i_crit_edge ]
  %ns_blocksize_bits.i = getelementptr inbounds %struct.the_nilfs, ptr %15, i32 0, i32 44
  %28 = ptrtoint ptr %ns_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ns_blocksize_bits.i, align 8
  %sh_prom.i = zext i32 %29 to i64
  %shl.i347 = shl i64 %blocknr.09.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i347, i64 %shl)
  %cmp23.i = icmp eq i64 %shl.i347, %shl
  br i1 %cmp23.i, label %land.lhs.true22.i.nilfs_move_2nd_super.exit_crit_edge, label %land.lhs.true22.i.if.end26.i_crit_edge

land.lhs.true22.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

land.lhs.true22.i.nilfs_move_2nd_super.exit_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_move_2nd_super.exit

if.end26.i:                                       ; preds = %land.lhs.true22.i.if.end26.i_crit_edge, %if.end19.i.if.end26.i_crit_edge
  %sb2i.012.i = phi i32 [ %sb2i.013.i, %land.lhs.true22.i.if.end26.i_crit_edge ], [ -1, %if.end19.i.if.end26.i_crit_edge ]
  %cmp2010.i = phi i1 [ true, %land.lhs.true22.i.if.end26.i_crit_edge ], [ false, %if.end19.i.if.end26.i_crit_edge ]
  %ns_blocksize_bits27.i = getelementptr inbounds %struct.the_nilfs, ptr %15, i32 0, i32 44
  %30 = ptrtoint ptr %ns_blocksize_bits27.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ns_blocksize_bits27.i, align 8
  %sh_prom28.i = zext i32 %31 to i64
  %shr.i348 = ashr i64 %shl, %sh_prom28.i
  %ns_blocksize.i = getelementptr inbounds %struct.the_nilfs, ptr %15, i32 0, i32 45
  %32 = ptrtoint ptr %ns_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ns_blocksize.i, align 4
  %34 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_bdev, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %36 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__getblk_gfp(ptr noundef %35, i64 noundef %shr.i348, i32 noundef %37, i32 noundef 8) #15
  %tobool31.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end33.i

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.18, i64 noundef %shr.i348) #15
  br label %nilfs_move_2nd_super.exit

if.end33.i:                                       ; preds = %if.end26.i
  %sub.i349 = add i32 %33, -1
  %38 = trunc i64 %shl to i32
  %conv30.i = and i32 %sub.i349, %38
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %conv30.i
  %41 = ptrtoint ptr %ns_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ns_blocksize.i, align 4
  %43 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %42)
  br i1 %cmp2010.i, label %if.then37.i, label %if.else45.i

if.then37.i:                                      ; preds = %if.end33.i
  %arrayidx38.i = getelementptr %struct.the_nilfs, ptr %15, i32 0, i32 7, i32 %sb2i.012.i
  %44 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx38.i, align 4
  %ns_sbsize.i = getelementptr inbounds %struct.the_nilfs, ptr %15, i32 0, i32 10
  %46 = ptrtoint ptr %ns_sbsize.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ns_sbsize.i, align 4
  %48 = call ptr @memcpy(ptr %add.ptr.i, ptr %45, i32 %47)
  %arrayidx40.i = getelementptr %struct.the_nilfs, ptr %15, i32 0, i32 6, i32 %sb2i.012.i
  %49 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx40.i, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.then37.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.then37.i.brelse.exit.i_crit_edge:              ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__brelse(ptr noundef nonnull %50) #15
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.then37.i.brelse.exit.i_crit_edge
  %51 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i, ptr %arrayidx40.i, align 4
  %52 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i, ptr %arrayidx38.i, align 4
  br label %nilfs_move_2nd_super.exit

if.else45.i:                                      ; preds = %if.end33.i
  %53 = ptrtoint ptr %ns_sbh.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ns_sbh.i, align 4
  %b_blocknr48.i = getelementptr inbounds %struct.buffer_head, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %b_blocknr48.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %b_blocknr48.i, align 8
  %ns_first_data_block49.i = getelementptr inbounds %struct.the_nilfs, ptr %15, i32 0, i32 50
  %57 = ptrtoint ptr %ns_first_data_block49.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ns_first_data_block49.i, align 8
  %conv50.i = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %conv50.i)
  %cmp51.i = icmp ult i64 %56, %conv50.i
  br i1 %cmp51.i, label %if.then53.i, label %brelse.exit5.i

if.then53.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %arrayidx57.i = getelementptr %struct.the_nilfs, ptr %15, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i, ptr %arrayidx57.i, align 4
  br label %nilfs_move_2nd_super.exit

brelse.exit5.i:                                   ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #15
  br label %nilfs_move_2nd_super.exit

nilfs_move_2nd_super.exit:                        ; preds = %brelse.exit5.i, %if.then53.i, %brelse.exit.i, %if.then32.i, %land.lhs.true22.i.nilfs_move_2nd_super.exit_crit_edge
  %61 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info, align 16
  %ns_sbp.i = getelementptr inbounds %struct.the_nilfs, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ns_sbp.i, align 4
  %s_magic.i = getelementptr inbounds %struct.nilfs_super_block, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %s_magic.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %66)
  %cmp.not.i351 = icmp eq i16 %66, 13364
  %arrayidx12.i = getelementptr %struct.the_nilfs, ptr %62, i32 0, i32 7, i32 1
  %67 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %68, null
  br i1 %cmp.not.i351, label %if.else11.i, label %if.then.i

if.then.i:                                        ; preds = %nilfs_move_2nd_super.exit
  br i1 %tobool13.not.i, label %if.then.i.nilfs_prepare_super.exit.thread_crit_edge, label %land.lhs.true.i352

if.then.i.nilfs_prepare_super.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread

land.lhs.true.i352:                               ; preds = %if.then.i
  %s_magic4.i = getelementptr inbounds %struct.nilfs_super_block, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %s_magic4.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %s_magic4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %70)
  %cmp6.i = icmp eq i16 %70, 13364
  br i1 %cmp6.i, label %if.then8.i354, label %land.lhs.true.i352.nilfs_prepare_super.exit.thread_crit_edge

land.lhs.true.i352.nilfs_prepare_super.exit.thread_crit_edge: ; preds = %land.lhs.true.i352
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread

if.then8.i354:                                    ; preds = %land.lhs.true.i352
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize.i353 = getelementptr inbounds %struct.the_nilfs, ptr %62, i32 0, i32 10
  %71 = ptrtoint ptr %ns_sbsize.i353 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ns_sbsize.i353, align 4
  %73 = call ptr @memcpy(ptr %64, ptr %68, i32 %72)
  br label %nilfs_prepare_super.exit

nilfs_prepare_super.exit.thread:                  ; preds = %land.lhs.true.i352.nilfs_prepare_super.exit.thread_crit_edge, %if.then.i.nilfs_prepare_super.exit.thread_crit_edge
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.12) #15
  br label %if.end226.thread

if.else11.i:                                      ; preds = %nilfs_move_2nd_super.exit
  br i1 %tobool13.not.i, label %if.else11.i.nilfs_prepare_super.exit_crit_edge, label %land.lhs.true14.i

if.else11.i.nilfs_prepare_super.exit_crit_edge:   ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit

land.lhs.true14.i:                                ; preds = %if.else11.i
  %s_magic16.i = getelementptr inbounds %struct.nilfs_super_block, ptr %68, i32 0, i32 2
  %74 = ptrtoint ptr %s_magic16.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %s_magic16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %75)
  %cmp18.not.i = icmp eq i16 %75, 13364
  br i1 %cmp18.not.i, label %land.lhs.true14.i.nilfs_prepare_super.exit_crit_edge, label %if.then20.i

land.lhs.true14.i.nilfs_prepare_super.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit

if.then20.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize23.i = getelementptr inbounds %struct.the_nilfs, ptr %62, i32 0, i32 10
  %76 = ptrtoint ptr %ns_sbsize23.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ns_sbsize23.i, align 4
  %78 = call ptr @memcpy(ptr %68, ptr %64, i32 %77)
  br label %nilfs_prepare_super.exit

nilfs_prepare_super.exit:                         ; preds = %if.then20.i, %land.lhs.true14.i.nilfs_prepare_super.exit_crit_edge, %if.else11.i.nilfs_prepare_super.exit_crit_edge, %if.then8.i354
  %tobool202.not = icmp eq ptr %ns_sbp.i, null
  br i1 %tobool202.not, label %nilfs_prepare_super.exit.if.end226.thread_crit_edge, label %if.then209, !prof !168

nilfs_prepare_super.exit.if.end226.thread_crit_edge: ; preds = %nilfs_prepare_super.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end226.thread

if.then209:                                       ; preds = %nilfs_prepare_super.exit
  %79 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ns_sbp.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nfreeblocks.i) #15
  %81 = ptrtoint ptr %nfreeblocks.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 -1, ptr %nfreeblocks.i, align 8, !annotation !164
  %call.i = call i32 @nilfs_count_free_blocks(ptr noundef %1, ptr noundef nonnull %nfreeblocks.i) #15
  %82 = ptrtoint ptr %nfreeblocks.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %nfreeblocks.i, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83) #15
  %s_free_blocks_count.i = getelementptr inbounds %struct.nilfs_super_block, ptr %80, i32 0, i32 16
  %85 = ptrtoint ptr %s_free_blocks_count.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %s_free_blocks_count.i, align 8
  %ns_last_segment_lock.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock.i) #15
  %ns_last_seq.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 23
  %86 = ptrtoint ptr %ns_last_seq.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %ns_last_seq.i, align 8
  %88 = call i64 @llvm.bswap.i64(i64 %87) #15
  %s_last_seq.i = getelementptr inbounds %struct.nilfs_super_block, ptr %80, i32 0, i32 15
  %89 = ptrtoint ptr %s_last_seq.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %s_last_seq.i, align 8
  %ns_last_pseg.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 22
  %90 = ptrtoint ptr %ns_last_pseg.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %ns_last_pseg.i, align 8
  %92 = call i64 @llvm.bswap.i64(i64 %91) #15
  %s_last_pseg.i = getelementptr inbounds %struct.nilfs_super_block, ptr %80, i32 0, i32 14
  %93 = ptrtoint ptr %s_last_pseg.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %s_last_pseg.i, align 8
  %ns_last_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 24
  %94 = ptrtoint ptr %ns_last_cno.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %ns_last_cno.i, align 8
  %96 = call i64 @llvm.bswap.i64(i64 %95) #15
  %s_last_cno.i = getelementptr inbounds %struct.nilfs_super_block, ptr %80, i32 0, i32 13
  %97 = ptrtoint ptr %s_last_cno.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %s_last_cno.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nfreeblocks.i) #15
  %98 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ns_sbp.i, align 4
  %s_state = getelementptr inbounds %struct.nilfs_super_block, ptr %99, i32 0, i32 22
  %100 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %s_state, align 4
  %102 = and i16 %101, -1025
  store i16 %102, ptr %s_state, align 4
  %103 = call i64 @llvm.bswap.i64(i64 %newsize)
  %104 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ns_sbp.i, align 4
  %s_dev_size = getelementptr inbounds %struct.nilfs_super_block, ptr %105, i32 0, i32 9
  %106 = ptrtoint ptr %s_dev_size to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %103, ptr %s_dev_size, align 8
  %ns_nsegments = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 46
  %107 = ptrtoint ptr %ns_nsegments to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ns_nsegments, align 8
  %conv217 = zext i32 %108 to i64
  %109 = call i64 @llvm.bswap.i64(i64 %conv217)
  %110 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ns_sbp.i, align 4
  %s_nsegments = getelementptr inbounds %struct.nilfs_super_block, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %s_nsegments to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %109, ptr %s_nsegments, align 8
  %113 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx12.i, align 4
  %tobool220.not = icmp eq ptr %114, null
  br i1 %tobool220.not, label %if.then209.if.end226_crit_edge, label %if.then221

if.then209.if.end226_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end226

if.then221:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #17
  %115 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ns_sbp.i, align 4
  %ns_sbsize = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 10
  %117 = ptrtoint ptr %ns_sbsize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ns_sbsize, align 4
  %119 = call ptr @memcpy(ptr %114, ptr %116, i32 %118)
  br label %if.end226

if.end226.thread:                                 ; preds = %nilfs_prepare_super.exit.if.end226.thread_crit_edge, %nilfs_prepare_super.exit.thread
  tail call void @up_write(ptr noundef %ns_sem) #15
  br label %out

if.end226:                                        ; preds = %if.then221, %if.then209.if.end226_crit_edge
  %call225 = call i32 @nilfs_commit_super(ptr noundef %sb, i32 noundef 1)
  call void @up_write(ptr noundef %ns_sem) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool228.not = icmp eq i32 %call225, 0
  br i1 %tobool228.not, label %if.then229, label %if.end226.out_crit_edge

if.end226.out_crit_edge:                          ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then229:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #17
  %120 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ns_sufile, align 4
  %sub231 = add i64 %newnsegs.0, -1
  %call232 = call i32 @nilfs_sufile_set_alloc_range(ptr noundef %121, i64 noundef 0, i64 noundef %sub231) #15
  br label %out

out:                                              ; preds = %if.then229, %if.end226.out_crit_edge, %if.end226.thread, %if.end194.out_crit_edge, %if.end187.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ -34, %entry.out_crit_edge ], [ %call189, %if.end187.out_crit_edge ], [ %call195, %if.end194.out_crit_edge ], [ %call225, %if.end226.out_crit_edge ], [ 0, %if.then229 ], [ -5, %if.end226.thread ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_resize(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_construct_segment(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_set_alloc_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_attach_checkpoint(ptr noundef %sb, i64 noundef %cno, i32 noundef %curr_mnt, ptr nocapture noundef writeonly %rootp) local_unnamed_addr #0 align 64 {
entry:
  %raw_cp = alloca ptr, align 4
  %bh_cp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_cp) #15
  %2 = ptrtoint ptr %raw_cp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %raw_cp, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh_cp) #15
  %3 = ptrtoint ptr %bh_cp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh_cp, align 4, !annotation !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curr_mnt)
  %tobool.not = icmp eq i32 %curr_mnt, 0
  %spec.select = select i1 %tobool.not, i64 %cno, i64 0
  %call = tail call ptr @nilfs_find_or_create_root(ptr noundef %1, i64 noundef %spec.select) #15
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifile = getelementptr inbounds %struct.nilfs_root, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %ifile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ifile, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end4, label %if.end.reuse_crit_edge

if.end.reuse_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %reuse

if.end4:                                          ; preds = %if.end
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #15
  %ns_cpfile = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_cpfile, align 8
  %call5 = call i32 @nilfs_cpfile_get_checkpoint(ptr noundef %7, i64 noundef %cno, i32 noundef 0, ptr noundef nonnull %raw_cp, ptr noundef nonnull %bh_cp) #15
  call void @up_read(ptr noundef %ns_segctor_sem) #15
  %8 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call5, label %if.end4.failed_crit_edge [
    i32 0, label %if.end14
    i32 -2, label %if.end4.if.then12_crit_edge
    i32 -22, label %if.end4.if.then12_crit_edge51
  ], !prof !169

if.end4.if.then12_crit_edge51:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.end4.if.then12_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.end4.failed_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed

if.then12:                                        ; preds = %if.end4.if.then12_crit_edge, %if.end4.if.then12_crit_edge51
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.13, i64 noundef %cno)
  br label %failed

if.end14:                                         ; preds = %if.end4
  %ns_inode_size = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 51
  %9 = ptrtoint ptr %ns_inode_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ns_inode_size, align 4
  %11 = ptrtoint ptr %raw_cp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raw_cp, align 4
  %cp_ifile_inode = getelementptr inbounds %struct.nilfs_checkpoint, ptr %12, i32 0, i32 8
  %call16 = call i32 @nilfs_ifile_read(ptr noundef %sb, ptr noundef nonnull %call, i32 noundef %10, ptr noundef %cp_ifile_inode, ptr noundef %ifile) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %failed_bh

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %inodes_count = getelementptr inbounds %struct.nilfs_root, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %raw_cp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %raw_cp, align 4
  %cp_inodes_count = getelementptr inbounds %struct.nilfs_checkpoint, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %cp_inodes_count to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cp_inodes_count, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inodes_count, i32 noundef 8) #15
  call void @generic_atomic64_set(ptr noundef %inodes_count, i64 noundef %17) #15
  %blocks_count = getelementptr inbounds %struct.nilfs_root, ptr %call, i32 0, i32 6
  %18 = ptrtoint ptr %raw_cp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %raw_cp, align 4
  %cp_blocks_count = getelementptr inbounds %struct.nilfs_checkpoint, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %cp_blocks_count to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cp_blocks_count, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21)
  %call.i.i50 = call zeroext i1 @__kasan_check_write(ptr noundef %blocks_count, i32 noundef 8) #15
  call void @generic_atomic64_set(ptr noundef %blocks_count, i64 noundef %22) #15
  %23 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ns_cpfile, align 8
  %25 = ptrtoint ptr %bh_cp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bh_cp, align 4
  call void @nilfs_cpfile_put_checkpoint(ptr noundef %24, i64 noundef %cno, ptr noundef %26) #15
  br label %reuse

reuse:                                            ; preds = %if.end19, %if.end.reuse_crit_edge
  %27 = ptrtoint ptr %rootp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %rootp, align 4
  br label %cleanup

failed_bh:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ns_cpfile, align 8
  %30 = ptrtoint ptr %bh_cp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bh_cp, align 4
  call void @nilfs_cpfile_put_checkpoint(ptr noundef %29, i64 noundef %cno, ptr noundef %31) #15
  br label %failed

failed:                                           ; preds = %failed_bh, %if.then12, %if.end4.failed_crit_edge
  %err.0 = phi i32 [ -22, %if.then12 ], [ %call16, %failed_bh ], [ %call5, %if.end4.failed_crit_edge ]
  call void @nilfs_put_root(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %failed, %reuse, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %reuse ], [ %err.0, %failed ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_cp) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cp) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_find_or_create_root(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_get_checkpoint(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_ifile_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_cpfile_put_checkpoint(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_put_root(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_read_super_block(ptr nocapture noundef readonly %sb, i64 noundef %pos, i32 noundef %blocksize, ptr nocapture noundef writeonly %pbh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %pos)
  %cmp164 = icmp ult i64 %pos, 4294967296
  br i1 %cmp164, label %if.then168, label %if.else174, !prof !166

if.then168:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv169 = trunc i64 %pos to i32
  %div172 = udiv i32 %conv169, %blocksize
  %0 = mul i32 %div172, %blocksize
  %rem170.decomposed = sub i32 %conv169, %0
  %conv173 = zext i32 %div172 to i64
  br label %if.end178

if.else174:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %blocksize, i64 %pos) #21, !srcloc !167
  %asmresult.i268 = extractvalue { i64, i64 } %1, 0
  %asmresult1.i = extractvalue { i64, i64 } %1, 1
  %shr.i = lshr i64 %asmresult.i268, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end178

if.end178:                                        ; preds = %if.else174, %if.then168
  %sb_index.0 = phi i64 [ %conv173, %if.then168 ], [ %asmresult1.i, %if.else174 ]
  %__rem.0 = phi i32 [ %rem170.decomposed, %if.then168 ], [ %conv.i, %if.else174 ]
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %3, i64 noundef %sb_index.0, i32 noundef %5, i32 noundef 8) #15
  %6 = ptrtoint ptr %pbh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %pbh, align 4
  %tobool181.not = icmp eq ptr %call.i, null
  br i1 %tobool181.not, label %if.end178.cleanup_crit_edge, label %if.end183

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end183:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #17
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %__rem.0
  br label %cleanup

cleanup:                                          ; preds = %if.end183, %if.end178.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end183 ], [ null, %if.end178.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_store_magic_and_option(ptr noundef %sb, ptr nocapture noundef readonly %sbp, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_magic = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 2
  %2 = ptrtoint ptr %s_magic to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %s_magic, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %s_magic1 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %5 = ptrtoint ptr %s_magic1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %s_magic1, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %or = or i32 %7, 1024
  store i32 %or, ptr %s_flags, align 4
  %ns_mount_opt.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %ns_mount_opt.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4128, ptr %ns_mount_opt.i, align 4
  %s_def_resuid = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 27
  %9 = ptrtoint ptr %s_def_resuid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_def_resuid, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv2 = zext i16 %11 to i32
  %ns_resuid = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 40
  %12 = ptrtoint ptr %ns_resuid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv2, ptr %ns_resuid, align 8
  %s_def_resgid = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 28
  %13 = ptrtoint ptr %s_def_resgid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %s_def_resgid, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv3 = zext i16 %15 to i32
  %ns_resgid = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 41
  %16 = ptrtoint ptr %ns_resgid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv3, ptr %ns_resgid, align 4
  %s_c_interval = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 36
  %17 = ptrtoint ptr %s_c_interval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_c_interval, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %ns_interval = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 42
  %20 = ptrtoint ptr %ns_interval to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ns_interval, align 8
  %s_c_block_max = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 37
  %21 = ptrtoint ptr %s_c_block_max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_c_block_max, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %ns_watermark = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 43
  %24 = ptrtoint ptr %ns_watermark to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ns_watermark, align 4
  %call = tail call fastcc i32 @parse_options(ptr noundef %data, ptr noundef %sb, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 -22, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_options(ptr noundef %options, ptr noundef %sb, i32 noundef %is_remount) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #15
  %tobool.not = icmp eq ptr %options, null
  %3 = call ptr @memset(ptr %args, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup51_crit_edge, label %while.cond.preheader

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

while.cond.preheader:                             ; preds = %entry
  %call74 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.19) #15
  %cmp.not75 = icmp eq ptr %call74, null
  br i1 %cmp.not75, label %while.cond.preheader.cleanup51_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup51_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ns_mount_opt49 = getelementptr inbounds %struct.the_nilfs, ptr %2, i32 0, i32 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_remount)
  %tobool39.not = icmp eq i32 %is_remount, 0
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call76 = phi ptr [ %call74, %while.body.lr.ph ], [ %call, %cleanup.while.body_crit_edge ]
  %4 = ptrtoint ptr %call76 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %if.end3

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %while.body
  %call4 = call i32 @match_token(ptr noundef nonnull %call76, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #15
  %6 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call4, label %if.end3.cleanup51.sink.split_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb5
    i32 6, label %sw.bb7
    i32 1, label %sw.bb23
    i32 2, label %sw.bb28
    i32 0, label %sw.bb33
    i32 5, label %sw.bb38
    i32 7, label %sw.bb42
    i32 8, label %sw.bb45
    i32 9, label %sw.bb48
  ]

if.end3.cleanup51.sink.split_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51.sink.split

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ns_mount_opt49, align 4
  %or = or i32 %8, 4096
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ns_mount_opt49, align 4
  %and = and i32 %10, -4097
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end3
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args, align 4
  %call8 = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(8) @.str.20) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ns_mount_opt49, align 4
  %and12 = and i32 %14, -8193
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb7
  %call15 = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(7) @.str.21) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else.cleanup51_crit_edge

if.else.cleanup51_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ns_mount_opt49, align 4
  %or19 = or i32 %16, 8192
  br label %cleanup.sink.split

sw.bb23:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ns_mount_opt49, align 4
  %and25 = and i32 %18, -113
  %or26 = or i32 %and25, 64
  br label %cleanup.sink.split

sw.bb28:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ns_mount_opt49, align 4
  %and30 = and i32 %20, -113
  %or31 = or i32 %and30, 32
  br label %cleanup.sink.split

sw.bb33:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ns_mount_opt49, align 4
  %and35 = and i32 %22, -113
  %or36 = or i32 %and35, 16
  br label %cleanup.sink.split

sw.bb38:                                          ; preds = %if.end3
  br i1 %tobool39.not, label %sw.bb38.cleanup_crit_edge, label %sw.bb38.cleanup51.sink.split_crit_edge

sw.bb38.cleanup51.sink.split_crit_edge:           ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51.sink.split

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb42:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ns_mount_opt49, align 4
  %or44 = or i32 %24, 16384
  br label %cleanup.sink.split

sw.bb45:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ns_mount_opt49, align 4
  %or47 = or i32 %26, 32768
  br label %cleanup.sink.split

sw.bb48:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ns_mount_opt49, align 4
  %and50 = and i32 %28, -32769
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb48, %sw.bb45, %sw.bb42, %sw.bb33, %sw.bb28, %sw.bb23, %if.then17, %if.then10, %sw.bb5, %sw.bb
  %or.sink = phi i32 [ %or, %sw.bb ], [ %and, %sw.bb5 ], [ %or26, %sw.bb23 ], [ %or31, %sw.bb28 ], [ %or36, %sw.bb33 ], [ %or44, %sw.bb42 ], [ %or47, %sw.bb45 ], [ %and50, %sw.bb48 ], [ %or19, %if.then17 ], [ %and12, %if.then10 ]
  %29 = ptrtoint ptr %ns_mount_opt49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.sink, ptr %ns_mount_opt49, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb38.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.19) #15
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %cleanup.cleanup51_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.cleanup51_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

cleanup51.sink.split:                             ; preds = %sw.bb38.cleanup51.sink.split_crit_edge, %if.end3.cleanup51.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %sw.bb38.cleanup51.sink.split_crit_edge ], [ @.str.23, %if.end3.cleanup51.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull %.str.22.sink, ptr noundef nonnull %call76)
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup51.sink.split, %cleanup.cleanup51_crit_edge, %if.else.cleanup51_crit_edge, %while.cond.preheader.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.2 = phi i32 [ 1, %entry.cleanup51_crit_edge ], [ 1, %while.cond.preheader.cleanup51_crit_edge ], [ 0, %cleanup51.sink.split ], [ 1, %cleanup.cleanup51_crit_edge ], [ 0, %if.else.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #15
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_check_feature_compatibility(ptr noundef %sb, ptr nocapture noundef readonly %sbp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_feature_incompat = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 40
  %0 = ptrtoint ptr %s_feature_incompat to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %s_feature_incompat, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %s_feature_compat_ro = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 39
  %2 = ptrtoint ptr %s_feature_compat_ro to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %s_feature_compat_ro, align 8
  %4 = and i64 %3, -72057594037927937
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool2.not = icmp eq i64 %4, 0
  %or.cond = select i1 %tobool.i, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink11 = phi i64 [ %1, %entry.cleanup.sink.split_crit_edge ], [ %4, %if.end.cleanup.sink.split_crit_edge ]
  %.str.15.sink = phi ptr [ @.str.14, %entry.cleanup.sink.split_crit_edge ], [ @.str.15, %if.end.cleanup.sink.split_crit_edge ]
  %7 = tail call i64 @llvm.bswap.i64(i64 %.sink11)
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull %.str.15.sink, i64 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_checkpoint_is_mounted(ptr noundef %sb, i64 noundef %cno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_cno = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ns_cno to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ns_cno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %cno)
  %cmp = icmp ult i64 %3, %cno
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ns_last_segment_lock.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock.i) #15
  %ns_last_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %ns_last_cno.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ns_last_cno.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock.i) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %cno)
  %cmp1.not = icmp ugt i64 %5, %cno
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @nilfs_lookup_root(ptr noundef %1, i64 noundef %cno) #15
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %call6 = tail call ptr @nilfs_ilookup(ptr noundef %sb, ptr noundef nonnull %call4, i32 noundef 2) #15
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.if.end14_crit_edge, label %if.then8

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then8:                                         ; preds = %if.then5
  %call9 = tail call ptr @d_find_alias(ptr noundef nonnull %call6) #15
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then11

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @shrink_dcache_parent(ptr noundef nonnull %call9) #15
  %count.i.i = getelementptr inbounds %struct.dentry, ptr %call9, i32 0, i32 7, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp ugt i32 %7, 1
  %conv = zext i1 %cmp.i to i32
  tail call void @dput(ptr noundef nonnull %call9) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8.if.end13_crit_edge
  %ret.0 = phi i32 [ %conv, %if.then11 ], [ 0, %if.then8.if.end13_crit_edge ]
  tail call void @iput(ptr noundef nonnull %call6) #15
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5.if.end14_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end13 ], [ 0, %if.then5.if.end14_crit_edge ]
  tail call void @nilfs_put_root(ptr noundef nonnull %call4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %ret.1, %if.end14 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_lookup_root(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_ilookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nilfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  %val.i.i = alloca i64, align 8
  %options.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %flags.addr = alloca i32, align 4
  %root_dentry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_dentry) #15
  %1 = ptrtoint ptr %root_dentry to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_dentry, align 4, !annotation !164
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 131, i32 129
  %call = tail call ptr @blkdev_get_by_path(ptr noundef %dev_name, i32 noundef %spec.select, ptr noundef %fs_type) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.i) #15
  %2 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %options.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #15
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  br label %do.body.i

do.body.i:                                        ; preds = %do.end22.i.do.body.i_crit_edge, %if.end6
  %sd.sroa.12125.0 = phi i64 [ 0, %if.end6 ], [ %sd.sroa.12125.2, %do.end22.i.do.body.i_crit_edge ]
  %call.i = call ptr @strsep(ptr noundef nonnull %options.i, ptr noundef nonnull @.str.19) #15
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %do.body.i.if.end6.i_crit_edge, label %land.lhs.true.i

do.body.i.if.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call1.i = call i32 @match_token(ptr noundef nonnull %call.i, ptr noundef nonnull @tokens, ptr noundef nonnull %args.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 5
  br i1 %cmp2.i, label %if.then4.i, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i.i) #15
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %val.i.i, align 8, !annotation !164
  br i1 %tobool.not, label %if.then4.i.parse_error.i.i_crit_edge, label %if.end.i.i

if.then4.i.parse_error.i.i_crit_edge:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %parse_error.i.i

if.end.i.i:                                       ; preds = %if.then4.i
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  %call.i.i = call i32 @kstrtoull(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %val.i.i) #15
  %9 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call.i.i, label %if.else.i.i [
    i32 0, label %if.else5.i.i
    i32 -34, label %if.end.i.i.parse_error.i.i_crit_edge
  ]

if.end.i.i.parse_error.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %parse_error.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %parse_error.i.i

if.else5.i.i:                                     ; preds = %if.end.i.i
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %val.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp6.i.i = icmp eq i64 %11, 0
  br i1 %cmp6.i.i, label %if.else5.i.i.parse_error.i.i_crit_edge, label %if.else5.i.i.nilfs_parse_snapshot_option.exit.i_crit_edge

if.else5.i.i.nilfs_parse_snapshot_option.exit.i_crit_edge: ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_parse_snapshot_option.exit.i

if.else5.i.i.parse_error.i.i_crit_edge:           ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %parse_error.i.i

parse_error.i.i:                                  ; preds = %if.else5.i.i.parse_error.i.i_crit_edge, %if.else.i.i, %if.end.i.i.parse_error.i.i_crit_edge, %if.then4.i.parse_error.i.i_crit_edge
  %msg.0.i.i = phi ptr [ @.str.40, %if.else.i.i ], [ @.str.38, %if.then4.i.parse_error.i.i_crit_edge ], [ @.str.39, %if.end.i.i.parse_error.i.i_crit_edge ], [ @.str.41, %if.else5.i.i.parse_error.i.i_crit_edge ]
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull %call.i, ptr noundef nonnull %msg.0.i.i) #15
  br label %nilfs_parse_snapshot_option.exit.i

nilfs_parse_snapshot_option.exit.i:               ; preds = %parse_error.i.i, %if.else5.i.i.nilfs_parse_snapshot_option.exit.i_crit_edge
  %sd.sroa.12125.1 = phi i64 [ %sd.sroa.12125.0, %parse_error.i.i ], [ %11, %if.else5.i.i.nilfs_parse_snapshot_option.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ 1, %parse_error.i.i ], [ 0, %if.else5.i.i.nilfs_parse_snapshot_option.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i.i) #15
  br label %if.end6.i

if.end6.i:                                        ; preds = %nilfs_parse_snapshot_option.exit.i, %if.then.i.if.end6.i_crit_edge, %land.lhs.true.i.if.end6.i_crit_edge, %do.body.i.if.end6.i_crit_edge
  %sd.sroa.12125.2 = phi i64 [ %sd.sroa.12125.0, %do.body.i.if.end6.i_crit_edge ], [ %sd.sroa.12125.0, %land.lhs.true.i.if.end6.i_crit_edge ], [ %sd.sroa.12125.1, %nilfs_parse_snapshot_option.exit.i ], [ %sd.sroa.12125.0, %if.then.i.if.end6.i_crit_edge ]
  %ret.1.i = phi i32 [ 0, %do.body.i.if.end6.i_crit_edge ], [ 0, %land.lhs.true.i.if.end6.i_crit_edge ], [ %retval.0.i.i, %nilfs_parse_snapshot_option.exit.i ], [ 0, %if.then.i.if.end6.i_crit_edge ]
  %12 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %options.i, align 4
  %tobool7.not.i = icmp eq ptr %13, null
  br i1 %tobool7.not.i, label %nilfs_identify.exit, label %do.body10.i

do.body10.i:                                      ; preds = %if.end6.i
  %cmp11.i = icmp eq ptr %13, %data
  br i1 %cmp11.i, label %do.body16.i, label %do.end22.i, !prof !168

do.body16.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1247, 0\0A.popsection", ""() #15, !srcloc !170
  unreachable

do.end22.i:                                       ; preds = %do.body10.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 -1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 44, ptr %add.ptr.i, align 1
  %tobool24.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool24.not.i, label %do.end22.i.do.body.i_crit_edge, label %nilfs_identify.exit.thread

do.end22.i.do.body.i_crit_edge:                   ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

nilfs_identify.exit.thread:                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #15
  br label %if.then78

nilfs_identify.exit:                              ; preds = %if.end6.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool9.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool9.not, label %if.end11, label %nilfs_identify.exit.if.then78_crit_edge

nilfs_identify.exit.if.then78_crit_edge:          ; preds = %nilfs_identify.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then78

if.end11:                                         ; preds = %nilfs_identify.exit
  %bd_fsfreeze_mutex = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %bd_fsfreeze_mutex, i32 noundef 0) #15
  %bd_fsfreeze_count = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 19
  %15 = ptrtoint ptr %bd_fsfreeze_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bd_fsfreeze_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %bd_fsfreeze_mutex) #15
  br label %if.then78

if.end17:                                         ; preds = %if.end11
  %call19 = call ptr @sget(ptr noundef %fs_type, ptr noundef nonnull @nilfs_test_bdev_super, ptr noundef nonnull @nilfs_set_bdev_super, i32 noundef %flags, ptr noundef %call) #15
  call void @mutex_unlock(ptr noundef %bd_fsfreeze_mutex) #15
  %cmp.i114 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %call19 to i32
  br label %if.then78

if.end25:                                         ; preds = %if.end17
  %s_root = getelementptr inbounds %struct.super_block, ptr %call19, i32 0, i32 13
  %18 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_root, align 64
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  %s_mode = getelementptr inbounds %struct.super_block, ptr %call19, i32 0, i32 42
  %20 = ptrtoint ptr %s_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %s_mode, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %call19, i32 0, i32 39
  %call29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %s_id, i32 noundef 32, ptr noundef nonnull @.str.34, ptr noundef %call)
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 7
  %21 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bd_inode.i, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %24 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call32 = call i32 @sb_set_blocksize(ptr noundef %call19, i32 noundef %shl.i) #15
  %call35 = call fastcc i32 @nilfs_fill_super(ptr noundef %call19, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end60, label %failed.thread144

failed.thread144:                                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  call void @deactivate_locked_super(ptr noundef %call19) #15
  br label %if.end80

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sd.sroa.12125.2)
  %tobool41.not = icmp eq i64 %sd.sroa.12125.2, 0
  br i1 %tobool41.not, label %if.then42, label %if.else.if.then63_crit_edge

if.else.if.then63_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then63

if.then42:                                        ; preds = %if.else
  call void @shrink_dcache_parent(ptr noundef nonnull %19) #15
  %count.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 7, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i115 = icmp ugt i32 %26, 1
  br i1 %cmp.i115, label %if.then45, label %if.else53

if.then45:                                        ; preds = %if.then42
  %s_flags46 = getelementptr inbounds %struct.super_block, ptr %call19, i32 0, i32 10
  %27 = ptrtoint ptr %s_flags46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_flags46, align 4
  %xor = xor i32 %28, %flags
  %and47 = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then45.if.else69_crit_edge, label %if.then49

if.then45.if.else69_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else69

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond51 = select i1 %tobool.i.not, ptr @.str.37, ptr @.str.36
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %call19, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond51)
  br label %failed.thread140

if.else53:                                        ; preds = %if.then42
  %call54 = call i32 @nilfs_remount(ptr noundef %call19, ptr noundef nonnull %flags.addr, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.else53.if.else69_crit_edge, label %if.else53.failed.thread140_crit_edge

if.else53.failed.thread140_crit_edge:             ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed.thread140

if.else53.if.else69_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else69

if.end60:                                         ; preds = %if.then27
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call19, i32 0, i32 10
  %29 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_flags, align 4
  %or39 = or i32 %30, 1073741824
  store i32 %or39, ptr %s_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sd.sroa.12125.2)
  %tobool62.not = icmp eq i64 %sd.sroa.12125.2, 0
  br i1 %tobool62.not, label %if.end60.if.else69_crit_edge, label %if.end60.if.then63_crit_edge

if.end60.if.then63_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then63

if.end60.if.else69_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else69

if.then63:                                        ; preds = %if.end60.if.then63_crit_edge, %if.else.if.then63_crit_edge
  %call65 = call fastcc i32 @nilfs_attach_snapshot(ptr noundef %call19, i64 noundef %sd.sroa.12125.2, ptr noundef nonnull %root_dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then63.if.end72_crit_edge, label %failed

if.then63.if.end72_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.else69:                                        ; preds = %if.end60.if.else69_crit_edge, %if.else53.if.else69_crit_edge, %if.then45.if.else69_crit_edge
  %31 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_root, align 64
  %tobool.not.i116 = icmp eq ptr %32, null
  br i1 %tobool.not.i116, label %if.else69.dget.exit_crit_edge, label %if.then.i117

if.else69.dget.exit_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #17
  br label %dget.exit

if.then.i117:                                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #17
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #15
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i117, %if.else69.dget.exit_crit_edge
  %33 = ptrtoint ptr %root_dentry to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %root_dentry, align 4
  br label %if.end72

if.end72:                                         ; preds = %dget.exit, %if.then63.if.end72_crit_edge
  br i1 %tobool26.not, label %if.end72.if.end76_crit_edge, label %if.then74

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  call void @blkdev_put(ptr noundef %call, i32 noundef %spec.select) #15
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end72.if.end76_crit_edge
  %34 = ptrtoint ptr %root_dentry to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %root_dentry, align 4
  br label %cleanup

failed.thread140:                                 ; preds = %if.else53.failed.thread140_crit_edge, %if.then49
  %err.0.ph = phi i32 [ %call54, %if.else53.failed.thread140_crit_edge ], [ -16, %if.then49 ]
  call void @deactivate_locked_super(ptr noundef %call19) #15
  br label %if.then78

failed:                                           ; preds = %if.then63
  call void @deactivate_locked_super(ptr noundef %call19) #15
  br i1 %tobool26.not, label %failed.if.end80_crit_edge, label %failed.if.then78_crit_edge

failed.if.then78_crit_edge:                       ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then78

failed.if.end80_crit_edge:                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then78:                                        ; preds = %failed.if.then78_crit_edge, %failed.thread140, %if.then23, %if.then14, %nilfs_identify.exit.if.then78_crit_edge, %nilfs_identify.exit.thread
  %err.1138 = phi i32 [ %call65, %failed.if.then78_crit_edge ], [ %err.0.ph, %failed.thread140 ], [ -22, %nilfs_identify.exit.thread ], [ -22, %nilfs_identify.exit.if.then78_crit_edge ], [ %17, %if.then23 ], [ -16, %if.then14 ]
  call void @blkdev_put(ptr noundef %call, i32 noundef %spec.select) #15
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %failed.if.end80_crit_edge, %failed.thread144
  %err.1137 = phi i32 [ %err.1138, %if.then78 ], [ %call65, %failed.if.end80_crit_edge ], [ %call35, %failed.thread144 ]
  %36 = inttoptr i32 %err.1137 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end76, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %36, %if.end80 ], [ %35, %if.end76 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_dentry) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nilfs_fs() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @nilfs_destroy_cachep()
  tail call void @nilfs_sysfs_exit() #15
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @nilfs_fs_type) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_destroy_cachep() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #15
  %0 = load ptr, ptr @nilfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  %1 = load ptr, ptr @nilfs_transaction_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #15
  %2 = load ptr, ptr @nilfs_segbuf_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #15
  %3 = load ptr, ptr @nilfs_btree_path_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_sysfs_exit() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nilfs_fs() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nilfs_init_cachep() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nilfs_sysfs_init() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.free_cachep_crit_edge

if.end.free_cachep_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_cachep

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_filesystem(ptr noundef nonnull @nilfs_fs_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %deinit_sysfs_entry

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #18
  br label %cleanup

deinit_sysfs_entry:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nilfs_sysfs_exit() #15
  br label %free_cachep

free_cachep:                                      ; preds = %deinit_sysfs_entry, %if.end.free_cachep_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.free_cachep_crit_edge ], [ %call5, %deinit_sysfs_entry ]
  tail call fastcc void @nilfs_destroy_cachep()
  br label %cleanup

cleanup:                                          ; preds = %free_cachep, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %err.0, %free_cachep ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sync_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_fall_back_super_block(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nilfs_test_bdev_super(ptr nocapture noundef readonly %s, ptr noundef readnone %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nilfs_set_bdev_super(ptr nocapture noundef writeonly %s, ptr noundef %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bd_dev, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %s_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %s_dev, align 8
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_fill_super(ptr noundef %sb, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %fsroot = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsroot) #15
  %0 = ptrtoint ptr %fsroot to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fsroot, align 4, !annotation !164
  %call = tail call ptr @alloc_nilfs(ptr noundef %sb) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %s_fs_info, align 16
  %call1 = tail call i32 @init_nilfs(ptr noundef nonnull %call, ptr noundef %sb, ptr noundef %data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.failed_nilfs_crit_edge

if.end.failed_nilfs_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_nilfs

if.end4:                                          ; preds = %if.end
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nilfs_sops, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %3 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nilfs_export_ops, ptr %s_export_op, align 16
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %s_root, align 64
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %5 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %s_time_gran, align 4
  %s_max_links = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 41
  %6 = ptrtoint ptr %s_max_links to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32000, ptr %s_max_links, align 128
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %7 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdi, align 4
  %refcnt.i = getelementptr inbounds %struct.backing_dev_info, ptr %12, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !171
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !168

if.end4.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end4
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.bdi_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !166

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.bdi_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bdi_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %bdi_get.exit

bdi_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.bdi_get.exit_crit_edge
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 27
  %15 = ptrtoint ptr %s_bdi to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %s_bdi, align 8
  %call6 = tail call i32 @load_nilfs(ptr noundef nonnull %call, ptr noundef %sb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %bdi_get.exit.failed_nilfs_crit_edge

bdi_get.exit.failed_nilfs_crit_edge:              ; preds = %bdi_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_nilfs

if.end9:                                          ; preds = %bdi_get.exit
  %ns_last_segment_lock.i = getelementptr inbounds %struct.the_nilfs, ptr %call, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock.i) #15
  %ns_last_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %call, i32 0, i32 24
  %16 = ptrtoint ptr %ns_last_cno.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ns_last_cno.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock.i) #15
  %call11 = call i32 @nilfs_attach_checkpoint(ptr noundef %sb, i64 noundef %17, i32 noundef 1, ptr noundef nonnull %fsroot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.43, i32 noundef %call11, i64 noundef %17)
  br label %failed_unload

if.end14:                                         ; preds = %if.end9
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %18 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then16, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  %20 = ptrtoint ptr %fsroot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fsroot, align 4
  %call17 = tail call i32 @nilfs_attach_log_writer(ptr noundef %sb, ptr noundef %21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then16.failed_checkpoint_crit_edge

if.then16.failed_checkpoint_crit_edge:            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_checkpoint

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %22 = ptrtoint ptr %fsroot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fsroot, align 4
  %call23 = tail call fastcc i32 @nilfs_get_root_dentry(ptr noundef %sb, ptr noundef %23, ptr noundef %s_root)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %failed_segctor

if.end26:                                         ; preds = %if.end21
  tail call void @nilfs_put_root(ptr noundef %23) #15
  %24 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_flags.i, align 4
  %and.i2 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.i3.not = icmp eq i32 %and.i2, 0
  br i1 %tobool.i3.not, label %if.then28, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %call, i32 0, i32 4
  tail call void @down_write(ptr noundef %ns_sem) #15
  tail call fastcc void @nilfs_setup_super(ptr noundef %sb, i32 noundef 1)
  tail call void @up_write(ptr noundef %ns_sem) #15
  br label %cleanup

failed_segctor:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nilfs_detach_log_writer(ptr noundef %sb) #15
  br label %failed_checkpoint

failed_checkpoint:                                ; preds = %failed_segctor, %if.then16.failed_checkpoint_crit_edge
  %err.0 = phi i32 [ %call23, %failed_segctor ], [ %call17, %if.then16.failed_checkpoint_crit_edge ]
  %26 = ptrtoint ptr %fsroot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fsroot, align 4
  tail call void @nilfs_put_root(ptr noundef %27) #15
  br label %failed_unload

failed_unload:                                    ; preds = %failed_checkpoint, %if.then13
  %err.1 = phi i32 [ %call11, %if.then13 ], [ %err.0, %failed_checkpoint ]
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %call, i32 0, i32 31
  %28 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ns_sufile, align 4
  tail call void @iput(ptr noundef %29) #15
  %ns_cpfile = getelementptr inbounds %struct.the_nilfs, ptr %call, i32 0, i32 30
  %30 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ns_cpfile, align 8
  tail call void @iput(ptr noundef %31) #15
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %call, i32 0, i32 29
  %32 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ns_dat, align 4
  tail call void @iput(ptr noundef %33) #15
  br label %failed_nilfs

failed_nilfs:                                     ; preds = %failed_unload, %bdi_get.exit.failed_nilfs_crit_edge, %if.end.failed_nilfs_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.failed_nilfs_crit_edge ], [ %call6, %bdi_get.exit.failed_nilfs_crit_edge ], [ %err.1, %failed_unload ]
  tail call void @destroy_nilfs(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %failed_nilfs, %if.then28, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %failed_nilfs ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsroot) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_remount(ptr noundef %sb, ptr nocapture noundef readonly %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #15
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %ns_mount_opt = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ns_mount_opt, align 4
  %call1 = tail call fastcc i32 @parse_options(ptr noundef %data, ptr noundef %sb, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.restore_opts_crit_edge, label %if.end

entry.restore_opts_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %restore_opts

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %and = and i32 %7, -65537
  store i32 %and, ptr %s_flags, align 4
  %ns_sem.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 4
  tail call void @down_read(ptr noundef %ns_sem.i) #15
  %ns_mount_state.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %ns_mount_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ns_mount_state.i, align 8
  %and.i = and i32 %9, 1
  tail call void @up_read(ptr noundef %ns_sem.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.56)
  br label %restore_opts

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags, align 4
  %and.i75 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool.i = icmp ne i32 %and.i75, 0
  %14 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  %cmp = xor i1 %15, %tobool.i
  br i1 %cmp, label %if.end7.cleanup42_crit_edge, label %if.end14

if.end7.cleanup42_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup42

if.end14:                                         ; preds = %if.end7
  br i1 %15, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nilfs_detach_log_writer(ptr noundef %sb) #15
  %16 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags, align 4
  %or = or i32 %17, 1
  store i32 %or, ptr %s_flags, align 4
  tail call void @down_write(ptr noundef %ns_sem.i) #15
  %call19 = tail call i32 @nilfs_cleanup_super(ptr noundef %sb)
  tail call void @up_write(ptr noundef %ns_sem.i) #15
  br label %cleanup42

if.else:                                          ; preds = %if.end14
  tail call void @down_read(ptr noundef %ns_sem.i) #15
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ns_sbp, align 4
  %s_feature_compat_ro = getelementptr inbounds %struct.nilfs_super_block, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %s_feature_compat_ro to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s_feature_compat_ro, align 8
  %22 = and i64 %21, -72057594037927937
  tail call void @up_read(ptr noundef %ns_sem.i) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool24.not = icmp eq i64 %22, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %23 = tail call i64 @llvm.bswap.i64(i64 %22)
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.57, i64 noundef %23)
  br label %restore_opts

if.end26:                                         ; preds = %if.else
  %24 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_flags, align 4
  %and28 = and i32 %25, -2
  store i32 %and28, ptr %s_flags, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %26 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i, align 8
  %i_root = getelementptr i8, ptr %29, i32 -8
  %30 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_root, align 8
  %call31 = tail call i32 @nilfs_attach_log_writer(ptr noundef %sb, ptr noundef %31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %if.end26.restore_opts_crit_edge

if.end26.restore_opts_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %restore_opts

cleanup:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @down_write(ptr noundef %ns_sem.i) #15
  tail call fastcc void @nilfs_setup_super(ptr noundef %sb, i32 noundef 1)
  tail call void @up_write(ptr noundef %ns_sem.i) #15
  br label %cleanup42

restore_opts:                                     ; preds = %if.end26.restore_opts_crit_edge, %if.then25, %if.then6, %entry.restore_opts_crit_edge
  %err.1 = phi i32 [ -22, %if.then6 ], [ -22, %entry.restore_opts_crit_edge ], [ %call31, %if.end26.restore_opts_crit_edge ], [ -30, %if.then25 ]
  %32 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %3, ptr %s_flags, align 4
  %33 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %5, ptr %ns_mount_opt, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %restore_opts, %cleanup, %if.then17, %if.end7.cleanup42_crit_edge
  %retval.0 = phi i32 [ %err.1, %restore_opts ], [ 0, %cleanup ], [ 0, %if.then17 ], [ 0, %if.end7.cleanup42_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_attach_snapshot(ptr noundef %s, i64 noundef %cno, ptr nocapture noundef writeonly %root_dentry) unnamed_addr #0 align 64 {
entry:
  %root = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root) #15
  %2 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %root, align 4, !annotation !164
  %ns_snapshot_mount_mutex = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ns_snapshot_mount_mutex, i32 noundef 0) #15
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #15
  %ns_cpfile = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 30
  %3 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns_cpfile, align 8
  %call = tail call i32 @nilfs_cpfile_is_snapshot(ptr noundef %4, i64 noundef %cno) #15
  tail call void @up_read(ptr noundef %ns_segctor_sem) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp2 = icmp eq i32 %call, -2
  %spec.select = select i1 %cmp2, i32 -22, i32 %call
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %s, ptr noundef nonnull @.str.58, i64 noundef %cno)
  br label %out

if.end4:                                          ; preds = %if.else
  %call5 = call i32 @nilfs_attach_checkpoint(ptr noundef %s, i64 noundef %cno, i32 noundef 0, ptr noundef nonnull %root)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %s, ptr noundef nonnull @.str.59, i32 noundef %call5, i64 noundef %cno)
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root, align 4
  %call9 = tail call fastcc i32 @nilfs_get_root_dentry(ptr noundef %s, ptr noundef %6, ptr noundef %root_dentry)
  tail call void @nilfs_put_root(ptr noundef %6) #15
  br label %out

out:                                              ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %ret.0 = phi i32 [ %spec.select, %if.then ], [ %call5, %if.then7 ], [ %call9, %if.end8 ], [ -22, %if.then3 ]
  tail call void @mutex_unlock(ptr noundef %ns_snapshot_mount_mutex) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root) #15
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_nilfs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_nilfs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @load_nilfs(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_attach_log_writer(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_get_root_dentry(ptr noundef %sb, ptr noundef %root, ptr nocapture noundef writeonly %root_dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nilfs_iget(ptr noundef %sb, ptr noundef %root, i32 noundef 2) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.52, i32 noundef %0)
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %call, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %4 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false4

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool5.not = icmp eq i64 %7, 0
  br i1 %tobool5.not, label %lor.lhs.false4.if.then6_crit_edge, label %if.end7

lor.lhs.false4.if.then6_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false4.if.then6_crit_edge, %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void @iput(ptr noundef %call) #15
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.53)
  br label %out

if.end7:                                          ; preds = %lor.lhs.false4
  %8 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %root, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp8 = icmp eq i64 %9, 0
  br i1 %cmp8, label %if.then10, label %if.else19

if.then10:                                        ; preds = %if.end7
  %call11 = tail call ptr @d_find_alias(ptr noundef %call) #15
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  %call14 = tail call ptr @d_make_root(ptr noundef %call) #15
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then13.failed_dentry_crit_edge, label %if.then13.if.end25_crit_edge

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then13.failed_dentry_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_dentry

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef %call) #15
  br label %if.end25

if.else19:                                        ; preds = %if.end7
  %call20 = tail call ptr @d_obtain_root(ptr noundef %call) #15
  %cmp.i45 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then22, label %if.else19.if.end25_crit_edge

if.else19.if.end25_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %call20 to i32
  br label %failed_dentry

if.end25:                                         ; preds = %if.else19.if.end25_crit_edge, %if.else, %if.then13.if.end25_crit_edge
  %dentry.0 = phi ptr [ %call11, %if.else ], [ %call14, %if.then13.if.end25_crit_edge ], [ %call20, %if.else19.if.end25_crit_edge ]
  %11 = ptrtoint ptr %root_dentry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dentry.0, ptr %root_dentry, align 4
  br label %out

out:                                              ; preds = %failed_dentry, %if.end25, %if.then6, %if.then
  %ret.0 = phi i32 [ %0, %if.then ], [ 0, %if.end25 ], [ %ret.1, %failed_dentry ], [ -22, %if.then6 ]
  ret i32 %ret.0

failed_dentry:                                    ; preds = %if.then22, %if.then13.failed_dentry_crit_edge
  %ret.1 = phi i32 [ %10, %if.then22 ], [ -12, %if.then13.failed_dentry_crit_edge ]
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.54, i32 noundef %ret.1)
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_setup_super(ptr noundef %sb, i32 noundef %is_mount) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_sbp.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_sbp.i, align 4
  %s_magic.i = getelementptr inbounds %struct.nilfs_super_block, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_magic.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %5)
  %cmp.not.i = icmp eq i16 %5, 13364
  %arrayidx12.i = getelementptr %struct.the_nilfs, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %if.else11.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool13.not.i, label %if.then.i.nilfs_prepare_super.exit.thread_crit_edge, label %land.lhs.true.i

if.then.i.nilfs_prepare_super.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i
  %s_magic4.i = getelementptr inbounds %struct.nilfs_super_block, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %s_magic4.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_magic4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %9)
  %cmp6.i = icmp eq i16 %9, 13364
  br i1 %cmp6.i, label %if.then8.i, label %land.lhs.true.i.nilfs_prepare_super.exit.thread_crit_edge

land.lhs.true.i.nilfs_prepare_super.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %ns_sbsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_sbsize.i, align 4
  %12 = call ptr @memcpy(ptr %3, ptr %7, i32 %11)
  br label %nilfs_prepare_super.exit

nilfs_prepare_super.exit.thread:                  ; preds = %land.lhs.true.i.nilfs_prepare_super.exit.thread_crit_edge, %if.then.i.nilfs_prepare_super.exit.thread_crit_edge
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.12) #15
  br label %cleanup

if.else11.i:                                      ; preds = %entry
  br i1 %tobool13.not.i, label %if.else11.i.nilfs_prepare_super.exit_crit_edge, label %land.lhs.true14.i

if.else11.i.nilfs_prepare_super.exit_crit_edge:   ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit

land.lhs.true14.i:                                ; preds = %if.else11.i
  %s_magic16.i = getelementptr inbounds %struct.nilfs_super_block, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %s_magic16.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %s_magic16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %14)
  %cmp18.not.i = icmp eq i16 %14, 13364
  br i1 %cmp18.not.i, label %land.lhs.true14.i.nilfs_prepare_super.exit_crit_edge, label %if.then20.i

land.lhs.true14.i.nilfs_prepare_super.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit

if.then20.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize23.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %ns_sbsize23.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ns_sbsize23.i, align 4
  %17 = call ptr @memcpy(ptr %7, ptr %3, i32 %16)
  br label %nilfs_prepare_super.exit

nilfs_prepare_super.exit:                         ; preds = %if.then20.i, %land.lhs.true14.i.nilfs_prepare_super.exit_crit_edge, %if.else11.i.nilfs_prepare_super.exit_crit_edge, %if.then8.i
  %tobool.not = icmp eq ptr %ns_sbp.i, null
  br i1 %tobool.not, label %nilfs_prepare_super.exit.cleanup_crit_edge, label %if.end

nilfs_prepare_super.exit.cleanup_crit_edge:       ; preds = %nilfs_prepare_super.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %nilfs_prepare_super.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_mount)
  %tobool1.not = icmp eq i32 %is_mount, 0
  br i1 %tobool1.not, label %if.end.skip_mount_setup_crit_edge, label %if.end3

if.end.skip_mount_setup_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_mount_setup

if.end3:                                          ; preds = %if.end
  %18 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ns_sbp.i, align 4
  %s_max_mnt_count = getelementptr inbounds %struct.nilfs_super_block, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %s_max_mnt_count to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %s_max_mnt_count, align 2
  %s_mnt_count = getelementptr inbounds %struct.nilfs_super_block, ptr %19, i32 0, i32 20
  %22 = ptrtoint ptr %s_mnt_count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %s_mnt_count, align 8
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %ns_mount_state = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %ns_mount_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ns_mount_state, align 8
  %and = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end3.if.end8_crit_edge, label %if.then7

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.55)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool9.not = icmp eq i16 %21, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ns_sbp.i, align 4
  %s_max_mnt_count12 = getelementptr inbounds %struct.nilfs_super_block, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %s_max_mnt_count12 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 12800, ptr %s_max_mnt_count12, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %add = add i16 %24, 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %add)
  %31 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ns_sbp.i, align 4
  %s_mnt_count16 = getelementptr inbounds %struct.nilfs_super_block, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %s_mnt_count16 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %30, ptr %s_mnt_count16, align 8
  %call17 = tail call i64 @ktime_get_real_seconds() #15
  %34 = tail call i64 @llvm.bswap.i64(i64 %call17)
  %35 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ns_sbp.i, align 4
  %s_mtime = getelementptr inbounds %struct.nilfs_super_block, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %s_mtime to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %34, ptr %s_mtime, align 8
  br label %skip_mount_setup

skip_mount_setup:                                 ; preds = %if.end13, %if.end.skip_mount_setup_crit_edge
  %38 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ns_sbp.i, align 4
  %s_state = getelementptr inbounds %struct.nilfs_super_block, ptr %39, i32 0, i32 22
  %40 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %s_state, align 4
  %42 = and i16 %41, -257
  store i16 %42, ptr %s_state, align 4
  %43 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx12.i, align 4
  %tobool26.not = icmp eq ptr %44, null
  br i1 %tobool26.not, label %skip_mount_setup.if.end30_crit_edge, label %if.then27

skip_mount_setup.if.end30_crit_edge:              ; preds = %skip_mount_setup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then27:                                        ; preds = %skip_mount_setup
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ns_sbp.i, align 4
  %ns_sbsize = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 10
  %47 = ptrtoint ptr %ns_sbsize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ns_sbsize, align 4
  %49 = call ptr @memcpy(ptr %44, ptr %46, i32 %48)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %skip_mount_setup.if.end30_crit_edge
  %call31 = tail call i32 @nilfs_commit_super(ptr noundef %sb, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %nilfs_prepare_super.exit.cleanup_crit_edge, %nilfs_prepare_super.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_detach_log_writer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_nilfs(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nilfs_mdt_destroy(ptr noundef %inode) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load ptr, ptr @nilfs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -592
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %add.ptr.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dirty_inode(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_evict_inode(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_put_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  tail call void @nilfs_detach_log_writer(ptr noundef %sb) #15
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 4
  tail call void @down_write(ptr noundef %ns_sem) #15
  %call1 = tail call i32 @nilfs_cleanup_super(ptr noundef %sb)
  tail call void @up_write(ptr noundef %ns_sem) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_sufile, align 4
  tail call void @iput(ptr noundef %5) #15
  %ns_cpfile = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_cpfile, align 8
  tail call void @iput(ptr noundef %7) #15
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns_dat, align 4
  tail call void @iput(ptr noundef %9) #15
  tail call void @destroy_nilfs(ptr noundef %1) #15
  %10 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %s_fs_info, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_sync_fs(ptr noundef %sb, i32 noundef %wait) #0 align 64 {
entry:
  %nfreeblocks.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @nilfs_construct_segment(ptr noundef %sb) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 4
  tail call void @down_write(ptr noundef %ns_sem) #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %ns_sbwcount.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %ns_sbwcount.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ns_sbwcount.i, align 8
  %and.i = and i32 %6, 15
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %ns_sbp.i = getelementptr inbounds %struct.the_nilfs, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ns_sbp.i, align 4
  %s_magic.i = getelementptr inbounds %struct.nilfs_super_block, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s_magic.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %12)
  %cmp.not.i28 = icmp eq i16 %12, 13364
  %arrayidx12.i = getelementptr %struct.the_nilfs, ptr %8, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %14, null
  br i1 %cmp.not.i28, label %if.else11.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  br i1 %tobool13.not.i, label %if.then.i.nilfs_prepare_super.exit.thread_crit_edge, label %land.lhs.true.i

if.then.i.nilfs_prepare_super.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i
  %s_magic4.i = getelementptr inbounds %struct.nilfs_super_block, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %s_magic4.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %s_magic4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %16)
  %cmp6.i = icmp eq i16 %16, 13364
  br i1 %cmp6.i, label %if.then8.i, label %land.lhs.true.i.nilfs_prepare_super.exit.thread_crit_edge

land.lhs.true.i.nilfs_prepare_super.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize.i = getelementptr inbounds %struct.the_nilfs, ptr %8, i32 0, i32 10
  %17 = ptrtoint ptr %ns_sbsize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ns_sbsize.i, align 4
  %19 = call ptr @memcpy(ptr %10, ptr %14, i32 %18)
  br label %if.end25.i

nilfs_prepare_super.exit.thread:                  ; preds = %land.lhs.true.i.nilfs_prepare_super.exit.thread_crit_edge, %if.then.i.nilfs_prepare_super.exit.thread_crit_edge
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.12) #15
  br label %if.end12

if.else11.i:                                      ; preds = %if.then3
  br i1 %tobool13.not.i, label %if.else11.i.if.end25.i_crit_edge, label %land.lhs.true14.i

if.else11.i.if.end25.i_crit_edge:                 ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

land.lhs.true14.i:                                ; preds = %if.else11.i
  %s_magic16.i = getelementptr inbounds %struct.nilfs_super_block, ptr %14, i32 0, i32 2
  %20 = ptrtoint ptr %s_magic16.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %s_magic16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %21)
  %cmp18.not.i = icmp eq i16 %21, 13364
  br i1 %cmp18.not.i, label %land.lhs.true14.i.if.end25.i_crit_edge, label %if.then20.i

land.lhs.true14.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.then20.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize23.i = getelementptr inbounds %struct.the_nilfs, ptr %8, i32 0, i32 10
  %22 = ptrtoint ptr %ns_sbsize23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ns_sbsize23.i, align 4
  %24 = call ptr @memcpy(ptr %14, ptr %10, i32 %23)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %land.lhs.true14.i.if.end25.i_crit_edge, %if.else11.i.if.end25.i_crit_edge, %if.then8.i
  %25 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %and.i, label %land.lhs.true27.i [
    i32 15, label %if.end25.i.nilfs_prepare_super.exit_crit_edge
    i32 8, label %if.end25.i.nilfs_prepare_super.exit_crit_edge35
  ]

if.end25.i.nilfs_prepare_super.exit_crit_edge35:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit

if.end25.i.nilfs_prepare_super.exit_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit

land.lhs.true27.i:                                ; preds = %if.end25.i
  %26 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx12.i, align 4
  %tobool29.not.i = icmp eq ptr %27, null
  br i1 %tobool29.not.i, label %land.lhs.true27.i.nilfs_prepare_super.exit_crit_edge, label %if.then30.i

land.lhs.true27.i.nilfs_prepare_super.exit_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit

if.then30.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nilfs_swap_super_block(ptr noundef %8) #15
  br label %nilfs_prepare_super.exit

nilfs_prepare_super.exit:                         ; preds = %if.then30.i, %land.lhs.true27.i.nilfs_prepare_super.exit_crit_edge, %if.end25.i.nilfs_prepare_super.exit_crit_edge, %if.end25.i.nilfs_prepare_super.exit_crit_edge35
  %tobool6.not = icmp eq ptr %ns_sbp.i, null
  br i1 %tobool6.not, label %nilfs_prepare_super.exit.if.end12_crit_edge, label %if.then9, !prof !168

nilfs_prepare_super.exit.if.end12_crit_edge:      ; preds = %nilfs_prepare_super.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then9:                                         ; preds = %nilfs_prepare_super.exit
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ns_sbp.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nfreeblocks.i) #15
  %30 = ptrtoint ptr %nfreeblocks.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %nfreeblocks.i, align 8, !annotation !164
  %call.i = call i32 @nilfs_count_free_blocks(ptr noundef %1, ptr noundef nonnull %nfreeblocks.i) #15
  %31 = ptrtoint ptr %nfreeblocks.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %nfreeblocks.i, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32) #15
  %s_free_blocks_count.i = getelementptr inbounds %struct.nilfs_super_block, ptr %29, i32 0, i32 16
  %34 = ptrtoint ptr %s_free_blocks_count.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %s_free_blocks_count.i, align 8
  %ns_last_segment_lock.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock.i) #15
  %ns_last_seq.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 23
  %35 = ptrtoint ptr %ns_last_seq.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ns_last_seq.i, align 8
  %37 = call i64 @llvm.bswap.i64(i64 %36) #15
  %s_last_seq.i = getelementptr inbounds %struct.nilfs_super_block, ptr %29, i32 0, i32 15
  %38 = ptrtoint ptr %s_last_seq.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %s_last_seq.i, align 8
  %ns_last_pseg.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 22
  %39 = ptrtoint ptr %ns_last_pseg.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ns_last_pseg.i, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40) #15
  %s_last_pseg.i = getelementptr inbounds %struct.nilfs_super_block, ptr %29, i32 0, i32 14
  %42 = ptrtoint ptr %s_last_pseg.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %s_last_pseg.i, align 8
  %ns_last_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 24
  %43 = ptrtoint ptr %ns_last_cno.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ns_last_cno.i, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44) #15
  %s_last_cno.i = getelementptr inbounds %struct.nilfs_super_block, ptr %29, i32 0, i32 13
  %46 = ptrtoint ptr %s_last_cno.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %s_last_cno.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nfreeblocks.i) #15
  %call10 = call i32 @nilfs_commit_super(ptr noundef %sb, i32 noundef 0)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %nilfs_prepare_super.exit.if.end12_crit_edge, %nilfs_prepare_super.exit.thread, %if.end.if.end12_crit_edge
  call void @up_write(ptr noundef %ns_sem) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool14.not = icmp eq i32 %err.0, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  %ns_mount_opt.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 39
  %47 = ptrtoint ptr %ns_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ns_mount_opt.i, align 4
  %and.i29 = and i32 %48, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i, label %if.then15.if.end17_crit_edge, label %lor.lhs.false.i

if.then15.if.end17_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

lor.lhs.false.i:                                  ; preds = %if.then15
  %ns_flushed_device.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %ns_flushed_device.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ns_flushed_device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool1.not.i = icmp eq i32 %50, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end17_crit_edge

lor.lhs.false.i.if.end17_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %ns_flushed_device.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %ns_flushed_device.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !172
  %ns_bdev.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %ns_bdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ns_bdev.i, align 4
  %call.i30 = call i32 @blkdev_issue_flush(ptr noundef %53) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call.i30)
  %cmp.not.i31 = icmp eq i32 %call.i30, -5
  %spec.store.select.i = select i1 %cmp.not.i31, i32 -5, i32 0
  br label %if.end17

if.end17:                                         ; preds = %if.end.i, %lor.lhs.false.i.if.end17_crit_edge, %if.then15.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end12.if.end17_crit_edge ], [ %spec.store.select.i, %if.end.i ], [ 0, %lor.lhs.false.i.if.end17_crit_edge ], [ 0, %if.then15.if.end17_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_freeze(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 4
  tail call void @down_write(ptr noundef %ns_sem) #15
  %call1 = tail call i32 @nilfs_cleanup_super(ptr noundef %sb)
  tail call void @up_write(ptr noundef %ns_sem) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_unfreeze(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 4
  tail call void @down_write(ptr noundef %ns_sem) #15
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %ns_sbp.i.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ns_sbp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_sbp.i.i, align 4
  %s_magic.i.i = getelementptr inbounds %struct.nilfs_super_block, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %s_magic.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_magic.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %9)
  %cmp.not.i.i = icmp eq i16 %9, 13364
  %arrayidx12.i.i = getelementptr %struct.the_nilfs, ptr %5, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %11, null
  br i1 %cmp.not.i.i, label %if.else11.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  br i1 %tobool13.not.i.i, label %if.then.i.i.nilfs_prepare_super.exit.thread.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.nilfs_prepare_super.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %s_magic4.i.i = getelementptr inbounds %struct.nilfs_super_block, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %s_magic4.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_magic4.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %13)
  %cmp6.i.i = icmp eq i16 %13, 13364
  br i1 %cmp6.i.i, label %if.then8.i.i, label %land.lhs.true.i.i.nilfs_prepare_super.exit.thread.i_crit_edge

land.lhs.true.i.i.nilfs_prepare_super.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.thread.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize.i.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %ns_sbsize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ns_sbsize.i.i, align 4
  %16 = call ptr @memcpy(ptr %7, ptr %11, i32 %15)
  br label %nilfs_prepare_super.exit.i

nilfs_prepare_super.exit.thread.i:                ; preds = %land.lhs.true.i.i.nilfs_prepare_super.exit.thread.i_crit_edge, %if.then.i.i.nilfs_prepare_super.exit.thread.i_crit_edge
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.12) #15
  br label %nilfs_setup_super.exit

if.else11.i.i:                                    ; preds = %if.end
  br i1 %tobool13.not.i.i, label %if.else11.i.i.nilfs_prepare_super.exit.i_crit_edge, label %land.lhs.true14.i.i

if.else11.i.i.nilfs_prepare_super.exit.i_crit_edge: ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.i

land.lhs.true14.i.i:                              ; preds = %if.else11.i.i
  %s_magic16.i.i = getelementptr inbounds %struct.nilfs_super_block, ptr %11, i32 0, i32 2
  %17 = ptrtoint ptr %s_magic16.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %s_magic16.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %18)
  %cmp18.not.i.i = icmp eq i16 %18, 13364
  br i1 %cmp18.not.i.i, label %land.lhs.true14.i.i.nilfs_prepare_super.exit.i_crit_edge, label %if.then20.i.i

land.lhs.true14.i.i.nilfs_prepare_super.exit.i_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nilfs_prepare_super.exit.i

if.then20.i.i:                                    ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ns_sbsize23.i.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 10
  %19 = ptrtoint ptr %ns_sbsize23.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ns_sbsize23.i.i, align 4
  %21 = call ptr @memcpy(ptr %11, ptr %7, i32 %20)
  br label %nilfs_prepare_super.exit.i

nilfs_prepare_super.exit.i:                       ; preds = %if.then20.i.i, %land.lhs.true14.i.i.nilfs_prepare_super.exit.i_crit_edge, %if.else11.i.i.nilfs_prepare_super.exit.i_crit_edge, %if.then8.i.i
  %22 = ptrtoint ptr %ns_sbp.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ns_sbp.i.i, align 4
  %s_state.i = getelementptr inbounds %struct.nilfs_super_block, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %s_state.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %s_state.i, align 4
  %26 = and i16 %25, -257
  store i16 %26, ptr %s_state.i, align 4
  %27 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool26.not.i = icmp eq ptr %28, null
  br i1 %tobool26.not.i, label %nilfs_prepare_super.exit.i.if.end30.i_crit_edge, label %if.then27.i

nilfs_prepare_super.exit.i.if.end30.i_crit_edge:  ; preds = %nilfs_prepare_super.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

if.then27.i:                                      ; preds = %nilfs_prepare_super.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %ns_sbp.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ns_sbp.i.i, align 4
  %ns_sbsize.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 10
  %31 = ptrtoint ptr %ns_sbsize.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ns_sbsize.i, align 4
  %33 = call ptr @memcpy(ptr %28, ptr %30, i32 %32)
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %nilfs_prepare_super.exit.i.if.end30.i_crit_edge
  %call31.i = tail call i32 @nilfs_commit_super(ptr noundef %sb, i32 noundef 1) #15
  br label %nilfs_setup_super.exit

nilfs_setup_super.exit:                           ; preds = %if.end30.i, %nilfs_prepare_super.exit.thread.i
  tail call void @up_write(ptr noundef %ns_sem) #15
  br label %cleanup

cleanup:                                          ; preds = %nilfs_setup_super.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %nfreeblocks = alloca i64, align 8
  %nmaxinodes = alloca i64, align 8
  %nfreeinodes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_root = getelementptr i8, ptr %3, i32 -8
  %4 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_root, align 8
  %nilfs2 = getelementptr inbounds %struct.nilfs_root, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %nilfs2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nilfs2, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %11, 255
  %12 = lshr i32 %11, 12
  %shl.i.i = and i32 %12, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %11, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nfreeblocks) #15
  %13 = ptrtoint ptr %nfreeblocks to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %nfreeblocks, align 8, !annotation !164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nmaxinodes) #15
  %14 = ptrtoint ptr %nmaxinodes to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %nmaxinodes, align 8, !annotation !164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nfreeinodes) #15
  %15 = ptrtoint ptr %nfreeinodes to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %nfreeinodes, align 8, !annotation !164
  %ns_blocks_per_segment = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 47
  %16 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ns_blocks_per_segment, align 4
  %ns_nsegments = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 46
  %18 = ptrtoint ptr %ns_nsegments to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ns_nsegments, align 8
  %mul = mul i32 %19, %17
  %ns_first_data_block = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 50
  %20 = ptrtoint ptr %ns_first_data_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ns_first_data_block, align 8
  %sub = sub i32 %mul, %21
  %conv = zext i32 %sub to i64
  %ns_nrsvsegs = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 49
  %22 = ptrtoint ptr %ns_nrsvsegs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ns_nrsvsegs, align 4
  %mul5 = mul i32 %23, %17
  %call6 = call i32 @nilfs_count_free_blocks(ptr noundef %7, ptr noundef nonnull %nfreeblocks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !166

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifile = getelementptr inbounds %struct.nilfs_root, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %ifile to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ifile, align 4
  %call9 = call i32 @nilfs_ifile_count_free_inodes(ptr noundef %25, ptr noundef nonnull %nmaxinodes, ptr noundef nonnull %nfreeinodes) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end22_crit_edge, label %if.then17, !prof !166

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then17:                                        ; preds = %if.end
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call9)
  %cmp = icmp eq i32 %call9, -34
  br i1 %cmp, label %if.then19, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %inodes_count = getelementptr inbounds %struct.nilfs_root, ptr %5, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %inodes_count, i32 noundef 8) #15
  %call.i = call i64 @generic_atomic64_read(ptr noundef %inodes_count) #15
  %26 = ptrtoint ptr %nmaxinodes to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call.i, ptr %nmaxinodes, align 8
  %27 = ptrtoint ptr %nfreeinodes to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %nfreeinodes, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end.if.end22_crit_edge
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 13364, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %31 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %f_bsize, align 4
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %32 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %f_blocks, align 8
  %33 = ptrtoint ptr %nfreeblocks to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %nfreeblocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %35 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %f_bfree, align 8
  %conv26 = zext i32 %mul5 to i64
  %36 = call i64 @llvm.usub.sat.i64(i64 %34, i64 %conv26)
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %37 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %f_bavail, align 8
  %38 = ptrtoint ptr %nmaxinodes to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %nmaxinodes, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %40 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %f_files, align 8
  %41 = ptrtoint ptr %nfreeinodes to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %nfreeinodes, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %43 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %f_ffree, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %44 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 255, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %45 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call6, %entry.cleanup_crit_edge ], [ %call9, %if.then17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nfreeinodes) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nmaxinodes) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nfreeblocks) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_root = getelementptr i8, ptr %5, i32 -8
  %6 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_root, align 8
  %ns_mount_opt = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 39
  %8 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ns_mount_opt, align 4
  %and = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.45) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp.not = icmp eq i64 %11, 0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.46, i64 noundef %11) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %12 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ns_mount_opt, align 4
  %and6 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.47) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %14 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ns_mount_opt, align 4
  %and11 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end14_crit_edge, label %if.then13

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.48) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  %16 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ns_mount_opt, align 4
  %and16 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.49) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %18 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ns_mount_opt, align 4
  %and21 = and i32 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end24_crit_edge, label %if.then23

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.50) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %20 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ns_mount_opt, align 4
  %and26 = and i32 %21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.51) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24.if.end29_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_mdt_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_ifile_count_free_inodes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_iget(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_root(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_is_snapshot(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_init_cachep() unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.62, i32 noundef 1376, i32 noundef 0, i32 noundef 67239936, ptr noundef nonnull @nilfs_inode_init_once) #15
  store ptr %call, ptr @nilfs_inode_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.63, i32 noundef 12, i32 noundef 0, i32 noundef 131072, ptr noundef null) #15
  store ptr %call1, ptr @nilfs_transaction_cachep, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.fail_crit_edge, label %if.end4

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.64, i32 noundef 200, i32 noundef 0, i32 noundef 131072, ptr noundef nonnull @nilfs_segbuf_init_once) #15
  store ptr %call5, ptr @nilfs_segbuf_cachep, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.fail_crit_edge, label %if.end8

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.65, i32 noundef 1344, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  store ptr %call9, ptr @nilfs_btree_path_cache, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.fail_crit_edge, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

fail:                                             ; preds = %if.end8.fail_crit_edge, %if.end4.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  tail call fastcc void @nilfs_destroy_cachep()
  br label %return

return:                                           ; preds = %fail, %if.end8.return_crit_edge
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nilfs_sysfs_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_inode_init_once(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dirty = getelementptr inbounds %struct.nilfs_inode_info, ptr %obj, i32 0, i32 8
  %0 = ptrtoint ptr %i_dirty to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %i_dirty, ptr %i_dirty, align 4
  %prev.i = getelementptr inbounds %struct.nilfs_inode_info, ptr %obj, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i_dirty, ptr %prev.i, align 4
  %i_btnode_cache = getelementptr inbounds %struct.nilfs_inode_info, ptr %obj, i32 0, i32 7
  tail call void @address_space_init_once(ptr noundef %i_btnode_cache) #15
  %i_bmap_data = getelementptr inbounds %struct.nilfs_inode_info, ptr %obj, i32 0, i32 3
  %i_bmap = getelementptr inbounds %struct.nilfs_inode_info, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %i_bmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i_bmap_data, ptr %i_bmap, align 8
  %vfs_inode = getelementptr inbounds %struct.nilfs_inode_info, ptr %obj, i32 0, i32 11
  tail call void @inode_init_once(ptr noundef %vfs_inode) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nilfs_segbuf_init_once(ptr nocapture noundef writeonly %obj) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %obj, i32 0, i32 200)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @address_space_init_once(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin }
attributes #23 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !149, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__UNIQUE_ID_author285, !1, !"__UNIQUE_ID_author285", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/super.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_description286, !3, !"__UNIQUE_ID_description286", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/super.c", i32 53, i32 1}
!4 = !{ptr @__UNIQUE_ID_file287, !5, !"__UNIQUE_ID_file287", i1 false, i1 false}
!5 = !{!"../fs/nilfs2/super.c", i32 55, i32 1}
!6 = !{ptr @__UNIQUE_ID_license288, !5, !"__UNIQUE_ID_license288", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nilfs2/super.c", i32 78, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__nilfs_msg._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @__nilfs_msg._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nilfs2/super.c", i32 81, i32 3}
!15 = !{ptr @__nilfs_msg._entry.3, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @__nilfs_msg._entry_ptr.5, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/nilfs2/super.c", i32 131, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__nilfs_error._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @__nilfs_error._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nilfs2/super.c", i32 140, i32 4}
!24 = !{ptr @__nilfs_error._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @__nilfs_error._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nilfs2/super.c", i32 146, i32 9}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nilfs2/super.c", i32 257, i32 4}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/nilfs2/super.c", i32 532, i32 4}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/nilfs2/super.c", i32 879, i32 3}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/nilfs2/super.c", i32 887, i32 3}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/nilfs2/super.c", i32 1365, i32 14}
!38 = !{ptr @nilfs_fs_type, !39, !"nilfs_fs_type", i1 false, i1 false}
!39 = !{!"../fs/nilfs2/super.c", i32 1363, i32 25}
!40 = !{ptr @__UNIQUE_ID_alias289, !41, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!41 = !{!"../fs/nilfs2/super.c", i32 1370, i32 1}
!42 = !{ptr @__initcall__kmod_nilfs2__290_1472_init_nilfs_fs6, !43, !"__initcall__kmod_nilfs2__290_1472_init_nilfs_fs6", i1 false, i1 false}
!43 = !{!"../fs/nilfs2/super.c", i32 1472, i32 1}
!44 = !{ptr @__exitcall_exit_nilfs_fs, !45, !"__exitcall_exit_nilfs_fs", i1 false, i1 false}
!45 = !{!"../fs/nilfs2/super.c", i32 1473, i32 1}
!46 = !{ptr @nilfs_inode_cachep, !47, !"nilfs_inode_cachep", i1 false, i1 false}
!47 = !{!"../fs/nilfs2/super.c", i32 57, i32 27}
!48 = !{ptr @nilfs_transaction_cachep, !49, !"nilfs_transaction_cachep", i1 false, i1 false}
!49 = !{!"../fs/nilfs2/super.c", i32 58, i32 20}
!50 = !{ptr @nilfs_segbuf_cachep, !51, !"nilfs_segbuf_cachep", i1 false, i1 false}
!51 = !{!"../fs/nilfs2/super.c", i32 59, i32 20}
!52 = !{ptr @nilfs_btree_path_cache, !53, !"nilfs_btree_path_cache", i1 false, i1 false}
!53 = !{!"../fs/nilfs2/super.c", i32 60, i32 20}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/nilfs2/super.c", i32 187, i32 3}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/nilfs2/super.c", i32 367, i32 3}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/nilfs2/super.c", i32 726, i32 31}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/nilfs2/super.c", i32 741, i32 29}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/nilfs2/super.c", i32 744, i32 34}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/nilfs2/super.c", i32 761, i32 5}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/nilfs2/super.c", i32 777, i32 4}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/nilfs2/super.c", i32 704, i32 17}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/nilfs2/super.c", i32 705, i32 18}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/nilfs2/super.c", i32 706, i32 15}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/nilfs2/super.c", i32 707, i32 16}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/nilfs2/super.c", i32 708, i32 18}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/nilfs2/super.c", i32 709, i32 17}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/nilfs2/super.c", i32 710, i32 14}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/nilfs2/super.c", i32 711, i32 19}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/nilfs2/super.c", i32 712, i32 16}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/nilfs2/super.c", i32 713, i32 18}
!88 = !{ptr @tokens, !89, !"tokens", i1 false, i1 false}
!89 = !{!"../fs/nilfs2/super.c", i32 703, i32 22}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/nilfs2/super.c", i32 1313, i32 38}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/nilfs2/super.c", i32 1324, i32 5}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/nilfs2/super.c", i32 1202, i32 9}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/nilfs2/super.c", i32 1209, i32 10}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/nilfs2/super.c", i32 1211, i32 10}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/nilfs2/super.c", i32 1214, i32 9}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/nilfs2/super.c", i32 1221, i32 2}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/nilfs2/super.c", i32 1065, i32 3}
!108 = !{ptr @nilfs_sops, !109, !"nilfs_sops", i1 false, i1 false}
!109 = !{!"../fs/nilfs2/super.c", i32 683, i32 38}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/nilfs2/super.c", i32 630, i32 3}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/nilfs2/super.c", i32 666, i32 17}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/nilfs2/super.c", i32 668, i32 19}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/nilfs2/super.c", i32 670, i32 17}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/nilfs2/super.c", i32 672, i32 17}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/nilfs2/super.c", i32 674, i32 17}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/nilfs2/super.c", i32 676, i32 17}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/nilfs2/super.c", i32 678, i32 17}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/nilfs2/super.c", i32 906, i32 3}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/nilfs2/super.c", i32 911, i32 3}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/nilfs2/super.c", i32 939, i32 2}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/nilfs2/super.c", i32 813, i32 3}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/nilfs2/super.c", i32 1127, i32 3}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/nilfs2/super.c", i32 1160, i32 4}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/nilfs2/super.c", i32 959, i32 3}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/nilfs2/super.c", i32 968, i32 3}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/nilfs2/super.c", i32 1454, i32 2}
!144 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @init_nilfs_fs._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @init_nilfs_fs._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/nilfs2/super.c", i32 1406, i32 41}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/nilfs2/super.c", i32 1413, i32 47}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/nilfs2/super.c", i32 1419, i32 42}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/nilfs2/super.c", i32 1425, i32 45}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"auto-init"}
!165 = !{i64 2155015779}
!166 = !{!"branch_weights", i32 2000, i32 1}
!167 = !{i64 2148220238, i64 2148220518, i64 2148220852, i64 2148221186}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!170 = !{i64 2155036769, i64 2155037252, i64 2155036806, i64 2155036862, i64 2155036896, i64 2155036920, i64 2155036961, i64 2155036982, i64 2155037010, i64 2155037044}
!171 = !{i64 2148375344, i64 2148375376, i64 2148375405, i64 2148375439, i64 2148375470, i64 2148375493}
!172 = !{i64 2154929055}
