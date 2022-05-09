; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_mount.c_pt.bc'
source_filename = "../fs/jfs/jfs_mount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.jfs_superblock = type { [4 x i8], i32, i64, i32, i16, i16, i32, i16, i16, i32, i32, i32, i32, %struct.pxd_t, %struct.pxd_t, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.timestruc_t, i32, i8, [11 x i8], i64, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, [16 x i8], %struct.uuid_t }
%struct.timestruc_t = type { i32, i32 }
%struct.lrd = type { i32, i32, i16, i16, i32, %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, i32, i16, i16, %struct.pxd_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.jfs_log = type { %struct.list_head, %struct.list_head, ptr, i32, i64, i32, i32, i32, ptr, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.mutex, i32, i32, %struct.wait_queue_head, i32, %struct.list_head, ptr, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, ptr, i32, %struct.uuid_t, i32 }

@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@jfs_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013jfs_mount: Failed to read AGGREGATE_I\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jfs_mount\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/jfs/jfs_mount.c\00", [45 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr = internal global ptr @jfs_mount._entry, section ".printk_index", align 4
@jfs_mount._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016jfs_mount: ipaimap:0x%p\0A\00", [37 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.5 = internal global ptr @jfs_mount._entry.3, section ".printk_index", align 4
@jfs_mount._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013jfs_mount: diMount(ipaimap) failed w/rc = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.8 = internal global ptr @jfs_mount._entry.6, section ".printk_index", align 4
@jfs_mount._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016jfs_mount: ipbmap:0x%p\0A\00", [38 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.11 = internal global ptr @jfs_mount._entry.9, section ".printk_index", align 4
@jfs_mount._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013jfs_mount: dbMount failed w/rc = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.14 = internal global ptr @jfs_mount._entry.12, section ".printk_index", align 4
@jfs_mount._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.16 = internal global ptr @jfs_mount._entry.15, section ".printk_index", align 4
@jfs_mount._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016jfs_mount: ipaimap2:0x%p\0A\00", [36 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.19 = internal global ptr @jfs_mount._entry.17, section ".printk_index", align 4
@jfs_mount._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013jfs_mount: diMount(ipaimap2) failed, rc = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.22 = internal global ptr @jfs_mount._entry.20, section ".printk_index", align 4
@jfs_mount._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013jfs_mount: Failed to read FILESYSTEM_I\0A\00", [54 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.25 = internal global ptr @jfs_mount._entry.23, section ".printk_index", align 4
@jfs_mount._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016jfs_mount: ipimap:0x%p\0A\00", [38 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.28 = internal global ptr @jfs_mount._entry.26, section ".printk_index", align 4
@jfs_mount._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013jfs_mount: diMount failed w/rc = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.31 = internal global ptr @jfs_mount._entry.29, section ".printk_index", align 4
@jfs_mount._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Mount JFS Failure: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@jfs_mount._entry_ptr.34 = internal global ptr @jfs_mount._entry.32, section ".printk_index", align 4
@jfs_mount_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013jfs_mount_rw: diMount failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jfs_mount_rw\00", [19 x i8] zeroinitializer }, align 32
@jfs_mount_rw._entry_ptr = internal global ptr @jfs_mount_rw._entry, section ".printk_index", align 4
@jfs_mount_rw._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013jfs_mount_rw: dbMount failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@jfs_mount_rw._entry_ptr.39 = internal global ptr @jfs_mount_rw._entry.37, section ".printk_index", align 4
@jfs_mount_rw._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013jfs_mount: updateSuper failed w/rc = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@jfs_mount_rw._entry_ptr.42 = internal global ptr @jfs_mount_rw._entry.40, section ".printk_index", align 4
@updateSuper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013updateSuper: bad state\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"updateSuper\00", [20 x i8] zeroinitializer }, align 32
@updateSuper._entry_ptr = internal global ptr @updateSuper._entry, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JFS1\00", [27 x i8] zeroinitializer }, align 32
@chkSuper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Currently only 4K block size supported!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chkSuper\00", [23 x i8] zeroinitializer }, align 32
@chkSuper._entry_ptr = internal global ptr @chkSuper._entry, section ".printk_index", align 4
@chkSuper._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016superblock: flag:0x%08x state:0x%08x size:0x%Lx\0A\00", [45 x i8] zeroinitializer }, align 32
@chkSuper._entry_ptr.50 = internal global ptr @chkSuper._entry.48, section ".printk_index", align 4
@chkSuper._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013jfs_mount: Mount Failure: File System Dirty.\0A\00", [48 x i8] zeroinitializer }, align 32
@chkSuper._entry_ptr.53 = internal global ptr @chkSuper._entry.51, section ".printk_index", align 4
@chkSuper._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013jfs_mount: Mount Failure: superblock is corrupt!\0A\00", [44 x i8] zeroinitializer }, align 32
@chkSuper._entry_ptr.56 = internal global ptr @chkSuper._entry.54, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 89, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 95, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 101, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 114, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 122, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 140, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 146, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 152, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 168, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 173, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 180, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 210, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 239, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 245, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 260, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 417, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 303, i32 29 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 312, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 318, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 348, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [22 x i8] c"../fs/jfs/jfs_mount.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 368, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @chkSuper._entry, ptr @chkSuper._entry.48, ptr @chkSuper._entry.51, ptr @chkSuper._entry.54, ptr @chkSuper._entry_ptr, ptr @chkSuper._entry_ptr.50, ptr @chkSuper._entry_ptr.53, ptr @chkSuper._entry_ptr.56, ptr @jfs_mount._entry, ptr @jfs_mount._entry.12, ptr @jfs_mount._entry.15, ptr @jfs_mount._entry.17, ptr @jfs_mount._entry.20, ptr @jfs_mount._entry.23, ptr @jfs_mount._entry.26, ptr @jfs_mount._entry.29, ptr @jfs_mount._entry.3, ptr @jfs_mount._entry.32, ptr @jfs_mount._entry.6, ptr @jfs_mount._entry.9, ptr @jfs_mount._entry_ptr, ptr @jfs_mount._entry_ptr.11, ptr @jfs_mount._entry_ptr.14, ptr @jfs_mount._entry_ptr.16, ptr @jfs_mount._entry_ptr.19, ptr @jfs_mount._entry_ptr.22, ptr @jfs_mount._entry_ptr.25, ptr @jfs_mount._entry_ptr.28, ptr @jfs_mount._entry_ptr.31, ptr @jfs_mount._entry_ptr.34, ptr @jfs_mount._entry_ptr.5, ptr @jfs_mount._entry_ptr.8, ptr @jfs_mount_rw._entry, ptr @jfs_mount_rw._entry.37, ptr @jfs_mount_rw._entry.40, ptr @jfs_mount_rw._entry_ptr, ptr @jfs_mount_rw._entry_ptr.39, ptr @jfs_mount_rw._entry_ptr.42, ptr @updateSuper._entry, ptr @updateSuper._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount_rw._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_mount_rw._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @updateSuper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chkSuper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chkSuper._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chkSuper._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chkSuper._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_mount(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call fastcc i32 @chkSuper(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body169_crit_edge

entry.do.body169_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body169

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @diReadSpecial(ptr noundef %sb, i32 noundef 1, i32 noundef 0) #6
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %do.body169

if.end11:                                         ; preds = %if.end
  %ipaimap12 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ipaimap12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %ipaimap12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %4 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp14 = icmp sgt i32 %4, 3
  br i1 %cmp14, label %do.end18, label %if.end11.do.end23_crit_edge

if.end11.do.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %call2) #9
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %if.end11.do.end23_crit_edge
  %call24 = tail call i32 @diMount(ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end38, label %do.body27

do.body27:                                        ; preds = %do.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %5 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp28 = icmp sgt i32 %5, 0
  br i1 %cmp28, label %do.end32, label %do.body27.err_ipaimap_crit_edge

do.body27.err_ipaimap_crit_edge:                  ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ipaimap

do.end32:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call24) #9
  br label %err_ipaimap

if.end38:                                         ; preds = %do.end23
  %call39 = tail call ptr @diReadSpecial(ptr noundef %sb, i32 noundef 2, i32 noundef 0) #6
  %cmp40 = icmp eq ptr %call39, null
  br i1 %cmp40, label %if.end38.err_umount_ipaimap_crit_edge, label %do.body43

if.end38.err_umount_ipaimap_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_umount_ipaimap

do.body43:                                        ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %6 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp44 = icmp sgt i32 %6, 3
  br i1 %cmp44, label %do.end48, label %do.body43.do.end53_crit_edge

do.body43.do.end53_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53

do.end48:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %call39) #9
  br label %do.end53

do.end53:                                         ; preds = %do.end48, %do.body43.do.end53_crit_edge
  %ipbmap54 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %ipbmap54 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call39, ptr %ipbmap54, align 4
  %call55 = tail call i32 @dbMount(ptr noundef nonnull %call39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end69, label %do.body58

do.body58:                                        ; preds = %do.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %8 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp59 = icmp sgt i32 %8, 0
  br i1 %cmp59, label %do.end63, label %do.body58.err_ipbmap_crit_edge

do.body58.err_ipbmap_crit_edge:                   ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ipbmap

do.end63:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call55) #9
  br label %err_ipbmap

if.end69:                                         ; preds = %do.end53
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mntflag, align 4
  %and = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp70 = icmp eq i32 %and, 0
  br i1 %cmp70, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.end69
  %call72 = tail call ptr @diReadSpecial(ptr noundef %sb, i32 noundef 1, i32 noundef 1) #6
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %do.body75, label %if.end86

do.body75:                                        ; preds = %if.then71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %11 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp76 = icmp sgt i32 %11, 0
  br i1 %cmp76, label %do.end80, label %do.body75.err_umount_ipbmap_crit_edge

do.body75.err_umount_ipbmap_crit_edge:            ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_umount_ipbmap

do.end80:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %err_umount_ipbmap

if.end86:                                         ; preds = %if.then71
  %ipaimap287 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ipaimap287 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call72, ptr %ipaimap287, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %13 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp89 = icmp sgt i32 %13, 3
  br i1 %cmp89, label %do.end93, label %if.end86.do.end98_crit_edge

if.end86.do.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end98

do.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %call72) #9
  br label %do.end98

do.end98:                                         ; preds = %do.end93, %if.end86.do.end98_crit_edge
  %call99 = tail call i32 @diMount(ptr noundef nonnull %call72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %do.end98.if.end115_crit_edge, label %do.body102

do.end98.if.end115_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.body102:                                       ; preds = %do.end98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %14 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp103 = icmp sgt i32 %14, 0
  br i1 %cmp103, label %do.end107, label %do.body102.if.then163_crit_edge

do.body102.if.then163_crit_edge:                  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then163

do.end107:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call99) #9
  br label %if.then163

if.else:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %ipaimap2114 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %ipaimap2114 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ipaimap2114, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.else, %do.end98.if.end115_crit_edge
  %ipaimap2.0 = phi ptr [ %call72, %do.end98.if.end115_crit_edge ], [ null, %if.else ]
  %call116 = tail call ptr @diReadSpecial(ptr noundef %sb, i32 noundef 16, i32 noundef 0) #6
  %cmp117 = icmp eq ptr %call116, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %16 = load i32, ptr @jfsloglevel, align 4
  br i1 %cmp117, label %do.body119, label %do.body131

do.body119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp120 = icmp sgt i32 %16, 0
  br i1 %cmp120, label %do.end124, label %do.body119.err_umount_ipaimap2_crit_edge

do.body119.err_umount_ipaimap2_crit_edge:         ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_umount_ipaimap2

do.end124:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %err_umount_ipaimap2

do.body131:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp132 = icmp sgt i32 %16, 3
  br i1 %cmp132, label %do.end136, label %do.body131.do.end141_crit_edge

do.body131.do.end141_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end141

do.end136:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #8
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %call116) #9
  br label %do.end141

do.end141:                                        ; preds = %do.end136, %do.body131.do.end141_crit_edge
  %ipimap142 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %ipimap142 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call116, ptr %ipimap142, align 4
  %call143 = tail call i32 @diMount(ptr noundef nonnull %call116) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %do.end141.cleanup_crit_edge, label %do.body146

do.end141.cleanup_crit_edge:                      ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body146:                                       ; preds = %do.end141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %18 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp147 = icmp sgt i32 %18, 0
  br i1 %cmp147, label %do.end151, label %do.body146.err_ipimap_crit_edge

do.body146.err_ipimap_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ipimap

do.end151:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %call143) #9
  br label %err_ipimap

err_ipimap:                                       ; preds = %do.end151, %do.body146.err_ipimap_crit_edge
  tail call void @diFreeSpecial(ptr noundef nonnull %call116) #6
  br label %err_umount_ipaimap2

err_umount_ipaimap2:                              ; preds = %err_ipimap, %do.end124, %do.body119.err_umount_ipaimap2_crit_edge
  %rc.0 = phi i32 [ %call143, %err_ipimap ], [ -5, %do.end124 ], [ -5, %do.body119.err_umount_ipaimap2_crit_edge ]
  %tobool158.not = icmp eq ptr %ipaimap2.0, null
  br i1 %tobool158.not, label %err_umount_ipaimap2.err_umount_ipbmap_crit_edge, label %if.then159

err_umount_ipaimap2.err_umount_ipbmap_crit_edge:  ; preds = %err_umount_ipaimap2
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_umount_ipbmap

if.then159:                                       ; preds = %err_umount_ipaimap2
  call void @__sanitizer_cov_trace_pc() #8
  %call160 = tail call i32 @diUnmount(ptr noundef nonnull %ipaimap2.0, i32 noundef 1) #6
  br label %if.then163

if.then163:                                       ; preds = %if.then159, %do.end107, %do.body102.if.then163_crit_edge
  %ipaimap2.1.ph = phi ptr [ %ipaimap2.0, %if.then159 ], [ %call72, %do.body102.if.then163_crit_edge ], [ %call72, %do.end107 ]
  %rc.1.ph = phi i32 [ %rc.0, %if.then159 ], [ %call99, %do.body102.if.then163_crit_edge ], [ %call99, %do.end107 ]
  tail call void @diFreeSpecial(ptr noundef nonnull %ipaimap2.1.ph) #6
  br label %err_umount_ipbmap

err_umount_ipbmap:                                ; preds = %if.then163, %err_umount_ipaimap2.err_umount_ipbmap_crit_edge, %do.end80, %do.body75.err_umount_ipbmap_crit_edge
  %rc.2 = phi i32 [ %rc.1.ph, %if.then163 ], [ -5, %do.end80 ], [ -5, %do.body75.err_umount_ipbmap_crit_edge ], [ %rc.0, %err_umount_ipaimap2.err_umount_ipbmap_crit_edge ]
  %call165 = tail call i32 @dbUnmount(ptr noundef nonnull %call39, i32 noundef 1) #6
  br label %err_ipbmap

err_ipbmap:                                       ; preds = %err_umount_ipbmap, %do.end63, %do.body58.err_ipbmap_crit_edge
  %rc.3 = phi i32 [ %call55, %do.end63 ], [ %call55, %do.body58.err_ipbmap_crit_edge ], [ %rc.2, %err_umount_ipbmap ]
  tail call void @diFreeSpecial(ptr noundef nonnull %call39) #6
  br label %err_umount_ipaimap

err_umount_ipaimap:                               ; preds = %err_ipbmap, %if.end38.err_umount_ipaimap_crit_edge
  %rc.4 = phi i32 [ %rc.3, %err_ipbmap ], [ -5, %if.end38.err_umount_ipaimap_crit_edge ]
  %call166 = tail call i32 @diUnmount(ptr noundef nonnull %call2, i32 noundef 1) #6
  br label %err_ipaimap

err_ipaimap:                                      ; preds = %err_umount_ipaimap, %do.end32, %do.body27.err_ipaimap_crit_edge
  %rc.5 = phi i32 [ %call24, %do.end32 ], [ %call24, %do.body27.err_ipaimap_crit_edge ], [ %rc.4, %err_umount_ipaimap ]
  tail call void @diFreeSpecial(ptr noundef nonnull %call2) #6
  br label %do.body169

do.body169:                                       ; preds = %err_ipaimap, %do.end, %entry.do.body169_crit_edge
  %rc.6.ph = phi i32 [ -5, %do.end ], [ %rc.5, %err_ipaimap ], [ %call1, %entry.do.body169_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %.pr = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp170 = icmp sgt i32 %.pr, 0
  br i1 %cmp170, label %do.end174, label %do.body169.cleanup_crit_edge

do.body169.cleanup_crit_edge:                     ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end174:                                        ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #8
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %rc.6.ph) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end174, %do.body169.cleanup_crit_edge, %do.end141.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end141.cleanup_crit_edge ], [ %rc.6.ph, %do.body169.cleanup_crit_edge ], [ %rc.6.ph, %do.end174 ], [ -5, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chkSuper(ptr nocapture noundef readonly %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %3 to i32
  %shr.i = lshr i32 32768, %conv.i
  %4 = zext i32 %shr.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %6, i64 noundef %4, i32 noundef %8, i32 noundef 8) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv3.i = zext i8 %10 to i32
  %shr4.i = lshr i32 61440, %conv3.i
  %11 = zext i32 %shr4.i to i64
  %12 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i.i, align 4
  %14 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i18.i = tail call ptr @__bread_gfp(ptr noundef %13, i64 noundef %11, i32 noundef %15, i32 noundef 8) #6
  %tobool7.not.i = icmp eq ptr %call.i18.i, null
  br i1 %tobool7.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %bh.0.ph = phi ptr [ %call.i.i, %entry.if.end_crit_edge ], [ %call.i18.i, %if.end.i.if.end_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0.ph, i32 0, i32 5
  %16 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data, align 4
  %call2 = tail call i32 @strncmp(ptr noundef %17, ptr noundef nonnull dereferenceable(5) @.str.45, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.brelse.exit_crit_edge

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

lor.lhs.false:                                    ; preds = %if.end
  %s_version = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %s_version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_version, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp ugt i32 %20, 2
  br i1 %cmp, label %lor.lhs.false.brelse.exit_crit_edge, label %if.end5

lor.lhs.false.brelse.exit_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.end5:                                          ; preds = %lor.lhs.false
  %s_bsize = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %s_bsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_bsize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %22)
  %cmp6.not = icmp eq i32 %22, 1048576
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %23 = load i32, ptr @jfsloglevel, align 4
  br i1 %cmp6.not, label %do.body16, label %do.body

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp8 = icmp sgt i32 %23, 0
  br i1 %cmp8, label %do.end, label %do.body.brelse.exit_crit_edge

do.body.brelse.exit_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #9
  br label %brelse.exit

do.body16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp17 = icmp sgt i32 %23, 3
  br i1 %cmp17, label %do.end21, label %do.body16.do.end26_crit_edge

do.body16.do.end26_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %s_flag = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 10
  %24 = ptrtoint ptr %s_flag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_flag, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %s_state = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 11
  %27 = ptrtoint ptr %s_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_state, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %s_size = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 2
  %30 = ptrtoint ptr %s_size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %s_size, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %26, i32 noundef %29, i64 noundef %32) #9
  br label %do.end26

do.end26:                                         ; preds = %do.end21, %do.body16.do.end26_crit_edge
  %s_flag27 = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 10
  %33 = ptrtoint ptr %s_flag27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_flag27, align 4
  %and = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp28.not.not = icmp eq i32 %and, 0
  br i1 %cmp28.not.not, label %if.then29, label %do.end26.if.end60_crit_edge

do.end26.if.end60_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then29:                                        ; preds = %do.end26
  %s_aim2 = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 14
  %35 = ptrtoint ptr %s_aim2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_aim2, align 4
  %s_ait2 = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 13
  %37 = ptrtoint ptr %s_ait2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_ait2, align 4
  %39 = shl i32 %36, 24
  %conv.i220 = zext i32 %39 to i64
  %shl.i221.neg239 = mul i64 %conv.i220, 4503599627370240
  %addr2.i = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 14, i32 1
  %40 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr2.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  %conv1.i = zext i32 %42 to i64
  %43 = shl i32 %38, 24
  %conv.i222 = zext i32 %43 to i64
  %shl.i223 = shl nuw nsw i64 %conv.i222, 8
  %addr2.i224 = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 13, i32 1
  %44 = ptrtoint ptr %addr2.i224 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr2.i224, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  %conv1.i225 = zext i32 %46 to i64
  %add.i226 = or i64 %shl.i223, %conv1.i225
  %add.i.neg = sub i64 %shl.i221.neg239, %conv1.i
  %47 = add i64 %add.i.neg, %add.i226
  %s_fsckpxd = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 18
  %48 = ptrtoint ptr %s_fsckpxd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_fsckpxd, align 4
  %50 = shl i32 %49, 24
  %conv.i227 = zext i32 %50 to i64
  %shl.i228 = shl nuw nsw i64 %conv.i227, 8
  %addr2.i229 = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %addr2.i229 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr2.i229, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  %conv1.i230 = zext i32 %53 to i64
  %add.i231 = sub nsw i64 %conv1.i230, %add.i226
  %54 = add nsw i64 %add.i231, %shl.i228
  %55 = and i32 %36, -61696
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %55)
  %cmp44.not = icmp ne i32 %55, 33554432
  %56 = and i32 %38, -61696
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %56)
  %cmp47.not = icmp ne i32 %56, 67108864
  %or.cond = select i1 %cmp44.not, i1 true, i1 %cmp47.not
  %sub.mask = and i64 %47, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %sub.mask)
  %cmp51.not = icmp ne i64 %sub.mask, 2
  %or.cond218 = select i1 %or.cond, i1 true, i1 %cmp51.not
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %54)
  %cmp55 = icmp slt i64 %54, 5
  %or.cond219 = select i1 %or.cond218, i1 true, i1 %cmp55
  br i1 %or.cond219, label %if.then57, label %if.then29.if.end60_crit_edge

if.then29.if.end60_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then57:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %34, 256
  %57 = ptrtoint ptr %s_flag27 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or, ptr %s_flag27, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.then29.if.end60_crit_edge, %do.end26.if.end60_crit_edge
  %58 = ptrtoint ptr %s_flag27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_flag27, align 4
  %and62 = and i32 %59, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %cmp63.not.not = icmp eq i32 %and62, 0
  br i1 %cmp63.not.not, label %if.then65, label %if.end60.if.end68_crit_edge

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %or67 = or i32 %59, 65536
  %60 = ptrtoint ptr %s_flag27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or67, ptr %s_flag27, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end60.if.end68_crit_edge
  %s_state69 = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 11
  %61 = ptrtoint ptr %s_state69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_state69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp70.not = icmp eq i32 %62, 0
  br i1 %cmp70.not, label %if.end68.if.end86_crit_edge, label %land.lhs.true

if.end68.if.end86_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

land.lhs.true:                                    ; preds = %if.end68
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %63 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body74, label %land.lhs.true.if.end86_crit_edge

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

do.body74:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %65 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp75 = icmp sgt i32 %65, 0
  br i1 %cmp75, label %do.end80, label %do.body74.brelse.exit_crit_edge

do.body74.brelse.exit_crit_edge:                  ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #9
  br label %brelse.exit

if.end86:                                         ; preds = %land.lhs.true.if.end86_crit_edge, %if.end68.if.end86_crit_edge
  %66 = tail call i32 @llvm.bswap.i32(i32 %62)
  %state = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 26
  %67 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %state, align 4
  %68 = ptrtoint ptr %s_flag27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_flag27, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 1
  %71 = ptrtoint ptr %mntflag to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %mntflag, align 4
  %bsize90 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 8
  %72 = ptrtoint ptr %bsize90 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 4096, ptr %bsize90, align 4
  %s_l2bsize = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 4
  %73 = ptrtoint ptr %s_l2bsize to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %s_l2bsize, align 4
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 9
  %76 = ptrtoint ptr %l2bsize to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %l2bsize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %74)
  %cmp102.not = icmp eq i16 %74, 3072
  br i1 %cmp102.not, label %lor.lhs.false104, label %if.end86.if.then112_crit_edge

if.end86.if.then112_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112

lor.lhs.false104:                                 ; preds = %if.end86
  %pad = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 8
  %77 = ptrtoint ptr %pad to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %pad, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp106.not = icmp eq i16 %78, 0
  br i1 %cmp106.not, label %lor.lhs.false108, label %lor.lhs.false104.if.then112_crit_edge

lor.lhs.false104.if.then112_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %79 = ptrtoint ptr %s_state69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_state69, align 8
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %81)
  %cmp110 = icmp ugt i32 %81, 15
  br i1 %cmp110, label %lor.lhs.false108.if.then112_crit_edge, label %if.end125

lor.lhs.false108.if.then112_crit_edge:            ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112

if.then112:                                       ; preds = %lor.lhs.false108.if.then112_crit_edge, %lor.lhs.false104.if.then112_crit_edge, %if.end86.if.then112_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %82 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp114 = icmp sgt i32 %82, 0
  br i1 %cmp114, label %do.end119, label %if.then112.brelse.exit_crit_edge

if.then112.brelse.exit_crit_edge:                 ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

do.end119:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %brelse.exit

if.end125:                                        ; preds = %lor.lhs.false108
  %conv127217 = zext i16 %75 to i32
  %shr = lshr i32 4096, %conv127217
  %conv128 = trunc i32 %shr to i16
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 10
  %83 = ptrtoint ptr %nbperpage to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv128, ptr %nbperpage, align 4
  %sub131 = sub i16 12, %75
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 11
  %84 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %sub131, ptr %l2nbperpage, align 2
  %sub135 = add i16 %75, -9
  %l2niperblk = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 12
  %85 = ptrtoint ptr %l2niperblk to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %sub135, ptr %l2niperblk, align 4
  %and138 = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.else, label %if.then140

if.then140:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %logpxd = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 15
  %s_logpxd = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 17
  %86 = ptrtoint ptr %s_logpxd to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %s_logpxd, align 8
  %88 = ptrtoint ptr %logpxd to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %logpxd, align 4
  br label %if.end142

if.else:                                          ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %s_logdev = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 15
  %89 = ptrtoint ptr %s_logdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_logdev, align 8
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %and1.i = and i32 %91, 255
  %shr2.i = lshr i32 %91, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %92 = shl i32 %91, 12
  %shl.i = and i32 %92, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %logdev = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 13
  %93 = ptrtoint ptr %logdev to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or4.i, ptr %logdev, align 4
  %uuid = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 18
  %s_uuid = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 26
  %94 = call ptr @memcpy(ptr %uuid, ptr %s_uuid, i32 16)
  %loguuid = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 19
  %s_loguuid = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 28
  %95 = call ptr @memcpy(ptr %loguuid, ptr %s_loguuid, i32 16)
  br label %if.end142

if.end142:                                        ; preds = %if.else, %if.then140
  %fsckpxd = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 16
  %s_fsckpxd143 = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 18
  %96 = ptrtoint ptr %s_fsckpxd143 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %s_fsckpxd143, align 8
  %98 = ptrtoint ptr %fsckpxd to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 %97, ptr %fsckpxd, align 4
  %ait2 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 17
  %s_ait2144 = getelementptr inbounds %struct.jfs_superblock, ptr %17, i32 0, i32 13
  %99 = ptrtoint ptr %s_ait2144 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %s_ait2144, align 8
  %101 = ptrtoint ptr %ait2 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %100, ptr %ait2, align 4
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.end142, %do.end119, %if.then112.brelse.exit_crit_edge, %do.end80, %do.body74.brelse.exit_crit_edge, %do.end, %do.body.brelse.exit_crit_edge, %lor.lhs.false.brelse.exit_crit_edge, %if.end.brelse.exit_crit_edge
  %rc.0 = phi i32 [ -22, %do.end119 ], [ -22, %if.then112.brelse.exit_crit_edge ], [ 0, %if.end142 ], [ -22, %lor.lhs.false.brelse.exit_crit_edge ], [ -22, %if.end.brelse.exit_crit_edge ], [ -22, %do.end ], [ -22, %do.body.brelse.exit_crit_edge ], [ -22, %do.end80 ], [ -22, %do.body74.brelse.exit_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %bh.0.ph) #6
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %brelse.exit ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @diReadSpecial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @diMount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbMount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @diFreeSpecial(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @diUnmount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbUnmount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_mount_rw(ptr noundef %sb, i32 noundef %remount) local_unnamed_addr #0 align 64 {
entry:
  %lrd.i = alloca %struct.lrd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remount)
  %tobool.not = icmp eq i32 %remount, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @chkSuper(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %state = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ipimap = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ipimap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipimap, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  tail call void @truncate_inode_pages(ptr noundef %7, i64 noundef 0) #6
  %ipbmap = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ipbmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipbmap, align 4
  %i_mapping4 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %i_mapping4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_mapping4, align 8
  tail call void @truncate_inode_pages(ptr noundef %11, i64 noundef 0) #6
  %12 = ptrtoint ptr %ipimap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipimap, align 4
  %call6 = tail call i32 @diUnmount(ptr noundef %13, i32 noundef 1) #6
  %14 = ptrtoint ptr %ipimap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipimap, align 4
  %call8 = tail call i32 @diMount(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end18, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %16 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11 = icmp sgt i32 %16, 0
  br i1 %cmp11, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %17 = ptrtoint ptr %ipbmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipbmap, align 4
  %call20 = tail call i32 @dbUnmount(ptr noundef %18, i32 noundef 1) #6
  %19 = ptrtoint ptr %ipbmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipbmap, align 4
  %call22 = tail call i32 @dbMount(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end18.if.end37_crit_edge, label %do.body25

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.body25:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %21 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp26 = icmp sgt i32 %21, 0
  br i1 %cmp26, label %do.end30, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end18.if.end37_crit_edge, %entry.if.end37_crit_edge
  %call38 = tail call i32 @lmLogOpen(ptr noundef %sb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 @updateSuper(ptr noundef %sb, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end57, label %do.body45

do.body45:                                        ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %22 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp46 = icmp sgt i32 %22, 0
  br i1 %cmp46, label %do.end50, label %do.body45.do.end55_crit_edge

do.body45.do.end55_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

do.end50:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %call42) #9
  br label %do.end55

do.end55:                                         ; preds = %do.end50, %do.body45.do.end55_crit_edge
  %call56 = tail call i32 @lmLogClose(ptr noundef %sb) #6
  br label %cleanup

if.end57:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %log1.i = getelementptr inbounds %struct.jfs_sb_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %log1.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %lrd.i) #6
  %27 = getelementptr inbounds i8, ptr %lrd.i, i32 16
  %28 = call ptr @memset(ptr %27, i32 255, i32 20)
  %29 = ptrtoint ptr %lrd.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %lrd.i, align 4
  %backchain.i = getelementptr inbounds %struct.lrd, ptr %lrd.i, i32 0, i32 1
  %30 = ptrtoint ptr %backchain.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %backchain.i, align 4
  %type.i = getelementptr inbounds %struct.lrd, ptr %lrd.i, i32 0, i32 2
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 32, ptr %type.i, align 4
  %length.i = getelementptr inbounds %struct.lrd, ptr %lrd.i, i32 0, i32 3
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %length.i, align 2
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %33 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_bdev.i, align 4
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bd_dev.i, align 4
  %and1.i.i = and i32 %36, 255
  %37 = lshr i32 %36, 12
  %shl.i.i = and i32 %37, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %36, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #6
  %aggregate.i = getelementptr inbounds %struct.lrd, ptr %lrd.i, i32 0, i32 4
  %39 = ptrtoint ptr %aggregate.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %aggregate.i, align 4
  %call3.i = call i32 @lmLog(ptr noundef %26, ptr noundef null, ptr noundef nonnull %lrd.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %lrd.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end55, %if.end37.cleanup_crit_edge, %do.end30, %do.body25.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %do.end55 ], [ 0, %if.end57 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %call8, %do.end ], [ %call8, %do.body.cleanup_crit_edge ], [ %call22, %do.end30 ], [ %call22, %do.body25.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmLogOpen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @updateSuper(ptr nocapture noundef readonly %sb, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %flag = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  %4 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %do.body [
    i32 2, label %if.then1
    i32 1, label %if.then3
    i32 0, label %if.then8
  ]

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %p_state = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %p_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %p_state, align 4
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %state4 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state4, align 4
  %p_state5 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %p_state5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p_state5, align 4
  br label %if.end25

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %p_state9 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %p_state9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_state9, align 4
  br label %if.end25

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %11 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp sgt i32 %11, 0
  br i1 %cmp11, label %do.end, label %do.body.if.end25_crit_edge

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  br label %if.end25

if.else20:                                        ; preds = %entry
  %state21 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp22 = icmp eq i32 %13, 2
  br i1 %cmp22, label %if.else20.cleanup_crit_edge, label %if.else20.if.end25_crit_edge

if.else20.if.end25_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.else20.if.end25_crit_edge, %do.end, %do.body.if.end25_crit_edge, %if.then8, %if.then3
  %state.addr.0 = phi i32 [ 2, %if.then3 ], [ %10, %if.then8 ], [ %state, %do.end ], [ %state, %do.body.if.end25_crit_edge ], [ %state, %if.else20.if.end25_crit_edge ]
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %15 to i32
  %shr.i = lshr i32 32768, %conv.i
  %16 = zext i32 %shr.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %17 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %18, i64 noundef %16, i32 noundef %20, i32 noundef 8) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i:                                         ; preds = %if.end25
  %21 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv3.i = zext i8 %22 to i32
  %shr4.i = lshr i32 61440, %conv3.i
  %23 = zext i32 %shr4.i to i64
  %24 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdev.i.i, align 4
  %26 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i18.i = tail call ptr @__bread_gfp(ptr noundef %25, i64 noundef %23, i32 noundef %27, i32 noundef 8) #6
  %tobool7.not.i = icmp eq ptr %call.i18.i, null
  br i1 %tobool7.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end29_crit_edge

if.end.i.if.end29_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end.i.if.end29_crit_edge, %if.end25.if.end29_crit_edge
  %bh.0.ph = phi ptr [ %call.i.i, %if.end25.if.end29_crit_edge ], [ %call.i18.i, %if.end.i.if.end29_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0.ph, i32 0, i32 5
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %state.addr.0)
  %s_state = getelementptr inbounds %struct.jfs_superblock, ptr %29, i32 0, i32 11
  %31 = ptrtoint ptr %s_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %s_state, align 8
  %state30 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 26
  %32 = ptrtoint ptr %state30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %state.addr.0, ptr %state30, align 4
  %33 = zext i32 %state.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %state.addr.0, label %if.end29.brelse.exit_crit_edge [
    i32 1, label %if.then32
    i32 0, label %if.then37
  ]

if.end29.brelse.exit_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %log = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %log, align 4
  %bdev = getelementptr inbounds %struct.jfs_log, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdev, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bd_dev, align 4
  %and1.i = and i32 %39, 255
  %40 = lshr i32 %39, 12
  %shl.i = and i32 %40, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %39, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %or4.i)
  %s_logdev = getelementptr inbounds %struct.jfs_superblock, ptr %29, i32 0, i32 15
  %42 = ptrtoint ptr %s_logdev to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %s_logdev, align 8
  %43 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %log, align 4
  %serial = getelementptr inbounds %struct.jfs_log, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %serial, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %s_logserial = getelementptr inbounds %struct.jfs_superblock, ptr %29, i32 0, i32 16
  %48 = ptrtoint ptr %s_logserial to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %s_logserial, align 4
  br label %brelse.exit

if.then37:                                        ; preds = %if.end29
  %s_flag = getelementptr inbounds %struct.jfs_superblock, ptr %29, i32 0, i32 10
  %49 = ptrtoint ptr %s_flag to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_flag, align 4
  %and38 = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then37.brelse.exit_crit_edge, label %if.then40

if.then37.brelse.exit_crit_edge:                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %50, 2048
  %51 = ptrtoint ptr %s_flag to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or, ptr %s_flag, align 4
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then40, %if.then37.brelse.exit_crit_edge, %if.then32, %if.end29.brelse.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef nonnull %bh.0.ph) #6
  %call45 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %bh.0.ph) #6
  tail call void @__brelse(ptr noundef nonnull %bh.0.ph) #6
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.end.i.cleanup_crit_edge, %if.else20.cleanup_crit_edge, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %brelse.exit ], [ 0, %if.else20.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmLogClose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @readSuper(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %bpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %1 to i32
  %shr = lshr i32 32768, %conv
  %2 = zext i32 %shr to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %3 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %4, i64 noundef %2, i32 noundef %6, i32 noundef 8) #6
  %7 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %bpp, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits, align 4
  %conv3 = zext i8 %9 to i32
  %shr4 = lshr i32 61440, %conv3
  %10 = zext i32 %shr4 to i64
  %11 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i, align 4
  %13 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize.i, align 16
  %call.i18 = tail call ptr @__bread_gfp(ptr noundef %12, i64 noundef %10, i32 noundef %14, i32 noundef 8) #6
  %15 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i18, ptr %bpp, align 4
  %tobool7.not = icmp eq ptr %call.i18, null
  %. = select i1 %tobool7.not, i32 -5, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmLog(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_mount.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jfs_mount._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jfs_mount._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jfs/jfs_mount.c", i32 95, i32 2}
!8 = !{ptr @jfs_mount._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jfs_mount._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jfs/jfs_mount.c", i32 101, i32 3}
!12 = !{ptr @jfs_mount._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @jfs_mount._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jfs/jfs_mount.c", i32 114, i32 2}
!16 = !{ptr @jfs_mount._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @jfs_mount._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/jfs/jfs_mount.c", i32 122, i32 3}
!20 = !{ptr @jfs_mount._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @jfs_mount._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @jfs_mount._entry.15, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../fs/jfs/jfs_mount.c", i32 140, i32 4}
!24 = !{ptr @jfs_mount._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/jfs/jfs_mount.c", i32 146, i32 3}
!27 = !{ptr @jfs_mount._entry.17, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @jfs_mount._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/jfs/jfs_mount.c", i32 152, i32 4}
!31 = !{ptr @jfs_mount._entry.20, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @jfs_mount._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/jfs/jfs_mount.c", i32 168, i32 3}
!35 = !{ptr @jfs_mount._entry.23, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @jfs_mount._entry_ptr.25, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.27, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/jfs/jfs_mount.c", i32 173, i32 2}
!39 = !{ptr @jfs_mount._entry.26, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @jfs_mount._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.30, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/jfs/jfs_mount.c", i32 180, i32 3}
!43 = !{ptr @jfs_mount._entry.29, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @jfs_mount._entry_ptr.31, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.33, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/jfs/jfs_mount.c", i32 210, i32 3}
!47 = !{ptr @jfs_mount._entry.32, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @jfs_mount._entry_ptr.34, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/jfs/jfs_mount.c", i32 239, i32 4}
!51 = !{ptr @.str.36, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @jfs_mount_rw._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @jfs_mount_rw._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.38, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/jfs/jfs_mount.c", i32 245, i32 4}
!56 = !{ptr @jfs_mount_rw._entry.37, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @jfs_mount_rw._entry_ptr.39, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.41, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/jfs/jfs_mount.c", i32 260, i32 3}
!60 = !{ptr @jfs_mount_rw._entry.40, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @jfs_mount_rw._entry_ptr.42, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/jfs/jfs_mount.c", i32 417, i32 4}
!64 = !{ptr @.str.44, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @updateSuper._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @updateSuper._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.45, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/jfs/jfs_mount.c", i32 303, i32 29}
!69 = !{ptr @.str.46, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/jfs/jfs_mount.c", i32 312, i32 3}
!71 = !{ptr @.str.47, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @chkSuper._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @chkSuper._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.49, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/jfs/jfs_mount.c", i32 318, i32 2}
!76 = !{ptr @chkSuper._entry.48, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @chkSuper._entry_ptr.50, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.52, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/jfs/jfs_mount.c", i32 348, i32 3}
!80 = !{ptr @chkSuper._entry.51, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @chkSuper._entry_ptr.53, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.55, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/jfs/jfs_mount.c", i32 368, i32 3}
!84 = !{ptr @chkSuper._entry.54, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @chkSuper._entry_ptr.56, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
