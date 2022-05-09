; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_dtree.c_pt.bc'
source_filename = "../fs/jfs/jfs_dtree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.UNICASERANGE = type { i16, i16, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
%struct.component_name = type { i32, ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }
%struct.btstack = type { ptr, i32, [8 x %struct.btframe] }
%struct.btframe = type { i64, i16, i16, ptr }
%struct.metapage = type { i16, i16, i16, i32, %struct.list_head, i32, i32, ptr, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, ptr }
%struct.anon.71 = type { i64, i64, i8, i8, i8, i8, i8, i8, [2 x i8], %struct.pxd_t }
%struct.anon.75 = type { %struct.dasd, i8, i8, i8, i8, i32, [8 x i8] }
%struct.dasd = type { i8, i8, i8, i8, i32, [3 x i8], i8, i32 }
%struct.dtslot = type { i8, i8, [15 x i16] }
%struct.ldtentry = type { i32, i8, i8, [11 x i16], i32 }
%struct.idtentry = type { %struct.pxd_t, i8, i8, [11 x i16] }
%struct.pxdlist = type { i16, i16, [8 x %struct.pxd_t] }
%struct.dtsplit = type { ptr, i16, i16, ptr, ptr, ptr }
%union.ddata_t = type { %struct.anon.79 }
%struct.anon.79 = type { i16, ptr, i32 }
%struct.tlock = type { i16, i16, i16, i16, ptr, ptr, [24 x i16] }
%struct.maplock = type { i16, i8, i8, i16, i8, i8, %struct.pxd_t }
%struct.linelock = type { i16, i8, i8, i16, i8, i8, [20 x %struct.lv] }
%struct.lv = type { i8, i8 }
%struct.dir_table_slot = type { i8, i8, i8, i8, i32 }
%struct.tblock = type { i16, i16, i16, i32, %struct.list_head, ptr, i16, i16, %struct.wait_queue_head, i32, %struct.list_head, i32, ptr, i32, i32, %struct.wait_queue_head, %union.anon.70, i32 }
%union.anon.70 = type { %struct.pxd_t }
%struct.file = type { %union.anon.24, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.dtoffset.80 = type { i16, i16, i32 }
%struct.jfs_dirent = type { i64, i32, i16, [0 x i8] }

@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@dtSearch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013bread failed!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dtSearch\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/jfs/jfs_dtree.c\00", [45 x i8] zeroinitializer }, align 32
@dtSearch._entry_ptr = internal global ptr @dtSearch._entry, section ".printk_index", align 4
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DT_GETPAGE: dtree page corrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stack overrun!\0A\00", [16 x i8] zeroinitializer }, align 32
@dtSearch._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@dtSearch._entry_ptr.7 = internal global ptr @dtSearch._entry.5, section ".printk_index", align 4
@dtInsert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.9, ptr @.str.2, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dtInsert\00", [23 x i8] zeroinitializer }, align 32
@dtInsert._entry_ptr = internal global ptr @dtInsert._entry, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dtlck->index == 0\00", [46 x i8] zeroinitializer }, align 32
@dtDelete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 2119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dtDelete\00", [23 x i8] zeroinitializer }, align 32
@dtDelete._entry_ptr = internal global ptr @dtDelete._entry, section ".printk_index", align 4
@TxBlock = external dso_local local_unnamed_addr global ptr, align 4
@dtInitRoot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.12, ptr @.str.2, i32 2869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dtInitRoot\00", [21 x i8] zeroinitializer }, align 32
@dtInitRoot._entry_ptr = internal global ptr @dtInitRoot._entry, section ".printk_index", align 4
@jfs_readdir.unique_pos = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@jfs_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 3063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013jfs_readdir detected infinite loop!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jfs_readdir\00", [20 x i8] zeroinitializer }, align 32
@jfs_readdir._entry_ptr = internal global ptr @jfs_readdir._entry, section ".printk_index", align 4
@jfs_readdir._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 3076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_readdir._entry_ptr.16 = internal global ptr @jfs_readdir._entry.15, section ".printk_index", align 4
@jfs_readdir._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 3082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013jfs_readdir: bad index table\0A\00", [32 x i8] zeroinitializer }, align 32
@jfs_readdir._entry_ptr.19 = internal global ptr @jfs_readdir._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@jfs_readdir._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.2, i32 3141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013jfs_readdir called with invalid offset!\0A\00", [53 x i8] zeroinitializer }, align 32
@jfs_readdir._entry_ptr.24 = internal global ptr @jfs_readdir._entry.22, section ".printk_index", align 4
@jfs_readdir._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.14, ptr @.str.2, i32 3155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013jfs_readdir: unexpected rc = %d from dtReadNext\0A\00", [45 x i8] zeroinitializer }, align 32
@jfs_readdir._entry_ptr.27 = internal global ptr @jfs_readdir._entry.25, section ".printk_index", align 4
@jfs_readdir._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.14, ptr @.str.2, i32 3172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014jfs_readdir: __get_free_page failed!\0A\00", [56 x i8] zeroinitializer }, align 32
@jfs_readdir._entry_ptr.30 = internal global ptr @jfs_readdir._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"JFS:Dtree error: ino = %ld, bn=%lld, index = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@jfs_readdir._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 3311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_readdir._entry_ptr.33 = internal global ptr @jfs_readdir._entry.32, section ".printk_index", align 4
@dtModify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.34, ptr @.str.2, i32 4546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dtModify\00", [23 x i8] zeroinitializer }, align 32
@dtModify._entry_ptr = internal global ptr @dtModify._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@UniUpperTable = external dso_local local_unnamed_addr global [512 x i8], align 1
@UniUpperRange = external dso_local local_unnamed_addr global [0 x %struct.UNICASERANGE], align 4
@BT_STACK_DUMP._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.37, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"btstack dump:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BT_STACK_DUMP\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/jfs/jfs_btree.h\00", [45 x i8] zeroinitializer }, align 32
@BT_STACK_DUMP._entry_ptr = internal global ptr @BT_STACK_DUMP._entry, section ".printk_index", align 4
@BT_STACK_DUMP._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.37, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013bn = %Lx, index = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@BT_STACK_DUMP._entry_ptr.40 = internal global ptr @BT_STACK_DUMP._entry.38, section ".printk_index", align 4
@dtSplitUp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.41, ptr @.str.2, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dtSplitUp\00", [22 x i8] zeroinitializer }, align 32
@dtSplitUp._entry_ptr = internal global ptr @dtSplitUp._entry, section ".printk_index", align 4
@dtSplitUp._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013dtSplitUp(): UFO!\0A\00", [43 x i8] zeroinitializer }, align 32
@dtSplitUp._entry_ptr.44 = internal global ptr @dtSplitUp._entry.42, section ".printk_index", align 4
@dtSplitUp._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.41, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtSplitUp._entry_ptr.46 = internal global ptr @dtSplitUp._entry.45, section ".printk_index", align 4
@dtSplitRoot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.47, ptr @.str.2, i32 1934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dtSplitRoot\00", [20 x i8] zeroinitializer }, align 32
@dtSplitRoot._entry_ptr = internal global ptr @dtSplitRoot._entry, section ".printk_index", align 4
@dtSplitRoot._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.47, ptr @.str.2, i32 2020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtSplitRoot._entry_ptr.49 = internal global ptr @dtSplitRoot._entry.48, section ".printk_index", align 4
@dtExtendPage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.50, ptr @.str.2, i32 1661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dtExtendPage\00", [19 x i8] zeroinitializer }, align 32
@dtExtendPage._entry_ptr = internal global ptr @dtExtendPage._entry, section ".printk_index", align 4
@dtExtendPage._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016dtExtendPage: ip:0x%p smp:0x%p sp:0x%p\0A\00", [54 x i8] zeroinitializer }, align 32
@dtExtendPage._entry_ptr.53 = internal global ptr @dtExtendPage._entry.51, section ".printk_index", align 4
@dtSplitPage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016dtSplitPage: ip:0x%p smp:0x%p rmp:0x%p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dtSplitPage\00", [20 x i8] zeroinitializer }, align 32
@dtSplitPage._entry_ptr = internal global ptr @dtSplitPage._entry, section ".printk_index", align 4
@dtSplitPage._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.55, ptr @.str.2, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtSplitPage._entry_ptr.57 = internal global ptr @dtSplitPage._entry.56, section ".printk_index", align 4
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdtlck->index == 0\00", [45 x i8] zeroinitializer }, align 32
@dtSplitPage._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtSplitPage._entry_ptr.60 = internal global ptr @dtSplitPage._entry.59, section ".printk_index", align 4
@dtSplitPage._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.2, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016dtSplitPage: tlck = 0x%p, ip = 0x%p, mp=0x%p\0A\00", [48 x i8] zeroinitializer }, align 32
@dtSplitPage._entry_ptr.63 = internal global ptr @dtSplitPage._entry.61, section ".printk_index", align 4
@find_index.maxWarnings = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@find_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014find_entry called with index = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"find_index\00", [21 x i8] zeroinitializer }, align 32
@find_index._entry_ptr = internal global ptr @find_index._entry, section ".printk_index", align 4
@find_index._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014find_entry called with index >= next_index\0A\00", [50 x i8] zeroinitializer }, align 32
@find_index._entry_ptr.68 = internal global ptr @find_index._entry.66, section ".printk_index", align 4
@find_index._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013free_index: error reading directory table\0A\00", [51 x i8] zeroinitializer }, align 32
@find_index._entry_ptr.71 = internal global ptr @find_index._entry.69, section ".printk_index", align 4
@dtDeleteUp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.72, ptr @.str.2, i32 2296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dtDeleteUp\00", [21 x i8] zeroinitializer }, align 32
@dtDeleteUp._entry_ptr = internal global ptr @dtDeleteUp._entry, section ".printk_index", align 4
@dtRelink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.73, ptr @.str.2, i32 2749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dtRelink\00", [23 x i8] zeroinitializer }, align 32
@dtRelink._entry_ptr = internal global ptr @dtRelink._entry, section ".printk_index", align 4
@dtRelink._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 2761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016dtRelink nextbn: tlck = 0x%p, ip = 0x%p, mp=0x%p\0A\00", [44 x i8] zeroinitializer }, align 32
@dtRelink._entry_ptr.76 = internal global ptr @dtRelink._entry.74, section ".printk_index", align 4
@dtRelink._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.73, ptr @.str.2, i32 2778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtRelink._entry_ptr.78 = internal global ptr @dtRelink._entry.77, section ".printk_index", align 4
@dtRelink._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.73, ptr @.str.2, i32 2790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016dtRelink prevbn: tlck = 0x%p, ip = 0x%p, mp=0x%p\0A\00", [44 x i8] zeroinitializer }, align 32
@dtRelink._entry_ptr.81 = internal global ptr @dtRelink._entry.79, section ".printk_index", align 4
@dtTruncateEntry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.82, ptr @.str.2, i32 4370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dtTruncateEntry\00", [16 x i8] zeroinitializer }, align 32
@dtTruncateEntry._entry_ptr = internal global ptr @dtTruncateEntry._entry, section ".printk_index", align 4
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"p->header.flag & 0x04\00", [42 x i8] zeroinitializer }, align 32
@add_missing_indices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.84, ptr @.str.2, i32 2922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"add_missing_indices\00", [44 x i8] zeroinitializer }, align 32
@add_missing_indices._entry_ptr = internal global ptr @add_missing_indices._entry, section ".printk_index", align 4
@add_missing_indices._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 2925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013DT_GETPAGE failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@add_missing_indices._entry_ptr.87 = internal global ptr @add_missing_indices._entry.85, section ".printk_index", align 4
@add_missing_indices._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.84, ptr @.str.2, i32 2930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@add_missing_indices._entry_ptr.89 = internal global ptr @add_missing_indices._entry.88, section ".printk_index", align 4
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"p->header.flag & 0x02\00", [42 x i8] zeroinitializer }, align 32
@add_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.91, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"add_index\00", [22 x i8] zeroinitializer }, align 32
@add_index._entry_ptr = internal global ptr @add_index._entry, section ".printk_index", align 4
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(JFS_SBI((ip)->i_sb)->mntflag & 0x00200000)\00", [52 x i8] zeroinitializer }, align 32
@add_index._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.91, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014add_index: next_index = %d.  Resetting!\0A\00", [53 x i8] zeroinitializer }, align 32
@add_index._entry_ptr.95 = internal global ptr @add_index._entry.93, section ".printk_index", align 4
@add_index._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.91, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014add_index: xtInsert failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@add_index._entry_ptr.98 = internal global ptr @add_index._entry.96, section ".printk_index", align 4
@add_index._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.91, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013add_index: get_metapage failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@add_index._entry_ptr.101 = internal global ptr @add_index._entry.99, section ".printk_index", align 4
@add_index._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.91, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@add_index._entry_ptr.103 = internal global ptr @add_index._entry.102, section ".printk_index", align 4
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"llck->index == 0\00", [47 x i8] zeroinitializer }, align 32
@add_index._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.91, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@add_index._entry_ptr.106 = internal global ptr @add_index._entry.105, section ".printk_index", align 4
@add_index._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.91, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013add_index: get/read_metapage failed!\0A\00", [56 x i8] zeroinitializer }, align 32
@add_index._entry_ptr.109 = internal global ptr @add_index._entry.107, section ".printk_index", align 4
@dtReadFirst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.110, ptr @.str.2, i32 3349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dtReadFirst\00", [20 x i8] zeroinitializer }, align 32
@dtReadFirst._entry_ptr = internal global ptr @dtReadFirst._entry, section ".printk_index", align 4
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btstack overrun\0A\00", [47 x i8] zeroinitializer }, align 32
@dtReadFirst._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.110, ptr @.str.2, i32 3376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtReadFirst._entry_ptr.113 = internal global ptr @dtReadFirst._entry.112, section ".printk_index", align 4
@dtReadNext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.114, ptr @.str.2, i32 3486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dtReadNext\00", [21 x i8] zeroinitializer }, align 32
@dtReadNext._entry_ptr = internal global ptr @dtReadNext._entry, section ".printk_index", align 4
@dtReadNext._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.114, ptr @.str.2, i32 3507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtReadNext._entry_ptr.116 = internal global ptr @dtReadNext._entry.115, section ".printk_index", align 4
@dtReadNext._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.114, ptr @.str.2, i32 3527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtReadNext._entry_ptr.118 = internal global ptr @dtReadNext._entry.117, section ".printk_index", align 4
@dtReadNext._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.114, ptr @.str.2, i32 3548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtReadNext._entry_ptr.120 = internal global ptr @dtReadNext._entry.119, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 623, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 767, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 775, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 878, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2118, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2869, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [11 x i8] c"unique_pos\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3022, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3063, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3076, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3082, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3093, i32 24 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3100, i32 23 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3141, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3154, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3172, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3251, i32 9 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3311, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 4546, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 134, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [22 x i8] c"../fs/jfs/jfs_btree.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 136, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1126, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1205, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1255, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1934, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2020, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1661, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1715, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1366, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1389, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1463, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1474, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [12 x i8] c"maxWarnings\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 244, i32 13 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 248, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 255, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 280, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2296, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2749, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2760, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2778, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2789, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 4370, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2922, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2925, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 2930, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 337, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 340, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 395, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 406, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 414, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 441, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 454, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3349, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3371, i32 24 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3376, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3486, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3507, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3527, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.448 = private constant [22 x i8] c"../fs/jfs/jfs_dtree.c\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 3548, i32 3 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @BT_STACK_DUMP._entry, ptr @BT_STACK_DUMP._entry.38, ptr @BT_STACK_DUMP._entry_ptr, ptr @BT_STACK_DUMP._entry_ptr.40, ptr @add_index._entry, ptr @add_index._entry.102, ptr @add_index._entry.105, ptr @add_index._entry.107, ptr @add_index._entry.93, ptr @add_index._entry.96, ptr @add_index._entry.99, ptr @add_index._entry_ptr, ptr @add_index._entry_ptr.101, ptr @add_index._entry_ptr.103, ptr @add_index._entry_ptr.106, ptr @add_index._entry_ptr.109, ptr @add_index._entry_ptr.95, ptr @add_index._entry_ptr.98, ptr @add_missing_indices._entry, ptr @add_missing_indices._entry.85, ptr @add_missing_indices._entry.88, ptr @add_missing_indices._entry_ptr, ptr @add_missing_indices._entry_ptr.87, ptr @add_missing_indices._entry_ptr.89, ptr @dtDelete._entry, ptr @dtDelete._entry_ptr, ptr @dtDeleteUp._entry, ptr @dtDeleteUp._entry_ptr, ptr @dtExtendPage._entry, ptr @dtExtendPage._entry.51, ptr @dtExtendPage._entry_ptr, ptr @dtExtendPage._entry_ptr.53, ptr @dtInitRoot._entry, ptr @dtInitRoot._entry_ptr, ptr @dtInsert._entry, ptr @dtInsert._entry_ptr, ptr @dtModify._entry, ptr @dtModify._entry_ptr, ptr @dtReadFirst._entry, ptr @dtReadFirst._entry.112, ptr @dtReadFirst._entry_ptr, ptr @dtReadFirst._entry_ptr.113, ptr @dtReadNext._entry, ptr @dtReadNext._entry.115, ptr @dtReadNext._entry.117, ptr @dtReadNext._entry.119, ptr @dtReadNext._entry_ptr, ptr @dtReadNext._entry_ptr.116, ptr @dtReadNext._entry_ptr.118, ptr @dtReadNext._entry_ptr.120, ptr @dtRelink._entry, ptr @dtRelink._entry.74, ptr @dtRelink._entry.77, ptr @dtRelink._entry.79, ptr @dtRelink._entry_ptr, ptr @dtRelink._entry_ptr.76, ptr @dtRelink._entry_ptr.78, ptr @dtRelink._entry_ptr.81, ptr @dtSearch._entry, ptr @dtSearch._entry.5, ptr @dtSearch._entry_ptr, ptr @dtSearch._entry_ptr.7, ptr @dtSplitPage._entry, ptr @dtSplitPage._entry.56, ptr @dtSplitPage._entry.59, ptr @dtSplitPage._entry.61, ptr @dtSplitPage._entry_ptr, ptr @dtSplitPage._entry_ptr.57, ptr @dtSplitPage._entry_ptr.60, ptr @dtSplitPage._entry_ptr.63, ptr @dtSplitRoot._entry, ptr @dtSplitRoot._entry.48, ptr @dtSplitRoot._entry_ptr, ptr @dtSplitRoot._entry_ptr.49, ptr @dtSplitUp._entry, ptr @dtSplitUp._entry.42, ptr @dtSplitUp._entry.45, ptr @dtSplitUp._entry_ptr, ptr @dtSplitUp._entry_ptr.44, ptr @dtSplitUp._entry_ptr.46, ptr @dtTruncateEntry._entry, ptr @dtTruncateEntry._entry_ptr, ptr @find_index._entry, ptr @find_index._entry.66, ptr @find_index._entry.69, ptr @find_index._entry_ptr, ptr @find_index._entry_ptr.68, ptr @find_index._entry_ptr.71, ptr @jfs_readdir._entry, ptr @jfs_readdir._entry.15, ptr @jfs_readdir._entry.17, ptr @jfs_readdir._entry.22, ptr @jfs_readdir._entry.25, ptr @jfs_readdir._entry.28, ptr @jfs_readdir._entry.32, ptr @jfs_readdir._entry_ptr, ptr @jfs_readdir._entry_ptr.16, ptr @jfs_readdir._entry_ptr.19, ptr @jfs_readdir._entry_ptr.24, ptr @jfs_readdir._entry_ptr.27, ptr @jfs_readdir._entry_ptr.30, ptr @jfs_readdir._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @jfs_readdir.unique_pos, ptr @.str.13, ptr @.str.14, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.62, ptr @find_index.maxWarnings, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.104, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.114], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSearch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSearch._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtInsert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtDelete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtInitRoot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_readdir.unique_pos to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_readdir._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_readdir._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_readdir._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_readdir._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_readdir._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_readdir._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtModify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BT_STACK_DUMP._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BT_STACK_DUMP._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSplitUp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSplitUp._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSplitUp._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSplitRoot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSplitRoot._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtExtendPage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtExtendPage._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSplitPage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSplitPage._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSplitPage._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtSplitPage._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_index.maxWarnings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_index._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_index._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtDeleteUp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtRelink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtRelink._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtRelink._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtRelink._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtTruncateEntry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_missing_indices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_missing_indices._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_missing_indices._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_index._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_index._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_index._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_index._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_index._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_index._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtReadFirst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtReadFirst._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtReadNext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtReadNext._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtReadNext._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtReadNext._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtSearch(ptr noundef %ip, ptr nocapture noundef readonly %key, ptr nocapture noundef %data, ptr noundef %btstack, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3136, i32 noundef 512) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.dtSearch_Exit2_crit_edge, label %if.end

entry.dtSearch_Exit2_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtSearch_Exit2

if.end:                                           ; preds = %entry
  %name3 = getelementptr inbounds %struct.component_name, ptr %key, i32 0, i32 1
  %3 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name3, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end
  %ucs1.addr.0.i = phi ptr [ %call7.i.i, %if.end ], [ %incdec.ptr1.i, %while.cond.i.while.cond.i_crit_edge ]
  %ucs2.addr.0.i = phi ptr [ %4, %if.end ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %ucs2.addr.0.i, i32 1
  %5 = ptrtoint ptr %ucs2.addr.0.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ucs2.addr.0.i, align 2
  %incdec.ptr1.i = getelementptr i16, ptr %ucs1.addr.0.i, i32 1
  %7 = ptrtoint ptr %ucs1.addr.0.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %ucs1.addr.0.i, align 2
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %UniStrcpy.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

UniStrcpy.exit:                                   ; preds = %while.cond.i
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mntflag, align 4
  %and = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7.not = icmp eq i32 %and, 0
  br i1 %cmp7.not, label %UniStrcpy.exit.if.end11_crit_edge, label %if.then8

UniStrcpy.exit.if.end11_crit_edge:                ; preds = %UniStrcpy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %UniStrcpy.exit
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not3.i = icmp eq i16 %15, 0
  br i1 %tobool.not3.i, label %if.then8.if.end11_crit_edge, label %if.then8.while.body.i_crit_edge

if.then8.while.body.i_crit_edge:                  ; preds = %if.then8
  br label %while.body.i

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

while.body.i:                                     ; preds = %UniToupper.exit.i.while.body.i_crit_edge, %if.then8.while.body.i_crit_edge
  %16 = phi i16 [ %29, %UniToupper.exit.i.while.body.i_crit_edge ], [ %15, %if.then8.while.body.i_crit_edge ]
  %up.04.i = phi ptr [ %incdec.ptr.i305, %UniToupper.exit.i.while.body.i_crit_edge ], [ %call7.i.i, %if.then8.while.body.i_crit_edge ]
  %conv.i.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %16)
  %cmp.i.i = icmp ult i16 %16, 512
  br i1 %cmp.i.i, label %if.then.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %while.body.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @UniUpperRange to i32))
  %17 = load i16, ptr @UniUpperRange, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not40.i.i = icmp eq i16 %17, 0
  br i1 %tobool.not40.i.i, label %while.cond.preheader.i.i.UniToupper.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.UniToupper.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr [512 x i8], ptr @UniUpperTable, i32 0, i32 %conv.i.i
  br label %cleanup.sink.split.i.i

while.body.i.i:                                   ; preds = %if.end24.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %18 = phi i16 [ %24, %if.end24.i.i.while.body.i.i_crit_edge ], [ %17, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %rp.041.i.i = phi ptr [ %incdec.ptr.i.i, %if.end24.i.i.while.body.i.i_crit_edge ], [ @UniUpperRange, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %16)
  %cmp8.i.i = icmp ugt i16 %18, %16
  br i1 %cmp8.i.i, label %while.body.i.i.UniToupper.exit.i_crit_edge, label %if.end.i.i

while.body.i.i.UniToupper.exit.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %end.i.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %end.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %16)
  %cmp13.not.i.i = icmp ult i16 %20, %16
  br i1 %cmp13.not.i.i, label %if.end24.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.le.i.i = zext i16 %18 to i32
  %table.i.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %table.i.i, align 4
  %sub.i.i = sub nsw i32 %conv.i.i, %conv7.le.i.i
  %arrayidx20.i.i = getelementptr i8, ptr %22, i32 %sub.i.i
  br label %cleanup.sink.split.i.i

if.end24.i.i:                                     ; preds = %if.end.i.i
  %incdec.ptr.i.i = getelementptr %struct.UNICASERANGE, ptr %rp.041.i.i, i32 1
  %23 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i.i, label %if.end24.i.i.UniToupper.exit.i_crit_edge, label %if.end24.i.i.while.body.i.i_crit_edge

if.end24.i.i.while.body.i.i_crit_edge:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end24.i.i.UniToupper.exit.i_crit_edge:         ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit.i

cleanup.sink.split.i.i:                           ; preds = %if.then15.i.i, %if.then.i.i
  %arrayidx20.sink.i.i = phi ptr [ %arrayidx20.i.i, %if.then15.i.i ], [ %arrayidx.i.i, %if.then.i.i ]
  %25 = ptrtoint ptr %arrayidx20.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx20.sink.i.i, align 1
  %conv21.i.i = sext i8 %26 to i16
  %add22.i.i = add i16 %16, %conv21.i.i
  br label %UniToupper.exit.i

UniToupper.exit.i:                                ; preds = %cleanup.sink.split.i.i, %if.end24.i.i.UniToupper.exit.i_crit_edge, %while.body.i.i.UniToupper.exit.i_crit_edge, %while.cond.preheader.i.i.UniToupper.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %16, %while.cond.preheader.i.i.UniToupper.exit.i_crit_edge ], [ %add22.i.i, %cleanup.sink.split.i.i ], [ %16, %while.body.i.i.UniToupper.exit.i_crit_edge ], [ %16, %if.end24.i.i.UniToupper.exit.i_crit_edge ]
  %27 = ptrtoint ptr %up.04.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %retval.0.i.i, ptr %up.04.i, align 2
  %incdec.ptr.i305 = getelementptr i16, ptr %up.04.i, i32 1
  %28 = ptrtoint ptr %incdec.ptr.i305 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %incdec.ptr.i305, align 2
  %tobool.not.i306 = icmp eq i16 %29, 0
  br i1 %tobool.not.i306, label %UniToupper.exit.i.if.end11_crit_edge, label %UniToupper.exit.i.while.body.i_crit_edge

UniToupper.exit.i.while.body.i_crit_edge:         ; preds = %UniToupper.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

UniToupper.exit.i.if.end11_crit_edge:             ; preds = %UniToupper.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %UniToupper.exit.i.if.end11_crit_edge, %if.then8.if.end11_crit_edge, %UniStrcpy.exit.if.end11_crit_edge
  %stack = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2
  %30 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %stack, ptr %btstack, align 8
  %nsplit = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 1
  %31 = ptrtoint ptr %nsplit to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %nsplit, align 4
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %_dtroot = getelementptr i8, ptr %ip, i32 -304
  %nextindex369 = getelementptr i8, ptr %ip, i32 -287
  %arrayidx160 = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end11
  %bn.0 = phi i64 [ 0, %if.end11 ], [ %add.i, %for.cond.backedge ]
  %psize.0 = phi i32 [ 288, %if.end11 ], [ %shl, %for.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bn.0)
  %cmp12 = icmp eq i64 %bn.0, 0
  br i1 %cmp12, label %cond.end, label %if.else

if.else:                                          ; preds = %for.cond
  %conv = trunc i64 %bn.0 to i32
  %call16 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv, i32 noundef %psize.0, i32 noundef 1, i32 noundef 0) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.else20, label %cond.end.thread

if.else20:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %32 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp22 = icmp sgt i32 %32, 0
  br i1 %cmp22, label %do.end, label %if.else20.dtSearch_Exit1_crit_edge

if.else20.dtSearch_Exit1_crit_edge:               ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtSearch_Exit1

do.end:                                           ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %dtSearch_Exit1

cond.end:                                         ; preds = %for.cond
  %33 = ptrtoint ptr %nextindex369 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nextindex369, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %34)
  %cmp38 = icmp ugt i8 %34, 9
  br i1 %cmp38, label %cond.end.if.then45_crit_edge, label %cond.end.if.end59_crit_edge

cond.end.if.end59_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

cond.end.if.then45_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

cond.end.thread:                                  ; preds = %if.else
  %data19 = getelementptr inbounds %struct.metapage, ptr %call16, i32 0, i32 7
  %35 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data19, align 4
  %nextindex = getelementptr inbounds %struct.anon.71, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nextindex, align 1
  %maxslot = getelementptr inbounds %struct.anon.71, ptr %36, i32 0, i32 6
  %39 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %maxslot, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %38)
  %cmp38379 = icmp ult i8 %40, %38
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %40)
  %cmp43 = icmp ugt i8 %40, -128
  %or.cond = or i1 %cmp38379, %cmp43
  br i1 %or.cond, label %cond.end.thread.if.then45_crit_edge, label %cond.end.thread.if.end59_crit_edge

cond.end.thread.if.end59_crit_edge:               ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

cond.end.thread.if.then45_crit_edge:              ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %cond.end.thread.if.then45_crit_edge, %cond.end.if.then45_crit_edge
  %mp.0.ph371382 = phi ptr [ %bxflag, %cond.end.if.then45_crit_edge ], [ %call16, %cond.end.thread.if.then45_crit_edge ]
  %41 = ptrtoint ptr %mp.0.ph371382 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mp.0.ph371382, align 8
  %43 = and i16 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp48 = icmp eq i16 %43, 0
  br i1 %cmp48, label %if.then45.if.end51_crit_edge, label %if.then50

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %mp.0.ph371382) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then45.if.end51_crit_edge
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %45, ptr noundef nonnull @.str.3) #8
  br label %dtSearch_Exit1

if.end59:                                         ; preds = %cond.end.thread.if.end59_crit_edge, %cond.end.if.end59_crit_edge
  %p.0363 = phi ptr [ %_dtroot, %cond.end.if.end59_crit_edge ], [ %36, %cond.end.thread.if.end59_crit_edge ]
  %mp.1 = phi ptr [ %bxflag, %cond.end.if.end59_crit_edge ], [ %call16, %cond.end.thread.if.end59_crit_edge ]
  %flag60 = getelementptr inbounds %struct.anon.71, ptr %p.0363, i32 0, i32 2
  %46 = ptrtoint ptr %flag60 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %flag60, align 8
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool63.not = icmp eq i8 %48, 0
  br i1 %tobool63.not, label %cond.false67, label %cond.true64

cond.true64:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %stbl65 = getelementptr inbounds %struct.anon.75, ptr %p.0363, i32 0, i32 6
  br label %cond.end68

cond.false67:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p.0363, i32 0, i32 7
  %49 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %stblindex, align 1
  %idxprom = zext i8 %50 to i32
  %arrayidx = getelementptr [128 x %struct.dtslot], ptr %p.0363, i32 0, i32 %idxprom
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.true64
  %cond69 = phi ptr [ %stbl65, %cond.true64 ], [ %arrayidx, %cond.false67 ]
  %nextindex70 = getelementptr inbounds %struct.anon.71, ptr %p.0363, i32 0, i32 3
  %51 = ptrtoint ptr %nextindex70 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nextindex70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool73.not417 = icmp eq i8 %52, 0
  br i1 %tobool73.not417, label %cond.end68.for.end_crit_edge, label %for.body.lr.ph

cond.end68.for.end_crit_edge:                     ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = and i8 %47, 2
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end68
  %conv71 = zext i8 %52 to i32
  %53 = and i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool77.not = icmp eq i8 %53, 0
  br label %for.body

for.body:                                         ; preds = %if.end125.for.body_crit_edge, %for.body.lr.ph
  %lim.0419 = phi i32 [ %conv71, %for.body.lr.ph ], [ %shr131, %if.end125.for.body_crit_edge ]
  %base.0418 = phi i32 [ 0, %for.body.lr.ph ], [ %base.1, %if.end125.for.body_crit_edge ]
  %shr = ashr i32 %lim.0419, 1
  %add = add i32 %shr, %base.0418
  %arrayidx85 = getelementptr i8, ptr %cond69, i32 %add
  %54 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx85, align 1
  %conv86 = sext i8 %55 to i32
  br i1 %tobool77.not, label %if.else84, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %56 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i, align 16
  %mntflag82 = getelementptr inbounds %struct.jfs_sb_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %mntflag82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mntflag82, align 4
  %arrayidx20.i = getelementptr [128 x %struct.dtslot], ptr %p.0363, i32 0, i32 %conv86
  %next.i = getelementptr inbounds %struct.ldtentry, ptr %arrayidx20.i, i32 0, i32 1
  %60 = ptrtoint ptr %next.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %next.i, align 4
  %namlen6.i = getelementptr inbounds %struct.ldtentry, ptr %arrayidx20.i, i32 0, i32 2
  %62 = ptrtoint ptr %namlen6.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %namlen6.i, align 1
  %and8.i = and i32 %59, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %minmaxop = select i1 %tobool9.not.i, i8 13, i8 11
  %len.0.in.i = tail call i8 @llvm.umin.i8(i8 %minmaxop, i8 %63)
  %namlen.0.i = zext i8 %63 to i32
  %len.0.i = zext i8 %len.0.in.i to i32
  %64 = tail call i32 @llvm.smin.i32(i32 %9, i32 %len.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp42212.i = icmp sgt i32 %64, 0
  br i1 %cmp42212.i, label %for.body.lr.ph.i, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %name5.i = getelementptr inbounds %struct.ldtentry, ptr %arrayidx20.i, i32 0, i32 3
  %and44.i = and i32 %59, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %cmp45.not.i = icmp eq i32 %and44.i, 0
  %65 = shl nuw nsw i32 %64, 1
  %uglygep.i = getelementptr i8, ptr %call7.i.i, i32 %65
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %kname.0216.i = phi ptr [ %call7.i.i, %for.body.lr.ph.i ], [ %incdec.ptr.i334, %for.inc.i.for.body.i_crit_edge ]
  %name.1214.i = phi ptr [ %name5.i, %for.body.lr.ph.i ], [ %incdec.ptr55.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0213.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %66 = ptrtoint ptr %name.1214.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %name.1214.i, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #8
  br i1 %cmp45.not.i, label %for.body.i.if.end49.i_crit_edge, label %if.then47.i

for.body.i.if.end49.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then47.i:                                      ; preds = %for.body.i
  %conv.i.i310 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %68)
  %cmp.i.i311 = icmp ult i16 %68, 512
  br i1 %cmp.i.i311, label %if.then.i.i315, label %while.cond.preheader.i.i313

while.cond.preheader.i.i313:                      ; preds = %if.then47.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @UniUpperRange to i32))
  %69 = load i16, ptr @UniUpperRange, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not40.i.i312 = icmp eq i16 %69, 0
  br i1 %tobool.not40.i.i312, label %while.cond.preheader.i.i313.if.end49.i_crit_edge, label %while.cond.preheader.i.i313.while.body.i.i318_crit_edge

while.cond.preheader.i.i313.while.body.i.i318_crit_edge: ; preds = %while.cond.preheader.i.i313
  br label %while.body.i.i318

while.cond.preheader.i.i313.if.end49.i_crit_edge: ; preds = %while.cond.preheader.i.i313
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then.i.i315:                                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i314 = getelementptr [512 x i8], ptr @UniUpperTable, i32 0, i32 %conv.i.i310
  br label %cleanup.sink.split.i.i333

while.body.i.i318:                                ; preds = %if.end24.i.i329.while.body.i.i318_crit_edge, %while.cond.preheader.i.i313.while.body.i.i318_crit_edge
  %70 = phi i16 [ %76, %if.end24.i.i329.while.body.i.i318_crit_edge ], [ %69, %while.cond.preheader.i.i313.while.body.i.i318_crit_edge ]
  %rp.041.i.i316 = phi ptr [ %incdec.ptr.i.i327, %if.end24.i.i329.while.body.i.i318_crit_edge ], [ @UniUpperRange, %while.cond.preheader.i.i313.while.body.i.i318_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %68)
  %cmp8.i.i317 = icmp ugt i16 %70, %68
  br i1 %cmp8.i.i317, label %while.body.i.i318.if.end49.i_crit_edge, label %if.end.i.i321

while.body.i.i318.if.end49.i_crit_edge:           ; preds = %while.body.i.i318
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.end.i.i321:                                    ; preds = %while.body.i.i318
  %end.i.i319 = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i.i316, i32 0, i32 1
  %71 = ptrtoint ptr %end.i.i319 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %end.i.i319, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %68)
  %cmp13.not.i.i320 = icmp ult i16 %72, %68
  br i1 %cmp13.not.i.i320, label %if.end24.i.i329, label %if.then15.i.i326

if.then15.i.i326:                                 ; preds = %if.end.i.i321
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.le.i.i322 = zext i16 %70 to i32
  %table.i.i323 = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i.i316, i32 0, i32 2
  %73 = ptrtoint ptr %table.i.i323 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %table.i.i323, align 4
  %sub.i.i324 = sub nsw i32 %conv.i.i310, %conv7.le.i.i322
  %arrayidx20.i.i325 = getelementptr i8, ptr %74, i32 %sub.i.i324
  br label %cleanup.sink.split.i.i333

if.end24.i.i329:                                  ; preds = %if.end.i.i321
  %incdec.ptr.i.i327 = getelementptr %struct.UNICASERANGE, ptr %rp.041.i.i316, i32 1
  %75 = ptrtoint ptr %incdec.ptr.i.i327 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %incdec.ptr.i.i327, align 4
  %tobool.not.i.i328 = icmp eq i16 %76, 0
  br i1 %tobool.not.i.i328, label %if.end24.i.i329.if.end49.i_crit_edge, label %if.end24.i.i329.while.body.i.i318_crit_edge

if.end24.i.i329.while.body.i.i318_crit_edge:      ; preds = %if.end24.i.i329
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i318

if.end24.i.i329.if.end49.i_crit_edge:             ; preds = %if.end24.i.i329
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

cleanup.sink.split.i.i333:                        ; preds = %if.then15.i.i326, %if.then.i.i315
  %arrayidx20.sink.i.i330 = phi ptr [ %arrayidx20.i.i325, %if.then15.i.i326 ], [ %arrayidx.i.i314, %if.then.i.i315 ]
  %77 = ptrtoint ptr %arrayidx20.sink.i.i330 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx20.sink.i.i330, align 1
  %conv21.i.i331 = sext i8 %78 to i16
  %add22.i.i332 = add i16 %68, %conv21.i.i331
  br label %if.end49.i

if.end49.i:                                       ; preds = %cleanup.sink.split.i.i333, %if.end24.i.i329.if.end49.i_crit_edge, %while.body.i.i318.if.end49.i_crit_edge, %while.cond.preheader.i.i313.if.end49.i_crit_edge, %for.body.i.if.end49.i_crit_edge
  %x.0.i = phi i16 [ %68, %while.cond.preheader.i.i313.if.end49.i_crit_edge ], [ %add22.i.i332, %cleanup.sink.split.i.i333 ], [ %68, %for.body.i.if.end49.i_crit_edge ], [ %68, %while.body.i.i318.if.end49.i_crit_edge ], [ %68, %if.end24.i.i329.if.end49.i_crit_edge ]
  %79 = ptrtoint ptr %kname.0216.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %kname.0216.i, align 2
  %conv50.i = zext i16 %80 to i32
  %conv51.i = zext i16 %x.0.i to i32
  %sub.i = sub nsw i32 %conv50.i, %conv51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool52.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool52.not.i, label %for.inc.i, label %if.end49.i.if.end88_crit_edge

if.end49.i.if.end88_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

for.inc.i:                                        ; preds = %if.end49.i
  %inc.i = add nuw nsw i32 %i.0213.i, 1
  %incdec.ptr.i334 = getelementptr i16, ptr %kname.0216.i, i32 1
  %incdec.ptr55.i = getelementptr i16, ptr %name.1214.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %64
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %kname.0.lcssa.i = phi ptr [ %call7.i.i, %if.then.i.for.end.i_crit_edge ], [ %uglygep.i, %for.inc.i.for.end.i_crit_edge ]
  %sub56.i = sub i32 %9, %64
  %sub57.i = sub i32 %namlen.0.i, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub56.i)
  %cmp58223.i = icmp sgt i32 %sub56.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub57.i)
  %cmp60224.i = icmp sgt i32 %sub57.i, 0
  %or.cond225.i = select i1 %cmp58223.i, i1 %cmp60224.i, i1 false
  br i1 %or.cond225.i, label %while.body.lr.ph.i, label %for.end.i.while.end.i_crit_edge

for.end.i.while.end.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %for.end.i
  %and83.i = and i32 %59, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %cmp84.not.i = icmp eq i32 %and83.i, 0
  br label %while.body.i335

while.body.i335:                                  ; preds = %for.end100.i.while.body.i335_crit_edge, %while.body.lr.ph.i
  %si.addr.1.in229.i = phi i8 [ %61, %while.body.lr.ph.i ], [ %100, %for.end100.i.while.body.i335_crit_edge ]
  %kname.1228.i = phi ptr [ %kname.0.lcssa.i, %while.body.lr.ph.i ], [ %uglygep239.i, %for.end100.i.while.body.i335_crit_edge ]
  %klen.0227.i = phi i32 [ %sub56.i, %while.body.lr.ph.i ], [ %sub101.i, %for.end100.i.while.body.i335_crit_edge ]
  %namlen.1226.i = phi i32 [ %sub57.i, %while.body.lr.ph.i ], [ %sub102.i, %for.end100.i.while.body.i335_crit_edge ]
  %si.addr.1.i = sext i8 %si.addr.1.in229.i to i32
  %arrayidx62.i = getelementptr [128 x %struct.dtslot], ptr %p.0363, i32 0, i32 %si.addr.1.i
  %81 = tail call i32 @llvm.umin.i32(i32 %namlen.1226.i, i32 %klen.0227.i) #8
  %82 = tail call i32 @llvm.umin.i32(i32 %81, i32 15) #8
  %name77.i = getelementptr [128 x %struct.dtslot], ptr %p.0363, i32 0, i32 %si.addr.1.i, i32 2
  %83 = shl nuw nsw i32 %82, 1
  %uglygep239.i = getelementptr i8, ptr %kname.1228.i, i32 %83
  br label %for.body82.i

for.body82.i:                                     ; preds = %for.inc96.i.for.body82.i_crit_edge, %while.body.i335
  %kname.2221.i = phi ptr [ %incdec.ptr98.i, %for.inc96.i.for.body82.i_crit_edge ], [ %kname.1228.i, %while.body.i335 ]
  %name.2219.i = phi ptr [ %incdec.ptr99.i, %for.inc96.i.for.body82.i_crit_edge ], [ %name77.i, %while.body.i335 ]
  %i.1218.i = phi i32 [ %inc97.i, %for.inc96.i.for.body82.i_crit_edge ], [ 0, %while.body.i335 ]
  %84 = ptrtoint ptr %name.2219.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %name.2219.i, align 2
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #8
  br i1 %cmp84.not.i, label %for.body82.i.if.end89.i_crit_edge, label %if.then86.i

for.body82.i.if.end89.i_crit_edge:                ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then86.i:                                      ; preds = %for.body82.i
  %conv.i174.i = zext i16 %86 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %86)
  %cmp.i175.i = icmp ult i16 %86, 512
  br i1 %cmp.i175.i, label %if.then.i179.i, label %while.cond.preheader.i177.i

while.cond.preheader.i177.i:                      ; preds = %if.then86.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @UniUpperRange to i32))
  %87 = load i16, ptr @UniUpperRange, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool.not40.i176.i = icmp eq i16 %87, 0
  br i1 %tobool.not40.i176.i, label %while.cond.preheader.i177.i.if.end89.i_crit_edge, label %while.cond.preheader.i177.i.while.body.i182.i_crit_edge

while.cond.preheader.i177.i.while.body.i182.i_crit_edge: ; preds = %while.cond.preheader.i177.i
  br label %while.body.i182.i

while.cond.preheader.i177.i.if.end89.i_crit_edge: ; preds = %while.cond.preheader.i177.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then.i179.i:                                   ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i178.i = getelementptr [512 x i8], ptr @UniUpperTable, i32 0, i32 %conv.i174.i
  br label %cleanup.sink.split.i197.i

while.body.i182.i:                                ; preds = %if.end24.i193.i.while.body.i182.i_crit_edge, %while.cond.preheader.i177.i.while.body.i182.i_crit_edge
  %88 = phi i16 [ %94, %if.end24.i193.i.while.body.i182.i_crit_edge ], [ %87, %while.cond.preheader.i177.i.while.body.i182.i_crit_edge ]
  %rp.041.i180.i = phi ptr [ %incdec.ptr.i191.i, %if.end24.i193.i.while.body.i182.i_crit_edge ], [ @UniUpperRange, %while.cond.preheader.i177.i.while.body.i182.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %86)
  %cmp8.i181.i = icmp ugt i16 %88, %86
  br i1 %cmp8.i181.i, label %while.body.i182.i.if.end89.i_crit_edge, label %if.end.i185.i

while.body.i182.i.if.end89.i_crit_edge:           ; preds = %while.body.i182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.end.i185.i:                                    ; preds = %while.body.i182.i
  %end.i183.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i180.i, i32 0, i32 1
  %89 = ptrtoint ptr %end.i183.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %end.i183.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %86)
  %cmp13.not.i184.i = icmp ult i16 %90, %86
  br i1 %cmp13.not.i184.i, label %if.end24.i193.i, label %if.then15.i190.i

if.then15.i190.i:                                 ; preds = %if.end.i185.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.le.i186.i = zext i16 %88 to i32
  %table.i187.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i180.i, i32 0, i32 2
  %91 = ptrtoint ptr %table.i187.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %table.i187.i, align 4
  %sub.i188.i = sub nsw i32 %conv.i174.i, %conv7.le.i186.i
  %arrayidx20.i189.i = getelementptr i8, ptr %92, i32 %sub.i188.i
  br label %cleanup.sink.split.i197.i

if.end24.i193.i:                                  ; preds = %if.end.i185.i
  %incdec.ptr.i191.i = getelementptr %struct.UNICASERANGE, ptr %rp.041.i180.i, i32 1
  %93 = ptrtoint ptr %incdec.ptr.i191.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %incdec.ptr.i191.i, align 4
  %tobool.not.i192.i = icmp eq i16 %94, 0
  br i1 %tobool.not.i192.i, label %if.end24.i193.i.if.end89.i_crit_edge, label %if.end24.i193.i.while.body.i182.i_crit_edge

if.end24.i193.i.while.body.i182.i_crit_edge:      ; preds = %if.end24.i193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i182.i

if.end24.i193.i.if.end89.i_crit_edge:             ; preds = %if.end24.i193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

cleanup.sink.split.i197.i:                        ; preds = %if.then15.i190.i, %if.then.i179.i
  %arrayidx20.sink.i194.i = phi ptr [ %arrayidx20.i189.i, %if.then15.i190.i ], [ %arrayidx.i178.i, %if.then.i179.i ]
  %95 = ptrtoint ptr %arrayidx20.sink.i194.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx20.sink.i194.i, align 1
  %conv21.i195.i = sext i8 %96 to i16
  %add22.i196.i = add i16 %86, %conv21.i195.i
  br label %if.end89.i

if.end89.i:                                       ; preds = %cleanup.sink.split.i197.i, %if.end24.i193.i.if.end89.i_crit_edge, %while.body.i182.i.if.end89.i_crit_edge, %while.cond.preheader.i177.i.if.end89.i_crit_edge, %for.body82.i.if.end89.i_crit_edge
  %x.1.i = phi i16 [ %86, %while.cond.preheader.i177.i.if.end89.i_crit_edge ], [ %add22.i196.i, %cleanup.sink.split.i197.i ], [ %86, %for.body82.i.if.end89.i_crit_edge ], [ %86, %while.body.i182.i.if.end89.i_crit_edge ], [ %86, %if.end24.i193.i.if.end89.i_crit_edge ]
  %97 = ptrtoint ptr %kname.2221.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %kname.2221.i, align 2
  %conv90.i = zext i16 %98 to i32
  %conv91.i = zext i16 %x.1.i to i32
  %sub92.i = sub nsw i32 %conv90.i, %conv91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub92.i)
  %tobool93.not.i = icmp eq i32 %sub92.i, 0
  br i1 %tobool93.not.i, label %for.inc96.i, label %if.end89.i.if.end88_crit_edge

if.end89.i.if.end88_crit_edge:                    ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

for.inc96.i:                                      ; preds = %if.end89.i
  %inc97.i = add nuw nsw i32 %i.1218.i, 1
  %incdec.ptr98.i = getelementptr i16, ptr %kname.2221.i, i32 1
  %incdec.ptr99.i = getelementptr i16, ptr %name.2219.i, i32 1
  %exitcond240.not.i = icmp eq i32 %inc97.i, %82
  br i1 %exitcond240.not.i, label %for.end100.i, label %for.inc96.i.for.body82.i_crit_edge

for.inc96.i.for.body82.i_crit_edge:               ; preds = %for.inc96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body82.i

for.end100.i:                                     ; preds = %for.inc96.i
  %sub101.i = sub i32 %klen.0227.i, %82
  %sub102.i = sub i32 %namlen.1226.i, %82
  %99 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx62.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub101.i)
  %cmp58.i = icmp sgt i32 %sub101.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub102.i)
  %cmp60.i = icmp sgt i32 %sub102.i, 0
  %or.cond.i = select i1 %cmp58.i, i1 %cmp60.i, i1 false
  br i1 %or.cond.i, label %for.end100.i.while.body.i335_crit_edge, label %for.end100.i.while.end.i_crit_edge

for.end100.i.while.end.i_crit_edge:               ; preds = %for.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

for.end100.i.while.body.i335_crit_edge:           ; preds = %for.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i335

while.end.i:                                      ; preds = %for.end100.i.while.end.i_crit_edge, %for.end.i.while.end.i_crit_edge
  %namlen.1.lcssa.i = phi i32 [ %sub57.i, %for.end.i.while.end.i_crit_edge ], [ %sub102.i, %for.end100.i.while.end.i_crit_edge ]
  %klen.0.lcssa.i = phi i32 [ %sub56.i, %for.end.i.while.end.i_crit_edge ], [ %sub101.i, %for.end100.i.while.end.i_crit_edge ]
  %sub105.i = sub i32 %klen.0.lcssa.i, %namlen.1.lcssa.i
  br label %if.end88

if.else84:                                        ; preds = %for.body
  %arrayidx.i = getelementptr [128 x %struct.dtslot], ptr %p.0363, i32 0, i32 %conv86
  %next.i337 = getelementptr inbounds %struct.idtentry, ptr %arrayidx.i, i32 0, i32 1
  %101 = ptrtoint ptr %next.i337 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %next.i337, align 4
  %namlen4.i = getelementptr inbounds %struct.idtentry, ptr %arrayidx.i, i32 0, i32 2
  %103 = ptrtoint ptr %namlen4.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %namlen4.i, align 1
  %conv5.i = zext i8 %104 to i32
  %105 = tail call i8 @llvm.umin.i8(i8 %104, i8 11) #8
  %106 = zext i8 %105 to i32
  %107 = tail call i32 @llvm.smin.i32(i32 %9, i32 %106) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i.i338 = icmp eq i32 %107, 0
  br i1 %tobool.not.i.i338, label %if.else84.if.end.i_crit_edge, label %while.cond.preheader.i.i339

if.else84.if.end.i_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.cond.preheader.i.i339:                      ; preds = %if.else84
  %name3.i = getelementptr inbounds %struct.idtentry, ptr %arrayidx.i, i32 0, i32 3
  %108 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %call7.i.i, align 8
  %110 = ptrtoint ptr %name3.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %name3.i, align 2
  %112 = tail call i16 @llvm.bswap.i16(i16 %111) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %109, i16 %112)
  %cmp17.i.i = icmp ne i16 %109, %112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool4.not18.i.i = icmp eq i16 %109, 0
  %or.cond19.i.i = or i1 %tobool4.not18.i.i, %cmp17.i.i
  br i1 %or.cond19.i.i, label %while.cond.preheader.i.i339.UniStrncmp_le.exit.i_crit_edge, label %land.rhs.i.preheader.i

while.cond.preheader.i.i339.UniStrncmp_le.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i339
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncmp_le.exit.i

land.rhs.i.preheader.i:                           ; preds = %while.cond.preheader.i.i339
  %dec.i121.i = add i32 %107, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i121.i)
  %tobool5.not.i122.i = icmp eq i32 %dec.i121.i, 0
  br i1 %tobool5.not.i122.i, label %land.rhs.i.preheader.i.UniStrncmp_le.exit.i_crit_edge, label %land.rhs.i.preheader.i.while.body.i.i342_crit_edge

land.rhs.i.preheader.i.while.body.i.i342_crit_edge: ; preds = %land.rhs.i.preheader.i
  br label %while.body.i.i342

land.rhs.i.preheader.i.UniStrncmp_le.exit.i_crit_edge: ; preds = %land.rhs.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncmp_le.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i.i342
  %dec.i.i = add i32 %dec.i125.i, -1
  %tobool5.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool5.not.i.i, label %land.rhs.i.i.UniStrncmp_le.exit.i_crit_edge, label %land.rhs.i.i.while.body.i.i342_crit_edge

land.rhs.i.i.while.body.i.i342_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i342

land.rhs.i.i.UniStrncmp_le.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncmp_le.exit.i

while.body.i.i342:                                ; preds = %land.rhs.i.i.while.body.i.i342_crit_edge, %land.rhs.i.preheader.i.while.body.i.i342_crit_edge
  %dec.i125.i = phi i32 [ %dec.i.i, %land.rhs.i.i.while.body.i.i342_crit_edge ], [ %dec.i121.i, %land.rhs.i.preheader.i.while.body.i.i342_crit_edge ]
  %ucs1.addr.020.i124.i = phi ptr [ %incdec.ptr.i.i340, %land.rhs.i.i.while.body.i.i342_crit_edge ], [ %call7.i.i, %land.rhs.i.preheader.i.while.body.i.i342_crit_edge ]
  %ucs2.addr.021.i123.i = phi ptr [ %incdec.ptr6.i.i, %land.rhs.i.i.while.body.i.i342_crit_edge ], [ %name3.i, %land.rhs.i.preheader.i.while.body.i.i342_crit_edge ]
  %incdec.ptr.i.i340 = getelementptr i16, ptr %ucs1.addr.020.i124.i, i32 1
  %incdec.ptr6.i.i = getelementptr i16, ptr %ucs2.addr.021.i123.i, i32 1
  %113 = ptrtoint ptr %incdec.ptr.i.i340 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %incdec.ptr.i.i340, align 2
  %115 = ptrtoint ptr %incdec.ptr6.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %incdec.ptr6.i.i, align 2
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %114, i16 %117)
  %cmp.i.i341 = icmp ne i16 %114, %117
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool4.not.i.i = icmp eq i16 %114, 0
  %or.cond.i.i = or i1 %tobool4.not.i.i, %cmp.i.i341
  br i1 %or.cond.i.i, label %while.body.i.i342.UniStrncmp_le.exit.i_crit_edge, label %land.rhs.i.i

while.body.i.i342.UniStrncmp_le.exit.i_crit_edge: ; preds = %while.body.i.i342
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncmp_le.exit.i

UniStrncmp_le.exit.i:                             ; preds = %while.body.i.i342.UniStrncmp_le.exit.i_crit_edge, %land.rhs.i.i.UniStrncmp_le.exit.i_crit_edge, %land.rhs.i.preheader.i.UniStrncmp_le.exit.i_crit_edge, %while.cond.preheader.i.i339.UniStrncmp_le.exit.i_crit_edge
  %.lcssa16.i.i = phi i16 [ %109, %while.cond.preheader.i.i339.UniStrncmp_le.exit.i_crit_edge ], [ %109, %land.rhs.i.preheader.i.UniStrncmp_le.exit.i_crit_edge ], [ %114, %land.rhs.i.i.UniStrncmp_le.exit.i_crit_edge ], [ %114, %while.body.i.i342.UniStrncmp_le.exit.i_crit_edge ]
  %.lcssa.i.i = phi i16 [ %112, %while.cond.preheader.i.i339.UniStrncmp_le.exit.i_crit_edge ], [ %109, %land.rhs.i.preheader.i.UniStrncmp_le.exit.i_crit_edge ], [ %117, %while.body.i.i342.UniStrncmp_le.exit.i_crit_edge ], [ %114, %land.rhs.i.i.UniStrncmp_le.exit.i_crit_edge ]
  %conv7.i.i = zext i16 %.lcssa16.i.i to i32
  %conv8.i.i = zext i16 %.lcssa.i.i to i32
  %sub.i.i343 = sub nsw i32 %conv7.i.i, %conv8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i343)
  %tobool.not.i344 = icmp eq i32 %sub.i.i343, 0
  br i1 %tobool.not.i344, label %UniStrncmp_le.exit.i.if.end.i_crit_edge, label %UniStrncmp_le.exit.i.if.end88_crit_edge

UniStrncmp_le.exit.i.if.end88_crit_edge:          ; preds = %UniStrncmp_le.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

UniStrncmp_le.exit.i.if.end.i_crit_edge:          ; preds = %UniStrncmp_le.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %UniStrncmp_le.exit.i.if.end.i_crit_edge, %if.else84.if.end.i_crit_edge
  %sub.i345 = sub i32 %9, %107
  %sub14.i = sub i32 %conv5.i, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i345)
  %cmp15138.i = icmp sgt i32 %sub.i345, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i)
  %cmp17139.i = icmp sgt i32 %sub14.i, 0
  %or.cond140.i = select i1 %cmp15138.i, i1 %cmp17139.i, i1 false
  br i1 %or.cond140.i, label %while.cond.preheader.i95.preheader.i, label %if.end.i.while.end.i349_crit_edge

if.end.i.while.end.i349_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i349

while.cond.preheader.i95.preheader.i:             ; preds = %if.end.i
  %add.ptr.i346 = getelementptr i16, ptr %call7.i.i, i32 %107
  br label %while.cond.preheader.i95.i

while.cond.preheader.i95.i:                       ; preds = %if.end39.i.while.cond.preheader.i95.i_crit_edge, %while.cond.preheader.i95.preheader.i
  %si.addr.0.in146.i = phi i8 [ %131, %if.end39.i.while.cond.preheader.i95.i_crit_edge ], [ %102, %while.cond.preheader.i95.preheader.i ]
  %kname.0143.i = phi ptr [ %add.ptr42.i, %if.end39.i.while.cond.preheader.i95.i_crit_edge ], [ %add.ptr.i346, %while.cond.preheader.i95.preheader.i ]
  %klen.0142.i = phi i32 [ %sub40.i, %if.end39.i.while.cond.preheader.i95.i_crit_edge ], [ %sub.i345, %while.cond.preheader.i95.preheader.i ]
  %namlen.0141.i = phi i32 [ %sub41.i, %if.end39.i.while.cond.preheader.i95.i_crit_edge ], [ %sub14.i, %while.cond.preheader.i95.preheader.i ]
  %si.addr.0.i = sext i8 %si.addr.0.in146.i to i32
  %arrayidx19.i = getelementptr [128 x %struct.dtslot], ptr %p.0363, i32 0, i32 %si.addr.0.i
  %118 = tail call i32 @llvm.umin.i32(i32 %namlen.0141.i, i32 %klen.0142.i) #8
  %119 = tail call i32 @llvm.umin.i32(i32 %118, i32 15) #8
  %name34.i = getelementptr [128 x %struct.dtslot], ptr %p.0363, i32 0, i32 %si.addr.0.i, i32 2
  %120 = ptrtoint ptr %kname.0143.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %kname.0143.i, align 2
  %122 = ptrtoint ptr %name34.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %name34.i, align 2
  %124 = tail call i16 @llvm.bswap.i16(i16 %123) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %121, i16 %124)
  %cmp17.i92.i = icmp ne i16 %121, %124
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool4.not18.i93.i = icmp eq i16 %121, 0
  %or.cond19.i94.i = or i1 %tobool4.not18.i93.i, %cmp17.i92.i
  br i1 %or.cond19.i94.i, label %while.cond.preheader.i95.i.UniStrncmp_le.exit115.i_crit_edge, label %land.rhs.i101.preheader.i

while.cond.preheader.i95.i.UniStrncmp_le.exit115.i_crit_edge: ; preds = %while.cond.preheader.i95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncmp_le.exit115.i

land.rhs.i101.preheader.i:                        ; preds = %while.cond.preheader.i95.i
  %dec.i99129.i = add nsw i32 %119, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i99129.i)
  %tobool5.not.i100130.i = icmp eq i32 %dec.i99129.i, 0
  br i1 %tobool5.not.i100130.i, label %land.rhs.i101.preheader.i.UniStrncmp_le.exit115.i_crit_edge, label %land.rhs.i101.preheader.i.while.body.i107.i_crit_edge

land.rhs.i101.preheader.i.while.body.i107.i_crit_edge: ; preds = %land.rhs.i101.preheader.i
  br label %while.body.i107.i

land.rhs.i101.preheader.i.UniStrncmp_le.exit115.i_crit_edge: ; preds = %land.rhs.i101.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncmp_le.exit115.i

land.rhs.i101.i:                                  ; preds = %while.body.i107.i
  %dec.i99.i = add i32 %dec.i99133.i, -1
  %tobool5.not.i100.i = icmp eq i32 %dec.i99.i, 0
  br i1 %tobool5.not.i100.i, label %land.rhs.i101.i.UniStrncmp_le.exit115.i_crit_edge, label %land.rhs.i101.i.while.body.i107.i_crit_edge

land.rhs.i101.i.while.body.i107.i_crit_edge:      ; preds = %land.rhs.i101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i107.i

land.rhs.i101.i.UniStrncmp_le.exit115.i_crit_edge: ; preds = %land.rhs.i101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncmp_le.exit115.i

while.body.i107.i:                                ; preds = %land.rhs.i101.i.while.body.i107.i_crit_edge, %land.rhs.i101.preheader.i.while.body.i107.i_crit_edge
  %dec.i99133.i = phi i32 [ %dec.i99.i, %land.rhs.i101.i.while.body.i107.i_crit_edge ], [ %dec.i99129.i, %land.rhs.i101.preheader.i.while.body.i107.i_crit_edge ]
  %ucs1.addr.020.i98132.i = phi ptr [ %incdec.ptr.i102.i, %land.rhs.i101.i.while.body.i107.i_crit_edge ], [ %kname.0143.i, %land.rhs.i101.preheader.i.while.body.i107.i_crit_edge ]
  %ucs2.addr.021.i97131.i = phi ptr [ %incdec.ptr6.i103.i, %land.rhs.i101.i.while.body.i107.i_crit_edge ], [ %name34.i, %land.rhs.i101.preheader.i.while.body.i107.i_crit_edge ]
  %incdec.ptr.i102.i = getelementptr i16, ptr %ucs1.addr.020.i98132.i, i32 1
  %incdec.ptr6.i103.i = getelementptr i16, ptr %ucs2.addr.021.i97131.i, i32 1
  %125 = ptrtoint ptr %incdec.ptr.i102.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %incdec.ptr.i102.i, align 2
  %127 = ptrtoint ptr %incdec.ptr6.i103.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %incdec.ptr6.i103.i, align 2
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %126, i16 %129)
  %cmp.i104.i = icmp ne i16 %126, %129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool4.not.i105.i = icmp eq i16 %126, 0
  %or.cond.i106.i = or i1 %tobool4.not.i105.i, %cmp.i104.i
  br i1 %or.cond.i106.i, label %while.body.i107.i.UniStrncmp_le.exit115.i_crit_edge, label %land.rhs.i101.i

while.body.i107.i.UniStrncmp_le.exit115.i_crit_edge: ; preds = %while.body.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncmp_le.exit115.i

UniStrncmp_le.exit115.i:                          ; preds = %while.body.i107.i.UniStrncmp_le.exit115.i_crit_edge, %land.rhs.i101.i.UniStrncmp_le.exit115.i_crit_edge, %land.rhs.i101.preheader.i.UniStrncmp_le.exit115.i_crit_edge, %while.cond.preheader.i95.i.UniStrncmp_le.exit115.i_crit_edge
  %.lcssa16.i108.i = phi i16 [ %121, %while.cond.preheader.i95.i.UniStrncmp_le.exit115.i_crit_edge ], [ %121, %land.rhs.i101.preheader.i.UniStrncmp_le.exit115.i_crit_edge ], [ %126, %land.rhs.i101.i.UniStrncmp_le.exit115.i_crit_edge ], [ %126, %while.body.i107.i.UniStrncmp_le.exit115.i_crit_edge ]
  %.lcssa.i109.i = phi i16 [ %124, %while.cond.preheader.i95.i.UniStrncmp_le.exit115.i_crit_edge ], [ %121, %land.rhs.i101.preheader.i.UniStrncmp_le.exit115.i_crit_edge ], [ %129, %while.body.i107.i.UniStrncmp_le.exit115.i_crit_edge ], [ %126, %land.rhs.i101.i.UniStrncmp_le.exit115.i_crit_edge ]
  %conv7.i110.i = zext i16 %.lcssa16.i108.i to i32
  %conv8.i111.i = zext i16 %.lcssa.i109.i to i32
  %sub.i112.i = sub nsw i32 %conv7.i110.i, %conv8.i111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i112.i)
  %tobool37.not.i = icmp eq i32 %sub.i112.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %UniStrncmp_le.exit115.i.if.end88_crit_edge

UniStrncmp_le.exit115.i.if.end88_crit_edge:       ; preds = %UniStrncmp_le.exit115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.end39.i:                                       ; preds = %UniStrncmp_le.exit115.i
  %sub40.i = sub i32 %klen.0142.i, %119
  %sub41.i = sub i32 %namlen.0141.i, %119
  %add.ptr42.i = getelementptr i16, ptr %kname.0143.i, i32 %119
  %130 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx19.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub40.i)
  %cmp15.i = icmp sgt i32 %sub40.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41.i)
  %cmp17.i = icmp sgt i32 %sub41.i, 0
  %or.cond.i347 = select i1 %cmp15.i, i1 %cmp17.i, i1 false
  br i1 %or.cond.i347, label %if.end39.i.while.cond.preheader.i95.i_crit_edge, label %if.end39.i.while.end.i349_crit_edge

if.end39.i.while.end.i349_crit_edge:              ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i349

if.end39.i.while.cond.preheader.i95.i_crit_edge:  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i95.i

while.end.i349:                                   ; preds = %if.end39.i.while.end.i349_crit_edge, %if.end.i.while.end.i349_crit_edge
  %namlen.0.lcssa.i = phi i32 [ %sub14.i, %if.end.i.while.end.i349_crit_edge ], [ %sub41.i, %if.end39.i.while.end.i349_crit_edge ]
  %klen.0.lcssa.i348 = phi i32 [ %sub.i345, %if.end.i.while.end.i349_crit_edge ], [ %sub40.i, %if.end39.i.while.end.i349_crit_edge ]
  %sub45.i = sub i32 %klen.0.lcssa.i348, %namlen.0.lcssa.i
  br label %if.end88

if.end88:                                         ; preds = %while.end.i349, %UniStrncmp_le.exit115.i.if.end88_crit_edge, %UniStrncmp_le.exit.i.if.end88_crit_edge, %while.end.i, %if.end89.i.if.end88_crit_edge, %if.end49.i.if.end88_crit_edge
  %cmp.0 = phi i32 [ %sub105.i, %while.end.i ], [ %sub45.i, %while.end.i349 ], [ %sub.i.i343, %UniStrncmp_le.exit.i.if.end88_crit_edge ], [ %sub92.i, %if.end89.i.if.end88_crit_edge ], [ %sub.i112.i, %UniStrncmp_le.exit115.i.if.end88_crit_edge ], [ %sub.i, %if.end49.i.if.end88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0)
  %cmp89 = icmp eq i32 %cmp.0, 0
  br i1 %cmp89, label %if.then91, label %if.end125

if.then91:                                        ; preds = %if.end88
  br i1 %tobool77.not, label %if.then91.getChild_crit_edge, label %if.then96

if.then91.getChild_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %getChild

if.then96:                                        ; preds = %if.then91
  %conv86.le.le = sext i8 %55 to i32
  %arrayidx99 = getelementptr [128 x %struct.dtslot], ptr %p.0363, i32 0, i32 %conv86.le.le
  %132 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx99, align 8
  %134 = tail call i32 @llvm.bswap.i32(i32 %133)
  %135 = zext i32 %flag to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flag, label %if.then96.if.end118_crit_edge [
    i32 2, label %if.then103
    i32 1, label %if.then107
    i32 3, label %if.then96.land.lhs.true114_crit_edge
    i32 4, label %if.then96.land.lhs.true114_crit_edge623
  ]

if.then96.land.lhs.true114_crit_edge623:          ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true114

if.then96.land.lhs.true114_crit_edge:             ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true114

if.then96.if.end118_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then103:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %134, ptr %data, align 4
  br label %out

if.then107:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %134, ptr %data, align 4
  br label %out

land.lhs.true114:                                 ; preds = %if.then96.land.lhs.true114_crit_edge, %if.then96.land.lhs.true114_crit_edge623
  %138 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %134)
  %cmp115.not = icmp eq i32 %139, %134
  br i1 %cmp115.not, label %land.lhs.true114.if.end118_crit_edge, label %land.lhs.true114.out_crit_edge

land.lhs.true114.out_crit_edge:                   ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true114.if.end118_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.end118:                                        ; preds = %land.lhs.true114.if.end118_crit_edge, %if.then96.if.end118_crit_edge
  %140 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %134, ptr %data, align 4
  %141 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %btstack, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %bn.0, ptr %142, align 8
  %conv121 = trunc i32 %add to i16
  %index122 = getelementptr inbounds %struct.btframe, ptr %142, i32 0, i32 1
  %144 = ptrtoint ptr %index122 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv121, ptr %index122, align 8
  %mp123 = getelementptr inbounds %struct.btframe, ptr %142, i32 0, i32 3
  %145 = ptrtoint ptr %mp123 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %mp.1, ptr %mp123, align 4
  br label %dtSearch_Exit1

if.end125:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0)
  %cmp126 = icmp sgt i32 %cmp.0, 0
  %add129 = add i32 %add, 1
  %base.1 = select i1 %cmp126, i32 %add129, i32 %base.0418
  %dec = sext i1 %cmp126 to i32
  %lim.1 = add nsw i32 %lim.0419, %dec
  %shr131 = ashr i32 %lim.1, 1
  %tobool73.not = icmp ult i32 %lim.1, 2
  br i1 %tobool73.not, label %if.end125.for.end_crit_edge, label %if.end125.for.body_crit_edge

if.end125.for.body_crit_edge:                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end125.for.end_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end125.for.end_crit_edge, %cond.end68.for.end_crit_edge
  %.pre-phi = phi i8 [ %.pre, %cond.end68.for.end_crit_edge ], [ %53, %if.end125.for.end_crit_edge ]
  %base.0.lcssa = phi i32 [ 0, %cond.end68.for.end_crit_edge ], [ %base.1, %if.end125.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pre-phi)
  %tobool135.not = icmp eq i8 %.pre-phi, 0
  br i1 %tobool135.not, label %if.end152, label %if.then136

if.then136:                                       ; preds = %for.end
  %flag.off = add i32 %flag, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flag.off)
  %switch = icmp ult i32 %flag.off, 3
  br i1 %switch, label %if.then136.out_crit_edge, label %if.end146

if.then136.out_crit_edge:                         ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end146:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %data, align 4
  %147 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %btstack, align 8
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %bn.0, ptr %148, align 8
  %conv149 = trunc i32 %base.0.lcssa to i16
  %index150 = getelementptr inbounds %struct.btframe, ptr %148, i32 0, i32 1
  %150 = ptrtoint ptr %index150 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv149, ptr %index150, align 8
  %mp151 = getelementptr inbounds %struct.btframe, ptr %148, i32 0, i32 3
  %151 = ptrtoint ptr %mp151 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %mp.1, ptr %mp151, align 4
  br label %dtSearch_Exit1

if.end152:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base.0.lcssa)
  %tobool153.not = icmp eq i32 %base.0.lcssa, 0
  %sub = add i32 %base.0.lcssa, -1
  %cond157 = select i1 %tobool153.not, i32 0, i32 %sub
  br label %getChild

getChild:                                         ; preds = %if.end152, %if.then91.getChild_crit_edge
  %index.0 = phi i32 [ %add, %if.then91.getChild_crit_edge ], [ %cond157, %if.end152 ]
  %152 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %btstack, align 8
  %cmp161 = icmp eq ptr %153, %arrayidx160
  br i1 %cmp161, label %if.then163, label %do.end186

if.then163:                                       ; preds = %getChild
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %1, ptr noundef nonnull @.str.4) #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  %154 = ptrtoint ptr %stack to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %stack, align 8
  %index.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 0, i32 1
  %156 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %index.i, align 8
  %conv.i = sext i16 %157 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %155, i32 noundef %conv.i) #12
  %arrayidx.1.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 1
  %158 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %arrayidx.1.i, align 8
  %index.1.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 1, i32 1
  %160 = ptrtoint ptr %index.1.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %index.1.i, align 8
  %conv.1.i = sext i16 %161 to i32
  %call7.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %159, i32 noundef %conv.1.i) #12
  %arrayidx.2.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 2
  %162 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %arrayidx.2.i, align 8
  %index.2.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 2, i32 1
  %164 = ptrtoint ptr %index.2.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %index.2.i, align 8
  %conv.2.i = sext i16 %165 to i32
  %call7.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %163, i32 noundef %conv.2.i) #12
  %arrayidx.3.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 3
  %166 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %arrayidx.3.i, align 8
  %index.3.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 3, i32 1
  %168 = ptrtoint ptr %index.3.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %index.3.i, align 8
  %conv.3.i = sext i16 %169 to i32
  %call7.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %167, i32 noundef %conv.3.i) #12
  %arrayidx.4.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 4
  %170 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx.4.i, align 8
  %index.4.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 4, i32 1
  %172 = ptrtoint ptr %index.4.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %index.4.i, align 8
  %conv.4.i = sext i16 %173 to i32
  %call7.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %171, i32 noundef %conv.4.i) #12
  %arrayidx.5.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 5
  %174 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %arrayidx.5.i, align 8
  %index.5.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 5, i32 1
  %176 = ptrtoint ptr %index.5.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %index.5.i, align 8
  %conv.5.i = sext i16 %177 to i32
  %call7.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %175, i32 noundef %conv.5.i) #12
  %arrayidx.6.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 6
  %178 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %arrayidx.6.i, align 8
  %index.6.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 6, i32 1
  %180 = ptrtoint ptr %index.6.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %index.6.i, align 8
  %conv.6.i = sext i16 %181 to i32
  %call7.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %179, i32 noundef %conv.6.i) #12
  %182 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %arrayidx160, align 8
  %index.7.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 7, i32 1
  %184 = ptrtoint ptr %index.7.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %index.7.i, align 8
  %conv.7.i = sext i16 %185 to i32
  %call7.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %183, i32 noundef %conv.7.i) #12
  br label %out

do.end186:                                        ; preds = %getChild
  %186 = ptrtoint ptr %nsplit to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %nsplit, align 4
  %inc = add i32 %187, 1
  store i32 %inc, ptr %nsplit, align 4
  %188 = ptrtoint ptr %153 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %bn.0, ptr %153, align 8
  %conv189 = trunc i32 %index.0 to i16
  %189 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %btstack, align 8
  %index191 = getelementptr inbounds %struct.btframe, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %index191 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv189, ptr %index191, align 8
  %192 = load ptr, ptr %btstack, align 8
  %incdec.ptr = getelementptr %struct.btframe, ptr %192, i32 1
  store ptr %incdec.ptr, ptr %btstack, align 8
  %arrayidx193 = getelementptr i8, ptr %cond69, i32 %index.0
  %193 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx193, align 1
  %idxprom194 = sext i8 %194 to i32
  %arrayidx195 = getelementptr [128 x %struct.dtslot], ptr %p.0363, i32 0, i32 %idxprom194
  %195 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx195, align 4
  %197 = shl i32 %196, 24
  %conv.i352 = zext i32 %197 to i64
  %shl.i = shl nuw nsw i64 %conv.i352, 8
  %addr2.i = getelementptr inbounds %struct.pxd_t, ptr %arrayidx195, i32 0, i32 1
  %198 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %addr2.i, align 4
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #8
  %conv1.i = zext i32 %200 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %201 = and i32 %196, -256
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #8
  %203 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i353 = getelementptr inbounds %struct.super_block, ptr %204, i32 0, i32 33
  %205 = ptrtoint ptr %s_fs_info.i353 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %s_fs_info.i353, align 16
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %206, i32 0, i32 9
  %207 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %l2bsize, align 2
  %conv200304 = zext i16 %208 to i32
  %shl = shl i32 %202, %conv200304
  %209 = ptrtoint ptr %mp.1 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %mp.1, align 8
  %211 = and i16 %210, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %cmp204 = icmp eq i16 %211, 0
  br i1 %cmp204, label %do.end186.for.cond.backedge_crit_edge, label %if.then206

do.end186.for.cond.backedge_crit_edge:            ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then206:                                       ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %mp.1) #8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then206, %do.end186.for.cond.backedge_crit_edge
  br label %for.cond

out:                                              ; preds = %if.then163, %if.then136.out_crit_edge, %land.lhs.true114.out_crit_edge, %if.then107, %if.then103
  %rc.2 = phi i32 [ 0, %if.then103 ], [ -17, %if.then107 ], [ -5, %if.then163 ], [ -116, %land.lhs.true114.out_crit_edge ], [ -2, %if.then136.out_crit_edge ]
  %212 = ptrtoint ptr %mp.1 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %mp.1, align 8
  %214 = and i16 %213, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %cmp211 = icmp eq i16 %214, 0
  br i1 %cmp211, label %out.dtSearch_Exit1_crit_edge, label %if.then213

out.dtSearch_Exit1_crit_edge:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtSearch_Exit1

if.then213:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %mp.1) #8
  br label %dtSearch_Exit1

dtSearch_Exit1:                                   ; preds = %if.then213, %out.dtSearch_Exit1_crit_edge, %if.end146, %if.end118, %if.end51, %do.end, %if.else20.dtSearch_Exit1_crit_edge
  %rc.3 = phi i32 [ %rc.2, %out.dtSearch_Exit1_crit_edge ], [ %rc.2, %if.then213 ], [ 0, %if.end118 ], [ 0, %if.end146 ], [ -5, %if.end51 ], [ -5, %do.end ], [ -5, %if.else20.dtSearch_Exit1_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %dtSearch_Exit2

dtSearch_Exit2:                                   ; preds = %dtSearch_Exit1, %entry.dtSearch_Exit2_crit_edge
  %rc.4 = phi i32 [ %rc.3, %dtSearch_Exit1 ], [ -12, %entry.dtSearch_Exit2_crit_edge ]
  ret i32 %rc.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @UniStrupr(ptr nocapture noundef %upin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %upin to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %upin, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not3 = icmp eq i16 %1, 0
  br i1 %tobool.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %UniToupper.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i16 [ %15, %UniToupper.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %up.04 = phi ptr [ %incdec.ptr, %UniToupper.exit.while.body_crit_edge ], [ %upin, %entry.while.body_crit_edge ]
  %conv.i = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %2)
  %cmp.i = icmp ult i16 %2, 512
  br i1 %cmp.i, label %if.then.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %while.body
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @UniUpperRange to i32))
  %3 = load i16, ptr @UniUpperRange, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not40.i = icmp eq i16 %3, 0
  br i1 %tobool.not40.i, label %while.cond.preheader.i.UniToupper.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.UniToupper.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [512 x i8], ptr @UniUpperTable, i32 0, i32 %conv.i
  br label %cleanup.sink.split.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %4 = phi i16 [ %10, %if.end24.i.while.body.i_crit_edge ], [ %3, %while.cond.preheader.i.while.body.i_crit_edge ]
  %rp.041.i = phi ptr [ %incdec.ptr.i, %if.end24.i.while.body.i_crit_edge ], [ @UniUpperRange, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %2)
  %cmp8.i = icmp ugt i16 %4, %2
  br i1 %cmp8.i, label %while.body.i.UniToupper.exit_crit_edge, label %if.end.i

while.body.i.UniToupper.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit

if.end.i:                                         ; preds = %while.body.i
  %end.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %end.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %2)
  %cmp13.not.i = icmp ult i16 %6, %2
  br i1 %cmp13.not.i, label %if.end24.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.le.i = zext i16 %4 to i32
  %table.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i, i32 0, i32 2
  %7 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %table.i, align 4
  %sub.i = sub nsw i32 %conv.i, %conv7.le.i
  %arrayidx20.i = getelementptr i8, ptr %8, i32 %sub.i
  br label %cleanup.sink.split.i

if.end24.i:                                       ; preds = %if.end.i
  %incdec.ptr.i = getelementptr %struct.UNICASERANGE, ptr %rp.041.i, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.end24.i.UniToupper.exit_crit_edge, label %if.end24.i.while.body.i_crit_edge

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end24.i.UniToupper.exit_crit_edge:             ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit

cleanup.sink.split.i:                             ; preds = %if.then15.i, %if.then.i
  %arrayidx20.sink.i = phi ptr [ %arrayidx20.i, %if.then15.i ], [ %arrayidx.i, %if.then.i ]
  %11 = ptrtoint ptr %arrayidx20.sink.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20.sink.i, align 1
  %conv21.i = sext i8 %12 to i16
  %add22.i = add i16 %2, %conv21.i
  br label %UniToupper.exit

UniToupper.exit:                                  ; preds = %cleanup.sink.split.i, %if.end24.i.UniToupper.exit_crit_edge, %while.body.i.UniToupper.exit_crit_edge, %while.cond.preheader.i.UniToupper.exit_crit_edge
  %retval.0.i = phi i16 [ %2, %while.cond.preheader.i.UniToupper.exit_crit_edge ], [ %add22.i, %cleanup.sink.split.i ], [ %2, %if.end24.i.UniToupper.exit_crit_edge ], [ %2, %while.body.i.UniToupper.exit_crit_edge ]
  %13 = ptrtoint ptr %up.04 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %retval.0.i, ptr %up.04, align 2
  %incdec.ptr = getelementptr i16, ptr %up.04, i32 1
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %incdec.ptr, align 2
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %UniToupper.exit.while.end_crit_edge, label %UniToupper.exit.while.body_crit_edge

UniToupper.exit.while.body_crit_edge:             ; preds = %UniToupper.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

UniToupper.exit.while.end_crit_edge:              ; preds = %UniToupper.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %UniToupper.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_metapage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_metapage(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtInsert(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %name, ptr nocapture noundef readonly %fsn, ptr noundef %btstack) local_unnamed_addr #0 align 64 {
entry:
  %lkey.i.i = alloca %struct.component_name, align 4
  %rkey.i.i = alloca %struct.component_name, align 4
  %mp.i.i = alloca ptr, align 4
  %dtlck.i.i = alloca ptr, align 4
  %lblock.i.i = alloca i64, align 8
  %rmp.i = alloca ptr, align 4
  %rp.i = alloca ptr, align 4
  %rpxd.i = alloca %struct.pxd_t, align 8
  %xaddr.i = alloca i64, align 8
  %nxaddr.i = alloca i64, align 8
  %pxdlist.i = alloca %struct.pxdlist, align 4
  %key.i = alloca %struct.component_name, align 8
  %dtlck.i = alloca ptr, align 4
  %split = alloca %struct.dtsplit, align 4
  %data = alloca %union.ddata_t, align 8
  %dtlck = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %split) #8
  %0 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 4
  %4 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %split, i32 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #8
  %7 = call ptr @memset(ptr %data, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtlck) #8
  %8 = ptrtoint ptr %dtlck to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %dtlck, align 4, !annotation !228
  %9 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btstack, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %mp3 = getelementptr inbounds %struct.btframe, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %mp3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mp3, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not = icmp eq i64 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data4 = getelementptr inbounds %struct.metapage, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data4, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot = getelementptr i8, ptr %ip, i32 -304
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %p.0 = phi ptr [ %16, %if.then ], [ %_dtroot, %if.else ]
  %index6 = getelementptr inbounds %struct.btframe, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %index6 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %index6, align 8
  %conv = sext i16 %18 to i32
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mntflag, align 4
  %and = and i32 %24, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else23, label %if.then9

if.then9:                                         ; preds = %if.end
  %next_index = getelementptr i8, ptr %ip, i32 -784
  %25 = ptrtoint ptr %next_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %26)
  %cmp = icmp eq i32 %26, 2147483647
  br i1 %cmp, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.then9
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %14, align 8
  %29 = and i16 %28, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp15 = icmp eq i16 %29, 0
  br i1 %cmp15, label %if.then12.cleanup_crit_edge, label %if.then17

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %14) #8
  br label %cleanup

if.end19:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %name, align 4
  %sub = add i32 %31, 18
  %32 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %tid, ptr %data, align 8
  br label %if.end30

if.else23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %name, align 4
  %sub27 = add i32 %34, 16
  br label %if.end30

if.end30:                                         ; preds = %if.else23, %if.end19
  %.sink = phi ptr [ null, %if.else23 ], [ %ip, %if.end19 ]
  %n.0.in = phi i32 [ %sub27, %if.else23 ], [ %sub, %if.end19 ]
  %ip29 = getelementptr inbounds %struct.anon.79, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %ip29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %.sink, ptr %ip29, align 4
  %n.0 = sdiv i32 %n.0.in, 15
  %36 = ptrtoint ptr %fsn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fsn, align 4
  %ino = getelementptr inbounds %struct.anon.79, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ino, align 8
  %freecnt = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 4
  %39 = ptrtoint ptr %freecnt to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %freecnt, align 2
  %conv31 = sext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0, i32 %conv31)
  %cmp32 = icmp sgt i32 %n.0, %conv31
  br i1 %cmp32, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.end30
  %41 = ptrtoint ptr %split to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %14, ptr %split, align 4
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %18, ptr %0, align 4
  %conv38 = trunc i32 %n.0 to i16
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv38, ptr %1, align 2
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %name, ptr %2, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %data, ptr %3, align 4
  %46 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmp.i) #8
  %48 = ptrtoint ptr %rmp.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmp.i, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rp.i) #8
  %49 = ptrtoint ptr %rp.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %rp.i, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rpxd.i) #8
  %50 = ptrtoint ptr %rpxd.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %rpxd.i, align 8, !annotation !228
  %51 = getelementptr inbounds %struct.pxd_t, ptr %rpxd.i, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %51, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr.i) #8
  %53 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %xaddr.i, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nxaddr.i) #8
  %54 = ptrtoint ptr %nxaddr.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 -1, ptr %nxaddr.i, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %pxdlist.i) #8
  %55 = call ptr @memset(ptr %pxdlist.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #8
  %56 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %key.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtlck.i) #8
  %57 = ptrtoint ptr %dtlck.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -1 to ptr), ptr %dtlck.i, align 4, !annotation !228
  %58 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %14, align 8
  %60 = and i16 %59, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp.i = icmp eq i16 %60, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot.i = getelementptr i8, ptr %ip, i32 -304
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %data4.i = getelementptr inbounds %struct.metapage, ptr %14, i32 0, i32 7
  %61 = ptrtoint ptr %data4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data4.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %_dtroot.i, %cond.true.i ], [ %62, %cond.false.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3136, i32 noundef 514) #11
  %name.i = getelementptr inbounds %struct.component_name, ptr %key.i, i32 0, i32 1
  %64 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i.i, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.i

if.then.i:                                        ; preds = %cond.end.i
  %65 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %14, align 8
  %67 = and i16 %66, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp10.i = icmp eq i16 %67, 0
  br i1 %cmp10.i, label %if.then.i.dtSplitUp.exit_crit_edge, label %if.then12.i

if.then.i.dtSplitUp.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtSplitUp.exit

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %14) #8
  br label %dtSplitUp.exit

if.end13.i:                                       ; preds = %cond.end.i
  %flag.i = getelementptr inbounds %struct.anon.71, ptr %cond.i, i32 0, i32 2
  %68 = ptrtoint ptr %flag.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %flag.i, align 8
  %70 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool16.not.i = icmp eq i8 %70, 0
  br i1 %tobool16.not.i, label %if.end70.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end13.i
  %bsize.i = getelementptr inbounds %struct.jfs_sb_info, ptr %47, i32 0, i32 8
  %71 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bsize.i, align 4
  %73 = ashr i16 %72, 5
  %shr.i = sext i16 %73 to i32
  %add.i = add nsw i32 %shr.i, 31
  %shr19.i = ashr i32 %add.i, 5
  %freecnt.i = getelementptr inbounds %struct.anon.71, ptr %cond.i, i32 0, i32 4
  %74 = ptrtoint ptr %freecnt.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %freecnt.i, align 2
  %conv20.i = sext i8 %75 to i32
  %sub.i = add nsw i32 %conv20.i, -9
  %sub21.neg.i = add nsw i32 %sub.i, %shr.i
  %sub22.i = sub nsw i32 %sub21.neg.i, %shr19.i
  %sext = shl i32 %n.0, 16
  %conv23.i = ashr exact i32 %sext, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i, i32 %conv23.i)
  %cmp24.not.i = icmp sgt i32 %sub22.i, %conv23.i
  %spec.select.i = select i1 %cmp24.not.i, i32 1, i32 2
  %76 = zext i32 %spec.select.i to i64
  %call29.i = call i32 @dbAlloc(ptr noundef %ip, i64 noundef 0, i64 noundef %76, ptr noundef nonnull %xaddr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end39.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then17.i
  %77 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %14, align 8
  %79 = and i16 %78, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp35.i = icmp eq i16 %79, 0
  br i1 %cmp35.i, label %if.then31.i.land.lhs.true504.thread.i_crit_edge, label %if.then37.i

if.then31.i.land.lhs.true504.thread.i_crit_edge:  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true504.thread.i

if.then37.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %14) #8
  br label %land.lhs.true504.thread.i

if.end39.i:                                       ; preds = %if.then17.i
  %80 = ptrtoint ptr %pxdlist.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %pxdlist.i, align 4
  %npxd.i = getelementptr inbounds %struct.pxdlist, ptr %pxdlist.i, i32 0, i32 1
  %81 = ptrtoint ptr %npxd.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %npxd.i, align 2
  %pxd40.i = getelementptr inbounds %struct.pxdlist, ptr %pxdlist.i, i32 0, i32 2
  %82 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %xaddr.i, align 8
  %sum.shift.i.i = lshr i64 %83, 32
  %conv7.i.i = trunc i64 %sum.shift.i.i to i32
  %conv.i.i = and i32 %conv7.i.i, 255
  %conv3.i.i = trunc i64 %83 to i32
  %84 = call i32 @llvm.bswap.i32(i32 %conv3.i.i) #8
  %addr2.i.i = getelementptr inbounds %struct.pxdlist, ptr %pxdlist.i, i32 0, i32 2, i32 0, i32 1
  %85 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %addr2.i.i, align 4
  %86 = shl nuw nsw i32 %spec.select.i, 24
  %or.i697.i = or i32 %conv.i.i, %86
  %87 = ptrtoint ptr %pxd40.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i697.i, ptr %pxd40.i, align 4
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %pxdlist.i, ptr %4, align 4
  %call42.i = call fastcc i32 @dtSplitRoot(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %split, ptr noundef nonnull %rmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.else.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %xaddr.i, align 8
  %call46.i = call i32 @dbFree(ptr noundef %ip, i64 noundef %90, i64 noundef %76) #8
  br label %if.end54.i

if.else.i:                                        ; preds = %if.end39.i
  %91 = ptrtoint ptr %rmp.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmp.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %92, align 8
  %95 = and i16 %94, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp50.i = icmp eq i16 %95, 0
  br i1 %cmp50.i, label %if.else.i.if.end54.i_crit_edge, label %if.then52.i

if.else.i.if.end54.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then52.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %92) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then52.i, %if.else.i.if.end54.i_crit_edge, %if.then44.i
  %96 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %14, align 8
  %98 = and i16 %97, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp58.i = icmp eq i16 %98, 0
  br i1 %cmp58.i, label %if.end54.i.if.end61.i_crit_edge, label %if.then60.i

if.end54.i.if.end61.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then60.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %14) #8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then60.i, %if.end54.i.if.end61.i_crit_edge
  %99 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i698.i = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 33
  %101 = ptrtoint ptr %s_fs_info.i698.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i698.i, align 16
  %mntflag.i = getelementptr inbounds %struct.jfs_sb_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %mntflag.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mntflag.i, align 4
  %and64.i = and i32 %104, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.then66.i, label %if.end61.i.freeKeyName.i_crit_edge

if.end61.i.freeKeyName.i_crit_edge:               ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %freeKeyName.i

if.then66.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %l2bsize.i = getelementptr inbounds %struct.jfs_sb_info, ptr %47, i32 0, i32 9
  %105 = ptrtoint ptr %l2bsize.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %l2bsize.i, align 2
  %conv67694.i = zext i16 %106 to i32
  %shl.i = shl i32 %spec.select.i, %conv67694.i
  %conv68.i = sext i32 %shl.i to i64
  %i_size.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %107 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv68.i, ptr %i_size.i, align 8
  br label %freeKeyName.i

if.end70.i:                                       ; preds = %if.end13.i
  %self.i = getelementptr inbounds %struct.anon.71, ptr %cond.i, i32 0, i32 9
  %108 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %self.i, align 4
  %110 = and i32 %109, -256
  %111 = call i32 @llvm.bswap.i32(i32 %110) #8
  %l2bsize72.i = getelementptr inbounds %struct.jfs_sb_info, ptr %47, i32 0, i32 9
  %112 = ptrtoint ptr %l2bsize72.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %l2bsize72.i, align 2
  %conv73692.i = zext i16 %113 to i32
  %shl74.i = shl i32 %111, %conv73692.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %shl74.i)
  %cmp75.i = icmp slt i32 %shl74.i, 4096
  br i1 %cmp75.i, label %if.then77.i, label %if.end154.i

if.then77.i:                                      ; preds = %if.end70.i
  %114 = shl i32 %109, 24
  %conv.i699.i = zext i32 %114 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i699.i, 8
  %addr2.i700.i = getelementptr inbounds %struct.anon.71, ptr %cond.i, i32 0, i32 9, i32 1
  %115 = ptrtoint ptr %addr2.i700.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %addr2.i700.i, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116) #8
  %conv1.i.i = zext i32 %117 to i64
  %add.i.i = or i64 %shl.i.i, %conv1.i.i
  %118 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %add.i.i, ptr %xaddr.i, align 8
  %shr79.i = ashr i32 %shl74.i, 5
  %add80.i = add nsw i32 %shr79.i, 31
  %shr81.i = ashr i32 %add80.i, 5
  %sub82.i = sub nsw i32 %shr79.i, %shr81.i
  %freecnt83.i = getelementptr inbounds %struct.anon.71, ptr %cond.i, i32 0, i32 4
  %119 = ptrtoint ptr %freecnt83.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %freecnt83.i, align 2
  %conv84.i = sext i8 %120 to i32
  %add85.i = add nsw i32 %sub82.i, %conv84.i
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %1, align 2
  %conv87.i = sext i16 %122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add85.i, i32 %conv87.i)
  %cmp88.not.i = icmp sgt i32 %add85.i, %conv87.i
  %add92.i = mul nuw nsw i32 %111, 3
  %n.0.i = select i1 %cmp88.not.i, i32 %111, i32 %add92.i
  %123 = zext i32 %n.0.i to i64
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %124 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %i_blkbits.i.i, align 2
  %sh_prom.i.i = zext i8 %125 to i64
  %shl.i701.i = shl i64 %123, %sh_prom.i.i
  %call.i.i.i.i = call i32 @__dquot_alloc_space(ptr noundef %ip, i64 noundef %shl.i701.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end99.i, label %if.then77.i.extendOut.i_crit_edge

if.then77.i.extendOut.i_crit_edge:                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %extendOut.i

if.end99.i:                                       ; preds = %if.then77.i
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  %ipbmap.i = getelementptr inbounds %struct.jfs_sb_info, ptr %47, i32 0, i32 2
  %126 = ptrtoint ptr %ipbmap.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ipbmap.i, align 4
  %128 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %xaddr.i, align 8
  %130 = zext i32 %111 to i64
  %call103.i = call i32 @dbReAlloc(ptr noundef %127, i64 noundef %129, i64 noundef %130, i64 noundef %123, ptr noundef nonnull %nxaddr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %if.end106.i, label %if.end99.i.extendOut.i_crit_edge

if.end99.i.extendOut.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %extendOut.i

if.end106.i:                                      ; preds = %if.end99.i
  %131 = ptrtoint ptr %pxdlist.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 1, ptr %pxdlist.i, align 4
  %npxd108.i = getelementptr inbounds %struct.pxdlist, ptr %pxdlist.i, i32 0, i32 1
  %132 = ptrtoint ptr %npxd108.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %npxd108.i, align 2
  %pxd109.i = getelementptr inbounds %struct.pxdlist, ptr %pxdlist.i, i32 0, i32 2
  %133 = ptrtoint ptr %nxaddr.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %nxaddr.i, align 8
  %sum.shift.i703.i = lshr i64 %134, 32
  %conv7.i704.i = trunc i64 %sum.shift.i703.i to i32
  %conv.i705.i = and i32 %conv7.i704.i, 255
  %conv3.i707.i = trunc i64 %134 to i32
  %135 = call i32 @llvm.bswap.i32(i32 %conv3.i707.i) #8
  %addr2.i708.i = getelementptr inbounds %struct.pxdlist, ptr %pxdlist.i, i32 0, i32 2, i32 0, i32 1
  %136 = ptrtoint ptr %addr2.i708.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %addr2.i708.i, align 4
  %add111.i = add nuw nsw i32 %n.0.i, %111
  %and1.i.i = and i32 %add111.i, 16777215
  %137 = call i32 @llvm.bswap.i32(i32 %and1.i.i) #8
  %or.i710.i = or i32 %conv.i705.i, %137
  %138 = ptrtoint ptr %pxd109.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or.i710.i, ptr %pxd109.i, align 4
  %139 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %pxdlist.i, ptr %4, align 4
  %140 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mp.i.i) #8
  %142 = ptrtoint ptr %mp.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 -1 to ptr), ptr %mp.i.i, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtlck.i.i) #8
  %143 = ptrtoint ptr %dtlck.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 -1 to ptr), ptr %dtlck.i.i, align 4, !annotation !228
  %144 = ptrtoint ptr %split to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %split, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %145, align 8
  %148 = and i16 %147, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %cmp.i.i = icmp eq i16 %148, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot.i.i = getelementptr i8, ptr %ip, i32 -304
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.metapage, ptr %145, i32 0, i32 7
  %149 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %_dtroot.i.i, %cond.true.i.i ], [ %150, %cond.false.i.i ]
  %151 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %btstack, align 8
  %stack.i.i = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 2
  %cmp3.i.i = icmp eq ptr %152, %stack.i.i
  br i1 %cmp3.i.i, label %cond.end.i.i.cond.end8.i.i_crit_edge, label %cond.false6.i.i

cond.end.i.i.cond.end8.i.i_crit_edge:             ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end8.i.i

cond.false6.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i = getelementptr %struct.btframe, ptr %152, i32 -1
  %153 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %incdec.ptr.i.i, ptr %btstack, align 8
  br label %cond.end8.i.i

cond.end8.i.i:                                    ; preds = %cond.false6.i.i, %cond.end.i.i.cond.end8.i.i_crit_edge
  %cond9.i.i = phi ptr [ %incdec.ptr.i.i, %cond.false6.i.i ], [ null, %cond.end.i.i.cond.end8.i.i_crit_edge ]
  %154 = ptrtoint ptr %cond9.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %cond9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %155)
  %cmp10.i.i = icmp eq i64 %155, 0
  br i1 %cmp10.i.i, label %if.then33.thread.i.i, label %if.else.i.i

if.then33.thread.i.i:                             ; preds = %cond.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bxflag.i.i = getelementptr i8, ptr %ip, i32 -752
  %_dtroot15.i.i = getelementptr i8, ptr %ip, i32 -304
  %nextindex485.i.i = getelementptr i8, ptr %ip, i32 -287
  %156 = ptrtoint ptr %nextindex485.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %nextindex485.i.i, align 1
  br label %cond.end41.i.i

if.else.i.i:                                      ; preds = %cond.end8.i.i
  %conv17.i.i = trunc i64 %155 to i32
  %call18.i.i = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv17.i.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool.not.i.i, label %if.else21.i.i, label %if.then33.i.i

if.else21.i.i:                                    ; preds = %if.else.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %158 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp23.i.i = icmp sgt i32 %158, 0
  br i1 %cmp23.i.i, label %do.end.i.i, label %if.else21.i.i.if.then115.i_crit_edge

if.else21.i.i.if.then115.i_crit_edge:             ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then115.i

do.end.i.i:                                       ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.then115.i

if.then33.i.i:                                    ; preds = %if.else.i.i
  %data20.i.i = getelementptr inbounds %struct.metapage, ptr %call18.i.i, i32 0, i32 7
  %159 = ptrtoint ptr %data20.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data20.i.i, align 4
  %161 = ptrtoint ptr %cond9.i.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %.pr.i.i = load i64, ptr %cond9.i.i, align 8
  %nextindex.i.i = getelementptr inbounds %struct.anon.71, ptr %160, i32 0, i32 3
  %162 = ptrtoint ptr %nextindex.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %nextindex.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr.i.i)
  %cmp36.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %cmp36.i.i, label %if.then33.i.i.cond.end41.i.i_crit_edge, label %cond.end41.thread.i.i

if.then33.i.i.cond.end41.i.i_crit_edge:           ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end41.i.i

cond.end41.i.i:                                   ; preds = %if.then33.i.i.cond.end41.i.i_crit_edge, %if.then33.thread.i.i
  %164 = phi i8 [ %157, %if.then33.thread.i.i ], [ %163, %if.then33.i.i.cond.end41.i.i_crit_edge ]
  %pp.0.ph491.i.i = phi ptr [ %_dtroot15.i.i, %if.then33.thread.i.i ], [ %160, %if.then33.i.i.cond.end41.i.i_crit_edge ]
  %pmp.0.ph488.i.i = phi ptr [ %bxflag.i.i, %if.then33.thread.i.i ], [ %call18.i.i, %if.then33.i.i.cond.end41.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %164)
  %cmp43.i.i = icmp ugt i8 %164, 9
  br i1 %cmp43.i.i, label %cond.end41.i.i.if.then51.i.i_crit_edge, label %cond.end41.i.i.if.end66.i.i_crit_edge

cond.end41.i.i.if.end66.i.i_crit_edge:            ; preds = %cond.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i.i

cond.end41.i.i.if.then51.i.i_crit_edge:           ; preds = %cond.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.i.i

cond.end41.thread.i.i:                            ; preds = %if.then33.i.i
  %maxslot.i.i = getelementptr inbounds %struct.anon.71, ptr %160, i32 0, i32 6
  %165 = ptrtoint ptr %maxslot.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %maxslot.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %166, i8 %163)
  %cmp43462.i.i = icmp ult i8 %166, %163
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %166)
  %cmp49.i.i = icmp ugt i8 %166, -128
  %or.cond791.i = or i1 %cmp43462.i.i, %cmp49.i.i
  br i1 %or.cond791.i, label %cond.end41.thread.i.i.if.then51.i.i_crit_edge, label %cond.end41.thread.i.i.if.end66.i.i_crit_edge

cond.end41.thread.i.i.if.end66.i.i_crit_edge:     ; preds = %cond.end41.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i.i

cond.end41.thread.i.i.if.then51.i.i_crit_edge:    ; preds = %cond.end41.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.i.i

if.then51.i.i:                                    ; preds = %cond.end41.thread.i.i.if.then51.i.i_crit_edge, %cond.end41.i.i.if.then51.i.i_crit_edge
  %pmp.0.ph487.i.i = phi ptr [ %call18.i.i, %cond.end41.thread.i.i.if.then51.i.i_crit_edge ], [ %pmp.0.ph488.i.i, %cond.end41.i.i.if.then51.i.i_crit_edge ]
  %167 = ptrtoint ptr %pmp.0.ph487.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %pmp.0.ph487.i.i, align 8
  %169 = and i16 %168, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %cmp55.i.i = icmp eq i16 %169, 0
  br i1 %cmp55.i.i, label %if.then51.i.i.if.end58.i.i_crit_edge, label %if.then57.i.i

if.then51.i.i.if.end58.i.i_crit_edge:             ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i.i

if.then57.i.i:                                    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %pmp.0.ph487.i.i) #8
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.then57.i.i, %if.then51.i.i.if.end58.i.i_crit_edge
  %170 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %171, ptr noundef nonnull @.str.3) #8
  br label %if.then115.i

if.end66.i.i:                                     ; preds = %cond.end41.thread.i.i.if.end66.i.i_crit_edge, %cond.end41.i.i.if.end66.i.i_crit_edge
  %pp.0.ph490.i.i = phi ptr [ %pp.0.ph491.i.i, %cond.end41.i.i.if.end66.i.i_crit_edge ], [ %160, %cond.end41.thread.i.i.if.end66.i.i_crit_edge ]
  %pmp.0.ph489.i.i = phi ptr [ %pmp.0.ph488.i.i, %cond.end41.i.i.if.end66.i.i_crit_edge ], [ %call18.i.i, %cond.end41.thread.i.i.if.end66.i.i_crit_edge ]
  %172 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %4, align 4
  %npxd.i.i = getelementptr inbounds %struct.pxdlist, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %npxd.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %npxd.i.i, align 2
  %idxprom.i.i = sext i16 %175 to i32
  %arrayidx.i.i = getelementptr %struct.pxdlist, ptr %173, i32 0, i32 2, i32 %idxprom.i.i
  %inc.i.i = add i16 %175, 1
  store i16 %inc.i.i, ptr %npxd.i.i, align 2
  %176 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx.i.i, align 4
  %178 = shl i32 %177, 24
  %conv.i.i.i = zext i32 %178 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 8
  %addr2.i.i.i = getelementptr %struct.pxdlist, ptr %173, i32 0, i32 2, i32 %idxprom.i.i, i32 1
  %179 = ptrtoint ptr %addr2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %addr2.i.i.i, align 4
  %181 = call i32 @llvm.bswap.i32(i32 %180) #8
  %conv1.i.i.i = zext i32 %181 to i64
  %add.i.i.i = or i64 %shl.i.i.i, %conv1.i.i.i
  %self.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 9
  %182 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %self.i.i, align 4
  %184 = shl i32 %183, 24
  %conv.i446.i.i = zext i32 %184 to i64
  %shl.i447.i.i = shl nuw nsw i64 %conv.i446.i.i, 8
  %addr2.i448.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 9, i32 1
  %185 = ptrtoint ptr %addr2.i448.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %addr2.i448.i.i, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186) #8
  %conv1.i449.i.i = zext i32 %187 to i64
  %add.i450.i.i = or i64 %shl.i447.i.i, %conv1.i449.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %add.i450.i.i)
  %cmp72.i.i = icmp eq i64 %add.i.i.i, %add.i450.i.i
  br i1 %cmp72.i.i, label %if.end66.i.i.if.end109.i.i_crit_edge, label %if.else75.i.i

if.end66.i.i.if.end109.i.i_crit_edge:             ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i.i

if.else75.i.i:                                    ; preds = %if.end66.i.i
  %call76.i.i = call ptr @txMaplock(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef 8200) #8
  %lock.i.i = getelementptr inbounds %struct.tlock, ptr %call76.i.i, i32 0, i32 6
  %flag.i.i = getelementptr inbounds %struct.tlock, ptr %call76.i.i, i32 0, i32 6, i32 2
  %188 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 1, ptr %flag.i.i, align 4
  %pxd77.i.i = getelementptr inbounds %struct.tlock, ptr %call76.i.i, i32 0, i32 6, i32 4
  %189 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %self.i.i, align 8
  %191 = ptrtoint ptr %pxd77.i.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 8)
  store i64 %190, ptr %pxd77.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.maplock, ptr %lock.i.i, i32 0, i32 2
  %192 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %index.i.i, align 1
  %193 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %194, i32 0, i32 33
  %195 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mntflag.i.i = getelementptr inbounds %struct.jfs_sb_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %mntflag.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mntflag.i.i, align 4
  %and81.i.i = and i32 %198, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i.i)
  %tobool82.not.i.i = icmp eq i32 %and81.i.i, 0
  br i1 %tobool82.not.i.i, label %if.else75.i.i.if.end109.i.i_crit_edge, label %if.then83.i.i

if.else75.i.i.if.end109.i.i_crit_edge:            ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i.i

if.then83.i.i:                                    ; preds = %if.else75.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lblock.i.i) #8
  %199 = ptrtoint ptr %lblock.i.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 -1, ptr %lblock.i.i, align 8, !annotation !228
  %200 = ptrtoint ptr %mp.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %mp.i.i, align 4
  %flag84.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 2
  %201 = ptrtoint ptr %flag84.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %flag84.i.i, align 8
  %203 = and i8 %202, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool87.not.i.i = icmp eq i8 %203, 0
  br i1 %tobool87.not.i.i, label %cond.false91.i.i, label %if.then83.i.i.cond.end94.i.i_crit_edge

if.then83.i.i.cond.end94.i.i_crit_edge:           ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end94.i.i

cond.false91.i.i:                                 ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 7
  %204 = ptrtoint ptr %stblindex.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %stblindex.i.i, align 1
  %idxprom92.i.i = zext i8 %205 to i32
  %arrayidx93.i.i = getelementptr [128 x %struct.dtslot], ptr %cond.i.i, i32 0, i32 %idxprom92.i.i
  br label %cond.end94.i.i

cond.end94.i.i:                                   ; preds = %cond.false91.i.i, %if.then83.i.i.cond.end94.i.i_crit_edge
  %cond95.i.i = phi ptr [ %arrayidx93.i.i, %cond.false91.i.i ], [ %self.i.i, %if.then83.i.i.cond.end94.i.i_crit_edge ]
  %nextindex96.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 3
  %206 = ptrtoint ptr %nextindex96.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %nextindex96.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %cmp98468.not.i.i = icmp eq i8 %207, 0
  br i1 %cmp98468.not.i.i, label %cond.end94.i.i.for.end.i.i_crit_edge, label %cond.end94.i.i.for.body.i.i_crit_edge

cond.end94.i.i.for.body.i.i_crit_edge:            ; preds = %cond.end94.i.i
  br label %for.body.i.i

cond.end94.i.i.for.end.i.i_crit_edge:             ; preds = %cond.end94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %cond.end94.i.i.for.body.i.i_crit_edge
  %n.0469.i.i = phi i32 [ %inc104.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %cond.end94.i.i.for.body.i.i_crit_edge ]
  %arrayidx100.i.i = getelementptr i8, ptr %cond95.i.i, i32 %n.0469.i.i
  %208 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx100.i.i, align 1
  %idxprom101.i.i = zext i8 %209 to i32
  %index103.i.i = getelementptr [128 x %struct.dtslot], ptr %cond.i.i, i32 0, i32 %idxprom101.i.i, i32 2, i32 13
  %210 = ptrtoint ptr %index103.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %index103.i.i, align 4
  %212 = call i32 @llvm.bswap.i32(i32 %211) #8
  call fastcc void @modify_index(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %212, i64 noundef %add.i.i.i, i32 noundef %n.0469.i.i, ptr noundef nonnull %mp.i.i, ptr noundef nonnull %lblock.i.i) #8
  %inc104.i.i = add nuw nsw i32 %n.0469.i.i, 1
  %213 = ptrtoint ptr %nextindex96.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %nextindex96.i.i, align 1
  %conv97.i.i = zext i8 %214 to i32
  %cmp98.i.i = icmp ult i32 %inc104.i.i, %conv97.i.i
  br i1 %cmp98.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %cond.end94.i.i.for.end.i.i_crit_edge
  %215 = ptrtoint ptr %mp.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %mp.i.i, align 4
  %tobool105.not.i.i = icmp eq ptr %216, null
  br i1 %tobool105.not.i.i, label %for.end.i.i.if.end107.i.i_crit_edge, label %if.then106.i.i

for.end.i.i.if.end107.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107.i.i

if.then106.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %216) #8
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %if.then106.i.i, %for.end.i.i.if.end107.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lblock.i.i) #8
  br label %if.end109.i.i

if.end109.i.i:                                    ; preds = %if.end107.i.i, %if.else75.i.i.if.end109.i.i_crit_edge, %if.end66.i.i.if.end109.i.i_crit_edge
  %type.0.i.i = phi i32 [ 8224, %if.end107.i.i ], [ 8224, %if.else75.i.i.if.end109.i.i_crit_edge ], [ 8194, %if.end66.i.i.if.end109.i.i_crit_edge ]
  %217 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %217, i32 8)
  %218 = load i64, ptr %arrayidx.i.i, align 4
  %219 = ptrtoint ptr %self.i.i to i32
  call void @__asan_store8_noabort(i32 %219)
  store i64 %218, ptr %self.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %220 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %220)
  %cmp112.i.i = icmp sgt i32 %220, 3
  br i1 %cmp112.i.i, label %do.end117.i.i, label %if.end109.i.i.do.end122.i.i_crit_edge

if.end109.i.i.do.end122.i.i_crit_edge:            ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122.i.i

do.end117.i.i:                                    ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call119.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %ip, ptr noundef %145, ptr noundef %cond.i.i) #12
  br label %do.end122.i.i

do.end122.i.i:                                    ; preds = %do.end117.i.i, %if.end109.i.i.do.end122.i.i_crit_edge
  %221 = ptrtoint ptr %145 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %145, align 8
  %223 = and i16 %222, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %cmp126.i.i = icmp eq i16 %223, 0
  br i1 %cmp126.i.i, label %if.then128.i.i, label %if.else129.i.i

if.then128.i.i:                                   ; preds = %do.end122.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end131.i.i

if.else129.i.i:                                   ; preds = %do.end122.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flag130.i.i = getelementptr inbounds %struct.metapage, ptr %145, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag130.i.i) #8
  br label %if.end131.i.i

if.end131.i.i:                                    ; preds = %if.else129.i.i, %if.then128.i.i
  %call132.i.i = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %145, i32 noundef %type.0.i.i) #8
  %lock133.i.i = getelementptr inbounds %struct.tlock, ptr %call132.i.i, i32 0, i32 6
  %224 = ptrtoint ptr %dtlck.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %lock133.i.i, ptr %dtlck.i.i, align 4
  %lv134.i.i = getelementptr inbounds %struct.tlock, ptr %call132.i.i, i32 0, i32 6, i32 4
  %225 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx.i.i, align 4
  %227 = and i32 %226, -256
  %228 = call i32 @llvm.bswap.i32(i32 %227) #8
  %s_fs_info.i451.i.i = getelementptr inbounds %struct.super_block, ptr %141, i32 0, i32 33
  %229 = ptrtoint ptr %s_fs_info.i451.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %s_fs_info.i451.i.i, align 16
  %l2bsize.i.i = getelementptr inbounds %struct.jfs_sb_info, ptr %230, i32 0, i32 9
  %231 = ptrtoint ptr %l2bsize.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %l2bsize.i.i, align 2
  %conv138441.i.i = zext i16 %232 to i32
  %shl.i711.i = shl i32 %228, %conv138441.i.i
  %stblindex139.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 7
  %233 = ptrtoint ptr %stblindex139.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %stblindex139.i.i, align 1
  %conv140.i.i = zext i8 %234 to i32
  %maxslot141.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 6
  %235 = ptrtoint ptr %maxslot141.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %maxslot141.i.i, align 4
  %conv142.i.i = zext i8 %236 to i32
  %add.i712.i = add nuw nsw i32 %conv142.i.i, 31
  %237 = lshr i32 %add.i712.i, 5
  %shr145.i.i = ashr i32 %shl.i711.i, 5
  %add146.i.i = add nsw i32 %shr145.i.i, 31
  %shr147.i.i = ashr i32 %add146.i.i, 5
  %arrayidx148.i.i = getelementptr [128 x %struct.dtslot], ptr %cond.i.i, i32 0, i32 %conv142.i.i
  %arrayidx149.i.i = getelementptr [128 x %struct.dtslot], ptr %cond.i.i, i32 0, i32 %conv140.i.i
  %nextindex150.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 3
  %238 = ptrtoint ptr %nextindex150.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %nextindex150.i.i, align 1
  %conv151.i.i = zext i8 %239 to i32
  %240 = call ptr @memcpy(ptr %arrayidx148.i.i, ptr %arrayidx149.i.i, i32 %conv151.i.i)
  %241 = ptrtoint ptr %lv134.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %lv134.i.i, align 1
  br i1 %cmp72.i.i, label %if.then154.i.i, label %if.else162.i.i

if.then154.i.i:                                   ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index155.i.i = getelementptr inbounds %struct.linelock, ptr %lock133.i.i, i32 0, i32 2
  %242 = ptrtoint ptr %index155.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %index155.i.i, align 1
  %inc156.i.i = add i8 %243, 1
  store i8 %inc156.i.i, ptr %index155.i.i, align 1
  %incdec.ptr157.i.i = getelementptr %struct.tlock, ptr %call132.i.i, i32 0, i32 6, i32 5
  %244 = ptrtoint ptr %incdec.ptr157.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %236, ptr %incdec.ptr157.i.i, align 1
  %conv160.i.i = trunc i32 %shr147.i.i to i8
  %length161.i.i = getelementptr inbounds %struct.lv, ptr %incdec.ptr157.i.i, i32 0, i32 1
  %245 = ptrtoint ptr %length161.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv160.i.i, ptr %length161.i.i, align 1
  br label %if.end169.i.i

if.else162.i.i:                                   ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %246 = ptrtoint ptr %maxslot141.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %maxslot141.i.i, align 4
  %248 = trunc i32 %shr147.i.i to i8
  %conv167.i.i = add i8 %247, %248
  br label %if.end169.i.i

if.end169.i.i:                                    ; preds = %if.else162.i.i, %if.then154.i.i
  %conv167.sink.i.i = phi i8 [ 1, %if.then154.i.i ], [ %conv167.i.i, %if.else162.i.i ]
  %249 = getelementptr inbounds %struct.lv, ptr %lv134.i.i, i32 0, i32 1
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv167.sink.i.i, ptr %249, align 1
  %index170.i.i = getelementptr inbounds %struct.linelock, ptr %lock133.i.i, i32 0, i32 2
  %251 = ptrtoint ptr %index170.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %index170.i.i, align 1
  %inc171.i.i = add i8 %252, 1
  store i8 %inc171.i.i, ptr %index170.i.i, align 1
  %conv172.i.i = trunc i32 %shr145.i.i to i8
  %253 = ptrtoint ptr %maxslot141.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %conv172.i.i, ptr %maxslot141.i.i, align 4
  %254 = ptrtoint ptr %stblindex139.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %236, ptr %stblindex139.i.i, align 1
  %freelist.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 5
  %255 = ptrtoint ptr %freelist.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %freelist.i.i, align 1
  %conv177482.i.i = zext i8 %256 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %cmp179470.not.i.i = icmp eq i8 %236, 0
  br i1 %cmp179470.not.i.i, label %if.end169.i.i.for.end187.i.i_crit_edge, label %for.body181.preheader.i.i

if.end169.i.i.for.end187.i.i_crit_edge:           ; preds = %if.end169.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187.i.i

for.body181.preheader.i.i:                        ; preds = %if.end169.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %237, i32 1) #8
  %257 = ptrtoint ptr %arrayidx149.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %arrayidx149.i.i, align 2
  %inc185.i.i = add nuw nsw i32 %conv140.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %236)
  %exitcond.not.i.i = icmp ult i8 %236, 33
  br i1 %exitcond.not.i.i, label %for.body181.preheader.i.i.for.end187.i.i_crit_edge, label %for.body181.i.i.1

for.body181.preheader.i.i.for.end187.i.i_crit_edge: ; preds = %for.body181.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187.i.i

for.body181.i.i.1:                                ; preds = %for.body181.preheader.i.i
  %incdec.ptr186.i.i = getelementptr %struct.dtslot, ptr %arrayidx149.i.i, i32 1
  %258 = ptrtoint ptr %incdec.ptr186.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %234, ptr %incdec.ptr186.i.i, align 2
  %inc185.i.i.1 = add nuw nsw i32 %conv140.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax.i.i)
  %exitcond.not.i.i.1 = icmp eq i32 %umax.i.i, 2
  br i1 %exitcond.not.i.i.1, label %for.body181.i.i.1.for.end187.i.i_crit_edge, label %for.body181.i.i.2

for.body181.i.i.1.for.end187.i.i_crit_edge:       ; preds = %for.body181.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187.i.i

for.body181.i.i.2:                                ; preds = %for.body181.i.i.1
  %incdec.ptr186.i.i.1 = getelementptr %struct.dtslot, ptr %arrayidx149.i.i, i32 2
  %conv182.i.i.2 = trunc i32 %inc185.i.i to i8
  %259 = ptrtoint ptr %incdec.ptr186.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %conv182.i.i.2, ptr %incdec.ptr186.i.i.1, align 2
  %inc185.i.i.2 = add nuw nsw i32 %conv140.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umax.i.i)
  %exitcond.not.i.i.2 = icmp eq i32 %umax.i.i, 3
  br i1 %exitcond.not.i.i.2, label %for.body181.i.i.2.for.end187.i.i_crit_edge, label %for.body181.i.i.3

for.body181.i.i.2.for.end187.i.i_crit_edge:       ; preds = %for.body181.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187.i.i

for.body181.i.i.3:                                ; preds = %for.body181.i.i.2
  %incdec.ptr186.i.i.2 = getelementptr %struct.dtslot, ptr %arrayidx149.i.i, i32 3
  %conv182.i.i.3 = trunc i32 %inc185.i.i.1 to i8
  %260 = ptrtoint ptr %incdec.ptr186.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %conv182.i.i.3, ptr %incdec.ptr186.i.i.2, align 2
  %inc185.i.i.3 = add nuw nsw i32 %conv140.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umax.i.i)
  %exitcond.not.i.i.3 = icmp eq i32 %umax.i.i, 4
  br i1 %exitcond.not.i.i.3, label %for.body181.i.i.3.for.end187.i.i_crit_edge, label %for.body181.i.i.4

for.body181.i.i.3.for.end187.i.i_crit_edge:       ; preds = %for.body181.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187.i.i

for.body181.i.i.4:                                ; preds = %for.body181.i.i.3
  %incdec.ptr186.i.i.3 = getelementptr %struct.dtslot, ptr %arrayidx149.i.i, i32 4
  %conv182.i.i.4 = trunc i32 %inc185.i.i.2 to i8
  %261 = ptrtoint ptr %incdec.ptr186.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv182.i.i.4, ptr %incdec.ptr186.i.i.3, align 2
  %inc185.i.i.4 = add nuw nsw i32 %conv140.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umax.i.i)
  %exitcond.not.i.i.4 = icmp eq i32 %umax.i.i, 5
  br i1 %exitcond.not.i.i.4, label %for.body181.i.i.4.for.end187.i.i_crit_edge, label %for.body181.i.i.5

for.body181.i.i.4.for.end187.i.i_crit_edge:       ; preds = %for.body181.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187.i.i

for.body181.i.i.5:                                ; preds = %for.body181.i.i.4
  %incdec.ptr186.i.i.4 = getelementptr %struct.dtslot, ptr %arrayidx149.i.i, i32 5
  %conv182.i.i.5 = trunc i32 %inc185.i.i.3 to i8
  %262 = ptrtoint ptr %incdec.ptr186.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %conv182.i.i.5, ptr %incdec.ptr186.i.i.4, align 2
  %inc185.i.i.5 = add nuw nsw i32 %conv140.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %umax.i.i)
  %exitcond.not.i.i.5 = icmp eq i32 %umax.i.i, 6
  br i1 %exitcond.not.i.i.5, label %for.body181.i.i.5.for.end187.i.i_crit_edge, label %for.body181.i.i.6

for.body181.i.i.5.for.end187.i.i_crit_edge:       ; preds = %for.body181.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187.i.i

for.body181.i.i.6:                                ; preds = %for.body181.i.i.5
  %incdec.ptr186.i.i.5 = getelementptr %struct.dtslot, ptr %arrayidx149.i.i, i32 6
  %conv182.i.i.6 = trunc i32 %inc185.i.i.4 to i8
  %263 = ptrtoint ptr %incdec.ptr186.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %conv182.i.i.6, ptr %incdec.ptr186.i.i.5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %umax.i.i)
  %exitcond.not.i.i.6 = icmp eq i32 %umax.i.i, 7
  br i1 %exitcond.not.i.i.6, label %for.body181.i.i.6.for.end187.i.i_crit_edge, label %for.body181.i.i.7

for.body181.i.i.6.for.end187.i.i_crit_edge:       ; preds = %for.body181.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187.i.i

for.body181.i.i.7:                                ; preds = %for.body181.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr186.i.i.6 = getelementptr %struct.dtslot, ptr %arrayidx149.i.i, i32 7
  %inc185.i.i.6 = add nuw nsw i32 %conv140.i.i, 7
  %conv182.i.i.7 = trunc i32 %inc185.i.i.5 to i8
  %264 = ptrtoint ptr %incdec.ptr186.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %conv182.i.i.7, ptr %incdec.ptr186.i.i.6, align 2
  br label %for.end187.i.i

for.end187.i.i:                                   ; preds = %for.body181.i.i.7, %for.body181.i.i.6.for.end187.i.i_crit_edge, %for.body181.i.i.5.for.end187.i.i_crit_edge, %for.body181.i.i.4.for.end187.i.i_crit_edge, %for.body181.i.i.3.for.end187.i.i_crit_edge, %for.body181.i.i.2.for.end187.i.i_crit_edge, %for.body181.i.i.1.for.end187.i.i_crit_edge, %for.body181.preheader.i.i.for.end187.i.i_crit_edge, %if.end169.i.i.for.end187.i.i_crit_edge
  %last.0.lcssa.i.i = phi i32 [ %conv177482.i.i, %if.end169.i.i.for.end187.i.i_crit_edge ], [ %conv140.i.i, %for.body181.preheader.i.i.for.end187.i.i_crit_edge ], [ %inc185.i.i, %for.body181.i.i.1.for.end187.i.i_crit_edge ], [ %inc185.i.i.1, %for.body181.i.i.2.for.end187.i.i_crit_edge ], [ %inc185.i.i.2, %for.body181.i.i.3.for.end187.i.i_crit_edge ], [ %inc185.i.i.3, %for.body181.i.i.4.for.end187.i.i_crit_edge ], [ %inc185.i.i.4, %for.body181.i.i.5.for.end187.i.i_crit_edge ], [ %inc185.i.i.5, %for.body181.i.i.6.for.end187.i.i_crit_edge ], [ %inc185.i.i.6, %for.body181.i.i.7 ]
  %conv188.i.i = trunc i32 %last.0.lcssa.i.i to i8
  %265 = ptrtoint ptr %freelist.i.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %conv188.i.i, ptr %freelist.i.i, align 1
  %freecnt.i.i = getelementptr inbounds %struct.anon.71, ptr %cond.i.i, i32 0, i32 4
  %266 = ptrtoint ptr %freecnt.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %freecnt.i.i, align 2
  %268 = trunc i32 %237 to i8
  %conv192.i.i = add i8 %267, %268
  store i8 %conv192.i.i, ptr %freecnt.i.i, align 2
  %add193.i.i = add nsw i32 %shr147.i.i, %conv142.i.i
  %arrayidx194.i.i = getelementptr [128 x %struct.dtslot], ptr %cond.i.i, i32 0, i32 %add193.i.i
  %fsi.1476.i.i = add nsw i32 %add193.i.i, 1
  %269 = ptrtoint ptr %maxslot141.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %maxslot141.i.i, align 4
  %conv198477.i.i = zext i8 %270 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fsi.1476.i.i, i32 %conv198477.i.i)
  %cmp199478.i.i = icmp slt i32 %fsi.1476.i.i, %conv198477.i.i
  br i1 %cmp199478.i.i, label %for.end187.i.i.for.body201.i.i_crit_edge, label %for.end187.i.i.for.end207.i.i_crit_edge

for.end187.i.i.for.end207.i.i_crit_edge:          ; preds = %for.end187.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end207.i.i

for.end187.i.i.for.body201.i.i_crit_edge:         ; preds = %for.end187.i.i
  br label %for.body201.i.i

for.body201.i.i:                                  ; preds = %for.body201.i.i.for.body201.i.i_crit_edge, %for.end187.i.i.for.body201.i.i_crit_edge
  %fsi.1480.i.i = phi i32 [ %fsi.1.i.i, %for.body201.i.i.for.body201.i.i_crit_edge ], [ %fsi.1476.i.i, %for.end187.i.i.for.body201.i.i_crit_edge ]
  %f.1479.i.i = phi ptr [ %incdec.ptr205.i.i, %for.body201.i.i.for.body201.i.i_crit_edge ], [ %arrayidx194.i.i, %for.end187.i.i.for.body201.i.i_crit_edge ]
  %conv202.i.i = trunc i32 %fsi.1480.i.i to i8
  %271 = ptrtoint ptr %f.1479.i.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %conv202.i.i, ptr %f.1479.i.i, align 2
  %incdec.ptr205.i.i = getelementptr %struct.dtslot, ptr %f.1479.i.i, i32 1
  %fsi.1.i.i = add nsw i32 %fsi.1480.i.i, 1
  %272 = ptrtoint ptr %maxslot141.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %maxslot141.i.i, align 4
  %conv198.i.i = zext i8 %273 to i32
  %cmp199.i.i = icmp slt i32 %fsi.1.i.i, %conv198.i.i
  br i1 %cmp199.i.i, label %for.body201.i.i.for.body201.i.i_crit_edge, label %for.body201.i.i.for.end207.i.i_crit_edge

for.body201.i.i.for.end207.i.i_crit_edge:         ; preds = %for.body201.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end207.i.i

for.body201.i.i.for.body201.i.i_crit_edge:        ; preds = %for.body201.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body201.i.i

for.end207.i.i:                                   ; preds = %for.body201.i.i.for.end207.i.i_crit_edge, %for.end187.i.i.for.end207.i.i_crit_edge
  %f.1.lcssa.i.i = phi ptr [ %arrayidx194.i.i, %for.end187.i.i.for.end207.i.i_crit_edge ], [ %incdec.ptr205.i.i, %for.body201.i.i.for.end207.i.i_crit_edge ]
  %274 = ptrtoint ptr %f.1.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 -1, ptr %f.1.lcssa.i.i, align 2
  %275 = ptrtoint ptr %freelist.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %freelist.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %276)
  %cmp211.i.i = icmp eq i8 %276, -1
  br i1 %cmp211.i.i, label %if.then213.i.i, label %for.end207.i.i.do.body217.i.i_crit_edge

for.end207.i.i.do.body217.i.i_crit_edge:          ; preds = %for.end207.i.i
  br label %do.body217.i.i

if.then213.i.i:                                   ; preds = %for.end207.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv214.i.i = trunc i32 %add193.i.i to i8
  %277 = ptrtoint ptr %freelist.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv214.i.i, ptr %freelist.i.i, align 1
  br label %if.end227.i.i

do.body217.i.i:                                   ; preds = %do.body217.i.i.do.body217.i.i_crit_edge, %for.end207.i.i.do.body217.i.i_crit_edge
  %fsi.2.in.i.i = phi i8 [ %279, %do.body217.i.i.do.body217.i.i_crit_edge ], [ %276, %for.end207.i.i.do.body217.i.i_crit_edge ]
  %fsi.2.i.i = sext i8 %fsi.2.in.i.i to i32
  %arrayidx218.i.i = getelementptr [128 x %struct.dtslot], ptr %cond.i.i, i32 0, i32 %fsi.2.i.i
  %278 = ptrtoint ptr %arrayidx218.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx218.i.i, align 2
  %cmp222.not.i.i = icmp eq i8 %279, -1
  br i1 %cmp222.not.i.i, label %do.end224.i.i, label %do.body217.i.i.do.body217.i.i_crit_edge

do.body217.i.i.do.body217.i.i_crit_edge:          ; preds = %do.body217.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body217.i.i

do.end224.i.i:                                    ; preds = %do.body217.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv225.i.i = trunc i32 %add193.i.i to i8
  %280 = ptrtoint ptr %arrayidx218.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv225.i.i, ptr %arrayidx218.i.i, align 2
  br label %if.end227.i.i

if.end227.i.i:                                    ; preds = %do.end224.i.i, %if.then213.i.i
  %.pre-phi.i.i = phi i8 [ %conv225.i.i, %do.end224.i.i ], [ %conv214.i.i, %if.then213.i.i ]
  %281 = ptrtoint ptr %maxslot141.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %maxslot141.i.i, align 4
  %283 = ptrtoint ptr %freecnt.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %freecnt.i.i, align 2
  %285 = sub i8 %282, %.pre-phi.i.i
  %conv233.i.i = add i8 %285, %284
  store i8 %conv233.i.i, ptr %freecnt.i.i, align 2
  %286 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %0, align 4
  %conv235.i.i = sext i16 %287 to i32
  %288 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %2, align 4
  %290 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %3, align 4
  call fastcc void @dtInsertEntry(ptr noundef %cond.i.i, i32 noundef %conv235.i.i, ptr noundef %289, ptr noundef %291, ptr noundef nonnull %dtlck.i.i) #8
  %292 = ptrtoint ptr %pmp.0.ph489.i.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %pmp.0.ph489.i.i, align 8
  %294 = and i16 %293, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %294)
  %cmp240.i.i = icmp eq i16 %294, 0
  br i1 %cmp240.i.i, label %if.then242.i.i, label %if.else243.i.i

if.then242.i.i:                                   ; preds = %if.end227.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end245.i.i

if.else243.i.i:                                   ; preds = %if.end227.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flag244.i.i = getelementptr inbounds %struct.metapage, ptr %pmp.0.ph489.i.i, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag244.i.i) #8
  br label %if.end245.i.i

if.end245.i.i:                                    ; preds = %if.else243.i.i, %if.then242.i.i
  br i1 %cmp72.i.i, label %if.then248.i.i, label %if.end245.i.i.if.end258.i.i_crit_edge

if.end245.i.i.if.end258.i.i_crit_edge:            ; preds = %if.end245.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end258.i.i

if.then248.i.i:                                   ; preds = %if.end245.i.i
  %295 = ptrtoint ptr %maxslot141.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %maxslot141.i.i, align 4
  %297 = lshr i8 %296, 2
  %298 = ptrtoint ptr %freelist.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %freelist.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %299, i8 %297)
  %cmp254.i.i = icmp slt i8 %299, %297
  br i1 %cmp254.i.i, label %if.then256.i.i, label %if.then248.i.i.if.end258.i.i_crit_edge

if.then248.i.i.if.end258.i.i_crit_edge:           ; preds = %if.then248.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end258.i.i

if.then256.i.i:                                   ; preds = %if.then248.i.i
  %300 = ptrtoint ptr %dtlck.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dtlck.i.i, align 4
  %conv.i452.i.i = sext i8 %299 to i32
  %index.i.i.i = getelementptr inbounds %struct.linelock, ptr %301, i32 0, i32 2
  %302 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %index.i.i.i, align 1
  %maxcnt.i.i.i = getelementptr inbounds %struct.linelock, ptr %301, i32 0, i32 1
  %304 = ptrtoint ptr %maxcnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %maxcnt.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %303, i8 %305)
  %cmp.not.i.i.i = icmp slt i8 %303, %305
  br i1 %cmp.not.i.i.i, label %if.then256.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i713.i

if.then256.i.i.if.end.i.i.i_crit_edge:            ; preds = %if.then256.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i713.i:                                 ; preds = %if.then256.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call ptr @txLinelock(ptr noundef %301) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i713.i, %if.then256.i.i.if.end.i.i.i_crit_edge
  %dtlck.0.i.i.i = phi ptr [ %call.i.i.i, %if.then.i.i713.i ], [ %301, %if.then256.i.i.if.end.i.i.i_crit_edge ]
  %index5.i.i.i = getelementptr inbounds %struct.linelock, ptr %dtlck.0.i.i.i, i32 0, i32 2
  %306 = ptrtoint ptr %index5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %index5.i.i.i, align 1
  %idxprom.i.i.i = sext i8 %307 to i32
  %arrayidx.i.i.i = getelementptr %struct.linelock, ptr %dtlck.0.i.i.i, i32 0, i32 6, i32 %idxprom.i.i.i
  %308 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %299, ptr %arrayidx.i.i.i, align 1
  %si.0.in.in68.i.i.i = getelementptr [128 x %struct.dtslot], ptr %cond.i.i, i32 0, i32 %conv.i452.i.i
  %309 = ptrtoint ptr %si.0.in.in68.i.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %si.0.in69.i.i.i = load i8, ptr %si.0.in.in68.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %si.0.in69.i.i.i, i8 %297)
  %310 = icmp ult i8 %si.0.in69.i.i.i, %297
  br i1 %310, label %if.end.i.i.i.while.body.i.i.i_crit_edge, label %if.end.i.i.i.dtLinelockFreelist.exit.i.i_crit_edge

if.end.i.i.i.dtLinelockFreelist.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtLinelockFreelist.exit.i.i

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end31.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.i.while.body.i.i.i_crit_edge
  %si.0.in78.i.i.i = phi i8 [ %si.0.in.i.i.i, %if.end31.i.i.i.while.body.i.i.i_crit_edge ], [ %si.0.in69.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %n.077.i.i.i = phi i32 [ %inc32.i.i.i, %if.end31.i.i.i.while.body.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %xsi.076.i.i.i = phi i32 [ %si.079.i.i.i, %if.end31.i.i.i.while.body.i.i.i_crit_edge ], [ %conv.i452.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %lv.075.i.i.i = phi ptr [ %lv.2.i.i.i, %if.end31.i.i.i.while.body.i.i.i_crit_edge ], [ %arrayidx.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %dtlck.174.i.i.i = phi ptr [ %dtlck.3.i.i.i, %if.end31.i.i.i.while.body.i.i.i_crit_edge ], [ %dtlck.0.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %si.079.i.i.i = sext i8 %si.0.in78.i.i.i to i32
  %add.i453.i.i = add nsw i32 %xsi.076.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i453.i.i, i32 %si.079.i.i.i)
  %cmp13.not.i.i.i = icmp eq i32 %add.i453.i.i, %si.079.i.i.i
  br i1 %cmp13.not.i.i.i, label %while.body.i.i.i.if.end31.i.i.i_crit_edge, label %if.then15.i.i.i

while.body.i.i.i.if.end31.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i.i

if.then15.i.i.i:                                  ; preds = %while.body.i.i.i
  %conv16.i.i.i = trunc i32 %n.077.i.i.i to i8
  %length.i.i.i = getelementptr inbounds %struct.lv, ptr %lv.075.i.i.i, i32 0, i32 1
  %311 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %conv16.i.i.i, ptr %length.i.i.i, align 1
  %index17.i.i.i = getelementptr inbounds %struct.linelock, ptr %dtlck.174.i.i.i, i32 0, i32 2
  %312 = ptrtoint ptr %index17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %index17.i.i.i, align 1
  %inc.i.i.i = add i8 %313, 1
  store i8 %inc.i.i.i, ptr %index17.i.i.i, align 1
  %maxcnt20.i.i.i = getelementptr inbounds %struct.linelock, ptr %dtlck.174.i.i.i, i32 0, i32 1
  %314 = ptrtoint ptr %maxcnt20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %maxcnt20.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i.i.i, i8 %315)
  %cmp22.i.i.i = icmp slt i8 %inc.i.i.i, %315
  br i1 %cmp22.i.i.i, label %if.then24.i.i.i, label %if.else.i.i.i

if.then24.i.i.i:                                  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i.i = getelementptr %struct.lv, ptr %lv.075.i.i.i, i32 1
  br label %if.end28.i.i.i

if.else.i.i.i:                                    ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call25.i.i.i = call ptr @txLinelock(ptr noundef %dtlck.174.i.i.i) #8
  %lv26.i.i.i = getelementptr inbounds %struct.linelock, ptr %call25.i.i.i, i32 0, i32 6
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then24.i.i.i
  %dtlck.2.i.i.i = phi ptr [ %dtlck.174.i.i.i, %if.then24.i.i.i ], [ %call25.i.i.i, %if.else.i.i.i ]
  %lv.1.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.then24.i.i.i ], [ %lv26.i.i.i, %if.else.i.i.i ]
  %316 = ptrtoint ptr %lv.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %si.0.in78.i.i.i, ptr %lv.1.i.i.i, align 1
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.end28.i.i.i, %while.body.i.i.i.if.end31.i.i.i_crit_edge
  %dtlck.3.i.i.i = phi ptr [ %dtlck.2.i.i.i, %if.end28.i.i.i ], [ %dtlck.174.i.i.i, %while.body.i.i.i.if.end31.i.i.i_crit_edge ]
  %lv.2.i.i.i = phi ptr [ %lv.1.i.i.i, %if.end28.i.i.i ], [ %lv.075.i.i.i, %while.body.i.i.i.if.end31.i.i.i_crit_edge ]
  %n.1.i.i.i = phi i32 [ 0, %if.end28.i.i.i ], [ %n.077.i.i.i, %while.body.i.i.i.if.end31.i.i.i_crit_edge ]
  %inc32.i.i.i = add i32 %n.1.i.i.i, 1
  %si.0.in.in.i.i.i = getelementptr [128 x %struct.dtslot], ptr %cond.i.i, i32 0, i32 %si.079.i.i.i
  %317 = ptrtoint ptr %si.0.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %si.0.in.i.i.i = load i8, ptr %si.0.in.in.i.i.i, align 2
  %318 = icmp ult i8 %si.0.in.i.i.i, %297
  br i1 %318, label %if.end31.i.i.i.while.body.i.i.i_crit_edge, label %while.end.loopexit.i.i.i

if.end31.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

while.end.loopexit.i.i.i:                         ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.i.i.i = trunc i32 %inc32.i.i.i to i8
  br label %dtLinelockFreelist.exit.i.i

dtLinelockFreelist.exit.i.i:                      ; preds = %while.end.loopexit.i.i.i, %if.end.i.i.i.dtLinelockFreelist.exit.i.i_crit_edge
  %dtlck.1.lcssa.i.i.i = phi ptr [ %dtlck.0.i.i.i, %if.end.i.i.i.dtLinelockFreelist.exit.i.i_crit_edge ], [ %dtlck.3.i.i.i, %while.end.loopexit.i.i.i ]
  %lv.0.lcssa.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.end.i.i.i.dtLinelockFreelist.exit.i.i_crit_edge ], [ %lv.2.i.i.i, %while.end.loopexit.i.i.i ]
  %n.0.lcssa.i.i.i = phi i8 [ 1, %if.end.i.i.i.dtLinelockFreelist.exit.i.i_crit_edge ], [ %phi.cast.i.i.i, %while.end.loopexit.i.i.i ]
  %length37.i.i.i = getelementptr inbounds %struct.lv, ptr %lv.0.lcssa.i.i.i, i32 0, i32 1
  %319 = ptrtoint ptr %length37.i.i.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %n.0.lcssa.i.i.i, ptr %length37.i.i.i, align 1
  %index38.i.i.i = getelementptr inbounds %struct.linelock, ptr %dtlck.1.lcssa.i.i.i, i32 0, i32 2
  %320 = ptrtoint ptr %index38.i.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %index38.i.i.i, align 1
  %inc39.i.i.i = add i8 %321, 1
  store i8 %inc39.i.i.i, ptr %index38.i.i.i, align 1
  br label %if.end258.i.i

if.end258.i.i:                                    ; preds = %dtLinelockFreelist.exit.i.i, %if.then248.i.i.if.end258.i.i_crit_edge, %if.end245.i.i.if.end258.i.i_crit_edge
  %call259.i.i = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %pmp.0.ph489.i.i, i32 noundef 8193) #8
  %lock260.i.i = getelementptr inbounds %struct.tlock, ptr %call259.i.i, i32 0, i32 6
  %322 = ptrtoint ptr %dtlck.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %lock260.i.i, ptr %dtlck.i.i, align 4
  %lv261.i.i = getelementptr inbounds %struct.tlock, ptr %call259.i.i, i32 0, i32 6, i32 4
  %index262.i.i = getelementptr inbounds %struct.linelock, ptr %lock260.i.i, i32 0, i32 2
  %323 = ptrtoint ptr %index262.i.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %index262.i.i, align 1
  %idxprom263.i.i = sext i8 %324 to i32
  %arrayidx264.i.i = getelementptr [20 x %struct.lv], ptr %lv261.i.i, i32 0, i32 %idxprom263.i.i
  %325 = ptrtoint ptr %arrayidx264.i.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 1, ptr %arrayidx264.i.i, align 1
  %length266.i.i = getelementptr [20 x %struct.lv], ptr %lv261.i.i, i32 0, i32 %idxprom263.i.i, i32 1
  %326 = ptrtoint ptr %length266.i.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 1, ptr %length266.i.i, align 1
  %327 = load i8, ptr %index262.i.i, align 1
  %inc268.i.i = add i8 %327, 1
  store i8 %inc268.i.i, ptr %index262.i.i, align 1
  %arrayidx269.i.i = getelementptr [128 x %struct.dtslot], ptr %pp.0.ph490.i.i, i32 0, i32 1
  %328 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %328, i32 8)
  %329 = load i64, ptr %arrayidx.i.i, align 4
  %330 = ptrtoint ptr %arrayidx269.i.i to i32
  call void @__asan_storeN_noabort(i32 %330, i32 8)
  store i64 %329, ptr %arrayidx269.i.i, align 4
  %331 = ptrtoint ptr %pmp.0.ph489.i.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %pmp.0.ph489.i.i, align 8
  %333 = and i16 %332, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %333)
  %cmp273.i.i = icmp eq i16 %333, 0
  br i1 %cmp273.i.i, label %if.end258.i.i.if.else132.i_crit_edge, label %if.then275.i.i

if.end258.i.i.if.else132.i_crit_edge:             ; preds = %if.end258.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else132.i

if.then275.i.i:                                   ; preds = %if.end258.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %pmp.0.ph489.i.i) #8
  br label %if.else132.i

if.then115.i:                                     ; preds = %if.end58.i.i, %do.end.i.i, %if.else21.i.i.if.then115.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtlck.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mp.i.i) #8
  %334 = ptrtoint ptr %pxd109.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %pxd109.i, align 4
  %336 = shl i32 %335, 24
  %conv.i714.i = zext i32 %336 to i64
  %shl.i715.i = shl nuw nsw i64 %conv.i714.i, 8
  %337 = ptrtoint ptr %addr2.i708.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %addr2.i708.i, align 4
  %339 = call i32 @llvm.bswap.i32(i32 %338) #8
  %conv1.i717.i = zext i32 %339 to i64
  %add.i718.i = or i64 %shl.i715.i, %conv1.i717.i
  %340 = ptrtoint ptr %nxaddr.i to i32
  call void @__asan_store8_noabort(i32 %340)
  store i64 %add.i718.i, ptr %nxaddr.i, align 8
  %341 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_load8_noabort(i32 %341)
  %342 = load i64, ptr %xaddr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %342, i64 %add.i718.i)
  %cmp117.not.i = icmp eq i64 %342, %add.i718.i
  %343 = and i32 %335, -256
  %344 = call i32 @llvm.bswap.i32(i32 %343) #8
  br i1 %cmp117.not.i, label %if.else123.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #10
  %345 = zext i32 %344 to i64
  %call122.i = call i32 @dbFree(ptr noundef %ip, i64 noundef %add.i718.i, i64 noundef %345) #8
  br label %extendOut.i

if.else123.i:                                     ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub125.i = sub nsw i32 %344, %n.0.i
  %conv127.i = sext i32 %sub125.i to i64
  %add128.i = add nsw i64 %add.i718.i, %conv127.i
  %346 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_store8_noabort(i32 %346)
  store i64 %add128.i, ptr %xaddr.i, align 8
  %call130.i = call i32 @dbFree(ptr noundef %ip, i64 noundef %add128.i, i64 noundef %123) #8
  br label %extendOut.i

if.else132.i:                                     ; preds = %if.then275.i.i, %if.end258.i.i.if.else132.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtlck.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mp.i.i) #8
  %347 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i724.i = getelementptr inbounds %struct.super_block, ptr %348, i32 0, i32 33
  %349 = ptrtoint ptr %s_fs_info.i724.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %s_fs_info.i724.i, align 16
  %mntflag135.i = getelementptr inbounds %struct.jfs_sb_info, ptr %350, i32 0, i32 1
  %351 = ptrtoint ptr %mntflag135.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %mntflag135.i, align 4
  %and136.i = and i32 %352, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %if.then138.i, label %if.else132.i.extendOut.i_crit_edge

if.else132.i.extendOut.i_crit_edge:               ; preds = %if.else132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %extendOut.i

if.then138.i:                                     ; preds = %if.else132.i
  call void @__sanitizer_cov_trace_pc() #10
  %353 = ptrtoint ptr %pxd109.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %pxd109.i, align 4
  %355 = and i32 %354, -256
  %356 = call i32 @llvm.bswap.i32(i32 %355) #8
  %357 = ptrtoint ptr %l2bsize72.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %l2bsize72.i, align 2
  %conv141693.i = zext i16 %358 to i32
  %shl142.i = shl i32 %356, %conv141693.i
  %conv143.i = zext i32 %shl142.i to i64
  %i_size144.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %359 = ptrtoint ptr %i_size144.i to i32
  call void @__asan_store8_noabort(i32 %359)
  store i64 %conv143.i, ptr %i_size144.i, align 8
  br label %extendOut.i

extendOut.i:                                      ; preds = %if.then138.i, %if.else132.i.extendOut.i_crit_edge, %if.else123.i, %if.then119.i, %if.end99.i.extendOut.i_crit_edge, %if.then77.i.extendOut.i_crit_edge
  %quota_allocation.0.i = phi i32 [ %n.0.i, %if.end99.i.extendOut.i_crit_edge ], [ %n.0.i, %if.then119.i ], [ %n.0.i, %if.else123.i ], [ %n.0.i, %if.else132.i.extendOut.i_crit_edge ], [ %n.0.i, %if.then138.i ], [ 0, %if.then77.i.extendOut.i_crit_edge ]
  %rc.0.i = phi i32 [ %call103.i, %if.end99.i.extendOut.i_crit_edge ], [ -5, %if.then119.i ], [ -5, %if.else123.i ], [ 0, %if.else132.i.extendOut.i_crit_edge ], [ 0, %if.then138.i ], [ %call.i.i.i.i, %if.then77.i.extendOut.i_crit_edge ]
  %360 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %14, align 8
  %362 = and i16 %361, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %362)
  %cmp150.i = icmp eq i16 %362, 0
  br i1 %cmp150.i, label %extendOut.i.freeKeyName.i_crit_edge, label %if.then152.i

extendOut.i.freeKeyName.i_crit_edge:              ; preds = %extendOut.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %freeKeyName.i

if.then152.i:                                     ; preds = %extendOut.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %14) #8
  br label %freeKeyName.i

if.end154.i:                                      ; preds = %if.end70.i
  %nsplit.i = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 1
  %363 = ptrtoint ptr %nsplit.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %nsplit.i, align 4
  %npxd155.i = getelementptr inbounds %struct.pxdlist, ptr %pxdlist.i, i32 0, i32 1
  %365 = ptrtoint ptr %npxd155.i to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 0, ptr %npxd155.i, align 2
  %366 = ptrtoint ptr %pxdlist.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 0, ptr %pxdlist.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %cmp159820.i = icmp sgt i32 %364, 0
  br i1 %cmp159820.i, label %for.body.lr.ph.i, label %if.end154.i.for.end.i_crit_edge

if.end154.i.for.end.i_crit_edge:                  ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end154.i
  %pxd158.i = getelementptr inbounds %struct.pxdlist, ptr %pxdlist.i, i32 0, i32 2
  %nbperpage.i = getelementptr inbounds %struct.jfs_sb_info, ptr %47, i32 0, i32 10
  %367 = ptrtoint ptr %nbperpage.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %nbperpage.i, align 4
  %conv157.i = sext i16 %368 to i32
  %conv161.i = sext i16 %368 to i64
  %and1.i733.i = and i32 %conv157.i, 16777215
  %369 = call i32 @llvm.bswap.i32(i32 %and1.i733.i) #8
  br label %for.body.i

for.body.i:                                       ; preds = %if.then165.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.1822.i = phi i32 [ %364, %for.body.lr.ph.i ], [ %dec.i, %if.then165.i.for.body.i_crit_edge ]
  %pxd.0821.i = phi ptr [ %pxd158.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.then165.i.for.body.i_crit_edge ]
  %call162.i = call i32 @dbAlloc(ptr noundef %ip, i64 noundef 0, i64 noundef %conv161.i, ptr noundef nonnull %xaddr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i)
  %cmp163.i = icmp eq i32 %call162.i, 0
  br i1 %cmp163.i, label %if.then165.i, label %if.end168.i

if.then165.i:                                     ; preds = %for.body.i
  %370 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_load8_noabort(i32 %370)
  %371 = load i64, ptr %xaddr.i, align 8
  %sum.shift.i726.i = lshr i64 %371, 32
  %conv7.i727.i = trunc i64 %sum.shift.i726.i to i32
  %conv.i728.i = and i32 %conv7.i727.i, 255
  %conv3.i730.i = trunc i64 %371 to i32
  %372 = call i32 @llvm.bswap.i32(i32 %conv3.i730.i) #8
  %addr2.i731.i = getelementptr inbounds %struct.pxd_t, ptr %pxd.0821.i, i32 0, i32 1
  %373 = ptrtoint ptr %addr2.i731.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %372, ptr %addr2.i731.i, align 4
  %or.i734.i = or i32 %conv.i728.i, %369
  %374 = ptrtoint ptr %pxd.0821.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %or.i734.i, ptr %pxd.0821.i, align 4
  %375 = ptrtoint ptr %pxdlist.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %pxdlist.i, align 4
  %inc167.i = add i16 %376, 1
  store i16 %inc167.i, ptr %pxdlist.i, align 4
  %dec.i = add nsw i32 %n.1822.i, -1
  %incdec.ptr.i = getelementptr %struct.pxd_t, ptr %pxd.0821.i, i32 1
  %cmp159.i = icmp sgt i32 %n.1822.i, 1
  br i1 %cmp159.i, label %if.then165.i.for.body.i_crit_edge, label %if.then165.i.for.end.i_crit_edge

if.then165.i.for.end.i_crit_edge:                 ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then165.i.for.body.i_crit_edge:                ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end168.i:                                      ; preds = %for.body.i
  %377 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %14, align 8
  %379 = and i16 %378, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %379)
  %cmp172.i = icmp eq i16 %379, 0
  br i1 %cmp172.i, label %if.end168.i.splitOut.i_crit_edge, label %if.end168.i.splitOut.sink.split.i_crit_edge

if.end168.i.splitOut.sink.split.i_crit_edge:      ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.sink.split.i

if.end168.i.splitOut.i_crit_edge:                 ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.i

for.end.i:                                        ; preds = %if.then165.i.for.end.i_crit_edge, %if.end154.i.for.end.i_crit_edge
  %n.1.lcssa.i = phi i32 [ %364, %if.end154.i.for.end.i_crit_edge ], [ 0, %if.then165.i.for.end.i_crit_edge ]
  %380 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %pxdlist.i, ptr %4, align 4
  %call177.i = call fastcc i32 @dtSplitPage(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %split, ptr noundef nonnull %rmp.i, ptr noundef nonnull %rp.i, ptr noundef nonnull %rpxd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177.i)
  %tobool178.not.i = icmp eq i32 %call177.i, 0
  br i1 %tobool178.not.i, label %if.end187.i, label %if.then179.i

if.then179.i:                                     ; preds = %for.end.i
  %381 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %14, align 8
  %383 = and i16 %382, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %383)
  %cmp183.i = icmp eq i16 %383, 0
  br i1 %cmp183.i, label %if.then179.i.splitOut.i_crit_edge, label %if.then179.i.splitOut.sink.split.i_crit_edge

if.then179.i.splitOut.sink.split.i_crit_edge:     ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.sink.split.i

if.then179.i.splitOut.i_crit_edge:                ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.i

if.end187.i:                                      ; preds = %for.end.i
  %384 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i735.i = getelementptr inbounds %struct.super_block, ptr %385, i32 0, i32 33
  %386 = ptrtoint ptr %s_fs_info.i735.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %s_fs_info.i735.i, align 16
  %mntflag190.i = getelementptr inbounds %struct.jfs_sb_info, ptr %387, i32 0, i32 1
  %388 = ptrtoint ptr %mntflag190.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %mntflag190.i, align 4
  %and191.i = and i32 %389, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i)
  %tobool192.not.i = icmp eq i32 %and191.i, 0
  br i1 %tobool192.not.i, label %if.then193.i, label %if.end187.i.if.end196.i_crit_edge

if.end187.i.if.end196.i_crit_edge:                ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i

if.then193.i:                                     ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_size194.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %390 = ptrtoint ptr %i_size194.i to i32
  call void @__asan_load8_noabort(i32 %390)
  %391 = load i64, ptr %i_size194.i, align 8
  %add195.i = add i64 %391, 4096
  store i64 %add195.i, ptr %i_size194.i, align 8
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then193.i, %if.end187.i.if.end196.i_crit_edge
  %stack.i = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 2
  %bxflag.i = getelementptr i8, ptr %ip, i32 -752
  %_dtroot214.i = getelementptr i8, ptr %ip, i32 -304
  %mntflag349.i = getelementptr inbounds %struct.jfs_sb_info, ptr %47, i32 0, i32 1
  %392 = getelementptr inbounds %struct.component_name, ptr %lkey.i.i, i32 0, i32 1
  %393 = getelementptr inbounds %struct.component_name, ptr %rkey.i.i, i32 0, i32 1
  %nextindex858.i = getelementptr i8, ptr %ip, i32 -287
  br label %while.cond.i

while.cond.i:                                     ; preds = %cond.end400.i.while.cond.i_crit_edge, %if.end196.i
  %sp.0.i = phi ptr [ %cond.i, %if.end196.i ], [ %sp.1.ph860.i, %cond.end400.i.while.cond.i_crit_edge ]
  %n.2.i = phi i32 [ %n.1.lcssa.i, %if.end196.i ], [ %n.3.i, %cond.end400.i.while.cond.i_crit_edge ]
  %smp.0.i = phi ptr [ %14, %if.end196.i ], [ %smp.1.ph866.i, %cond.end400.i.while.cond.i_crit_edge ]
  %394 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %btstack, align 8
  %cmp198.i = icmp eq ptr %395, %stack.i
  br i1 %cmp198.i, label %while.cond.i.while.end.i_crit_edge, label %cond.end204.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

cond.end204.i:                                    ; preds = %while.cond.i
  %incdec.ptr203.i = getelementptr %struct.btframe, ptr %395, i32 -1
  %396 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr %incdec.ptr203.i, ptr %btstack, align 8
  %cmp206.not.i = icmp eq ptr %incdec.ptr203.i, null
  br i1 %cmp206.not.i, label %cond.end204.i.while.end.i_crit_edge, label %while.body.i

cond.end204.i.while.end.i_crit_edge:              ; preds = %cond.end204.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %cond.end204.i
  %397 = ptrtoint ptr %incdec.ptr203.i to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %incdec.ptr203.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %398)
  %cmp208.i = icmp eq i64 %398, 0
  br i1 %cmp208.i, label %if.then235.thread.i, label %if.else215.i

if.then235.thread.i:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %399 = ptrtoint ptr %nextindex858.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %nextindex858.i, align 1
  br label %cond.end243.i

if.else215.i:                                     ; preds = %while.body.i
  %conv217.i = trunc i64 %398 to i32
  %call218.i = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv217.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool219.not.i = icmp eq ptr %call218.i, null
  br i1 %tobool219.not.i, label %if.else222.i, label %if.then235.i

if.else222.i:                                     ; preds = %if.else215.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %401 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %cmp224.i = icmp sgt i32 %401, 0
  br i1 %cmp224.i, label %do.end.i, label %if.else222.i.if.then267.i_crit_edge

if.else222.i.if.then267.i_crit_edge:              ; preds = %if.else222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267.i

do.end.i:                                         ; preds = %if.else222.i
  call void @__sanitizer_cov_trace_pc() #10
  %call228.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.then267.i

if.then235.i:                                     ; preds = %if.else215.i
  %data221.i = getelementptr inbounds %struct.metapage, ptr %call218.i, i32 0, i32 7
  %402 = ptrtoint ptr %data221.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %data221.i, align 4
  %404 = ptrtoint ptr %incdec.ptr203.i to i32
  call void @__asan_load8_noabort(i32 %404)
  %.pr.i = load i64, ptr %incdec.ptr203.i, align 8
  %nextindex.i = getelementptr inbounds %struct.anon.71, ptr %403, i32 0, i32 3
  %405 = ptrtoint ptr %nextindex.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %nextindex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr.i)
  %cmp238.i = icmp eq i64 %.pr.i, 0
  br i1 %cmp238.i, label %if.then235.i.cond.end243.i_crit_edge, label %cond.end243.thread.i

if.then235.i.cond.end243.i_crit_edge:             ; preds = %if.then235.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end243.i

cond.end243.i:                                    ; preds = %if.then235.i.cond.end243.i_crit_edge, %if.then235.thread.i
  %407 = phi i8 [ %400, %if.then235.thread.i ], [ %406, %if.then235.i.cond.end243.i_crit_edge ]
  %nextindex871.i = phi ptr [ %nextindex858.i, %if.then235.thread.i ], [ %nextindex.i, %if.then235.i.cond.end243.i_crit_edge ]
  %smp.1.ph867.i = phi ptr [ %bxflag.i, %if.then235.thread.i ], [ %call218.i, %if.then235.i.cond.end243.i_crit_edge ]
  %sp.1.ph861.i = phi ptr [ %_dtroot214.i, %if.then235.thread.i ], [ %403, %if.then235.i.cond.end243.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %407)
  %cmp245.i = icmp ugt i8 %407, 9
  br i1 %cmp245.i, label %cond.end243.i.if.then253.i_crit_edge, label %cond.end243.i.if.end282.i_crit_edge

cond.end243.i.if.end282.i_crit_edge:              ; preds = %cond.end243.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end282.i

cond.end243.i.if.then253.i_crit_edge:             ; preds = %cond.end243.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then253.i

cond.end243.thread.i:                             ; preds = %if.then235.i
  %maxslot.i = getelementptr inbounds %struct.anon.71, ptr %403, i32 0, i32 6
  %408 = ptrtoint ptr %maxslot.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %maxslot.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %409, i8 %406)
  %cmp245773.i = icmp ult i8 %409, %406
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %409)
  %cmp251.i = icmp ugt i8 %409, -128
  %or.cond = or i1 %cmp245773.i, %cmp251.i
  br i1 %or.cond, label %cond.end243.thread.i.if.then253.i_crit_edge, label %cond.end243.thread.i.if.end282.i_crit_edge

cond.end243.thread.i.if.end282.i_crit_edge:       ; preds = %cond.end243.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end282.i

cond.end243.thread.i.if.then253.i_crit_edge:      ; preds = %cond.end243.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then253.i

if.then253.i:                                     ; preds = %cond.end243.thread.i.if.then253.i_crit_edge, %cond.end243.i.if.then253.i_crit_edge
  %smp.1.ph869.i = phi ptr [ %call218.i, %cond.end243.thread.i.if.then253.i_crit_edge ], [ %smp.1.ph867.i, %cond.end243.i.if.then253.i_crit_edge ]
  %410 = ptrtoint ptr %smp.1.ph869.i to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %smp.1.ph869.i, align 8
  %412 = and i16 %411, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %412)
  %cmp257.i = icmp eq i16 %412, 0
  br i1 %cmp257.i, label %if.then253.i.if.end260.i_crit_edge, label %if.then259.i

if.then253.i.if.end260.i_crit_edge:               ; preds = %if.then253.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end260.i

if.then259.i:                                     ; preds = %if.then253.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %smp.1.ph869.i) #8
  br label %if.end260.i

if.end260.i:                                      ; preds = %if.then259.i, %if.then253.i.if.end260.i_crit_edge
  %413 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %414, ptr noundef nonnull @.str.3) #8
  br label %if.then267.i

if.then267.i:                                     ; preds = %if.end260.i, %do.end.i, %if.else222.i.if.then267.i_crit_edge
  %415 = ptrtoint ptr %smp.0.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %smp.0.i, align 8
  %417 = and i16 %416, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %417)
  %cmp271.i = icmp eq i16 %417, 0
  br i1 %cmp271.i, label %if.then267.i.if.end274.i_crit_edge, label %if.then273.i

if.then267.i.if.end274.i_crit_edge:               ; preds = %if.then267.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end274.i

if.then273.i:                                     ; preds = %if.then267.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %smp.0.i) #8
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.then273.i, %if.then267.i.if.end274.i_crit_edge
  %418 = ptrtoint ptr %rmp.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %rmp.i, align 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %419, align 8
  %422 = and i16 %421, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %422)
  %cmp278.i = icmp eq i16 %422, 0
  br i1 %cmp278.i, label %if.end274.i.splitOut.i_crit_edge, label %if.end274.i.splitOut.sink.split.i_crit_edge

if.end274.i.splitOut.sink.split.i_crit_edge:      ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.sink.split.i

if.end274.i.splitOut.i_crit_edge:                 ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.i

if.end282.i:                                      ; preds = %cond.end243.thread.i.if.end282.i_crit_edge, %cond.end243.i.if.end282.i_crit_edge
  %nextindex870.i = phi ptr [ %nextindex871.i, %cond.end243.i.if.end282.i_crit_edge ], [ %nextindex.i, %cond.end243.thread.i.if.end282.i_crit_edge ]
  %smp.1.ph866.i = phi ptr [ %smp.1.ph867.i, %cond.end243.i.if.end282.i_crit_edge ], [ %call218.i, %cond.end243.thread.i.if.end282.i_crit_edge ]
  %sp.1.ph860.i = phi ptr [ %sp.1.ph861.i, %cond.end243.i.if.end282.i_crit_edge ], [ %403, %cond.end243.thread.i.if.end282.i_crit_edge ]
  %index.i = getelementptr %struct.btframe, ptr %395, i32 -1, i32 1
  %423 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %index.i, align 8
  %conv283.i = sext i16 %424 to i32
  %add284.i = add nsw i32 %conv283.i, 1
  %425 = ptrtoint ptr %rp.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %rp.i, align 4
  %flag285.i = getelementptr inbounds %struct.anon.71, ptr %426, i32 0, i32 2
  %427 = ptrtoint ptr %flag285.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %flag285.i, align 8
  %429 = and i8 %428, 7
  %and287.i = zext i8 %429 to i32
  %430 = zext i32 %and287.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %430, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %and287.i, label %do.body355.i [
    i32 2, label %sw.bb.i
    i32 4, label %sw.bb348.i
  ]

sw.bb.i:                                          ; preds = %if.end282.i
  %flag288.i = getelementptr inbounds %struct.anon.71, ptr %sp.1.ph860.i, i32 0, i32 2
  %431 = ptrtoint ptr %flag288.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %flag288.i, align 8
  %433 = and i8 %432, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %433)
  %tobool291.not.i = icmp ne i8 %433, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %424)
  %cmp293.i = icmp sgt i16 %424, 0
  %or.cond.i = select i1 %tobool291.not.i, i1 %cmp293.i, i1 false
  br i1 %or.cond.i, label %sw.bb.i.if.then301.i_crit_edge, label %lor.lhs.false295.i

sw.bb.i.if.then301.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then301.i

lor.lhs.false295.i:                               ; preds = %sw.bb.i
  %prev.i = getelementptr inbounds %struct.anon.71, ptr %sp.1.ph860.i, i32 0, i32 1
  %434 = ptrtoint ptr %prev.i to i32
  call void @__asan_load8_noabort(i32 %434)
  %435 = load i64, ptr %prev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %435)
  %cmp296.not.i = icmp ne i64 %435, 0
  %or.cond695.i = select i1 %cmp296.not.i, i1 true, i1 %cmp293.i
  br i1 %or.cond695.i, label %lor.lhs.false295.i.if.then301.i_crit_edge, label %if.else331.i

lor.lhs.false295.i.if.then301.i_crit_edge:        ; preds = %lor.lhs.false295.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then301.i

if.then301.i:                                     ; preds = %lor.lhs.false295.i.if.then301.i_crit_edge, %sw.bb.i.if.then301.i_crit_edge
  %nextindex302.i = getelementptr inbounds %struct.anon.71, ptr %sp.0.i, i32 0, i32 3
  %436 = ptrtoint ptr %nextindex302.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %nextindex302.i, align 1
  %conv303.i = zext i8 %437 to i32
  %sub304.i = add nsw i32 %conv303.i, -1
  %438 = ptrtoint ptr %mntflag349.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %mntflag349.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lkey.i.i) #8
  %440 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 -1, ptr %lkey.i.i, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rkey.i.i) #8
  %441 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 -1, ptr %rkey.i.i, align 4, !annotation !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %442 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %442, i32 noundef 3264, i32 noundef 512) #11
  %443 = ptrtoint ptr %392 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %call7.i.i.i.i, ptr %392, align 4
  %cmp.i738.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i738.i, label %if.then301.i.if.then308.i_crit_edge, label %if.end.i.i

if.then301.i.if.then308.i_crit_edge:              ; preds = %if.then301.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then308.i

if.end.i.i:                                       ; preds = %if.then301.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %444 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i2.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %444, i32 noundef 3264, i32 noundef 512) #11
  %445 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %call7.i.i2.i.i, ptr %393, align 4
  %cmp5.i.i = icmp eq ptr %call7.i.i2.i.i, null
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %if.then308.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  call fastcc void @dtGetKey(ptr noundef %sp.0.i, i32 noundef %sub304.i, ptr noundef nonnull %lkey.i.i, i32 noundef %439) #8
  %446 = ptrtoint ptr %392 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %392, align 4
  %448 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %lkey.i.i, align 4
  %arrayidx.i739.i = getelementptr i16, ptr %447, i32 %449
  %450 = ptrtoint ptr %arrayidx.i739.i to i32
  call void @__asan_store2_noabort(i32 %450)
  store i16 0, ptr %arrayidx.i739.i, align 2
  %and.i740.i = and i32 %439, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i740.i)
  %cmp11.not.i.i = icmp eq i32 %and.i740.i, 0
  br i1 %cmp11.not.i.i, label %if.end24.critedge.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  %451 = ptrtoint ptr %447 to i32
  call void @__asan_load2_noabort(i32 %451)
  %452 = load i16, ptr %447, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %452)
  %tobool.not3.i.i.i = icmp eq i16 %452, 0
  br i1 %tobool.not3.i.i.i, label %if.then12.i.i.UniStrupr.exit.i.i_crit_edge, label %if.then12.i.i.while.body.i.i741.i_crit_edge

if.then12.i.i.while.body.i.i741.i_crit_edge:      ; preds = %if.then12.i.i
  br label %while.body.i.i741.i

if.then12.i.i.UniStrupr.exit.i.i_crit_edge:       ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrupr.exit.i.i

while.body.i.i741.i:                              ; preds = %UniToupper.exit.i.i.i.while.body.i.i741.i_crit_edge, %if.then12.i.i.while.body.i.i741.i_crit_edge
  %453 = phi i16 [ %466, %UniToupper.exit.i.i.i.while.body.i.i741.i_crit_edge ], [ %452, %if.then12.i.i.while.body.i.i741.i_crit_edge ]
  %up.04.i.i.i = phi ptr [ %incdec.ptr.i.i742.i, %UniToupper.exit.i.i.i.while.body.i.i741.i_crit_edge ], [ %447, %if.then12.i.i.while.body.i.i741.i_crit_edge ]
  %conv.i.i.i.i = zext i16 %453 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %453)
  %cmp.i.i.i.i = icmp ult i16 %453, 512
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %while.cond.preheader.i.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %while.body.i.i741.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @UniUpperRange to i32))
  %454 = load i16, ptr @UniUpperRange, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %454)
  %tobool.not40.i.i.i.i = icmp eq i16 %454, 0
  br i1 %tobool.not40.i.i.i.i, label %while.cond.preheader.i.i.i.i.UniToupper.exit.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge

while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  br label %while.body.i.i.i.i

while.cond.preheader.i.i.i.i.UniToupper.exit.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i741.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i.i = getelementptr [512 x i8], ptr @UniUpperTable, i32 0, i32 %conv.i.i.i.i
  br label %cleanup.sink.split.i.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end24.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge
  %455 = phi i16 [ %461, %if.end24.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %454, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %rp.041.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %if.end24.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ @UniUpperRange, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %455, i16 %453)
  %cmp8.i.i.i.i = icmp ugt i16 %455, %453
  br i1 %cmp8.i.i.i.i, label %while.body.i.i.i.i.UniToupper.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

while.body.i.i.i.i.UniToupper.exit.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i.i.i.i, i32 0, i32 1
  %456 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %end.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %457, i16 %453)
  %cmp13.not.i.i.i.i = icmp ult i16 %457, %453
  br i1 %cmp13.not.i.i.i.i, label %if.end24.i.i.i.i, label %if.then15.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.le.i.i.i.i = zext i16 %455 to i32
  %table.i.i.i.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i.i.i.i, i32 0, i32 2
  %458 = ptrtoint ptr %table.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %table.i.i.i.i, align 4
  %sub.i.i.i.i = sub nsw i32 %conv.i.i.i.i, %conv7.le.i.i.i.i
  %arrayidx20.i.i.i.i = getelementptr i8, ptr %459, i32 %sub.i.i.i.i
  br label %cleanup.sink.split.i.i.i.i

if.end24.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %incdec.ptr.i.i.i.i = getelementptr %struct.UNICASERANGE, ptr %rp.041.i.i.i.i, i32 1
  %460 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %460)
  %461 = load i16, ptr %incdec.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq i16 %461, 0
  br i1 %tobool.not.i.i.i.i, label %if.end24.i.i.i.i.UniToupper.exit.i.i.i_crit_edge, label %if.end24.i.i.i.i.while.body.i.i.i.i_crit_edge

if.end24.i.i.i.i.while.body.i.i.i.i_crit_edge:    ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i.i

if.end24.i.i.i.i.UniToupper.exit.i.i.i_crit_edge: ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit.i.i.i

cleanup.sink.split.i.i.i.i:                       ; preds = %if.then15.i.i.i.i, %if.then.i.i.i.i
  %arrayidx20.sink.i.i.i.i = phi ptr [ %arrayidx20.i.i.i.i, %if.then15.i.i.i.i ], [ %arrayidx.i.i.i.i, %if.then.i.i.i.i ]
  %462 = ptrtoint ptr %arrayidx20.sink.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx20.sink.i.i.i.i, align 1
  %conv21.i.i.i.i = sext i8 %463 to i16
  %add22.i.i.i.i = add i16 %453, %conv21.i.i.i.i
  br label %UniToupper.exit.i.i.i

UniToupper.exit.i.i.i:                            ; preds = %cleanup.sink.split.i.i.i.i, %if.end24.i.i.i.i.UniToupper.exit.i.i.i_crit_edge, %while.body.i.i.i.i.UniToupper.exit.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.UniToupper.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i16 [ %453, %while.cond.preheader.i.i.i.i.UniToupper.exit.i.i.i_crit_edge ], [ %add22.i.i.i.i, %cleanup.sink.split.i.i.i.i ], [ %453, %while.body.i.i.i.i.UniToupper.exit.i.i.i_crit_edge ], [ %453, %if.end24.i.i.i.i.UniToupper.exit.i.i.i_crit_edge ]
  %464 = ptrtoint ptr %up.04.i.i.i to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 %retval.0.i.i.i.i, ptr %up.04.i.i.i, align 2
  %incdec.ptr.i.i742.i = getelementptr i16, ptr %up.04.i.i.i, i32 1
  %465 = ptrtoint ptr %incdec.ptr.i.i742.i to i32
  call void @__asan_load2_noabort(i32 %465)
  %466 = load i16, ptr %incdec.ptr.i.i742.i, align 2
  %tobool.not.i.i743.i = icmp eq i16 %466, 0
  br i1 %tobool.not.i.i743.i, label %UniToupper.exit.i.i.i.UniStrupr.exit.i.i_crit_edge, label %UniToupper.exit.i.i.i.while.body.i.i741.i_crit_edge

UniToupper.exit.i.i.i.while.body.i.i741.i_crit_edge: ; preds = %UniToupper.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i741.i

UniToupper.exit.i.i.i.UniStrupr.exit.i.i_crit_edge: ; preds = %UniToupper.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrupr.exit.i.i

UniStrupr.exit.i.i:                               ; preds = %UniToupper.exit.i.i.i.UniStrupr.exit.i.i_crit_edge, %if.then12.i.i.UniStrupr.exit.i.i_crit_edge
  call fastcc void @dtGetKey(ptr noundef %426, i32 noundef 0, ptr noundef nonnull %rkey.i.i, i32 noundef %439) #8
  %467 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %393, align 4
  %469 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %rkey.i.i, align 4
  %arrayidx18.c.i.i = getelementptr i16, ptr %468, i32 %470
  %471 = ptrtoint ptr %arrayidx18.c.i.i to i32
  call void @__asan_store2_noabort(i32 %471)
  store i16 0, ptr %arrayidx18.c.i.i, align 2
  %472 = ptrtoint ptr %468 to i32
  call void @__asan_load2_noabort(i32 %472)
  %473 = load i16, ptr %468, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %473)
  %tobool.not3.i3.i.i = icmp eq i16 %473, 0
  br i1 %tobool.not3.i3.i.i, label %UniStrupr.exit.i.i.if.end24.i.i_crit_edge, label %UniStrupr.exit.i.i.while.body.i7.i.i_crit_edge

UniStrupr.exit.i.i.while.body.i7.i.i_crit_edge:   ; preds = %UniStrupr.exit.i.i
  br label %while.body.i7.i.i

UniStrupr.exit.i.i.if.end24.i.i_crit_edge:        ; preds = %UniStrupr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i.i

while.body.i7.i.i:                                ; preds = %UniToupper.exit.i33.i.i.while.body.i7.i.i_crit_edge, %UniStrupr.exit.i.i.while.body.i7.i.i_crit_edge
  %474 = phi i16 [ %487, %UniToupper.exit.i33.i.i.while.body.i7.i.i_crit_edge ], [ %473, %UniStrupr.exit.i.i.while.body.i7.i.i_crit_edge ]
  %up.04.i4.i.i = phi ptr [ %incdec.ptr.i31.i.i, %UniToupper.exit.i33.i.i.while.body.i7.i.i_crit_edge ], [ %468, %UniStrupr.exit.i.i.while.body.i7.i.i_crit_edge ]
  %conv.i.i5.i.i = zext i16 %474 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %474)
  %cmp.i.i6.i.i = icmp ult i16 %474, 512
  br i1 %cmp.i.i6.i.i, label %if.then.i.i11.i.i, label %while.cond.preheader.i.i9.i.i

while.cond.preheader.i.i9.i.i:                    ; preds = %while.body.i7.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @UniUpperRange to i32))
  %475 = load i16, ptr @UniUpperRange, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %475)
  %tobool.not40.i.i8.i.i = icmp eq i16 %475, 0
  br i1 %tobool.not40.i.i8.i.i, label %while.cond.preheader.i.i9.i.i.UniToupper.exit.i33.i.i_crit_edge, label %while.cond.preheader.i.i9.i.i.while.body.i.i14.i.i_crit_edge

while.cond.preheader.i.i9.i.i.while.body.i.i14.i.i_crit_edge: ; preds = %while.cond.preheader.i.i9.i.i
  br label %while.body.i.i14.i.i

while.cond.preheader.i.i9.i.i.UniToupper.exit.i33.i.i_crit_edge: ; preds = %while.cond.preheader.i.i9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit.i33.i.i

if.then.i.i11.i.i:                                ; preds = %while.body.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i10.i.i = getelementptr [512 x i8], ptr @UniUpperTable, i32 0, i32 %conv.i.i5.i.i
  br label %cleanup.sink.split.i.i29.i.i

while.body.i.i14.i.i:                             ; preds = %if.end24.i.i25.i.i.while.body.i.i14.i.i_crit_edge, %while.cond.preheader.i.i9.i.i.while.body.i.i14.i.i_crit_edge
  %476 = phi i16 [ %482, %if.end24.i.i25.i.i.while.body.i.i14.i.i_crit_edge ], [ %475, %while.cond.preheader.i.i9.i.i.while.body.i.i14.i.i_crit_edge ]
  %rp.041.i.i12.i.i = phi ptr [ %incdec.ptr.i.i23.i.i, %if.end24.i.i25.i.i.while.body.i.i14.i.i_crit_edge ], [ @UniUpperRange, %while.cond.preheader.i.i9.i.i.while.body.i.i14.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %476, i16 %474)
  %cmp8.i.i13.i.i = icmp ugt i16 %476, %474
  br i1 %cmp8.i.i13.i.i, label %while.body.i.i14.i.i.UniToupper.exit.i33.i.i_crit_edge, label %if.end.i.i17.i.i

while.body.i.i14.i.i.UniToupper.exit.i33.i.i_crit_edge: ; preds = %while.body.i.i14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit.i33.i.i

if.end.i.i17.i.i:                                 ; preds = %while.body.i.i14.i.i
  %end.i.i15.i.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i.i12.i.i, i32 0, i32 1
  %477 = ptrtoint ptr %end.i.i15.i.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %end.i.i15.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %478, i16 %474)
  %cmp13.not.i.i16.i.i = icmp ult i16 %478, %474
  br i1 %cmp13.not.i.i16.i.i, label %if.end24.i.i25.i.i, label %if.then15.i.i22.i.i

if.then15.i.i22.i.i:                              ; preds = %if.end.i.i17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.le.i.i18.i.i = zext i16 %476 to i32
  %table.i.i19.i.i = getelementptr inbounds %struct.UNICASERANGE, ptr %rp.041.i.i12.i.i, i32 0, i32 2
  %479 = ptrtoint ptr %table.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %table.i.i19.i.i, align 4
  %sub.i.i20.i.i = sub nsw i32 %conv.i.i5.i.i, %conv7.le.i.i18.i.i
  %arrayidx20.i.i21.i.i = getelementptr i8, ptr %480, i32 %sub.i.i20.i.i
  br label %cleanup.sink.split.i.i29.i.i

if.end24.i.i25.i.i:                               ; preds = %if.end.i.i17.i.i
  %incdec.ptr.i.i23.i.i = getelementptr %struct.UNICASERANGE, ptr %rp.041.i.i12.i.i, i32 1
  %481 = ptrtoint ptr %incdec.ptr.i.i23.i.i to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %incdec.ptr.i.i23.i.i, align 4
  %tobool.not.i.i24.i.i = icmp eq i16 %482, 0
  br i1 %tobool.not.i.i24.i.i, label %if.end24.i.i25.i.i.UniToupper.exit.i33.i.i_crit_edge, label %if.end24.i.i25.i.i.while.body.i.i14.i.i_crit_edge

if.end24.i.i25.i.i.while.body.i.i14.i.i_crit_edge: ; preds = %if.end24.i.i25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i14.i.i

if.end24.i.i25.i.i.UniToupper.exit.i33.i.i_crit_edge: ; preds = %if.end24.i.i25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniToupper.exit.i33.i.i

cleanup.sink.split.i.i29.i.i:                     ; preds = %if.then15.i.i22.i.i, %if.then.i.i11.i.i
  %arrayidx20.sink.i.i26.i.i = phi ptr [ %arrayidx20.i.i21.i.i, %if.then15.i.i22.i.i ], [ %arrayidx.i.i10.i.i, %if.then.i.i11.i.i ]
  %483 = ptrtoint ptr %arrayidx20.sink.i.i26.i.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %arrayidx20.sink.i.i26.i.i, align 1
  %conv21.i.i27.i.i = sext i8 %484 to i16
  %add22.i.i28.i.i = add i16 %474, %conv21.i.i27.i.i
  br label %UniToupper.exit.i33.i.i

UniToupper.exit.i33.i.i:                          ; preds = %cleanup.sink.split.i.i29.i.i, %if.end24.i.i25.i.i.UniToupper.exit.i33.i.i_crit_edge, %while.body.i.i14.i.i.UniToupper.exit.i33.i.i_crit_edge, %while.cond.preheader.i.i9.i.i.UniToupper.exit.i33.i.i_crit_edge
  %retval.0.i.i30.i.i = phi i16 [ %474, %while.cond.preheader.i.i9.i.i.UniToupper.exit.i33.i.i_crit_edge ], [ %add22.i.i28.i.i, %cleanup.sink.split.i.i29.i.i ], [ %474, %while.body.i.i14.i.i.UniToupper.exit.i33.i.i_crit_edge ], [ %474, %if.end24.i.i25.i.i.UniToupper.exit.i33.i.i_crit_edge ]
  %485 = ptrtoint ptr %up.04.i4.i.i to i32
  call void @__asan_store2_noabort(i32 %485)
  store i16 %retval.0.i.i30.i.i, ptr %up.04.i4.i.i, align 2
  %incdec.ptr.i31.i.i = getelementptr i16, ptr %up.04.i4.i.i, i32 1
  %486 = ptrtoint ptr %incdec.ptr.i31.i.i to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %incdec.ptr.i31.i.i, align 2
  %tobool.not.i32.i.i = icmp eq i16 %487, 0
  br i1 %tobool.not.i32.i.i, label %UniToupper.exit.i33.i.i.if.end24.i.i_crit_edge, label %UniToupper.exit.i33.i.i.while.body.i7.i.i_crit_edge

UniToupper.exit.i33.i.i.while.body.i7.i.i_crit_edge: ; preds = %UniToupper.exit.i33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i7.i.i

UniToupper.exit.i33.i.i.if.end24.i.i_crit_edge:   ; preds = %UniToupper.exit.i33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i.i

if.end24.critedge.i.i:                            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @dtGetKey(ptr noundef %426, i32 noundef 0, ptr noundef nonnull %rkey.i.i, i32 noundef %439) #8
  %488 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %393, align 4
  %490 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %rkey.i.i, align 4
  %arrayidx18.c1.i.i = getelementptr i16, ptr %489, i32 %491
  %492 = ptrtoint ptr %arrayidx18.c1.i.i to i32
  call void @__asan_store2_noabort(i32 %492)
  store i16 0, ptr %arrayidx18.c1.i.i, align 2
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.end24.critedge.i.i, %UniToupper.exit.i33.i.i.if.end24.i.i_crit_edge, %UniStrupr.exit.i.i.if.end24.i.i_crit_edge
  %493 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %name.i, align 4
  %495 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %rkey.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %449, i32 %496)
  %cmp28.i.i = icmp slt i32 %449, %496
  %497 = call i32 @llvm.smin.i32(i32 %449, i32 %496) #8
  %498 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %393, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %497)
  %tobool.not42.i.i = icmp eq i32 %497, 0
  br i1 %tobool.not42.i.i, label %if.end24.i.i.for.end.i749.i_crit_edge, label %if.end24.i.i.for.body.i744.i_crit_edge

if.end24.i.i.for.body.i744.i_crit_edge:           ; preds = %if.end24.i.i
  br label %for.body.i744.i

if.end24.i.i.for.end.i749.i_crit_edge:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i749.i

for.body.i744.i:                                  ; preds = %for.inc.i.i.for.body.i744.i_crit_edge, %if.end24.i.i.for.body.i744.i_crit_edge
  %kname.047.i.i = phi ptr [ %incdec.ptr38.i.i, %for.inc.i.i.for.body.i744.i_crit_edge ], [ %494, %if.end24.i.i.for.body.i744.i_crit_edge ]
  %pr.046.i.i = phi ptr [ %incdec.ptr37.i.i, %for.inc.i.i.for.body.i744.i_crit_edge ], [ %499, %if.end24.i.i.for.body.i744.i_crit_edge ]
  %pl.045.i.i = phi ptr [ %incdec.ptr.i746.i, %for.inc.i.i.for.body.i744.i_crit_edge ], [ %447, %if.end24.i.i.for.body.i744.i_crit_edge ]
  %namlen.044.i.i = phi i32 [ %dec.i.i, %for.inc.i.i.for.body.i744.i_crit_edge ], [ %497, %if.end24.i.i.for.body.i744.i_crit_edge ]
  %klen.043.i.i = phi i32 [ %inc.i747.i, %for.inc.i.i.for.body.i744.i_crit_edge ], [ 0, %if.end24.i.i.for.body.i744.i_crit_edge ]
  %500 = ptrtoint ptr %pr.046.i.i to i32
  call void @__asan_load2_noabort(i32 %500)
  %501 = load i16, ptr %pr.046.i.i, align 2
  %502 = ptrtoint ptr %kname.047.i.i to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 %501, ptr %kname.047.i.i, align 2
  %503 = ptrtoint ptr %pl.045.i.i to i32
  call void @__asan_load2_noabort(i32 %503)
  %504 = load i16, ptr %pl.045.i.i, align 2
  %505 = load i16, ptr %pr.046.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %504, i16 %505)
  %cmp32.not.i.i = icmp eq i16 %504, %505
  br i1 %cmp32.not.i.i, label %for.inc.i.i, label %if.then34.i.i

if.then34.i.i:                                    ; preds = %for.body.i744.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i745.i = add i32 %klen.043.i.i, 1
  br label %ciGetLeafPrefixKey.exit.i

for.inc.i.i:                                      ; preds = %for.body.i744.i
  %incdec.ptr.i746.i = getelementptr i16, ptr %pl.045.i.i, i32 1
  %incdec.ptr37.i.i = getelementptr i16, ptr %pr.046.i.i, i32 1
  %dec.i.i = add i32 %namlen.044.i.i, -1
  %inc.i747.i = add nuw i32 %klen.043.i.i, 1
  %incdec.ptr38.i.i = getelementptr i16, ptr %kname.047.i.i, i32 1
  %tobool.not.i748.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i748.i, label %for.inc.i.i.for.end.i749.i_crit_edge, label %for.inc.i.i.for.body.i744.i_crit_edge

for.inc.i.i.for.body.i744.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i744.i

for.inc.i.i.for.end.i749.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i749.i

for.end.i749.i:                                   ; preds = %for.inc.i.i.for.end.i749.i_crit_edge, %if.end24.i.i.for.end.i749.i_crit_edge
  %pr.0.lcssa.i.i = phi ptr [ %499, %if.end24.i.i.for.end.i749.i_crit_edge ], [ %incdec.ptr37.i.i, %for.inc.i.i.for.end.i749.i_crit_edge ]
  %kname.0.lcssa.i.i = phi ptr [ %494, %if.end24.i.i.for.end.i749.i_crit_edge ], [ %incdec.ptr38.i.i, %for.inc.i.i.for.end.i749.i_crit_edge ]
  br i1 %cmp28.i.i, label %if.then43.i.i, label %for.end.i749.i.ciGetLeafPrefixKey.exit.i_crit_edge

for.end.i749.i.ciGetLeafPrefixKey.exit.i_crit_edge: ; preds = %for.end.i749.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ciGetLeafPrefixKey.exit.i

if.then43.i.i:                                    ; preds = %for.end.i749.i
  call void @__sanitizer_cov_trace_pc() #10
  %506 = ptrtoint ptr %pr.0.lcssa.i.i to i32
  call void @__asan_load2_noabort(i32 %506)
  %507 = load i16, ptr %pr.0.lcssa.i.i, align 2
  %508 = ptrtoint ptr %kname.0.lcssa.i.i to i32
  call void @__asan_store2_noabort(i32 %508)
  store i16 %507, ptr %kname.0.lcssa.i.i, align 2
  %add44.i.i = add i32 %497, 1
  br label %ciGetLeafPrefixKey.exit.i

ciGetLeafPrefixKey.exit.i:                        ; preds = %if.then43.i.i, %for.end.i749.i.ciGetLeafPrefixKey.exit.i_crit_edge, %if.then34.i.i
  %add44.sink.i.i = phi i32 [ %add44.i.i, %if.then43.i.i ], [ %add.i745.i, %if.then34.i.i ], [ %497, %for.end.i749.i.ciGetLeafPrefixKey.exit.i_crit_edge ]
  %509 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %add44.sink.i.i, ptr %key.i, align 8
  call void @kfree(ptr noundef %447) #8
  call void @kfree(ptr noundef %499) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rkey.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lkey.i.i) #8
  br label %if.end343.i

if.then308.i:                                     ; preds = %if.then6.i.i, %if.then301.i.if.then308.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rkey.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lkey.i.i) #8
  %510 = ptrtoint ptr %smp.0.i to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %smp.0.i, align 8
  %512 = and i16 %511, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %512)
  %cmp312.i = icmp eq i16 %512, 0
  br i1 %cmp312.i, label %if.then308.i.if.end315.i_crit_edge, label %if.then314.i

if.then308.i.if.end315.i_crit_edge:               ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end315.i

if.then314.i:                                     ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %smp.0.i) #8
  br label %if.end315.i

if.end315.i:                                      ; preds = %if.then314.i, %if.then308.i.if.end315.i_crit_edge
  %513 = ptrtoint ptr %rmp.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %rmp.i, align 4
  %515 = ptrtoint ptr %514 to i32
  call void @__asan_load2_noabort(i32 %515)
  %516 = load i16, ptr %514, align 8
  %517 = and i16 %516, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %517)
  %cmp319.i = icmp eq i16 %517, 0
  br i1 %cmp319.i, label %if.end315.i.if.end322.i_crit_edge, label %if.then321.i

if.end315.i.if.end322.i_crit_edge:                ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end322.i

if.then321.i:                                     ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %514) #8
  br label %if.end322.i

if.end322.i:                                      ; preds = %if.then321.i, %if.end315.i.if.end322.i_crit_edge
  %518 = ptrtoint ptr %smp.1.ph866.i to i32
  call void @__asan_load2_noabort(i32 %518)
  %519 = load i16, ptr %smp.1.ph866.i, align 8
  %520 = and i16 %519, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %520)
  %cmp326.i = icmp eq i16 %520, 0
  br i1 %cmp326.i, label %if.end322.i.splitOut.i_crit_edge, label %if.end322.i.splitOut.sink.split.i_crit_edge

if.end322.i.splitOut.sink.split.i_crit_edge:      ; preds = %if.end322.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.sink.split.i

if.end322.i.splitOut.i_crit_edge:                 ; preds = %if.end322.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.i

if.else331.i:                                     ; preds = %lor.lhs.false295.i
  %521 = ptrtoint ptr %mntflag349.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %mntflag349.i, align 4
  call fastcc void @dtGetKey(ptr noundef %426, i32 noundef 0, ptr noundef nonnull %key.i, i32 noundef %522) #8
  %523 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %name.i, align 4
  %525 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %key.i, align 8
  %arrayidx334.i = getelementptr i16, ptr %524, i32 %526
  %527 = ptrtoint ptr %arrayidx334.i to i32
  call void @__asan_store2_noabort(i32 %527)
  store i16 0, ptr %arrayidx334.i, align 2
  %528 = ptrtoint ptr %mntflag349.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %mntflag349.i, align 4
  %and336.i = and i32 %529, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336.i)
  %cmp337.not.i = icmp eq i32 %and336.i, 0
  br i1 %cmp337.not.i, label %if.else331.i.if.end343.i_crit_edge, label %if.then339.i

if.else331.i.if.end343.i_crit_edge:               ; preds = %if.else331.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end343.i

if.then339.i:                                     ; preds = %if.else331.i
  call void @__sanitizer_cov_trace_pc() #10
  %530 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %name.i, align 4
  call fastcc void @UniStrupr(ptr noundef %531) #8
  br label %if.end343.i

if.end343.i:                                      ; preds = %if.then339.i, %if.else331.i.if.end343.i_crit_edge, %ciGetLeafPrefixKey.exit.i
  %532 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %key.i, align 8
  %sub347.i = add i32 %533, 18
  %div.i = sdiv i32 %sub347.i, 15
  br label %sw.epilog.i

sw.bb348.i:                                       ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #10
  %534 = ptrtoint ptr %mntflag349.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %mntflag349.i, align 4
  call fastcc void @dtGetKey(ptr noundef %426, i32 noundef 0, ptr noundef nonnull %key.i, i32 noundef %535) #8
  %536 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %key.i, align 8
  %sub353.i = add i32 %537, 18
  %div354.i = sdiv i32 %sub353.i, 15
  br label %sw.epilog.i

do.body355.i:                                     ; preds = %if.end282.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %538 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %538)
  %cmp356.i = icmp sgt i32 %538, 0
  br i1 %cmp356.i, label %do.end361.i, label %do.body355.i.sw.epilog.i_crit_edge

do.body355.i.sw.epilog.i_crit_edge:               ; preds = %do.body355.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end361.i:                                      ; preds = %do.body355.i
  call void @__sanitizer_cov_trace_pc() #10
  %call363.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end361.i, %do.body355.i.sw.epilog.i_crit_edge, %sw.bb348.i, %if.end343.i
  %n.3.i = phi i32 [ %n.2.i, %do.end361.i ], [ %n.2.i, %do.body355.i.sw.epilog.i_crit_edge ], [ %div354.i, %sw.bb348.i ], [ %div.i, %if.end343.i ]
  %539 = ptrtoint ptr %smp.0.i to i32
  call void @__asan_load2_noabort(i32 %539)
  %540 = load i16, ptr %smp.0.i, align 8
  %541 = and i16 %540, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %541)
  %cmp370.i = icmp eq i16 %541, 0
  br i1 %cmp370.i, label %sw.epilog.i.if.end373.i_crit_edge, label %if.then372.i

sw.epilog.i.if.end373.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end373.i

if.then372.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %smp.0.i) #8
  br label %if.end373.i

if.end373.i:                                      ; preds = %if.then372.i, %sw.epilog.i.if.end373.i_crit_edge
  %542 = ptrtoint ptr %rpxd.i to i32
  call void @__asan_load8_noabort(i32 %542)
  %543 = load i64, ptr %rpxd.i, align 8
  %544 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %544)
  store i64 %543, ptr %data, align 8
  %freecnt374.i = getelementptr inbounds %struct.anon.71, ptr %sp.1.ph860.i, i32 0, i32 4
  %545 = ptrtoint ptr %freecnt374.i to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %freecnt374.i, align 2
  %conv375.i = sext i8 %546 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %n.3.i, i32 %conv375.i)
  %cmp376.i = icmp sgt i32 %n.3.i, %conv375.i
  br i1 %cmp376.i, label %if.then378.i, label %if.else412.i

if.then378.i:                                     ; preds = %if.end373.i
  %547 = ptrtoint ptr %split to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %smp.1.ph866.i, ptr %split, align 4
  %conv380.i = trunc i32 %add284.i to i16
  %548 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %548)
  store i16 %conv380.i, ptr %0, align 4
  %conv382.i = trunc i32 %n.3.i to i16
  %549 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %549)
  store i16 %conv382.i, ptr %1, align 2
  %550 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %550)
  store ptr %key.i, ptr %2, align 4
  %551 = ptrtoint ptr %rmp.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %rmp.i, align 4
  %553 = ptrtoint ptr %552 to i32
  call void @__asan_load2_noabort(i32 %553)
  %554 = load i16, ptr %552, align 8
  %555 = and i16 %554, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %555)
  %cmp388.i = icmp eq i16 %555, 0
  br i1 %cmp388.i, label %if.then378.i.if.end391.i_crit_edge, label %if.then390.i

if.then378.i.if.end391.i_crit_edge:               ; preds = %if.then378.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end391.i

if.then390.i:                                     ; preds = %if.then378.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %552) #8
  br label %if.end391.i

if.end391.i:                                      ; preds = %if.then390.i, %if.then378.i.if.end391.i_crit_edge
  %flag392.i = getelementptr inbounds %struct.anon.71, ptr %sp.1.ph860.i, i32 0, i32 2
  %556 = ptrtoint ptr %flag392.i to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %flag392.i, align 8
  %558 = and i8 %557, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %558)
  %tobool395.not.i = icmp eq i8 %558, 0
  br i1 %tobool395.not.i, label %cond.false398.i, label %cond.true396.i

cond.true396.i:                                   ; preds = %if.end391.i
  call void @__sanitizer_cov_trace_pc() #10
  %call397.i = call fastcc i32 @dtSplitRoot(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %split, ptr noundef nonnull %rmp.i) #8
  br label %cond.end400.i

cond.false398.i:                                  ; preds = %if.end391.i
  call void @__sanitizer_cov_trace_pc() #10
  %call399.i = call fastcc i32 @dtSplitPage(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %split, ptr noundef nonnull %rmp.i, ptr noundef nonnull %rp.i, ptr noundef nonnull %rpxd.i) #8
  br label %cond.end400.i

cond.end400.i:                                    ; preds = %cond.false398.i, %cond.true396.i
  %cond401.i = phi i32 [ %call397.i, %cond.true396.i ], [ %call399.i, %cond.false398.i ]
  %tobool402.not.i = icmp eq i32 %cond401.i, 0
  br i1 %tobool402.not.i, label %cond.end400.i.while.cond.i_crit_edge, label %if.then403.i

cond.end400.i.while.cond.i_crit_edge:             ; preds = %cond.end400.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.then403.i:                                     ; preds = %cond.end400.i
  %559 = ptrtoint ptr %smp.1.ph866.i to i32
  call void @__asan_load2_noabort(i32 %559)
  %560 = load i16, ptr %smp.1.ph866.i, align 8
  %561 = and i16 %560, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %561)
  %cmp407.i = icmp eq i16 %561, 0
  br i1 %cmp407.i, label %if.then403.i.splitOut.i_crit_edge, label %if.then403.i.splitOut.sink.split.i_crit_edge

if.then403.i.splitOut.sink.split.i_crit_edge:     ; preds = %if.then403.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.sink.split.i

if.then403.i.splitOut.i_crit_edge:                ; preds = %if.then403.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.i

if.else412.i:                                     ; preds = %if.end373.i
  %562 = ptrtoint ptr %smp.1.ph866.i to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %smp.1.ph866.i, align 8
  %564 = and i16 %563, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %564)
  %cmp416.i = icmp eq i16 %564, 0
  br i1 %cmp416.i, label %if.then418.i, label %if.else419.i

if.then418.i:                                     ; preds = %if.else412.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end421.i

if.else419.i:                                     ; preds = %if.else412.i
  call void @__sanitizer_cov_trace_pc() #10
  %flag420.i = getelementptr inbounds %struct.metapage, ptr %smp.1.ph866.i, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag420.i) #8
  br label %if.end421.i

if.end421.i:                                      ; preds = %if.else419.i, %if.then418.i
  %call422.i = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %smp.1.ph866.i, i32 noundef 8193) #8
  %lock.i = getelementptr inbounds %struct.tlock, ptr %call422.i, i32 0, i32 6
  %565 = ptrtoint ptr %dtlck.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store ptr %lock.i, ptr %dtlck.i, align 4
  %index424.i = getelementptr inbounds %struct.linelock, ptr %lock.i, i32 0, i32 2
  %566 = ptrtoint ptr %index424.i to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %index424.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %567)
  %cmp426.i = icmp eq i8 %567, 0
  br i1 %cmp426.i, label %do.end442.i, label %do.end431.i

do.end431.i:                                      ; preds = %if.end421.i
  call void @__sanitizer_cov_trace_pc() #10
  %call433.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 1255, ptr noundef nonnull @.str.10) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1255, 0\0A.popsection", ""() #8, !srcloc !229
  unreachable

do.end442.i:                                      ; preds = %if.end421.i
  %lv443.i = getelementptr inbounds %struct.tlock, ptr %call422.i, i32 0, i32 6, i32 4
  %568 = ptrtoint ptr %lv443.i to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 0, ptr %lv443.i, align 1
  %length.i = getelementptr inbounds %struct.lv, ptr %lv443.i, i32 0, i32 1
  %569 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 1, ptr %length.i, align 1
  %570 = ptrtoint ptr %index424.i to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 1, ptr %index424.i, align 1
  %flag447.i = getelementptr inbounds %struct.anon.71, ptr %sp.1.ph860.i, i32 0, i32 2
  %571 = ptrtoint ptr %flag447.i to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %flag447.i, align 8
  %573 = and i8 %572, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %573)
  %tobool450.not.i = icmp eq i8 %573, 0
  br i1 %tobool450.not.i, label %if.then451.i, label %do.end442.i.if.end468.i_crit_edge

do.end442.i.if.end468.i_crit_edge:                ; preds = %do.end442.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end468.i

if.then451.i:                                     ; preds = %do.end442.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr452.i = getelementptr %struct.tlock, ptr %call422.i, i32 0, i32 6, i32 5
  %shr453.i = ashr i32 %add284.i, 5
  %stblindex.i = getelementptr inbounds %struct.anon.71, ptr %sp.1.ph860.i, i32 0, i32 7
  %574 = ptrtoint ptr %stblindex.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %stblindex.i, align 1
  %576 = trunc i32 %shr453.i to i8
  %conv456.i = add i8 %575, %576
  %577 = ptrtoint ptr %incdec.ptr452.i to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 %conv456.i, ptr %incdec.ptr452.i, align 1
  %578 = ptrtoint ptr %nextindex870.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %nextindex870.i, align 1
  %conv459.i = zext i8 %579 to i32
  %sub460.i = add nuw nsw i32 %conv459.i, 8191
  %580 = lshr i32 %sub460.i, 5
  %sub462.i = sub nsw i32 %580, %shr453.i
  %581 = trunc i32 %sub462.i to i8
  %conv464.i = add i8 %581, 1
  %length465.i = getelementptr inbounds %struct.lv, ptr %incdec.ptr452.i, i32 0, i32 1
  %582 = ptrtoint ptr %length465.i to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 %conv464.i, ptr %length465.i, align 1
  %583 = ptrtoint ptr %index424.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 2, ptr %index424.i, align 1
  br label %if.end468.i

if.end468.i:                                      ; preds = %if.then451.i, %do.end442.i.if.end468.i_crit_edge
  call fastcc void @dtInsertEntry(ptr noundef %sp.1.ph860.i, i32 noundef %add284.i, ptr noundef nonnull %key.i, ptr noundef nonnull %data, ptr noundef nonnull %dtlck.i) #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end468.i, %cond.end204.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %smp.3.i = phi ptr [ %smp.1.ph866.i, %if.end468.i ], [ %smp.0.i, %while.cond.i.while.end.i_crit_edge ], [ %smp.0.i, %cond.end204.i.while.end.i_crit_edge ]
  %584 = ptrtoint ptr %smp.3.i to i32
  call void @__asan_load2_noabort(i32 %584)
  %585 = load i16, ptr %smp.3.i, align 8
  %586 = and i16 %585, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %586)
  %cmp473.i = icmp eq i16 %586, 0
  br i1 %cmp473.i, label %while.end.i.if.end476.i_crit_edge, label %if.then475.i

while.end.i.if.end476.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end476.i

if.then475.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %smp.3.i) #8
  br label %if.end476.i

if.end476.i:                                      ; preds = %if.then475.i, %while.end.i.if.end476.i_crit_edge
  %587 = ptrtoint ptr %rmp.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %rmp.i, align 4
  %589 = ptrtoint ptr %588 to i32
  call void @__asan_load2_noabort(i32 %589)
  %590 = load i16, ptr %588, align 8
  %591 = and i16 %590, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %591)
  %cmp480.i = icmp eq i16 %591, 0
  br i1 %cmp480.i, label %if.end476.i.splitOut.i_crit_edge, label %if.end476.i.splitOut.sink.split.i_crit_edge

if.end476.i.splitOut.sink.split.i_crit_edge:      ; preds = %if.end476.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.sink.split.i

if.end476.i.splitOut.i_crit_edge:                 ; preds = %if.end476.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %splitOut.i

splitOut.sink.split.i:                            ; preds = %if.end476.i.splitOut.sink.split.i_crit_edge, %if.then403.i.splitOut.sink.split.i_crit_edge, %if.end322.i.splitOut.sink.split.i_crit_edge, %if.end274.i.splitOut.sink.split.i_crit_edge, %if.then179.i.splitOut.sink.split.i_crit_edge, %if.end168.i.splitOut.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %14, %if.end168.i.splitOut.sink.split.i_crit_edge ], [ %14, %if.then179.i.splitOut.sink.split.i_crit_edge ], [ %419, %if.end274.i.splitOut.sink.split.i_crit_edge ], [ %smp.1.ph866.i, %if.end322.i.splitOut.sink.split.i_crit_edge ], [ %smp.1.ph866.i, %if.then403.i.splitOut.sink.split.i_crit_edge ], [ %588, %if.end476.i.splitOut.sink.split.i_crit_edge ]
  %rc.7.ph.i = phi i32 [ %call162.i, %if.end168.i.splitOut.sink.split.i_crit_edge ], [ %call177.i, %if.then179.i.splitOut.sink.split.i_crit_edge ], [ -5, %if.end274.i.splitOut.sink.split.i_crit_edge ], [ -12, %if.end322.i.splitOut.sink.split.i_crit_edge ], [ %cond401.i, %if.then403.i.splitOut.sink.split.i_crit_edge ], [ 0, %if.end476.i.splitOut.sink.split.i_crit_edge ]
  call void @release_metapage(ptr noundef %.sink.i) #8
  br label %splitOut.i

splitOut.i:                                       ; preds = %splitOut.sink.split.i, %if.end476.i.splitOut.i_crit_edge, %if.then403.i.splitOut.i_crit_edge, %if.end322.i.splitOut.i_crit_edge, %if.end274.i.splitOut.i_crit_edge, %if.then179.i.splitOut.i_crit_edge, %if.end168.i.splitOut.i_crit_edge
  %rc.7.i = phi i32 [ %call162.i, %if.end168.i.splitOut.i_crit_edge ], [ %call177.i, %if.then179.i.splitOut.i_crit_edge ], [ -5, %if.end274.i.splitOut.i_crit_edge ], [ %cond401.i, %if.then403.i.splitOut.i_crit_edge ], [ 0, %if.end476.i.splitOut.i_crit_edge ], [ -12, %if.end322.i.splitOut.i_crit_edge ], [ %rc.7.ph.i, %splitOut.sink.split.i ]
  %592 = ptrtoint ptr %npxd155.i to i32
  call void @__asan_load2_noabort(i32 %592)
  %593 = load i16, ptr %npxd155.i, align 2
  %594 = ptrtoint ptr %pxdlist.i to i32
  call void @__asan_load2_noabort(i32 %594)
  %595 = load i16, ptr %pxdlist.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %593, i16 %595)
  %cmp491825.i = icmp slt i16 %593, %595
  br i1 %cmp491825.i, label %for.body493.preheader.i, label %splitOut.i.freeKeyName.i_crit_edge

splitOut.i.freeKeyName.i_crit_edge:               ; preds = %splitOut.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %freeKeyName.i

for.body493.preheader.i:                          ; preds = %splitOut.i
  %conv485.i = sext i16 %593 to i32
  %arrayidx487.i = getelementptr %struct.pxdlist, ptr %pxdlist.i, i32 0, i32 2, i32 %conv485.i
  br label %for.body493.i

for.body493.i:                                    ; preds = %for.body493.i.for.body493.i_crit_edge, %for.body493.preheader.i
  %n.4827.i = phi i32 [ %inc499.i, %for.body493.i.for.body493.i_crit_edge ], [ %conv485.i, %for.body493.preheader.i ]
  %pxd.1826.i = phi ptr [ %incdec.ptr500.i, %for.body493.i.for.body493.i_crit_edge ], [ %arrayidx487.i, %for.body493.preheader.i ]
  %596 = ptrtoint ptr %pxd.1826.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %pxd.1826.i, align 4
  %598 = shl i32 %597, 24
  %conv.i751.i = zext i32 %598 to i64
  %shl.i752.i = shl nuw nsw i64 %conv.i751.i, 8
  %addr2.i753.i = getelementptr inbounds %struct.pxd_t, ptr %pxd.1826.i, i32 0, i32 1
  %599 = ptrtoint ptr %addr2.i753.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %addr2.i753.i, align 4
  %601 = call i32 @llvm.bswap.i32(i32 %600) #8
  %conv1.i754.i = zext i32 %601 to i64
  %add.i755.i = or i64 %shl.i752.i, %conv1.i754.i
  %602 = and i32 %597, -256
  %603 = call i32 @llvm.bswap.i32(i32 %602) #8
  %conv496.i = zext i32 %603 to i64
  %call497.i = call i32 @dbFree(ptr noundef %ip, i64 noundef %add.i755.i, i64 noundef %conv496.i) #8
  %inc499.i = add nsw i32 %n.4827.i, 1
  %incdec.ptr500.i = getelementptr %struct.pxd_t, ptr %pxd.1826.i, i32 1
  %604 = ptrtoint ptr %pxdlist.i to i32
  call void @__asan_load2_noabort(i32 %604)
  %605 = load i16, ptr %pxdlist.i, align 4
  %conv490.i = sext i16 %605 to i32
  %cmp491.i = icmp slt i32 %inc499.i, %conv490.i
  br i1 %cmp491.i, label %for.body493.i.for.body493.i_crit_edge, label %for.body493.i.freeKeyName.i_crit_edge

for.body493.i.freeKeyName.i_crit_edge:            ; preds = %for.body493.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %freeKeyName.i

for.body493.i.for.body493.i_crit_edge:            ; preds = %for.body493.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body493.i

land.lhs.true504.thread.i:                        ; preds = %if.then37.i, %if.then31.i.land.lhs.true504.thread.i_crit_edge
  %606 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %name.i, align 4
  call void @kfree(ptr noundef %607) #8
  br label %dtSplitUp.exit

freeKeyName.i:                                    ; preds = %for.body493.i.freeKeyName.i_crit_edge, %splitOut.i.freeKeyName.i_crit_edge, %if.then152.i, %extendOut.i.freeKeyName.i_crit_edge, %if.then66.i, %if.end61.i.freeKeyName.i_crit_edge
  %quota_allocation.1.i = phi i32 [ 0, %if.end61.i.freeKeyName.i_crit_edge ], [ 0, %if.then66.i ], [ %quota_allocation.0.i, %extendOut.i.freeKeyName.i_crit_edge ], [ %quota_allocation.0.i, %if.then152.i ], [ 0, %splitOut.i.freeKeyName.i_crit_edge ], [ 0, %for.body493.i.freeKeyName.i_crit_edge ]
  %rc.8.i = phi i32 [ %call42.i, %if.end61.i.freeKeyName.i_crit_edge ], [ %call42.i, %if.then66.i ], [ %rc.0.i, %extendOut.i.freeKeyName.i_crit_edge ], [ %rc.0.i, %if.then152.i ], [ %rc.7.i, %splitOut.i.freeKeyName.i_crit_edge ], [ %rc.7.i, %for.body493.i.freeKeyName.i_crit_edge ]
  %608 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %name.i, align 4
  call void @kfree(ptr noundef %609) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.8.i)
  %tobool503.not.i = icmp eq i32 %rc.8.i, 0
  br i1 %tobool503.not.i, label %freeKeyName.i.dtSplitUp.exit_crit_edge, label %land.lhs.true504.i

freeKeyName.i.dtSplitUp.exit_crit_edge:           ; preds = %freeKeyName.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtSplitUp.exit

land.lhs.true504.i:                               ; preds = %freeKeyName.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota_allocation.1.i)
  %tobool505.not.i = icmp eq i32 %quota_allocation.1.i, 0
  br i1 %tobool505.not.i, label %land.lhs.true504.i.dtSplitUp.exit_crit_edge, label %if.then506.i

land.lhs.true504.i.dtSplitUp.exit_crit_edge:      ; preds = %land.lhs.true504.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtSplitUp.exit

if.then506.i:                                     ; preds = %land.lhs.true504.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv507.i = sext i32 %quota_allocation.1.i to i64
  %i_blkbits.i756.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %610 = ptrtoint ptr %i_blkbits.i756.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %i_blkbits.i756.i, align 2
  %sh_prom.i757.i = zext i8 %611 to i64
  %shl.i758.i = shl i64 %conv507.i, %sh_prom.i757.i
  call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i758.i, i32 noundef 0) #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #8
  br label %dtSplitUp.exit

dtSplitUp.exit:                                   ; preds = %if.then506.i, %land.lhs.true504.i.dtSplitUp.exit_crit_edge, %freeKeyName.i.dtSplitUp.exit_crit_edge, %land.lhs.true504.thread.i, %if.then12.i, %if.then.i.dtSplitUp.exit_crit_edge
  %rc.9.i = phi i32 [ %rc.8.i, %if.then506.i ], [ %rc.8.i, %land.lhs.true504.i.dtSplitUp.exit_crit_edge ], [ 0, %freeKeyName.i.dtSplitUp.exit_crit_edge ], [ -12, %if.then12.i ], [ -12, %if.then.i.dtSplitUp.exit_crit_edge ], [ %call29.i, %land.lhs.true504.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtlck.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %pxdlist.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nxaddr.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rpxd.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmp.i) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %612 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %612)
  %613 = load i16, ptr %14, align 8
  %614 = and i16 %613, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %614)
  %cmp45 = icmp eq i16 %614, 0
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end49

if.else48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %flag = getelementptr inbounds %struct.metapage, ptr %14, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #8
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.then47
  %call50 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %14, i32 noundef 8193) #8
  %lock = getelementptr inbounds %struct.tlock, ptr %call50, i32 0, i32 6
  %615 = ptrtoint ptr %dtlck to i32
  call void @__asan_store4_noabort(i32 %615)
  store ptr %lock, ptr %dtlck, align 4
  %index51 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %616 = ptrtoint ptr %index51 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %index51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %617)
  %cmp53 = icmp eq i8 %617, 0
  br i1 %cmp53, label %do.end66, label %do.end

do.end:                                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 878, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 878, 0\0A.popsection", ""() #8, !srcloc !230
  unreachable

do.end66:                                         ; preds = %if.end49
  %lv67 = getelementptr inbounds %struct.tlock, ptr %call50, i32 0, i32 6, i32 4
  %618 = ptrtoint ptr %lv67 to i32
  call void @__asan_store1_noabort(i32 %618)
  store i8 0, ptr %lv67, align 1
  %length = getelementptr inbounds %struct.lv, ptr %lv67, i32 0, i32 1
  %619 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 1, ptr %length, align 1
  %620 = ptrtoint ptr %index51 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 1, ptr %index51, align 1
  call fastcc void @dtInsertEntry(ptr noundef %p.0, i32 noundef %conv, ptr noundef %name, ptr noundef nonnull %data, ptr noundef nonnull %dtlck)
  %flag69 = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 2
  %621 = ptrtoint ptr %flag69 to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %flag69, align 8
  %623 = and i8 %622, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %623)
  %tobool72.not = icmp eq i8 %623, 0
  br i1 %tobool72.not, label %if.then73, label %do.end66.if.end98_crit_edge

do.end66.if.end98_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then73:                                        ; preds = %do.end66
  %624 = ptrtoint ptr %dtlck to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %dtlck, align 4
  %index74 = getelementptr inbounds %struct.linelock, ptr %625, i32 0, i32 2
  %626 = ptrtoint ptr %index74 to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %index74, align 1
  %maxcnt = getelementptr inbounds %struct.linelock, ptr %625, i32 0, i32 1
  %628 = ptrtoint ptr %maxcnt to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %maxcnt, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %627, i8 %629)
  %cmp77.not = icmp slt i8 %627, %629
  br i1 %cmp77.not, label %if.then73.if.end81_crit_edge, label %if.then79

if.then73.if.end81_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then79:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = tail call ptr @txLinelock(ptr noundef %625) #8
  %630 = ptrtoint ptr %dtlck to i32
  call void @__asan_store4_noabort(i32 %630)
  store ptr %call80, ptr %dtlck, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.then73.if.end81_crit_edge
  %631 = ptrtoint ptr %dtlck to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %dtlck, align 4
  %index83 = getelementptr inbounds %struct.linelock, ptr %632, i32 0, i32 2
  %633 = ptrtoint ptr %index83 to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %index83, align 1
  %idxprom = sext i8 %634 to i32
  %arrayidx84 = getelementptr %struct.linelock, ptr %632, i32 0, i32 6, i32 %idxprom
  %shr = ashr i32 %conv, 5
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 7
  %635 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %stblindex, align 1
  %637 = trunc i32 %shr to i8
  %conv87 = add i8 %636, %637
  %638 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %638)
  store i8 %conv87, ptr %arrayidx84, align 1
  %nextindex = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 3
  %639 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %nextindex, align 1
  %conv89 = zext i8 %640 to i32
  %sub90 = add nuw nsw i32 %conv89, 8191
  %641 = lshr i32 %sub90, 5
  %sub92 = sub nsw i32 %641, %shr
  %642 = trunc i32 %sub92 to i8
  %conv94 = add i8 %642, 1
  %length95 = getelementptr %struct.linelock, ptr %632, i32 0, i32 6, i32 %idxprom, i32 1
  %643 = ptrtoint ptr %length95 to i32
  call void @__asan_store1_noabort(i32 %643)
  store i8 %conv94, ptr %length95, align 1
  %644 = load i8, ptr %index83, align 1
  %inc97 = add i8 %644, 1
  store i8 %inc97, ptr %index83, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.end81, %do.end66.if.end98_crit_edge
  %645 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %645)
  %646 = load i16, ptr %14, align 8
  %647 = and i16 %646, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %647)
  %cmp102 = icmp eq i16 %647, 0
  br i1 %cmp102, label %if.end98.cleanup_crit_edge, label %if.then104

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then104:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %if.end98.cleanup_crit_edge, %dtSplitUp.exit, %if.then17, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.9.i, %dtSplitUp.exit ], [ -31, %if.then17 ], [ -31, %if.then12.cleanup_crit_edge ], [ 0, %if.then104 ], [ 0, %if.end98.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtlck) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %split) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @txLock(i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dtInsertEntry(ptr noundef %p, i32 noundef %index, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %data, ptr nocapture noundef %dtlock) unnamed_addr #0 align 64 {
entry:
  %mp = alloca ptr, align 4
  %lblock = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dtlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtlock, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mp) #8
  %2 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mp, align 4
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key, align 4
  %name1 = getelementptr inbounds %struct.component_name, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name1, align 4
  %freelist = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %freelist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %freelist, align 1
  %conv = sext i8 %8 to i32
  %arrayidx = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 2
  store i8 %10, ptr %freelist, align 1
  %freecnt = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 4
  %11 = ptrtoint ptr %freecnt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %freecnt, align 2
  %dec = add i8 %12, -1
  store i8 %dec, ptr %freecnt, align 2
  %index3 = getelementptr inbounds %struct.linelock, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %index3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %index3, align 1
  %maxcnt = getelementptr inbounds %struct.linelock, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %maxcnt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %maxcnt, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp.not = icmp slt i8 %14, %16
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @txLinelock(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dtlck.0 = phi ptr [ %call, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %index8 = getelementptr inbounds %struct.linelock, ptr %dtlck.0, i32 0, i32 2
  %17 = ptrtoint ptr %index8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %index8, align 1
  %idxprom = sext i8 %18 to i32
  %arrayidx9 = getelementptr %struct.linelock, ptr %dtlck.0, i32 0, i32 6, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %8, ptr %arrayidx9, align 1
  %flag = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 2
  %20 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flag, align 8
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 2
  br i1 %tobool.not, label %if.else40, label %if.then12

if.then12:                                        ; preds = %if.end
  %next14 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx, i32 0, i32 1
  %25 = ptrtoint ptr %next14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %next14, align 4
  %ino = getelementptr inbounds %struct.anon.79, ptr %data, i32 0, i32 2
  %26 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ino, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx, align 4
  %conv15 = trunc i32 %4 to i8
  %namlen16 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx, i32 0, i32 2
  %30 = ptrtoint ptr %namlen16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv15, ptr %namlen16, align 1
  %name17 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx, i32 0, i32 3
  %ip = getelementptr inbounds %struct.anon.79, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ip, align 4
  %tobool18.not = icmp eq ptr %32, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then12
  %33 = tail call i32 @llvm.smin.i32(i32 %4, i32 11)
  %34 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool25.not = icmp eq i8 %34, 0
  br i1 %tobool25.not, label %if.then26, label %if.then19.if.end28_crit_edge

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %self = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 9
  %35 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %self, align 4
  %37 = shl i32 %36, 24
  %conv.i = zext i32 %37 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr2.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %conv1.i = zext i32 %40 to i64
  %add.i = or i64 %shl.i, %conv1.i
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then19.if.end28_crit_edge
  %bn.0 = phi i64 [ 0, %if.then19.if.end28_crit_edge ], [ %add.i, %if.then26 ]
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %data, align 4
  %call30 = tail call fastcc i32 @add_index(i16 noundef zeroext %42, ptr noundef nonnull %32, i64 noundef %bn.0, i32 noundef %index)
  %43 = tail call i32 @llvm.bswap.i32(i32 %call30)
  %index31 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx, i32 0, i32 4
  %44 = ptrtoint ptr %index31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %index31, align 4
  br label %if.end54

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %45 = tail call i32 @llvm.smin.i32(i32 %4, i32 13)
  br label %if.end54

if.else40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %next42 = getelementptr inbounds %struct.idtentry, ptr %arrayidx, i32 0, i32 1
  %46 = ptrtoint ptr %next42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %24, ptr %next42, align 4
  %47 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %data, align 4
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %arrayidx, align 4
  %conv43 = trunc i32 %4 to i8
  %namlen44 = getelementptr inbounds %struct.idtentry, ptr %arrayidx, i32 0, i32 2
  %50 = ptrtoint ptr %namlen44 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv43, ptr %namlen44, align 1
  %name45 = getelementptr inbounds %struct.idtentry, ptr %arrayidx, i32 0, i32 3
  %51 = tail call i32 @llvm.smin.i32(i32 %4, i32 11)
  br label %if.end54

if.end54:                                         ; preds = %if.else40, %if.else, %if.end28
  %len.0 = phi i32 [ %33, %if.end28 ], [ %45, %if.else ], [ %51, %if.else40 ]
  %name.0 = phi ptr [ %name17, %if.end28 ], [ %name17, %if.else ], [ %name45, %if.else40 ]
  %bn.1 = phi i64 [ %bn.0, %if.end28 ], [ 0, %if.else ], [ 0, %if.else40 ]
  %ih.0 = phi ptr [ null, %if.end28 ], [ null, %if.else ], [ %arrayidx, %if.else40 ]
  %lh.0 = phi ptr [ %arrayidx, %if.end28 ], [ %arrayidx, %if.else ], [ null, %if.else40 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool.not2.i = icmp eq i32 %len.0, 0
  br i1 %tobool.not2.i, label %if.end54.UniStrncpy_to_le.exit_crit_edge, label %if.end54.land.rhs.i_crit_edge

if.end54.land.rhs.i_crit_edge:                    ; preds = %if.end54
  br label %land.rhs.i

if.end54.UniStrncpy_to_le.exit_crit_edge:         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncpy_to_le.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end54.land.rhs.i_crit_edge
  %n.addr.05.i = phi i32 [ %dec6.i, %while.body.i.land.rhs.i_crit_edge ], [ %len.0, %if.end54.land.rhs.i_crit_edge ]
  %ucs2.addr.04.i = phi ptr [ %incdec.ptr.i, %while.body.i.land.rhs.i_crit_edge ], [ %6, %if.end54.land.rhs.i_crit_edge ]
  %ucs1.addr.03.i = phi ptr [ %incdec.ptr2.i, %while.body.i.land.rhs.i_crit_edge ], [ %name.0, %if.end54.land.rhs.i_crit_edge ]
  %52 = ptrtoint ptr %ucs2.addr.04.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ucs2.addr.04.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool1.not.i = icmp eq i16 %53, 0
  br i1 %tobool1.not.i, label %while.body6.preheader.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %dec6.i = add i32 %n.addr.05.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %ucs2.addr.04.i, i32 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #8
  %incdec.ptr2.i = getelementptr i16, ptr %ucs1.addr.03.i, i32 1
  %55 = ptrtoint ptr %ucs1.addr.03.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %ucs1.addr.03.i, align 2
  %tobool.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool.not.i, label %while.body.i.UniStrncpy_to_le.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.UniStrncpy_to_le.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncpy_to_le.exit

while.body6.preheader.i:                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = shl nuw i32 %n.addr.05.i, 1
  %57 = call ptr @memset(ptr %ucs1.addr.03.i, i32 0, i32 %56)
  br label %UniStrncpy_to_le.exit

UniStrncpy_to_le.exit:                            ; preds = %while.body6.preheader.i, %while.body.i.UniStrncpy_to_le.exit_crit_edge, %if.end54.UniStrncpy_to_le.exit_crit_edge
  %sub = sub i32 %4, %len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool56.not292 = icmp eq i32 %sub, 0
  br i1 %tobool56.not292, label %while.end.thread, label %UniStrncpy_to_le.exit.while.body_crit_edge

UniStrncpy_to_le.exit.while.body_crit_edge:       ; preds = %UniStrncpy_to_le.exit
  br label %while.body

while.end.thread:                                 ; preds = %UniStrncpy_to_le.exit
  call void @__sanitizer_cov_trace_pc() #10
  %length97314 = getelementptr %struct.linelock, ptr %dtlck.0, i32 0, i32 6, i32 %idxprom, i32 1
  %58 = ptrtoint ptr %length97314 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %length97314, align 1
  %index98315 = getelementptr inbounds %struct.linelock, ptr %dtlck.0, i32 0, i32 2
  %59 = ptrtoint ptr %index98315 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %index98315, align 1
  %inc99316 = add i8 %60, 1
  store i8 %inc99316, ptr %index98315, align 1
  %61 = ptrtoint ptr %dtlock to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %dtlck.0, ptr %dtlock, align 4
  br label %if.then102

while.body:                                       ; preds = %UniStrncpy_to_le.exit285.while.body_crit_edge, %UniStrncpy_to_le.exit.while.body_crit_edge
  %n.0299 = phi i32 [ %inc94, %UniStrncpy_to_le.exit285.while.body_crit_edge ], [ 1, %UniStrncpy_to_le.exit.while.body_crit_edge ]
  %xsi.0298 = phi i32 [ %conv58, %UniStrncpy_to_le.exit285.while.body_crit_edge ], [ %conv, %UniStrncpy_to_le.exit.while.body_crit_edge ]
  %lv.0297 = phi ptr [ %lv.2, %UniStrncpy_to_le.exit285.while.body_crit_edge ], [ %arrayidx9, %UniStrncpy_to_le.exit.while.body_crit_edge ]
  %dtlck.1296 = phi ptr [ %dtlck.3, %UniStrncpy_to_le.exit285.while.body_crit_edge ], [ %dtlck.0, %UniStrncpy_to_le.exit.while.body_crit_edge ]
  %kname.0295 = phi ptr [ %add.ptr, %UniStrncpy_to_le.exit285.while.body_crit_edge ], [ %6, %UniStrncpy_to_le.exit.while.body_crit_edge ]
  %len.1294 = phi i32 [ %74, %UniStrncpy_to_le.exit285.while.body_crit_edge ], [ %len.0, %UniStrncpy_to_le.exit.while.body_crit_edge ]
  %klen.0293 = phi i32 [ %sub95, %UniStrncpy_to_le.exit285.while.body_crit_edge ], [ %sub, %UniStrncpy_to_le.exit.while.body_crit_edge ]
  %62 = ptrtoint ptr %freelist to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %freelist, align 1
  %conv58 = sext i8 %63 to i32
  %arrayidx59 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %conv58
  %64 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx59, align 2
  store i8 %65, ptr %freelist, align 1
  %66 = ptrtoint ptr %freecnt to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %freecnt, align 2
  %dec63 = add i8 %67, -1
  store i8 %dec63, ptr %freecnt, align 2
  %add = add nsw i32 %xsi.0298, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv58)
  %cmp64.not = icmp eq i32 %add, %conv58
  br i1 %cmp64.not, label %while.body.if.end83_crit_edge, label %if.then66

while.body.if.end83_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then66:                                        ; preds = %while.body
  %conv67 = trunc i32 %n.0299 to i8
  %length = getelementptr inbounds %struct.lv, ptr %lv.0297, i32 0, i32 1
  %68 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv67, ptr %length, align 1
  %index68 = getelementptr inbounds %struct.linelock, ptr %dtlck.1296, i32 0, i32 2
  %69 = ptrtoint ptr %index68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %index68, align 1
  %inc = add i8 %70, 1
  store i8 %inc, ptr %index68, align 1
  %maxcnt71 = getelementptr inbounds %struct.linelock, ptr %dtlck.1296, i32 0, i32 1
  %71 = ptrtoint ptr %maxcnt71 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %maxcnt71, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc, i8 %72)
  %cmp73 = icmp slt i8 %inc, %72
  br i1 %cmp73, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr %struct.lv, ptr %lv.0297, i32 1
  br label %if.end80

if.else76:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = tail call ptr @txLinelock(ptr noundef %dtlck.1296) #8
  %lv78 = getelementptr inbounds %struct.linelock, ptr %call77, i32 0, i32 6
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then75
  %dtlck.2 = phi ptr [ %dtlck.1296, %if.then75 ], [ %call77, %if.else76 ]
  %lv.1 = phi ptr [ %incdec.ptr, %if.then75 ], [ %lv78, %if.else76 ]
  %73 = ptrtoint ptr %lv.1 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %63, ptr %lv.1, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.end80, %while.body.if.end83_crit_edge
  %dtlck.3 = phi ptr [ %dtlck.2, %if.end80 ], [ %dtlck.1296, %while.body.if.end83_crit_edge ]
  %lv.2 = phi ptr [ %lv.1, %if.end80 ], [ %lv.0297, %while.body.if.end83_crit_edge ]
  %n.1 = phi i32 [ 0, %if.end80 ], [ %n.0299, %while.body.if.end83_crit_edge ]
  %add.ptr = getelementptr i16, ptr %kname.0295, i32 %len.1294
  %74 = tail call i32 @llvm.smin.i32(i32 %klen.0293, i32 15)
  %name91 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %conv58, i32 2
  br label %land.rhs.i278

land.rhs.i278:                                    ; preds = %while.body.i283.land.rhs.i278_crit_edge, %if.end83
  %n.addr.05.i274 = phi i32 [ %dec6.i279, %while.body.i283.land.rhs.i278_crit_edge ], [ %74, %if.end83 ]
  %ucs2.addr.04.i275 = phi ptr [ %incdec.ptr.i280, %while.body.i283.land.rhs.i278_crit_edge ], [ %add.ptr, %if.end83 ]
  %ucs1.addr.03.i276 = phi ptr [ %incdec.ptr2.i281, %while.body.i283.land.rhs.i278_crit_edge ], [ %name91, %if.end83 ]
  %75 = ptrtoint ptr %ucs2.addr.04.i275 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ucs2.addr.04.i275, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool1.not.i277 = icmp eq i16 %76, 0
  br i1 %tobool1.not.i277, label %while.body6.preheader.i284, label %while.body.i283

while.body.i283:                                  ; preds = %land.rhs.i278
  %dec6.i279 = add i32 %n.addr.05.i274, -1
  %incdec.ptr.i280 = getelementptr i16, ptr %ucs2.addr.04.i275, i32 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #8
  %incdec.ptr2.i281 = getelementptr i16, ptr %ucs1.addr.03.i276, i32 1
  %78 = ptrtoint ptr %ucs1.addr.03.i276 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %ucs1.addr.03.i276, align 2
  %tobool.not.i282 = icmp eq i32 %dec6.i279, 0
  br i1 %tobool.not.i282, label %while.body.i283.UniStrncpy_to_le.exit285_crit_edge, label %while.body.i283.land.rhs.i278_crit_edge

while.body.i283.land.rhs.i278_crit_edge:          ; preds = %while.body.i283
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i278

while.body.i283.UniStrncpy_to_le.exit285_crit_edge: ; preds = %while.body.i283
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncpy_to_le.exit285

while.body6.preheader.i284:                       ; preds = %land.rhs.i278
  call void @__sanitizer_cov_trace_pc() #10
  %79 = shl nuw i32 %n.addr.05.i274, 1
  %80 = call ptr @memset(ptr %ucs1.addr.03.i276, i32 0, i32 %79)
  br label %UniStrncpy_to_le.exit285

UniStrncpy_to_le.exit285:                         ; preds = %while.body6.preheader.i284, %while.body.i283.UniStrncpy_to_le.exit285_crit_edge
  %inc94 = add i32 %n.1, 1
  %sub95 = sub i32 %klen.0293, %74
  %tobool56.not = icmp eq i32 %sub95, 0
  br i1 %tobool56.not, label %while.end, label %UniStrncpy_to_le.exit285.while.body_crit_edge

UniStrncpy_to_le.exit285.while.body_crit_edge:    ; preds = %UniStrncpy_to_le.exit285
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %UniStrncpy_to_le.exit285
  %phi.cast = trunc i32 %inc94 to i8
  %length97 = getelementptr inbounds %struct.lv, ptr %lv.2, i32 0, i32 1
  %81 = ptrtoint ptr %length97 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %phi.cast, ptr %length97, align 1
  %index98 = getelementptr inbounds %struct.linelock, ptr %dtlck.3, i32 0, i32 2
  %82 = ptrtoint ptr %index98 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %index98, align 1
  %inc99 = add i8 %83, 1
  store i8 %inc99, ptr %index98, align 1
  %84 = ptrtoint ptr %dtlock to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %dtlck.3, ptr %dtlock, align 4
  %cmp100 = icmp eq ptr %arrayidx, %arrayidx59
  br i1 %cmp100, label %while.end.if.then102_crit_edge, label %if.else112

while.end.if.then102_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then102

if.then102:                                       ; preds = %while.end.if.then102_crit_edge, %while.end.thread
  %85 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flag, align 8
  %87 = and i8 %86, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool106.not = icmp eq i8 %87, 0
  br i1 %tobool106.not, label %if.else109, label %if.then107

if.then107:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %next108 = getelementptr inbounds %struct.ldtentry, ptr %lh.0, i32 0, i32 1
  %88 = ptrtoint ptr %next108 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %next108, align 4
  br label %if.end114

if.else109:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %next110 = getelementptr inbounds %struct.idtentry, ptr %ih.0, i32 0, i32 1
  %89 = ptrtoint ptr %next110 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %next110, align 4
  br label %if.end114

if.else112:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %arrayidx59, align 2
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.else109, %if.then107
  %91 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flag, align 8
  %93 = and i8 %92, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool118.not = icmp eq i8 %93, 0
  br i1 %tobool118.not, label %cond.false122, label %cond.true119

cond.true119:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %stbl120 = getelementptr inbounds %struct.anon.75, ptr %p, i32 0, i32 6
  br label %cond.end125

cond.false122:                                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 7
  %94 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %stblindex, align 1
  %idxprom123 = zext i8 %95 to i32
  %arrayidx124 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %idxprom123
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false122, %cond.true119
  %cond126 = phi ptr [ %stbl120, %cond.true119 ], [ %arrayidx124, %cond.false122 ]
  %nextindex127 = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 3
  %96 = ptrtoint ptr %nextindex127 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %nextindex127, align 1
  %conv128 = zext i8 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv128, i32 %index)
  %cmp129 = icmp sgt i32 %conv128, %index
  br i1 %cmp129, label %if.then131, label %cond.end125.if.end157_crit_edge

cond.end125.if.end157_crit_edge:                  ; preds = %cond.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

if.then131:                                       ; preds = %cond.end125
  %add.ptr132 = getelementptr i8, ptr %cond126, i32 %index
  %add.ptr133 = getelementptr i8, ptr %add.ptr132, i32 1
  %sub135 = sub i32 %conv128, %index
  %98 = call ptr @memmove(ptr %add.ptr133, ptr %add.ptr132, i32 %sub135)
  %99 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %flag, align 8
  %101 = and i8 %100, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool139.not = icmp eq i8 %101, 0
  br i1 %tobool139.not, label %if.then131.if.end157_crit_edge, label %land.lhs.true

if.then131.if.end157_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

land.lhs.true:                                    ; preds = %if.then131
  %ip140 = getelementptr inbounds %struct.anon.79, ptr %data, i32 0, i32 1
  %102 = ptrtoint ptr %ip140 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ip140, align 4
  %tobool141.not = icmp eq ptr %103, null
  br i1 %tobool141.not, label %land.lhs.true.if.end157_crit_edge, label %if.then142

land.lhs.true.if.end157_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

if.then142:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lblock) #8
  %104 = ptrtoint ptr %lblock to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 -1, ptr %lblock, align 8, !annotation !228
  %105 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %mp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv128, i32 %index)
  %cmp144.not304.not = icmp sgt i32 %conv128, %index
  br i1 %cmp144.not304.not, label %if.then142.for.body_crit_edge, label %if.then142.if.end155_crit_edge

if.then142.if.end155_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then142.for.body_crit_edge:                    ; preds = %if.then142
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then142.for.body_crit_edge
  %n.2305.in = phi i32 [ %n.2305, %for.body.for.body_crit_edge ], [ %index, %if.then142.for.body_crit_edge ]
  %n.2305 = add i32 %n.2305.in, 1
  %arrayidx146 = getelementptr i8, ptr %cond126, i32 %n.2305
  %106 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx146, align 1
  %idxprom147 = sext i8 %107 to i32
  %108 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %data, align 4
  %110 = ptrtoint ptr %ip140 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ip140, align 4
  %index151 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %idxprom147, i32 2, i32 13
  %112 = ptrtoint ptr %index151 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %index151, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  call fastcc void @modify_index(i16 noundef zeroext %109, ptr noundef %111, i32 noundef %114, i64 noundef %bn.1, i32 noundef %n.2305, ptr noundef nonnull %mp, ptr noundef nonnull %lblock)
  %exitcond = icmp eq i32 %n.2305, %conv128
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %115 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr = load ptr, ptr %mp, align 4
  %tobool153.not = icmp eq ptr %.pr, null
  br i1 %tobool153.not, label %for.end.if.end155_crit_edge, label %if.then154

for.end.if.end155_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then154:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %.pr) #8
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %for.end.if.end155_crit_edge, %if.then142.if.end155_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lblock) #8
  br label %if.end157

if.end157:                                        ; preds = %if.end155, %land.lhs.true.if.end157_crit_edge, %if.then131.if.end157_crit_edge, %cond.end125.if.end157_crit_edge
  %arrayidx159 = getelementptr i8, ptr %cond126, i32 %index
  %116 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %8, ptr %arrayidx159, align 1
  %117 = ptrtoint ptr %nextindex127 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %nextindex127, align 1
  %inc161 = add i8 %118, 1
  store i8 %inc161, ptr %nextindex127, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @txLinelock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtDelete(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef readonly %key, ptr nocapture noundef %ino, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %dtlck.i = alloca ptr, align 4
  %lblock.i = alloca i64, align 8
  %mp.i = alloca ptr, align 4
  %imp = alloca ptr, align 4
  %btstack = alloca %struct.btstack, align 8
  %dtlck = alloca ptr, align 4
  %lblock = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imp) #8
  %0 = ptrtoint ptr %imp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %imp, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #8
  %1 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtlck) #8
  %2 = ptrtoint ptr %dtlck to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dtlck, align 4, !annotation !228
  %call = call i32 @dtSearch(ptr noundef %ip, ptr noundef %key, ptr noundef %ino, ptr noundef nonnull %btstack, i32 noundef %flag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btstack, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %mp3 = getelementptr inbounds %struct.btframe, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %mp3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mp3, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool4.not = icmp eq i64 %6, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.metapage, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot = getelementptr i8, ptr %ip, i32 -304
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %p.0 = phi ptr [ %10, %if.then5 ], [ %_dtroot, %if.else ]
  %index9 = getelementptr inbounds %struct.btframe, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %index9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index9, align 8
  %conv = sext i16 %12 to i32
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mntflag, align 4
  %and = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end7.if.end128_crit_edge, label %if.then12

if.end7.if.end128_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then12:                                        ; preds = %if.end7
  %flag13 = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 2
  %19 = ptrtoint ptr %flag13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flag13, align 8
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool16.not = icmp eq i8 %21, 0
  br i1 %tobool16.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %stbl17 = getelementptr inbounds %struct.anon.75, ptr %p.0, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 7
  %22 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stblindex, align 1
  %idxprom = zext i8 %23 to i32
  %arrayidx = getelementptr [128 x %struct.dtslot], ptr %p.0, i32 0, i32 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %stbl17, %cond.true ], [ %arrayidx, %cond.false ]
  %arrayidx18 = getelementptr i8, ptr %cond, i32 %conv
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx18, align 1
  %idxprom19 = zext i8 %25 to i32
  %index21 = getelementptr [128 x %struct.dtslot], ptr %p.0, i32 0, i32 %idxprom19, i32 2, i32 13
  %26 = ptrtoint ptr %index21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index21, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %nextindex = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 3
  %29 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nextindex, align 1
  %conv22 = zext i8 %30 to i32
  %sub = add nsw i32 %conv22, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp = icmp eq i32 %sub, %conv
  br i1 %cmp, label %if.then24, label %if.else122

if.then24:                                        ; preds = %cond.end
  br i1 %tobool16.not, label %lor.lhs.false, label %if.then24.if.end127_crit_edge

if.then24.if.end127_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

lor.lhs.false:                                    ; preds = %if.then24
  %31 = ptrtoint ptr %p.0 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %p.0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp29 = icmp eq i64 %32, 0
  br i1 %cmp29, label %lor.lhs.false.if.end127_crit_edge, label %if.else41

lor.lhs.false.if.end127_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.else41:                                        ; preds = %lor.lhs.false
  %33 = call i64 @llvm.bswap.i64(i64 %32)
  %conv43 = trunc i64 %33 to i32
  %call44 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv43, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.else48, label %if.then61

if.else48:                                        ; preds = %if.else41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %34 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp50 = icmp sgt i32 %34, 0
  br i1 %cmp50, label %do.end, label %if.else48.if.end127_crit_edge

if.else48.if.end127_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

do.end:                                           ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.end127

if.then61:                                        ; preds = %if.else41
  %data47 = getelementptr inbounds %struct.metapage, ptr %call44, i32 0, i32 7
  %35 = ptrtoint ptr %data47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data47, align 4
  %nextindex62 = getelementptr inbounds %struct.anon.71, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %nextindex62 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nextindex62, align 1
  %39 = ptrtoint ptr %p.0 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %p.0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp65 = icmp eq i64 %40, 0
  br i1 %cmp65, label %cond.end70, label %cond.end70.thread

cond.end70:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %38)
  %cmp72 = icmp ugt i8 %38, 9
  br i1 %cmp72, label %cond.end70.if.then81_crit_edge, label %cond.end70.if.else95_crit_edge

cond.end70.if.else95_crit_edge:                   ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else95

cond.end70.if.then81_crit_edge:                   ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

cond.end70.thread:                                ; preds = %if.then61
  %maxslot = getelementptr inbounds %struct.anon.71, ptr %36, i32 0, i32 6
  %41 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %maxslot, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %38)
  %cmp72349 = icmp ult i8 %42, %38
  br i1 %cmp72349, label %cond.end70.thread.if.then81_crit_edge, label %land.lhs.true

cond.end70.thread.if.then81_crit_edge:            ; preds = %cond.end70.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

land.lhs.true:                                    ; preds = %cond.end70.thread
  %43 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %maxslot, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %44)
  %cmp79 = icmp ugt i8 %44, -128
  br i1 %cmp79, label %land.lhs.true.if.then81_crit_edge, label %land.lhs.true.if.else95_crit_edge

land.lhs.true.if.else95_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else95

land.lhs.true.if.then81_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

if.then81:                                        ; preds = %land.lhs.true.if.then81_crit_edge, %cond.end70.thread.if.then81_crit_edge, %cond.end70.if.then81_crit_edge
  %45 = ptrtoint ptr %call44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %call44, align 8
  %47 = and i16 %46, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp84 = icmp eq i16 %47, 0
  br i1 %cmp84, label %if.then81.if.end87_crit_edge, label %if.then86

if.then81.if.end87_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then86:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %call44) #8
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.then81.if.end87_crit_edge
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %49, ptr noundef nonnull @.str.3) #8
  br label %if.end127

if.else95:                                        ; preds = %land.lhs.true.if.else95_crit_edge, %cond.end70.if.else95_crit_edge
  %flag96 = getelementptr inbounds %struct.anon.71, ptr %36, i32 0, i32 2
  %50 = ptrtoint ptr %flag96 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flag96, align 8
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool99.not = icmp eq i8 %52, 0
  br i1 %tobool99.not, label %cond.false103, label %cond.true100

cond.true100:                                     ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  %stbl101 = getelementptr inbounds %struct.anon.75, ptr %36, i32 0, i32 6
  br label %cond.end107

cond.false103:                                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex104 = getelementptr inbounds %struct.anon.71, ptr %36, i32 0, i32 7
  %53 = ptrtoint ptr %stblindex104 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %stblindex104, align 1
  %idxprom105 = zext i8 %54 to i32
  %arrayidx106 = getelementptr [128 x %struct.dtslot], ptr %36, i32 0, i32 %idxprom105
  br label %cond.end107

cond.end107:                                      ; preds = %cond.false103, %cond.true100
  %cond108 = phi ptr [ %stbl101, %cond.true100 ], [ %arrayidx106, %cond.false103 ]
  %55 = ptrtoint ptr %cond108 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cond108, align 1
  %idxprom110 = zext i8 %56 to i32
  %index112 = getelementptr [128 x %struct.dtslot], ptr %36, i32 0, i32 %idxprom110, i32 2, i32 13
  %57 = ptrtoint ptr %index112 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index112, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %call44 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %call44, align 8
  %62 = and i16 %61, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp116 = icmp eq i16 %62, 0
  br i1 %cmp116, label %cond.end107.if.end127_crit_edge, label %if.then118

cond.end107.if.end127_crit_edge:                  ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then118:                                       ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %call44) #8
  br label %if.end127

if.else122:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nsw i32 %conv, 1
  %arrayidx123 = getelementptr i8, ptr %cond, i32 %add
  %63 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx123, align 1
  %idxprom124 = zext i8 %64 to i32
  %index126 = getelementptr [128 x %struct.dtslot], ptr %p.0, i32 0, i32 %idxprom124, i32 2, i32 13
  %65 = ptrtoint ptr %index126 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %index126, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  br label %if.end127

if.end127:                                        ; preds = %if.else122, %if.then118, %cond.end107.if.end127_crit_edge, %if.end87, %do.end, %if.else48.if.end127_crit_edge, %lor.lhs.false.if.end127_crit_edge, %if.then24.if.end127_crit_edge
  %rc.2 = phi i32 [ 0, %cond.end107.if.end127_crit_edge ], [ 0, %if.then118 ], [ 0, %if.else122 ], [ 0, %lor.lhs.false.if.end127_crit_edge ], [ 0, %if.then24.if.end127_crit_edge ], [ -5, %if.end87 ], [ -5, %do.end ], [ -5, %if.else48.if.end127_crit_edge ]
  %next_index.0 = phi i32 [ %59, %cond.end107.if.end127_crit_edge ], [ %59, %if.then118 ], [ %67, %if.else122 ], [ -1, %lor.lhs.false.if.end127_crit_edge ], [ -1, %if.then24.if.end127_crit_edge ], [ -1, %if.end87 ], [ -1, %do.end ], [ -1, %if.else48.if.end127_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lblock.i) #8
  %68 = ptrtoint ptr %lblock.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 -1, ptr %lblock.i, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mp.i) #8
  %69 = ptrtoint ptr %mp.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %mp.i, align 4
  %call.i = call fastcc ptr @find_index(ptr noundef %ip, i32 noundef %28, ptr noundef nonnull %mp.i, ptr noundef nonnull %lblock.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end127.free_index.exit_crit_edge, label %if.end.i

if.end127.free_index.exit_crit_edge:              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_index.exit

if.end.i:                                         ; preds = %if.end127
  %flag.i = getelementptr inbounds %struct.dir_table_slot, ptr %call.i, i32 0, i32 1
  %70 = ptrtoint ptr %flag.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %flag.i, align 1
  %addr1.i = getelementptr inbounds %struct.dir_table_slot, ptr %call.i, i32 0, i32 3
  %71 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %addr1.i, align 1
  %slot.i = getelementptr inbounds %struct.dir_table_slot, ptr %call.i, i32 0, i32 2
  %72 = ptrtoint ptr %slot.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %slot.i, align 2
  %73 = call i32 @llvm.bswap.i32(i32 %next_index.0) #8
  %addr2.i = getelementptr inbounds %struct.dir_table_slot, ptr %call.i, i32 0, i32 4
  %74 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %addr2.i, align 4
  %75 = ptrtoint ptr %mp.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mp.i, align 4
  %tobool1.not.i = icmp eq ptr %76, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %call.i.i = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %76, i32 noundef 512) #8
  %lock.i.i = getelementptr inbounds %struct.tlock, ptr %call.i.i, i32 0, i32 6
  %index1.i.i = getelementptr inbounds %struct.linelock, ptr %lock.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %index1.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %index1.i.i, align 1
  %maxcnt.i.i = getelementptr inbounds %struct.tlock, ptr %call.i.i, i32 0, i32 6, i32 1
  %79 = ptrtoint ptr %maxcnt.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %maxcnt.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %80)
  %cmp.not.i.i = icmp slt i8 %78, %80
  br i1 %cmp.not.i.i, label %if.then2.i.lock_index.exit.i_crit_edge, label %if.then.i.i

if.then2.i.lock_index.exit.i_crit_edge:           ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_index.exit.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = call ptr @txLinelock(ptr noundef %lock.i.i) #8
  br label %lock_index.exit.i

lock_index.exit.i:                                ; preds = %if.then.i.i, %if.then2.i.lock_index.exit.i_crit_edge
  %llck.0.i.i = phi ptr [ %call4.i.i, %if.then.i.i ], [ %lock.i.i, %if.then2.i.lock_index.exit.i_crit_edge ]
  %index6.i.i = getelementptr inbounds %struct.linelock, ptr %llck.0.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %index6.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %index6.i.i, align 1
  %idxprom.i.i = sext i8 %82 to i32
  %arrayidx.i.i = getelementptr %struct.linelock, ptr %llck.0.i.i, i32 0, i32 6, i32 %idxprom.i.i
  %sub.i.i = add i32 %28, 510
  %and.i.i = lshr i32 %sub.i.i, 1
  %conv7.i.i = trunc i32 %and.i.i to i8
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv7.i.i, ptr %arrayidx.i.i, align 1
  %length.i.i = getelementptr %struct.linelock, ptr %llck.0.i.i, i32 0, i32 6, i32 %idxprom.i.i, i32 1
  %84 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %length.i.i, align 1
  %85 = load i8, ptr %index6.i.i, align 1
  %inc.i.i = add i8 %85, 1
  store i8 %inc.i.i, ptr %index6.i.i, align 1
  %flag3.i = getelementptr inbounds %struct.metapage, ptr %76, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag3.i) #8
  call void @release_metapage(ptr noundef nonnull %76) #8
  br label %free_index.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cflag.i = getelementptr i8, ptr %ip, i32 -768
  call void @_set_bit(i32 noundef 4, ptr noundef %cflag.i) #8
  br label %free_index.exit

free_index.exit:                                  ; preds = %if.else.i, %lock_index.exit.i, %if.end127.free_index.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mp.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lblock.i) #8
  br label %if.end128

if.end128:                                        ; preds = %free_index.exit, %if.end7.if.end128_crit_edge
  %rc.3 = phi i32 [ %rc.2, %free_index.exit ], [ 0, %if.end7.if.end128_crit_edge ]
  %nextindex129 = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 3
  %86 = ptrtoint ptr %nextindex129 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nextindex129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp131 = icmp eq i8 %87, 1
  br i1 %cmp131, label %if.then133, label %if.else135

if.then133:                                       ; preds = %if.end128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtlck.i) #8
  %88 = ptrtoint ptr %dtlck.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %dtlck.i, align 4, !annotation !228
  %89 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %8, align 8
  %91 = and i16 %90, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp.i = icmp eq i16 %91, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.then133
  %idotdot.i = getelementptr i8, ptr %ip, i32 -284
  %92 = ptrtoint ptr %idotdot.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %idotdot.i, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #8
  call void @dtInitRoot(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %94) #8
  %95 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %8, align 8
  %97 = and i16 %96, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp5.i = icmp eq i16 %97, 0
  br i1 %cmp5.i, label %if.then.i.dtDeleteUp.exit_crit_edge, label %if.then7.i

if.then.i.dtDeleteUp.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtDeleteUp.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %8) #8
  br label %dtDeleteUp.exit

if.end8.i:                                        ; preds = %if.then133
  %call9.i = call ptr @txMaplock(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef 8256) #8
  %lock.i = getelementptr inbounds %struct.tlock, ptr %call9.i, i32 0, i32 6
  %flag.i338 = getelementptr inbounds %struct.tlock, ptr %call9.i, i32 0, i32 6, i32 2
  %98 = ptrtoint ptr %flag.i338 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1, ptr %flag.i338, align 4
  %pxd.i = getelementptr inbounds %struct.tlock, ptr %call9.i, i32 0, i32 6, i32 4
  %self.i = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 9
  %99 = ptrtoint ptr %self.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %self.i, align 8
  %101 = ptrtoint ptr %pxd.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %100, ptr %pxd.i, align 4
  %index10.i = getelementptr inbounds %struct.maplock, ptr %lock.i, i32 0, i32 2
  %102 = ptrtoint ptr %index10.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %index10.i, align 1
  %call11.i = call fastcc i32 @dtRelink(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %p.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i339 = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i339, label %if.end20.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end8.i
  %103 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %8, align 8
  %105 = and i16 %104, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp16.i = icmp eq i16 %105, 0
  br i1 %cmp16.i, label %if.then12.i.dtDeleteUp.exit_crit_edge, label %if.then18.i

if.then12.i.dtDeleteUp.exit_crit_edge:            ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtDeleteUp.exit

if.then18.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %8) #8
  br label %dtDeleteUp.exit

if.end20.i:                                       ; preds = %if.end8.i
  %106 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %self.i, align 4
  %108 = and i32 %107, -256
  %109 = call i32 @llvm.bswap.i32(i32 %108) #8
  %110 = zext i32 %109 to i64
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %111 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %i_blkbits.i.i, align 2
  %sh_prom.i.i = zext i8 %112 to i64
  %shl.i.i = shl i64 %110, %sh_prom.i.i
  call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i.i, i32 noundef 0) #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #8
  %flag.i.i = getelementptr inbounds %struct.metapage, ptr %8, i32 0, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %flag.i.i) #8
  call void @_set_bit(i32 noundef 4, ptr noundef %flag.i.i) #8
  call void @release_metapage(ptr noundef %8) #8
  %stack.i = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 2
  %113 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %btstack, align 8
  %cmp24345.i = icmp eq ptr %114, %stack.i
  br i1 %cmp24345.i, label %if.end20.i.while.end.i_crit_edge, label %cond.end.lr.ph.i

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

cond.end.lr.ph.i:                                 ; preds = %if.end20.i
  %bxflag.i = getelementptr i8, ptr %ip, i32 -752
  %_dtroot35.i = getelementptr i8, ptr %ip, i32 -304
  %nextindex55358.i = getelementptr i8, ptr %ip, i32 -287
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end128.i.cond.end.i_crit_edge, %cond.end.lr.ph.i
  %115 = phi ptr [ %114, %cond.end.lr.ph.i ], [ %164, %if.end128.i.cond.end.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.btframe, ptr %115, i32 -1
  %116 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %incdec.ptr.i, ptr %btstack, align 8
  %cmp27.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %cmp27.not.i, label %cond.end.i.while.end.i_crit_edge, label %do.body.i

cond.end.i.while.end.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.body.i:                                        ; preds = %cond.end.i
  %117 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %incdec.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %118)
  %cmp29.i = icmp eq i64 %118, 0
  br i1 %cmp29.i, label %if.then54.thread.i, label %if.else.i340

if.then54.thread.i:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %nextindex55358.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %nextindex55358.i, align 1
  br label %cond.end63.i

if.else.i340:                                     ; preds = %do.body.i
  %conv37.i = trunc i64 %118 to i32
  %call38.i = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv37.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %if.else41.i, label %if.then54.i

if.else41.i:                                      ; preds = %if.else.i340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %121 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp43.i = icmp sgt i32 %121, 0
  br i1 %cmp43.i, label %do.end.i, label %if.else41.i.dtDeleteUp.exit_crit_edge

if.else41.i.dtDeleteUp.exit_crit_edge:            ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtDeleteUp.exit

do.end.i:                                         ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %dtDeleteUp.exit

if.then54.i:                                      ; preds = %if.else.i340
  %data.i = getelementptr inbounds %struct.metapage, ptr %call38.i, i32 0, i32 7
  %122 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data.i, align 4
  %124 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %.pr.i = load i64, ptr %incdec.ptr.i, align 8
  %nextindex55.i = getelementptr inbounds %struct.anon.71, ptr %123, i32 0, i32 3
  %125 = ptrtoint ptr %nextindex55.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %nextindex55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr.i)
  %cmp58.i = icmp eq i64 %.pr.i, 0
  br i1 %cmp58.i, label %if.then54.i.cond.end63.i_crit_edge, label %cond.end63.thread.i

if.then54.i.cond.end63.i_crit_edge:               ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end63.i

cond.end63.i:                                     ; preds = %if.then54.i.cond.end63.i_crit_edge, %if.then54.thread.i
  %127 = phi i8 [ %120, %if.then54.thread.i ], [ %126, %if.then54.i.cond.end63.i_crit_edge ]
  %nextindex55367.i = phi ptr [ %nextindex55358.i, %if.then54.thread.i ], [ %nextindex55.i, %if.then54.i.cond.end63.i_crit_edge ]
  %p.0.ph364.i = phi ptr [ %_dtroot35.i, %if.then54.thread.i ], [ %123, %if.then54.i.cond.end63.i_crit_edge ]
  %mp.0.ph361.i = phi ptr [ %bxflag.i, %if.then54.thread.i ], [ %call38.i, %if.then54.i.cond.end63.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %127)
  %cmp65.i = icmp ugt i8 %127, 9
  br i1 %cmp65.i, label %cond.end63.i.if.then73.i_crit_edge, label %cond.end63.i.if.end87.i_crit_edge

cond.end63.i.if.end87.i_crit_edge:                ; preds = %cond.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

cond.end63.i.if.then73.i_crit_edge:               ; preds = %cond.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.i

cond.end63.thread.i:                              ; preds = %if.then54.i
  %maxslot.i = getelementptr inbounds %struct.anon.71, ptr %123, i32 0, i32 6
  %128 = ptrtoint ptr %maxslot.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %maxslot.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %129, i8 %126)
  %cmp65325.i = icmp ult i8 %129, %126
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %129)
  %cmp71.i = icmp ugt i8 %129, -128
  %or.cond = or i1 %cmp65325.i, %cmp71.i
  br i1 %or.cond, label %cond.end63.thread.i.if.then73.i_crit_edge, label %cond.end63.thread.i.if.end87.i_crit_edge

cond.end63.thread.i.if.end87.i_crit_edge:         ; preds = %cond.end63.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

cond.end63.thread.i.if.then73.i_crit_edge:        ; preds = %cond.end63.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.i

if.then73.i:                                      ; preds = %cond.end63.thread.i.if.then73.i_crit_edge, %cond.end63.i.if.then73.i_crit_edge
  %mp.0.ph362.i = phi ptr [ %call38.i, %cond.end63.thread.i.if.then73.i_crit_edge ], [ %mp.0.ph361.i, %cond.end63.i.if.then73.i_crit_edge ]
  %130 = ptrtoint ptr %mp.0.ph362.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %mp.0.ph362.i, align 8
  %132 = and i16 %131, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %cmp77.i = icmp eq i16 %132, 0
  br i1 %cmp77.i, label %if.then73.i.if.end80.i_crit_edge, label %if.then79.i

if.then73.i.if.end80.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

if.then79.i:                                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.0.ph362.i) #8
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %if.then73.i.if.end80.i_crit_edge
  %133 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %134, ptr noundef nonnull @.str.3) #8
  br label %dtDeleteUp.exit

if.end87.i:                                       ; preds = %cond.end63.thread.i.if.end87.i_crit_edge, %cond.end63.i.if.end87.i_crit_edge
  %nextindex55366.i = phi ptr [ %nextindex55367.i, %cond.end63.i.if.end87.i_crit_edge ], [ %nextindex55.i, %cond.end63.thread.i.if.end87.i_crit_edge ]
  %p.0.ph363.i = phi ptr [ %p.0.ph364.i, %cond.end63.i.if.end87.i_crit_edge ], [ %123, %cond.end63.thread.i.if.end87.i_crit_edge ]
  %mp.0.ph360.i = phi ptr [ %mp.0.ph361.i, %cond.end63.i.if.end87.i_crit_edge ], [ %call38.i, %cond.end63.thread.i.if.end87.i_crit_edge ]
  %index88.i = getelementptr %struct.btframe, ptr %115, i32 -1, i32 1
  %135 = ptrtoint ptr %index88.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %index88.i, align 8
  %137 = ptrtoint ptr %nextindex55366.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %nextindex55366.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %138)
  %cmp92.i = icmp eq i8 %138, 1
  br i1 %cmp92.i, label %if.then94.i, label %if.end132.i

if.then94.i:                                      ; preds = %if.end87.i
  %flag95.i = getelementptr inbounds %struct.anon.71, ptr %p.0.ph363.i, i32 0, i32 2
  %139 = ptrtoint ptr %flag95.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %flag95.i, align 8
  %141 = and i8 %140, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool98.not.i = icmp eq i8 %141, 0
  br i1 %tobool98.not.i, label %if.else111.i, label %if.then99.i

if.then99.i:                                      ; preds = %if.then94.i
  %idotdot103.i = getelementptr i8, ptr %ip, i32 -284
  %142 = ptrtoint ptr %idotdot103.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %idotdot103.i, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143) #8
  call void @dtInitRoot(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %144) #8
  %145 = ptrtoint ptr %mp.0.ph360.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %mp.0.ph360.i, align 8
  %147 = and i16 %146, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %cmp107.i = icmp eq i16 %147, 0
  br i1 %cmp107.i, label %if.then99.i.dtDeleteUp.exit_crit_edge, label %if.then109.i

if.then99.i.dtDeleteUp.exit_crit_edge:            ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtDeleteUp.exit

if.then109.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.0.ph360.i) #8
  br label %dtDeleteUp.exit

if.else111.i:                                     ; preds = %if.then94.i
  %call112.i = call ptr @txMaplock(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef 8256) #8
  %lock113.i = getelementptr inbounds %struct.tlock, ptr %call112.i, i32 0, i32 6
  %flag114.i = getelementptr inbounds %struct.tlock, ptr %call112.i, i32 0, i32 6, i32 2
  %148 = ptrtoint ptr %flag114.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %flag114.i, align 4
  %pxd115.i = getelementptr inbounds %struct.tlock, ptr %call112.i, i32 0, i32 6, i32 4
  %self116.i = getelementptr inbounds %struct.anon.71, ptr %p.0.ph363.i, i32 0, i32 9
  %149 = ptrtoint ptr %self116.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %self116.i, align 8
  %151 = ptrtoint ptr %pxd115.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 %150, ptr %pxd115.i, align 4
  %index117.i = getelementptr inbounds %struct.maplock, ptr %lock113.i, i32 0, i32 2
  %152 = ptrtoint ptr %index117.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %index117.i, align 1
  %call118.i = call fastcc i32 @dtRelink(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %p.0.ph363.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.end128.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.else111.i
  %153 = ptrtoint ptr %mp.0.ph360.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %mp.0.ph360.i, align 8
  %155 = and i16 %154, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %cmp124.i = icmp eq i16 %155, 0
  br i1 %cmp124.i, label %if.then120.i.dtDeleteUp.exit_crit_edge, label %if.then126.i

if.then120.i.dtDeleteUp.exit_crit_edge:           ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtDeleteUp.exit

if.then126.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.0.ph360.i) #8
  br label %dtDeleteUp.exit

if.end128.i:                                      ; preds = %if.else111.i
  %156 = ptrtoint ptr %self116.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %self116.i, align 4
  %158 = and i32 %157, -256
  %159 = call i32 @llvm.bswap.i32(i32 %158) #8
  %160 = zext i32 %159 to i64
  %161 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %i_blkbits.i.i, align 2
  %sh_prom.i310.i = zext i8 %162 to i64
  %shl.i311.i = shl i64 %160, %sh_prom.i310.i
  call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i311.i, i32 noundef 0) #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #8
  %flag.i312.i = getelementptr inbounds %struct.metapage, ptr %mp.0.ph360.i, i32 0, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %flag.i312.i) #8
  call void @_set_bit(i32 noundef 4, ptr noundef %flag.i312.i) #8
  call void @release_metapage(ptr noundef %mp.0.ph360.i) #8
  %163 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %btstack, align 8
  %cmp24.i = icmp eq ptr %164, %stack.i
  br i1 %cmp24.i, label %if.end128.i.while.end.i_crit_edge, label %if.end128.i.cond.end.i_crit_edge

if.end128.i.cond.end.i_crit_edge:                 ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.end128.i.while.end.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end132.i:                                      ; preds = %if.end87.i
  %conv89.le.i = sext i16 %136 to i32
  %165 = ptrtoint ptr %mp.0.ph360.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %mp.0.ph360.i, align 8
  %167 = and i16 %166, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %cmp136.i = icmp eq i16 %167, 0
  br i1 %cmp136.i, label %if.then138.i, label %if.else139.i

if.then138.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end141.i

if.else139.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #10
  %flag140.i = getelementptr inbounds %struct.metapage, ptr %mp.0.ph360.i, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag140.i) #8
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.else139.i, %if.then138.i
  %call142.i = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.0.ph360.i, i32 noundef 8193) #8
  %lock143.i = getelementptr inbounds %struct.tlock, ptr %call142.i, i32 0, i32 6
  %168 = ptrtoint ptr %dtlck.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %lock143.i, ptr %dtlck.i, align 4
  %index144.i = getelementptr inbounds %struct.linelock, ptr %lock143.i, i32 0, i32 2
  %169 = ptrtoint ptr %index144.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %index144.i, align 1
  %maxcnt.i = getelementptr inbounds %struct.tlock, ptr %call142.i, i32 0, i32 6, i32 1
  %171 = ptrtoint ptr %maxcnt.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %maxcnt.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %170, i8 %172)
  %cmp147.not.i = icmp slt i8 %170, %172
  br i1 %cmp147.not.i, label %if.end141.i.if.end151.i_crit_edge, label %if.then149.i

if.end141.i.if.end151.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151.i

if.then149.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  %call150.i = call ptr @txLinelock(ptr noundef %lock143.i) #8
  %173 = ptrtoint ptr %dtlck.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call150.i, ptr %dtlck.i, align 4
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then149.i, %if.end141.i.if.end151.i_crit_edge
  %174 = ptrtoint ptr %dtlck.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dtlck.i, align 4
  %index153.i = getelementptr inbounds %struct.linelock, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %index153.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %index153.i, align 1
  %idxprom.i = sext i8 %177 to i32
  %arrayidx.i = getelementptr %struct.linelock, ptr %175, i32 0, i32 6, i32 %idxprom.i
  %178 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %arrayidx.i, align 1
  %length.i = getelementptr %struct.linelock, ptr %175, i32 0, i32 6, i32 %idxprom.i, i32 1
  %179 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %length.i, align 1
  %180 = load i8, ptr %index153.i, align 1
  %inc.i = add i8 %180, 1
  store i8 %inc.i, ptr %index153.i, align 1
  %flag155.i = getelementptr inbounds %struct.anon.71, ptr %p.0.ph363.i, i32 0, i32 2
  %181 = ptrtoint ptr %flag155.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %flag155.i, align 8
  %183 = and i8 %182, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool158.not.i = icmp eq i8 %183, 0
  br i1 %tobool158.not.i, label %if.then159.i, label %if.end151.i.if.end185.i_crit_edge

if.end151.i.if.end185.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185.i

if.then159.i:                                     ; preds = %if.end151.i
  %maxcnt162.i = getelementptr inbounds %struct.linelock, ptr %175, i32 0, i32 1
  %184 = ptrtoint ptr %maxcnt162.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %maxcnt162.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i, i8 %185)
  %cmp164.i = icmp slt i8 %inc.i, %185
  br i1 %cmp164.i, label %if.then166.i, label %if.else168.i

if.then166.i:                                     ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr167.i = getelementptr %struct.lv, ptr %arrayidx.i, i32 1
  br label %if.end172.i

if.else168.i:                                     ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #10
  %call169.i = call ptr @txLinelock(ptr noundef %175) #8
  %186 = ptrtoint ptr %dtlck.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call169.i, ptr %dtlck.i, align 4
  %lv170.i = getelementptr inbounds %struct.linelock, ptr %call169.i, i32 0, i32 6
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.else168.i, %if.then166.i
  %lv.0.i = phi ptr [ %incdec.ptr167.i, %if.then166.i ], [ %lv170.i, %if.else168.i ]
  %shr.i = ashr i32 %conv89.le.i, 5
  %stblindex.i = getelementptr inbounds %struct.anon.71, ptr %p.0.ph363.i, i32 0, i32 7
  %187 = ptrtoint ptr %stblindex.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %stblindex.i, align 1
  %189 = trunc i32 %shr.i to i8
  %conv174.i = add i8 %188, %189
  %190 = ptrtoint ptr %lv.0.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv174.i, ptr %lv.0.i, align 1
  %191 = ptrtoint ptr %nextindex55366.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %nextindex55366.i, align 1
  %conv177.i = zext i8 %192 to i32
  %sub.i = add nuw nsw i32 %conv177.i, 8191
  %193 = lshr i32 %sub.i, 5
  %sub179.i = sub nsw i32 %193, %shr.i
  %194 = trunc i32 %sub179.i to i8
  %conv181.i = add i8 %194, 1
  %length182.i = getelementptr inbounds %struct.lv, ptr %lv.0.i, i32 0, i32 1
  %195 = ptrtoint ptr %length182.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv181.i, ptr %length182.i, align 1
  %196 = ptrtoint ptr %dtlck.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dtlck.i, align 4
  %index183.i = getelementptr inbounds %struct.linelock, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %index183.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %index183.i, align 1
  %inc184.i = add i8 %199, 1
  store i8 %inc184.i, ptr %index183.i, align 1
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.end172.i, %if.end151.i.if.end185.i_crit_edge
  call fastcc void @dtDeleteEntry(ptr noundef %p.0.ph363.i, i32 noundef %conv89.le.i, ptr noundef nonnull %dtlck.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %cmp186.i = icmp eq i16 %136, 0
  br i1 %cmp186.i, label %land.lhs.true188.i, label %if.end185.i.if.end197.i_crit_edge

if.end185.i.if.end197.i_crit_edge:                ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197.i

land.lhs.true188.i:                               ; preds = %if.end185.i
  %200 = ptrtoint ptr %flag155.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %flag155.i, align 8
  %202 = and i8 %201, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool192.not.i = icmp eq i8 %202, 0
  br i1 %tobool192.not.i, label %lor.lhs.false193.i, label %land.lhs.true188.i.if.then196.i_crit_edge

land.lhs.true188.i.if.then196.i_crit_edge:        ; preds = %land.lhs.true188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then196.i

lor.lhs.false193.i:                               ; preds = %land.lhs.true188.i
  %prev.i = getelementptr inbounds %struct.anon.71, ptr %p.0.ph363.i, i32 0, i32 1
  %203 = ptrtoint ptr %prev.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %prev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %204)
  %cmp194.i = icmp eq i64 %204, 0
  br i1 %cmp194.i, label %lor.lhs.false193.i.if.then196.i_crit_edge, label %lor.lhs.false193.i.if.end197.i_crit_edge

lor.lhs.false193.i.if.end197.i_crit_edge:         ; preds = %lor.lhs.false193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197.i

lor.lhs.false193.i.if.then196.i_crit_edge:        ; preds = %lor.lhs.false193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then196.i

if.then196.i:                                     ; preds = %lor.lhs.false193.i.if.then196.i_crit_edge, %land.lhs.true188.i.if.then196.i_crit_edge
  call fastcc void @dtTruncateEntry(ptr noundef %p.0.ph363.i, ptr noundef nonnull %dtlck.i) #8
  br label %if.end197.i

if.end197.i:                                      ; preds = %if.then196.i, %lor.lhs.false193.i.if.end197.i_crit_edge, %if.end185.i.if.end197.i_crit_edge
  %205 = ptrtoint ptr %mp.0.ph360.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %mp.0.ph360.i, align 8
  %207 = and i16 %206, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %cmp201.i = icmp eq i16 %207, 0
  br i1 %cmp201.i, label %if.end197.i.while.end.i_crit_edge, label %if.then203.i

if.end197.i.while.end.i_crit_edge:                ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.then203.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.0.ph360.i) #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.then203.i, %if.end197.i.while.end.i_crit_edge, %if.end128.i.while.end.i_crit_edge, %cond.end.i.while.end.i_crit_edge, %if.end20.i.while.end.i_crit_edge
  %208 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %209, i32 0, i32 33
  %210 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %s_fs_info.i.i, align 16
  %mntflag.i = getelementptr inbounds %struct.jfs_sb_info, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %mntflag.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %mntflag.i, align 4
  %and207.i = and i32 %213, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207.i)
  %tobool208.not.i = icmp eq i32 %and207.i, 0
  br i1 %tobool208.not.i, label %if.then209.i, label %while.end.i.dtDeleteUp.exit_crit_edge

while.end.i.dtDeleteUp.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtDeleteUp.exit

if.then209.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_size.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %214 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %i_size.i, align 8
  %sub210.i = add i64 %215, -4096
  store i64 %sub210.i, ptr %i_size.i, align 8
  br label %dtDeleteUp.exit

dtDeleteUp.exit:                                  ; preds = %if.then209.i, %while.end.i.dtDeleteUp.exit_crit_edge, %if.then126.i, %if.then120.i.dtDeleteUp.exit_crit_edge, %if.then109.i, %if.then99.i.dtDeleteUp.exit_crit_edge, %if.end80.i, %do.end.i, %if.else41.i.dtDeleteUp.exit_crit_edge, %if.then18.i, %if.then12.i.dtDeleteUp.exit_crit_edge, %if.then7.i, %if.then.i.dtDeleteUp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then7.i ], [ 0, %if.then.i.dtDeleteUp.exit_crit_edge ], [ %call11.i, %if.then18.i ], [ %call11.i, %if.then12.i.dtDeleteUp.exit_crit_edge ], [ 0, %if.then109.i ], [ 0, %if.then99.i.dtDeleteUp.exit_crit_edge ], [ %call118.i, %if.then126.i ], [ %call118.i, %if.then120.i.dtDeleteUp.exit_crit_edge ], [ 0, %if.then209.i ], [ 0, %while.end.i.dtDeleteUp.exit_crit_edge ], [ -5, %if.end80.i ], [ -5, %do.end.i ], [ -5, %if.else41.i.dtDeleteUp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtlck.i) #8
  br label %cleanup

if.else135:                                       ; preds = %if.end128
  %216 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %8, align 8
  %218 = and i16 %217, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %218)
  %cmp139 = icmp eq i16 %218, 0
  br i1 %cmp139, label %if.then141, label %if.else142

if.then141:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end144

if.else142:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #10
  %flag143 = getelementptr inbounds %struct.metapage, ptr %8, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag143) #8
  br label %if.end144

if.end144:                                        ; preds = %if.else142, %if.then141
  %call145 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %8, i32 noundef 8193) #8
  %lock = getelementptr inbounds %struct.tlock, ptr %call145, i32 0, i32 6
  %219 = ptrtoint ptr %dtlck to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %lock, ptr %dtlck, align 4
  %index146 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %220 = ptrtoint ptr %index146 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %index146, align 1
  %maxcnt = getelementptr inbounds %struct.tlock, ptr %call145, i32 0, i32 6, i32 1
  %222 = ptrtoint ptr %maxcnt to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %maxcnt, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %221, i8 %223)
  %cmp149.not = icmp slt i8 %221, %223
  br i1 %cmp149.not, label %if.end144.if.end153_crit_edge, label %if.then151

if.end144.if.end153_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then151:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  %call152 = call ptr @txLinelock(ptr noundef %lock) #8
  %224 = ptrtoint ptr %dtlck to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call152, ptr %dtlck, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end144.if.end153_crit_edge
  %225 = ptrtoint ptr %dtlck to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dtlck, align 4
  %index155 = getelementptr inbounds %struct.linelock, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %index155 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %index155, align 1
  %idxprom156 = sext i8 %228 to i32
  %arrayidx157 = getelementptr %struct.linelock, ptr %226, i32 0, i32 6, i32 %idxprom156
  %229 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %arrayidx157, align 1
  %length = getelementptr %struct.linelock, ptr %226, i32 0, i32 6, i32 %idxprom156, i32 1
  %230 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 1, ptr %length, align 1
  %231 = load i8, ptr %index155, align 1
  %inc = add i8 %231, 1
  store i8 %inc, ptr %index155, align 1
  %flag159 = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 2
  %232 = ptrtoint ptr %flag159 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %flag159, align 8
  %234 = and i8 %233, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool162.not = icmp eq i8 %234, 0
  br i1 %tobool162.not, label %if.then163, label %if.end153.if.end192_crit_edge

if.end153.if.end192_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192

if.then163:                                       ; preds = %if.end153
  %maxcnt166 = getelementptr inbounds %struct.linelock, ptr %226, i32 0, i32 1
  %235 = ptrtoint ptr %maxcnt166 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %maxcnt166, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc, i8 %236)
  %cmp168.not = icmp slt i8 %inc, %236
  br i1 %cmp168.not, label %if.then163.if.end172_crit_edge, label %if.then170

if.then163.if.end172_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then170:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  %call171 = call ptr @txLinelock(ptr noundef %226) #8
  %237 = ptrtoint ptr %dtlck to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call171, ptr %dtlck, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.then163.if.end172_crit_edge
  %238 = ptrtoint ptr %dtlck to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dtlck, align 4
  %index174 = getelementptr inbounds %struct.linelock, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %index174 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %index174, align 1
  %idxprom175 = sext i8 %241 to i32
  %arrayidx176 = getelementptr %struct.linelock, ptr %239, i32 0, i32 6, i32 %idxprom175
  %shr = ashr i32 %conv, 5
  %stblindex177 = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 7
  %242 = ptrtoint ptr %stblindex177 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %stblindex177, align 1
  %244 = trunc i32 %shr to i8
  %conv180 = add i8 %243, %244
  %245 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv180, ptr %arrayidx176, align 1
  %246 = ptrtoint ptr %nextindex129 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %nextindex129, align 1
  %conv183 = zext i8 %247 to i32
  %sub184 = add nuw nsw i32 %conv183, 8191
  %248 = lshr i32 %sub184, 5
  %sub186 = sub nsw i32 %248, %shr
  %249 = trunc i32 %sub186 to i8
  %conv188 = add i8 %249, 1
  %length189 = getelementptr %struct.linelock, ptr %239, i32 0, i32 6, i32 %idxprom175, i32 1
  %250 = ptrtoint ptr %length189 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv188, ptr %length189, align 1
  %251 = load i8, ptr %index174, align 1
  %inc191 = add i8 %251, 1
  store i8 %inc191, ptr %index174, align 1
  br label %if.end192

if.end192:                                        ; preds = %if.end172, %if.end153.if.end192_crit_edge
  call fastcc void @dtDeleteEntry(ptr noundef %p.0, i32 noundef %conv, ptr noundef nonnull %dtlck)
  %252 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i341 = getelementptr inbounds %struct.super_block, ptr %253, i32 0, i32 33
  %254 = ptrtoint ptr %s_fs_info.i341 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %s_fs_info.i341, align 16
  %mntflag195 = getelementptr inbounds %struct.jfs_sb_info, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %mntflag195 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %mntflag195, align 4
  %and196 = and i32 %257, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end192.if.end229_crit_edge, label %land.lhs.true198

if.end192.if.end229_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

land.lhs.true198:                                 ; preds = %if.end192
  %258 = ptrtoint ptr %nextindex129 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %nextindex129, align 1
  %conv200 = zext i8 %259 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv200)
  %cmp201 = icmp slt i32 %conv, %conv200
  br i1 %cmp201, label %if.then203, label %land.lhs.true198.if.end229_crit_edge

land.lhs.true198.if.end229_crit_edge:             ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.then203:                                       ; preds = %land.lhs.true198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lblock) #8
  %260 = ptrtoint ptr %lblock to i32
  call void @__asan_store8_noabort(i32 %260)
  store i64 -1, ptr %lblock, align 8, !annotation !228
  %261 = ptrtoint ptr %imp to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr null, ptr %imp, align 4
  %262 = ptrtoint ptr %flag159 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %flag159, align 8
  %264 = and i8 %263, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool207.not = icmp eq i8 %264, 0
  br i1 %tobool207.not, label %cond.false211, label %cond.true208

cond.true208:                                     ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  %stbl209 = getelementptr inbounds %struct.anon.75, ptr %p.0, i32 0, i32 6
  br label %cond.end215

cond.false211:                                    ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex212 = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 7
  %265 = ptrtoint ptr %stblindex212 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %stblindex212, align 1
  %idxprom213 = zext i8 %266 to i32
  %arrayidx214 = getelementptr [128 x %struct.dtslot], ptr %p.0, i32 0, i32 %idxprom213
  br label %cond.end215

cond.end215:                                      ; preds = %cond.false211, %cond.true208
  %cond216 = phi ptr [ %stbl209, %cond.true208 ], [ %arrayidx214, %cond.false211 ]
  %267 = ptrtoint ptr %nextindex129 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %nextindex129, align 1
  %conv218366 = zext i8 %268 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv218366)
  %cmp219367 = icmp slt i32 %conv, %conv218366
  br i1 %cmp219367, label %cond.end215.for.body_crit_edge, label %cond.end215.for.end_crit_edge

cond.end215.for.end_crit_edge:                    ; preds = %cond.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cond.end215.for.body_crit_edge:                   ; preds = %cond.end215
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end215.for.body_crit_edge
  %i.0368 = phi i32 [ %inc225, %for.body.for.body_crit_edge ], [ %conv, %cond.end215.for.body_crit_edge ]
  %arrayidx221 = getelementptr i8, ptr %cond216, i32 %i.0368
  %269 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx221, align 1
  %idxprom222 = zext i8 %270 to i32
  %index224 = getelementptr [128 x %struct.dtslot], ptr %p.0, i32 0, i32 %idxprom222, i32 2, i32 13
  %271 = ptrtoint ptr %index224 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %index224, align 4
  %273 = call i32 @llvm.bswap.i32(i32 %272)
  call fastcc void @modify_index(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %273, i64 noundef %6, i32 noundef %i.0368, ptr noundef nonnull %imp, ptr noundef nonnull %lblock)
  %inc225 = add nsw i32 %i.0368, 1
  %274 = ptrtoint ptr %nextindex129 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %nextindex129, align 1
  %conv218 = zext i8 %275 to i32
  %cmp219 = icmp slt i32 %inc225, %conv218
  br i1 %cmp219, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cond.end215.for.end_crit_edge
  %276 = ptrtoint ptr %imp to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %imp, align 4
  %tobool226.not = icmp eq ptr %277, null
  br i1 %tobool226.not, label %for.end.if.end228_crit_edge, label %if.then227

for.end.if.end228_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228

if.then227:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %277) #8
  br label %if.end228

if.end228:                                        ; preds = %if.then227, %for.end.if.end228_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lblock) #8
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %land.lhs.true198.if.end229_crit_edge, %if.end192.if.end229_crit_edge
  %278 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %8, align 8
  %280 = and i16 %279, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %280)
  %cmp233 = icmp eq i16 %280, 0
  br i1 %cmp233, label %if.end229.cleanup_crit_edge, label %if.then235

if.end229.cleanup_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then235:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then235, %if.end229.cleanup_crit_edge, %dtDeleteUp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i, %dtDeleteUp.exit ], [ %rc.3, %if.end229.cleanup_crit_edge ], [ %rc.3, %if.then235 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtlck) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imp) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dtDeleteEntry(ptr nocapture noundef %p, i32 noundef %fi, ptr nocapture noundef %dtlock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dtlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtlock, align 4
  %flag = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flag, align 8
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stbl1 = getelementptr inbounds %struct.anon.75, ptr %p, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 7
  %5 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stblindex, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %stbl1, %cond.true ], [ %arrayidx, %cond.false ]
  %arrayidx2 = getelementptr i8, ptr %cond, i32 %fi
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %8 to i32
  %index = getelementptr inbounds %struct.linelock, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index, align 1
  %maxcnt = getelementptr inbounds %struct.linelock, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %maxcnt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %maxcnt, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.not = icmp slt i8 %10, %12
  br i1 %cmp.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @txLinelock(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %dtlck.0 = phi ptr [ %call, %if.then ], [ %1, %cond.end.if.end_crit_edge ]
  %index8 = getelementptr inbounds %struct.linelock, ptr %dtlck.0, i32 0, i32 2
  %13 = ptrtoint ptr %index8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %index8, align 1
  %idxprom9 = sext i8 %14 to i32
  %arrayidx10 = getelementptr %struct.linelock, ptr %dtlck.0, i32 0, i32 6, i32 %idxprom9
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %8, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %conv3
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flag, align 8
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp eq i8 %18, 0
  %next = getelementptr inbounds %struct.ldtentry, ptr %arrayidx12, i32 0, i32 1
  %next19 = getelementptr inbounds %struct.idtentry, ptr %arrayidx12, i32 0, i32 1
  %si.0.in.in = select i1 %tobool16.not, ptr %next19, ptr %next
  %19 = ptrtoint ptr %si.0.in.in to i32
  call void @__asan_load1_noabort(i32 %19)
  %si.0.in = load i8, ptr %si.0.in.in, align 4
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %si.0.in, ptr %arrayidx12, align 2
  %cnt = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %conv3, i32 1
  %21 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %si.0.in)
  %cmp24128 = icmp sgt i8 %si.0.in, -1
  br i1 %cmp24128, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %if.end.while.body_crit_edge
  %n.0134 = phi i32 [ %inc46, %if.end45.while.body_crit_edge ], [ 1, %if.end.while.body_crit_edge ]
  %xsi.0133 = phi i32 [ %si.1135141, %if.end45.while.body_crit_edge ], [ %conv3, %if.end.while.body_crit_edge ]
  %lv.0132 = phi ptr [ %lv.2, %if.end45.while.body_crit_edge ], [ %arrayidx10, %if.end.while.body_crit_edge ]
  %dtlck.1131 = phi ptr [ %dtlck.3, %if.end45.while.body_crit_edge ], [ %dtlck.0, %if.end.while.body_crit_edge ]
  %freecnt.0130 = phi i32 [ %inc47, %if.end45.while.body_crit_edge ], [ 1, %if.end.while.body_crit_edge ]
  %si.1.in129 = phi i8 [ %30, %if.end45.while.body_crit_edge ], [ %si.0.in, %if.end.while.body_crit_edge ]
  %si.1135141 = zext i8 %si.1.in129 to i32
  %add = add nsw i32 %xsi.0133, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %si.1135141)
  %cmp26.not = icmp eq i32 %add, %si.1135141
  br i1 %cmp26.not, label %while.body.if.end45_crit_edge, label %if.then28

while.body.if.end45_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then28:                                        ; preds = %while.body
  %conv29 = trunc i32 %n.0134 to i8
  %length = getelementptr inbounds %struct.lv, ptr %lv.0132, i32 0, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv29, ptr %length, align 1
  %index30 = getelementptr inbounds %struct.linelock, ptr %dtlck.1131, i32 0, i32 2
  %23 = ptrtoint ptr %index30 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index30, align 1
  %inc = add i8 %24, 1
  store i8 %inc, ptr %index30, align 1
  %maxcnt33 = getelementptr inbounds %struct.linelock, ptr %dtlck.1131, i32 0, i32 1
  %25 = ptrtoint ptr %maxcnt33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %maxcnt33, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc, i8 %26)
  %cmp35 = icmp slt i8 %inc, %26
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr %struct.lv, ptr %lv.0132, i32 1
  br label %if.end42

if.else38:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call ptr @txLinelock(ptr noundef %dtlck.1131) #8
  %lv40 = getelementptr inbounds %struct.linelock, ptr %call39, i32 0, i32 6
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then37
  %dtlck.2 = phi ptr [ %dtlck.1131, %if.then37 ], [ %call39, %if.else38 ]
  %lv.1 = phi ptr [ %incdec.ptr, %if.then37 ], [ %lv40, %if.else38 ]
  %27 = ptrtoint ptr %lv.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %si.1.in129, ptr %lv.1, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %while.body.if.end45_crit_edge
  %dtlck.3 = phi ptr [ %dtlck.2, %if.end42 ], [ %dtlck.1131, %while.body.if.end45_crit_edge ]
  %lv.2 = phi ptr [ %lv.1, %if.end42 ], [ %lv.0132, %while.body.if.end45_crit_edge ]
  %n.1 = phi i32 [ 0, %if.end42 ], [ %n.0134, %while.body.if.end45_crit_edge ]
  %inc46 = add i32 %n.1, 1
  %inc47 = add i32 %freecnt.0130, 1
  %arrayidx48 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %si.1135141
  %cnt49 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %si.1135141, i32 1
  %28 = ptrtoint ptr %cnt49 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %cnt49, align 1
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx48, align 2
  %cmp24 = icmp sgt i8 %30, -1
  br i1 %cmp24, label %if.end45.while.body_crit_edge, label %while.end.loopexit

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end.loopexit:                               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = trunc i32 %inc46 to i8
  %phi.cast140 = trunc i32 %inc47 to i8
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end.while.end_crit_edge
  %t.0.lcssa = phi ptr [ %arrayidx12, %if.end.while.end_crit_edge ], [ %arrayidx48, %while.end.loopexit ]
  %freecnt.0.lcssa = phi i8 [ 1, %if.end.while.end_crit_edge ], [ %phi.cast140, %while.end.loopexit ]
  %dtlck.1.lcssa = phi ptr [ %dtlck.0, %if.end.while.end_crit_edge ], [ %dtlck.3, %while.end.loopexit ]
  %lv.0.lcssa = phi ptr [ %arrayidx10, %if.end.while.end_crit_edge ], [ %lv.2, %while.end.loopexit ]
  %n.0.lcssa = phi i8 [ 1, %if.end.while.end_crit_edge ], [ %phi.cast, %while.end.loopexit ]
  %length53 = getelementptr inbounds %struct.lv, ptr %lv.0.lcssa, i32 0, i32 1
  %31 = ptrtoint ptr %length53 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %n.0.lcssa, ptr %length53, align 1
  %index54 = getelementptr inbounds %struct.linelock, ptr %dtlck.1.lcssa, i32 0, i32 2
  %32 = ptrtoint ptr %index54 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %index54, align 1
  %inc55 = add i8 %33, 1
  store i8 %inc55, ptr %index54, align 1
  %34 = ptrtoint ptr %dtlock to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dtlck.1.lcssa, ptr %dtlock, align 4
  %freelist = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 5
  %35 = ptrtoint ptr %freelist to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %freelist, align 1
  %37 = ptrtoint ptr %t.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %t.0.lcssa, align 2
  store i8 %8, ptr %freelist, align 1
  %freecnt59 = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 4
  %38 = ptrtoint ptr %freecnt59 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %freecnt59, align 2
  %conv62 = add i8 %39, %freecnt.0.lcssa
  store i8 %conv62, ptr %freecnt59, align 2
  %nextindex = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 3
  %40 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nextindex, align 1
  %conv63 = zext i8 %41 to i32
  %sub = add nsw i32 %conv63, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %fi)
  %cmp64 = icmp sgt i32 %sub, %fi
  br i1 %cmp64, label %if.then66, label %while.end.if.end72_crit_edge

while.end.if.end72_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then66:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %add68 = add nsw i32 %fi, 1
  %arrayidx69 = getelementptr i8, ptr %cond, i32 %add68
  %42 = xor i32 %fi, -1
  %sub71 = add i32 %conv63, %42
  %43 = call ptr @memmove(ptr %arrayidx2, ptr %arrayidx69, i32 %sub71)
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %while.end.if.end72_crit_edge
  %44 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nextindex, align 1
  %dec = add i8 %45, -1
  store i8 %dec, ptr %nextindex, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @modify_index(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %index, i64 noundef %bn, i32 noundef %slot, ptr nocapture noundef %mp, ptr nocapture noundef %lblock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @find_index(ptr noundef %ip, i32 noundef %index, ptr noundef %mp, ptr noundef %lblock)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %bn, 32
  %conv = trunc i64 %shr to i8
  %addr1 = getelementptr inbounds %struct.dir_table_slot, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %addr1, align 1
  %conv1 = trunc i64 %bn to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %conv1)
  %addr2 = getelementptr inbounds %struct.dir_table_slot, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %addr2, align 4
  %conv2 = trunc i32 %slot to i8
  %slot3 = getelementptr inbounds %struct.dir_table_slot, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %slot3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %slot3, align 2
  %4 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mp, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call.i = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %5, i32 noundef 512) #8
  %lock.i = getelementptr inbounds %struct.tlock, ptr %call.i, i32 0, i32 6
  %index1.i = getelementptr inbounds %struct.linelock, ptr %lock.i, i32 0, i32 2
  %6 = ptrtoint ptr %index1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index1.i, align 1
  %maxcnt.i = getelementptr inbounds %struct.tlock, ptr %call.i, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %maxcnt.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %maxcnt.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.not.i = icmp slt i8 %7, %9
  br i1 %cmp.not.i, label %if.then5.lock_index.exit_crit_edge, label %if.then.i

if.then5.lock_index.exit_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_index.exit

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call ptr @txLinelock(ptr noundef %lock.i) #8
  br label %lock_index.exit

lock_index.exit:                                  ; preds = %if.then.i, %if.then5.lock_index.exit_crit_edge
  %llck.0.i = phi ptr [ %call4.i, %if.then.i ], [ %lock.i, %if.then5.lock_index.exit_crit_edge ]
  %index6.i = getelementptr inbounds %struct.linelock, ptr %llck.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %index6.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index6.i, align 1
  %idxprom.i = sext i8 %11 to i32
  %arrayidx.i = getelementptr %struct.linelock, ptr %llck.0.i, i32 0, i32 6, i32 %idxprom.i
  %sub.i = add i32 %index, 510
  %and.i = lshr i32 %sub.i, 1
  %conv7.i = trunc i32 %and.i to i8
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7.i, ptr %arrayidx.i, align 1
  %length.i = getelementptr %struct.linelock, ptr %llck.0.i, i32 0, i32 6, i32 %idxprom.i, i32 1
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %length.i, align 1
  %14 = load i8, ptr %index6.i, align 1
  %inc.i = add i8 %14, 1
  store i8 %inc.i, ptr %index6.i, align 1
  %15 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mp, align 4
  %flag = getelementptr inbounds %struct.metapage, ptr %16, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cflag = getelementptr i8, ptr %ip, i32 -768
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cflag) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %lock_index.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dtInitRoot(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %idotdot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mntflag, align 4
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else9, label %if.then

if.then:                                          ; preds = %entry
  %next_index.i = getelementptr i8, ptr %ip, i32 -784
  %6 = ptrtoint ptr %next_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %cmp.i = icmp ugt i32 %7, 14
  br i1 %cmp.i, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %8 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %tid to i32
  %arrayidx = getelementptr %struct.tblock, ptr %8, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  store i16 0, ptr %arrayidx, align 4
  %call6 = tail call i64 @xtTruncate(i16 noundef zeroext %tid, ptr noundef %ip, i64 noundef 0, i32 noundef 64) #8
  %cflag = getelementptr i8, ptr %ip, i32 -768
  tail call void @_set_bit(i32 noundef 5, ptr noundef %cflag) #8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1, ptr %i_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %13 = ptrtoint ptr %next_index.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %next_index.i, align 8
  br label %if.end11

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_size10 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %14 = ptrtoint ptr %i_size10 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 256, ptr %i_size10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.end
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %call12 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %bxflag, i32 noundef 8449) #8
  %lock = getelementptr inbounds %struct.tlock, ptr %call12, i32 0, i32 6
  %index = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp = icmp eq i8 %16, 0
  br i1 %cmp, label %do.end25, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 2869, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2869, 0\0A.popsection", ""() #8, !srcloc !231
  unreachable

do.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %lv26 = getelementptr inbounds %struct.tlock, ptr %call12, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %lv26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %lv26, align 1
  %length = getelementptr inbounds %struct.lv, ptr %lv26, i32 0, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 9, ptr %length, align 1
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %index, align 1
  %flag = getelementptr i8, ptr %ip, i32 -288
  %20 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -125, ptr %flag, align 4
  %nextindex = getelementptr i8, ptr %ip, i32 -287
  %21 = ptrtoint ptr %nextindex to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %nextindex, align 1
  %arrayidx29 = getelementptr i8, ptr %ip, i32 -272
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %arrayidx29, align 2
  %incdec.ptr = getelementptr i8, ptr %ip, i32 -240
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %incdec.ptr, align 2
  %incdec.ptr.1 = getelementptr i8, ptr %ip, i32 -208
  %24 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %incdec.ptr.1, align 2
  %incdec.ptr.2 = getelementptr i8, ptr %ip, i32 -176
  %25 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %incdec.ptr.2, align 2
  %incdec.ptr.3 = getelementptr i8, ptr %ip, i32 -144
  %26 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 6, ptr %incdec.ptr.3, align 2
  %incdec.ptr.4 = getelementptr i8, ptr %ip, i32 -112
  %27 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %incdec.ptr.4, align 2
  %incdec.ptr.5 = getelementptr i8, ptr %ip, i32 -80
  %28 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %incdec.ptr.5, align 2
  %incdec.ptr.6 = getelementptr i8, ptr %ip, i32 -48
  %29 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %incdec.ptr.6, align 2
  %freelist = getelementptr i8, ptr %ip, i32 -285
  %30 = ptrtoint ptr %freelist to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %freelist, align 1
  %freecnt = getelementptr i8, ptr %ip, i32 -286
  %31 = ptrtoint ptr %freecnt to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %freecnt, align 2
  %32 = tail call i32 @llvm.bswap.i32(i32 %idotdot)
  %idotdot36 = getelementptr i8, ptr %ip, i32 -284
  %33 = ptrtoint ptr %idotdot36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %idotdot36, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xtTruncate(i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %inode.addr.i = alloca ptr, align 4
  %lblock.i = alloca i64, align 8
  %mp.i = alloca ptr, align 4
  %btstack = alloca %struct.btstack, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %nls_tab = getelementptr inbounds %struct.jfs_sb_info, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %nls_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nls_tab, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #8
  %8 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %10)
  %cmp = icmp eq i64 %10, 2147483647
  br i1 %cmp, label %entry.cleanup540_crit_edge, label %if.end

entry.cleanup540_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup540

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i792 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i792 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i792, align 16
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mntflag, align 4
  %and = and i32 %16, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else187, label %if.then4

if.then4:                                         ; preds = %if.end
  %conv = trunc i64 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool6.not = icmp eq i32 %conv, 0
  %dec = add i32 %conv, -1
  %spec.select = select i1 %tobool6.not, i32 0, i32 %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp9 = icmp ugt i32 %spec.select, 1
  br i1 %cmp9, label %if.then11, label %if.else140

if.then11:                                        ; preds = %if.then4
  %nextindex = getelementptr i8, ptr %1, i32 -287
  %17 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nextindex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp14 = icmp eq i8 %18, 0
  br i1 %cmp14, label %if.then11.if.then19_crit_edge, label %lor.lhs.false

if.then11.if.then19_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.then11
  %next_index = getelementptr i8, ptr %1, i32 -784
  %19 = ptrtoint ptr %next_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %20)
  %cmp17.not = icmp ult i32 %spec.select, %20
  br i1 %cmp17.not, label %lor.lhs.false.repeat_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false.repeat_crit_edge:                   ; preds = %lor.lhs.false
  br label %repeat

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.then11.if.then19_crit_edge
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

repeat:                                           ; preds = %if.end45.repeat_crit_edge, %lor.lhs.false.repeat_crit_edge
  %dir_index.1 = phi i32 [ %34, %if.end45.repeat_crit_edge ], [ %dec, %lor.lhs.false.repeat_crit_edge ]
  %loop_count.0 = phi i32 [ %inc, %if.end45.repeat_crit_edge ], [ 0, %lor.lhs.false.repeat_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lblock.i) #8
  %22 = ptrtoint ptr %lblock.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %lblock.i, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mp.i) #8
  %23 = ptrtoint ptr %mp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mp.i, align 4
  %call.i = call fastcc ptr @find_index(ptr noundef %1, i32 noundef %dir_index.1, ptr noundef nonnull %mp.i, ptr noundef nonnull %lblock.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then24, label %if.end.i

if.end.i:                                         ; preds = %repeat
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %call.i, align 4
  %dirtab_slot.sroa.10.0.extract.trunc = trunc i64 %25 to i32
  %26 = ptrtoint ptr %mp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mp.i, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %if.end.i.if.end26_crit_edge, label %if.then2.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %27) #8
  br label %if.end26

if.then24:                                        ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mp.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lblock.i) #8
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

if.end26:                                         ; preds = %if.then2.i, %if.end.i.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mp.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lblock.i) #8
  %29 = and i64 %25, 71776119061217280
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp28 = icmp eq i64 %29, 0
  br i1 %cmp28, label %if.then30, label %if.end51

if.then30:                                        ; preds = %if.end26
  %30 = ptrtoint ptr %next_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %next_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %loop_count.0, i32 %31)
  %cmp33 = icmp ugt i32 %loop_count.0, %31
  br i1 %cmp33, label %do.body, label %if.end45

do.body:                                          ; preds = %if.then30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %32 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp36 = icmp sgt i32 %32, 0
  br i1 %cmp36, label %do.end, label %do.body.do.end43_crit_edge

do.body.do.end43_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %do.end43

do.end43:                                         ; preds = %do.end, %do.body.do.end43_crit_edge
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

if.end45:                                         ; preds = %if.then30
  %inc = add i32 %loop_count.0, 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %dirtab_slot.sroa.10.0.extract.trunc)
  %cmp46 = icmp eq i32 %dirtab_slot.sroa.10.0.extract.trunc, -1
  br i1 %cmp46, label %if.then48, label %if.end45.repeat_crit_edge

if.end45.repeat_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

if.end51:                                         ; preds = %if.end26
  %dirtab_slot.sroa.10.0.extract.trunc.le = trunc i64 %25 to i32
  %dirtab_slot.sroa.6.0.extract.shift.le = lshr i64 %25, 40
  %dirtab_slot.sroa.6.0.extract.trunc.le = trunc i64 %dirtab_slot.sroa.6.0.extract.shift.le to i32
  %conv52 = and i64 %25, 1095216660480
  %36 = tail call i32 @llvm.bswap.i32(i32 %dirtab_slot.sroa.10.0.extract.trunc.le)
  %conv54 = zext i32 %36 to i64
  %or = or i64 %conv52, %conv54
  %conv55 = and i32 %dirtab_slot.sroa.6.0.extract.trunc.le, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %cmp57 = icmp eq i64 %or, 0
  br i1 %cmp57, label %cond.end, label %if.else

if.else:                                          ; preds = %if.end51
  %call65 = tail call ptr @__get_metapage(ptr noundef %1, i32 noundef %36, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.else68, label %cond.end.thread

if.else68:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %37 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp70 = icmp sgt i32 %37, 0
  br i1 %cmp70, label %do.end75, label %if.else68.if.then111_crit_edge

if.else68.if.then111_crit_edge:                   ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111

do.end75:                                         ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.then111

cond.end:                                         ; preds = %if.end51
  %bxflag = getelementptr i8, ptr %1, i32 -752
  %_dtroot63 = getelementptr i8, ptr %1, i32 -304
  %38 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nextindex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %39)
  %cmp90 = icmp ugt i8 %39, 9
  br i1 %cmp90, label %cond.end.if.then98_crit_edge, label %cond.end.if.end113_crit_edge

cond.end.if.end113_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

cond.end.if.then98_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

cond.end.thread:                                  ; preds = %if.else
  %data = getelementptr inbounds %struct.metapage, ptr %call65, i32 0, i32 7
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %nextindex85 = getelementptr inbounds %struct.anon.71, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %nextindex85 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nextindex85, align 1
  %maxslot = getelementptr inbounds %struct.anon.71, ptr %41, i32 0, i32 6
  %44 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %maxslot, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %43)
  %cmp90889 = icmp ult i8 %45, %43
  br i1 %cmp90889, label %cond.end.thread.if.then98_crit_edge, label %land.lhs.true

cond.end.thread.if.then98_crit_edge:              ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

land.lhs.true:                                    ; preds = %cond.end.thread
  %46 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %maxslot, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %47)
  %cmp96 = icmp ugt i8 %47, -128
  br i1 %cmp96, label %land.lhs.true.if.then98_crit_edge, label %land.lhs.true.if.end113_crit_edge

land.lhs.true.if.end113_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

land.lhs.true.if.then98_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

if.then98:                                        ; preds = %land.lhs.true.if.then98_crit_edge, %cond.end.thread.if.then98_crit_edge, %cond.end.if.then98_crit_edge
  %mp.0.ph883891 = phi ptr [ %call65, %land.lhs.true.if.then98_crit_edge ], [ %bxflag, %cond.end.if.then98_crit_edge ], [ %call65, %cond.end.thread.if.then98_crit_edge ]
  %48 = ptrtoint ptr %mp.0.ph883891 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mp.0.ph883891, align 8
  %50 = and i16 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp101 = icmp eq i16 %50, 0
  br i1 %cmp101, label %if.then98.if.end104_crit_edge, label %if.then103

if.then98.if.end104_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then103:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %mp.0.ph883891) #8
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.then98.if.end104_crit_edge
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %52, ptr noundef nonnull @.str.3) #8
  br label %if.then111

if.then111:                                       ; preds = %if.end104, %do.end75, %if.else68.if.then111_crit_edge
  %53 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

if.end113:                                        ; preds = %land.lhs.true.if.end113_crit_edge, %cond.end.if.end113_crit_edge
  %p.0874 = phi ptr [ %41, %land.lhs.true.if.end113_crit_edge ], [ %_dtroot63, %cond.end.if.end113_crit_edge ]
  %mp.1 = phi ptr [ %call65, %land.lhs.true.if.end113_crit_edge ], [ %bxflag, %cond.end.if.end113_crit_edge ]
  %flag114 = getelementptr inbounds %struct.anon.71, ptr %p.0874, i32 0, i32 2
  %54 = ptrtoint ptr %flag114 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flag114, align 8
  %56 = and i8 %55, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool117.not = icmp eq i8 %56, 0
  br i1 %tobool117.not, label %if.end113.if.end284_crit_edge, label %do.body119

if.end113.if.end284_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284

do.body119:                                       ; preds = %if.end113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %57 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp120 = icmp sgt i32 %57, 0
  br i1 %cmp120, label %do.end125, label %do.body119.do.end130_crit_edge

do.body119.do.end130_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end130

do.end125:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %do.end130

do.end130:                                        ; preds = %do.end125, %do.body119.do.end130_crit_edge
  %58 = ptrtoint ptr %mp.1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mp.1, align 8
  %60 = and i16 %59, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp134 = icmp eq i16 %60, 0
  br i1 %cmp134, label %do.end130.if.end137_crit_edge, label %if.then136

do.end130.if.end137_crit_edge:                    ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then136:                                       ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %mp.1) #8
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %do.end130.if.end137_crit_edge
  %61 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

if.else140:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp141 = icmp eq i32 %spec.select, 0
  br i1 %cmp141, label %if.then143, label %if.else140.if.end149_crit_edge

if.else140.if.end149_crit_edge:                   ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then143:                                       ; preds = %if.else140
  %62 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 1, ptr %pos, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_ino, align 8
  %conv145 = zext i32 %64 to i64
  %65 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx, align 8
  %call.i797 = tail call i32 %66(ptr noundef %ctx, ptr noundef nonnull @.str.20, i32 noundef 1, i64 noundef 1, i64 noundef %conv145, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i797)
  %cmp.i = icmp eq i32 %call.i797, 0
  br i1 %cmp.i, label %if.then143.if.end149_crit_edge, label %if.then143.cleanup540_crit_edge

if.then143.cleanup540_crit_edge:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup540

if.then143.if.end149_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.end149:                                        ; preds = %if.then143.if.end149_crit_edge, %if.else140.if.end149_crit_edge
  %67 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 2, ptr %pos, align 8
  %idotdot = getelementptr i8, ptr %1, i32 -284
  %68 = ptrtoint ptr %idotdot to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %idotdot, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %conv154 = zext i32 %70 to i64
  %71 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx, align 8
  %call.i800 = tail call i32 %72(ptr noundef %ctx, ptr noundef nonnull @.str.21, i32 noundef 2, i64 noundef 2, i64 noundef %conv154, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i800)
  %cmp.i801 = icmp eq i32 %call.i800, 0
  br i1 %cmp.i801, label %if.end157, label %if.end149.cleanup540_crit_edge

if.end149.cleanup540_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup540

if.end157:                                        ; preds = %if.end149
  %nextindex161 = getelementptr i8, ptr %1, i32 -287
  %73 = ptrtoint ptr %nextindex161 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %nextindex161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp163 = icmp eq i8 %74, 0
  br i1 %cmp163, label %if.then165, label %if.end167

if.then165:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

if.end167:                                        ; preds = %if.end157
  %call168 = call fastcc i32 @dtReadFirst(ptr noundef %1, ptr noundef nonnull %btstack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end167.cleanup540_crit_edge

if.end167.cleanup540_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup540

if.end171:                                        ; preds = %if.end167
  %76 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %btstack, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %77, align 8
  %mp174 = getelementptr inbounds %struct.btframe, ptr %77, i32 0, i32 3
  %80 = ptrtoint ptr %mp174 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mp174, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %tobool175.not = icmp eq i64 %79, 0
  br i1 %tobool175.not, label %if.else178, label %if.then176

if.then176:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %data177 = getelementptr inbounds %struct.metapage, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %data177 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data177, align 4
  br label %if.end284.sink.split

if.else178:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot181 = getelementptr i8, ptr %1, i32 -304
  br label %if.end284.sink.split

if.else187:                                       ; preds = %if.end
  %dtpos.sroa.0.0.extract.shift = lshr i64 %10, 48
  %dtpos.sroa.0.0.extract.trunc = trunc i64 %dtpos.sroa.0.0.extract.shift to i16
  %dtpos.sroa.12.0.extract.shift = lshr i64 %10, 32
  %dtpos.sroa.12.0.extract.trunc = trunc i64 %dtpos.sroa.12.0.extract.shift to i16
  %dtpos.sroa.18.0.extract.trunc = trunc i64 %10 to i32
  %dtpos.sroa.18.0.insert.ext = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %10)
  %cmp189 = icmp slt i64 %10, 2
  br i1 %cmp189, label %if.then191, label %if.end200

if.then191:                                       ; preds = %if.else187
  %84 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 1, ptr %pos, align 8
  %i_ino193 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %85 = ptrtoint ptr %i_ino193 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %i_ino193, align 8
  %conv194 = zext i32 %86 to i64
  %87 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctx, align 8
  %call.i805 = tail call i32 %88(ptr noundef %ctx, ptr noundef nonnull @.str.20, i32 noundef 1, i64 noundef 1, i64 noundef %conv194, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i805)
  %cmp.i806 = icmp eq i32 %call.i805, 0
  br i1 %cmp.i806, label %if.end200.thread, label %if.then191.cleanup540_crit_edge

if.then191.cleanup540_crit_edge:                  ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup540

if.end200:                                        ; preds = %if.else187
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dtpos.sroa.0.0.extract.trunc)
  %cmp202 = icmp eq i16 %dtpos.sroa.0.0.extract.trunc, 0
  br i1 %cmp202, label %if.then204, label %if.end200.if.end235_crit_edge

if.end200.if.end235_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end235

if.end200.thread:                                 ; preds = %if.then191
  %dtpos.sroa.12.0.insert.insert763 = and i64 %10, -281470681743361
  %dtpos.sroa.0.0.insert.insert748 = or i64 %dtpos.sroa.12.0.insert.insert763, 8589934592
  %89 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %dtpos.sroa.0.0.insert.insert748, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dtpos.sroa.0.0.extract.trunc)
  %cmp202913 = icmp eq i16 %dtpos.sroa.0.0.extract.trunc, 0
  br i1 %cmp202913, label %if.end200.thread.if.then209_crit_edge, label %if.end200.thread.if.end235_crit_edge

if.end200.thread.if.end235_crit_edge:             ; preds = %if.end200.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end235

if.end200.thread.if.then209_crit_edge:            ; preds = %if.end200.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then209

if.then204:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %dtpos.sroa.12.0.extract.trunc)
  %cmp207 = icmp eq i16 %dtpos.sroa.12.0.extract.trunc, 2
  br i1 %cmp207, label %if.then204.if.then209_crit_edge, label %do.body219

if.then204.if.then209_crit_edge:                  ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then209

if.then209:                                       ; preds = %if.then204.if.then209_crit_edge, %if.end200.thread.if.then209_crit_edge
  %idotdot213 = getelementptr i8, ptr %1, i32 -284
  %90 = ptrtoint ptr %idotdot213 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %idotdot213, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %conv214 = zext i32 %92 to i64
  %93 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ctx, align 8
  %95 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %pos, align 8
  %call.i809 = tail call i32 %94(ptr noundef %ctx, ptr noundef nonnull @.str.21, i32 noundef 2, i64 noundef %96, i64 noundef %conv214, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i809)
  %cmp.i810 = icmp eq i32 %call.i809, 0
  br i1 %cmp.i810, label %if.then209.if.end231_crit_edge, label %if.then209.cleanup540_crit_edge

if.then209.cleanup540_crit_edge:                  ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup540

if.then209.if.end231_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

do.body219:                                       ; preds = %if.then204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %97 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp220 = icmp sgt i32 %97, 0
  br i1 %cmp220, label %do.end225, label %do.body219.if.end231_crit_edge

do.body219.if.end231_crit_edge:                   ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

do.end225:                                        ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  br label %if.end231

if.end231:                                        ; preds = %do.end225, %do.body219.if.end231_crit_edge, %if.then209.if.end231_crit_edge
  %dtpos.sroa.0.0.insert.insert753 = or i64 %dtpos.sroa.18.0.insert.ext, 281474976710656
  %98 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %dtpos.sroa.0.0.insert.insert753, ptr %pos, align 8
  br label %if.end235

if.end235:                                        ; preds = %if.end231, %if.end200.thread.if.end235_crit_edge, %if.end200.if.end235_crit_edge
  %dtpos.sroa.12.1 = phi i16 [ 0, %if.end231 ], [ %dtpos.sroa.12.0.extract.trunc, %if.end200.if.end235_crit_edge ], [ 2, %if.end200.thread.if.end235_crit_edge ]
  %dtpos.sroa.0.0 = phi i16 [ 1, %if.end231 ], [ %dtpos.sroa.0.0.extract.trunc, %if.end200.if.end235_crit_edge ], [ %dtpos.sroa.0.0.extract.trunc, %if.end200.thread.if.end235_crit_edge ]
  %nextindex239 = getelementptr i8, ptr %1, i32 -287
  %99 = ptrtoint ptr %nextindex239 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %nextindex239, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp241 = icmp eq i8 %100, 0
  br i1 %cmp241, label %if.then243, label %if.end245

if.then243:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

if.end245:                                        ; preds = %if.end235
  %call.i812 = call fastcc i32 @dtReadFirst(ptr noundef %1, ptr noundef nonnull %btstack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i812)
  %tobool.not.i813 = icmp eq i32 %call.i812, 0
  br i1 %tobool.not.i813, label %if.end.i814, label %if.end245.do.body250_crit_edge

if.end245.do.body250_crit_edge:                   ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body250

if.end.i814:                                      ; preds = %if.end245
  %102 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %btstack, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %103, align 8
  %mp3.i = getelementptr inbounds %struct.btframe, ptr %103, i32 0, i32 3
  %106 = ptrtoint ptr %mp3.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mp3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %105)
  %tobool4.not.i = icmp eq i64 %105, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i814
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.metapage, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i, align 4
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i814
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot.i = getelementptr i8, ptr %1, i32 -304
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then5.i
  %p.0.i = phi ptr [ %109, %if.then5.i ], [ %_dtroot.i, %if.else.i ]
  %110 = ptrtoint ptr %pos to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %pos, align 4
  %conv11.i = sext i16 %111 to i32
  %sub.i = add nsw i32 %conv11.i, -1
  %index12.i = getelementptr inbounds %struct.dtoffset.80, ptr %pos, i32 0, i32 1
  %112 = ptrtoint ptr %index12.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %index12.i, align 2
  %conv13.i = sext i16 %113 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i815 = icmp eq i32 %sub.i, 0
  br i1 %cmp.i815, label %if.then15.i, label %if.end27.i

if.then15.i:                                      ; preds = %if.end7.i
  %nextindex.i = getelementptr inbounds %struct.anon.71, ptr %p.0.i, i32 0, i32 3
  %114 = ptrtoint ptr %nextindex.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %nextindex.i, align 1
  %conv16.i = zext i8 %115 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13.i, i32 %conv16.i)
  %cmp17.i = icmp slt i32 %conv13.i, %conv16.i
  br i1 %cmp17.i, label %if.then15.i.if.end263_crit_edge, label %if.end20.i

if.then15.i.if.end263_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

if.end20.i:                                       ; preds = %if.then15.i
  %flag.i = getelementptr inbounds %struct.anon.71, ptr %p.0.i, i32 0, i32 2
  %116 = ptrtoint ptr %flag.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %flag.i, align 8
  %118 = and i8 %117, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool22.not.i = icmp eq i8 %118, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.if.end263_crit_edge

if.end20.i.if.end263_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

if.end24.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i16 %111, 1
  %119 = ptrtoint ptr %pos to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %inc.i, ptr %pos, align 4
  %120 = ptrtoint ptr %index12.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %index12.i, align 2
  br label %a.i

if.end27.i:                                       ; preds = %if.end7.i
  %flag28.i = getelementptr inbounds %struct.anon.71, ptr %p.0.i, i32 0, i32 2
  %121 = ptrtoint ptr %flag28.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %flag28.i, align 8
  %123 = and i8 %122, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool31.not.i = icmp eq i8 %123, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end27.i.if.end263_crit_edge

if.end27.i.if.end263_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

if.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %111)
  %cmp34.i = icmp sgt i16 %111, 2
  br i1 %cmp34.i, label %b.i, label %if.end33.i.a.i_crit_edge

if.end33.i.a.i_crit_edge:                         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %a.i

a.i:                                              ; preds = %if.end33.i.a.i_crit_edge, %if.end24.i
  %index.0.i = phi i32 [ 0, %if.end24.i ], [ %conv13.i, %if.end33.i.a.i_crit_edge ]
  %124 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %p.0.i, align 8
  %126 = call i64 @llvm.bswap.i64(i64 %125) #8
  %127 = ptrtoint ptr %107 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %107, align 8
  %129 = and i16 %128, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %cmp40.i = icmp eq i16 %129, 0
  br i1 %cmp40.i, label %a.i.if.end43.i_crit_edge, label %if.then42.i

a.i.if.end43.i_crit_edge:                         ; preds = %a.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then42.i:                                      ; preds = %a.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %107) #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %a.i.if.end43.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %125)
  %cmp44.i = icmp eq i64 %125, 0
  br i1 %cmp44.i, label %if.end43.i.if.end263_crit_edge, label %if.end43.i.do.body218.i_crit_edge

if.end43.i.do.body218.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body218.i

if.end43.i.if.end263_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

b.i:                                              ; preds = %if.end33.i
  %130 = ptrtoint ptr %107 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %107, align 8
  %132 = and i16 %131, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %cmp51.i = icmp eq i16 %132, 0
  br i1 %cmp51.i, label %b.i.if.end54.i_crit_edge, label %if.then53.i

b.i.if.end54.i_crit_edge:                         ; preds = %b.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then53.i:                                      ; preds = %b.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %107) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %b.i.if.end54.i_crit_edge
  %133 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %btstack, align 8
  %add.ptr.i816 = getelementptr %struct.btframe, ptr %134, i32 -1
  %135 = ptrtoint ptr %add.ptr.i816 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %add.ptr.i816, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %136)
  %cmp57.i = icmp eq i64 %136, 0
  br i1 %cmp57.i, label %cond.end.i, label %if.else64.i

if.else64.i:                                      ; preds = %if.end54.i
  %conv65.i = trunc i64 %136 to i32
  %call66.i = call ptr @__get_metapage(ptr noundef %1, i32 noundef %conv65.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool67.not.i = icmp eq ptr %call66.i, null
  br i1 %tobool67.not.i, label %if.else70.i, label %cond.end.thread.i

if.else70.i:                                      ; preds = %if.else64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %137 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp72.i = icmp sgt i32 %137, 0
  br i1 %cmp72.i, label %do.end.i, label %if.else70.i.do.end261_crit_edge

if.else70.i.do.end261_crit_edge:                  ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end261

do.end.i:                                         ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #10
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %do.body250

cond.end.i:                                       ; preds = %if.end54.i
  %bxflag.i = getelementptr i8, ptr %1, i32 -752
  %_dtroot63.i = getelementptr i8, ptr %1, i32 -304
  %138 = ptrtoint ptr %nextindex239 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nextindex239, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %139)
  %cmp89.i = icmp ugt i8 %139, 9
  br i1 %cmp89.i, label %cond.end.i.if.then96.i_crit_edge, label %cond.end.i.do.end107.i_crit_edge

cond.end.i.do.end107.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107.i

cond.end.i.if.then96.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96.i

cond.end.thread.i:                                ; preds = %if.else64.i
  %data69.i = getelementptr inbounds %struct.metapage, ptr %call66.i, i32 0, i32 7
  %140 = ptrtoint ptr %data69.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data69.i, align 4
  %nextindex84.i = getelementptr inbounds %struct.anon.71, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %nextindex84.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %nextindex84.i, align 1
  %maxslot.i = getelementptr inbounds %struct.anon.71, ptr %141, i32 0, i32 6
  %144 = ptrtoint ptr %maxslot.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %maxslot.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %145, i8 %143)
  %cmp89536.i = icmp ult i8 %145, %143
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %145)
  %cmp94.i = icmp ugt i8 %145, -128
  %or.cond962 = or i1 %cmp89536.i, %cmp94.i
  br i1 %or.cond962, label %cond.end.thread.i.if.then96.i_crit_edge, label %cond.end.thread.i.do.end107.i_crit_edge

cond.end.thread.i.do.end107.i_crit_edge:          ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107.i

cond.end.thread.i.if.then96.i_crit_edge:          ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96.i

if.then96.i:                                      ; preds = %cond.end.thread.i.if.then96.i_crit_edge, %cond.end.i.if.then96.i_crit_edge
  %mp.0.ph528539.i = phi ptr [ %bxflag.i, %cond.end.i.if.then96.i_crit_edge ], [ %call66.i, %cond.end.thread.i.if.then96.i_crit_edge ]
  %146 = ptrtoint ptr %mp.0.ph528539.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %mp.0.ph528539.i, align 8
  %148 = and i16 %147, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %cmp100.i = icmp eq i16 %148, 0
  br i1 %cmp100.i, label %if.then96.i.if.end103.i_crit_edge, label %if.then102.i

if.then96.i.if.end103.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.then102.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.0.ph528539.i) #8
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then102.i, %if.then96.i.if.end103.i_crit_edge
  %149 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %150, ptr noundef nonnull @.str.3) #8
  br label %do.body250

do.end107.i:                                      ; preds = %cond.end.thread.i.do.end107.i_crit_edge, %cond.end.i.do.end107.i_crit_edge
  %p.1522.i = phi ptr [ %_dtroot63.i, %cond.end.i.do.end107.i_crit_edge ], [ %141, %cond.end.thread.i.do.end107.i_crit_edge ]
  %mp.1.i = phi ptr [ %bxflag.i, %cond.end.i.do.end107.i_crit_edge ], [ %call66.i, %cond.end.thread.i.do.end107.i_crit_edge ]
  %nextindex111606.i = getelementptr inbounds %struct.anon.71, ptr %p.1522.i, i32 0, i32 3
  %151 = ptrtoint ptr %nextindex111606.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %nextindex111606.i, align 1
  %conv112607.i = zext i8 %152 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv112607.i)
  %cmp113.not608.not.i = icmp sgt i32 %conv11.i, %conv112607.i
  br i1 %cmp113.not608.not.i, label %do.end107.i.while.body.i_crit_edge, label %do.end107.i.while.end.i_crit_edge

do.end107.i.while.end.i_crit_edge:                ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end107.i.while.body.i_crit_edge:               ; preds = %do.end107.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end196.i.while.body.i_crit_edge, %do.end107.i.while.body.i_crit_edge
  %conv112612.i = phi i32 [ %conv112.i, %if.end196.i.while.body.i_crit_edge ], [ %conv112607.i, %do.end107.i.while.body.i_crit_edge ]
  %pn.0611.i = phi i32 [ %sub117.i, %if.end196.i.while.body.i_crit_edge ], [ %sub.i, %do.end107.i.while.body.i_crit_edge ]
  %p.2610.i = phi ptr [ %161, %if.end196.i.while.body.i_crit_edge ], [ %p.1522.i, %do.end107.i.while.body.i_crit_edge ]
  %mp.2609.i = phi ptr [ %call141.i, %if.end196.i.while.body.i_crit_edge ], [ %mp.1.i, %do.end107.i.while.body.i_crit_edge ]
  %sub117.i = sub i32 %pn.0611.i, %conv112612.i
  %153 = ptrtoint ptr %p.2610.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %p.2610.i, align 8
  %155 = call i64 @llvm.bswap.i64(i64 %154) #8
  %156 = ptrtoint ptr %mp.2609.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %mp.2609.i, align 8
  %158 = and i16 %157, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %158)
  %cmp122.i = icmp eq i16 %158, 0
  br i1 %cmp122.i, label %while.body.i.if.end125.i_crit_edge, label %if.then124.i

while.body.i.if.end125.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

if.then124.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.2609.i) #8
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then124.i, %while.body.i.if.end125.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %154)
  %cmp126.i = icmp eq i64 %154, 0
  br i1 %cmp126.i, label %if.end125.i.if.end263_crit_edge, label %if.else139.i

if.end125.i.if.end263_crit_edge:                  ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

if.else139.i:                                     ; preds = %if.end125.i
  %conv140.i = trunc i64 %155 to i32
  %call141.i = call ptr @__get_metapage(ptr noundef %1, i32 noundef %conv140.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool142.not.i = icmp eq ptr %call141.i, null
  br i1 %tobool142.not.i, label %if.else145.i, label %if.then161.i

if.else145.i:                                     ; preds = %if.else139.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %159 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp147.i = icmp sgt i32 %159, 0
  br i1 %cmp147.i, label %do.end152.i, label %if.else145.i.do.end261_crit_edge

if.else145.i.do.end261_crit_edge:                 ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end261

do.end152.i:                                      ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #10
  %call154.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %do.body250

if.then161.i:                                     ; preds = %if.else139.i
  %data144.i = getelementptr inbounds %struct.metapage, ptr %call141.i, i32 0, i32 7
  %160 = ptrtoint ptr %data144.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data144.i, align 4
  %nextindex162.i = getelementptr inbounds %struct.anon.71, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %nextindex162.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %nextindex162.i, align 1
  %maxslot168.i = getelementptr inbounds %struct.anon.71, ptr %161, i32 0, i32 6
  %164 = ptrtoint ptr %maxslot168.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %maxslot168.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %163, i8 %165)
  %cmp172.i = icmp ugt i8 %163, %165
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %165)
  %cmp179.i = icmp ugt i8 %165, -128
  %or.cond.i = or i1 %cmp172.i, %cmp179.i
  br i1 %or.cond.i, label %if.then181.i, label %if.end196.i

if.then181.i:                                     ; preds = %if.then161.i
  %166 = ptrtoint ptr %call141.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %call141.i, align 8
  %168 = and i16 %167, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %cmp185.i = icmp eq i16 %168, 0
  br i1 %cmp185.i, label %if.then181.i.if.end188.i_crit_edge, label %if.then187.i

if.then181.i.if.end188.i_crit_edge:               ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188.i

if.then187.i:                                     ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %call141.i) #8
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.then187.i, %if.then181.i.if.end188.i_crit_edge
  %169 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %170, ptr noundef nonnull @.str.3) #8
  br label %do.body250

if.end196.i:                                      ; preds = %if.then161.i
  %171 = ptrtoint ptr %add.ptr.i816 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %155, ptr %add.ptr.i816, align 8
  %172 = ptrtoint ptr %nextindex162.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %nextindex162.i, align 1
  %conv112.i = zext i8 %173 to i32
  %cmp113.not.i = icmp slt i32 %sub117.i, %conv112.i
  br i1 %cmp113.not.i, label %if.end196.i.while.end.i_crit_edge, label %if.end196.i.while.body.i_crit_edge

if.end196.i.while.body.i_crit_edge:               ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end196.i.while.end.i_crit_edge:                ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end196.i.while.end.i_crit_edge, %do.end107.i.while.end.i_crit_edge
  %mp.2.lcssa.i = phi ptr [ %mp.1.i, %do.end107.i.while.end.i_crit_edge ], [ %call141.i, %if.end196.i.while.end.i_crit_edge ]
  %p.2.lcssa.i = phi ptr [ %p.1522.i, %do.end107.i.while.end.i_crit_edge ], [ %161, %if.end196.i.while.end.i_crit_edge ]
  %pn.0.lcssa.i = phi i32 [ %sub.i, %do.end107.i.while.end.i_crit_edge ], [ %sub117.i, %if.end196.i.while.end.i_crit_edge ]
  %flag198.i = getelementptr inbounds %struct.anon.71, ptr %p.2.lcssa.i, i32 0, i32 2
  %174 = ptrtoint ptr %flag198.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %flag198.i, align 8
  %176 = and i8 %175, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool201.not.i = icmp eq i8 %176, 0
  br i1 %tobool201.not.i, label %cond.false204.i, label %cond.true202.i

cond.true202.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %stbl203.i = getelementptr inbounds %struct.anon.75, ptr %p.2.lcssa.i, i32 0, i32 6
  br label %cond.end205.i

cond.false204.i:                                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex.i = getelementptr inbounds %struct.anon.71, ptr %p.2.lcssa.i, i32 0, i32 7
  %177 = ptrtoint ptr %stblindex.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %stblindex.i, align 1
  %idxprom.i = zext i8 %178 to i32
  %arrayidx.i = getelementptr [128 x %struct.dtslot], ptr %p.2.lcssa.i, i32 0, i32 %idxprom.i
  br label %cond.end205.i

cond.end205.i:                                    ; preds = %cond.false204.i, %cond.true202.i
  %cond206.i = phi ptr [ %stbl203.i, %cond.true202.i ], [ %arrayidx.i, %cond.false204.i ]
  %arrayidx207.i = getelementptr i8, ptr %cond206.i, i32 %pn.0.lcssa.i
  %179 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx207.i, align 1
  %idxprom208.i = sext i8 %180 to i32
  %arrayidx209.i = getelementptr [128 x %struct.dtslot], ptr %p.2.lcssa.i, i32 0, i32 %idxprom208.i
  %181 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx209.i, align 4
  %183 = shl i32 %182, 24
  %conv.i.i = zext i32 %183 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 8
  %addr2.i.i = getelementptr inbounds %struct.pxd_t, ptr %arrayidx209.i, i32 0, i32 1
  %184 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %addr2.i.i, align 4
  %186 = call i32 @llvm.bswap.i32(i32 %185) #8
  %conv1.i.i = zext i32 %186 to i64
  %add.i.i = or i64 %shl.i.i, %conv1.i.i
  %187 = ptrtoint ptr %mp.2.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %mp.2.lcssa.i, align 8
  %189 = and i16 %188, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %cmp214.i = icmp eq i16 %189, 0
  br i1 %cmp214.i, label %cond.end205.i.do.body218.i_crit_edge, label %if.then216.i

cond.end205.i.do.body218.i_crit_edge:             ; preds = %cond.end205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body218.i

if.then216.i:                                     ; preds = %cond.end205.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.2.lcssa.i) #8
  br label %do.body218.i

do.body218.i:                                     ; preds = %if.then216.i, %cond.end205.i.do.body218.i_crit_edge, %if.end43.i.do.body218.i_crit_edge
  %index.1.i = phi i32 [ %index.0.i, %if.end43.i.do.body218.i_crit_edge ], [ %conv13.i, %cond.end205.i.do.body218.i_crit_edge ], [ %conv13.i, %if.then216.i ]
  %bn.0.i = phi i64 [ %126, %if.end43.i.do.body218.i_crit_edge ], [ %add.i.i, %cond.end205.i.do.body218.i_crit_edge ], [ %add.i.i, %if.then216.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bn.0.i)
  %cmp219.i = icmp eq i64 %bn.0.i, 0
  br i1 %cmp219.i, label %cond.end258.i, label %if.else227.i

if.else227.i:                                     ; preds = %do.body218.i
  %conv228.i = trunc i64 %bn.0.i to i32
  %call229.i = call ptr @__get_metapage(ptr noundef %1, i32 noundef %conv228.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool230.not.i = icmp eq ptr %call229.i, null
  br i1 %tobool230.not.i, label %if.else233.i, label %cond.end258.thread.i

if.else233.i:                                     ; preds = %if.else227.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %190 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp235.i = icmp sgt i32 %190, 0
  br i1 %cmp235.i, label %do.end240.i, label %if.else233.i.do.end261_crit_edge

if.else233.i.do.end261_crit_edge:                 ; preds = %if.else233.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end261

do.end240.i:                                      ; preds = %if.else233.i
  call void @__sanitizer_cov_trace_pc() #10
  %call242.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %do.body250

cond.end258.i:                                    ; preds = %do.body218.i
  %bxflag223.i = getelementptr i8, ptr %1, i32 -752
  %_dtroot226.i = getelementptr i8, ptr %1, i32 -304
  %191 = ptrtoint ptr %nextindex239 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %nextindex239, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %192)
  %cmp260.i = icmp ugt i8 %192, 9
  br i1 %cmp260.i, label %cond.end258.i.if.then269.i_crit_edge, label %cond.end258.i.if.end284.i_crit_edge

cond.end258.i.if.end284.i_crit_edge:              ; preds = %cond.end258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284.i

cond.end258.i.if.then269.i_crit_edge:             ; preds = %cond.end258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then269.i

cond.end258.thread.i:                             ; preds = %if.else227.i
  %data232.i = getelementptr inbounds %struct.metapage, ptr %call229.i, i32 0, i32 7
  %193 = ptrtoint ptr %data232.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %data232.i, align 4
  %nextindex250.i = getelementptr inbounds %struct.anon.71, ptr %194, i32 0, i32 3
  %195 = ptrtoint ptr %nextindex250.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %nextindex250.i, align 1
  %maxslot256.i = getelementptr inbounds %struct.anon.71, ptr %194, i32 0, i32 6
  %197 = ptrtoint ptr %maxslot256.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %maxslot256.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %198, i8 %196)
  %cmp260575.i = icmp ult i8 %198, %196
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %198)
  %cmp267.i = icmp ugt i8 %198, -128
  %or.cond963 = or i1 %cmp260575.i, %cmp267.i
  br i1 %or.cond963, label %cond.end258.thread.i.if.then269.i_crit_edge, label %cond.end258.thread.i.if.end284.i_crit_edge

cond.end258.thread.i.if.end284.i_crit_edge:       ; preds = %cond.end258.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284.i

cond.end258.thread.i.if.then269.i_crit_edge:      ; preds = %cond.end258.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then269.i

if.then269.i:                                     ; preds = %cond.end258.thread.i.if.then269.i_crit_edge, %cond.end258.i.if.then269.i_crit_edge
  %mp.5.ph567578.i = phi ptr [ %bxflag223.i, %cond.end258.i.if.then269.i_crit_edge ], [ %call229.i, %cond.end258.thread.i.if.then269.i_crit_edge ]
  %199 = ptrtoint ptr %mp.5.ph567578.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %mp.5.ph567578.i, align 8
  %201 = and i16 %200, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %201)
  %cmp273.i = icmp eq i16 %201, 0
  br i1 %cmp273.i, label %if.then269.i.if.end276.i_crit_edge, label %if.then275.i

if.then269.i.if.end276.i_crit_edge:               ; preds = %if.then269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end276.i

if.then275.i:                                     ; preds = %if.then269.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.5.ph567578.i) #8
  br label %if.end276.i

if.end276.i:                                      ; preds = %if.then275.i, %if.then269.i.if.end276.i_crit_edge
  %202 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %203, ptr noundef nonnull @.str.3) #8
  br label %do.body250

if.end284.i:                                      ; preds = %cond.end258.thread.i.if.end284.i_crit_edge, %cond.end258.i.if.end284.i_crit_edge
  %p.4561.i = phi ptr [ %_dtroot226.i, %cond.end258.i.if.end284.i_crit_edge ], [ %194, %cond.end258.thread.i.if.end284.i_crit_edge ]
  %mp.6.i = phi ptr [ %bxflag223.i, %cond.end258.i.if.end284.i_crit_edge ], [ %call229.i, %cond.end258.thread.i.if.end284.i_crit_edge ]
  %nextindex285.i = getelementptr inbounds %struct.anon.71, ptr %p.4561.i, i32 0, i32 3
  %204 = ptrtoint ptr %nextindex285.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %nextindex285.i, align 1
  %conv286.i = zext i8 %205 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.i, i32 %conv286.i)
  %cmp287.not.i = icmp slt i32 %index.1.i, %conv286.i
  br i1 %cmp287.not.i, label %if.end284.i.if.end263_crit_edge, label %if.then289.i

if.end284.i.if.end263_crit_edge:                  ; preds = %if.end284.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

if.then289.i:                                     ; preds = %if.end284.i
  %206 = ptrtoint ptr %p.4561.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %p.4561.i, align 8
  %208 = call i64 @llvm.bswap.i64(i64 %207) #8
  %209 = ptrtoint ptr %mp.6.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %mp.6.i, align 8
  %211 = and i16 %210, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %cmp294.i = icmp eq i16 %211, 0
  br i1 %cmp294.i, label %if.then289.i.if.end297.i_crit_edge, label %if.then296.i

if.then289.i.if.end297.i_crit_edge:               ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end297.i

if.then296.i:                                     ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.6.i) #8
  br label %if.end297.i

if.end297.i:                                      ; preds = %if.then296.i, %if.then289.i.if.end297.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %207)
  %cmp298.i = icmp eq i64 %207, 0
  br i1 %cmp298.i, label %if.end297.i.if.end263_crit_edge, label %if.else311.i

if.end297.i.if.end263_crit_edge:                  ; preds = %if.end297.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

if.else311.i:                                     ; preds = %if.end297.i
  %conv312.i = trunc i64 %208 to i32
  %call313.i = call ptr @__get_metapage(ptr noundef %1, i32 noundef %conv312.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool314.not.i = icmp eq ptr %call313.i, null
  br i1 %tobool314.not.i, label %if.else317.i, label %if.then333.i

if.else317.i:                                     ; preds = %if.else311.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %212 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp319.i = icmp sgt i32 %212, 0
  br i1 %cmp319.i, label %do.end324.i, label %if.else317.i.do.end261_crit_edge

if.else317.i.do.end261_crit_edge:                 ; preds = %if.else317.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end261

do.end324.i:                                      ; preds = %if.else317.i
  call void @__sanitizer_cov_trace_pc() #10
  %call326.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %do.body250

if.then333.i:                                     ; preds = %if.else311.i
  %data316.i = getelementptr inbounds %struct.metapage, ptr %call313.i, i32 0, i32 7
  %213 = ptrtoint ptr %data316.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %data316.i, align 4
  %nextindex334.i = getelementptr inbounds %struct.anon.71, ptr %214, i32 0, i32 3
  %215 = ptrtoint ptr %nextindex334.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %nextindex334.i, align 1
  %maxslot340.i = getelementptr inbounds %struct.anon.71, ptr %214, i32 0, i32 6
  %217 = ptrtoint ptr %maxslot340.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %maxslot340.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %216, i8 %218)
  %cmp344.i = icmp ugt i8 %216, %218
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %218)
  %cmp351.i = icmp ugt i8 %218, -128
  %or.cond594.i = or i1 %cmp344.i, %cmp351.i
  br i1 %or.cond594.i, label %if.then353.i, label %if.end368.i

if.then353.i:                                     ; preds = %if.then333.i
  %219 = ptrtoint ptr %call313.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %call313.i, align 8
  %221 = and i16 %220, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %221)
  %cmp357.i = icmp eq i16 %221, 0
  br i1 %cmp357.i, label %if.then353.i.if.end360.i_crit_edge, label %if.then359.i

if.then353.i.if.end360.i_crit_edge:               ; preds = %if.then353.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end360.i

if.then359.i:                                     ; preds = %if.then353.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %call313.i) #8
  br label %if.end360.i

if.end360.i:                                      ; preds = %if.then359.i, %if.then353.i.if.end360.i_crit_edge
  %222 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %223, ptr noundef nonnull @.str.3) #8
  br label %do.body250

if.end368.i:                                      ; preds = %if.then333.i
  call void @__sanitizer_cov_trace_pc() #10
  %224 = ptrtoint ptr %pos to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %pos, align 4
  %inc370.i = add i16 %225, 1
  store i16 %inc370.i, ptr %pos, align 4
  %226 = ptrtoint ptr %index12.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %index12.i, align 2
  br label %if.end263

do.body250:                                       ; preds = %if.end360.i, %do.end324.i, %if.end276.i, %do.end240.i, %if.end188.i, %do.end152.i, %if.end103.i, %do.end.i, %if.end245.do.body250_crit_edge
  %retval.0.i817.ph.ph = phi i32 [ %call.i812, %if.end245.do.body250_crit_edge ], [ -5, %if.end103.i ], [ -5, %do.end.i ], [ -5, %if.end188.i ], [ -5, %do.end152.i ], [ -5, %if.end276.i ], [ -5, %do.end240.i ], [ -5, %if.end360.i ], [ -5, %do.end324.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %.pr = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp251 = icmp sgt i32 %.pr, 0
  br i1 %cmp251, label %do.end256, label %do.body250.do.end261_crit_edge

do.body250.do.end261_crit_edge:                   ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end261

do.end256:                                        ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #10
  %call258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %retval.0.i817.ph.ph) #12
  br label %do.end261

do.end261:                                        ; preds = %do.end256, %do.body250.do.end261_crit_edge, %if.else317.i.do.end261_crit_edge, %if.else233.i.do.end261_crit_edge, %if.else145.i.do.end261_crit_edge, %if.else70.i.do.end261_crit_edge
  %227 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

if.end263:                                        ; preds = %if.end368.i, %if.end297.i.if.end263_crit_edge, %if.end284.i.if.end263_crit_edge, %if.end125.i.if.end263_crit_edge, %if.end43.i.if.end263_crit_edge, %if.end27.i.if.end263_crit_edge, %if.end20.i.if.end263_crit_edge, %if.then15.i.if.end263_crit_edge
  %mp.9.i = phi ptr [ %107, %if.then15.i.if.end263_crit_edge ], [ %call313.i, %if.end368.i ], [ %mp.6.i, %if.end284.i.if.end263_crit_edge ], [ %107, %if.end20.i.if.end263_crit_edge ], [ %107, %if.end27.i.if.end263_crit_edge ], [ %107, %if.end43.i.if.end263_crit_edge ], [ %mp.6.i, %if.end297.i.if.end263_crit_edge ], [ %mp.2609.i, %if.end125.i.if.end263_crit_edge ]
  %bn.1.i = phi i64 [ %105, %if.then15.i.if.end263_crit_edge ], [ %208, %if.end368.i ], [ %bn.0.i, %if.end284.i.if.end263_crit_edge ], [ -1, %if.end20.i.if.end263_crit_edge ], [ -1, %if.end27.i.if.end263_crit_edge ], [ -1, %if.end43.i.if.end263_crit_edge ], [ -1, %if.end297.i.if.end263_crit_edge ], [ -1, %if.end125.i.if.end263_crit_edge ]
  %228 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %btstack, align 8
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %bn.1.i, ptr %229, align 8
  %231 = ptrtoint ptr %index12.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %index12.i, align 2
  %index376.i = getelementptr inbounds %struct.btframe, ptr %229, i32 0, i32 1
  %233 = ptrtoint ptr %index376.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %232, ptr %index376.i, align 8
  %mp377.i = getelementptr inbounds %struct.btframe, ptr %229, i32 0, i32 3
  %234 = ptrtoint ptr %mp377.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %mp.9.i, ptr %mp377.i, align 4
  %235 = load ptr, ptr %btstack, align 8
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %235, align 8
  %mp267 = getelementptr inbounds %struct.btframe, ptr %235, i32 0, i32 3
  %238 = ptrtoint ptr %mp267 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mp267, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %237)
  %tobool268.not = icmp eq i64 %237, 0
  br i1 %tobool268.not, label %if.end275.thread, label %if.end275

if.end275.thread:                                 ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot274 = getelementptr i8, ptr %1, i32 -304
  br label %if.end284.sink.split

if.end275:                                        ; preds = %if.end263
  %data270 = getelementptr inbounds %struct.metapage, ptr %239, i32 0, i32 7
  %240 = ptrtoint ptr %data270 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %data270, align 4
  %index277 = getelementptr inbounds %struct.btframe, ptr %235, i32 0, i32 1
  %242 = ptrtoint ptr %index277 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %index277, align 8
  %conv278 = sext i16 %243 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %237)
  %cmp279 = icmp slt i64 %237, 0
  br i1 %cmp279, label %if.then281, label %if.end275.if.end284_crit_edge

if.end275.if.end284_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284

if.then281:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  %244 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

if.end284.sink.split:                             ; preds = %if.end275.thread, %if.else178, %if.then176
  %.sink = phi ptr [ %235, %if.end275.thread ], [ %77, %if.else178 ], [ %77, %if.then176 ]
  %dtpos.sroa.18.0.ph = phi i32 [ %dtpos.sroa.18.0.extract.trunc, %if.end275.thread ], [ -1, %if.else178 ], [ -1, %if.then176 ]
  %dtpos.sroa.12.2.ph = phi i16 [ %dtpos.sroa.12.1, %if.end275.thread ], [ -1, %if.else178 ], [ -1, %if.then176 ]
  %dtpos.sroa.0.1.ph = phi i16 [ %dtpos.sroa.0.0, %if.end275.thread ], [ -1, %if.else178 ], [ -1, %if.then176 ]
  %p.4.ph = phi ptr [ %_dtroot274, %if.end275.thread ], [ %_dtroot181, %if.else178 ], [ %83, %if.then176 ]
  %mp.3.ph = phi ptr [ %239, %if.end275.thread ], [ %81, %if.else178 ], [ %81, %if.then176 ]
  %bn.1.ph = phi i64 [ 0, %if.end275.thread ], [ %79, %if.else178 ], [ %79, %if.then176 ]
  %index277923 = getelementptr inbounds %struct.btframe, ptr %.sink, i32 0, i32 1
  %245 = ptrtoint ptr %index277923 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %index277923, align 8
  %conv278924 = sext i16 %246 to i32
  br label %if.end284

if.end284:                                        ; preds = %if.end284.sink.split, %if.end275.if.end284_crit_edge, %if.end113.if.end284_crit_edge
  %dtpos.sroa.18.0 = phi i32 [ %dtpos.sroa.18.0.extract.trunc, %if.end275.if.end284_crit_edge ], [ -1, %if.end113.if.end284_crit_edge ], [ %dtpos.sroa.18.0.ph, %if.end284.sink.split ]
  %dtpos.sroa.12.2 = phi i16 [ %dtpos.sroa.12.1, %if.end275.if.end284_crit_edge ], [ -1, %if.end113.if.end284_crit_edge ], [ %dtpos.sroa.12.2.ph, %if.end284.sink.split ]
  %dtpos.sroa.0.1 = phi i16 [ %dtpos.sroa.0.0, %if.end275.if.end284_crit_edge ], [ -1, %if.end113.if.end284_crit_edge ], [ %dtpos.sroa.0.1.ph, %if.end284.sink.split ]
  %index.1 = phi i32 [ %conv278, %if.end275.if.end284_crit_edge ], [ %conv55, %if.end113.if.end284_crit_edge ], [ %conv278924, %if.end284.sink.split ]
  %p.4 = phi ptr [ %241, %if.end275.if.end284_crit_edge ], [ %p.0874, %if.end113.if.end284_crit_edge ], [ %p.4.ph, %if.end284.sink.split ]
  %mp.3 = phi ptr [ %239, %if.end275.if.end284_crit_edge ], [ %mp.1, %if.end113.if.end284_crit_edge ], [ %mp.3.ph, %if.end284.sink.split ]
  %bn.1 = phi i64 [ %237, %if.end275.if.end284_crit_edge ], [ %or, %if.end113.if.end284_crit_edge ], [ %bn.1.ph, %if.end284.sink.split ]
  %call285 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %cmp286 = icmp eq i32 %call285, 0
  br i1 %cmp286, label %if.then288, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end284
  %247 = inttoptr i32 %call285 to ptr
  %add328 = add i32 %call285, 4096
  %next_index353 = getelementptr i8, ptr %1, i32 -784
  %dtpos.sroa.18.0.insert.ext784 = zext i32 %dtpos.sroa.18.0 to i64
  %i_ino395 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %and.lobit966 = lshr exact i32 %and, 21
  %248 = trunc i32 %and.lobit966 to i16
  %249 = xor i16 %248, 1
  %bxflag.i839 = getelementptr i8, ptr %1, i32 -752
  %_dtroot.i840 = getelementptr i8, ptr %1, i32 -304
  %nextindex188.i = getelementptr i8, ptr %1, i32 -287
  br label %while.cond

if.then288:                                       ; preds = %if.end284
  %250 = ptrtoint ptr %mp.3 to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %mp.3, align 8
  %252 = and i16 %251, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %cmp292 = icmp eq i16 %252, 0
  br i1 %cmp292, label %if.then288.do.body296_crit_edge, label %if.then294

if.then288.do.body296_crit_edge:                  ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body296

if.then294:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.3) #8
  br label %do.body296

do.body296:                                       ; preds = %if.then294, %if.then288.do.body296_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %253 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %253)
  %cmp297 = icmp sgt i32 %253, 1
  br i1 %cmp297, label %do.end302, label %do.body296.do.end307_crit_edge

do.body296.do.end307_crit_edge:                   ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end307

do.end302:                                        ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #10
  %call304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #12
  br label %do.end307

do.end307:                                        ; preds = %do.end302, %do.body296.do.end307_crit_edge
  %254 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 2147483647, ptr %pos, align 8
  br label %cleanup540

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %dtpos.sroa.12.3 = phi i16 [ %dtpos.sroa.12.2, %while.cond.preheader ], [ %dtpos.sroa.12.7, %while.cond.backedge ]
  %dtpos.sroa.0.2 = phi i16 [ %dtpos.sroa.0.1, %while.cond.preheader ], [ %dtpos.sroa.0.4, %while.cond.backedge ]
  %page_fixed.0 = phi i32 [ 0, %while.cond.preheader ], [ %page_fixed.2, %while.cond.backedge ]
  %index.2 = phi i32 [ %index.1, %while.cond.preheader ], [ %index.5, %while.cond.backedge ]
  %p.5 = phi ptr [ %p.4, %while.cond.preheader ], [ %p.5.be, %while.cond.backedge ]
  %mp.4 = phi ptr [ %mp.3, %while.cond.preheader ], [ %mp.4.be, %while.cond.backedge ]
  %bn.2 = phi i64 [ %bn.1, %while.cond.preheader ], [ %bn.4, %while.cond.backedge ]
  %flag310 = getelementptr inbounds %struct.anon.71, ptr %p.5, i32 0, i32 2
  %255 = ptrtoint ptr %flag310 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %flag310, align 8
  %257 = and i8 %256, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool313.not = icmp eq i8 %257, 0
  br i1 %tobool313.not, label %cond.false316, label %cond.true314

cond.true314:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %stbl315 = getelementptr inbounds %struct.anon.75, ptr %p.5, i32 0, i32 6
  br label %cond.end317

cond.false316:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p.5, i32 0, i32 7
  %258 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %stblindex, align 1
  %idxprom = zext i8 %259 to i32
  %arrayidx = getelementptr [128 x %struct.dtslot], ptr %p.5, i32 0, i32 %idxprom
  br label %cond.end317

cond.end317:                                      ; preds = %cond.false316, %cond.true314
  %cond318 = phi ptr [ %stbl315, %cond.true314 ], [ %arrayidx, %cond.false316 ]
  %nextindex319 = getelementptr inbounds %struct.anon.71, ptr %p.5, i32 0, i32 3
  %260 = ptrtoint ptr %nextindex319 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %nextindex319, align 1
  %conv320998 = zext i8 %261 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %index.2, i32 %conv320998)
  %cmp321999 = icmp slt i32 %index.2, %conv320998
  br i1 %cmp321999, label %for.body.lr.ph, label %cond.end317.if.then422_crit_edge

cond.end317.if.then422_crit_edge:                 ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then422

for.body.lr.ph:                                   ; preds = %cond.end317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_fixed.0)
  %tobool358.not = icmp eq i32 %page_fixed.0, 0
  %dtpos.sroa.0.0.insert.ext755 = zext i16 %dtpos.sroa.0.2 to i64
  %dtpos.sroa.0.0.insert.shift756 = shl nuw i64 %dtpos.sroa.0.0.insert.ext755, 48
  br label %for.body

for.body:                                         ; preds = %skip_one.for.body_crit_edge, %for.body.lr.ph
  %jfs_dirents.01011 = phi i32 [ 0, %for.body.lr.ph ], [ %jfs_dirents.1, %skip_one.for.body_crit_edge ]
  %jfs_dirent.01010 = phi ptr [ %247, %for.body.lr.ph ], [ %jfs_dirent.1, %skip_one.for.body_crit_edge ]
  %i.01004 = phi i32 [ %index.2, %for.body.lr.ph ], [ %inc420, %skip_one.for.body_crit_edge ]
  %dtpos.sroa.12.41000 = phi i16 [ %dtpos.sroa.12.3, %for.body.lr.ph ], [ %spec.select789, %skip_one.for.body_crit_edge ]
  %arrayidx323 = getelementptr i8, ptr %cond318, i32 %i.01004
  %262 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx323, align 1
  %idxprom324 = sext i8 %263 to i32
  %arrayidx325 = getelementptr [128 x %struct.dtslot], ptr %p.5, i32 0, i32 %idxprom324
  %264 = ptrtoint ptr %jfs_dirent.01010 to i32
  %namlen = getelementptr inbounds %struct.ldtentry, ptr %arrayidx325, i32 0, i32 2
  %265 = ptrtoint ptr %namlen to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %namlen, align 1
  %conv326 = zext i8 %266 to i32
  %add = add i32 %264, 1
  %add327 = add i32 %add, %conv326
  call void @__sanitizer_cov_trace_cmp4(i32 %add327, i32 %add328)
  %cmp329 = icmp ugt i32 %add327, %add328
  br i1 %cmp329, label %for.body.if.end437_crit_edge, label %if.end332

for.body.if.end437_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end437

if.end332:                                        ; preds = %for.body
  %name = getelementptr inbounds %struct.jfs_dirent, ptr %jfs_dirent.01010, i32 0, i32 3
  %267 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx325, align 4
  %269 = call i32 @llvm.bswap.i32(i32 %268)
  %ino = getelementptr inbounds %struct.jfs_dirent, ptr %jfs_dirent.01010, i32 0, i32 1
  %270 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %ino, align 8
  br i1 %tobool.not, label %if.else370, label %if.then337

if.then337:                                       ; preds = %if.end332
  %271 = call i8 @llvm.umin.i8(i8 %266, i8 11)
  %index345 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx325, i32 0, i32 4
  %272 = ptrtoint ptr %index345 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %index345, align 4
  %274 = call i32 @llvm.bswap.i32(i32 %273)
  %conv346 = zext i32 %274 to i64
  %275 = ptrtoint ptr %jfs_dirent.01010 to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %conv346, ptr %jfs_dirent.01010, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %274)
  %cmp348 = icmp ult i32 %274, 2
  br i1 %cmp348, label %if.then337.if.then357_crit_edge, label %lor.lhs.false350

if.then337.if.then357_crit_edge:                  ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then357

lor.lhs.false350:                                 ; preds = %if.then337
  %276 = ptrtoint ptr %next_index353 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %next_index353, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %274, i32 %277)
  %cmp355.not = icmp ult i32 %274, %277
  br i1 %cmp355.not, label %lor.lhs.false350.if.end367_crit_edge, label %lor.lhs.false350.if.then357_crit_edge

lor.lhs.false350.if.then357_crit_edge:            ; preds = %lor.lhs.false350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then357

lor.lhs.false350.if.end367_crit_edge:             ; preds = %lor.lhs.false350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end367

if.then357:                                       ; preds = %lor.lhs.false350.if.then357_crit_edge, %if.then337.if.then357_crit_edge
  br i1 %tobool358.not, label %land.lhs.true359, label %if.then357.if.end363_crit_edge

if.then357.if.end363_crit_edge:                   ; preds = %if.then357
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end363

land.lhs.true359:                                 ; preds = %if.then357
  %278 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %279, i32 0, i32 33
  %280 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %s_fs_info.i.i, align 16
  %log.i = getelementptr inbounds %struct.jfs_sb_info, ptr %281, i32 0, i32 6
  %282 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %log.i, align 4
  %tobool.not.i821.not = icmp eq ptr %283, null
  br i1 %tobool.not.i821.not, label %land.lhs.true359.if.end363_crit_edge, label %land.lhs.true359.if.end437_crit_edge

land.lhs.true359.if.end437_crit_edge:             ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end437

land.lhs.true359.if.end363_crit_edge:             ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end363

if.end363:                                        ; preds = %land.lhs.true359.if.end363_crit_edge, %if.then357.if.end363_crit_edge
  %284 = load i32, ptr @jfs_readdir.unique_pos, align 4
  %inc364 = add i32 %284, 1
  store i32 %inc364, ptr @jfs_readdir.unique_pos, align 4
  %conv365 = sext i32 %284 to i64
  %285 = ptrtoint ptr %jfs_dirent.01010 to i32
  call void @__asan_store8_noabort(i32 %285)
  store i64 %conv365, ptr %jfs_dirent.01010, align 8
  br label %if.end367

if.end367:                                        ; preds = %if.end363, %lor.lhs.false350.if.end367_crit_edge
  %286 = ptrtoint ptr %jfs_dirent.01010 to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %jfs_dirent.01010, align 8
  %inc369 = add i64 %287, 1
  store i64 %inc369, ptr %jfs_dirent.01010, align 8
  br label %if.end379

if.else370:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  %dtpos.sroa.12.0.insert.ext770 = zext i16 %dtpos.sroa.12.41000 to i64
  %dtpos.sroa.12.0.insert.shift771 = shl nuw nsw i64 %dtpos.sroa.12.0.insert.ext770, 32
  %dtpos.sroa.12.0.insert.insert773 = or i64 %dtpos.sroa.12.0.insert.shift771, %dtpos.sroa.18.0.insert.ext784
  %dtpos.sroa.0.0.insert.insert758 = or i64 %dtpos.sroa.12.0.insert.insert773, %dtpos.sroa.0.0.insert.shift756
  %288 = ptrtoint ptr %jfs_dirent.01010 to i32
  call void @__asan_store8_noabort(i32 %288)
  store i64 %dtpos.sroa.0.0.insert.insert758, ptr %jfs_dirent.01010, align 8
  %289 = call i8 @llvm.umin.i8(i8 %266, i8 13)
  br label %if.end379

if.end379:                                        ; preds = %if.else370, %if.end367
  %len.0.in = phi i8 [ %271, %if.end367 ], [ %289, %if.else370 ]
  %len.0 = zext i8 %len.0.in to i32
  %name380 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx325, i32 0, i32 3
  %call382 = call i32 @jfs_strfromUCS_le(ptr noundef %name, ptr noundef %name380, i32 noundef %len.0, ptr noundef %7) #8
  %conv383 = trunc i32 %call382 to i16
  %name_len = getelementptr inbounds %struct.jfs_dirent, ptr %jfs_dirent.01010, i32 0, i32 2
  %290 = ptrtoint ptr %name_len to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %conv383, ptr %name_len, align 4
  %next384 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx325, i32 0, i32 1
  %291 = ptrtoint ptr %next384 to i32
  call void @__asan_load1_noabort(i32 %291)
  %next.0.in991 = load i8, ptr %next384, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %next.0.in991)
  %cmp387992 = icmp sgt i8 %next.0.in991, -1
  br i1 %cmp387992, label %if.end379.while.body389_crit_edge, label %if.end379.while.end_crit_edge

if.end379.while.end_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end379.while.body389_crit_edge:                ; preds = %if.end379
  br label %while.body389

while.body389:                                    ; preds = %if.end396.while.body389_crit_edge, %if.end379.while.body389_crit_edge
  %next.0.in997 = phi i8 [ %next.0.in, %if.end396.while.body389_crit_edge ], [ %next.0.in991, %if.end379.while.body389_crit_edge ]
  %name_ptr.0996 = phi ptr [ %add.ptr, %if.end396.while.body389_crit_edge ], [ %name, %if.end379.while.body389_crit_edge ]
  %outlen.0995 = phi i32 [ %call406, %if.end396.while.body389_crit_edge ], [ %call382, %if.end379.while.body389_crit_edge ]
  %len.1994 = phi i32 [ %296, %if.end396.while.body389_crit_edge ], [ %len.0, %if.end379.while.body389_crit_edge ]
  %d_namleft.0993 = phi i32 [ %sub, %if.end396.while.body389_crit_edge ], [ %conv326, %if.end379.while.body389_crit_edge ]
  %sub = sub i32 %d_namleft.0993, %len.1994
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp391 = icmp eq i32 %sub, 0
  br i1 %cmp391, label %if.then393, label %if.end396

if.then393:                                       ; preds = %while.body389
  call void @__sanitizer_cov_trace_pc() #10
  %292 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %i_sb, align 4
  %294 = ptrtoint ptr %i_ino395 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %i_ino395, align 8
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %293, ptr noundef nonnull @.str.31, i32 noundef %295, i64 noundef %bn.2, i32 noundef %i.01004) #8
  br label %skip_one

if.end396:                                        ; preds = %while.body389
  %add.ptr = getelementptr i8, ptr %name_ptr.0996, i32 %outlen.0995
  %next.0961 = zext i8 %next.0.in997 to i32
  %arrayidx390 = getelementptr [128 x %struct.dtslot], ptr %p.5, i32 0, i32 %next.0961
  %296 = call i32 @llvm.smin.i32(i32 %sub, i32 15)
  %name404 = getelementptr [128 x %struct.dtslot], ptr %p.5, i32 0, i32 %next.0961, i32 2
  %call406 = call i32 @jfs_strfromUCS_le(ptr noundef %add.ptr, ptr noundef %name404, i32 noundef %296, ptr noundef %7) #8
  %297 = ptrtoint ptr %name_len to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %name_len, align 4
  %299 = trunc i32 %call406 to i16
  %conv410 = add i16 %298, %299
  store i16 %conv410, ptr %name_len, align 4
  %300 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load1_noabort(i32 %300)
  %next.0.in = load i8, ptr %arrayidx390, align 2
  %cmp387 = icmp sgt i8 %next.0.in, -1
  br i1 %cmp387, label %if.end396.while.body389_crit_edge, label %if.end396.while.end_crit_edge

if.end396.while.end_crit_edge:                    ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end396.while.body389_crit_edge:                ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body389

while.end:                                        ; preds = %if.end396.while.end_crit_edge, %if.end379.while.end_crit_edge
  %inc413 = add i32 %jfs_dirents.01011, 1
  %301 = ptrtoint ptr %name_len to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %name_len, align 4
  %conv.i = zext i16 %302 to i32
  %sub.i822 = add nuw nsw i32 %conv.i, 24
  %and.i = and i32 %sub.i822, 131064
  %add.ptr.i823 = getelementptr i8, ptr %jfs_dirent.01010, i32 %and.i
  br label %skip_one

skip_one:                                         ; preds = %while.end, %if.then393
  %jfs_dirent.1 = phi ptr [ %jfs_dirent.01010, %if.then393 ], [ %add.ptr.i823, %while.end ]
  %jfs_dirents.1 = phi i32 [ %jfs_dirents.01011, %if.then393 ], [ %inc413, %while.end ]
  %spec.select789 = add i16 %dtpos.sroa.12.41000, %249
  %inc420 = add nsw i32 %i.01004, 1
  %303 = ptrtoint ptr %nextindex319 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %nextindex319, align 1
  %conv320 = zext i8 %304 to i32
  %cmp321 = icmp slt i32 %inc420, %conv320
  br i1 %cmp321, label %skip_one.for.body_crit_edge, label %skip_one.if.then422_crit_edge

skip_one.if.then422_crit_edge:                    ; preds = %skip_one
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then422

skip_one.for.body_crit_edge:                      ; preds = %skip_one
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then422:                                       ; preds = %skip_one.if.then422_crit_edge, %cond.end317.if.then422_crit_edge
  %dtpos.sroa.12.4.lcssa = phi i16 [ %dtpos.sroa.12.3, %cond.end317.if.then422_crit_edge ], [ %spec.select789, %skip_one.if.then422_crit_edge ]
  %jfs_dirents.0.lcssa = phi i32 [ 0, %cond.end317.if.then422_crit_edge ], [ %jfs_dirents.1, %skip_one.if.then422_crit_edge ]
  %305 = ptrtoint ptr %flag310 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %flag310, align 8
  %307 = and i8 %306, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool426.not = icmp eq i8 %307, 0
  br i1 %tobool426.not, label %if.else428, label %if.then422.if.end437_crit_edge

if.then422.if.end437_crit_edge:                   ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end437

if.else428:                                       ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #10
  %308 = ptrtoint ptr %p.5 to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %p.5, align 8
  %310 = call i64 @llvm.bswap.i64(i64 %309)
  %spec.select790 = select i1 %tobool.not, i16 0, i16 %dtpos.sroa.12.4.lcssa
  %spec.select791 = add i16 %dtpos.sroa.0.2, %249
  br label %if.end437

if.end437:                                        ; preds = %if.else428, %if.then422.if.end437_crit_edge, %land.lhs.true359.if.end437_crit_edge, %for.body.if.end437_crit_edge
  %jfs_dirents.0971 = phi i32 [ %jfs_dirents.0.lcssa, %if.then422.if.end437_crit_edge ], [ %jfs_dirents.0.lcssa, %if.else428 ], [ %jfs_dirents.01011, %land.lhs.true359.if.end437_crit_edge ], [ %jfs_dirents.01011, %for.body.if.end437_crit_edge ]
  %cmp321969 = phi i1 [ true, %if.then422.if.end437_crit_edge ], [ true, %if.else428 ], [ false, %land.lhs.true359.if.end437_crit_edge ], [ false, %for.body.if.end437_crit_edge ]
  %tobool462.not928 = phi i1 [ true, %if.then422.if.end437_crit_edge ], [ true, %if.else428 ], [ %cmp329, %land.lhs.true359.if.end437_crit_edge ], [ %cmp329, %for.body.if.end437_crit_edge ]
  %dtpos.sroa.12.7 = phi i16 [ %dtpos.sroa.12.4.lcssa, %if.then422.if.end437_crit_edge ], [ %spec.select790, %if.else428 ], [ %dtpos.sroa.12.41000, %land.lhs.true359.if.end437_crit_edge ], [ %dtpos.sroa.12.41000, %for.body.if.end437_crit_edge ]
  %dtpos.sroa.0.4 = phi i16 [ %dtpos.sroa.0.2, %if.then422.if.end437_crit_edge ], [ %spec.select791, %if.else428 ], [ %dtpos.sroa.0.2, %land.lhs.true359.if.end437_crit_edge ], [ %dtpos.sroa.0.2, %for.body.if.end437_crit_edge ]
  %page_fixed.1 = phi i32 [ 0, %if.then422.if.end437_crit_edge ], [ 0, %if.else428 ], [ %page_fixed.0, %for.body.if.end437_crit_edge ], [ 0, %land.lhs.true359.if.end437_crit_edge ]
  %index.5 = phi i32 [ %index.2, %if.then422.if.end437_crit_edge ], [ 0, %if.else428 ], [ %i.01004, %land.lhs.true359.if.end437_crit_edge ], [ %i.01004, %for.body.if.end437_crit_edge ]
  %bn.4 = phi i64 [ 0, %if.then422.if.end437_crit_edge ], [ %310, %if.else428 ], [ %bn.2, %land.lhs.true359.if.end437_crit_edge ], [ %bn.2, %for.body.if.end437_crit_edge ]
  %311 = ptrtoint ptr %mp.4 to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %mp.4, align 8
  %313 = and i16 %312, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %313)
  %cmp441 = icmp eq i16 %313, 0
  br i1 %cmp441, label %if.end437.if.end444_crit_edge, label %if.then443

if.end437.if.end444_crit_edge:                    ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end444

if.then443:                                       ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.4) #8
  br label %if.end444

if.end444:                                        ; preds = %if.then443, %if.end437.if.end444_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jfs_dirents.0971)
  %tobool447.not1019 = icmp eq i32 %jfs_dirents.0971, 0
  br i1 %tobool447.not1019, label %if.end444.while.end461_crit_edge, label %if.end444.while.body448_crit_edge

if.end444.while.body448_crit_edge:                ; preds = %if.end444
  br label %while.body448

if.end444.while.end461_crit_edge:                 ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end461

while.body448:                                    ; preds = %if.end459.while.body448_crit_edge, %if.end444.while.body448_crit_edge
  %dec4461021.in = phi i32 [ %dec4461021, %if.end459.while.body448_crit_edge ], [ %jfs_dirents.0971, %if.end444.while.body448_crit_edge ]
  %jfs_dirent.21020 = phi ptr [ %add.ptr.i831, %if.end459.while.body448_crit_edge ], [ %247, %if.end444.while.body448_crit_edge ]
  %314 = ptrtoint ptr %jfs_dirent.21020 to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %jfs_dirent.21020, align 8
  %316 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 %315, ptr %pos, align 8
  %name451 = getelementptr inbounds %struct.jfs_dirent, ptr %jfs_dirent.21020, i32 0, i32 3
  %name_len453 = getelementptr inbounds %struct.jfs_dirent, ptr %jfs_dirent.21020, i32 0, i32 2
  %317 = ptrtoint ptr %name_len453 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %name_len453, align 4
  %conv454 = zext i16 %318 to i32
  %ino455 = getelementptr inbounds %struct.jfs_dirent, ptr %jfs_dirent.21020, i32 0, i32 1
  %319 = ptrtoint ptr %ino455 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %ino455, align 8
  %conv456 = sext i32 %320 to i64
  %321 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %ctx, align 8
  %call.i825 = call i32 %322(ptr noundef %ctx, ptr noundef %name451, i32 noundef %conv454, i64 noundef %315, i64 noundef %conv456, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i825)
  %cmp.i826 = icmp eq i32 %call.i825, 0
  br i1 %cmp.i826, label %if.end459, label %while.body448.out_crit_edge

while.body448.out_crit_edge:                      ; preds = %while.body448
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end459:                                        ; preds = %while.body448
  %dec4461021 = add i32 %dec4461021.in, -1
  %323 = ptrtoint ptr %name_len453 to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %name_len453, align 4
  %conv.i828 = zext i16 %324 to i32
  %sub.i829 = add nuw nsw i32 %conv.i828, 24
  %and.i830 = and i32 %sub.i829, 131064
  %add.ptr.i831 = getelementptr i8, ptr %jfs_dirent.21020, i32 %and.i830
  %tobool447.not = icmp eq i32 %dec4461021, 0
  br i1 %tobool447.not, label %if.end459.while.end461_crit_edge, label %if.end459.while.body448_crit_edge

if.end459.while.body448_crit_edge:                ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body448

if.end459.while.end461_crit_edge:                 ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end461

while.end461:                                     ; preds = %if.end459.while.end461_crit_edge, %if.end444.while.end461_crit_edge
  br i1 %tobool462.not928, label %while.end461.if.end464_crit_edge, label %if.then463

while.end461.if.end464_crit_edge:                 ; preds = %while.end461
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end464

if.then463:                                       ; preds = %while.end461
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inode.addr.i)
  %325 = ptrtoint ptr %inode.addr.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %1, ptr %inode.addr.i, align 4
  %326 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %i_sb, align 4
  %call.i833 = call zeroext i16 @txBegin(ptr noundef %327, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bn.4)
  %cmp.i834 = icmp eq i64 %bn.4, 0
  br i1 %cmp.i834, label %cond.end.i841, label %if.else.i837

if.else.i837:                                     ; preds = %if.then463
  %conv.i835 = trunc i64 %bn.4 to i32
  %call3.i = call ptr @__get_metapage(ptr noundef %1, i32 noundef %conv.i835, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool.not.i836 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i836, label %if.else5.i, label %cond.end.thread.i845

if.else5.i:                                       ; preds = %if.else.i837
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %328 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %cmp7.i = icmp sgt i32 %328, 0
  br i1 %cmp7.i, label %do.end.i838, label %if.else5.i.do.end44.i_crit_edge

if.else5.i.do.end44.i_crit_edge:                  ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44.i

do.end.i838:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %do.end44.i

cond.end.i841:                                    ; preds = %if.then463
  %329 = ptrtoint ptr %nextindex188.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %nextindex188.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %330)
  %cmp22.i = icmp ugt i8 %330, 9
  br i1 %cmp22.i, label %cond.end.i841.if.then29.i_crit_edge, label %cond.end.i841.if.end47.i_crit_edge

cond.end.i841.if.end47.i_crit_edge:               ; preds = %cond.end.i841
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

cond.end.i841.if.then29.i_crit_edge:              ; preds = %cond.end.i841
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

cond.end.thread.i845:                             ; preds = %if.else.i837
  %data.i842 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 7
  %331 = ptrtoint ptr %data.i842 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %data.i842, align 4
  %nextindex.i843 = getelementptr inbounds %struct.anon.71, ptr %332, i32 0, i32 3
  %333 = ptrtoint ptr %nextindex.i843 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %nextindex.i843, align 1
  %maxslot.i844 = getelementptr inbounds %struct.anon.71, ptr %332, i32 0, i32 6
  %335 = ptrtoint ptr %maxslot.i844 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %maxslot.i844, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %336, i8 %334)
  %cmp22198.i = icmp ult i8 %336, %334
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %336)
  %cmp27.i = icmp ugt i8 %336, -128
  %or.cond964 = or i1 %cmp22198.i, %cmp27.i
  br i1 %or.cond964, label %cond.end.thread.i845.if.then29.i_crit_edge, label %cond.end.thread.i845.if.end47.i_crit_edge

cond.end.thread.i845.if.end47.i_crit_edge:        ; preds = %cond.end.thread.i845
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

cond.end.thread.i845.if.then29.i_crit_edge:       ; preds = %cond.end.thread.i845
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.then29.i:                                      ; preds = %cond.end.thread.i845.if.then29.i_crit_edge, %cond.end.i841.if.then29.i_crit_edge
  %mp.0.ph190201.i = phi ptr [ %bxflag.i839, %cond.end.i841.if.then29.i_crit_edge ], [ %call3.i, %cond.end.thread.i845.if.then29.i_crit_edge ]
  %337 = ptrtoint ptr %mp.0.ph190201.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %mp.0.ph190201.i, align 8
  %339 = and i16 %338, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %339)
  %cmp31.i = icmp eq i16 %339, 0
  br i1 %cmp31.i, label %if.then29.i.if.end34.i_crit_edge, label %if.then33.i

if.then29.i.if.end34.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then33.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.0.ph190201.i) #8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %if.then29.i.if.end34.i_crit_edge
  %340 = ptrtoint ptr %inode.addr.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %inode.addr.i, align 4
  %i_sb35.i = getelementptr inbounds %struct.inode, ptr %341, i32 0, i32 8
  %342 = ptrtoint ptr %i_sb35.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %i_sb35.i, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %343, ptr noundef nonnull @.str.3) #8
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.end34.i, %do.end.i838, %if.else5.i.do.end44.i_crit_edge
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #12
  br label %add_missing_indices.exit

if.end47.i:                                       ; preds = %cond.end.thread.i845.if.end47.i_crit_edge, %cond.end.i841.if.end47.i_crit_edge
  %p.0183.i = phi ptr [ %_dtroot.i840, %cond.end.i841.if.end47.i_crit_edge ], [ %332, %cond.end.thread.i845.if.end47.i_crit_edge ]
  %mp.1.i847 = phi ptr [ %bxflag.i839, %cond.end.i841.if.end47.i_crit_edge ], [ %call3.i, %cond.end.thread.i845.if.end47.i_crit_edge ]
  %344 = ptrtoint ptr %mp.1.i847 to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %mp.1.i847, align 8
  %346 = and i16 %345, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %346)
  %cmp51.i848 = icmp eq i16 %346, 0
  br i1 %cmp51.i848, label %if.then53.i849, label %if.else54.i

if.then53.i849:                                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %347 = ptrtoint ptr %inode.addr.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %inode.addr.i, align 4
  call void @__mark_inode_dirty(ptr noundef %348, i32 noundef 7) #8
  br label %do.body56.i

if.else54.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i850 = getelementptr inbounds %struct.metapage, ptr %mp.1.i847, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i850) #8
  br label %do.body56.i

do.body56.i:                                      ; preds = %if.else54.i, %if.then53.i849
  %flag57.i = getelementptr inbounds %struct.anon.71, ptr %p.0183.i, i32 0, i32 2
  %349 = ptrtoint ptr %flag57.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %flag57.i, align 8
  %351 = and i8 %350, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool60.not.i = icmp eq i8 %351, 0
  br i1 %tobool60.not.i, label %do.end64.i, label %do.end75.i

do.end64.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  %call66.i851 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 2930, ptr noundef nonnull @.str.90) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2930, 0\0A.popsection", ""() #8, !srcloc !232
  unreachable

do.end75.i:                                       ; preds = %do.body56.i
  %352 = ptrtoint ptr %inode.addr.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %inode.addr.i, align 4
  %call76.i852 = call ptr @txLock(i16 noundef zeroext %call.i833, ptr noundef %353, ptr noundef %mp.1.i847, i32 noundef 8193) #8
  %354 = ptrtoint ptr %mp.1.i847 to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %mp.1.i847, align 8
  %356 = and i16 %355, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %356)
  %cmp80.i = icmp eq i16 %356, 0
  br i1 %cmp80.i, label %if.then82.i, label %do.end75.i.if.end85.i_crit_edge

do.end75.i.if.end85.i_crit_edge:                  ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.i

if.then82.i:                                      ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  %type.i = getelementptr inbounds %struct.tlock, ptr %call76.i852, i32 0, i32 3
  %357 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %type.i, align 2
  %359 = or i16 %358, 256
  store i16 %359, ptr %type.i, align 2
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then82.i, %do.end75.i.if.end85.i_crit_edge
  %lock.i = getelementptr inbounds %struct.tlock, ptr %call76.i852, i32 0, i32 6
  %360 = ptrtoint ptr %flag57.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %flag57.i, align 8
  %362 = and i8 %361, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %tobool89.not.i = icmp eq i8 %362, 0
  br i1 %tobool89.not.i, label %cond.false92.i, label %cond.true90.i

cond.true90.i:                                    ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  %stbl91.i = getelementptr inbounds %struct.anon.75, ptr %p.0183.i, i32 0, i32 6
  br label %cond.end93.i

cond.false92.i:                                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex.i853 = getelementptr inbounds %struct.anon.71, ptr %p.0183.i, i32 0, i32 7
  %363 = ptrtoint ptr %stblindex.i853 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %stblindex.i853, align 1
  %idxprom.i854 = zext i8 %364 to i32
  %arrayidx.i855 = getelementptr [128 x %struct.dtslot], ptr %p.0183.i, i32 0, i32 %idxprom.i854
  br label %cond.end93.i

cond.end93.i:                                     ; preds = %cond.false92.i, %cond.true90.i
  %cond94.i = phi ptr [ %stbl91.i, %cond.true90.i ], [ %arrayidx.i855, %cond.false92.i ]
  %nextindex95.i = getelementptr inbounds %struct.anon.71, ptr %p.0183.i, i32 0, i32 3
  %365 = ptrtoint ptr %nextindex95.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %nextindex95.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %cmp97211.not.i = icmp eq i8 %366, 0
  br i1 %cmp97211.not.i, label %cond.end93.i.for.end.i_crit_edge, label %cond.end93.i.for.body.i_crit_edge

cond.end93.i.for.body.i_crit_edge:                ; preds = %cond.end93.i
  br label %for.body.i

cond.end93.i.for.end.i_crit_edge:                 ; preds = %cond.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.end93.i.for.body.i_crit_edge
  %dtlck.0214.i = phi ptr [ %dtlck.2.i, %for.inc.i.for.body.i_crit_edge ], [ %lock.i, %cond.end93.i.for.body.i_crit_edge ]
  %i.0212.i = phi i32 [ %inc127.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %cond.end93.i.for.body.i_crit_edge ]
  %arrayidx99.i = getelementptr i8, ptr %cond94.i, i32 %i.0212.i
  %367 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %arrayidx99.i, align 1
  %idxprom100.i = sext i8 %368 to i32
  %index102.i = getelementptr [128 x %struct.dtslot], ptr %p.0183.i, i32 0, i32 %idxprom100.i, i32 2, i32 13
  %369 = ptrtoint ptr %index102.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %index102.i, align 4
  %371 = call i32 @llvm.bswap.i32(i32 %370) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %371)
  %cmp103.i = icmp ult i32 %371, 2
  br i1 %cmp103.i, label %for.body.i.if.then109.i_crit_edge, label %lor.lhs.false105.i

for.body.i.if.then109.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109.i

lor.lhs.false105.i:                               ; preds = %for.body.i
  %372 = ptrtoint ptr %inode.addr.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %inode.addr.i, align 4
  %next_index.i = getelementptr i8, ptr %373, i32 -784
  %374 = ptrtoint ptr %next_index.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %next_index.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %371, i32 %375)
  %cmp107.not.i = icmp ult i32 %371, %375
  br i1 %cmp107.not.i, label %lor.lhs.false105.i.for.inc.i_crit_edge, label %lor.lhs.false105.i.if.then109.i_crit_edge

lor.lhs.false105.i.if.then109.i_crit_edge:        ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109.i

lor.lhs.false105.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then109.i:                                     ; preds = %lor.lhs.false105.i.if.then109.i_crit_edge, %for.body.i.if.then109.i_crit_edge
  %376 = ptrtoint ptr %inode.addr.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %inode.addr.i, align 4
  %call110.i = call fastcc i32 @add_index(i16 noundef zeroext %call.i833, ptr noundef %377, i64 noundef %bn.4, i32 noundef %i.0212.i) #8
  %378 = call i32 @llvm.bswap.i32(i32 %call110.i) #8
  %379 = ptrtoint ptr %index102.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %index102.i, align 4
  %index112.i = getelementptr inbounds %struct.linelock, ptr %dtlck.0214.i, i32 0, i32 2
  %380 = ptrtoint ptr %index112.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %index112.i, align 1
  %maxcnt.i = getelementptr inbounds %struct.linelock, ptr %dtlck.0214.i, i32 0, i32 1
  %382 = ptrtoint ptr %maxcnt.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %maxcnt.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %381, i8 %383)
  %cmp115.not.i = icmp slt i8 %381, %383
  br i1 %cmp115.not.i, label %if.then109.i.if.end119.i_crit_edge, label %if.then117.i

if.then109.i.if.end119.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119.i

if.then117.i:                                     ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #10
  %call118.i = call ptr @txLinelock(ptr noundef %dtlck.0214.i) #8
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then117.i, %if.then109.i.if.end119.i_crit_edge
  %dtlck.1.i = phi ptr [ %call118.i, %if.then117.i ], [ %dtlck.0214.i, %if.then109.i.if.end119.i_crit_edge ]
  %index121.i = getelementptr inbounds %struct.linelock, ptr %dtlck.1.i, i32 0, i32 2
  %384 = ptrtoint ptr %index121.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %index121.i, align 1
  %idxprom122.i = sext i8 %385 to i32
  %arrayidx123.i = getelementptr %struct.linelock, ptr %dtlck.1.i, i32 0, i32 6, i32 %idxprom122.i
  %386 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx99.i, align 1
  %388 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %387, ptr %arrayidx123.i, align 1
  %length.i = getelementptr %struct.linelock, ptr %dtlck.1.i, i32 0, i32 6, i32 %idxprom122.i, i32 1
  %389 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 1, ptr %length.i, align 1
  %390 = load i8, ptr %index121.i, align 1
  %inc.i856 = add i8 %390, 1
  store i8 %inc.i856, ptr %index121.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end119.i, %lor.lhs.false105.i.for.inc.i_crit_edge
  %dtlck.2.i = phi ptr [ %dtlck.1.i, %if.end119.i ], [ %dtlck.0214.i, %lor.lhs.false105.i.for.inc.i_crit_edge ]
  %inc127.i = add nuw nsw i32 %i.0212.i, 1
  %391 = ptrtoint ptr %nextindex95.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %nextindex95.i, align 1
  %conv96.i = zext i8 %392 to i32
  %cmp97.i = icmp ult i32 %inc127.i, %conv96.i
  br i1 %cmp97.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cond.end93.i.for.end.i_crit_edge
  %393 = ptrtoint ptr %mp.1.i847 to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %mp.1.i847, align 8
  %395 = and i16 %394, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %395)
  %cmp131.i = icmp eq i16 %395, 0
  br i1 %cmp131.i, label %for.end.i.if.end134.i_crit_edge, label %if.then133.i

for.end.i.if.end134.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134.i

if.then133.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.1.i847) #8
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then133.i, %for.end.i.if.end134.i_crit_edge
  %call135.i = call i32 @txCommit(i16 noundef zeroext %call.i833, i32 noundef 1, ptr noundef nonnull %inode.addr.i, i32 noundef 0) #8
  br label %add_missing_indices.exit

add_missing_indices.exit:                         ; preds = %if.end134.i, %do.end44.i
  call void @txEnd(i16 noundef zeroext %call.i833) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inode.addr.i)
  br label %if.end464

if.end464:                                        ; preds = %add_missing_indices.exit, %while.end461.if.end464_crit_edge
  %page_fixed.2 = phi i32 [ 1, %add_missing_indices.exit ], [ %page_fixed.1, %while.end461.if.end464_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bn.4)
  %cmp467 = icmp eq i64 %bn.4, 0
  %or.cond = select i1 %cmp321969, i1 %cmp467, i1 false
  br i1 %or.cond, label %if.then469, label %do.body472

if.then469:                                       ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #10
  %396 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %396)
  store i64 2147483647, ptr %pos, align 8
  br label %out

do.body472:                                       ; preds = %if.end464
  br i1 %cmp467, label %cond.end512, label %if.else481

if.else481:                                       ; preds = %do.body472
  %conv482 = trunc i64 %bn.4 to i32
  %call483 = call ptr @__get_metapage(ptr noundef %1, i32 noundef %conv482, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool484.not = icmp eq ptr %call483, null
  br i1 %tobool484.not, label %if.else487, label %cond.end512.thread

if.else487:                                       ; preds = %if.else481
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %397 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %cmp489 = icmp sgt i32 %397, 0
  br i1 %cmp489, label %do.end494, label %if.else487.if.then537_crit_edge

if.else487.if.then537_crit_edge:                  ; preds = %if.else487
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then537

do.end494:                                        ; preds = %if.else487
  call void @__sanitizer_cov_trace_pc() #10
  %call496 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.then537

cond.end512:                                      ; preds = %do.body472
  %398 = ptrtoint ptr %nextindex188.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %nextindex188.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %399)
  %cmp514 = icmp ugt i8 %399, 9
  br i1 %cmp514, label %cond.end512.if.then523_crit_edge, label %cond.end512.while.cond.backedge_crit_edge

cond.end512.while.cond.backedge_crit_edge:        ; preds = %cond.end512
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

cond.end512.if.then523_crit_edge:                 ; preds = %cond.end512
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then523

while.cond.backedge:                              ; preds = %land.lhs.true518.while.cond.backedge_crit_edge, %cond.end512.while.cond.backedge_crit_edge
  %p.5.be = phi ptr [ %_dtroot.i840, %cond.end512.while.cond.backedge_crit_edge ], [ %401, %land.lhs.true518.while.cond.backedge_crit_edge ]
  %mp.4.be = phi ptr [ %bxflag.i839, %cond.end512.while.cond.backedge_crit_edge ], [ %call483, %land.lhs.true518.while.cond.backedge_crit_edge ]
  br label %while.cond

cond.end512.thread:                               ; preds = %if.else481
  %data486 = getelementptr inbounds %struct.metapage, ptr %call483, i32 0, i32 7
  %400 = ptrtoint ptr %data486 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %data486, align 4
  %nextindex504 = getelementptr inbounds %struct.anon.71, ptr %401, i32 0, i32 3
  %402 = ptrtoint ptr %nextindex504 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %nextindex504, align 1
  %maxslot510 = getelementptr inbounds %struct.anon.71, ptr %401, i32 0, i32 6
  %404 = ptrtoint ptr %maxslot510 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %maxslot510, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %405, i8 %403)
  %cmp514948 = icmp ult i8 %405, %403
  br i1 %cmp514948, label %cond.end512.thread.if.then523_crit_edge, label %land.lhs.true518

cond.end512.thread.if.then523_crit_edge:          ; preds = %cond.end512.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then523

land.lhs.true518:                                 ; preds = %cond.end512.thread
  %406 = ptrtoint ptr %maxslot510 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %maxslot510, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %407)
  %cmp521 = icmp ugt i8 %407, -128
  br i1 %cmp521, label %land.lhs.true518.if.then523_crit_edge, label %land.lhs.true518.while.cond.backedge_crit_edge

land.lhs.true518.while.cond.backedge_crit_edge:   ; preds = %land.lhs.true518
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

land.lhs.true518.if.then523_crit_edge:            ; preds = %land.lhs.true518
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then523

if.then523:                                       ; preds = %land.lhs.true518.if.then523_crit_edge, %cond.end512.thread.if.then523_crit_edge, %cond.end512.if.then523_crit_edge
  %mp.5.ph942950 = phi ptr [ %call483, %land.lhs.true518.if.then523_crit_edge ], [ %bxflag.i839, %cond.end512.if.then523_crit_edge ], [ %call483, %cond.end512.thread.if.then523_crit_edge ]
  %408 = ptrtoint ptr %mp.5.ph942950 to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %mp.5.ph942950, align 8
  %410 = and i16 %409, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %410)
  %cmp527 = icmp eq i16 %410, 0
  br i1 %cmp527, label %if.then523.if.end530_crit_edge, label %if.then529

if.then523.if.end530_crit_edge:                   ; preds = %if.then523
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end530

if.then529:                                       ; preds = %if.then523
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %mp.5.ph942950) #8
  br label %if.end530

if.end530:                                        ; preds = %if.then529, %if.then523.if.end530_crit_edge
  %411 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %412, ptr noundef nonnull @.str.3) #8
  br label %if.then537

if.then537:                                       ; preds = %if.end530, %do.end494, %if.else487.if.then537_crit_edge
  call void @free_pages(i32 noundef %call285, i32 noundef 0) #8
  br label %cleanup540

out:                                              ; preds = %if.then469, %while.body448.out_crit_edge
  call void @free_pages(i32 noundef %call285, i32 noundef 0) #8
  br label %cleanup540

cleanup540:                                       ; preds = %out, %if.then537, %do.end307, %if.then281, %do.end261, %if.then243, %if.then209.cleanup540_crit_edge, %if.then191.cleanup540_crit_edge, %if.end167.cleanup540_crit_edge, %if.then165, %if.end149.cleanup540_crit_edge, %if.then143.cleanup540_crit_edge, %if.end137, %if.then111, %if.then48, %do.end43, %if.then24, %if.then19, %entry.cleanup540_crit_edge
  %retval.1 = phi i32 [ -12, %do.end307 ], [ 0, %out ], [ -5, %if.then537 ], [ 0, %if.then165 ], [ 0, %if.then243 ], [ 0, %do.end261 ], [ 0, %if.then281 ], [ 0, %entry.cleanup540_crit_edge ], [ 0, %if.then143.cleanup540_crit_edge ], [ 0, %if.end149.cleanup540_crit_edge ], [ %call168, %if.end167.cleanup540_crit_edge ], [ 0, %if.then191.cleanup540_crit_edge ], [ 0, %if.then209.cleanup540_crit_edge ], [ 0, %if.then19 ], [ -5, %if.then24 ], [ 0, %do.end43 ], [ 0, %if.then48 ], [ 0, %if.then111 ], [ 0, %if.end137 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dtReadFirst(ptr noundef %ip, ptr noundef %btstack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stack = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2
  %0 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %stack, ptr %btstack, align 8
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %_dtroot = getelementptr i8, ptr %ip, i32 -304
  %nextindex176 = getelementptr i8, ptr %ip, i32 -287
  %arrayidx = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 7
  %i_sb105 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %bn.0 = phi i64 [ 0, %entry ], [ %add.i, %for.cond.backedge ]
  %psize.0 = phi i32 [ 288, %entry ], [ %shl, %for.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bn.0)
  %cmp = icmp eq i64 %bn.0, 0
  br i1 %cmp, label %cond.end, label %if.else

if.else:                                          ; preds = %for.cond
  %conv = trunc i64 %bn.0 to i32
  %call2 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv, i32 noundef %psize.0, i32 noundef 1, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else4, label %cond.end.thread

if.else4:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %1 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %do.end, label %if.else4.cleanup_crit_edge

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

cond.end:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %nextindex176 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nextindex176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp21 = icmp ugt i8 %3, 9
  br i1 %cmp21, label %cond.end.if.then28_crit_edge, label %cond.end.if.end40_crit_edge

cond.end.if.end40_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

cond.end.if.then28_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

cond.end.thread:                                  ; preds = %if.else
  %data = getelementptr inbounds %struct.metapage, ptr %call2, i32 0, i32 7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %nextindex = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nextindex, align 1
  %maxslot = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %maxslot, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %7)
  %cmp21186 = icmp ult i8 %9, %7
  br i1 %cmp21186, label %cond.end.thread.if.then28_crit_edge, label %land.lhs.true

cond.end.thread.if.then28_crit_edge:              ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

land.lhs.true:                                    ; preds = %cond.end.thread
  %10 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %maxslot, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %11)
  %cmp26 = icmp ugt i8 %11, -128
  br i1 %cmp26, label %land.lhs.true.if.then28_crit_edge, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true.if.then28_crit_edge, %cond.end.thread.if.then28_crit_edge, %cond.end.if.then28_crit_edge
  %mp.0.ph178189 = phi ptr [ %call2, %land.lhs.true.if.then28_crit_edge ], [ %bxflag, %cond.end.if.then28_crit_edge ], [ %call2, %cond.end.thread.if.then28_crit_edge ]
  %12 = ptrtoint ptr %mp.0.ph178189 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mp.0.ph178189, align 8
  %14 = and i16 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp30 = icmp eq i16 %14, 0
  br i1 %cmp30, label %if.then28.if.end33_crit_edge, label %if.then32

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %mp.0.ph178189) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then28.if.end33_crit_edge
  %15 = ptrtoint ptr %i_sb105 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb105, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %16, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %cond.end.if.end40_crit_edge
  %p.0171 = phi ptr [ %5, %land.lhs.true.if.end40_crit_edge ], [ %_dtroot, %cond.end.if.end40_crit_edge ]
  %mp.1 = phi ptr [ %call2, %land.lhs.true.if.end40_crit_edge ], [ %bxflag, %cond.end.if.end40_crit_edge ]
  %flag = getelementptr inbounds %struct.anon.71, ptr %p.0171, i32 0, i32 2
  %17 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flag, align 8
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool43.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btstack, align 8
  br i1 %tobool43.not, label %if.end48, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %bn.0, ptr %21, align 8
  %index = getelementptr inbounds %struct.btframe, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %index, align 8
  %mp47 = getelementptr inbounds %struct.btframe, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %mp47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mp.1, ptr %mp47, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %cmp51 = icmp eq ptr %21, %arrayidx
  br i1 %cmp51, label %if.then53, label %do.end83

if.then53:                                        ; preds = %if.end48
  %25 = ptrtoint ptr %mp.1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mp.1, align 8
  %27 = and i16 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp57 = icmp eq i16 %27, 0
  br i1 %cmp57, label %if.then53.if.end60_crit_edge, label %if.then59

if.then53.if.end60_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then59:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %mp.1) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then53.if.end60_crit_edge
  %28 = ptrtoint ptr %i_sb105 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb105, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %29, ptr noundef nonnull @.str.111) #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  %30 = ptrtoint ptr %stack to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %stack, align 8
  %index.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %index.i, align 8
  %conv.i = sext i16 %33 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %31, i32 noundef %conv.i) #12
  %arrayidx.1.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.1.i, align 8
  %index.1.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 1, i32 1
  %36 = ptrtoint ptr %index.1.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %index.1.i, align 8
  %conv.1.i = sext i16 %37 to i32
  %call7.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %35, i32 noundef %conv.1.i) #12
  %arrayidx.2.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.2.i, align 8
  %index.2.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 2, i32 1
  %40 = ptrtoint ptr %index.2.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %index.2.i, align 8
  %conv.2.i = sext i16 %41 to i32
  %call7.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %39, i32 noundef %conv.2.i) #12
  %arrayidx.3.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.3.i, align 8
  %index.3.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 3, i32 1
  %44 = ptrtoint ptr %index.3.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %index.3.i, align 8
  %conv.3.i = sext i16 %45 to i32
  %call7.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %43, i32 noundef %conv.3.i) #12
  %arrayidx.4.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 4
  %46 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx.4.i, align 8
  %index.4.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 4, i32 1
  %48 = ptrtoint ptr %index.4.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %index.4.i, align 8
  %conv.4.i = sext i16 %49 to i32
  %call7.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %47, i32 noundef %conv.4.i) #12
  %arrayidx.5.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 5
  %50 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx.5.i, align 8
  %index.5.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 5, i32 1
  %52 = ptrtoint ptr %index.5.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %index.5.i, align 8
  %conv.5.i = sext i16 %53 to i32
  %call7.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %51, i32 noundef %conv.5.i) #12
  %arrayidx.6.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 6
  %54 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx.6.i, align 8
  %index.6.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 6, i32 1
  %56 = ptrtoint ptr %index.6.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %index.6.i, align 8
  %conv.6.i = sext i16 %57 to i32
  %call7.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %55, i32 noundef %conv.6.i) #12
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx, align 8
  %index.7.i = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 7, i32 1
  %60 = ptrtoint ptr %index.7.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %index.7.i, align 8
  %conv.7.i = sext i16 %61 to i32
  %call7.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %59, i32 noundef %conv.7.i) #12
  br label %cleanup

do.end83:                                         ; preds = %if.end48
  %62 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %bn.0, ptr %21, align 8
  %63 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %btstack, align 8
  %index87 = getelementptr inbounds %struct.btframe, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %index87 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %index87, align 8
  %66 = load ptr, ptr %btstack, align 8
  %incdec.ptr = getelementptr %struct.btframe, ptr %66, i32 1
  store ptr %incdec.ptr, ptr %btstack, align 8
  %67 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flag, align 8
  %69 = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool92.not = icmp eq i8 %69, 0
  br i1 %tobool92.not, label %cond.false96, label %cond.true93

cond.true93:                                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  %stbl94 = getelementptr inbounds %struct.anon.75, ptr %p.0171, i32 0, i32 6
  br label %cond.end98

cond.false96:                                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p.0171, i32 0, i32 7
  %70 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %stblindex, align 1
  %idxprom = zext i8 %71 to i32
  %arrayidx97 = getelementptr [128 x %struct.dtslot], ptr %p.0171, i32 0, i32 %idxprom
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false96, %cond.true93
  %cond99 = phi ptr [ %stbl94, %cond.true93 ], [ %arrayidx97, %cond.false96 ]
  %72 = ptrtoint ptr %cond99 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %cond99, align 1
  %idxprom101 = sext i8 %73 to i32
  %arrayidx102 = getelementptr [128 x %struct.dtslot], ptr %p.0171, i32 0, i32 %idxprom101
  %74 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx102, align 4
  %76 = shl i32 %75, 24
  %conv.i165 = zext i32 %76 to i64
  %shl.i = shl nuw nsw i64 %conv.i165, 8
  %addr2.i = getelementptr inbounds %struct.pxd_t, ptr %arrayidx102, i32 0, i32 1
  %77 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr2.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %conv1.i = zext i32 %79 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %80 = and i32 %75, -256
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  %82 = ptrtoint ptr %i_sb105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i_sb105, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %83, i32 0, i32 33
  %84 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_fs_info.i, align 16
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %l2bsize, align 2
  %conv107163 = zext i16 %87 to i32
  %shl = shl i32 %81, %conv107163
  %88 = ptrtoint ptr %mp.1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mp.1, align 8
  %90 = and i16 %89, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp111 = icmp eq i16 %90, 0
  br i1 %cmp111, label %cond.end98.for.cond.backedge_crit_edge, label %if.then113

cond.end98.for.cond.backedge_crit_edge:           ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then113:                                       ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %mp.1) #8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then113, %cond.end98.for.cond.backedge_crit_edge
  br label %for.cond

cleanup:                                          ; preds = %if.end60, %if.then44, %if.end33, %do.end, %if.else4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then44 ], [ -5, %if.end60 ], [ -5, %if.end33 ], [ -5, %do.end ], [ -5, %if.else4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_strfromUCS_le(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtModify(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef readonly %key, ptr nocapture noundef %orig_ino, i32 noundef %new_ino, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %btstack = alloca %struct.btstack, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #8
  %0 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  %call = call i32 @dtSearch(ptr noundef %ip, ptr noundef %key, ptr noundef %orig_ino, ptr noundef nonnull %btstack, i32 noundef %flag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btstack, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %mp4 = getelementptr inbounds %struct.btframe, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %mp4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mp4, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool5.not = icmp eq i64 %4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.metapage, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot = getelementptr i8, ptr %ip, i32 -304
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %p.0 = phi ptr [ %8, %if.then6 ], [ %_dtroot, %if.else ]
  %index10 = getelementptr inbounds %struct.btframe, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %index10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %index10, align 8
  %conv = sext i16 %10 to i32
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %6, align 8
  %13 = and i16 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp = icmp eq i16 %13, 0
  br i1 %cmp, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end16

if.else14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %flag15 = getelementptr inbounds %struct.metapage, ptr %6, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag15) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13
  %call17 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %6, i32 noundef 8193) #8
  %lock = getelementptr inbounds %struct.tlock, ptr %call17, i32 0, i32 6
  %flag18 = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 2
  %14 = ptrtoint ptr %flag18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flag18, align 8
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  br i1 %tobool21.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %stbl22 = getelementptr inbounds %struct.anon.75, ptr %p.0, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p.0, i32 0, i32 7
  %17 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stblindex, align 1
  %idxprom = zext i8 %18 to i32
  %arrayidx = getelementptr [128 x %struct.dtslot], ptr %p.0, i32 0, i32 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %stbl22, %cond.true ], [ %arrayidx, %cond.false ]
  %index25 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %19 = ptrtoint ptr %index25 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp27 = icmp eq i8 %20, 0
  br i1 %cmp27, label %do.end40, label %do.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 4546, ptr noundef nonnull @.str.10) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4546, 0\0A.popsection", ""() #8, !srcloc !233
  unreachable

do.end40:                                         ; preds = %cond.end
  %arrayidx23 = getelementptr i8, ptr %cond, i32 %conv
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %22 to i32
  %lv41 = getelementptr inbounds %struct.tlock, ptr %call17, i32 0, i32 6, i32 4
  %23 = ptrtoint ptr %lv41 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %lv41, align 1
  %length = getelementptr inbounds %struct.lv, ptr %lv41, i32 0, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %length, align 1
  %25 = ptrtoint ptr %index25 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %index25, align 1
  %arrayidx45 = getelementptr [128 x %struct.dtslot], ptr %p.0, i32 0, i32 %conv24
  %26 = call i32 @llvm.bswap.i32(i32 %new_ino)
  %27 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx45, align 4
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %6, align 8
  %30 = and i16 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp49 = icmp eq i16 %30, 0
  br i1 %cmp49, label %do.end40.cleanup_crit_edge, label %if.then51

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then51:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef %6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.end40.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbAlloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dtSplitRoot(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef readonly %split, ptr nocapture noundef writeonly %rmpp) unnamed_addr #0 align 64 {
entry:
  %dtlck = alloca ptr, align 4
  %lblock = alloca i64, align 8
  %mp100 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtlck) #8
  %2 = ptrtoint ptr %split to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %split, align 4
  %pxdlist1 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 5
  %4 = ptrtoint ptr %pxdlist1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxdlist1, align 4
  %npxd = getelementptr inbounds %struct.pxdlist, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %npxd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %npxd, align 2
  %idxprom = sext i16 %7 to i32
  %arrayidx = getelementptr %struct.pxdlist, ptr %5, i32 0, i32 2, i32 %idxprom
  %inc = add i16 %7, 1
  store i16 %inc, ptr %npxd, align 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = shl i32 %9, 24
  %conv.i = zext i32 %10 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr %struct.pxdlist, ptr %5, i32 0, i32 2, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr2.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %conv1.i = zext i32 %13 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %14 = and i32 %9, -256
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %l2bsize, align 2
  %conv328 = zext i16 %19 to i32
  %shl = shl i32 %15, %conv328
  %call8 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %13, i32 noundef %shl, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.metapage, ptr %call8, i32 0, i32 7
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = and i32 %23, -256
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %conv10 = zext i32 %25 to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %26 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %27 to i64
  %shl.i330 = shl i64 %conv10, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %ip, i64 noundef %shl.i330, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call8) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  %28 = ptrtoint ptr %call8 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call8, align 8
  %30 = and i16 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp = icmp eq i16 %30, 0
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end18

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %flag = getelementptr inbounds %struct.metapage, ptr %call8, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %call19 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %call8, i32 noundef 8224) #8
  %lock = getelementptr inbounds %struct.tlock, ptr %call19, i32 0, i32 6
  %31 = ptrtoint ptr %dtlck to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %lock, ptr %dtlck, align 4
  %flag20 = getelementptr i8, ptr %ip, i32 -288
  %32 = ptrtoint ptr %flag20 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flag20, align 4
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool23.not = icmp eq i8 %34, 0
  %conv24 = select i1 %tobool23.not, i8 4, i8 2
  %flag25 = getelementptr inbounds %struct.anon.71, ptr %21, i32 0, i32 2
  %35 = ptrtoint ptr %flag25 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv24, ptr %flag25, align 8
  %self = getelementptr inbounds %struct.anon.71, ptr %21, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %arrayidx, align 4
  %38 = ptrtoint ptr %self to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %self, align 8
  %index = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %39 = call ptr @memset(ptr %21, i32 0, i32 16)
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp27 = icmp eq i8 %41, 0
  br i1 %cmp27, label %do.end40, label %do.end

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 1934, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1934, 0\0A.popsection", ""() #8, !srcloc !234
  unreachable

do.end40:                                         ; preds = %if.end18
  %lv41 = getelementptr inbounds %struct.tlock, ptr %call19, i32 0, i32 6, i32 4
  %42 = ptrtoint ptr %lv41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %lv41, align 1
  %length = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 6, i32 0, i32 1
  %43 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 10, ptr %length, align 1
  %44 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %index, align 1
  %shr = ashr i32 %shl, 5
  %conv45 = trunc i32 %shr to i8
  %maxslot = getelementptr inbounds %struct.anon.71, ptr %21, i32 0, i32 6
  %45 = ptrtoint ptr %maxslot to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv45, ptr %maxslot, align 4
  %add = add nsw i32 %shr, 31
  %shr46 = ashr i32 %add, 5
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %21, i32 0, i32 7
  %46 = ptrtoint ptr %stblindex to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 9, ptr %stblindex, align 1
  %arrayidx47 = getelementptr [128 x %struct.dtslot], ptr %21, i32 0, i32 9
  %stbl48 = getelementptr i8, ptr %ip, i32 -280
  %nextindex = getelementptr i8, ptr %ip, i32 -287
  %47 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nextindex, align 1
  %conv49 = zext i8 %48 to i32
  %49 = call ptr @memcpy(ptr %arrayidx47, ptr %stbl48, i32 %conv49)
  %50 = load i8, ptr %nextindex, align 1
  %nextindex51 = getelementptr inbounds %struct.anon.71, ptr %21, i32 0, i32 3
  %51 = ptrtoint ptr %nextindex51 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %nextindex51, align 1
  %arrayidx52 = getelementptr [128 x %struct.dtslot], ptr %21, i32 0, i32 1
  %arrayidx53 = getelementptr i8, ptr %ip, i32 -272
  %52 = call ptr @memcpy(ptr %arrayidx52, ptr %arrayidx53, i32 256)
  %add54 = add nsw i32 %shr46, 9
  %arrayidx55 = getelementptr [128 x %struct.dtslot], ptr %21, i32 0, i32 %add54
  %inc56 = add nsw i32 %shr46, 10
  %conv58332 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %inc56, i32 %conv58332)
  %cmp59333 = icmp slt i32 %inc56, %conv58332
  br i1 %cmp59333, label %do.end40.for.body_crit_edge, label %do.end40.for.end_crit_edge

do.end40.for.end_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end40.for.body_crit_edge:                      ; preds = %do.end40
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end40.for.body_crit_edge
  %fsi.0335 = phi i32 [ %inc63, %for.body.for.body_crit_edge ], [ %inc56, %do.end40.for.body_crit_edge ]
  %f.0334 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %arrayidx55, %do.end40.for.body_crit_edge ]
  %conv61 = trunc i32 %fsi.0335 to i8
  %53 = ptrtoint ptr %f.0334 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv61, ptr %f.0334, align 2
  %incdec.ptr = getelementptr %struct.dtslot, ptr %f.0334, i32 1
  %inc63 = add nsw i32 %fsi.0335, 1
  %54 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %maxslot, align 4
  %conv58 = zext i8 %55 to i32
  %cmp59 = icmp slt i32 %inc63, %conv58
  br i1 %cmp59, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end40.for.end_crit_edge
  %f.0.lcssa = phi ptr [ %arrayidx55, %do.end40.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %56 = ptrtoint ptr %f.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %f.0.lcssa, align 2
  %freelist = getelementptr i8, ptr %ip, i32 -285
  %57 = ptrtoint ptr %freelist to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %freelist, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %cmp66 = icmp eq i8 %58, -1
  br i1 %cmp66, label %if.then68, label %if.else71

if.then68:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv69 = trunc i32 %add54 to i8
  %freelist70 = getelementptr inbounds %struct.anon.71, ptr %21, i32 0, i32 5
  %59 = ptrtoint ptr %freelist70 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv69, ptr %freelist70, align 1
  br label %if.end84

if.else71:                                        ; preds = %for.end
  %freelist73 = getelementptr inbounds %struct.anon.71, ptr %21, i32 0, i32 5
  %60 = ptrtoint ptr %freelist73 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %58, ptr %freelist73, align 1
  br label %do.body74

do.body74:                                        ; preds = %do.body74.do.body74_crit_edge, %if.else71
  %fsi.1.in = phi i8 [ %58, %if.else71 ], [ %62, %do.body74.do.body74_crit_edge ]
  %fsi.1 = sext i8 %fsi.1.in to i32
  %arrayidx75 = getelementptr [128 x %struct.dtslot], ptr %21, i32 0, i32 %fsi.1
  %61 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx75, align 2
  %cmp79.not = icmp eq i8 %62, -1
  br i1 %cmp79.not, label %do.end81, label %do.body74.do.body74_crit_edge

do.body74.do.body74_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74

do.end81:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  %conv82 = trunc i32 %add54 to i8
  %63 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv82, ptr %arrayidx75, align 2
  br label %if.end84

if.end84:                                         ; preds = %do.end81, %if.then68
  %freecnt = getelementptr i8, ptr %ip, i32 -286
  %64 = ptrtoint ptr %freecnt to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %freecnt, align 2
  %66 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %maxslot, align 4
  %68 = trunc i32 %shr46 to i8
  %69 = sub i8 -9, %68
  %70 = add i8 %69, %65
  %conv89 = add i8 %70, %67
  %freecnt90 = getelementptr inbounds %struct.anon.71, ptr %21, i32 0, i32 4
  %71 = ptrtoint ptr %freecnt90 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv89, ptr %freecnt90, align 2
  %72 = ptrtoint ptr %flag25 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %flag25, align 8
  %74 = and i8 %73, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool94.not = icmp eq i8 %74, 0
  br i1 %tobool94.not, label %if.end84.if.end127_crit_edge, label %land.lhs.true

if.end84.if.end127_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

land.lhs.true:                                    ; preds = %if.end84
  %75 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i331 = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 33
  %77 = ptrtoint ptr %s_fs_info.i331 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i331, align 16
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mntflag, align 4
  %and97 = and i32 %80, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %land.lhs.true.if.end127_crit_edge, label %if.then99

land.lhs.true.if.end127_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then99:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lblock) #8
  %81 = ptrtoint ptr %lblock to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 -1, ptr %lblock, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mp100) #8
  %82 = ptrtoint ptr %mp100 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %mp100, align 4
  %83 = and i8 %73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool104.not = icmp eq i8 %83, 0
  br i1 %tobool104.not, label %cond.false, label %if.then99.cond.end_crit_edge

if.then99.cond.end_crit_edge:                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %stblindex, align 1
  %idxprom108 = zext i8 %85 to i32
  %arrayidx109 = getelementptr [128 x %struct.dtslot], ptr %21, i32 0, i32 %idxprom108
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then99.cond.end_crit_edge
  %cond110 = phi ptr [ %arrayidx109, %cond.false ], [ %self, %if.then99.cond.end_crit_edge ]
  %86 = ptrtoint ptr %nextindex51 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nextindex51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp114338.not = icmp eq i8 %87, 0
  br i1 %cmp114338.not, label %cond.end.for.end123_crit_edge, label %cond.end.for.body116_crit_edge

cond.end.for.body116_crit_edge:                   ; preds = %cond.end
  br label %for.body116

cond.end.for.end123_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end123

for.body116:                                      ; preds = %for.body116.for.body116_crit_edge, %cond.end.for.body116_crit_edge
  %n.0339 = phi i32 [ %inc122, %for.body116.for.body116_crit_edge ], [ 0, %cond.end.for.body116_crit_edge ]
  %arrayidx117 = getelementptr i8, ptr %cond110, i32 %n.0339
  %88 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx117, align 1
  %idxprom118 = sext i8 %89 to i32
  %index120 = getelementptr [128 x %struct.dtslot], ptr %21, i32 0, i32 %idxprom118, i32 2, i32 13
  %90 = ptrtoint ptr %index120 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %index120, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  call fastcc void @modify_index(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %92, i64 noundef %add.i, i32 noundef %n.0339, ptr noundef nonnull %mp100, ptr noundef nonnull %lblock)
  %inc122 = add nuw nsw i32 %n.0339, 1
  %93 = ptrtoint ptr %nextindex51 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %nextindex51, align 1
  %conv113 = zext i8 %94 to i32
  %cmp114 = icmp ult i32 %inc122, %conv113
  br i1 %cmp114, label %for.body116.for.body116_crit_edge, label %for.body116.for.end123_crit_edge

for.body116.for.end123_crit_edge:                 ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end123

for.body116.for.body116_crit_edge:                ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body116

for.end123:                                       ; preds = %for.body116.for.end123_crit_edge, %cond.end.for.end123_crit_edge
  %95 = ptrtoint ptr %mp100 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mp100, align 4
  %tobool124.not = icmp eq ptr %96, null
  br i1 %tobool124.not, label %for.end123.if.end126_crit_edge, label %if.then125

for.end123.if.end126_crit_edge:                   ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then125:                                       ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %96) #8
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %for.end123.if.end126_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mp100) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lblock) #8
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %land.lhs.true.if.end127_crit_edge, %if.end84.if.end127_crit_edge
  %index128 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 1
  %97 = ptrtoint ptr %index128 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %index128, align 4
  %conv129 = sext i16 %98 to i32
  %key = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 3
  %99 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %key, align 4
  %data130 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 4
  %101 = ptrtoint ptr %data130 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data130, align 4
  call fastcc void @dtInsertEntry(ptr noundef %21, i32 noundef %conv129, ptr noundef %100, ptr noundef %102, ptr noundef nonnull %dtlck)
  %103 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %3, align 8
  %105 = and i16 %104, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp134 = icmp eq i16 %105, 0
  br i1 %cmp134, label %if.then136, label %if.else137

if.then136:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end139

if.else137:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %flag138 = getelementptr inbounds %struct.metapage, ptr %3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag138) #8
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.then136
  %call140 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %3, i32 noundef 8480) #8
  %lock141 = getelementptr inbounds %struct.tlock, ptr %call140, i32 0, i32 6
  %106 = ptrtoint ptr %dtlck to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %lock141, ptr %dtlck, align 4
  %index143 = getelementptr inbounds %struct.linelock, ptr %lock141, i32 0, i32 2
  %107 = ptrtoint ptr %index143 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %index143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp145 = icmp eq i8 %108, 0
  br i1 %cmp145, label %do.end161, label %do.end150

do.end150:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 2020, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2020, 0\0A.popsection", ""() #8, !srcloc !235
  unreachable

do.end161:                                        ; preds = %if.end139
  %lv162 = getelementptr inbounds %struct.tlock, ptr %call140, i32 0, i32 6, i32 4
  %109 = ptrtoint ptr %lv162 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %lv162, align 1
  %length165 = getelementptr inbounds %struct.lv, ptr %lv162, i32 0, i32 1
  %110 = ptrtoint ptr %length165 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 9, ptr %length165, align 1
  %111 = ptrtoint ptr %index143 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %index143, align 1
  %112 = ptrtoint ptr %flag20 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %flag20, align 4
  %114 = and i8 %113, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool171.not = icmp eq i8 %114, 0
  br i1 %tobool171.not, label %do.end161.if.end180_crit_edge, label %if.then172

do.end161.if.end180_crit_edge:                    ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

if.then172:                                       ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #10
  %and175 = and i8 %113, -7
  %115 = or i8 %and175, 4
  %116 = ptrtoint ptr %flag20 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %flag20, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then172, %do.end161.if.end180_crit_edge
  %117 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %118 = load i64, ptr %arrayidx, align 4
  %119 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 8)
  store i64 %118, ptr %arrayidx53, align 4
  %next182 = getelementptr i8, ptr %ip, i32 -264
  %120 = ptrtoint ptr %next182 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -1, ptr %next182, align 4
  %namlen = getelementptr i8, ptr %ip, i32 -263
  %121 = ptrtoint ptr %namlen to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %namlen, align 1
  %122 = ptrtoint ptr %stbl48 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %stbl48, align 1
  %123 = ptrtoint ptr %nextindex to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %nextindex, align 1
  %arrayidx187 = getelementptr i8, ptr %ip, i32 -240
  %124 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 3, ptr %arrayidx187, align 2
  %incdec.ptr196 = getelementptr i8, ptr %ip, i32 -208
  %125 = ptrtoint ptr %incdec.ptr196 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 4, ptr %incdec.ptr196, align 2
  %incdec.ptr196.1 = getelementptr i8, ptr %ip, i32 -176
  %126 = ptrtoint ptr %incdec.ptr196.1 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 5, ptr %incdec.ptr196.1, align 2
  %incdec.ptr196.2 = getelementptr i8, ptr %ip, i32 -144
  %127 = ptrtoint ptr %incdec.ptr196.2 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 6, ptr %incdec.ptr196.2, align 2
  %incdec.ptr196.3 = getelementptr i8, ptr %ip, i32 -112
  %128 = ptrtoint ptr %incdec.ptr196.3 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 7, ptr %incdec.ptr196.3, align 2
  %incdec.ptr196.4 = getelementptr i8, ptr %ip, i32 -80
  %129 = ptrtoint ptr %incdec.ptr196.4 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 8, ptr %incdec.ptr196.4, align 2
  %incdec.ptr196.5 = getelementptr i8, ptr %ip, i32 -48
  %130 = ptrtoint ptr %incdec.ptr196.5 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -1, ptr %incdec.ptr196.5, align 2
  %131 = ptrtoint ptr %freelist to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 2, ptr %freelist, align 1
  %132 = ptrtoint ptr %freecnt to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 7, ptr %freecnt, align 2
  %133 = ptrtoint ptr %rmpp to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call8, ptr %rmpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %if.then13 ], [ 0, %if.end180 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtlck) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbFree(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbReAlloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dtSplitPage(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef readonly %split, ptr nocapture noundef writeonly %rmpp, ptr nocapture noundef writeonly %rpp, ptr nocapture noundef writeonly %rpxdp) unnamed_addr #0 align 64 {
entry:
  %mp = alloca ptr, align 4
  %sdtlck = alloca ptr, align 4
  %rdtlck = alloca ptr, align 4
  %lblock = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mp) #8
  %0 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mp, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdtlck) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdtlck) #8
  %1 = ptrtoint ptr %split to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %split, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %5 = and i16 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot = getelementptr i8, ptr %ip, i32 -304
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.metapage, ptr %2, i32 0, i32 7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %_dtroot, %cond.true ], [ %7, %cond.false ]
  %pxdlist3 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 5
  %8 = ptrtoint ptr %pxdlist3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pxdlist3, align 4
  %npxd = getelementptr inbounds %struct.pxdlist, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %npxd to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %npxd, align 2
  %idxprom = sext i16 %11 to i32
  %arrayidx = getelementptr %struct.pxdlist, ptr %9, i32 0, i32 2, i32 %idxprom
  %inc = add i16 %11, 1
  store i16 %inc, ptr %npxd, align 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = shl i32 %13, 24
  %conv.i = zext i32 %14 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr %struct.pxdlist, ptr %9, i32 0, i32 2, i32 %idxprom, i32 1
  %15 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr2.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %conv1.i = zext i32 %17 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %call8 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %17, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #8
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = and i32 %19, -256
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %conv12 = zext i32 %21 to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %22 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %23 to i64
  %shl.i577 = shl i64 %conv12, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %ip, i64 noundef %shl.i577, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call8) #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %24 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp16 = icmp sgt i32 %24, 3
  br i1 %cmp16, label %do.end, label %do.body.do.end23_crit_edge

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %ip, ptr noundef %2, ptr noundef nonnull %call8) #12
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  %25 = ptrtoint ptr %call8 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call8, align 8
  %27 = and i16 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp27 = icmp eq i16 %27, 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end30

if.else:                                          ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  %flag = getelementptr inbounds %struct.metapage, ptr %call8, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %call31 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %call8, i32 noundef 8224) #8
  %lock = getelementptr inbounds %struct.tlock, ptr %call31, i32 0, i32 6
  %28 = ptrtoint ptr %rdtlck to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %lock, ptr %rdtlck, align 4
  %data32 = getelementptr inbounds %struct.metapage, ptr %call8, i32 0, i32 7
  %29 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data32, align 4
  %31 = ptrtoint ptr %rpp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %rpp, align 4
  %self = getelementptr inbounds %struct.anon.71, ptr %30, i32 0, i32 9
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %self to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %self, align 8
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %2, align 8
  %37 = and i16 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp36 = icmp eq i16 %37, 0
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end41

if.else39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %flag40 = getelementptr inbounds %struct.metapage, ptr %2, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag40) #8
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then38
  %call42 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %2, i32 noundef 8193) #8
  %lock43 = getelementptr inbounds %struct.tlock, ptr %call42, i32 0, i32 6
  %38 = ptrtoint ptr %sdtlck to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %lock43, ptr %sdtlck, align 4
  %index = getelementptr inbounds %struct.linelock, ptr %lock43, i32 0, i32 2
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp46 = icmp eq i8 %40, 0
  br i1 %cmp46, label %do.end62, label %do.end51

do.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 1389, ptr noundef nonnull @.str.58) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1389, 0\0A.popsection", ""() #8, !srcloc !236
  unreachable

do.end62:                                         ; preds = %if.end41
  %lv63 = getelementptr inbounds %struct.tlock, ptr %call42, i32 0, i32 6, i32 4
  %41 = ptrtoint ptr %lv63 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %lv63, align 1
  %length = getelementptr inbounds %struct.lv, ptr %lv63, i32 0, i32 1
  %42 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %length, align 1
  %43 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %index, align 1
  %44 = ptrtoint ptr %cond to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %cond, align 8
  %46 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %30, align 8
  %self68 = getelementptr inbounds %struct.anon.71, ptr %cond, i32 0, i32 9
  %47 = ptrtoint ptr %self68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %self68, align 4
  %49 = shl i32 %48, 24
  %conv.i578 = zext i32 %49 to i64
  %shl.i579 = shl nuw nsw i64 %conv.i578, 8
  %addr2.i580 = getelementptr inbounds %struct.anon.71, ptr %cond, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %addr2.i580 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr2.i580, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  %conv1.i581 = zext i32 %52 to i64
  %add.i582 = or i64 %shl.i579, %conv1.i581
  %53 = tail call i64 @llvm.bswap.i64(i64 %add.i582)
  %prev = getelementptr inbounds %struct.anon.71, ptr %30, i32 0, i32 1
  %54 = ptrtoint ptr %prev to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %prev, align 8
  %55 = tail call i64 @llvm.bswap.i64(i64 %add.i)
  %56 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %cond, align 8
  %flag71 = getelementptr inbounds %struct.anon.71, ptr %cond, i32 0, i32 2
  %57 = ptrtoint ptr %flag71 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flag71, align 8
  %flag72 = getelementptr inbounds %struct.anon.71, ptr %30, i32 0, i32 2
  %59 = ptrtoint ptr %flag72 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %flag72, align 8
  %nextindex73 = getelementptr inbounds %struct.anon.71, ptr %30, i32 0, i32 3
  %60 = ptrtoint ptr %nextindex73 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %nextindex73, align 1
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %30, i32 0, i32 7
  %61 = ptrtoint ptr %stblindex to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %stblindex, align 1
  %maxslot = getelementptr inbounds %struct.anon.71, ptr %30, i32 0, i32 6
  %62 = ptrtoint ptr %maxslot to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -128, ptr %maxslot, align 4
  %freelist = getelementptr inbounds %struct.anon.71, ptr %30, i32 0, i32 5
  %63 = ptrtoint ptr %freelist to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 5, ptr %freelist, align 1
  %freecnt = getelementptr inbounds %struct.anon.71, ptr %30, i32 0, i32 4
  %64 = ptrtoint ptr %freecnt to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 123, ptr %freecnt, align 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %cond576 = icmp eq i64 %45, 0
  br i1 %cond576, label %land.lhs.true, label %if.else122

land.lhs.true:                                    ; preds = %do.end62
  %index84 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 1
  %65 = ptrtoint ptr %index84 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %index84, align 4
  %conv85 = sext i16 %66 to i32
  %nextindex86 = getelementptr inbounds %struct.anon.71, ptr %cond, i32 0, i32 3
  %67 = ptrtoint ptr %nextindex86 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nextindex86, align 1
  %conv87 = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv85, i32 %conv87)
  %cmp88 = icmp eq i32 %conv85, %conv87
  br i1 %cmp88, label %if.then90, label %land.lhs.true.if.end217_crit_edge

land.lhs.true.if.end217_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217

if.then90:                                        ; preds = %land.lhs.true
  %index92 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %69 = ptrtoint ptr %index92 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %index92, align 1
  %idxprom93 = sext i8 %70 to i32
  %arrayidx94 = getelementptr %struct.linelock, ptr %lock, i32 0, i32 6, i32 %idxprom93
  %71 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx94, align 1
  %length96 = getelementptr %struct.linelock, ptr %lock, i32 0, i32 6, i32 %idxprom93, i32 1
  %72 = ptrtoint ptr %length96 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %length96, align 1
  %73 = load i8, ptr %index92, align 1
  %inc98 = add i8 %73, 1
  store i8 %inc98, ptr %index92, align 1
  %arrayidx99 = getelementptr [128 x %struct.dtslot], ptr %30, i32 0, i32 5
  %74 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %maxslot, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %75)
  %cmp103620 = icmp ugt i8 %75, 6
  br i1 %cmp103620, label %if.then90.for.body_crit_edge, label %if.then90.for.end_crit_edge

if.then90.for.end_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then90.for.body_crit_edge:                     ; preds = %if.then90
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then90.for.body_crit_edge
  %fsi.0622 = phi i32 [ %inc107, %for.body.for.body_crit_edge ], [ 6, %if.then90.for.body_crit_edge ]
  %f.0621 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %arrayidx99, %if.then90.for.body_crit_edge ]
  %conv105 = trunc i32 %fsi.0622 to i8
  %76 = ptrtoint ptr %f.0621 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv105, ptr %f.0621, align 2
  %incdec.ptr = getelementptr %struct.dtslot, ptr %f.0621, i32 1
  %inc107 = add nuw nsw i32 %fsi.0622, 1
  %77 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %maxslot, align 4
  %conv102 = zext i8 %78 to i32
  %cmp103 = icmp ult i32 %inc107, %conv102
  br i1 %cmp103, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then90.for.end_crit_edge
  %f.0.lcssa = phi ptr [ %arrayidx99, %if.then90.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %79 = ptrtoint ptr %f.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %f.0.lcssa, align 2
  %key = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 3
  %80 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %key, align 4
  %data109 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 4
  %82 = ptrtoint ptr %data109 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data109, align 4
  call fastcc void @dtInsertEntry(ptr noundef %30, i32 noundef 0, ptr noundef %81, ptr noundef %83, ptr noundef nonnull %rdtlck)
  br label %out

if.else122:                                       ; preds = %do.end62
  %84 = tail call i64 @llvm.bswap.i64(i64 %45)
  %conv123 = trunc i64 %84 to i32
  %call124 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv123, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %85 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call124, ptr %mp, align 4
  %tobool125.not = icmp eq ptr %call124, null
  br i1 %tobool125.not, label %if.else128, label %if.then144

if.else128:                                       ; preds = %if.else122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %86 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp130 = icmp sgt i32 %86, 0
  br i1 %cmp130, label %do.end135, label %if.else128.if.then176_crit_edge

if.else128.if.then176_crit_edge:                  ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then176

do.end135:                                        ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #10
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.then176

if.then144:                                       ; preds = %if.else122
  %data127 = getelementptr inbounds %struct.metapage, ptr %call124, i32 0, i32 7
  %87 = ptrtoint ptr %data127 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data127, align 4
  %nextindex145 = getelementptr inbounds %struct.anon.71, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %nextindex145 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %nextindex145, align 1
  %maxslot151 = getelementptr inbounds %struct.anon.71, ptr %88, i32 0, i32 6
  %91 = ptrtoint ptr %maxslot151 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %maxslot151, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %90, i8 %92)
  %cmp155 = icmp ugt i8 %90, %92
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %92)
  %cmp161 = icmp ugt i8 %92, -128
  %or.cond = or i1 %cmp155, %cmp161
  br i1 %or.cond, label %if.then163, label %if.end177

if.then163:                                       ; preds = %if.then144
  %93 = ptrtoint ptr %call124 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %call124, align 8
  %95 = and i16 %94, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp167 = icmp eq i16 %95, 0
  br i1 %cmp167, label %if.then163.if.end170_crit_edge, label %if.then169

if.then163.if.end170_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.then169:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call124) #8
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.then163.if.end170_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %96 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %97, ptr noundef nonnull @.str.3) #8
  %98 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %mp, align 4
  br label %if.then176

if.then176:                                       ; preds = %if.end170, %do.end135, %if.else128.if.then176_crit_edge
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call8, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flag.i) #8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flag.i) #8
  tail call void @release_metapage(ptr noundef nonnull %call8) #8
  br label %cleanup

if.end177:                                        ; preds = %if.then144
  %99 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mp, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %100, align 8
  %103 = and i16 %102, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %cmp181 = icmp eq i16 %103, 0
  br i1 %cmp181, label %if.then183, label %if.else184

if.then183:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end186

if.else184:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  %flag185 = getelementptr inbounds %struct.metapage, ptr %100, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag185) #8
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then183
  %call187 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %100, i32 noundef 8320) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %104 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %104)
  %cmp189 = icmp sgt i32 %104, 3
  br i1 %cmp189, label %do.end194, label %if.end186.do.end199_crit_edge

if.end186.do.end199_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end199

do.end194:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %call187, ptr noundef %ip, ptr noundef %100) #12
  br label %do.end199

do.end199:                                        ; preds = %do.end194, %if.end186.do.end199_crit_edge
  %lock200 = getelementptr inbounds %struct.tlock, ptr %call187, i32 0, i32 6
  %lv201 = getelementptr inbounds %struct.tlock, ptr %call187, i32 0, i32 6, i32 4
  %index202 = getelementptr inbounds %struct.linelock, ptr %lock200, i32 0, i32 2
  %105 = ptrtoint ptr %index202 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %index202, align 1
  %idxprom203 = sext i8 %106 to i32
  %arrayidx204 = getelementptr [20 x %struct.lv], ptr %lv201, i32 0, i32 %idxprom203
  %107 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx204, align 1
  %length206 = getelementptr [20 x %struct.lv], ptr %lv201, i32 0, i32 %idxprom203, i32 1
  %108 = ptrtoint ptr %length206 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %length206, align 1
  %109 = load i8, ptr %index202, align 1
  %inc208 = add i8 %109, 1
  store i8 %inc208, ptr %index202, align 1
  %prev209 = getelementptr inbounds %struct.anon.71, ptr %88, i32 0, i32 1
  %110 = ptrtoint ptr %prev209 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %55, ptr %prev209, align 8
  %111 = ptrtoint ptr %100 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %100, align 8
  %113 = and i16 %112, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp213 = icmp eq i16 %113, 0
  br i1 %cmp213, label %do.end199.if.end217_crit_edge, label %if.then215

do.end199.if.end217_crit_edge:                    ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217

if.then215:                                       ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef %100) #8
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %do.end199.if.end217_crit_edge, %land.lhs.true.if.end217_crit_edge
  %index218 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 1
  %114 = ptrtoint ptr %index218 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %index218, align 4
  %conv219 = sext i16 %115 to i32
  %stblindex220 = getelementptr inbounds %struct.anon.71, ptr %cond, i32 0, i32 7
  %116 = ptrtoint ptr %stblindex220 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %stblindex220, align 1
  %idxprom221 = zext i8 %117 to i32
  %arrayidx222 = getelementptr [128 x %struct.dtslot], ptr %cond, i32 0, i32 %idxprom221
  %nextindex223 = getelementptr inbounds %struct.anon.71, ptr %cond, i32 0, i32 3
  %118 = ptrtoint ptr %nextindex223 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %nextindex223, align 1
  %conv224 = zext i8 %119 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp226601.not = icmp eq i8 %119, 0
  br i1 %cmp226601.not, label %if.end217.for.end274_crit_edge, label %for.body228.lr.ph

if.end217.for.end274_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end274

for.body228.lr.ph:                                ; preds = %if.end217
  %i_sb240 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %nslot = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 2
  br label %for.body228

for.body228:                                      ; preds = %for.inc272.for.body228_crit_edge, %for.body228.lr.ph
  %n.0605 = phi i32 [ 128, %for.body228.lr.ph ], [ %n.2, %for.inc272.for.body228_crit_edge ]
  %off.0604 = phi i32 [ 0, %for.body228.lr.ph ], [ %inc273, %for.inc272.for.body228_crit_edge ]
  %nxt.0603 = phi i32 [ 0, %for.body228.lr.ph ], [ %nxt.1, %for.inc272.for.body228_crit_edge ]
  %left.0602 = phi i32 [ 0, %for.body228.lr.ph ], [ %add267, %for.inc272.for.body228_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0604, i32 %conv219)
  %cmp229 = icmp eq i32 %off.0604, %conv219
  br i1 %cmp229, label %if.then231, label %if.else233

if.then231:                                       ; preds = %for.body228
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %nslot to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %nslot, align 2
  %conv232 = sext i16 %121 to i32
  br label %if.end266

if.else233:                                       ; preds = %for.body228
  %arrayidx234 = getelementptr i8, ptr %arrayidx222, i32 %nxt.0603
  %122 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx234, align 1
  %conv235 = zext i8 %123 to i32
  %124 = ptrtoint ptr %flag71 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %flag71, align 8
  %126 = and i8 %125, 7
  %and238 = zext i8 %126 to i32
  %127 = zext i32 %and238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %and238, label %if.else233.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb257
  ]

if.else233.sw.epilog_crit_edge:                   ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else233
  %arrayidx239 = getelementptr [128 x %struct.dtslot], ptr %cond, i32 0, i32 %conv235
  %128 = ptrtoint ptr %i_sb240 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i_sb240, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %129, i32 0, i32 33
  %130 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_fs_info.i, align 16
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mntflag, align 4
  %and242 = and i32 %133, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  %namlen250 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx239, i32 0, i32 2
  %134 = ptrtoint ptr %namlen250 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %namlen250, align 1
  %conv251 = zext i8 %135 to i16
  br i1 %tobool243.not, label %if.else249, label %if.then244

if.then244:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %sub248 = add nuw nsw i16 %conv251, 18
  %div597 = udiv i16 %sub248, 15
  %div.zext = zext i16 %div597 to i32
  br label %sw.epilog

if.else249:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %sub254 = add nuw nsw i16 %conv251, 16
  %div255596 = udiv i16 %sub254, 15
  %div255.zext = zext i16 %div255596 to i32
  br label %sw.epilog

sw.bb257:                                         ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx258 = getelementptr [128 x %struct.dtslot], ptr %cond, i32 0, i32 %conv235
  %namlen259 = getelementptr inbounds %struct.idtentry, ptr %arrayidx258, i32 0, i32 2
  %136 = ptrtoint ptr %namlen259 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %namlen259, align 1
  %conv260 = zext i8 %137 to i16
  %sub263 = add nuw nsw i16 %conv260, 18
  %div264598 = udiv i16 %sub263, 15
  %div264.zext = zext i16 %div264598 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb257, %if.else249, %if.then244, %if.else233.sw.epilog_crit_edge
  %n.1 = phi i32 [ %n.0605, %if.else233.sw.epilog_crit_edge ], [ %div264.zext, %sw.bb257 ], [ %div.zext, %if.then244 ], [ %div255.zext, %if.else249 ]
  %inc265 = add nsw i32 %nxt.0603, 1
  br label %if.end266

if.end266:                                        ; preds = %sw.epilog, %if.then231
  %nxt.1 = phi i32 [ %nxt.0603, %if.then231 ], [ %inc265, %sw.epilog ]
  %n.2 = phi i32 [ %conv232, %if.then231 ], [ %n.1, %sw.epilog ]
  %add267 = add i32 %n.2, %left.0602
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add267)
  %cmp268 = icmp sgt i32 %add267, 63
  br i1 %cmp268, label %if.end266.for.end274_crit_edge, label %for.inc272

if.end266.for.end274_crit_edge:                   ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end274

for.inc272:                                       ; preds = %if.end266
  %inc273 = add i32 %off.0604, 1
  %cmp226 = icmp slt i32 %nxt.1, %conv224
  br i1 %cmp226, label %for.inc272.for.body228_crit_edge, label %for.inc272.for.end274_crit_edge

for.inc272.for.end274_crit_edge:                  ; preds = %for.inc272
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end274

for.inc272.for.body228_crit_edge:                 ; preds = %for.inc272
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body228

for.end274:                                       ; preds = %for.inc272.for.end274_crit_edge, %if.end266.for.end274_crit_edge, %if.end217.for.end274_crit_edge
  %off.0.lcssa = phi i32 [ 0, %if.end217.for.end274_crit_edge ], [ %off.0604, %if.end266.for.end274_crit_edge ], [ %inc273, %for.inc272.for.end274_crit_edge ]
  %nxt.2 = phi i32 [ 0, %if.end217.for.end274_crit_edge ], [ %nxt.1, %if.end266.for.end274_crit_edge ], [ %nxt.1, %for.inc272.for.end274_crit_edge ]
  %index276 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %138 = ptrtoint ptr %index276 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %index276, align 1
  %idxprom277 = sext i8 %139 to i32
  %arrayidx278 = getelementptr %struct.linelock, ptr %lock, i32 0, i32 6, i32 %idxprom277
  %140 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %arrayidx278, align 1
  %length280 = getelementptr %struct.linelock, ptr %lock, i32 0, i32 6, i32 %idxprom277, i32 1
  %141 = ptrtoint ptr %length280 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 5, ptr %length280, align 1
  %142 = load i8, ptr %index276, align 1
  %inc282 = add i8 %142, 1
  store i8 %inc282, ptr %index276, align 1
  %i_sb283 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %143 = ptrtoint ptr %i_sb283 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i_sb283, align 4
  %s_fs_info.i583 = getelementptr inbounds %struct.super_block, ptr %144, i32 0, i32 33
  %145 = ptrtoint ptr %s_fs_info.i583 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s_fs_info.i583, align 16
  %mntflag285 = getelementptr inbounds %struct.jfs_sb_info, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %mntflag285 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mntflag285, align 4
  %149 = ptrtoint ptr %stblindex220 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %stblindex220, align 1
  %idxprom.i = zext i8 %150 to i32
  %arrayidx.i = getelementptr [128 x %struct.dtslot], ptr %cond, i32 0, i32 %idxprom.i
  %151 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %stblindex, align 1
  %idxprom2.i = zext i8 %152 to i32
  %arrayidx3.i = getelementptr [128 x %struct.dtslot], ptr %30, i32 0, i32 %idxprom2.i
  %153 = ptrtoint ptr %freelist to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %freelist, align 1
  %conv.i584 = sext i8 %154 to i32
  %freelist4.i = getelementptr inbounds %struct.anon.71, ptr %cond, i32 0, i32 5
  %155 = ptrtoint ptr %freelist4.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %freelist4.i, align 1
  %conv5343.i = zext i8 %156 to i32
  %idxprom6.i = sext i8 %inc282 to i32
  %arrayidx7.i = getelementptr %struct.linelock, ptr %lock, i32 0, i32 6, i32 %idxprom6.i
  %157 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %154, ptr %arrayidx7.i, align 1
  %158 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %index, align 1
  %idxprom11.i = sext i8 %159 to i32
  %arrayidx12.i = getelementptr %struct.linelock, ptr %lock43, i32 0, i32 6, i32 %idxprom11.i
  %arrayidx13.i = getelementptr i8, ptr %arrayidx.i, i32 %nxt.2
  %160 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx13.i, align 1
  %162 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %arrayidx12.i, align 1
  %163 = ptrtoint ptr %nextindex223 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %nextindex223, align 1
  %conv17319.i = zext i8 %164 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nxt.2, i32 %conv17319.i)
  %cmp320.i = icmp slt i32 %nxt.2, %conv17319.i
  br i1 %cmp320.i, label %for.body.lr.ph.i, label %for.end274.dtMoveEntry.exit_crit_edge

for.end274.dtMoveEntry.exit_crit_edge:            ; preds = %for.end274
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtMoveEntry.exit

for.body.lr.ph.i:                                 ; preds = %for.end274
  %and286 = and i32 %148, 2097152
  %conv16.i = zext i8 %161 to i32
  %sub.i = add nsw i32 %conv16.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool43.not.i = icmp eq i32 %and286, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %si.addr.0331.i = phi i32 [ %nxt.2, %for.body.lr.ph.i ], [ %inc151.i, %for.inc.i.for.body.i_crit_edge ]
  %di.0330.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc152.i, %for.inc.i.for.body.i_crit_edge ]
  %sfsi.0329.i = phi i32 [ %conv5343.i, %for.body.lr.ph.i ], [ %sfsi.1.lcssa358.i, %for.inc.i.for.body.i_crit_edge ]
  %nd.0328.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %nd.1.lcssa360.i, %for.inc.i.for.body.i_crit_edge ]
  %ns.0327.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ns.2.lcssa362.i, %for.inc.i.for.body.i_crit_edge ]
  %xssi.0326.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %sfsi.1.lcssa358.i, %for.inc.i.for.body.i_crit_edge ]
  %slv.0325.i = phi ptr [ %arrayidx12.i, %for.body.lr.ph.i ], [ %slv.3.lcssa356.i, %for.inc.i.for.body.i_crit_edge ]
  %sdtlck.0324.i = phi ptr [ %lock43, %for.body.lr.ph.i ], [ %sdtlck.3.lcssa354.i, %for.inc.i.for.body.i_crit_edge ]
  %dih.0323.i = phi ptr [ null, %for.body.lr.ph.i ], [ %dih.1.i, %for.inc.i.for.body.i_crit_edge ]
  %dlh.0322.i = phi ptr [ null, %for.body.lr.ph.i ], [ %dlh.1.i, %for.inc.i.for.body.i_crit_edge ]
  %dsi.0321.i = phi i32 [ %conv.i584, %for.body.lr.ph.i ], [ %dsi.2.lcssa352.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx19.i = getelementptr i8, ptr %arrayidx.i, i32 %si.addr.0331.i
  %165 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = sext i8 %166 to i32
  %conv21.i = trunc i32 %dsi.0321.i to i8
  %arrayidx22.i = getelementptr i8, ptr %arrayidx3.i, i32 %di.0330.i
  %167 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv21.i, ptr %arrayidx22.i, align 1
  %add.i586 = add nsw i32 %xssi.0326.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i586, i32 %conv20.i)
  %cmp23.not.i = icmp eq i32 %add.i586, %conv20.i
  br i1 %cmp23.not.i, label %for.body.i.if.end37.i_crit_edge, label %if.then.i

for.body.i.if.end37.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then.i:                                        ; preds = %for.body.i
  %conv25.i = trunc i32 %ns.0327.i to i8
  %length.i = getelementptr inbounds %struct.lv, ptr %slv.0325.i, i32 0, i32 1
  %168 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv25.i, ptr %length.i, align 1
  %index26.i = getelementptr inbounds %struct.linelock, ptr %sdtlck.0324.i, i32 0, i32 2
  %169 = ptrtoint ptr %index26.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %index26.i, align 1
  %inc.i = add i8 %170, 1
  store i8 %inc.i, ptr %index26.i, align 1
  %maxcnt.i = getelementptr inbounds %struct.linelock, ptr %sdtlck.0324.i, i32 0, i32 1
  %171 = ptrtoint ptr %maxcnt.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %maxcnt.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i, i8 %172)
  %cmp30.i = icmp slt i8 %inc.i, %172
  br i1 %cmp30.i, label %if.then32.i, label %if.else.i

if.then32.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr %struct.lv, ptr %slv.0325.i, i32 1
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @txLinelock(ptr noundef %sdtlck.0324.i) #8
  %lv33.i = getelementptr inbounds %struct.linelock, ptr %call.i, i32 0, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then32.i
  %sdtlck.1.i = phi ptr [ %sdtlck.0324.i, %if.then32.i ], [ %call.i, %if.else.i ]
  %slv.1.i = phi ptr [ %incdec.ptr.i, %if.then32.i ], [ %lv33.i, %if.else.i ]
  %173 = ptrtoint ptr %slv.1.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %166, ptr %slv.1.i, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end.i, %for.body.i.if.end37.i_crit_edge
  %sdtlck.2.i = phi ptr [ %sdtlck.1.i, %if.end.i ], [ %sdtlck.0324.i, %for.body.i.if.end37.i_crit_edge ]
  %slv.2.i = phi ptr [ %slv.1.i, %if.end.i ], [ %slv.0325.i, %for.body.i.if.end37.i_crit_edge ]
  %ns.1.i = phi i32 [ 0, %if.end.i ], [ %ns.0327.i, %for.body.i.if.end37.i_crit_edge ]
  %arrayidx38.i = getelementptr [128 x %struct.dtslot], ptr %30, i32 0, i32 %dsi.0321.i
  %arrayidx39.i = getelementptr [128 x %struct.dtslot], ptr %cond, i32 0, i32 %conv20.i
  %174 = ptrtoint ptr %flag71 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %flag71, align 8
  %176 = and i8 %175, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool.not.i = icmp eq i8 %176, 0
  br i1 %tobool.not.i, label %if.else64.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end37.i
  %namlen.i = getelementptr inbounds %struct.ldtentry, ptr %arrayidx39.i, i32 0, i32 2
  %177 = ptrtoint ptr %namlen.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %namlen.i, align 1
  br i1 %tobool43.not.i, label %if.else49.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  %179 = tail call i8 @llvm.umin.i8(i8 %178, i8 11) #8
  %index47.i = getelementptr inbounds %struct.ldtentry, ptr %arrayidx39.i, i32 0, i32 4
  %180 = ptrtoint ptr %index47.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %index47.i, align 4
  %index48.i = getelementptr inbounds %struct.ldtentry, ptr %arrayidx38.i, i32 0, i32 4
  %182 = ptrtoint ptr %index48.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %index48.i, align 4
  br label %if.end57.i

if.else49.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  %183 = tail call i8 @llvm.umin.i8(i8 %178, i8 13) #8
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else49.i, %if.then44.i
  %len.0.in.i = phi i8 [ %179, %if.then44.i ], [ %183, %if.else49.i ]
  %len.0.i = zext i8 %len.0.in.i to i32
  %mul.i = shl nuw nsw i32 %len.0.i, 1
  %add58.i = add nuw nsw i32 %mul.i, 6
  %184 = call ptr @memcpy(ptr %arrayidx38.i, ptr %arrayidx39.i, i32 %add58.i)
  %next59.i = getelementptr inbounds %struct.ldtentry, ptr %arrayidx39.i, i32 0, i32 1
  %185 = ptrtoint ptr %next59.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %next59.i, align 4
  %inc61.i = add i32 %dsi.0321.i, 1
  %conv62.i = trunc i32 %inc61.i to i8
  %next63.i = getelementptr inbounds %struct.ldtentry, ptr %arrayidx38.i, i32 0, i32 1
  %187 = ptrtoint ptr %next63.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv62.i, ptr %next63.i, align 4
  br label %if.end81.i

if.else64.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %namlen65.i = getelementptr inbounds %struct.idtentry, ptr %arrayidx39.i, i32 0, i32 2
  %188 = ptrtoint ptr %namlen65.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %namlen65.i, align 1
  %190 = tail call i8 @llvm.umin.i8(i8 %189, i8 11) #8
  %191 = zext i8 %190 to i32
  %mul74.i = shl nuw nsw i32 %191, 1
  %add75.i = add nuw nsw i32 %mul74.i, 10
  %192 = call ptr @memcpy(ptr %arrayidx38.i, ptr %arrayidx39.i, i32 %add75.i)
  %next76.i = getelementptr inbounds %struct.idtentry, ptr %arrayidx39.i, i32 0, i32 1
  %193 = ptrtoint ptr %next76.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %next76.i, align 4
  %inc78.i = add i32 %dsi.0321.i, 1
  %conv79.i = trunc i32 %inc78.i to i8
  %next80.i = getelementptr inbounds %struct.idtentry, ptr %arrayidx38.i, i32 0, i32 1
  %195 = ptrtoint ptr %next80.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv79.i, ptr %next80.i, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else64.i, %if.end57.i
  %dsi.1.i = phi i32 [ %inc61.i, %if.end57.i ], [ %inc78.i, %if.else64.i ]
  %snamlen.0.in.i = phi i8 [ %178, %if.end57.i ], [ %189, %if.else64.i ]
  %len.1.i = phi i32 [ %len.0.i, %if.end57.i ], [ %191, %if.else64.i ]
  %dlh.1.i = phi ptr [ %arrayidx38.i, %if.end57.i ], [ %dlh.0322.i, %if.else64.i ]
  %dih.1.i = phi ptr [ %dih.0323.i, %if.end57.i ], [ %arrayidx38.i, %if.else64.i ]
  %next.0.in.i = phi i8 [ %186, %if.end57.i ], [ %194, %if.else64.i ]
  %conv82.i = trunc i32 %sfsi.0329.i to i8
  %196 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv82.i, ptr %arrayidx39.i, align 2
  %cnt.i = getelementptr [128 x %struct.dtslot], ptr %cond, i32 0, i32 %conv20.i, i32 1
  %197 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %cnt.i, align 1
  %nd.1300.i = add i32 %nd.0328.i, 1
  %ns.2301.i = add i32 %ns.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %next.0.in.i)
  %cmp87302.i = icmp sgt i8 %next.0.in.i, -1
  br i1 %cmp87302.i, label %while.body.preheader.i, label %if.end81.i.if.then138.i_crit_edge

if.end81.i.if.then138.i_crit_edge:                ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138.i

while.body.preheader.i:                           ; preds = %if.end81.i
  %snamlen.0.i = zext i8 %snamlen.0.in.i to i32
  %sub86.i = sub nsw i32 %snamlen.0.i, %len.1.i
  br label %while.body.i

while.body.i:                                     ; preds = %UniStrncpy_le.exit.i.while.body.i_crit_edge, %while.body.preheader.i
  %ns.2312.i = phi i32 [ %ns.2.i, %UniStrncpy_le.exit.i.while.body.i_crit_edge ], [ %ns.2301.i, %while.body.preheader.i ]
  %nd.1311.i = phi i32 [ %nd.1.i, %UniStrncpy_le.exit.i.while.body.i_crit_edge ], [ %nd.1300.i, %while.body.preheader.i ]
  %next.1.in309.i = phi i8 [ %212, %UniStrncpy_le.exit.i.while.body.i_crit_edge ], [ %next.0.in.i, %while.body.preheader.i ]
  %sfsi.1308.i = phi i32 [ %next.1310364.i, %UniStrncpy_le.exit.i.while.body.i_crit_edge ], [ %conv20.i, %while.body.preheader.i ]
  %slv.3307.i = phi ptr [ %slv.5.i, %UniStrncpy_le.exit.i.while.body.i_crit_edge ], [ %slv.2.i, %while.body.preheader.i ]
  %sdtlck.3306.i = phi ptr [ %sdtlck.5.i, %UniStrncpy_le.exit.i.while.body.i_crit_edge ], [ %sdtlck.2.i, %while.body.preheader.i ]
  %d.0305.i = phi ptr [ %incdec.ptr114.i, %UniStrncpy_le.exit.i.while.body.i_crit_edge ], [ %arrayidx38.i, %while.body.preheader.i ]
  %snamlen.1304.i = phi i32 [ %sub135.i, %UniStrncpy_le.exit.i.while.body.i_crit_edge ], [ %sub86.i, %while.body.preheader.i ]
  %dsi.2303.i = phi i32 [ %inc127.i, %UniStrncpy_le.exit.i.while.body.i_crit_edge ], [ %dsi.1.i, %while.body.preheader.i ]
  %next.1310364.i = zext i8 %next.1.in309.i to i32
  %add89.i = add nsw i32 %sfsi.1308.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add89.i, i32 %next.1310364.i)
  %cmp90.not.i = icmp eq i32 %add89.i, %next.1310364.i
  br i1 %cmp90.not.i, label %while.body.i.if.end112.i_crit_edge, label %if.then92.i

while.body.i.if.end112.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112.i

if.then92.i:                                      ; preds = %while.body.i
  %conv93.i = trunc i32 %ns.2312.i to i8
  %length94.i = getelementptr inbounds %struct.lv, ptr %slv.3307.i, i32 0, i32 1
  %198 = ptrtoint ptr %length94.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv93.i, ptr %length94.i, align 1
  %index95.i = getelementptr inbounds %struct.linelock, ptr %sdtlck.3306.i, i32 0, i32 2
  %199 = ptrtoint ptr %index95.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %index95.i, align 1
  %inc96.i = add i8 %200, 1
  store i8 %inc96.i, ptr %index95.i, align 1
  %maxcnt99.i = getelementptr inbounds %struct.linelock, ptr %sdtlck.3306.i, i32 0, i32 1
  %201 = ptrtoint ptr %maxcnt99.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %maxcnt99.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc96.i, i8 %202)
  %cmp101.i = icmp slt i8 %inc96.i, %202
  br i1 %cmp101.i, label %if.then103.i, label %if.else105.i

if.then103.i:                                     ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr104.i = getelementptr %struct.lv, ptr %slv.3307.i, i32 1
  br label %if.end109.i

if.else105.i:                                     ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  %call106.i = tail call ptr @txLinelock(ptr noundef %sdtlck.3306.i) #8
  %lv107.i = getelementptr inbounds %struct.linelock, ptr %call106.i, i32 0, i32 6
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.else105.i, %if.then103.i
  %sdtlck.4.i = phi ptr [ %sdtlck.3306.i, %if.then103.i ], [ %call106.i, %if.else105.i ]
  %slv.4.i = phi ptr [ %incdec.ptr104.i, %if.then103.i ], [ %lv107.i, %if.else105.i ]
  %203 = ptrtoint ptr %slv.4.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %next.1.in309.i, ptr %slv.4.i, align 1
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.end109.i, %while.body.i.if.end112.i_crit_edge
  %sdtlck.5.i = phi ptr [ %sdtlck.4.i, %if.end109.i ], [ %sdtlck.3306.i, %while.body.i.if.end112.i_crit_edge ]
  %slv.5.i = phi ptr [ %slv.4.i, %if.end109.i ], [ %slv.3307.i, %while.body.i.if.end112.i_crit_edge ]
  %ns.3.i = phi i32 [ 0, %if.end109.i ], [ %ns.2312.i, %while.body.i.if.end112.i_crit_edge ]
  %arrayidx113.i = getelementptr [128 x %struct.dtslot], ptr %cond, i32 0, i32 %next.1310364.i
  %incdec.ptr114.i = getelementptr %struct.dtslot, ptr %d.0305.i, i32 1
  %204 = tail call i32 @llvm.smin.i32(i32 %snamlen.1304.i, i32 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not2.i.i = icmp eq i32 %204, 0
  br i1 %tobool.not2.i.i, label %if.end112.i.UniStrncpy_le.exit.i_crit_edge, label %land.rhs.i.preheader.i

if.end112.i.UniStrncpy_le.exit.i_crit_edge:       ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncpy_le.exit.i

land.rhs.i.preheader.i:                           ; preds = %if.end112.i
  %name122.i = getelementptr [128 x %struct.dtslot], ptr %cond, i32 0, i32 %next.1310364.i, i32 2
  %name.i = getelementptr %struct.dtslot, ptr %d.0305.i, i32 1, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.i.preheader.i
  %n.addr.05.i.i = phi i32 [ %dec6.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %204, %land.rhs.i.preheader.i ]
  %ucs2.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %name122.i, %land.rhs.i.preheader.i ]
  %ucs1.addr.03.i.i = phi ptr [ %incdec.ptr2.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %name.i, %land.rhs.i.preheader.i ]
  %205 = ptrtoint ptr %ucs2.addr.04.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %ucs2.addr.04.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %tobool1.not.i.i = icmp eq i16 %206, 0
  br i1 %tobool1.not.i.i, label %while.body6.preheader.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec6.i.i = add i32 %n.addr.05.i.i, -1
  %incdec.ptr.i.i = getelementptr i16, ptr %ucs2.addr.04.i.i, i32 1
  %incdec.ptr2.i.i = getelementptr i16, ptr %ucs1.addr.03.i.i, i32 1
  %207 = ptrtoint ptr %ucs1.addr.03.i.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %206, ptr %ucs1.addr.03.i.i, align 2
  %tobool.not.i.i587 = icmp eq i32 %dec6.i.i, 0
  br i1 %tobool.not.i.i587, label %while.body.i.i.UniStrncpy_le.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

while.body.i.i.UniStrncpy_le.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncpy_le.exit.i

while.body6.preheader.i.i:                        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %208 = shl nuw i32 %n.addr.05.i.i, 1
  %209 = call ptr @memset(ptr %ucs1.addr.03.i.i, i32 0, i32 %208)
  br label %UniStrncpy_le.exit.i

UniStrncpy_le.exit.i:                             ; preds = %while.body6.preheader.i.i, %while.body.i.i.UniStrncpy_le.exit.i_crit_edge, %if.end112.i.UniStrncpy_le.exit.i_crit_edge
  %inc127.i = add i32 %dsi.2303.i, 1
  %conv128.i = trunc i32 %inc127.i to i8
  %210 = ptrtoint ptr %incdec.ptr114.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv128.i, ptr %incdec.ptr114.i, align 2
  %211 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx113.i, align 2
  %conv132.i = trunc i32 %sfsi.1308.i to i8
  store i8 %conv132.i, ptr %arrayidx113.i, align 2
  %cnt134.i = getelementptr [128 x %struct.dtslot], ptr %cond, i32 0, i32 %next.1310364.i, i32 1
  %213 = ptrtoint ptr %cnt134.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %cnt134.i, align 1
  %sub135.i = sub i32 %snamlen.1304.i, %204
  %nd.1.i = add i32 %nd.1311.i, 1
  %ns.2.i = add i32 %ns.3.i, 1
  %cmp87.i = icmp sgt i8 %212, -1
  br i1 %cmp87.i, label %UniStrncpy_le.exit.i.while.body.i_crit_edge, label %while.end.i

UniStrncpy_le.exit.i.while.body.i_crit_edge:      ; preds = %UniStrncpy_le.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %UniStrncpy_le.exit.i
  %cmp136.i = icmp eq ptr %arrayidx38.i, %incdec.ptr114.i
  br i1 %cmp136.i, label %while.end.i.if.then138.i_crit_edge, label %if.else148.i

while.end.i.if.then138.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138.i

if.then138.i:                                     ; preds = %while.end.i.if.then138.i_crit_edge, %if.end81.i.if.then138.i_crit_edge
  %ns.2.lcssa363.i = phi i32 [ %ns.2.i, %while.end.i.if.then138.i_crit_edge ], [ %ns.2301.i, %if.end81.i.if.then138.i_crit_edge ]
  %nd.1.lcssa361.i = phi i32 [ %nd.1.i, %while.end.i.if.then138.i_crit_edge ], [ %nd.1300.i, %if.end81.i.if.then138.i_crit_edge ]
  %sfsi.1.lcssa359.i = phi i32 [ %next.1310364.i, %while.end.i.if.then138.i_crit_edge ], [ %conv20.i, %if.end81.i.if.then138.i_crit_edge ]
  %slv.3.lcssa357.i = phi ptr [ %slv.5.i, %while.end.i.if.then138.i_crit_edge ], [ %slv.2.i, %if.end81.i.if.then138.i_crit_edge ]
  %sdtlck.3.lcssa355.i = phi ptr [ %sdtlck.5.i, %while.end.i.if.then138.i_crit_edge ], [ %sdtlck.2.i, %if.end81.i.if.then138.i_crit_edge ]
  %dsi.2.lcssa353.i = phi i32 [ %inc127.i, %while.end.i.if.then138.i_crit_edge ], [ %dsi.1.i, %if.end81.i.if.then138.i_crit_edge ]
  %214 = ptrtoint ptr %flag72 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %flag72, align 8
  %216 = and i8 %215, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool142.not.i = icmp eq i8 %216, 0
  br i1 %tobool142.not.i, label %if.else145.i, label %if.then143.i

if.then143.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #10
  %next144.i = getelementptr inbounds %struct.ldtentry, ptr %dlh.1.i, i32 0, i32 1
  %217 = ptrtoint ptr %next144.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 -1, ptr %next144.i, align 4
  br label %for.inc.i

if.else145.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #10
  %next146.i = getelementptr inbounds %struct.idtentry, ptr %dih.1.i, i32 0, i32 1
  %218 = ptrtoint ptr %next146.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 -1, ptr %next146.i, align 4
  br label %for.inc.i

if.else148.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %219 = ptrtoint ptr %incdec.ptr114.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 -1, ptr %incdec.ptr114.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else148.i, %if.else145.i, %if.then143.i
  %ns.2.lcssa362.i = phi i32 [ %ns.2.i, %if.else148.i ], [ %ns.2.lcssa363.i, %if.else145.i ], [ %ns.2.lcssa363.i, %if.then143.i ]
  %nd.1.lcssa360.i = phi i32 [ %nd.1.i, %if.else148.i ], [ %nd.1.lcssa361.i, %if.else145.i ], [ %nd.1.lcssa361.i, %if.then143.i ]
  %sfsi.1.lcssa358.i = phi i32 [ %next.1310364.i, %if.else148.i ], [ %sfsi.1.lcssa359.i, %if.else145.i ], [ %sfsi.1.lcssa359.i, %if.then143.i ]
  %slv.3.lcssa356.i = phi ptr [ %slv.5.i, %if.else148.i ], [ %slv.3.lcssa357.i, %if.else145.i ], [ %slv.3.lcssa357.i, %if.then143.i ]
  %sdtlck.3.lcssa354.i = phi ptr [ %sdtlck.5.i, %if.else148.i ], [ %sdtlck.3.lcssa355.i, %if.else145.i ], [ %sdtlck.3.lcssa355.i, %if.then143.i ]
  %dsi.2.lcssa352.i = phi i32 [ %inc127.i, %if.else148.i ], [ %dsi.2.lcssa353.i, %if.else145.i ], [ %dsi.2.lcssa353.i, %if.then143.i ]
  %inc151.i = add nsw i32 %si.addr.0331.i, 1
  %inc152.i = add nuw i32 %di.0330.i, 1
  %220 = ptrtoint ptr %nextindex223 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %nextindex223, align 1
  %conv17.i = zext i8 %221 to i32
  %cmp.i = icmp slt i32 %inc151.i, %conv17.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.i = trunc i32 %inc152.i to i8
  br label %dtMoveEntry.exit

dtMoveEntry.exit:                                 ; preds = %for.end.loopexit.i, %for.end274.dtMoveEntry.exit_crit_edge
  %dsi.0.lcssa.i = phi i32 [ %conv.i584, %for.end274.dtMoveEntry.exit_crit_edge ], [ %dsi.2.lcssa352.i, %for.end.loopexit.i ]
  %sdtlck.0.lcssa.i = phi ptr [ %lock43, %for.end274.dtMoveEntry.exit_crit_edge ], [ %sdtlck.3.lcssa354.i, %for.end.loopexit.i ]
  %slv.0.lcssa.i = phi ptr [ %arrayidx12.i, %for.end274.dtMoveEntry.exit_crit_edge ], [ %slv.3.lcssa356.i, %for.end.loopexit.i ]
  %ns.0.lcssa.i = phi i32 [ 0, %for.end274.dtMoveEntry.exit_crit_edge ], [ %ns.2.lcssa362.i, %for.end.loopexit.i ]
  %nd.0.lcssa.i = phi i32 [ 0, %for.end274.dtMoveEntry.exit_crit_edge ], [ %nd.1.lcssa360.i, %for.end.loopexit.i ]
  %sfsi.0.lcssa.i = phi i32 [ %conv5343.i, %for.end274.dtMoveEntry.exit_crit_edge ], [ %sfsi.1.lcssa358.i, %for.end.loopexit.i ]
  %di.0.lcssa.i = phi i8 [ 0, %for.end274.dtMoveEntry.exit_crit_edge ], [ %phi.cast.i, %for.end.loopexit.i ]
  %conv153.i = trunc i32 %ns.0.lcssa.i to i8
  %length154.i = getelementptr inbounds %struct.lv, ptr %slv.0.lcssa.i, i32 0, i32 1
  %222 = ptrtoint ptr %length154.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv153.i, ptr %length154.i, align 1
  %index155.i = getelementptr inbounds %struct.linelock, ptr %sdtlck.0.lcssa.i, i32 0, i32 2
  %223 = ptrtoint ptr %index155.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %index155.i, align 1
  %inc156.i = add i8 %224, 1
  store i8 %inc156.i, ptr %index155.i, align 1
  %225 = ptrtoint ptr %sdtlck to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %sdtlck.0.lcssa.i, ptr %sdtlck, align 4
  %conv157.i = trunc i32 %nd.0.lcssa.i to i8
  %length158.i = getelementptr %struct.linelock, ptr %lock, i32 0, i32 6, i32 %idxprom6.i, i32 1
  %226 = ptrtoint ptr %length158.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv157.i, ptr %length158.i, align 1
  %227 = ptrtoint ptr %index276 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %index276, align 1
  %inc160.i = add i8 %228, 1
  store i8 %inc160.i, ptr %index276, align 1
  %229 = ptrtoint ptr %rdtlck to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %lock, ptr %rdtlck, align 4
  %conv161.i = trunc i32 %sfsi.0.lcssa.i to i8
  %230 = ptrtoint ptr %freelist4.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv161.i, ptr %freelist4.i, align 1
  %freecnt.i = getelementptr inbounds %struct.anon.71, ptr %cond, i32 0, i32 4
  %231 = ptrtoint ptr %freecnt.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %freecnt.i, align 2
  %conv165.i = add i8 %232, %conv157.i
  store i8 %conv165.i, ptr %freecnt.i, align 2
  %233 = ptrtoint ptr %nextindex73 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %di.0.lcssa.i, ptr %nextindex73, align 1
  %conv168.i = trunc i32 %dsi.0.lcssa.i to i8
  %234 = ptrtoint ptr %freelist to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv168.i, ptr %freelist, align 1
  %235 = ptrtoint ptr %freecnt to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %freecnt, align 2
  %conv173.i = sub i8 %236, %conv157.i
  store i8 %conv173.i, ptr %freecnt, align 2
  %conv287 = trunc i32 %nxt.2 to i8
  %237 = ptrtoint ptr %nextindex223 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv287, ptr %nextindex223, align 1
  %238 = load i8, ptr %freelist, align 1
  %conv290 = sext i8 %238 to i32
  %arrayidx291 = getelementptr [128 x %struct.dtslot], ptr %30, i32 0, i32 %conv290
  %fsi.1610 = add nsw i32 %conv290, 1
  %239 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %maxslot, align 4
  %conv295611 = zext i8 %240 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fsi.1610, i32 %conv295611)
  %cmp296612 = icmp slt i32 %fsi.1610, %conv295611
  br i1 %cmp296612, label %dtMoveEntry.exit.for.body298_crit_edge, label %dtMoveEntry.exit.for.end304_crit_edge

dtMoveEntry.exit.for.end304_crit_edge:            ; preds = %dtMoveEntry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end304

dtMoveEntry.exit.for.body298_crit_edge:           ; preds = %dtMoveEntry.exit
  br label %for.body298

for.body298:                                      ; preds = %for.body298.for.body298_crit_edge, %dtMoveEntry.exit.for.body298_crit_edge
  %fsi.1614 = phi i32 [ %fsi.1, %for.body298.for.body298_crit_edge ], [ %fsi.1610, %dtMoveEntry.exit.for.body298_crit_edge ]
  %f.1613 = phi ptr [ %incdec.ptr302, %for.body298.for.body298_crit_edge ], [ %arrayidx291, %dtMoveEntry.exit.for.body298_crit_edge ]
  %conv299 = trunc i32 %fsi.1614 to i8
  %241 = ptrtoint ptr %f.1613 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv299, ptr %f.1613, align 2
  %incdec.ptr302 = getelementptr %struct.dtslot, ptr %f.1613, i32 1
  %fsi.1 = add nsw i32 %fsi.1614, 1
  %242 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %maxslot, align 4
  %conv295 = zext i8 %243 to i32
  %cmp296 = icmp slt i32 %fsi.1, %conv295
  br i1 %cmp296, label %for.body298.for.body298_crit_edge, label %for.body298.for.end304_crit_edge

for.body298.for.end304_crit_edge:                 ; preds = %for.body298
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end304

for.body298.for.body298_crit_edge:                ; preds = %for.body298
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body298

for.end304:                                       ; preds = %for.body298.for.end304_crit_edge, %dtMoveEntry.exit.for.end304_crit_edge
  %f.1.lcssa = phi ptr [ %arrayidx291, %dtMoveEntry.exit.for.end304_crit_edge ], [ %incdec.ptr302, %for.body298.for.end304_crit_edge ]
  %244 = ptrtoint ptr %f.1.lcssa to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 -1, ptr %f.1.lcssa, align 2
  %245 = ptrtoint ptr %flag72 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %flag72, align 8
  %247 = and i8 %246, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool309.not = icmp eq i8 %247, 0
  br i1 %tobool309.not, label %for.end304.if.end345_crit_edge, label %land.lhs.true310

for.end304.if.end345_crit_edge:                   ; preds = %for.end304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end345

land.lhs.true310:                                 ; preds = %for.end304
  %248 = ptrtoint ptr %i_sb283 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %i_sb283, align 4
  %s_fs_info.i588 = getelementptr inbounds %struct.super_block, ptr %249, i32 0, i32 33
  %250 = ptrtoint ptr %s_fs_info.i588 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %s_fs_info.i588, align 16
  %mntflag313 = getelementptr inbounds %struct.jfs_sb_info, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %mntflag313 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %mntflag313, align 4
  %and314 = and i32 %253, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  br i1 %tobool315.not, label %land.lhs.true310.if.end345_crit_edge, label %if.then316

land.lhs.true310.if.end345_crit_edge:             ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end345

if.then316:                                       ; preds = %land.lhs.true310
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lblock) #8
  %254 = ptrtoint ptr %lblock to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 -1, ptr %lblock, align 8, !annotation !228
  %255 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr null, ptr %mp, align 4
  %256 = and i8 %246, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool320.not = icmp eq i8 %256, 0
  br i1 %tobool320.not, label %cond.false323, label %if.then316.cond.end327_crit_edge

if.then316.cond.end327_crit_edge:                 ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end327

cond.false323:                                    ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #10
  %257 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %stblindex, align 1
  %idxprom325 = zext i8 %258 to i32
  %arrayidx326 = getelementptr [128 x %struct.dtslot], ptr %30, i32 0, i32 %idxprom325
  br label %cond.end327

cond.end327:                                      ; preds = %cond.false323, %if.then316.cond.end327_crit_edge
  %cond328 = phi ptr [ %arrayidx326, %cond.false323 ], [ %self, %if.then316.cond.end327_crit_edge ]
  %259 = ptrtoint ptr %nextindex73 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %nextindex73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %cmp332617.not = icmp eq i8 %260, 0
  br i1 %cmp332617.not, label %cond.end327.for.end341_crit_edge, label %cond.end327.for.body334_crit_edge

cond.end327.for.body334_crit_edge:                ; preds = %cond.end327
  br label %for.body334

cond.end327.for.end341_crit_edge:                 ; preds = %cond.end327
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end341

for.body334:                                      ; preds = %for.body334.for.body334_crit_edge, %cond.end327.for.body334_crit_edge
  %n.3618 = phi i32 [ %inc340, %for.body334.for.body334_crit_edge ], [ 0, %cond.end327.for.body334_crit_edge ]
  %arrayidx335 = getelementptr i8, ptr %cond328, i32 %n.3618
  %261 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx335, align 1
  %idxprom336 = zext i8 %262 to i32
  %index338 = getelementptr [128 x %struct.dtslot], ptr %30, i32 0, i32 %idxprom336, i32 2, i32 13
  %263 = ptrtoint ptr %index338 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %index338, align 4
  %265 = tail call i32 @llvm.bswap.i32(i32 %264)
  call fastcc void @modify_index(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %265, i64 noundef %add.i, i32 noundef %n.3618, ptr noundef nonnull %mp, ptr noundef nonnull %lblock)
  %inc340 = add nuw nsw i32 %n.3618, 1
  %266 = ptrtoint ptr %nextindex73 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %nextindex73, align 1
  %conv331 = zext i8 %267 to i32
  %cmp332 = icmp ult i32 %inc340, %conv331
  br i1 %cmp332, label %for.body334.for.body334_crit_edge, label %for.body334.for.end341_crit_edge

for.body334.for.end341_crit_edge:                 ; preds = %for.body334
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end341

for.body334.for.body334_crit_edge:                ; preds = %for.body334
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body334

for.end341:                                       ; preds = %for.body334.for.end341_crit_edge, %cond.end327.for.end341_crit_edge
  %268 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mp, align 4
  %tobool342.not = icmp eq ptr %269, null
  br i1 %tobool342.not, label %for.end341.if.end344_crit_edge, label %if.then343

for.end341.if.end344_crit_edge:                   ; preds = %for.end341
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end344

if.then343:                                       ; preds = %for.end341
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %269) #8
  br label %if.end344

if.end344:                                        ; preds = %if.then343, %for.end341.if.end344_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lblock) #8
  br label %if.end345

if.end345:                                        ; preds = %if.end344, %land.lhs.true310.if.end345_crit_edge, %for.end304.if.end345_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0.lcssa, i32 %conv219)
  %cmp346.not = icmp slt i32 %off.0.lcssa, %conv219
  br i1 %cmp346.not, label %if.else379, label %if.then348

if.then348:                                       ; preds = %if.end345
  %key349 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 3
  %270 = ptrtoint ptr %key349 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %key349, align 4
  %data350 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 4
  %272 = ptrtoint ptr %data350 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %data350, align 4
  call fastcc void @dtInsertEntry(ptr noundef %cond, i32 noundef %conv219, ptr noundef %271, ptr noundef %273, ptr noundef nonnull %sdtlck)
  %274 = ptrtoint ptr %sdtlck to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %sdtlck, align 4
  %index351 = getelementptr inbounds %struct.linelock, ptr %275, i32 0, i32 2
  %276 = ptrtoint ptr %index351 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %index351, align 1
  %maxcnt = getelementptr inbounds %struct.linelock, ptr %275, i32 0, i32 1
  %278 = ptrtoint ptr %maxcnt to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %maxcnt, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %277, i8 %279)
  %cmp354.not = icmp slt i8 %277, %279
  br i1 %cmp354.not, label %if.then348.if.end358_crit_edge, label %if.then356

if.then348.if.end358_crit_edge:                   ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end358

if.then356:                                       ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #10
  %call357 = tail call ptr @txLinelock(ptr noundef %275) #8
  %280 = ptrtoint ptr %sdtlck to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %call357, ptr %sdtlck, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.then356, %if.then348.if.end358_crit_edge
  %281 = ptrtoint ptr %sdtlck to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %sdtlck, align 4
  %index360 = getelementptr inbounds %struct.linelock, ptr %282, i32 0, i32 2
  %283 = ptrtoint ptr %index360 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %index360, align 1
  %idxprom361 = sext i8 %284 to i32
  %arrayidx362 = getelementptr %struct.linelock, ptr %282, i32 0, i32 6, i32 %idxprom361
  %shr363 = ashr i32 %conv219, 5
  %285 = ptrtoint ptr %stblindex220 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %stblindex220, align 1
  %287 = trunc i32 %shr363 to i8
  %conv367 = add i8 %286, %287
  %288 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %conv367, ptr %arrayidx362, align 1
  %289 = ptrtoint ptr %nextindex223 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %nextindex223, align 1
  %conv370 = zext i8 %290 to i32
  %sub371 = add nuw nsw i32 %conv370, 8191
  %291 = lshr i32 %sub371, 5
  %sub373 = sub nsw i32 %291, %shr363
  %292 = trunc i32 %sub373 to i8
  %conv375 = add i8 %292, 1
  %length376 = getelementptr %struct.linelock, ptr %282, i32 0, i32 6, i32 %idxprom361, i32 1
  %293 = ptrtoint ptr %length376 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv375, ptr %length376, align 1
  %294 = load i8, ptr %index360, align 1
  %inc378 = add i8 %294, 1
  store i8 %inc378, ptr %index360, align 1
  br label %out

if.else379:                                       ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #10
  %sub380 = sub i32 %conv219, %nxt.2
  %key381 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 3
  %295 = ptrtoint ptr %key381 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %key381, align 4
  %data382 = getelementptr inbounds %struct.dtsplit, ptr %split, i32 0, i32 4
  %297 = ptrtoint ptr %data382 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %data382, align 4
  call fastcc void @dtInsertEntry(ptr noundef %30, i32 noundef %sub380, ptr noundef %296, ptr noundef %298, ptr noundef nonnull %rdtlck)
  br label %out

out:                                              ; preds = %if.else379, %if.end358, %for.end
  %299 = ptrtoint ptr %rmpp to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call8, ptr %rmpp, align 4
  %300 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %300, i32 8)
  %301 = load i64, ptr %arrayidx, align 4
  %302 = ptrtoint ptr %rpxdp to i32
  call void @__asan_storeN_noabort(i32 %302, i32 8)
  store i64 %301, ptr %rpxdp, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then176, %if.then14, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %if.then14 ], [ 0, %out ], [ -5, %if.then176 ], [ -5, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdtlck) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdtlck) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mp) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dtGetKey(ptr nocapture noundef readonly %p, i32 noundef %i, ptr nocapture noundef %key, i32 noundef %flag) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flag1 = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %flag1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flag1, align 8
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stbl2 = getelementptr inbounds %struct.anon.75, ptr %p, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 7
  %3 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stblindex, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %stbl2, %cond.true ], [ %arrayidx, %cond.false ]
  %arrayidx3 = getelementptr i8, ptr %cond, i32 %i
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %7 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  %arrayidx31 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %conv4
  br i1 %tobool8.not, label %if.else30, label %if.then

if.then:                                          ; preds = %cond.end
  %next = getelementptr inbounds %struct.ldtentry, ptr %arrayidx31, i32 0, i32 1
  %8 = ptrtoint ptr %next to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %next, align 4
  %namlen11 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx31, i32 0, i32 2
  %10 = ptrtoint ptr %namlen11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %namlen11, align 1
  %name13 = getelementptr inbounds %struct.ldtentry, ptr %arrayidx31, i32 0, i32 3
  %and15 = and i32 %flag, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i8 @llvm.umin.i8(i8 %11, i8 11)
  br label %if.end45

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i8 @llvm.umin.i8(i8 %11, i8 13)
  br label %if.end45

if.else30:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %next32 = getelementptr inbounds %struct.idtentry, ptr %arrayidx31, i32 0, i32 1
  %14 = ptrtoint ptr %next32 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %next32, align 4
  %namlen34 = getelementptr inbounds %struct.idtentry, ptr %arrayidx31, i32 0, i32 2
  %16 = ptrtoint ptr %namlen34 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %namlen34, align 1
  %name36 = getelementptr inbounds %struct.idtentry, ptr %arrayidx31, i32 0, i32 3
  %18 = tail call i8 @llvm.umin.i8(i8 %17, i8 11)
  br label %if.end45

if.end45:                                         ; preds = %if.else30, %if.else, %if.then17
  %namlen.0.in = phi i8 [ %11, %if.then17 ], [ %11, %if.else ], [ %17, %if.else30 ]
  %len.0.in = phi i8 [ %12, %if.then17 ], [ %13, %if.else ], [ %18, %if.else30 ]
  %name.0 = phi ptr [ %name13, %if.then17 ], [ %name13, %if.else ], [ %name36, %if.else30 ]
  %si.0.in = phi i8 [ %9, %if.then17 ], [ %9, %if.else ], [ %15, %if.else30 ]
  %namlen.0 = zext i8 %namlen.0.in to i32
  %len.0 = zext i8 %len.0.in to i32
  %19 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %namlen.0, ptr %key, align 4
  %name47 = getelementptr inbounds %struct.component_name, ptr %key, i32 0, i32 1
  %20 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len.0.in)
  %tobool.not2.i = icmp eq i8 %len.0.in, 0
  br i1 %tobool.not2.i, label %if.end45.UniStrncpy_from_le.exit_crit_edge, label %if.end45.land.rhs.i_crit_edge

if.end45.land.rhs.i_crit_edge:                    ; preds = %if.end45
  br label %land.rhs.i

if.end45.UniStrncpy_from_le.exit_crit_edge:       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncpy_from_le.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end45.land.rhs.i_crit_edge
  %n.addr.05.i = phi i32 [ %dec6.i, %while.body.i.land.rhs.i_crit_edge ], [ %len.0, %if.end45.land.rhs.i_crit_edge ]
  %ucs2.addr.04.i = phi ptr [ %incdec.ptr.i, %while.body.i.land.rhs.i_crit_edge ], [ %name.0, %if.end45.land.rhs.i_crit_edge ]
  %ucs1.addr.03.i = phi ptr [ %incdec.ptr2.i, %while.body.i.land.rhs.i_crit_edge ], [ %21, %if.end45.land.rhs.i_crit_edge ]
  %22 = ptrtoint ptr %ucs2.addr.04.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ucs2.addr.04.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool1.not.i = icmp eq i16 %23, 0
  br i1 %tobool1.not.i, label %while.body6.preheader.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %dec6.i = add nsw i32 %n.addr.05.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %ucs2.addr.04.i, i32 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #8
  %incdec.ptr2.i = getelementptr i16, ptr %ucs1.addr.03.i, i32 1
  %25 = ptrtoint ptr %ucs1.addr.03.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %ucs1.addr.03.i, align 2
  %tobool.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool.not.i, label %while.body.i.UniStrncpy_from_le.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.UniStrncpy_from_le.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncpy_from_le.exit

while.body6.preheader.i:                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = shl nuw i32 %n.addr.05.i, 1
  %27 = call ptr @memset(ptr %ucs1.addr.03.i, i32 0, i32 %26)
  br label %UniStrncpy_from_le.exit

UniStrncpy_from_le.exit:                          ; preds = %while.body6.preheader.i, %while.body.i.UniStrncpy_from_le.exit_crit_edge, %if.end45.UniStrncpy_from_le.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %si.0.in)
  %cmp48123 = icmp sgt i8 %si.0.in, -1
  br i1 %cmp48123, label %UniStrncpy_from_le.exit.while.body_crit_edge, label %UniStrncpy_from_le.exit.while.end_crit_edge

UniStrncpy_from_le.exit.while.end_crit_edge:      ; preds = %UniStrncpy_from_le.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

UniStrncpy_from_le.exit.while.body_crit_edge:     ; preds = %UniStrncpy_from_le.exit
  br label %while.body

while.body:                                       ; preds = %UniStrncpy_from_le.exit110.while.body_crit_edge, %UniStrncpy_from_le.exit.while.body_crit_edge
  %si.1.in127 = phi i8 [ %36, %UniStrncpy_from_le.exit110.while.body_crit_edge ], [ %si.0.in, %UniStrncpy_from_le.exit.while.body_crit_edge ]
  %kname.0126 = phi ptr [ %add.ptr, %UniStrncpy_from_le.exit110.while.body_crit_edge ], [ %21, %UniStrncpy_from_le.exit.while.body_crit_edge ]
  %len.1125 = phi i32 [ %28, %UniStrncpy_from_le.exit110.while.body_crit_edge ], [ %len.0, %UniStrncpy_from_le.exit.while.body_crit_edge ]
  %namlen.1124 = phi i32 [ %sub, %UniStrncpy_from_le.exit110.while.body_crit_edge ], [ %namlen.0, %UniStrncpy_from_le.exit.while.body_crit_edge ]
  %si.1113 = zext i8 %si.1.in127 to i32
  %arrayidx50 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %si.1113
  %add.ptr = getelementptr i16, ptr %kname.0126, i32 %len.1125
  %sub = sub i32 %namlen.1124, %len.1125
  %28 = tail call i32 @llvm.smin.i32(i32 %sub, i32 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not2.i98 = icmp eq i32 %28, 0
  br i1 %tobool.not2.i98, label %while.body.UniStrncpy_from_le.exit110_crit_edge, label %land.rhs.i103.preheader

while.body.UniStrncpy_from_le.exit110_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncpy_from_le.exit110

land.rhs.i103.preheader:                          ; preds = %while.body
  %name58 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %si.1113, i32 2
  br label %land.rhs.i103

land.rhs.i103:                                    ; preds = %while.body.i108.land.rhs.i103_crit_edge, %land.rhs.i103.preheader
  %n.addr.05.i99 = phi i32 [ %dec6.i104, %while.body.i108.land.rhs.i103_crit_edge ], [ %28, %land.rhs.i103.preheader ]
  %ucs2.addr.04.i100 = phi ptr [ %incdec.ptr.i105, %while.body.i108.land.rhs.i103_crit_edge ], [ %name58, %land.rhs.i103.preheader ]
  %ucs1.addr.03.i101 = phi ptr [ %incdec.ptr2.i106, %while.body.i108.land.rhs.i103_crit_edge ], [ %add.ptr, %land.rhs.i103.preheader ]
  %29 = ptrtoint ptr %ucs2.addr.04.i100 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ucs2.addr.04.i100, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool1.not.i102 = icmp eq i16 %30, 0
  br i1 %tobool1.not.i102, label %while.body6.preheader.i109, label %while.body.i108

while.body.i108:                                  ; preds = %land.rhs.i103
  %dec6.i104 = add i32 %n.addr.05.i99, -1
  %incdec.ptr.i105 = getelementptr i16, ptr %ucs2.addr.04.i100, i32 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #8
  %incdec.ptr2.i106 = getelementptr i16, ptr %ucs1.addr.03.i101, i32 1
  %32 = ptrtoint ptr %ucs1.addr.03.i101 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %ucs1.addr.03.i101, align 2
  %tobool.not.i107 = icmp eq i32 %dec6.i104, 0
  br i1 %tobool.not.i107, label %while.body.i108.UniStrncpy_from_le.exit110_crit_edge, label %while.body.i108.land.rhs.i103_crit_edge

while.body.i108.land.rhs.i103_crit_edge:          ; preds = %while.body.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i103

while.body.i108.UniStrncpy_from_le.exit110_crit_edge: ; preds = %while.body.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %UniStrncpy_from_le.exit110

while.body6.preheader.i109:                       ; preds = %land.rhs.i103
  call void @__sanitizer_cov_trace_pc() #10
  %33 = shl nuw i32 %n.addr.05.i99, 1
  %34 = call ptr @memset(ptr %ucs1.addr.03.i101, i32 0, i32 %33)
  br label %UniStrncpy_from_le.exit110

UniStrncpy_from_le.exit110:                       ; preds = %while.body6.preheader.i109, %while.body.i108.UniStrncpy_from_le.exit110_crit_edge, %while.body.UniStrncpy_from_le.exit110_crit_edge
  %35 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx50, align 2
  %cmp48 = icmp sgt i8 %36, -1
  br i1 %cmp48, label %UniStrncpy_from_le.exit110.while.body_crit_edge, label %UniStrncpy_from_le.exit110.while.end_crit_edge

UniStrncpy_from_le.exit110.while.end_crit_edge:   ; preds = %UniStrncpy_from_le.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

UniStrncpy_from_le.exit110.while.body_crit_edge:  ; preds = %UniStrncpy_from_le.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %UniStrncpy_from_le.exit110.while.end_crit_edge, %UniStrncpy_from_le.exit.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @txMaplock(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_index(ptr noundef %ip, i32 noundef %index, ptr nocapture noundef %mp, ptr nocapture noundef %lblock) unnamed_addr #0 align 64 {
entry:
  %xaddr.i = alloca i64, align 8
  %xflag.i = alloca i32, align 4
  %xlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp = icmp ult i32 %index, 2
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @find_index.maxWarnings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %1 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp sgt i32 %1, 1
  br i1 %cmp2, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %index) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %2 = load i32, ptr @find_index.maxWarnings, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @find_index.maxWarnings, align 4
  br label %cleanup

if.end9:                                          ; preds = %entry
  %next_index = getelementptr i8, ptr %ip, i32 -784
  %3 = ptrtoint ptr %next_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %index)
  %cmp10.not = icmp ugt i32 %4, %index
  br i1 %cmp10.not, label %if.end23, label %do.body12

do.body12:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %5 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp13 = icmp sgt i32 %5, 1
  br i1 %cmp13, label %do.end17, label %do.body12.cleanup_crit_edge

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %next_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %cmp.i = icmp ugt i32 %7, 14
  br i1 %cmp.i, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %mp, align 4
  %u = getelementptr i8, ptr %ip, i32 -400
  %sub = add i32 %index, -2
  %arrayidx = getelementptr [12 x %struct.dir_table_slot], ptr %u, i32 0, i32 %sub
  br label %cleanup

if.else:                                          ; preds = %if.end23
  %sub27 = shl i32 %index, 3
  %mul = add i32 %sub27, -16
  %and = and i32 %mul, 4088
  %9 = lshr i32 %mul, 12
  %10 = zext i32 %9 to i64
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %l2nbperpage, align 2
  %conv30 = sext i16 %16 to i32
  %sh_prom = zext i32 %conv30 to i64
  %shl = shl i64 %10, %sh_prom
  %17 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mp, align 4
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %if.else.if.then37_crit_edge, label %land.lhs.true

if.else.if.then37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

land.lhs.true:                                    ; preds = %if.else
  %19 = ptrtoint ptr %lblock to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %lblock, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %shl)
  %cmp32.not = icmp eq i64 %20, %shl
  br i1 %cmp32.not, label %land.lhs.true.if.end54_crit_edge, label %if.then34

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %18) #8
  %21 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %mp, align 4
  br label %if.then37

if.then37:                                        ; preds = %if.then34, %if.else.if.then37_crit_edge
  %22 = ptrtoint ptr %lblock to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %shl, ptr %lblock, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr.i) #8
  %23 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %xaddr.i, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xflag.i) #8
  %24 = ptrtoint ptr %xflag.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %xflag.i, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen.i) #8
  %25 = ptrtoint ptr %xlen.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %xlen.i, align 4, !annotation !228
  %call.i = call i32 @xtLookup(ptr noundef %ip, i64 noundef %shl, i64 noundef 1, ptr noundef nonnull %xflag.i, ptr noundef nonnull %xaddr.i, ptr noundef nonnull %xlen.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then37.if.end39.thread84_crit_edge

if.then37.if.end39.thread84_crit_edge:            ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.thread84

lor.lhs.false.i:                                  ; preds = %if.then37
  %26 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %xaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp.i80 = icmp eq i64 %27, 0
  br i1 %cmp.i80, label %lor.lhs.false.i.if.end39.thread84_crit_edge, label %if.end39

lor.lhs.false.i.if.end39.thread84_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.thread84

if.end39.thread84:                                ; preds = %lor.lhs.false.i.if.end39.thread84_crit_edge, %if.then37.if.end39.thread84_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i) #8
  %28 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %mp, align 4
  br label %do.body42

if.end39:                                         ; preds = %lor.lhs.false.i
  %conv.i81 = trunc i64 %27 to i32
  %call1.i = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv.i81, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i) #8
  %29 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call1.i, ptr %mp, align 4
  %tobool40.not = icmp eq ptr %call1.i, null
  br i1 %tobool40.not, label %if.end39.do.body42_crit_edge, label %if.end39.if.end54_crit_edge

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end39.do.body42_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

do.body42:                                        ; preds = %if.end39.do.body42_crit_edge, %if.end39.thread84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %30 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp43 = icmp sgt i32 %30, 0
  br i1 %cmp43, label %do.end48, label %do.body42.cleanup_crit_edge

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #12
  br label %cleanup

if.end54:                                         ; preds = %if.end39.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge
  %31 = phi ptr [ %call1.i, %if.end39.if.end54_crit_edge ], [ %18, %land.lhs.true.if.end54_crit_edge ]
  %data = getelementptr inbounds %struct.metapage, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end48, %do.body42.cleanup_crit_edge, %if.then26, %do.end17, %do.body12.cleanup_crit_edge, %do.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end7 ], [ null, %if.then.cleanup_crit_edge ], [ null, %do.end17 ], [ null, %do.body12.cleanup_crit_edge ], [ null, %do.end48 ], [ null, %do.body42.cleanup_crit_edge ], [ %arrayidx, %if.then26 ], [ %add.ptr, %if.end54 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtLookup(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dtRelink(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %p, align 8
  %prev = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %prev, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %entry.if.end82_crit_edge, label %if.else

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.else:                                          ; preds = %entry
  %5 = tail call i64 @llvm.bswap.i64(i64 %1)
  %conv = trunc i64 %5 to i32
  %call4 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.else6, label %if.then18

if.else6:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %6 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8 = icmp sgt i32 %6, 0
  br i1 %cmp8, label %do.end, label %if.else6.cleanup_crit_edge

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.then18:                                        ; preds = %if.else
  %data = getelementptr inbounds %struct.metapage, ptr %call4, i32 0, i32 7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %nextindex = getelementptr inbounds %struct.anon.71, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %nextindex to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nextindex, align 1
  %maxslot = getelementptr inbounds %struct.anon.71, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %maxslot to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %maxslot, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp23 = icmp ugt i8 %10, %12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %12)
  %cmp28 = icmp ugt i8 %12, -128
  %or.cond = or i1 %cmp23, %cmp28
  %13 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %call4, align 8
  %15 = and i16 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp32 = icmp eq i16 %15, 0
  br i1 %or.cond, label %if.then30, label %if.end42

if.then30:                                        ; preds = %if.then18
  br i1 %cmp32, label %if.then30.if.end35_crit_edge, label %if.then34

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call4) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then30.if.end35_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %17, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end42:                                         ; preds = %if.then18
  br i1 %cmp32, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end50

if.else49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %flag = getelementptr inbounds %struct.metapage, ptr %call4, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #8
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  %call51 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %call4, i32 noundef 8320) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %18 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp53 = icmp sgt i32 %18, 3
  br i1 %cmp53, label %do.end58, label %if.end50.do.end63_crit_edge

if.end50.do.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %call51, ptr noundef %ip, ptr noundef nonnull %call4) #12
  br label %do.end63

do.end63:                                         ; preds = %do.end58, %if.end50.do.end63_crit_edge
  %lock = getelementptr inbounds %struct.tlock, ptr %call51, i32 0, i32 6
  %index = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index, align 1
  %maxcnt = getelementptr inbounds %struct.tlock, ptr %call51, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %maxcnt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %maxcnt, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp66.not = icmp slt i8 %20, %22
  br i1 %cmp66.not, label %do.end63.if.end70_crit_edge, label %if.then68

do.end63.if.end70_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then68:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = tail call ptr @txLinelock(ptr noundef %lock) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %do.end63.if.end70_crit_edge
  %dtlck.0 = phi ptr [ %call69, %if.then68 ], [ %lock, %do.end63.if.end70_crit_edge ]
  %index72 = getelementptr inbounds %struct.linelock, ptr %dtlck.0, i32 0, i32 2
  %23 = ptrtoint ptr %index72 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index72, align 1
  %idxprom = sext i8 %24 to i32
  %arrayidx = getelementptr %struct.linelock, ptr %dtlck.0, i32 0, i32 6, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx, align 1
  %length = getelementptr %struct.linelock, ptr %dtlck.0, i32 0, i32 6, i32 %idxprom, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %length, align 1
  %27 = load i8, ptr %index72, align 1
  %inc = add i8 %27, 1
  store i8 %inc, ptr %index72, align 1
  %prev74 = getelementptr inbounds %struct.anon.71, ptr %8, i32 0, i32 1
  %28 = ptrtoint ptr %prev74 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %3, ptr %prev74, align 8
  %29 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %call4, align 8
  %31 = and i16 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp78 = icmp eq i16 %31, 0
  br i1 %cmp78, label %if.end70.if.end82_crit_edge, label %if.then80

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call4) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end70.if.end82_crit_edge, %entry.if.end82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp83.not = icmp eq i64 %3, 0
  br i1 %cmp83.not, label %if.end82.cleanup_crit_edge, label %if.else95

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else95:                                        ; preds = %if.end82
  %conv96 = trunc i64 %4 to i32
  %call97 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv96, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.else101, label %if.then117

if.else101:                                       ; preds = %if.else95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %32 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp103 = icmp sgt i32 %32, 0
  br i1 %cmp103, label %do.end108, label %if.else101.cleanup_crit_edge

if.else101.cleanup_crit_edge:                     ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end108:                                        ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.then117:                                       ; preds = %if.else95
  %data100 = getelementptr inbounds %struct.metapage, ptr %call97, i32 0, i32 7
  %33 = ptrtoint ptr %data100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data100, align 4
  %nextindex118 = getelementptr inbounds %struct.anon.71, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %nextindex118 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nextindex118, align 1
  %maxslot124 = getelementptr inbounds %struct.anon.71, ptr %34, i32 0, i32 6
  %37 = ptrtoint ptr %maxslot124 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %maxslot124, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp128 = icmp ugt i8 %36, %38
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %38)
  %cmp135 = icmp ugt i8 %38, -128
  %or.cond301 = or i1 %cmp128, %cmp135
  %39 = ptrtoint ptr %call97 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %call97, align 8
  %41 = and i16 %40, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp141 = icmp eq i16 %41, 0
  br i1 %or.cond301, label %if.then137, label %if.end152

if.then137:                                       ; preds = %if.then117
  br i1 %cmp141, label %if.then137.if.end144_crit_edge, label %if.then143

if.then137.if.end144_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then143:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call97) #8
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.then137.if.end144_crit_edge
  %i_sb145 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb145 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb145, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %43, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end152:                                        ; preds = %if.then117
  br i1 %cmp141, label %if.then158, label %if.else159

if.then158:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  br label %if.end161

if.else159:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  %flag160 = getelementptr inbounds %struct.metapage, ptr %call97, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag160) #8
  br label %if.end161

if.end161:                                        ; preds = %if.else159, %if.then158
  %call162 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %call97, i32 noundef 8320) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %44 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp164 = icmp sgt i32 %44, 3
  br i1 %cmp164, label %do.end169, label %if.end161.do.end174_crit_edge

if.end161.do.end174_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end174

do.end169:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %call162, ptr noundef %ip, ptr noundef nonnull %call97) #12
  br label %do.end174

do.end174:                                        ; preds = %do.end169, %if.end161.do.end174_crit_edge
  %lock175 = getelementptr inbounds %struct.tlock, ptr %call162, i32 0, i32 6
  %index176 = getelementptr inbounds %struct.linelock, ptr %lock175, i32 0, i32 2
  %45 = ptrtoint ptr %index176 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %index176, align 1
  %maxcnt178 = getelementptr inbounds %struct.tlock, ptr %call162, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %maxcnt178 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %maxcnt178, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp180.not = icmp slt i8 %46, %48
  br i1 %cmp180.not, label %do.end174.if.end184_crit_edge, label %if.then182

do.end174.if.end184_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184

if.then182:                                       ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #10
  %call183 = tail call ptr @txLinelock(ptr noundef %lock175) #8
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %do.end174.if.end184_crit_edge
  %dtlck.1 = phi ptr [ %call183, %if.then182 ], [ %lock175, %do.end174.if.end184_crit_edge ]
  %index186 = getelementptr inbounds %struct.linelock, ptr %dtlck.1, i32 0, i32 2
  %49 = ptrtoint ptr %index186 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %index186, align 1
  %idxprom187 = sext i8 %50 to i32
  %arrayidx188 = getelementptr %struct.linelock, ptr %dtlck.1, i32 0, i32 6, i32 %idxprom187
  %51 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx188, align 1
  %length190 = getelementptr %struct.linelock, ptr %dtlck.1, i32 0, i32 6, i32 %idxprom187, i32 1
  %52 = ptrtoint ptr %length190 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %length190, align 1
  %53 = load i8, ptr %index186, align 1
  %inc192 = add i8 %53, 1
  store i8 %inc192, ptr %index186, align 1
  %54 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %1, ptr %34, align 8
  %55 = ptrtoint ptr %call97 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %call97, align 8
  %57 = and i16 %56, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp197 = icmp eq i16 %57, 0
  br i1 %cmp197, label %if.end184.cleanup_crit_edge, label %if.then199

if.end184.cleanup_crit_edge:                      ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then199:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call97) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then199, %if.end184.cleanup_crit_edge, %if.end144, %do.end108, %if.else101.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end35, %do.end, %if.else6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end184.cleanup_crit_edge ], [ 0, %if.then199 ], [ 0, %if.end82.cleanup_crit_edge ], [ -5, %if.end35 ], [ -5, %if.else6.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %if.end144 ], [ -5, %if.else101.cleanup_crit_edge ], [ -5, %do.end108 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dtTruncateEntry(ptr nocapture noundef %p, ptr nocapture noundef %dtlock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dtlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtlock, align 4
  %flag = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flag, align 8
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stbl1 = getelementptr inbounds %struct.anon.75, ptr %p, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stblindex = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 7
  %5 = ptrtoint ptr %stblindex to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stblindex, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %stbl1, %cond.true ], [ %arrayidx, %cond.false ]
  %7 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cond, align 1
  %conv3 = sext i8 %8 to i32
  %index = getelementptr inbounds %struct.linelock, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index, align 1
  %maxcnt = getelementptr inbounds %struct.linelock, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %maxcnt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %maxcnt, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.not = icmp slt i8 %10, %12
  br i1 %cmp.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @txLinelock(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %dtlck.0 = phi ptr [ %call, %if.then ], [ %1, %cond.end.if.end_crit_edge ]
  %index8 = getelementptr inbounds %struct.linelock, ptr %dtlck.0, i32 0, i32 2
  %13 = ptrtoint ptr %index8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %index8, align 1
  %idxprom9 = sext i8 %14 to i32
  %arrayidx10 = getelementptr %struct.linelock, ptr %dtlck.0, i32 0, i32 6, i32 %idxprom9
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %8, ptr %arrayidx10, align 1
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flag, align 8
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp eq i8 %18, 0
  br i1 %tobool16.not, label %do.end, label %do.end28

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 4370, ptr noundef nonnull @.str.83) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4370, 0\0A.popsection", ""() #8, !srcloc !237
  unreachable

do.end28:                                         ; preds = %if.end
  %arrayidx12 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %conv3
  %namlen = getelementptr inbounds %struct.idtentry, ptr %arrayidx12, i32 0, i32 2
  %19 = ptrtoint ptr %namlen to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %namlen, align 1
  %next = getelementptr inbounds %struct.idtentry, ptr %arrayidx12, i32 0, i32 1
  %20 = ptrtoint ptr %next to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %next, align 4
  store i8 -1, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp313 = icmp sgt i8 %21, -1
  br i1 %cmp313, label %do.end28.while.body_crit_edge, label %while.end.thread

do.end28.while.body_crit_edge:                    ; preds = %do.end28
  br label %while.body

while.end.thread:                                 ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  %length5820 = getelementptr %struct.linelock, ptr %dtlck.0, i32 0, i32 6, i32 %idxprom9, i32 1
  %22 = ptrtoint ptr %length5820 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %length5820, align 1
  %index5921 = getelementptr inbounds %struct.linelock, ptr %dtlck.0, i32 0, i32 2
  %23 = ptrtoint ptr %index5921 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index5921, align 1
  %inc6022 = add i8 %24, 1
  store i8 %inc6022, ptr %index5921, align 1
  %25 = ptrtoint ptr %dtlock to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dtlck.0, ptr %dtlock, align 4
  br label %cleanup

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %do.end28.while.body_crit_edge
  %n.09 = phi i32 [ %inc52, %if.end51.while.body_crit_edge ], [ 1, %do.end28.while.body_crit_edge ]
  %xsi.08 = phi i32 [ %si.01024, %if.end51.while.body_crit_edge ], [ %conv3, %do.end28.while.body_crit_edge ]
  %lv.07 = phi ptr [ %lv.2, %if.end51.while.body_crit_edge ], [ %arrayidx10, %do.end28.while.body_crit_edge ]
  %dtlck.16 = phi ptr [ %dtlck.3, %if.end51.while.body_crit_edge ], [ %dtlck.0, %do.end28.while.body_crit_edge ]
  %freecnt.05 = phi i32 [ %inc53, %if.end51.while.body_crit_edge ], [ 0, %do.end28.while.body_crit_edge ]
  %si.0.in4 = phi i8 [ %34, %if.end51.while.body_crit_edge ], [ %21, %do.end28.while.body_crit_edge ]
  %si.01024 = zext i8 %si.0.in4 to i32
  %add = add nsw i32 %xsi.08, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %si.01024)
  %cmp33.not = icmp eq i32 %add, %si.01024
  br i1 %cmp33.not, label %while.body.if.end51_crit_edge, label %if.then35

while.body.if.end51_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then35:                                        ; preds = %while.body
  %conv36 = trunc i32 %n.09 to i8
  %length = getelementptr inbounds %struct.lv, ptr %lv.07, i32 0, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv36, ptr %length, align 1
  %index37 = getelementptr inbounds %struct.linelock, ptr %dtlck.16, i32 0, i32 2
  %27 = ptrtoint ptr %index37 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %index37, align 1
  %inc = add i8 %28, 1
  store i8 %inc, ptr %index37, align 1
  %maxcnt40 = getelementptr inbounds %struct.linelock, ptr %dtlck.16, i32 0, i32 1
  %29 = ptrtoint ptr %maxcnt40 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %maxcnt40, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc, i8 %30)
  %cmp42 = icmp slt i8 %inc, %30
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr %struct.lv, ptr %lv.07, i32 1
  br label %if.end48

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call ptr @txLinelock(ptr noundef %dtlck.16) #8
  %lv46 = getelementptr inbounds %struct.linelock, ptr %call45, i32 0, i32 6
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then44
  %dtlck.2 = phi ptr [ %dtlck.16, %if.then44 ], [ %call45, %if.else ]
  %lv.1 = phi ptr [ %incdec.ptr, %if.then44 ], [ %lv46, %if.else ]
  %31 = ptrtoint ptr %lv.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %si.0.in4, ptr %lv.1, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %while.body.if.end51_crit_edge
  %dtlck.3 = phi ptr [ %dtlck.2, %if.end48 ], [ %dtlck.16, %while.body.if.end51_crit_edge ]
  %lv.2 = phi ptr [ %lv.1, %if.end48 ], [ %lv.07, %while.body.if.end51_crit_edge ]
  %n.1 = phi i32 [ 0, %if.end48 ], [ %n.09, %while.body.if.end51_crit_edge ]
  %inc52 = add i32 %n.1, 1
  %inc53 = add i32 %freecnt.05, 1
  %arrayidx54 = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %si.01024
  %cnt = getelementptr [128 x %struct.dtslot], ptr %p, i32 0, i32 %si.01024, i32 1
  %32 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %cnt, align 1
  %33 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx54, align 2
  %cmp31 = icmp sgt i8 %34, -1
  br i1 %cmp31, label %if.end51.while.body_crit_edge, label %while.end

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end51
  %phi.cast = trunc i32 %inc52 to i8
  %length58 = getelementptr inbounds %struct.lv, ptr %lv.2, i32 0, i32 1
  %35 = ptrtoint ptr %length58 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %phi.cast, ptr %length58, align 1
  %index59 = getelementptr inbounds %struct.linelock, ptr %dtlck.3, i32 0, i32 2
  %36 = ptrtoint ptr %index59 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %index59, align 1
  %inc60 = add i8 %37, 1
  store i8 %inc60, ptr %index59, align 1
  %38 = ptrtoint ptr %dtlock to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dtlck.3, ptr %dtlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc53)
  %cmp61 = icmp eq i32 %inc53, 0
  br i1 %cmp61, label %while.end.cleanup_crit_edge, label %if.end64

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end64:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %freelist = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 5
  %39 = ptrtoint ptr %freelist to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %freelist, align 1
  %41 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx54, align 2
  store i8 %21, ptr %freelist, align 1
  %freecnt68 = getelementptr inbounds %struct.anon.71, ptr %p, i32 0, i32 4
  %42 = ptrtoint ptr %freecnt68 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %freecnt68, align 2
  %44 = trunc i32 %inc53 to i8
  %conv71 = add i8 %43, %44
  store i8 %conv71, ptr %freecnt68, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %while.end.cleanup_crit_edge, %while.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @txBegin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_index(i16 noundef zeroext %tid, ptr noundef %ip, i64 noundef %bn, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  %xaddr.i304 = alloca i64, align 8
  %xflag.i305 = alloca i32, align 4
  %xlen.i306 = alloca i32, align 4
  %xaddr.i = alloca i64, align 8
  %xflag.i = alloca i32, align 4
  %xlen.i = alloca i32, align 4
  %xaddr = alloca i64, align 8
  %temp_table = alloca [12 x %struct.dir_table_slot], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr) #8
  %4 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %xaddr, align 8, !annotation !228
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mntflag, align 4
  %and = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %do.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 337, ptr noundef nonnull @.str.92) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #8, !srcloc !238
  unreachable

do.end13:                                         ; preds = %entry
  %next_index = getelementptr i8, ptr %ip, i32 -784
  %7 = ptrtoint ptr %next_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp ult i32 %8, 2
  br i1 %cmp, label %do.body15, label %if.end28

do.body15:                                        ; preds = %do.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %9 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp16 = icmp sgt i32 %9, 1
  br i1 %cmp16, label %do.end20, label %do.body15.if.end28.thread_crit_edge

do.body15.if.end28.thread_crit_edge:              ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.thread

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %8) #12
  br label %if.end28.thread

if.end28.thread:                                  ; preds = %do.end20, %do.body15.if.end28.thread_crit_edge
  %10 = ptrtoint ptr %next_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %next_index, align 8
  br label %if.then31

if.end28:                                         ; preds = %do.end13
  %inc = add i32 %8, 1
  %11 = ptrtoint ptr %next_index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %next_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %8)
  %cmp30 = icmp ult i32 %8, 14
  br i1 %cmp30, label %if.end28.if.then31_crit_edge, label %if.end39

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %if.end28.if.then31_crit_edge, %if.end28.thread
  %12 = phi i32 [ 2, %if.end28.thread ], [ %8, %if.end28.if.then31_crit_edge ]
  %sub = add nsw i32 %12, -1
  %conv = zext i32 %sub to i64
  %shl = shl nuw nsw i64 %conv, 3
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %13 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl, ptr %i_size, align 8
  %u = getelementptr i8, ptr %ip, i32 -400
  %sub32 = add nsw i32 %12, -2
  %flag = getelementptr [12 x %struct.dir_table_slot], ptr %u, i32 0, i32 %sub32, i32 1
  %14 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %flag, align 1
  %conv33 = trunc i32 %slot to i8
  %slot34 = getelementptr [12 x %struct.dir_table_slot], ptr %u, i32 0, i32 %sub32, i32 2
  %15 = ptrtoint ptr %slot34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv33, ptr %slot34, align 2
  %shr = lshr i64 %bn, 32
  %conv35 = trunc i64 %shr to i8
  %addr1 = getelementptr [12 x %struct.dir_table_slot], ptr %u, i32 0, i32 %sub32, i32 3
  %16 = ptrtoint ptr %addr1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv35, ptr %addr1, align 1
  %conv37 = trunc i64 %bn to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv37)
  %addr2 = getelementptr [12 x %struct.dir_table_slot], ptr %u, i32 0, i32 %sub32, i32 4
  %18 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %addr2, align 4
  %cflag = getelementptr i8, ptr %ip, i32 -768
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cflag) #8
  br label %cleanup202

if.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %8)
  %cmp40 = icmp eq i32 %8, 14
  br i1 %cmp40, label %if.then42, label %if.end39.if.end135_crit_edge

if.end39.if.end135_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then42:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %temp_table)
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nbperpage, align 4
  %conv43 = sext i16 %20 to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %21 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %22 to i64
  %shl.i = shl i64 %conv43, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %ip, i64 noundef %shl.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end47, label %if.then42.cleanup.thread_crit_edge

if.then42.cleanup.thread_crit_edge:               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end47:                                         ; preds = %if.then42
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #8
  %23 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nbperpage, align 4
  %conv49 = sext i16 %24 to i64
  %call50 = call i32 @dbAlloc(ptr noundef %ip, i64 noundef 0, i64 noundef %conv49, ptr noundef nonnull %xaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end55, label %if.then52

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nbperpage, align 4
  %conv54 = sext i16 %26 to i64
  %27 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i298 = zext i8 %28 to i64
  %shl.i299 = shl i64 %conv54, %sh_prom.i298
  call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i299, i32 noundef 0) #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #8
  br label %cleanup.thread

if.end55:                                         ; preds = %if.end47
  %u56 = getelementptr i8, ptr %ip, i32 -400
  %29 = call ptr @memcpy(ptr %temp_table, ptr %u56, i32 96)
  call void @xtInitRoot(i16 noundef zeroext %tid, ptr noundef %ip) #8
  %30 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nbperpage, align 4
  %conv59 = sext i16 %31 to i32
  %call60 = call i32 @xtInsert(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef 0, i64 noundef 0, i32 noundef %conv59, ptr noundef nonnull %xaddr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end83, label %do.body63

do.body63:                                        ; preds = %if.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %32 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp64 = icmp sgt i32 %32, 1
  br i1 %cmp64, label %do.end69, label %do.body63.do.end74_crit_edge

do.body63.do.end74_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #12
  br label %do.end74

do.end74:                                         ; preds = %do.end69, %do.body63.do.end74_crit_edge
  %33 = call ptr @memcpy(ptr %u56, ptr %temp_table, i32 96)
  %34 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %xaddr, align 8
  %36 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nbperpage, align 4
  %conv79 = sext i16 %37 to i64
  %call80 = call i32 @dbFree(ptr noundef %ip, i64 noundef %35, i64 noundef %conv79) #8
  %38 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nbperpage, align 4
  %conv82 = sext i16 %39 to i64
  %40 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i301 = zext i8 %41 to i64
  %shl.i302 = shl i64 %conv82, %sh_prom.i301
  call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i302, i32 noundef 0) #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #8
  br label %cleanup.thread

if.end83:                                         ; preds = %if.end55
  %i_size84 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %42 = ptrtoint ptr %i_size84 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 4096, ptr %i_size84, align 8
  %call85 = call fastcc ptr @get_index_page(ptr noundef %ip, i64 noundef 0)
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %do.body88, label %if.end104

do.body88:                                        ; preds = %if.end83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %43 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp89 = icmp sgt i32 %43, 0
  br i1 %cmp89, label %do.end94, label %do.body88.do.end99_crit_edge

do.body88.do.end99_crit_edge:                     ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end99

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #12
  br label %do.end99

do.end99:                                         ; preds = %do.end94, %do.body88.do.end99_crit_edge
  %call100 = call i64 @xtTruncate(i16 noundef zeroext %tid, ptr noundef %ip, i64 noundef 0, i32 noundef 64) #8
  %44 = call ptr @memcpy(ptr %u56, ptr %temp_table, i32 96)
  br label %cleanup.thread

if.end104:                                        ; preds = %if.end83
  %call105 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %call85, i32 noundef 512) #8
  %lock = getelementptr inbounds %struct.tlock, ptr %call105, i32 0, i32 6
  %index107 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %45 = ptrtoint ptr %index107 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %index107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp109 = icmp eq i8 %46, 0
  br i1 %cmp109, label %cleanup, label %do.end114

do.end114:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 414, ptr noundef nonnull @.str.104) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !239
  unreachable

cleanup.thread:                                   ; preds = %do.end99, %do.end74, %if.then52, %if.then42.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %temp_table)
  br label %clean_up

cleanup:                                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %lv126 = getelementptr inbounds %struct.tlock, ptr %call105, i32 0, i32 6, i32 4
  %47 = ptrtoint ptr %lv126 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %lv126, align 1
  %length = getelementptr inbounds %struct.lv, ptr %lv126, i32 0, i32 1
  %48 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 6, ptr %length, align 1
  %49 = ptrtoint ptr %index107 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %index107, align 1
  %data = getelementptr inbounds %struct.metapage, ptr %call85, i32 0, i32 7
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %52 = call ptr @memcpy(ptr %51, ptr %temp_table, i32 96)
  %flag132 = getelementptr inbounds %struct.metapage, ptr %call85, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag132) #8
  call void @release_metapage(ptr noundef nonnull %call85) #8
  %cflag134 = getelementptr i8, ptr %ip, i32 -768
  call void @_clear_bit(i32 noundef 4, ptr noundef %cflag134) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %temp_table)
  br label %if.end135

if.end135:                                        ; preds = %cleanup, %if.end39.if.end135_crit_edge
  %sub136 = shl i32 %8, 3
  %mul = add i32 %sub136, -16
  %conv137 = zext i32 %mul to i64
  %and138 = and i32 %mul, 4088
  %53 = lshr i64 %conv137, 12
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 11
  %54 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %l2nbperpage, align 2
  %conv141 = sext i16 %55 to i32
  %sh_prom = zext i32 %conv141 to i64
  %shl142 = shl i64 %53, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %cmp143 = icmp eq i32 %and138, 0
  br i1 %cmp143, label %if.then145, label %if.else172

if.then145:                                       ; preds = %if.end135
  %56 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %xaddr, align 8
  %nbperpage146 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 10
  %57 = ptrtoint ptr %nbperpage146 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %nbperpage146, align 4
  %conv147 = sext i16 %58 to i32
  %call148 = call i32 @xtInsert(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef 0, i64 noundef %shl142, i32 noundef %conv147, ptr noundef nonnull %xaddr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end163, label %do.body151

do.body151:                                       ; preds = %if.then145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %59 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp152 = icmp sgt i32 %59, 1
  br i1 %cmp152, label %do.end157, label %do.body151.clean_up_crit_edge

do.body151.clean_up_crit_edge:                    ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_up

do.end157:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #10
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #12
  br label %clean_up

if.end163:                                        ; preds = %if.then145
  %i_size164 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %60 = ptrtoint ptr %i_size164 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %i_size164, align 8
  %add165 = add i64 %61, 4096
  store i64 %add165, ptr %i_size164, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr.i) #8
  %62 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 -1, ptr %xaddr.i, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xflag.i) #8
  %63 = ptrtoint ptr %xflag.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %xflag.i, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen.i) #8
  %64 = ptrtoint ptr %xlen.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %xlen.i, align 4, !annotation !228
  %call.i = call i32 @xtLookup(ptr noundef %ip, i64 noundef %shl142, i64 noundef 1, ptr noundef nonnull %xflag.i, ptr noundef nonnull %xaddr.i, ptr noundef nonnull %xlen.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end163.get_index_page.exit.thread_crit_edge

if.end163.get_index_page.exit.thread_crit_edge:   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_index_page.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end163
  %65 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %xaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp.i = icmp eq i64 %66, 0
  br i1 %cmp.i, label %lor.lhs.false.i.get_index_page.exit.thread_crit_edge, label %get_index_page.exit

lor.lhs.false.i.get_index_page.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_index_page.exit.thread

get_index_page.exit.thread:                       ; preds = %lor.lhs.false.i.get_index_page.exit.thread_crit_edge, %if.end163.get_index_page.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i) #8
  br label %if.end174.thread

get_index_page.exit:                              ; preds = %lor.lhs.false.i
  %conv.i = trunc i64 %66 to i32
  %call1.i = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv.i, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i) #8
  %tobool167.not = icmp eq ptr %call1.i, null
  br i1 %tobool167.not, label %get_index_page.exit.if.end174.thread_crit_edge, label %if.end174.thread324

get_index_page.exit.if.end174.thread_crit_edge:   ; preds = %get_index_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.thread

if.end174.thread324:                              ; preds = %get_index_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %data169 = getelementptr inbounds %struct.metapage, ptr %call1.i, i32 0, i32 7
  %67 = ptrtoint ptr %data169 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data169, align 4
  %69 = call ptr @memset(ptr %68, i32 0, i32 4096)
  br label %if.end189

if.end174.thread:                                 ; preds = %get_index_page.exit.if.end174.thread_crit_edge, %get_index_page.exit.thread
  %call170 = call i64 @xtTruncate(i16 noundef zeroext %tid, ptr noundef %ip, i64 noundef %conv137, i32 noundef 64) #8
  br label %do.body177

if.else172:                                       ; preds = %if.end135
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr.i304) #8
  %70 = ptrtoint ptr %xaddr.i304 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 -1, ptr %xaddr.i304, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xflag.i305) #8
  %71 = ptrtoint ptr %xflag.i305 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %xflag.i305, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen.i306) #8
  %72 = ptrtoint ptr %xlen.i306 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %xlen.i306, align 4, !annotation !228
  %call.i307 = call i32 @xtLookup(ptr noundef %ip, i64 noundef %shl142, i64 noundef 1, ptr noundef nonnull %xflag.i305, ptr noundef nonnull %xaddr.i304, ptr noundef nonnull %xlen.i306, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %tobool.not.i308 = icmp eq i32 %call.i307, 0
  br i1 %tobool.not.i308, label %lor.lhs.false.i310, label %if.else172.if.end174.thread328_crit_edge

if.else172.if.end174.thread328_crit_edge:         ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.thread328

lor.lhs.false.i310:                               ; preds = %if.else172
  %73 = ptrtoint ptr %xaddr.i304 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %xaddr.i304, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %cmp.i309 = icmp eq i64 %74, 0
  br i1 %cmp.i309, label %lor.lhs.false.i310.if.end174.thread328_crit_edge, label %if.end174

lor.lhs.false.i310.if.end174.thread328_crit_edge: ; preds = %lor.lhs.false.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.thread328

if.end174.thread328:                              ; preds = %lor.lhs.false.i310.if.end174.thread328_crit_edge, %if.else172.if.end174.thread328_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen.i306) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i305) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i304) #8
  br label %do.body177

if.end174:                                        ; preds = %lor.lhs.false.i310
  %conv.i311 = trunc i64 %74 to i32
  %call1.i312 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv.i311, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen.i306) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i305) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i304) #8
  %tobool175.not = icmp eq ptr %call1.i312, null
  br i1 %tobool175.not, label %if.end174.do.body177_crit_edge, label %if.end174.if.end189_crit_edge

if.end174.if.end189_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.end174.do.body177_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body177

do.body177:                                       ; preds = %if.end174.do.body177_crit_edge, %if.end174.thread328, %if.end174.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %75 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp178 = icmp sgt i32 %75, 0
  br i1 %cmp178, label %do.end183, label %do.body177.clean_up_crit_edge

do.body177.clean_up_crit_edge:                    ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_up

do.end183:                                        ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #12
  br label %clean_up

if.end189:                                        ; preds = %if.end174.if.end189_crit_edge, %if.end174.thread324
  %mp.0327 = phi ptr [ %call1.i, %if.end174.thread324 ], [ %call1.i312, %if.end174.if.end189_crit_edge ]
  %call.i315 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %mp.0327, i32 noundef 512) #8
  %lock.i = getelementptr inbounds %struct.tlock, ptr %call.i315, i32 0, i32 6
  %index1.i = getelementptr inbounds %struct.linelock, ptr %lock.i, i32 0, i32 2
  %76 = ptrtoint ptr %index1.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %index1.i, align 1
  %maxcnt.i = getelementptr inbounds %struct.tlock, ptr %call.i315, i32 0, i32 6, i32 1
  %78 = ptrtoint ptr %maxcnt.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %maxcnt.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp.not.i = icmp slt i8 %77, %79
  br i1 %cmp.not.i, label %if.end189.lock_index.exit_crit_edge, label %if.then.i

if.end189.lock_index.exit_crit_edge:              ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_index.exit

if.then.i:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call ptr @txLinelock(ptr noundef %lock.i) #8
  br label %lock_index.exit

lock_index.exit:                                  ; preds = %if.then.i, %if.end189.lock_index.exit_crit_edge
  %llck.0.i = phi ptr [ %call4.i, %if.then.i ], [ %lock.i, %if.end189.lock_index.exit_crit_edge ]
  %index6.i = getelementptr inbounds %struct.linelock, ptr %llck.0.i, i32 0, i32 2
  %80 = ptrtoint ptr %index6.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %index6.i, align 1
  %idxprom.i = sext i8 %81 to i32
  %arrayidx.i = getelementptr %struct.linelock, ptr %llck.0.i, i32 0, i32 6, i32 %idxprom.i
  %sub.i = add i32 %8, 510
  %and.i = lshr i32 %sub.i, 1
  %conv7.i = trunc i32 %and.i to i8
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv7.i, ptr %arrayidx.i, align 1
  %length.i = getelementptr %struct.linelock, ptr %llck.0.i, i32 0, i32 6, i32 %idxprom.i, i32 1
  %83 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %length.i, align 1
  %84 = load i8, ptr %index6.i, align 1
  %inc.i = add i8 %84, 1
  store i8 %inc.i, ptr %index6.i, align 1
  %data190 = getelementptr inbounds %struct.metapage, ptr %mp.0327, i32 0, i32 7
  %85 = ptrtoint ptr %data190 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data190, align 4
  %add.ptr = getelementptr i8, ptr %86, i32 %and138
  %flag191 = getelementptr inbounds %struct.dir_table_slot, ptr %add.ptr, i32 0, i32 1
  %87 = ptrtoint ptr %flag191 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %flag191, align 1
  %conv192 = trunc i32 %slot to i8
  %slot193 = getelementptr inbounds %struct.dir_table_slot, ptr %add.ptr, i32 0, i32 2
  %88 = ptrtoint ptr %slot193 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv192, ptr %slot193, align 2
  %shr194 = lshr i64 %bn, 32
  %conv195 = trunc i64 %shr194 to i8
  %addr1196 = getelementptr inbounds %struct.dir_table_slot, ptr %add.ptr, i32 0, i32 3
  %89 = ptrtoint ptr %addr1196 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv195, ptr %addr1196, align 1
  %conv198 = trunc i64 %bn to i32
  %90 = call i32 @llvm.bswap.i32(i32 %conv198)
  %addr2199 = getelementptr inbounds %struct.dir_table_slot, ptr %add.ptr, i32 0, i32 4
  %91 = ptrtoint ptr %addr2199 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %addr2199, align 4
  %flag200 = getelementptr inbounds %struct.metapage, ptr %mp.0327, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag200) #8
  call void @release_metapage(ptr noundef nonnull %mp.0327) #8
  br label %cleanup202

clean_up:                                         ; preds = %do.end183, %do.body177.clean_up_crit_edge, %do.end157, %do.body151.clean_up_crit_edge, %cleanup.thread
  %92 = ptrtoint ptr %next_index to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %next_index, align 8
  %dec = add i32 %93, -1
  store i32 %dec, ptr %next_index, align 8
  br label %cleanup202

cleanup202:                                       ; preds = %clean_up, %lock_index.exit, %if.then31
  %retval.0 = phi i32 [ %12, %if.then31 ], [ 0, %clean_up ], [ %8, %lock_index.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @txCommit(i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txEnd(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xtInitRoot(i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtInsert(i16 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_index_page(ptr noundef %inode, i64 noundef %blkno) unnamed_addr #0 align 64 {
entry:
  %xaddr = alloca i64, align 8
  %xflag = alloca i32, align 4
  %xlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr) #8
  %0 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %xaddr, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xflag) #8
  %1 = ptrtoint ptr %xflag to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %xflag, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen) #8
  %2 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %xlen, align 4, !annotation !228
  %call = call i32 @xtLookup(ptr noundef %inode, i64 noundef %blkno, i64 noundef 1, ptr noundef nonnull %xflag, ptr noundef nonnull %xaddr, ptr noundef nonnull %xlen, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %xaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %4 to i32
  %call1 = call ptr @__get_metapage(ptr noundef %inode, i32 noundef %conv, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr) #8
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !195, !196, !197, !199, !200, !201, !203, !205, !206, !208, !209, !210, !212, !213, !215, !216, !218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_dtree.c", i32 623, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dtSearch._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dtSearch._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/jfs/jfs_dtree.c", i32 767, i32 18}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/jfs/jfs_dtree.c", i32 775, i32 3}
!11 = !{ptr @dtSearch._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @dtSearch._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jfs/jfs_dtree.c", i32 878, i32 2}
!16 = !{ptr @dtInsert._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dtInsert._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jfs/jfs_dtree.c", i32 2118, i32 5}
!21 = !{ptr @dtDelete._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dtDelete._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/jfs/jfs_dtree.c", i32 2869, i32 2}
!25 = !{ptr @dtInitRoot._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dtInitRoot._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @jfs_readdir.unique_pos, !28, !"unique_pos", i1 false, i1 false}
!28 = !{!"../fs/jfs/jfs_dtree.c", i32 3022, i32 13}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/jfs/jfs_dtree.c", i32 3063, i32 6}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @jfs_readdir._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @jfs_readdir._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @jfs_readdir._entry.15, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../fs/jfs/jfs_dtree.c", i32 3076, i32 4}
!36 = !{ptr @jfs_readdir._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/jfs/jfs_dtree.c", i32 3082, i32 5}
!39 = !{ptr @jfs_readdir._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @jfs_readdir._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/jfs/jfs_dtree.c", i32 3093, i32 24}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/jfs/jfs_dtree.c", i32 3100, i32 23}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/jfs/jfs_dtree.c", i32 3141, i32 5}
!47 = !{ptr @jfs_readdir._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @jfs_readdir._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/jfs/jfs_dtree.c", i32 3154, i32 4}
!51 = !{ptr @jfs_readdir._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @jfs_readdir._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/jfs/jfs_dtree.c", i32 3172, i32 3}
!55 = !{ptr @jfs_readdir._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @jfs_readdir._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/jfs/jfs_dtree.c", i32 3251, i32 9}
!59 = !{ptr @jfs_readdir._entry.32, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../fs/jfs/jfs_dtree.c", i32 3311, i32 3}
!61 = !{ptr @jfs_readdir._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/jfs/jfs_dtree.c", i32 4546, i32 2}
!64 = !{ptr @dtModify._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dtModify._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/jfs/jfs_btree.h", i32 134, i32 2}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @BT_STACK_DUMP._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @BT_STACK_DUMP._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/jfs/jfs_btree.h", i32 136, i32 3}
!74 = !{ptr @BT_STACK_DUMP._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @BT_STACK_DUMP._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/jfs/jfs_dtree.c", i32 1126, i32 3}
!78 = !{ptr @dtSplitUp._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @dtSplitUp._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/jfs/jfs_dtree.c", i32 1205, i32 4}
!82 = !{ptr @dtSplitUp._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @dtSplitUp._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @dtSplitUp._entry.45, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../fs/jfs/jfs_dtree.c", i32 1255, i32 4}
!86 = !{ptr @dtSplitUp._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/jfs/jfs_dtree.c", i32 1934, i32 2}
!89 = !{ptr @dtSplitRoot._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dtSplitRoot._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @dtSplitRoot._entry.48, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../fs/jfs/jfs_dtree.c", i32 2020, i32 2}
!93 = !{ptr @dtSplitRoot._entry_ptr.49, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/jfs/jfs_dtree.c", i32 1661, i32 2}
!96 = !{ptr @dtExtendPage._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @dtExtendPage._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/jfs/jfs_dtree.c", i32 1715, i32 2}
!100 = !{ptr @dtExtendPage._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dtExtendPage._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/jfs/jfs_dtree.c", i32 1366, i32 2}
!104 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dtSplitPage._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @dtSplitPage._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @dtSplitPage._entry.56, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../fs/jfs/jfs_dtree.c", i32 1389, i32 2}
!109 = !{ptr @dtSplitPage._entry_ptr.57, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @dtSplitPage._entry.59, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../fs/jfs/jfs_dtree.c", i32 1463, i32 3}
!113 = !{ptr @dtSplitPage._entry_ptr.60, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/jfs/jfs_dtree.c", i32 1474, i32 3}
!116 = !{ptr @dtSplitPage._entry.61, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @dtSplitPage._entry_ptr.63, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @find_index.maxWarnings, !119, !"maxWarnings", i1 false, i1 false}
!119 = !{!"../fs/jfs/jfs_dtree.c", i32 244, i32 13}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/jfs/jfs_dtree.c", i32 248, i32 4}
!122 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @find_index._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @find_index._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/jfs/jfs_dtree.c", i32 255, i32 3}
!127 = !{ptr @find_index._entry.66, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @find_index._entry_ptr.68, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/jfs/jfs_dtree.c", i32 280, i32 4}
!131 = !{ptr @find_index._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @find_index._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/jfs/jfs_dtree.c", i32 2296, i32 3}
!135 = !{ptr @dtDeleteUp._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @dtDeleteUp._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/jfs/jfs_dtree.c", i32 2749, i32 3}
!139 = !{ptr @dtRelink._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @dtRelink._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/jfs/jfs_dtree.c", i32 2760, i32 3}
!143 = !{ptr @dtRelink._entry.74, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @dtRelink._entry_ptr.76, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @dtRelink._entry.77, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../fs/jfs/jfs_dtree.c", i32 2778, i32 3}
!147 = !{ptr @dtRelink._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/jfs/jfs_dtree.c", i32 2789, i32 3}
!150 = !{ptr @dtRelink._entry.79, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @dtRelink._entry_ptr.81, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/jfs/jfs_dtree.c", i32 4370, i32 2}
!154 = !{ptr @dtTruncateEntry._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @dtTruncateEntry._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/jfs/jfs_dtree.c", i32 2922, i32 2}
!159 = !{ptr @add_missing_indices._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @add_missing_indices._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/jfs/jfs_dtree.c", i32 2925, i32 3}
!163 = !{ptr @add_missing_indices._entry.85, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @add_missing_indices._entry_ptr.87, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @add_missing_indices._entry.88, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../fs/jfs/jfs_dtree.c", i32 2930, i32 2}
!167 = !{ptr @add_missing_indices._entry_ptr.89, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.91, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/jfs/jfs_dtree.c", i32 337, i32 2}
!171 = !{ptr @add_index._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @add_index._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.94, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/jfs/jfs_dtree.c", i32 340, i32 3}
!176 = !{ptr @add_index._entry.93, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @add_index._entry_ptr.95, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.97, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/jfs/jfs_dtree.c", i32 395, i32 4}
!180 = !{ptr @add_index._entry.96, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @add_index._entry_ptr.98, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/jfs/jfs_dtree.c", i32 406, i32 4}
!184 = !{ptr @add_index._entry.99, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @add_index._entry_ptr.101, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @add_index._entry.102, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../fs/jfs/jfs_dtree.c", i32 414, i32 3}
!188 = !{ptr @add_index._entry_ptr.103, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.104, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @add_index._entry.105, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../fs/jfs/jfs_dtree.c", i32 441, i32 4}
!192 = !{ptr @add_index._entry_ptr.106, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.108, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/jfs/jfs_dtree.c", i32 454, i32 3}
!195 = !{ptr @add_index._entry.107, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @add_index._entry_ptr.109, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.110, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/jfs/jfs_dtree.c", i32 3349, i32 3}
!199 = !{ptr @dtReadFirst._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @dtReadFirst._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/jfs/jfs_dtree.c", i32 3371, i32 24}
!203 = !{ptr @dtReadFirst._entry.112, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../fs/jfs/jfs_dtree.c", i32 3376, i32 3}
!205 = !{ptr @dtReadFirst._entry_ptr.113, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.114, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/jfs/jfs_dtree.c", i32 3486, i32 2}
!208 = !{ptr @dtReadNext._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @dtReadNext._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @dtReadNext._entry.115, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../fs/jfs/jfs_dtree.c", i32 3507, i32 3}
!212 = !{ptr @dtReadNext._entry_ptr.116, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @dtReadNext._entry.117, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../fs/jfs/jfs_dtree.c", i32 3527, i32 2}
!215 = !{ptr @dtReadNext._entry_ptr.118, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @dtReadNext._entry.119, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../fs/jfs/jfs_dtree.c", i32 3548, i32 3}
!218 = !{ptr @dtReadNext._entry_ptr.120, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{!"auto-init"}
!229 = !{i64 2154014241, i64 2154014725, i64 2154014278, i64 2154014334, i64 2154014368, i64 2154014392, i64 2154014433, i64 2154014454, i64 2154014482, i64 2154014516}
!230 = !{i64 2153999405, i64 2153999888, i64 2153999442, i64 2153999498, i64 2153999532, i64 2153999556, i64 2153999597, i64 2153999618, i64 2153999646, i64 2153999680}
!231 = !{i64 2154063232, i64 2154063716, i64 2154063269, i64 2154063325, i64 2154063359, i64 2154063383, i64 2154063424, i64 2154063445, i64 2154063473, i64 2154063507}
!232 = !{i64 2154070846, i64 2154071330, i64 2154070883, i64 2154070939, i64 2154070973, i64 2154070997, i64 2154071038, i64 2154071059, i64 2154071087, i64 2154071121}
!233 = !{i64 2154154198, i64 2154154682, i64 2154154235, i64 2154154291, i64 2154154325, i64 2154154349, i64 2154154390, i64 2154154411, i64 2154154439, i64 2154154473}
!234 = !{i64 2154036045, i64 2154036529, i64 2154036082, i64 2154036138, i64 2154036172, i64 2154036196, i64 2154036237, i64 2154036258, i64 2154036286, i64 2154036320}
!235 = !{i64 2154039923, i64 2154040407, i64 2154039960, i64 2154040016, i64 2154040050, i64 2154040074, i64 2154040115, i64 2154040136, i64 2154040164, i64 2154040198}
!236 = !{i64 2154020334, i64 2154020818, i64 2154020371, i64 2154020427, i64 2154020461, i64 2154020485, i64 2154020526, i64 2154020547, i64 2154020575, i64 2154020609}
!237 = !{i64 2154150182, i64 2154150666, i64 2154150219, i64 2154150275, i64 2154150309, i64 2154150333, i64 2154150374, i64 2154150395, i64 2154150423, i64 2154150457}
!238 = !{i64 2153974396, i64 2153974879, i64 2153974433, i64 2153974489, i64 2153974523, i64 2153974547, i64 2153974588, i64 2153974609, i64 2153974637, i64 2153974671}
!239 = !{i64 2153983057, i64 2153983540, i64 2153983094, i64 2153983150, i64 2153983184, i64 2153983208, i64 2153983249, i64 2153983270, i64 2153983298, i64 2153983332}
