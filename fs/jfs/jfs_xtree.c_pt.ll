; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_xtree.c_pt.bc'
source_filename = "../fs/jfs/jfs_xtree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btstack = type { ptr, i32, [8 x %struct.btframe] }
%struct.btframe = type { i64, i16, i16, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
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
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { ptr }
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
%struct.metapage = type { i16, i16, i16, i32, %struct.list_head, i32, i32, ptr, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, ptr }
%struct.xad = type { i8, [2 x i8], i8, i32, %struct.pxd_t }
%struct.xtheader = type { i64, i64, i8, i8, i16, i16, i16, %struct.pxd_t }
%struct.xtsplit = type { ptr, i16, i8, i64, i64, i32, ptr }
%struct.tlock = type { i16, i16, i16, i16, ptr, ptr, [24 x i16] }
%struct.lv = type { i8, i8 }
%struct.pxdlist = type { i16, i16, [8 x %struct.pxd_t] }
%struct.xtlock = type { i16, i8, i8, i16, i8, i8, %struct.lv, %struct.lv, %struct.lv, %struct.lv, [8 x i32] }
%struct.xdlistlock = type { i16, i8, i8, i16, i8, i8, %union.anon.81 }
%union.anon.81 = type { i64 }
%struct.tblock = type { i16, i16, i16, i32, %struct.list_head, ptr, i16, i16, %struct.wait_queue_head, i32, %struct.list_head, i32, ptr, i32, i32, %struct.wait_queue_head, %union.anon.73, i32 }
%union.anon.73 = type { %struct.pxd_t }
%struct.maplock = type { i16, i8, i8, i16, i8, i8, %struct.pxd_t }

@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@xtLookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013xtLookup: xtSearch returned %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xtLookup\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/jfs/jfs_xtree.c\00", [45 x i8] zeroinitializer }, align 32
@xtLookup._entry_ptr = internal global ptr @xtLookup._entry, section ".printk_index", align 4
@xtInsert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016xtInsert: nxoff:0x%lx nxlen:0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xtInsert\00", [23 x i8] zeroinitializer }, align 32
@xtInsert._entry_ptr = internal global ptr @xtInsert._entry, section ".printk_index", align 4
@xtExtend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016xtExtend: nxoff:0x%lx nxlen:0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xtExtend\00", [23 x i8] zeroinitializer }, align 32
@xtExtend._entry_ptr = internal global ptr @xtExtend._entry, section ".printk_index", align 4
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xtSearch did not find extent\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"extension is not contiguous\0A\00", [35 x i8] zeroinitializer }, align 32
@xtExtend._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013bread failed!\0A\00", [47 x i8] zeroinitializer }, align 32
@xtExtend._entry_ptr.11 = internal global ptr @xtExtend._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"XT_GETPAGE: xtree page corrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@xtExtend._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 1441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@xtExtend._entry_ptr.15 = internal global ptr @xtExtend._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"p->header.nextindex == (( __le16)(__u16)__builtin_bswap16((__u16)((2 + 1))))\00", [51 x i8] zeroinitializer }, align 32
@xtExtend._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtExtend._entry_ptr.18 = internal global ptr @xtExtend._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not find extent\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nXAD in not completely contained within XAD\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xoff >= nxoff\0A\00", [17 x i8] zeroinitializer }, align 32
@xtUpdate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.22, ptr @.str.2, i32 1929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xtUpdate\00", [23 x i8] zeroinitializer }, align 32
@xtUpdate._entry_ptr = internal global ptr @xtUpdate._entry, section ".printk_index", align 4
@xtUpdate._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.22, ptr @.str.2, i32 1939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtUpdate._entry_ptr.24 = internal global ptr @xtUpdate._entry.23, section ".printk_index", align 4
@xtUpdate._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.22, ptr @.str.2, i32 1945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtUpdate._entry_ptr.26 = internal global ptr @xtUpdate._entry.25, section ".printk_index", align 4
@xtUpdate._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.22, ptr @.str.2, i32 2006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtUpdate._entry_ptr.28 = internal global ptr @xtUpdate._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xtSearch failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unexpected value of index\0A\00", [37 x i8] zeroinitializer }, align 32
@xtUpdate._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.22, ptr @.str.2, i32 2082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtUpdate._entry_ptr.32 = internal global ptr @xtUpdate._entry.31, section ".printk_index", align 4
@xtUpdate._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.22, ptr @.str.2, i32 2093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtUpdate._entry_ptr.34 = internal global ptr @xtUpdate._entry.33, section ".printk_index", align 4
@xtUpdate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.22, ptr @.str.2, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtUpdate._entry_ptr.36 = internal global ptr @xtUpdate._entry.35, section ".printk_index", align 4
@xtAppend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 2181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016xtAppend: xoff:0x%lx maxblocks:%d xlen:%d xaddr:0x%lx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xtAppend\00", [23 x i8] zeroinitializer }, align 32
@xtAppend._entry_ptr = internal global ptr @xtAppend._entry, section ".printk_index", align 4
@TxBlock = external dso_local local_unnamed_addr global ptr, align 4
@xtTruncate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.39, ptr @.str.2, i32 3180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xtTruncate\00", [21 x i8] zeroinitializer }, align 32
@xtTruncate._entry_ptr = internal global ptr @xtTruncate._entry, section ".printk_index", align 4
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flag != COMMIT_PMAP\00", [44 x i8] zeroinitializer }, align 32
@xtTruncate._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.39, ptr @.str.2, i32 3232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtTruncate._entry_ptr.42 = internal global ptr @xtTruncate._entry.41, section ".printk_index", align 4
@TxLock = external dso_local local_unnamed_addr global ptr, align 4
@xtTruncate._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.39, ptr @.str.2, i32 3470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtTruncate._entry_ptr.44 = internal global ptr @xtTruncate._entry.43, section ".printk_index", align 4
@xtTruncate._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.39, ptr @.str.2, i32 3545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtTruncate._entry_ptr.46 = internal global ptr @xtTruncate._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prev->next\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stack overrun!\0A\00", [16 x i8] zeroinitializer }, align 32
@xtTruncate._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.39, ptr @.str.2, i32 3643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtTruncate._entry_ptr.50 = internal global ptr @xtTruncate._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"did not find extent\0A\00", [43 x i8] zeroinitializer }, align 32
@xtTruncate_pmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.53, ptr @.str.2, i32 3755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xtTruncate_pmap\00", [16 x i8] zeroinitializer }, align 32
@xtTruncate_pmap._entry_ptr = internal global ptr @xtTruncate_pmap._entry, section ".printk_index", align 4
@xtTruncate_pmap._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.53, ptr @.str.2, i32 3800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtTruncate_pmap._entry_ptr.55 = internal global ptr @xtTruncate_pmap._entry.54, section ".printk_index", align 4
@xtTruncate_pmap._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.53, ptr @.str.2, i32 3843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtTruncate_pmap._entry_ptr.57 = internal global ptr @xtTruncate_pmap._entry.56, section ".printk_index", align 4
@.str.58 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"JFS Xtree statistics\0A====================\0Asearches = %d\0Afast searches = %d\0Asplits = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@xtStat.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@xtStat.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@xtStat.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@xtSearch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.59, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xtSearch\00", [23 x i8] zeroinitializer }, align 32
@xtSearch._entry_ptr = internal global ptr @xtSearch._entry, section ".printk_index", align 4
@xtSearch._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.59, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtSearch._entry_ptr.61 = internal global ptr @xtSearch._entry.60, section ".printk_index", align 4
@xtSplitUp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.63, ptr @.str.2, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xtSplitUp\00", [22 x i8] zeroinitializer }, align 32
@xtSplitUp._entry_ptr = internal global ptr @xtSplitUp._entry, section ".printk_index", align 4
@xtSplitRoot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016xtSplitRoot: ip:0x%p rmp:0x%p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xtSplitRoot\00", [20 x i8] zeroinitializer }, align 32
@xtSplitRoot._entry_ptr = internal global ptr @xtSplitRoot._entry, section ".printk_index", align 4
@xtSplitRoot._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 1332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016xtSplitRoot: sp:0x%p rp:0x%p\0A\00", [32 x i8] zeroinitializer }, align 32
@xtSplitRoot._entry_ptr.68 = internal global ptr @xtSplitRoot._entry.66, section ".printk_index", align 4
@xtSplitPage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016xtSplitPage: ip:0x%p smp:0x%p rmp:0x%p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xtSplitPage\00", [20 x i8] zeroinitializer }, align 32
@xtSplitPage._entry_ptr = internal global ptr @xtSplitPage._entry, section ".printk_index", align 4
@xtSplitPage._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 1064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016xtSplitPage: sp:0x%p rp:0x%p\0A\00", [32 x i8] zeroinitializer }, align 32
@xtSplitPage._entry_ptr.73 = internal global ptr @xtSplitPage._entry.71, section ".printk_index", align 4
@xtSplitPage._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.70, ptr @.str.2, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtSplitPage._entry_ptr.75 = internal global ptr @xtSplitPage._entry.74, section ".printk_index", align 4
@xtSplitPage._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xtSplitPage._entry_ptr.77 = internal global ptr @xtSplitPage._entry.76, section ".printk_index", align 4
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 164, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 542, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1365, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1376, i32 23 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1384, i32 23 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1431, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1440, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1447, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1724, i32 23 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1748, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1897, i32 23 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1929, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1938, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1945, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2006, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2038, i32 24 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2044, i32 24 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2082, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2092, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2099, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2180, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3180, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3232, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3470, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3545, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3639, i32 23 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3643, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3740, i32 24 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3755, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3800, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3843, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 3867, i32 10 }
@___asan_gen_.228 = private unnamed_addr constant [9 x i8] c"xtStat.0\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [9 x i8] c"xtStat.1\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [9 x i8] c"xtStat.2\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 266, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 494, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 821, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1249, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1332, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 991, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1064, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1076, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private constant [22 x i8] c"../fs/jfs/jfs_xtree.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1178, i32 2 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @xtAppend._entry, ptr @xtAppend._entry_ptr, ptr @xtExtend._entry, ptr @xtExtend._entry.13, ptr @xtExtend._entry.17, ptr @xtExtend._entry.9, ptr @xtExtend._entry_ptr, ptr @xtExtend._entry_ptr.11, ptr @xtExtend._entry_ptr.15, ptr @xtExtend._entry_ptr.18, ptr @xtInsert._entry, ptr @xtInsert._entry_ptr, ptr @xtLookup._entry, ptr @xtLookup._entry_ptr, ptr @xtSearch._entry, ptr @xtSearch._entry.60, ptr @xtSearch._entry_ptr, ptr @xtSearch._entry_ptr.61, ptr @xtSplitPage._entry, ptr @xtSplitPage._entry.71, ptr @xtSplitPage._entry.74, ptr @xtSplitPage._entry.76, ptr @xtSplitPage._entry_ptr, ptr @xtSplitPage._entry_ptr.73, ptr @xtSplitPage._entry_ptr.75, ptr @xtSplitPage._entry_ptr.77, ptr @xtSplitRoot._entry, ptr @xtSplitRoot._entry.66, ptr @xtSplitRoot._entry_ptr, ptr @xtSplitRoot._entry_ptr.68, ptr @xtSplitUp._entry, ptr @xtSplitUp._entry_ptr, ptr @xtTruncate._entry, ptr @xtTruncate._entry.41, ptr @xtTruncate._entry.43, ptr @xtTruncate._entry.45, ptr @xtTruncate._entry.49, ptr @xtTruncate._entry_ptr, ptr @xtTruncate._entry_ptr.42, ptr @xtTruncate._entry_ptr.44, ptr @xtTruncate._entry_ptr.46, ptr @xtTruncate._entry_ptr.50, ptr @xtTruncate_pmap._entry, ptr @xtTruncate_pmap._entry.54, ptr @xtTruncate_pmap._entry.56, ptr @xtTruncate_pmap._entry_ptr, ptr @xtTruncate_pmap._entry_ptr.55, ptr @xtTruncate_pmap._entry_ptr.57, ptr @xtUpdate._entry, ptr @xtUpdate._entry.23, ptr @xtUpdate._entry.25, ptr @xtUpdate._entry.27, ptr @xtUpdate._entry.31, ptr @xtUpdate._entry.33, ptr @xtUpdate._entry.35, ptr @xtUpdate._entry_ptr, ptr @xtUpdate._entry_ptr.24, ptr @xtUpdate._entry_ptr.26, ptr @xtUpdate._entry_ptr.28, ptr @xtUpdate._entry_ptr.32, ptr @xtUpdate._entry_ptr.34, ptr @xtUpdate._entry_ptr.36, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.29, ptr @.str.30, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.47, ptr @.str.48, ptr @.str.52, ptr @.str.53, ptr @.str.58, ptr @xtStat.0, ptr @xtStat.1, ptr @xtStat.2, ptr @.str.59, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtLookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtInsert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtExtend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtExtend._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtExtend._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtExtend._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtUpdate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtUpdate._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtUpdate._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtUpdate._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtUpdate._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtUpdate._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtUpdate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtAppend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtTruncate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtTruncate._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtTruncate._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtTruncate._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtTruncate._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtTruncate_pmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtTruncate_pmap._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtTruncate_pmap._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtStat.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtStat.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtStat.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtSearch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtSearch._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtSplitUp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtSplitRoot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtSplitRoot._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtSplitPage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtSplitPage._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtSplitPage._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtSplitPage._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xtLookup(ptr noundef %ip, i64 noundef %lstart, i64 noundef %llen, ptr nocapture noundef writeonly %pflag, ptr nocapture noundef writeonly %paddr, ptr nocapture noundef writeonly %plen, i32 noundef %no_check) local_unnamed_addr #0 align 64 {
entry:
  %btstack = alloca %struct.btstack, align 8
  %cmp = alloca i32, align 4
  %next = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #6
  %0 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmp) #6
  %1 = ptrtoint ptr %cmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cmp, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next) #6
  %2 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %next, align 8, !annotation !152
  %3 = ptrtoint ptr %paddr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %paddr, align 8
  %conv = trunc i64 %llen to i32
  %4 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %plen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_check)
  %tobool.not = icmp eq i32 %no_check, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %bsize to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bsize, align 4
  %conv1 = sext i16 %12 to i32
  %sub = add nsw i32 %conv1, -1
  %conv2 = sext i32 %sub to i64
  %add = add i64 %6, %conv2
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %l2bsize, align 2
  %conv5 = sext i16 %14 to i32
  %sh_prom = zext i32 %conv5 to i64
  %shr = lshr i64 %add, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %lstart)
  %cmp6.not = icmp sgt i64 %shr, %lstart
  br i1 %cmp6.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = call fastcc i32 @xtSearch(ptr noundef %ip, i64 noundef %lstart, ptr noundef nonnull %next, ptr noundef nonnull %cmp, ptr noundef nonnull %btstack, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end21, label %do.body

do.body:                                          ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %15 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call10) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btstack, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %mp24 = getelementptr inbounds %struct.btframe, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %mp24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mp24, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool25.not = icmp eq i64 %19, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.metapage, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %u = getelementptr i8, ptr %ip, i32 -400
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  %p.0 = phi ptr [ %23, %if.then26 ], [ %u, %if.else ]
  %24 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool32.not = icmp eq i32 %25, 0
  br i1 %tobool32.not, label %if.end42, label %if.then33

if.then33:                                        ; preds = %if.end28
  %26 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %next, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool34.not = icmp eq i64 %27, 0
  br i1 %tobool34.not, label %if.then33.out_crit_edge, label %if.then35

if.then33.out_crit_edge:                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %sub36 = sub i64 %27, %lstart
  br label %out.sink.split

if.end42:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %index30 = getelementptr inbounds %struct.btframe, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %index30 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %index30, align 8
  %conv31 = sext i16 %29 to i32
  %arrayidx = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv31
  %off1 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv31, i32 2
  %30 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %off1, align 1
  %conv43 = zext i8 %31 to i64
  %shl = shl nuw nsw i64 %conv43, 32
  %off2 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv31, i32 3
  %32 = ptrtoint ptr %off2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %off2, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %conv44 = zext i32 %34 to i64
  %or = or i64 %shl, %conv44
  %loc = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv31, i32 4
  %35 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %loc, align 4
  %37 = and i32 %36, -256
  %38 = call i32 @llvm.bswap.i32(i32 %37) #6
  %39 = zext i32 %38 to i64
  %40 = shl i32 %36, 24
  %conv.i = zext i32 %40 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv31, i32 4, i32 1
  %41 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr2.i, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #6
  %conv1.i = zext i32 %43 to i64
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 4
  %conv50 = zext i8 %45 to i32
  %46 = ptrtoint ptr %pflag to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv50, ptr %pflag, align 4
  %add.i = sub i64 %lstart, %or
  %sub51 = add i64 %add.i, %conv1.i
  %add52 = add i64 %sub51, %shl.i
  %47 = ptrtoint ptr %paddr to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %add52, ptr %paddr, align 8
  %add47 = sub i64 %or, %lstart
  %sub53 = add i64 %add47, %39
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end42, %if.then35
  %sub36.sink = phi i64 [ %sub36, %if.then35 ], [ %sub53, %if.end42 ]
  %48 = call i64 @llvm.smin.i64(i64 %sub36.sink, i64 %llen)
  %49 = trunc i64 %48 to i32
  %50 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %plen, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.then33.out_crit_edge
  %51 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %21, align 8
  %53 = and i16 %52, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp63 = icmp eq i16 %53, 0
  br i1 %cmp63, label %out.cleanup_crit_edge, label %if.then65

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then65:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %21) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %out.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call10, %do.end ], [ %call10, %do.body.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmp) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xtSearch(ptr noundef %ip, i64 noundef %xoff, ptr noundef writeonly %nextp, ptr nocapture noundef writeonly %cmpp, ptr noundef %btstack, i32 noundef %flag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @xtStat.0, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @xtStat.0, align 4
  %stack = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 2
  %1 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %stack, ptr %btstack, align 8
  %nsplit1 = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 1
  %2 = ptrtoint ptr %nsplit1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nsplit1, align 4
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %u = getelementptr i8, ptr %ip, i32 -400
  %btorder = getelementptr i8, ptr %ip, i32 -776
  %btindex56 = getelementptr i8, ptr %ip, i32 -774
  %arrayidx296 = getelementptr %struct.btstack, ptr %btstack, i32 0, i32 2, i32 7
  br label %for.cond

for.cond:                                         ; preds = %if.end346, %entry
  %cmp.0 = phi i32 [ 1, %entry ], [ %cmp.2, %if.end346 ]
  %bn.0 = phi i64 [ 0, %entry ], [ %add.i, %if.end346 ]
  %nsplit.0 = phi i32 [ 1, %entry ], [ %phi.bo, %if.end346 ]
  %next.0 = phi i64 [ 0, %entry ], [ %next.3, %if.end346 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bn.0)
  %cmp2 = icmp eq i64 %bn.0, 0
  br i1 %cmp2, label %for.cond.if.then19_crit_edge, label %if.else

for.cond.if.then19_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.else:                                          ; preds = %for.cond
  %conv = trunc i64 %bn.0 to i32
  %call5 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.metapage, ptr %call5, i32 0, i32 7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  br label %if.then19

if.else7:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %5 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %do.end, label %if.else7.cleanup_crit_edge

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then19:                                        ; preds = %if.then6, %for.cond.if.then19_crit_edge
  %mp.0.ph = phi ptr [ %call5, %if.then6 ], [ %bxflag, %for.cond.if.then19_crit_edge ]
  %p.0.ph = phi ptr [ %4, %if.then6 ], [ %u, %for.cond.if.then19_crit_edge ]
  %nextindex = getelementptr inbounds %struct.xtheader, ptr %p.0.ph, i32 0, i32 4
  %6 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nextindex, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp21 = icmp ult i16 %8, 2
  br i1 %cmp21, label %if.then19.if.then35_crit_edge, label %lor.lhs.false

if.then19.if.then35_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.then19
  %maxentry = getelementptr inbounds %struct.xtheader, ptr %p.0.ph, i32 0, i32 5
  %9 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %maxentry, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %11)
  %cmp26 = icmp ugt i16 %8, %11
  br i1 %cmp26, label %lor.lhs.false.if.then35_crit_edge, label %lor.lhs.false28

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %conv25 = zext i16 %11 to i32
  %cond = select i1 %cmp2, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv25)
  %cmp33 = icmp ult i32 %cond, %conv25
  br i1 %cmp33, label %lor.lhs.false28.if.then35_crit_edge, label %if.end47

lor.lhs.false28.if.then35_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false28.if.then35_crit_edge, %lor.lhs.false.if.then35_crit_edge, %if.then19.if.then35_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %13, ptr noundef nonnull @.str.12) #6
  %14 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mp.0.ph, align 8
  %16 = and i16 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp37 = icmp eq i16 %16, 0
  br i1 %cmp37, label %if.then35.cleanup_crit_edge, label %if.then39

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false28
  %17 = ptrtoint ptr %btorder to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %btorder, align 8
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool50.not = icmp eq i16 %19, 0
  br i1 %tobool50.not, label %if.end47.binarySearch_crit_edge, label %land.lhs.true

if.end47.binarySearch_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %binarySearch

land.lhs.true:                                    ; preds = %if.end47
  %flag51 = getelementptr inbounds %struct.xtheader, ptr %p.0.ph, i32 0, i32 2
  %20 = ptrtoint ptr %flag51 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flag51, align 8
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool54.not = icmp eq i8 %22, 0
  br i1 %tobool54.not, label %land.lhs.true.binarySearch_crit_edge, label %land.lhs.true55

land.lhs.true.binarySearch_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %binarySearch

land.lhs.true55:                                  ; preds = %land.lhs.true
  %23 = ptrtoint ptr %btindex56 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %btindex56, align 2
  %conv57 = sext i16 %24 to i32
  %25 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nextindex, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv59 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv57, i32 %conv59)
  %cmp60 = icmp slt i32 %conv57, %conv59
  br i1 %cmp60, label %if.then62, label %land.lhs.true55.binarySearch_crit_edge

land.lhs.true55.binarySearch_crit_edge:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %binarySearch

if.then62:                                        ; preds = %land.lhs.true55
  %arrayidx = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %conv57
  %off1 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %conv57, i32 2
  %28 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %off1, align 1
  %conv63 = zext i8 %29 to i64
  %shl = shl nuw nsw i64 %conv63, 32
  %off2 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %conv57, i32 3
  %30 = ptrtoint ptr %off2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %off2, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %conv64 = zext i32 %32 to i64
  %or = or i64 %shl, %conv64
  %loc = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %conv57, i32 4
  %33 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %loc, align 4
  %35 = and i32 %34, -256
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %conv66 = zext i32 %36 to i64
  %add = add nuw nsw i64 %or, %conv66
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %xoff)
  %cmp67 = icmp sgt i64 %add, %xoff
  br i1 %cmp67, label %if.then69, label %if.else74

if.then69:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_cmp8(i64 %or, i64 %xoff)
  %cmp70.not = icmp sgt i64 %or, %xoff
  br i1 %cmp70.not, label %if.then69.binarySearch_crit_edge, label %if.then72

if.then69.binarySearch_crit_edge:                 ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %binarySearch

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %conv57.le = sext i16 %24 to i32
  br label %out

if.else74:                                        ; preds = %if.then62
  %inc75 = add nsw i32 %conv57, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc75, i32 %conv59)
  %cmp78 = icmp slt i32 %inc75, %conv59
  br i1 %cmp78, label %if.then80, label %if.else74.out_crit_edge

if.else74.out_crit_edge:                          ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then80:                                        ; preds = %if.else74
  %off181 = getelementptr %struct.xad, ptr %arrayidx, i32 1, i32 2
  %37 = ptrtoint ptr %off181 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %off181, align 1
  %conv82 = zext i8 %38 to i64
  %shl83 = shl nuw nsw i64 %conv82, 32
  %off284 = getelementptr %struct.xad, ptr %arrayidx, i32 1, i32 3
  %39 = ptrtoint ptr %off284 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %off284, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %conv85 = zext i32 %41 to i64
  %or86 = or i64 %shl83, %conv85
  %loc87 = getelementptr %struct.xad, ptr %arrayidx, i32 1, i32 4
  %42 = ptrtoint ptr %loc87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %loc87, align 4
  %44 = and i32 %43, -256
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  %conv89 = zext i32 %45 to i64
  %add90 = add nuw nsw i64 %or86, %conv89
  call void @__sanitizer_cov_trace_cmp8(i64 %add90, i64 %xoff)
  %cmp91 = icmp sgt i64 %add90, %xoff
  br i1 %cmp91, label %if.then93, label %if.then80.binarySearch_crit_edge

if.then80.binarySearch_crit_edge:                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %binarySearch

if.then93:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %or86, i64 %xoff)
  %cmp94.not = icmp sgt i64 %or86, %xoff
  %. = zext i1 %cmp94.not to i32
  %or86.lcssa.next.0.lcssa653 = select i1 %cmp94.not, i64 %or86, i64 %next.0
  br label %out

out:                                              ; preds = %if.then93, %if.else74.out_crit_edge, %if.then72
  %.sink = phi i32 [ 0, %if.then72 ], [ %., %if.then93 ], [ 1, %if.else74.out_crit_edge ]
  %index.0 = phi i32 [ %conv57.le, %if.then72 ], [ %inc75, %if.then93 ], [ %inc75, %if.else74.out_crit_edge ]
  %next.1 = phi i64 [ %next.0, %if.then72 ], [ %or86.lcssa.next.0.lcssa653, %if.then93 ], [ %next.0, %if.else74.out_crit_edge ]
  %46 = ptrtoint ptr %cmpp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %cmpp, align 4
  %and100 = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %out.if.end114_crit_edge, label %if.then102

out.if.end114_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then102:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %nextindex, align 2
  %49 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %maxentry, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp107 = icmp eq i16 %48, %50
  %nsplit.1 = select i1 %cmp107, i32 %nsplit.0, i32 0
  %51 = ptrtoint ptr %nsplit1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %nsplit.1, ptr %nsplit1, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then102, %out.if.end114_crit_edge
  %52 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btstack, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %bn.0, ptr %53, align 8
  %conv117 = trunc i32 %index.0 to i16
  %index118 = getelementptr inbounds %struct.btframe, ptr %53, i32 0, i32 1
  %55 = ptrtoint ptr %index118 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv117, ptr %index118, align 8
  %mp119 = getelementptr inbounds %struct.btframe, ptr %53, i32 0, i32 3
  %56 = ptrtoint ptr %mp119 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %mp.0.ph, ptr %mp119, align 4
  %57 = ptrtoint ptr %btindex56 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv117, ptr %btindex56, align 2
  %tobool122.not = icmp eq ptr %nextp, null
  br i1 %tobool122.not, label %if.end114.if.end124_crit_edge, label %if.then123

if.end114.if.end124_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.then123:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %nextp to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %next.1, ptr %nextp, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end114.if.end124_crit_edge
  %59 = load i32, ptr @xtStat.1, align 4
  %inc125 = add i32 %59, 1
  store i32 %inc125, ptr @xtStat.1, align 4
  br label %cleanup

binarySearch:                                     ; preds = %if.then80.binarySearch_crit_edge, %if.then69.binarySearch_crit_edge, %land.lhs.true55.binarySearch_crit_edge, %land.lhs.true.binarySearch_crit_edge, %if.end47.binarySearch_crit_edge
  %60 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nextindex, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %conv128 = zext i16 %62 to i32
  %sub = add nsw i32 %conv128, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool130.not590 = icmp eq i32 %sub, 0
  br i1 %tobool130.not590, label %binarySearch.for.end_crit_edge, label %binarySearch.for.body_crit_edge

binarySearch.for.body_crit_edge:                  ; preds = %binarySearch
  br label %for.body

binarySearch.for.end_crit_edge:                   ; preds = %binarySearch
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end212.for.body_crit_edge, %binarySearch.for.body_crit_edge
  %lim.0592 = phi i32 [ %shr218, %if.end212.for.body_crit_edge ], [ %sub, %binarySearch.for.body_crit_edge ]
  %base.0591 = phi i32 [ %base.1, %if.end212.for.body_crit_edge ], [ 2, %binarySearch.for.body_crit_edge ]
  %shr = ashr i32 %lim.0592, 1
  %add131 = add i32 %shr, %base.0591
  %off1133 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %add131, i32 2
  %63 = ptrtoint ptr %off1133 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %off1133, align 1
  %conv134 = zext i8 %64 to i64
  %shl135 = shl nuw nsw i64 %conv134, 32
  %off2137 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %add131, i32 3
  %65 = ptrtoint ptr %off2137 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %off2137, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %conv138 = zext i32 %67 to i64
  %or139 = or i64 %shl135, %conv138
  %loc141 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %add131, i32 4
  %68 = ptrtoint ptr %loc141 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %loc141, align 4
  %70 = and i32 %69, -256
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  %conv143 = zext i32 %71 to i64
  %add144 = add nuw nsw i64 %or139, %conv143
  call void @__sanitizer_cov_trace_cmp8(i64 %add144, i64 %xoff)
  %cmp145.not = icmp sgt i64 %add144, %xoff
  call void @__sanitizer_cov_trace_cmp8(i64 %or139, i64 %xoff)
  %cmp147 = icmp sgt i64 %or139, %xoff
  %cond149 = sext i1 %cmp147 to i32
  %cond150 = select i1 %cmp145.not, i32 %cond149, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond150)
  %cmp151 = icmp eq i32 %cond150, 0
  br i1 %cmp151, label %if.then153, label %if.end212

if.then153:                                       ; preds = %for.body
  %flag154 = getelementptr inbounds %struct.xtheader, ptr %p.0.ph, i32 0, i32 2
  %72 = ptrtoint ptr %flag154 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %flag154, align 8
  %74 = and i8 %73, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool157.not = icmp eq i8 %74, 0
  br i1 %tobool157.not, label %if.end194, label %if.then158

if.then158:                                       ; preds = %if.then153
  %75 = ptrtoint ptr %cmpp to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %cmpp, align 4
  %and159 = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.then158.if.end173_crit_edge, label %if.then161

if.then158.if.end173_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then161:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %nextindex, align 2
  %78 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %maxentry, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %77, i16 %79)
  %cmp166 = icmp eq i16 %77, %79
  %nsplit.2 = select i1 %cmp166, i32 %nsplit.0, i32 0
  %80 = ptrtoint ptr %nsplit1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %nsplit.2, ptr %nsplit1, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then161, %if.then158.if.end173_crit_edge
  %81 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %btstack, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %bn.0, ptr %82, align 8
  %conv176 = trunc i32 %add131 to i16
  %index177 = getelementptr inbounds %struct.btframe, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %index177 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv176, ptr %index177, align 8
  %mp178 = getelementptr inbounds %struct.btframe, ptr %82, i32 0, i32 3
  %85 = ptrtoint ptr %mp178 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %mp.0.ph, ptr %mp178, align 4
  %86 = ptrtoint ptr %btindex56 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %btindex56, align 2
  %conv180 = sext i16 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add131, i32 %conv180)
  %cmp181 = icmp eq i32 %add131, %conv180
  %add184 = add nsw i32 %conv180, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add131, i32 %add184)
  %cmp185 = icmp eq i32 %add131, %add184
  %or.cond = select i1 %cmp181, i1 true, i1 %cmp185
  %storemerge516 = zext i1 %or.cond to i16
  %88 = ptrtoint ptr %btorder to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %storemerge516, ptr %btorder, align 8
  %89 = ptrtoint ptr %btindex56 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv176, ptr %btindex56, align 2
  br label %cleanup

if.end194:                                        ; preds = %if.then153
  %sub197 = add nsw i32 %conv128, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add131, i32 %sub197)
  %cmp198 = icmp slt i32 %add131, %sub197
  br i1 %cmp198, label %if.then200, label %if.end194.next283_crit_edge

if.end194.next283_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %next283

if.then200:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  %add201 = add nsw i32 %add131, 1
  %off1203 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %add201, i32 2
  %90 = ptrtoint ptr %off1203 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %off1203, align 1
  %conv204 = zext i8 %91 to i64
  %shl205 = shl nuw nsw i64 %conv204, 32
  %off2208 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %add201, i32 3
  %92 = ptrtoint ptr %off2208 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %off2208, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %conv209 = zext i32 %94 to i64
  %or210 = or i64 %shl205, %conv209
  br label %next283

if.end212:                                        ; preds = %for.body
  %not.cmp145.not = xor i1 %cmp145.not, true
  %add216 = add i32 %add131, 1
  %base.1 = select i1 %cmp145.not, i32 %base.0591, i32 %add216
  %dec = sext i1 %not.cmp145.not to i32
  %lim.1 = add nsw i32 %lim.0592, %dec
  %shr218 = ashr i32 %lim.1, 1
  %tobool130.not = icmp ult i32 %lim.1, 2
  br i1 %tobool130.not, label %if.end212.for.end_crit_edge, label %if.end212.for.body_crit_edge

if.end212.for.body_crit_edge:                     ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end212.for.end_crit_edge:                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end212.for.end_crit_edge, %binarySearch.for.end_crit_edge
  %cmp.1.lcssa = phi i32 [ %cmp.0, %binarySearch.for.end_crit_edge ], [ %cond150, %if.end212.for.end_crit_edge ]
  %base.0.lcssa = phi i32 [ 2, %binarySearch.for.end_crit_edge ], [ %base.1, %if.end212.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %base.0.lcssa, i32 %conv128)
  %cmp221 = icmp slt i32 %base.0.lcssa, %conv128
  br i1 %cmp221, label %if.then223, label %for.end.if.end232_crit_edge

for.end.if.end232_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

if.then223:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %off1225 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %base.0.lcssa, i32 2
  %95 = ptrtoint ptr %off1225 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %off1225, align 1
  %conv226 = zext i8 %96 to i64
  %shl227 = shl nuw nsw i64 %conv226, 32
  %off2229 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %base.0.lcssa, i32 3
  %97 = ptrtoint ptr %off2229 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %off2229, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %conv230 = zext i32 %99 to i64
  %or231 = or i64 %shl227, %conv230
  br label %if.end232

if.end232:                                        ; preds = %if.then223, %for.end.if.end232_crit_edge
  %next.2 = phi i64 [ %or231, %if.then223 ], [ %next.0, %for.end.if.end232_crit_edge ]
  %flag233 = getelementptr inbounds %struct.xtheader, ptr %p.0.ph, i32 0, i32 2
  %100 = ptrtoint ptr %flag233 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %flag233, align 8
  %102 = and i8 %101, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool236.not = icmp eq i8 %102, 0
  br i1 %tobool236.not, label %if.end276, label %if.then237

if.then237:                                       ; preds = %if.end232
  %103 = ptrtoint ptr %cmpp to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %cmp.1.lcssa, ptr %cmpp, align 4
  %and238 = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %if.then237.if.end252_crit_edge, label %if.then240

if.then237.if.end252_crit_edge:                   ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.then240:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %nextindex, align 2
  %106 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %maxentry, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %105, i16 %107)
  %cmp245 = icmp eq i16 %105, %107
  %nsplit.3 = select i1 %cmp245, i32 %nsplit.0, i32 0
  %108 = ptrtoint ptr %nsplit1 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %nsplit.3, ptr %nsplit1, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then240, %if.then237.if.end252_crit_edge
  %109 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %btstack, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %bn.0, ptr %110, align 8
  %conv255 = trunc i32 %base.0.lcssa to i16
  %index256 = getelementptr inbounds %struct.btframe, ptr %110, i32 0, i32 1
  %112 = ptrtoint ptr %index256 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv255, ptr %index256, align 8
  %mp257 = getelementptr inbounds %struct.btframe, ptr %110, i32 0, i32 3
  %113 = ptrtoint ptr %mp257 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %mp.0.ph, ptr %mp257, align 4
  %114 = ptrtoint ptr %btindex56 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %btindex56, align 2
  %conv259 = sext i16 %115 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %base.0.lcssa, i32 %conv259)
  %cmp260 = icmp eq i32 %base.0.lcssa, %conv259
  %add263 = add nsw i32 %conv259, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %base.0.lcssa, i32 %add263)
  %cmp264 = icmp eq i32 %base.0.lcssa, %add263
  %or.cond517 = select i1 %cmp260, i1 true, i1 %cmp264
  %storemerge = zext i1 %or.cond517 to i16
  %116 = ptrtoint ptr %btorder to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %storemerge, ptr %btorder, align 8
  %117 = ptrtoint ptr %btindex56 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv255, ptr %btindex56, align 2
  %tobool273.not = icmp eq ptr %nextp, null
  br i1 %tobool273.not, label %if.end252.cleanup_crit_edge, label %if.then274

if.end252.cleanup_crit_edge:                      ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then274:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %nextp to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %next.2, ptr %nextp, align 8
  br label %cleanup

if.end276:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base.0.lcssa)
  %tobool277.not = icmp eq i32 %base.0.lcssa, 0
  %sub279 = add i32 %base.0.lcssa, -1
  %cond282 = select i1 %tobool277.not, i32 0, i32 %sub279
  br label %next283

next283:                                          ; preds = %if.end276, %if.then200, %if.end194.next283_crit_edge
  %cmp.2 = phi i32 [ 0, %if.then200 ], [ 0, %if.end194.next283_crit_edge ], [ %cmp.1.lcssa, %if.end276 ]
  %index.1 = phi i32 [ %add131, %if.then200 ], [ %add131, %if.end194.next283_crit_edge ], [ %cond282, %if.end276 ]
  %next.3 = phi i64 [ %or210, %if.then200 ], [ %next.0, %if.end194.next283_crit_edge ], [ %next.2, %if.end276 ]
  %119 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %maxentry, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %120)
  %cmp288 = icmp eq i16 %61, %120
  %121 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %btstack, align 8
  %cmp297 = icmp eq ptr %122, %arrayidx296
  br i1 %cmp297, label %if.then299, label %do.end329

if.then299:                                       ; preds = %next283
  %i_sb300 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %123 = ptrtoint ptr %i_sb300 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i_sb300, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %124, ptr noundef nonnull @.str.48) #6
  %125 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %mp.0.ph, align 8
  %127 = and i16 %126, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %cmp304 = icmp eq i16 %127, 0
  br i1 %cmp304, label %if.then299.cleanup_crit_edge, label %if.then306

if.then299.cleanup_crit_edge:                     ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then306:                                       ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %cleanup

do.end329:                                        ; preds = %next283
  %128 = ptrtoint ptr %122 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %bn.0, ptr %122, align 8
  %conv332 = trunc i32 %index.1 to i16
  %129 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %btstack, align 8
  %index334 = getelementptr inbounds %struct.btframe, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %index334 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv332, ptr %index334, align 8
  %132 = load ptr, ptr %btstack, align 8
  %incdec.ptr336 = getelementptr %struct.btframe, ptr %132, i32 1
  store ptr %incdec.ptr336, ptr %btstack, align 8
  %loc338 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %index.1, i32 4
  %133 = ptrtoint ptr %loc338 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %loc338, align 4
  %135 = shl i32 %134, 24
  %conv.i = zext i32 %135 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %index.1, i32 4, i32 1
  %136 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %addr2.i, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #6
  %conv1.i = zext i32 %138 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %139 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %mp.0.ph, align 8
  %141 = and i16 %140, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %cmp343 = icmp eq i16 %141, 0
  br i1 %cmp343, label %do.end329.if.end346_crit_edge, label %if.then345

do.end329.if.end346_crit_edge:                    ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end346

if.then345:                                       ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %if.end346

if.end346:                                        ; preds = %if.then345, %do.end329.if.end346_crit_edge
  %nsplit.0.op = add i32 %nsplit.0, 1
  %phi.bo = select i1 %cmp288, i32 %nsplit.0.op, i32 1
  br label %for.cond

cleanup:                                          ; preds = %if.then306, %if.then299.cleanup_crit_edge, %if.then274, %if.end252.cleanup_crit_edge, %if.end173, %if.end124, %if.then39, %if.then35.cleanup_crit_edge, %do.end, %if.else7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end124 ], [ 0, %if.end173 ], [ 0, %if.then274 ], [ 0, %if.end252.cleanup_crit_edge ], [ -5, %if.then306 ], [ -5, %if.then299.cleanup_crit_edge ], [ -5, %if.then39 ], [ -5, %if.then35.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %if.else7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_metapage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xtInsert(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %xflag, i64 noundef %xoff, i32 noundef %xlen, ptr nocapture noundef %xaddrp, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %xaddr = alloca i64, align 8
  %btstack = alloca %struct.btstack, align 8
  %split = alloca %struct.xtsplit, align 8
  %cmp = alloca i32, align 4
  %next = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr) #6
  %0 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %xaddr, align 8, !annotation !152
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #6
  %1 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %split) #6
  %2 = ptrtoint ptr %split to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %split, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmp) #6
  %3 = ptrtoint ptr %cmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cmp, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next) #6
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %next, align 8, !annotation !152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %5 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp sgt i32 %5, 3
  br i1 %cmp1, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i64 %xoff to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %xlen) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = call fastcc i32 @xtSearch(ptr noundef %ip, i64 noundef %xoff, ptr noundef nonnull %next, ptr noundef nonnull %cmp, ptr noundef nonnull %btstack, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %6 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btstack, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %mp10 = getelementptr inbounds %struct.btframe, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %mp10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mp10, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool11.not = icmp eq i64 %9, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.metapage, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %u = getelementptr i8, ptr %ip, i32 -400
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %p.0 = phi ptr [ %13, %if.then12 ], [ %u, %if.else ]
  %index16 = getelementptr inbounds %struct.btframe, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %index16 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index16, align 8
  %conv17 = sext i16 %15 to i32
  %16 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp18 = icmp eq i32 %17, 0
  br i1 %cmp18, label %if.end14.out_crit_edge, label %lor.lhs.false

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %if.end14
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %next, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool20.not = icmp eq i64 %19, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.end25_crit_edge, label %land.lhs.true

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %lor.lhs.false
  %conv21 = sext i32 %xlen to i64
  %sub = sub i64 %19, %xoff
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv21)
  %cmp22 = icmp slt i64 %sub, %conv21
  br i1 %cmp22, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge
  %20 = ptrtoint ptr %xaddrp to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %xaddrp, align 8
  %22 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %xaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp26 = icmp eq i64 %21, 0
  br i1 %cmp26, label %if.then28, label %if.end25.if.end51_crit_edge

if.end25.if.end51_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp29 = icmp sgt i16 %15, 2
  br i1 %cmp29, label %if.then31, label %if.then28.if.end39_crit_edge

if.then28.if.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %sub32 = add nsw i32 %conv17, -1
  %loc = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %sub32, i32 4
  %23 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %loc, align 4
  %25 = shl i32 %24, 24
  %conv.i = zext i32 %25 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %sub32, i32 4, i32 1
  %26 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr2.i, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #6
  %conv1.i = zext i32 %28 to i64
  %29 = and i32 %24, -256
  %30 = call i32 @llvm.bswap.i32(i32 %29) #6
  %conv36 = zext i32 %30 to i64
  %add.i = add nsw i64 %conv1.i, -1
  %add = add nsw i64 %add.i, %shl.i
  %sub37 = add nsw i64 %add, %conv36
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.then28.if.end39_crit_edge
  %hint.0 = phi i64 [ %sub37, %if.then31 ], [ 0, %if.then28.if.end39_crit_edge ]
  %conv40 = sext i32 %xlen to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %31 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %32 to i64
  %shl.i217 = shl i64 %conv40, %sh_prom.i
  %call.i.i.i = call i32 @__dquot_alloc_space(ptr noundef %ip, i64 noundef %shl.i217, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end44, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end44:                                         ; preds = %if.end39
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  %call46 = call i32 @dbAlloc(ptr noundef %ip, i64 noundef %hint.0, i64 noundef %conv40, ptr noundef nonnull %xaddr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end44.if.end51_crit_edge, label %if.then48

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @dquot_free_block(ptr noundef %ip, i64 noundef %conv40)
  br label %out

if.end51:                                         ; preds = %if.end44.if.end51_crit_edge, %if.end25.if.end51_crit_edge
  %or = or i32 %xflag, 1
  %nextindex52 = getelementptr inbounds %struct.xtheader, ptr %p.0, i32 0, i32 4
  %33 = ptrtoint ptr %nextindex52 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %nextindex52, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv53 = zext i16 %35 to i32
  %maxentry = getelementptr inbounds %struct.xtheader, ptr %p.0, i32 0, i32 5
  %36 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %maxentry, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %37)
  %cmp55 = icmp eq i16 %34, %37
  br i1 %cmp55, label %if.then57, label %if.end74

if.then57:                                        ; preds = %if.end51
  %38 = ptrtoint ptr %split to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %11, ptr %split, align 8
  %index60 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 1
  %39 = ptrtoint ptr %index60 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %15, ptr %index60, align 4
  %conv61 = trunc i32 %or to i8
  %flag62 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %40 = ptrtoint ptr %flag62 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv61, ptr %flag62, align 2
  %off = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %41 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %xoff, ptr %off, align 8
  %len = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %42 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %xlen, ptr %len, align 8
  %43 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %xaddr, align 8
  %addr = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %45 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %addr, align 8
  %pxdlist = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 6
  %46 = ptrtoint ptr %pxdlist to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %pxdlist, align 4
  %call63 = call fastcc i32 @xtSplitUp(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %split, ptr noundef nonnull %btstack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end73, label %if.then65

if.then65:                                        ; preds = %if.then57
  %47 = ptrtoint ptr %xaddrp to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %xaddrp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %cmp66 = icmp eq i64 %48, 0
  br i1 %cmp66, label %if.then68, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %xaddr, align 8
  %conv69 = sext i32 %xlen to i64
  %call70 = call i32 @dbFree(ptr noundef %ip, i64 noundef %50, i64 noundef %conv69) #6
  call fastcc void @dquot_free_block(ptr noundef %ip, i64 noundef %conv69)
  br label %cleanup

if.end73:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %xaddr, align 8
  %53 = ptrtoint ptr %xaddrp to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %xaddrp, align 8
  br label %cleanup

if.end74:                                         ; preds = %if.end51
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %11, align 8
  %56 = and i16 %55, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp77 = icmp eq i16 %56, 0
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end82

if.else80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %flag81 = getelementptr inbounds %struct.metapage, ptr %11, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag81) #6
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then79
  call void @__sanitizer_cov_trace_cmp4(i32 %conv53, i32 %conv17)
  %cmp83 = icmp sgt i32 %conv53, %conv17
  br i1 %cmp83, label %if.then85, label %if.end82.if.end90_crit_edge

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %add86 = add nsw i32 %conv17, 1
  %arrayidx87 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add86
  %arrayidx88 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17
  %sub89 = sub nsw i32 %conv53, %conv17
  %mul = shl nsw i32 %sub89, 4
  %57 = call ptr @memmove(ptr %arrayidx87, ptr %arrayidx88, i32 %mul)
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end82.if.end90_crit_edge
  %arrayidx91 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17
  %conv92 = trunc i32 %or to i8
  %58 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv92, ptr %arrayidx91, align 4
  %shr = lshr i64 %xoff, 32
  %conv94 = trunc i64 %shr to i8
  %off1 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17, i32 2
  %59 = ptrtoint ptr %off1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv94, ptr %off1, align 1
  %conv96 = trunc i64 %xoff to i32
  %60 = call i32 @llvm.bswap.i32(i32 %conv96)
  %off2 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17, i32 3
  %61 = ptrtoint ptr %off2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %off2, align 4
  %loc97 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17, i32 4
  %and1.i218 = and i32 %xlen, 16777215
  %62 = call i32 @llvm.bswap.i32(i32 %and1.i218) #6
  %63 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %xaddr, align 8
  %sum.shift.i = lshr i64 %64, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i220 = and i32 %conv7.i, 255
  %or.i221 = or i32 %conv.i220, %62
  %65 = ptrtoint ptr %loc97 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or.i221, ptr %loc97, align 4
  %conv3.i = trunc i64 %64 to i32
  %66 = call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  %addr2.i222 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17, i32 4, i32 1
  %67 = ptrtoint ptr %addr2.i222 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %addr2.i222, align 4
  %68 = ptrtoint ptr %nextindex52 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %nextindex52, align 2
  %70 = call i16 @llvm.bswap.i16(i16 %69) #6
  %add.i223 = add i16 %70, 1
  %71 = call i16 @llvm.bswap.i16(i16 %add.i223) #6
  %72 = ptrtoint ptr %nextindex52 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %nextindex52, align 2
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %73 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %cflag, align 4
  %and1.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool102.not = icmp eq i32 %and1.i, 0
  br i1 %tobool102.not, label %if.then103, label %if.end90.if.end128_crit_edge

if.end90.if.end128_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then103:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %call104 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %11, i32 noundef 16385) #6
  %lwm = getelementptr inbounds %struct.tlock, ptr %call104, i32 0, i32 6, i32 5
  %75 = ptrtoint ptr %lwm to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %lwm, align 2
  %conv105 = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool106.not = icmp eq i8 %76, 0
  %77 = call i32 @llvm.smin.i32(i32 %conv17, i32 %conv105)
  %cond116 = select i1 %tobool106.not, i32 %conv17, i32 %77
  %conv117 = trunc i32 %cond116 to i8
  %78 = ptrtoint ptr %lwm to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv117, ptr %lwm, align 2
  %79 = ptrtoint ptr %nextindex52 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %nextindex52, align 2
  %81 = lshr i16 %80, 8
  %conv121 = zext i16 %81 to i32
  %sub125 = sub nsw i32 %conv121, %cond116
  %conv126 = trunc i32 %sub125 to i8
  %length = getelementptr inbounds %struct.lv, ptr %lwm, i32 0, i32 1
  %82 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv126, ptr %length, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.then103, %if.end90.if.end128_crit_edge
  %83 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %xaddr, align 8
  %85 = ptrtoint ptr %xaddrp to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %xaddrp, align 8
  br label %out

out:                                              ; preds = %if.end128, %if.then48, %if.end39.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end14.out_crit_edge
  %rc.1 = phi i32 [ %call46, %if.then48 ], [ 0, %if.end128 ], [ -17, %land.lhs.true.out_crit_edge ], [ -17, %if.end14.out_crit_edge ], [ %call.i.i.i, %if.end39.out_crit_edge ]
  %86 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %11, align 8
  %88 = and i16 %87, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp132 = icmp eq i16 %88, 0
  br i1 %cmp132, label %out.cleanup_crit_edge, label %if.then134

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then134:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %out.cleanup_crit_edge, %if.end73, %if.then68, %if.then65.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ %call5, %do.end4.cleanup_crit_edge ], [ %call63, %if.then68 ], [ %call63, %if.then65.cleanup_crit_edge ], [ %rc.1, %if.then134 ], [ %rc.1, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmp) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %split) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbAlloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dquot_free_block(ptr noundef %inode, i64 noundef %nr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %nr, %sh_prom
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl, i32 noundef 0) #6
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xtSplitUp(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef %split, ptr noundef %btstack) unnamed_addr #0 align 64 {
entry:
  %rmp = alloca ptr, align 4
  %rbn = alloca i64, align 8
  %xaddr = alloca i64, align 8
  %pxdlist = alloca %struct.pxdlist, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmp) #6
  %0 = ptrtoint ptr %rmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmp, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rbn) #6
  %1 = ptrtoint ptr %rbn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %rbn, align 8, !annotation !152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr) #6
  %2 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %xaddr, align 8, !annotation !152
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %pxdlist) #6
  %3 = call ptr @memset(ptr %pxdlist, i32 255, i32 68)
  %4 = ptrtoint ptr %split to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %split, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 8
  %8 = and i16 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp = icmp eq i16 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %u = getelementptr i8, ptr %ip, i32 -400
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.metapage, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %u, %cond.true ], [ %10, %cond.false ]
  %flag = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 2
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flag, align 8
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %cond.end.if.end76_crit_edge, label %land.lhs.true

cond.end.if.end76_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true:                                    ; preds = %cond.end
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ip, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %16)
  %cmp6 = icmp eq i16 %16, 16384
  br i1 %cmp6, label %land.lhs.true.if.end76_crit_edge, label %land.lhs.true8

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true8:                                   ; preds = %land.lhs.true
  %maxentry = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 5
  %17 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %maxentry, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %19)
  %cmp10 = icmp ult i16 %19, 18
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true8.if.end76_crit_edge

land.lhs.true8.if.end76_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %mode2 = getelementptr i8, ptr %ip, i32 -844
  %20 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode2, align 4
  %and14 = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true12.if.end76_crit_edge, label %if.then

land.lhs.true12.if.end76_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then:                                          ; preds = %land.lhs.true12
  %22 = ptrtoint ptr %maxentry to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 4608, ptr %maxentry, align 4
  %23 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode2, align 4
  %and19 = and i32 %24, -262145
  store i32 %and19, ptr %mode2, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %5, align 8
  %27 = and i16 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp23 = icmp eq i16 %27, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %flag26 = getelementptr inbounds %struct.metapage, ptr %5, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag26) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then25
  %index = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 1
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %index, align 4
  %conv27 = sext i16 %29 to i32
  %nextindex28 = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 4
  %30 = ptrtoint ptr %nextindex28 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nextindex28, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv29 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %conv27)
  %cmp30 = icmp sgt i32 %conv29, %conv27
  br i1 %cmp30, label %if.then32, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nsw i32 %conv27, 1
  %arrayidx = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %add
  %arrayidx33 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv27
  %sub = sub nsw i32 %conv29, %conv27
  %mul = shl nsw i32 %sub, 4
  %33 = call ptr @memmove(ptr %arrayidx, ptr %arrayidx33, i32 %mul)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end.if.end34_crit_edge
  %arrayidx35 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv27
  %flag36 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %34 = ptrtoint ptr %flag36 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flag36, align 2
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx35, align 4
  %off = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %37 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %off, align 8
  %shr = lshr i64 %38, 32
  %conv38 = trunc i64 %shr to i8
  %off1 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv27, i32 2
  %39 = ptrtoint ptr %off1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv38, ptr %off1, align 1
  %40 = load i64, ptr %off, align 8
  %conv41 = trunc i64 %40 to i32
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv41)
  %off2 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv27, i32 3
  %42 = ptrtoint ptr %off2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %off2, align 4
  %loc = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv27, i32 4
  %len = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 8
  %45 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %loc, align 4
  %and.i = and i32 %46, 255
  %and1.i560 = and i32 %44, 16777215
  %47 = tail call i32 @llvm.bswap.i32(i32 %and1.i560) #6
  %or.i = or i32 %and.i, %47
  %48 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i, ptr %loc, align 4
  %addr = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %49 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %addr, align 8
  %sum.shift.i = lshr i64 %50, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i = and i32 %conv7.i, 255
  %or.i562 = or i32 %conv.i, %47
  store i32 %or.i562, ptr %loc, align 4
  %conv3.i = trunc i64 %50 to i32
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  %addr2.i = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv27, i32 4, i32 1
  %52 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %addr2.i, align 4
  %53 = ptrtoint ptr %nextindex28 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %nextindex28, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #6
  %add.i = add i16 %55, 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %add.i) #6
  %57 = ptrtoint ptr %nextindex28 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %nextindex28, align 2
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %58 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %cflag, align 4
  %and1.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool46.not = icmp eq i32 %and1.i, 0
  br i1 %tobool46.not, label %if.then47, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %5, i32 noundef 16385) #6
  %lwm = getelementptr inbounds %struct.tlock, ptr %call48, i32 0, i32 6, i32 5
  %60 = ptrtoint ptr %lwm to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %lwm, align 2
  %conv49 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool50.not = icmp eq i8 %61, 0
  %62 = tail call i32 @llvm.smin.i32(i32 %conv27, i32 %conv49)
  %cond63 = select i1 %tobool50.not, i32 %conv27, i32 %62
  %conv64 = trunc i32 %cond63 to i8
  %63 = ptrtoint ptr %lwm to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv64, ptr %lwm, align 2
  %64 = ptrtoint ptr %nextindex28 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nextindex28, align 2
  %66 = lshr i16 %65, 8
  %conv68 = zext i16 %66 to i32
  %sub72 = sub nsw i32 %conv68, %cond63
  %conv73 = trunc i32 %sub72 to i8
  %length = getelementptr inbounds %struct.lv, ptr %lwm, i32 0, i32 1
  %67 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv73, ptr %length, align 1
  br label %cleanup

if.end76:                                         ; preds = %land.lhs.true12.if.end76_crit_edge, %land.lhs.true8.if.end76_crit_edge, %land.lhs.true.if.end76_crit_edge, %cond.end.if.end76_crit_edge
  %pxdlist77 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 6
  %68 = ptrtoint ptr %pxdlist77 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pxdlist77, align 4
  %cmp78 = icmp eq ptr %69, null
  br i1 %cmp78, label %if.then80, label %if.end76.if.end103_crit_edge

if.end76.if.end103_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then80:                                        ; preds = %if.end76
  %nsplit81 = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 1
  %70 = ptrtoint ptr %nsplit81 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nsplit81, align 4
  %72 = ptrtoint ptr %pxdlist77 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %pxdlist, ptr %pxdlist77, align 4
  %npxd = getelementptr inbounds %struct.pxdlist, ptr %pxdlist, i32 0, i32 1
  %73 = ptrtoint ptr %npxd to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %npxd, align 2
  %74 = ptrtoint ptr %pxdlist to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %pxdlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp87627 = icmp sgt i32 %71, 0
  br i1 %cmp87627, label %for.body.lr.ph, label %if.then80.if.end103_crit_edge

if.then80.if.end103_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

for.body.lr.ph:                                   ; preds = %if.then80
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %75 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 33
  %77 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i, align 16
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %78, i32 0, i32 10
  %79 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %nbperpage, align 4
  %conv86 = sext i16 %80 to i32
  %pxd83 = getelementptr inbounds %struct.pxdlist, ptr %pxdlist, i32 0, i32 2
  %conv89 = sext i16 %80 to i64
  %and1.i572 = and i32 %conv86, 16777215
  %81 = call i32 @llvm.bswap.i32(i32 %and1.i572) #6
  br label %for.body

for.body:                                         ; preds = %if.then93.for.body_crit_edge, %for.body.lr.ph
  %pxd.0629 = phi ptr [ %pxd83, %for.body.lr.ph ], [ %incdec.ptr, %if.then93.for.body_crit_edge ]
  %nsplit.0628 = phi i32 [ %71, %for.body.lr.ph ], [ %dec, %if.then93.for.body_crit_edge ]
  %call90 = call i32 @dbAlloc(ptr noundef %ip, i64 noundef 0, i64 noundef %conv89, ptr noundef nonnull %xaddr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %for.body
  %82 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %xaddr, align 8
  %sum.shift.i565 = lshr i64 %83, 32
  %conv7.i566 = trunc i64 %sum.shift.i565 to i32
  %conv.i567 = and i32 %conv7.i566, 255
  %conv3.i569 = trunc i64 %83 to i32
  %84 = call i32 @llvm.bswap.i32(i32 %conv3.i569) #6
  %addr2.i570 = getelementptr inbounds %struct.pxd_t, ptr %pxd.0629, i32 0, i32 1
  %85 = ptrtoint ptr %addr2.i570 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %addr2.i570, align 4
  %or.i573 = or i32 %conv.i567, %81
  %86 = ptrtoint ptr %pxd.0629 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or.i573, ptr %pxd.0629, align 4
  %87 = ptrtoint ptr %pxdlist to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %pxdlist, align 4
  %inc = add i16 %88, 1
  store i16 %inc, ptr %pxdlist, align 4
  %dec = add nsw i32 %nsplit.0628, -1
  %incdec.ptr = getelementptr %struct.pxd_t, ptr %pxd.0629, i32 1
  %cmp87 = icmp sgt i32 %nsplit.0628, 1
  br i1 %cmp87, label %if.then93.for.body_crit_edge, label %if.then93.if.end103_crit_edge

if.then93.if.end103_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then93.for.body_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end95:                                         ; preds = %for.body
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %5, align 8
  %91 = and i16 %90, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp99 = icmp eq i16 %91, 0
  br i1 %cmp99, label %if.end95.cleanup_crit_edge, label %if.then101

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %5) #6
  br label %cleanup

if.end103:                                        ; preds = %if.then93.if.end103_crit_edge, %if.then80.if.end103_crit_edge, %if.end76.if.end103_crit_edge
  %92 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flag, align 8
  %94 = and i8 %93, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool107.not = icmp eq i8 %94, 0
  br i1 %tobool107.not, label %cond.false110, label %cond.true108

cond.true108:                                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %call109 = call fastcc i32 @xtSplitRoot(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %split, ptr noundef nonnull %rmp)
  br label %cond.end112

cond.false110:                                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %call111 = call fastcc i32 @xtSplitPage(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %split, ptr noundef nonnull %rmp, ptr noundef nonnull %rbn)
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false110, %cond.true108
  %cond113 = phi i32 [ %call109, %cond.true108 ], [ %call111, %cond.false110 ]
  %95 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %5, align 8
  %97 = and i16 %96, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp117 = icmp eq i16 %97, 0
  br i1 %cmp117, label %cond.end112.if.end120_crit_edge, label %if.then119

cond.end112.if.end120_crit_edge:                  ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then119:                                       ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %5) #6
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %cond.end112.if.end120_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond113)
  %tobool121.not = icmp eq i32 %cond113, 0
  br i1 %tobool121.not, label %while.cond.preheader, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end120
  %stack = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 2
  %98 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %btstack, align 8
  %cmp124631 = icmp eq ptr %99, %stack
  br i1 %cmp124631, label %while.cond.preheader.while.end_crit_edge, label %cond.end130.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

cond.end130.lr.ph:                                ; preds = %while.cond.preheader
  %u141 = getelementptr i8, ptr %ip, i32 -400
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %index230 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 1
  %flag231 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %off238 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %i_sb239 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %len243 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %addr244 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  br label %cond.end130

cond.end130:                                      ; preds = %if.end374.cond.end130_crit_edge, %cond.end130.lr.ph
  %100 = phi ptr [ %99, %cond.end130.lr.ph ], [ %205, %if.end374.cond.end130_crit_edge ]
  %incdec.ptr129 = getelementptr %struct.btframe, ptr %100, i32 -1
  %101 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %incdec.ptr129, ptr %btstack, align 8
  %cmp132.not = icmp eq ptr %incdec.ptr129, null
  br i1 %cmp132.not, label %cond.end130.while.end_crit_edge, label %while.body

cond.end130.while.end_crit_edge:                  ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %cond.end130
  %102 = ptrtoint ptr %rmp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmp, align 4
  %104 = ptrtoint ptr %rbn to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %rbn, align 8
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %103, align 8
  %108 = and i16 %107, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp137 = icmp eq i16 %108, 0
  br i1 %cmp137, label %while.body.cond.end145_crit_edge, label %cond.false143

while.body.cond.end145_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end145

cond.false143:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %data144 = getelementptr inbounds %struct.metapage, ptr %103, i32 0, i32 7
  %109 = ptrtoint ptr %data144 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data144, align 4
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false143, %while.body.cond.end145_crit_edge
  %cond146 = phi ptr [ %110, %cond.false143 ], [ %u141, %while.body.cond.end145_crit_edge ]
  %111 = ptrtoint ptr %incdec.ptr129 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %incdec.ptr129, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %112)
  %cmp147 = icmp eq i64 %112, 0
  br i1 %cmp147, label %cond.end145.if.then175_crit_edge, label %if.else154

cond.end145.if.then175_crit_edge:                 ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then175

if.else154:                                       ; preds = %cond.end145
  %conv156 = trunc i64 %112 to i32
  %call157 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv156, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %if.else161, label %if.then159

if.then159:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #8
  %data160 = getelementptr inbounds %struct.metapage, ptr %call157, i32 0, i32 7
  %113 = ptrtoint ptr %data160 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data160, align 4
  br label %if.then175

if.else161:                                       ; preds = %if.else154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %115 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp163 = icmp sgt i32 %115, 0
  br i1 %cmp163, label %do.end, label %if.else161.if.then209_crit_edge

if.else161.if.then209_crit_edge:                  ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then209

do.end:                                           ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #8
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %if.then209

if.then175:                                       ; preds = %if.then159, %cond.end145.if.then175_crit_edge
  %sp.0.ph = phi ptr [ %114, %if.then159 ], [ %u141, %cond.end145.if.then175_crit_edge ]
  %smp.0.ph = phi ptr [ %call157, %if.then159 ], [ %bxflag, %cond.end145.if.then175_crit_edge ]
  %nextindex176 = getelementptr inbounds %struct.xtheader, ptr %sp.0.ph, i32 0, i32 4
  %116 = ptrtoint ptr %nextindex176 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %nextindex176, align 2
  %118 = call i16 @llvm.bswap.i16(i16 %117)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %118)
  %cmp178 = icmp ult i16 %118, 2
  br i1 %cmp178, label %if.then175.if.then195_crit_edge, label %lor.lhs.false

if.then175.if.then195_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then195

lor.lhs.false:                                    ; preds = %if.then175
  %maxentry182 = getelementptr inbounds %struct.xtheader, ptr %sp.0.ph, i32 0, i32 5
  %119 = ptrtoint ptr %maxentry182 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %maxentry182, align 4
  %121 = call i16 @llvm.bswap.i16(i16 %120)
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %121)
  %cmp184 = icmp ugt i16 %118, %121
  br i1 %cmp184, label %lor.lhs.false.if.then195_crit_edge, label %lor.lhs.false186

lor.lhs.false.if.then195_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then195

lor.lhs.false186:                                 ; preds = %lor.lhs.false
  %conv183 = zext i16 %121 to i32
  %122 = ptrtoint ptr %incdec.ptr129 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %incdec.ptr129, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %123)
  %cmp190 = icmp eq i64 %123, 0
  %cond192 = select i1 %cmp190, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond192, i32 %conv183)
  %cmp193 = icmp ult i32 %cond192, %conv183
  br i1 %cmp193, label %lor.lhs.false186.if.then195_crit_edge, label %if.end217

lor.lhs.false186.if.then195_crit_edge:            ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then195

if.then195:                                       ; preds = %lor.lhs.false186.if.then195_crit_edge, %lor.lhs.false.if.then195_crit_edge, %if.then175.if.then195_crit_edge
  %124 = ptrtoint ptr %i_sb239 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %i_sb239, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %125, ptr noundef nonnull @.str.12) #6
  %126 = ptrtoint ptr %smp.0.ph to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %smp.0.ph, align 8
  %128 = and i16 %127, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %cmp200 = icmp eq i16 %128, 0
  br i1 %cmp200, label %if.then195.if.then209_crit_edge, label %if.then202

if.then195.if.then209_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then209

if.then202:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %smp.0.ph) #6
  br label %if.then209

if.then209:                                       ; preds = %if.then202, %if.then195.if.then209_crit_edge, %do.end, %if.else161.if.then209_crit_edge
  %129 = ptrtoint ptr %103 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %103, align 8
  %131 = and i16 %130, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp213 = icmp eq i16 %131, 0
  br i1 %cmp213, label %if.then209.cleanup_crit_edge, label %if.then215

if.then209.cleanup_crit_edge:                     ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then215:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %103) #6
  br label %cleanup

if.end217:                                        ; preds = %lor.lhs.false186
  %index218 = getelementptr %struct.btframe, ptr %100, i32 -1, i32 1
  %132 = ptrtoint ptr %index218 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %index218, align 8
  %conv219 = sext i16 %133 to i32
  %add220 = add nsw i32 %conv219, 1
  %134 = ptrtoint ptr %nextindex176 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %nextindex176, align 2
  %136 = ptrtoint ptr %maxentry182 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %maxentry182, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %135, i16 %137)
  %cmp225 = icmp eq i16 %135, %137
  br i1 %cmp225, label %if.then227, label %if.else279

if.then227:                                       ; preds = %if.end217
  %138 = ptrtoint ptr %split to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %smp.0.ph, ptr %split, align 8
  %conv229 = trunc i32 %add220 to i16
  %139 = ptrtoint ptr %index230 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv229, ptr %index230, align 4
  %140 = ptrtoint ptr %flag231 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %flag231, align 2
  %off1233 = getelementptr [18 x %struct.xad], ptr %cond146, i32 0, i32 2, i32 2
  %141 = ptrtoint ptr %off1233 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %off1233, align 1
  %conv234 = zext i8 %142 to i64
  %shl = shl nuw nsw i64 %conv234, 32
  %off2236 = getelementptr [18 x %struct.xad], ptr %cond146, i32 0, i32 2, i32 3
  %143 = ptrtoint ptr %off2236 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %off2236, align 4
  %145 = call i32 @llvm.bswap.i32(i32 %144)
  %conv237 = zext i32 %145 to i64
  %or = or i64 %shl, %conv237
  %146 = ptrtoint ptr %off238 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %or, ptr %off238, align 8
  %147 = ptrtoint ptr %i_sb239 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i_sb239, align 4
  %s_fs_info.i577 = getelementptr inbounds %struct.super_block, ptr %148, i32 0, i32 33
  %149 = ptrtoint ptr %s_fs_info.i577 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_fs_info.i577, align 16
  %nbperpage241 = getelementptr inbounds %struct.jfs_sb_info, ptr %150, i32 0, i32 10
  %151 = ptrtoint ptr %nbperpage241 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %nbperpage241, align 4
  %conv242 = sext i16 %152 to i32
  %153 = ptrtoint ptr %len243 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %conv242, ptr %len243, align 8
  %154 = ptrtoint ptr %addr244 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %105, ptr %addr244, align 8
  %155 = ptrtoint ptr %103 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %103, align 8
  %157 = and i16 %156, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %cmp248 = icmp eq i16 %157, 0
  br i1 %cmp248, label %if.then227.if.end251_crit_edge, label %if.then250

if.then227.if.end251_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end251

if.then250:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %103) #6
  br label %if.end251

if.end251:                                        ; preds = %if.then250, %if.then227.if.end251_crit_edge
  %flag252 = getelementptr inbounds %struct.xtheader, ptr %sp.0.ph, i32 0, i32 2
  %158 = ptrtoint ptr %flag252 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %flag252, align 8
  %160 = and i8 %159, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool255.not = icmp eq i8 %160, 0
  br i1 %tobool255.not, label %cond.false258, label %cond.true256

cond.true256:                                     ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #8
  %call257 = call fastcc i32 @xtSplitRoot(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %split, ptr noundef nonnull %rmp)
  br label %cond.end260

cond.false258:                                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #8
  %call259 = call fastcc i32 @xtSplitPage(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %split, ptr noundef nonnull %rmp, ptr noundef nonnull %rbn)
  br label %cond.end260

cond.end260:                                      ; preds = %cond.false258, %cond.true256
  %cond261 = phi i32 [ %call257, %cond.true256 ], [ %call259, %cond.false258 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond261)
  %tobool262.not = icmp eq i32 %cond261, 0
  %161 = ptrtoint ptr %smp.0.ph to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %smp.0.ph, align 8
  %163 = and i16 %162, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %cmp275 = icmp eq i16 %163, 0
  br i1 %tobool262.not, label %if.end271, label %if.then263

if.then263:                                       ; preds = %cond.end260
  br i1 %cmp275, label %if.then263.cleanup_crit_edge, label %if.then269

if.then263.cleanup_crit_edge:                     ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then269:                                       ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %smp.0.ph) #6
  br label %cleanup

if.end271:                                        ; preds = %cond.end260
  br i1 %cmp275, label %if.end271.if.end374_crit_edge, label %if.then277

if.end271.if.end374_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end374

if.then277:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %smp.0.ph) #6
  br label %if.end374

if.else279:                                       ; preds = %if.end217
  %conv219.le = sext i16 %133 to i32
  %164 = call i16 @llvm.bswap.i16(i16 %135)
  %conv222.le = zext i16 %164 to i32
  %165 = ptrtoint ptr %smp.0.ph to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %smp.0.ph, align 8
  %167 = and i16 %166, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %cmp283 = icmp eq i16 %167, 0
  br i1 %cmp283, label %if.then285, label %if.else286

if.then285:                                       ; preds = %if.else279
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end288

if.else286:                                       ; preds = %if.else279
  call void @__sanitizer_cov_trace_pc() #8
  %flag287 = getelementptr inbounds %struct.metapage, ptr %smp.0.ph, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag287) #6
  br label %if.end288

if.end288:                                        ; preds = %if.else286, %if.then285
  call void @__sanitizer_cov_trace_cmp4(i32 %add220, i32 %conv222.le)
  %cmp289 = icmp slt i32 %add220, %conv222.le
  br i1 %cmp289, label %if.then291, label %if.end288.if.end297_crit_edge

if.end288.if.end297_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end297

if.then291:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #8
  %add292 = add nsw i32 %conv219.le, 2
  %arrayidx293 = getelementptr [18 x %struct.xad], ptr %sp.0.ph, i32 0, i32 %add292
  %arrayidx294 = getelementptr [18 x %struct.xad], ptr %sp.0.ph, i32 0, i32 %add220
  %sub295 = sub nsw i32 %conv222.le, %add220
  %shl296 = shl nsw i32 %sub295, 4
  %168 = call ptr @memmove(ptr %arrayidx293, ptr %arrayidx294, i32 %shl296)
  br label %if.end297

if.end297:                                        ; preds = %if.then291, %if.end288.if.end297_crit_edge
  %arrayidx298 = getelementptr [18 x %struct.xad], ptr %sp.0.ph, i32 0, i32 %add220
  %169 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %arrayidx298, align 4
  %off1301 = getelementptr [18 x %struct.xad], ptr %cond146, i32 0, i32 2, i32 2
  %170 = ptrtoint ptr %off1301 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %off1301, align 1
  %off2305 = getelementptr [18 x %struct.xad], ptr %cond146, i32 0, i32 2, i32 3
  %off1310 = getelementptr [18 x %struct.xad], ptr %sp.0.ph, i32 0, i32 %add220, i32 2
  %172 = ptrtoint ptr %off1310 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %off1310, align 1
  %173 = ptrtoint ptr %off2305 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %off2305, align 4
  %off2321 = getelementptr [18 x %struct.xad], ptr %sp.0.ph, i32 0, i32 %add220, i32 3
  %175 = ptrtoint ptr %off2321 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %off2321, align 4
  %loc322 = getelementptr [18 x %struct.xad], ptr %sp.0.ph, i32 0, i32 %add220, i32 4
  %176 = ptrtoint ptr %i_sb239 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %i_sb239, align 4
  %s_fs_info.i578 = getelementptr inbounds %struct.super_block, ptr %177, i32 0, i32 33
  %178 = ptrtoint ptr %s_fs_info.i578 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %s_fs_info.i578, align 16
  %nbperpage325 = getelementptr inbounds %struct.jfs_sb_info, ptr %179, i32 0, i32 10
  %180 = ptrtoint ptr %nbperpage325 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %nbperpage325, align 4
  %conv326 = sext i16 %181 to i32
  %and1.i580 = and i32 %conv326, 16777215
  %182 = call i32 @llvm.bswap.i32(i32 %and1.i580) #6
  %sum.shift.i583 = lshr i64 %105, 32
  %conv7.i584 = trunc i64 %sum.shift.i583 to i32
  %conv.i585 = and i32 %conv7.i584, 255
  %or.i586 = or i32 %182, %conv.i585
  %183 = ptrtoint ptr %loc322 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or.i586, ptr %loc322, align 4
  %conv3.i587 = trunc i64 %105 to i32
  %184 = call i32 @llvm.bswap.i32(i32 %conv3.i587) #6
  %addr2.i588 = getelementptr [18 x %struct.xad], ptr %sp.0.ph, i32 0, i32 %add220, i32 4, i32 1
  %185 = ptrtoint ptr %addr2.i588 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %addr2.i588, align 4
  %186 = ptrtoint ptr %nextindex176 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %nextindex176, align 2
  %188 = call i16 @llvm.bswap.i16(i16 %187) #6
  %add.i589 = add i16 %188, 1
  %189 = call i16 @llvm.bswap.i16(i16 %add.i589) #6
  %190 = ptrtoint ptr %nextindex176 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %nextindex176, align 2
  %cflag330 = getelementptr i8, ptr %ip, i32 -768
  %191 = ptrtoint ptr %cflag330 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %cflag330, align 4
  %and1.i557 = and i32 %192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i557)
  %tobool332.not = icmp eq i32 %and1.i557, 0
  br i1 %tobool332.not, label %if.then333, label %if.end297.if.end366_crit_edge

if.end297.if.end366_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end366

if.then333:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #8
  %call334 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %smp.0.ph, i32 noundef 16385) #6
  %lwm336 = getelementptr inbounds %struct.tlock, ptr %call334, i32 0, i32 6, i32 5
  %193 = ptrtoint ptr %lwm336 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %lwm336, align 2
  %conv338 = zext i8 %194 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool339.not = icmp eq i8 %194, 0
  %195 = call i32 @llvm.smin.i32(i32 %add220, i32 %conv338)
  %cond353 = select i1 %tobool339.not, i32 %add220, i32 %195
  %conv354 = trunc i32 %cond353 to i8
  %196 = ptrtoint ptr %lwm336 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv354, ptr %lwm336, align 2
  %197 = ptrtoint ptr %nextindex176 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %nextindex176, align 2
  %199 = lshr i16 %198, 8
  %conv358 = zext i16 %199 to i32
  %sub362 = sub nsw i32 %conv358, %cond353
  %conv363 = trunc i32 %sub362 to i8
  %length365 = getelementptr inbounds %struct.lv, ptr %lwm336, i32 0, i32 1
  %200 = ptrtoint ptr %length365 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv363, ptr %length365, align 1
  br label %if.end366

if.end366:                                        ; preds = %if.then333, %if.end297.if.end366_crit_edge
  %201 = ptrtoint ptr %smp.0.ph to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %smp.0.ph, align 8
  %203 = and i16 %202, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %cmp370 = icmp eq i16 %203, 0
  br i1 %cmp370, label %if.end366.while.end_crit_edge, label %if.then372

if.end366.while.end_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then372:                                       ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %smp.0.ph) #6
  br label %while.end

if.end374:                                        ; preds = %if.then277, %if.end271.if.end374_crit_edge
  %204 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %btstack, align 8
  %cmp124 = icmp eq ptr %205, %stack
  br i1 %cmp124, label %if.end374.while.end_crit_edge, label %if.end374.cond.end130_crit_edge

if.end374.cond.end130_crit_edge:                  ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end130

if.end374.while.end_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end374.while.end_crit_edge, %if.then372, %if.end366.while.end_crit_edge, %cond.end130.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %206 = ptrtoint ptr %rmp to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rmp, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %207, align 8
  %210 = and i16 %209, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %cmp378 = icmp eq i16 %210, 0
  br i1 %cmp378, label %while.end.cleanup_crit_edge, label %if.then380

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then380:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %207) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then380, %while.end.cleanup_crit_edge, %if.then269, %if.then263.cleanup_crit_edge, %if.then215, %if.then209.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.then101, %if.end95.cleanup_crit_edge, %if.then47, %if.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then47 ], [ 0, %if.end34.cleanup_crit_edge ], [ %call90, %if.then101 ], [ %call90, %if.end95.cleanup_crit_edge ], [ -5, %if.end120.cleanup_crit_edge ], [ -5, %if.then215 ], [ -5, %if.then209.cleanup_crit_edge ], [ %cond261, %if.then269 ], [ %cond261, %if.then263.cleanup_crit_edge ], [ 0, %if.then380 ], [ 0, %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %pxdlist) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rbn) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbFree(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @txLock(i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xtExtend(i16 noundef zeroext %tid, ptr noundef %ip, i64 noundef %xoff, i32 noundef %xlen, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %cmp = alloca i32, align 4
  %btstack = alloca %struct.btstack, align 8
  %split = alloca %struct.xtsplit, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmp) #6
  %0 = ptrtoint ptr %cmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmp, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #6
  %1 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %split) #6
  %2 = call ptr @memset(ptr %split, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %3 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1 = icmp sgt i32 %3, 3
  br i1 %cmp1, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i64 %xoff to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %xlen) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %sub = add i64 %xoff, -1
  %call5 = call fastcc i32 @xtSearch(ptr noundef %ip, i64 noundef %sub, ptr noundef null, ptr noundef nonnull %cmp, ptr noundef nonnull %btstack, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %4 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btstack, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %mp10 = getelementptr inbounds %struct.btframe, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mp10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mp10, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool11.not = icmp eq i64 %7, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.metapage, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %u = getelementptr i8, ptr %ip, i32 -400
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %p.0 = phi ptr [ %11, %if.then12 ], [ %u, %if.else ]
  %index16 = getelementptr inbounds %struct.btframe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %index16 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index16, align 8
  %conv17 = sext i16 %13 to i32
  %14 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.not = icmp eq i32 %15, 0
  br i1 %cmp18.not, label %if.end26, label %if.then20

if.then20:                                        ; preds = %if.end14
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %9, align 8
  %18 = and i16 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp22 = icmp eq i16 %18, 0
  br i1 %cmp22, label %if.then20.if.end25_crit_edge, label %if.then24

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %9) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then20.if.end25_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %20, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %off1 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17, i32 2
  %21 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %off1, align 1
  %conv27 = zext i8 %22 to i64
  %shl = shl nuw nsw i64 %conv27, 32
  %off2 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17, i32 3
  %23 = ptrtoint ptr %off2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %off2, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %conv28 = zext i32 %25 to i64
  %or = or i64 %shl, %conv28
  %loc = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17, i32 4
  %26 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %loc, align 4
  %28 = and i32 %27, -256
  %29 = call i32 @llvm.bswap.i32(i32 %28) #6
  %conv30 = zext i32 %29 to i64
  %add = add nuw nsw i64 %or, %conv30
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %xoff)
  %cmp31.not = icmp eq i64 %add, %xoff
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %9, align 8
  %32 = and i16 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp46 = icmp eq i16 %32, 0
  br i1 %cmp31.not, label %if.end42, label %if.then33

if.then33:                                        ; preds = %if.end26
  br i1 %cmp46, label %if.then33.if.end40_crit_edge, label %if.then39

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %9) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then33.if.end40_crit_edge
  %i_sb41 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb41, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %34, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end42:                                         ; preds = %if.end26
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end51

if.else49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %flag50 = getelementptr inbounds %struct.metapage, ptr %9, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag50) #6
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then48
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %35 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %cflag, align 4
  %and1.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool54.not = icmp eq i32 %and1.i, 0
  br i1 %tobool54.not, label %if.then55, label %if.end51.if.end57_crit_edge

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %9, i32 noundef 16385) #6
  %lock = getelementptr inbounds %struct.tlock, ptr %call56, i32 0, i32 6
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end51.if.end57_crit_edge
  %xtlck.0 = phi ptr [ null, %if.end51.if.end57_crit_edge ], [ %lock, %if.then55 ]
  %37 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %loc, align 4
  %39 = and i32 %38, -256
  %40 = call i32 @llvm.bswap.i32(i32 %39) #6
  %add60 = add i32 %40, %xlen
  %sub61 = add i32 %add60, -16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub61)
  %cmp62 = icmp slt i32 %sub61, 1
  br i1 %cmp62, label %if.end57.extendOld_crit_edge, label %if.end65

if.end57.extendOld_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %extendOld

if.end65:                                         ; preds = %if.end57
  %41 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %off1, align 1
  %conv67 = zext i8 %42 to i64
  %shl68 = shl nuw nsw i64 %conv67, 32
  %43 = ptrtoint ptr %off2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %off2, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %conv70 = zext i32 %45 to i64
  %or71 = or i64 %shl68, 16777215
  %add72 = add nuw nsw i64 %or71, %conv70
  %46 = shl i32 %38, 24
  %conv.i = zext i32 %46 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv17, i32 4, i32 1
  %47 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr2.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #6
  %conv1.i = zext i32 %49 to i64
  %add.i = or i64 %shl.i, 16777215
  %add75 = add nuw nsw i64 %add.i, %conv1.i
  %nextindex76 = getelementptr inbounds %struct.xtheader, ptr %p.0, i32 0, i32 4
  %50 = ptrtoint ptr %nextindex76 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nextindex76, align 2
  %maxentry = getelementptr inbounds %struct.xtheader, ptr %p.0, i32 0, i32 5
  %52 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %maxentry, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp79 = icmp eq i16 %51, %53
  br i1 %cmp79, label %if.then81, label %if.else276

if.then81:                                        ; preds = %if.end65
  %54 = ptrtoint ptr %split to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %9, ptr %split, align 8
  %add83 = add i16 %13, 1
  %index85 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 1
  %55 = ptrtoint ptr %index85 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %add83, ptr %index85, align 4
  %flag86 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %56 = ptrtoint ptr %flag86 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %flag86, align 2
  %off = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %57 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %add72, ptr %off, align 8
  %len87 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %58 = ptrtoint ptr %len87 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub61, ptr %len87, align 8
  %addr = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %59 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %add75, ptr %addr, align 8
  %pxdlist = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 6
  %60 = ptrtoint ptr %pxdlist to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %pxdlist, align 4
  %call88 = call fastcc i32 @xtSplitUp(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %split, ptr noundef nonnull %btstack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.body92, label %if.then81.cleanup_crit_edge

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body92:                                        ; preds = %if.then81
  br i1 %tobool11.not, label %if.then95, label %if.else100

if.then95:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %u98 = getelementptr i8, ptr %ip, i32 -400
  br label %if.then122

if.else100:                                       ; preds = %do.body92
  %conv101 = trunc i64 %7 to i32
  %call102 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv101, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.else106, label %if.then104

if.then104:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #8
  %data105 = getelementptr inbounds %struct.metapage, ptr %call102, i32 0, i32 7
  %61 = ptrtoint ptr %data105 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data105, align 4
  br label %if.then122

if.else106:                                       ; preds = %if.else100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %63 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp108 = icmp sgt i32 %63, 0
  br i1 %cmp108, label %do.end113, label %if.else106.cleanup_crit_edge

if.else106.cleanup_crit_edge:                     ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end113:                                        ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #8
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then122:                                       ; preds = %if.then104, %if.then95
  %p.1.ph = phi ptr [ %62, %if.then104 ], [ %u98, %if.then95 ]
  %mp.0.ph = phi ptr [ %call102, %if.then104 ], [ %bxflag, %if.then95 ]
  %nextindex123 = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 4
  %64 = ptrtoint ptr %nextindex123 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nextindex123, align 2
  %66 = call i16 @llvm.bswap.i16(i16 %65)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %66)
  %cmp125 = icmp ult i16 %66, 2
  br i1 %cmp125, label %if.then122.if.then140_crit_edge, label %lor.lhs.false

if.then122.if.then140_crit_edge:                  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

lor.lhs.false:                                    ; preds = %if.then122
  %maxentry129 = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 5
  %67 = ptrtoint ptr %maxentry129 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %maxentry129, align 4
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %69)
  %cmp131 = icmp ugt i16 %66, %69
  br i1 %cmp131, label %lor.lhs.false.if.then140_crit_edge, label %lor.lhs.false133

lor.lhs.false.if.then140_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

lor.lhs.false133:                                 ; preds = %lor.lhs.false
  %conv130 = zext i16 %69 to i32
  %cond = select i1 %tobool11.not, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv130)
  %cmp138 = icmp ult i32 %cond, %conv130
  br i1 %cmp138, label %lor.lhs.false133.if.then140_crit_edge, label %if.end155

lor.lhs.false133.if.then140_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

if.then140:                                       ; preds = %lor.lhs.false133.if.then140_crit_edge, %lor.lhs.false.if.then140_crit_edge, %if.then122.if.then140_crit_edge
  %i_sb141 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %70 = ptrtoint ptr %i_sb141 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb141, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %71, ptr noundef nonnull @.str.12) #6
  %72 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mp.0.ph, align 8
  %74 = and i16 %73, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp145 = icmp eq i16 %74, 0
  br i1 %cmp145, label %if.then140.cleanup_crit_edge, label %if.then147

if.then140.cleanup_crit_edge:                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then147:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %cleanup

if.end155:                                        ; preds = %lor.lhs.false133
  %flag156 = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 2
  %75 = ptrtoint ptr %flag156 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %flag156, align 8
  %77 = and i8 %76, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool159.not = icmp eq i8 %77, 0
  br i1 %tobool159.not, label %if.end155.extendOld_crit_edge, label %do.body161

if.end155.extendOld_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %extendOld

do.body161:                                       ; preds = %if.end155
  %78 = ptrtoint ptr %nextindex123 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %nextindex123, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %79)
  %cmp164 = icmp eq i16 %79, 768
  br i1 %cmp164, label %do.end180, label %do.end169

do.end169:                                        ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #8
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 1441, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_xtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1441, 0\0A.popsection", ""() #6, !srcloc !153
  unreachable

do.end180:                                        ; preds = %do.body161
  %loc182 = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 2, i32 4
  %80 = ptrtoint ptr %loc182 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %loc182, align 4
  %82 = shl i32 %81, 24
  %conv.i468 = zext i32 %82 to i64
  %shl.i469 = shl nuw nsw i64 %conv.i468, 8
  %addr2.i470 = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 2, i32 4, i32 1
  %83 = ptrtoint ptr %addr2.i470 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr2.i470, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #6
  %conv1.i471 = zext i32 %85 to i64
  %add.i472 = or i64 %shl.i469, %conv1.i471
  %86 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %mp.0.ph, align 8
  %88 = and i16 %87, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp187 = icmp eq i16 %88, 0
  br i1 %cmp187, label %do.end180.do.body191_crit_edge, label %if.then189

do.end180.do.body191_crit_edge:                   ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body191

if.then189:                                       ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %do.body191

do.body191:                                       ; preds = %if.then189, %do.end180.do.body191_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i472)
  %cmp192 = icmp eq i64 %add.i472, 0
  br i1 %cmp192, label %if.then194, label %if.else200

if.then194:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #8
  %bxflag196 = getelementptr i8, ptr %ip, i32 -752
  %u198 = getelementptr i8, ptr %ip, i32 -400
  br label %if.then222

if.else200:                                       ; preds = %do.body191
  %call202 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %85, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool203.not = icmp eq ptr %call202, null
  br i1 %tobool203.not, label %if.else206, label %if.then204

if.then204:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #8
  %data205 = getelementptr inbounds %struct.metapage, ptr %call202, i32 0, i32 7
  %89 = ptrtoint ptr %data205 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data205, align 4
  br label %if.then222

if.else206:                                       ; preds = %if.else200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %91 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp208 = icmp sgt i32 %91, 0
  br i1 %cmp208, label %do.end213, label %if.else206.cleanup_crit_edge

if.else206.cleanup_crit_edge:                     ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end213:                                        ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #8
  %call215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then222:                                       ; preds = %if.then204, %if.then194
  %p.2.ph = phi ptr [ %90, %if.then204 ], [ %u198, %if.then194 ]
  %mp.2.ph = phi ptr [ %call202, %if.then204 ], [ %bxflag196, %if.then194 ]
  %nextindex223 = getelementptr inbounds %struct.xtheader, ptr %p.2.ph, i32 0, i32 4
  %92 = ptrtoint ptr %nextindex223 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %nextindex223, align 2
  %94 = call i16 @llvm.bswap.i16(i16 %93)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %94)
  %cmp225 = icmp ult i16 %94, 2
  br i1 %cmp225, label %if.then222.if.then242_crit_edge, label %lor.lhs.false227

if.then222.if.then242_crit_edge:                  ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then242

lor.lhs.false227:                                 ; preds = %if.then222
  %maxentry230 = getelementptr inbounds %struct.xtheader, ptr %p.2.ph, i32 0, i32 5
  %95 = ptrtoint ptr %maxentry230 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %maxentry230, align 4
  %97 = call i16 @llvm.bswap.i16(i16 %96)
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %97)
  %cmp232 = icmp ugt i16 %94, %97
  br i1 %cmp232, label %lor.lhs.false227.if.then242_crit_edge, label %lor.lhs.false234

lor.lhs.false227.if.then242_crit_edge:            ; preds = %lor.lhs.false227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then242

lor.lhs.false234:                                 ; preds = %lor.lhs.false227
  %conv231 = zext i16 %97 to i32
  %cond239 = select i1 %cmp192, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond239, i32 %conv231)
  %cmp240 = icmp ult i32 %cond239, %conv231
  br i1 %cmp240, label %lor.lhs.false234.if.then242_crit_edge, label %if.end257

lor.lhs.false234.if.then242_crit_edge:            ; preds = %lor.lhs.false234
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then242

if.then242:                                       ; preds = %lor.lhs.false234.if.then242_crit_edge, %lor.lhs.false227.if.then242_crit_edge, %if.then222.if.then242_crit_edge
  %i_sb243 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %98 = ptrtoint ptr %i_sb243 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_sb243, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %99, ptr noundef nonnull @.str.12) #6
  %100 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %mp.2.ph, align 8
  %102 = and i16 %101, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp247 = icmp eq i16 %102, 0
  br i1 %cmp247, label %if.then242.cleanup_crit_edge, label %if.then249

if.then242.cleanup_crit_edge:                     ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then249:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.2.ph) #6
  br label %cleanup

if.end257:                                        ; preds = %lor.lhs.false234
  %103 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %mp.2.ph, align 8
  %105 = and i16 %104, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp261 = icmp eq i16 %105, 0
  br i1 %cmp261, label %if.then263, label %if.else264

if.then263:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end266

if.else264:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #8
  %flag265 = getelementptr inbounds %struct.metapage, ptr %mp.2.ph, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag265) #6
  br label %if.end266

if.end266:                                        ; preds = %if.else264, %if.then263
  %106 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %cflag, align 4
  %and1.i463 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i463)
  %tobool270.not = icmp eq i32 %and1.i463, 0
  br i1 %tobool270.not, label %if.then271, label %if.end266.extendOld_crit_edge

if.end266.extendOld_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  br label %extendOld

if.then271:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  %call272 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.2.ph, i32 noundef 16385) #6
  %lock273 = getelementptr inbounds %struct.tlock, ptr %call272, i32 0, i32 6
  br label %extendOld

if.else276:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %add277 = add nsw i32 %conv17, 1
  %arrayidx278 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add277
  %108 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %arrayidx278, align 4
  %shr = lshr i64 %add72, 32
  %conv280 = trunc i64 %shr to i8
  %off1281 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add277, i32 2
  %109 = ptrtoint ptr %off1281 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv280, ptr %off1281, align 1
  %conv283 = trunc i64 %add72 to i32
  %110 = call i32 @llvm.bswap.i32(i32 %conv283)
  %off2284 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add277, i32 3
  %111 = ptrtoint ptr %off2284 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %off2284, align 4
  %loc285 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add277, i32 4
  %and1.i476 = and i32 %sub61, 16777215
  %112 = call i32 @llvm.bswap.i32(i32 %and1.i476) #6
  %sum.shift.i = lshr i64 %add75, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i478 = and i32 %conv7.i, 255
  %or.i479 = or i32 %conv.i478, %112
  %113 = ptrtoint ptr %loc285 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or.i479, ptr %loc285, align 4
  %conv3.i = trunc i64 %add75 to i32
  %114 = call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  %addr2.i480 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add277, i32 4, i32 1
  %115 = ptrtoint ptr %addr2.i480 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %addr2.i480, align 4
  %116 = ptrtoint ptr %nextindex76 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %nextindex76, align 2
  %118 = call i16 @llvm.bswap.i16(i16 %117) #6
  %add.i481 = add i16 %118, 1
  %119 = call i16 @llvm.bswap.i16(i16 %add.i481) #6
  %120 = ptrtoint ptr %nextindex76 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %nextindex76, align 2
  br label %extendOld

extendOld:                                        ; preds = %if.else276, %if.then271, %if.end266.extendOld_crit_edge, %if.end155.extendOld_crit_edge, %if.end57.extendOld_crit_edge
  %p.4 = phi ptr [ %p.0, %if.end57.extendOld_crit_edge ], [ %p.2.ph, %if.end266.extendOld_crit_edge ], [ %p.2.ph, %if.then271 ], [ %p.1.ph, %if.end155.extendOld_crit_edge ], [ %p.0, %if.else276 ]
  %xtlck.2 = phi ptr [ %xtlck.0, %if.end57.extendOld_crit_edge ], [ %xtlck.0, %if.end266.extendOld_crit_edge ], [ %lock273, %if.then271 ], [ %xtlck.0, %if.end155.extendOld_crit_edge ], [ %xtlck.0, %if.else276 ]
  %mp.5 = phi ptr [ %9, %if.end57.extendOld_crit_edge ], [ %mp.2.ph, %if.end266.extendOld_crit_edge ], [ %mp.2.ph, %if.then271 ], [ %mp.0.ph, %if.end155.extendOld_crit_edge ], [ %9, %if.else276 ]
  %xlen.addr.0 = phi i32 [ %add60, %if.end57.extendOld_crit_edge ], [ 16777215, %if.end266.extendOld_crit_edge ], [ 16777215, %if.then271 ], [ 16777215, %if.end155.extendOld_crit_edge ], [ 16777215, %if.else276 ]
  %xad.0 = getelementptr [18 x %struct.xad], ptr %p.4, i32 0, i32 %conv17
  %loc290 = getelementptr [18 x %struct.xad], ptr %p.4, i32 0, i32 %conv17, i32 4
  %121 = ptrtoint ptr %loc290 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %loc290, align 4
  %and.i482 = and i32 %122, 255
  %and1.i483 = and i32 %xlen.addr.0, 16777215
  %123 = call i32 @llvm.bswap.i32(i32 %and1.i483) #6
  %or.i484 = or i32 %and.i482, %123
  %124 = ptrtoint ptr %loc290 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or.i484, ptr %loc290, align 4
  %125 = ptrtoint ptr %xad.0 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %xad.0, align 4
  %127 = and i8 %126, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool294.not = icmp eq i8 %127, 0
  br i1 %tobool294.not, label %if.then295, label %extendOld.if.end300_crit_edge

extendOld.if.end300_crit_edge:                    ; preds = %extendOld
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end300

if.then295:                                       ; preds = %extendOld
  call void @__sanitizer_cov_trace_pc() #8
  %or298 = or i8 %126, 2
  %128 = ptrtoint ptr %xad.0 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %or298, ptr %xad.0, align 4
  br label %if.end300

if.end300:                                        ; preds = %if.then295, %extendOld.if.end300_crit_edge
  %129 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %cflag, align 4
  %and1.i464 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i464)
  %tobool304.not = icmp eq i32 %and1.i464, 0
  br i1 %tobool304.not, label %if.then305, label %if.end300.if.end330_crit_edge

if.end300.if.end330_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

if.then305:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #8
  %lwm = getelementptr inbounds %struct.xtlock, ptr %xtlck.2, i32 0, i32 7
  %131 = ptrtoint ptr %lwm to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %lwm, align 2
  %conv306 = zext i8 %132 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool307.not = icmp eq i8 %132, 0
  %133 = call i32 @llvm.smin.i32(i32 %conv17, i32 %conv306)
  %cond318 = select i1 %tobool307.not, i32 %conv17, i32 %133
  %conv319 = trunc i32 %cond318 to i8
  %134 = ptrtoint ptr %lwm to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv319, ptr %lwm, align 2
  %nextindex322 = getelementptr inbounds %struct.xtheader, ptr %p.4, i32 0, i32 4
  %135 = ptrtoint ptr %nextindex322 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %nextindex322, align 2
  %137 = lshr i16 %136, 8
  %conv323 = zext i16 %137 to i32
  %sub327 = sub nsw i32 %conv323, %cond318
  %conv328 = trunc i32 %sub327 to i8
  %length = getelementptr inbounds %struct.xtlock, ptr %xtlck.2, i32 0, i32 7, i32 1
  %138 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv328, ptr %length, align 1
  br label %if.end330

if.end330:                                        ; preds = %if.then305, %if.end300.if.end330_crit_edge
  %139 = ptrtoint ptr %mp.5 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %mp.5, align 8
  %141 = and i16 %140, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %cmp334 = icmp eq i16 %141, 0
  br i1 %cmp334, label %if.end330.cleanup_crit_edge, label %if.then336

if.end330.cleanup_crit_edge:                      ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then336:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then336, %if.end330.cleanup_crit_edge, %if.then249, %if.then242.cleanup_crit_edge, %do.end213, %if.else206.cleanup_crit_edge, %if.then147, %if.then140.cleanup_crit_edge, %do.end113, %if.else106.cleanup_crit_edge, %if.then81.cleanup_crit_edge, %if.end40, %if.end25, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end25 ], [ -5, %if.end40 ], [ %call5, %do.end4.cleanup_crit_edge ], [ %call88, %if.then81.cleanup_crit_edge ], [ 0, %if.then336 ], [ 0, %if.end330.cleanup_crit_edge ], [ -5, %if.then147 ], [ -5, %if.then140.cleanup_crit_edge ], [ -5, %do.end113 ], [ -5, %if.else106.cleanup_crit_edge ], [ -5, %if.then249 ], [ -5, %if.then242.cleanup_crit_edge ], [ -5, %do.end213 ], [ -5, %if.else206.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %split) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_metapage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xtUpdate(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef readonly %nxad) local_unnamed_addr #0 align 64 {
entry:
  %cmp = alloca i32, align 4
  %btstack = alloca %struct.btstack, align 8
  %split = alloca %struct.xtsplit, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmp) #6
  %0 = ptrtoint ptr %cmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmp, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #6
  %1 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %split) #6
  %2 = call ptr @memset(ptr %split, i32 255, i32 32)
  %off1 = getelementptr inbounds %struct.xad, ptr %nxad, i32 0, i32 2
  %3 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %off1, align 1
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 32
  %off2 = getelementptr inbounds %struct.xad, ptr %nxad, i32 0, i32 3
  %5 = ptrtoint ptr %off2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %off2, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %conv1 = zext i32 %7 to i64
  %or = or i64 %shl, %conv1
  %loc = getelementptr inbounds %struct.xad, ptr %nxad, i32 0, i32 4
  %8 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %loc, align 4
  %10 = and i32 %9, -256
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = shl i32 %9, 24
  %conv.i = zext i32 %12 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr inbounds %struct.xad, ptr %nxad, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr2.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %conv1.i = zext i32 %15 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %call4 = call fastcc i32 @xtSearch(ptr noundef %ip, i64 noundef %or, ptr noundef null, ptr noundef nonnull %cmp, ptr noundef nonnull %btstack, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btstack, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %mp7 = getelementptr inbounds %struct.btframe, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %mp7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mp7, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool8.not = icmp eq i64 %19, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.metapage, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u = getelementptr i8, ptr %ip, i32 -400
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %p.0 = phi ptr [ %23, %if.then9 ], [ %u, %if.else ]
  %index13 = getelementptr inbounds %struct.btframe, ptr %17, i32 0, i32 1
  %24 = ptrtoint ptr %index13 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %index13, align 8
  %conv14 = sext i16 %25 to i32
  %26 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp15.not = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %21, align 8
  %30 = and i16 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp28 = icmp eq i16 %30, 0
  br i1 %cmp15.not, label %if.end24, label %if.then17

if.then17:                                        ; preds = %if.end11
  br i1 %cmp28, label %if.then17.if.end23_crit_edge, label %if.then22

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %21) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then17.if.end23_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %32, ptr noundef nonnull @.str.19) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end32

if.else31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %flag = getelementptr inbounds %struct.metapage, ptr %21, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag) #6
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %33 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %cflag, align 4
  %and1.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool35.not = icmp eq i32 %and1.i, 0
  br i1 %tobool35.not, label %if.then36, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %21, i32 noundef 16385) #6
  %lock = getelementptr inbounds %struct.tlock, ptr %call37, i32 0, i32 6
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  %xtlck.0 = phi ptr [ null, %if.end32.if.end38_crit_edge ], [ %lock, %if.then36 ]
  %arrayidx = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv14
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 4
  %off141 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv14, i32 2
  %37 = ptrtoint ptr %off141 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %off141, align 1
  %conv42 = zext i8 %38 to i64
  %shl43 = shl nuw nsw i64 %conv42, 32
  %off244 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv14, i32 3
  %39 = ptrtoint ptr %off244 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %off244, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %conv45 = zext i32 %41 to i64
  %or46 = or i64 %shl43, %conv45
  %loc47 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv14, i32 4
  %42 = ptrtoint ptr %loc47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %loc47, align 4
  %44 = and i32 %43, -256
  %45 = call i32 @llvm.bswap.i32(i32 %44) #6
  %46 = shl i32 %43, 24
  %conv.i1401 = zext i32 %46 to i64
  %shl.i1402 = shl nuw nsw i64 %conv.i1401, 8
  %addr2.i1403 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv14, i32 4, i32 1
  %47 = ptrtoint ptr %addr2.i1403 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr2.i1403, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #6
  %conv1.i1404 = zext i32 %49 to i64
  %add.i1405 = or i64 %shl.i1402, %conv1.i1404
  call void @__sanitizer_cov_trace_cmp8(i64 %or46, i64 %or)
  %cmp51 = icmp ugt i64 %or46, %or
  br i1 %cmp51, label %if.end38.if.then58_crit_edge, label %lor.lhs.false

if.end38.if.then58_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

lor.lhs.false:                                    ; preds = %if.end38
  %50 = zext i32 %11 to i64
  %add = add nuw nsw i64 %or, %50
  %51 = zext i32 %45 to i64
  %add55 = add nuw nsw i64 %or46, %51
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add55)
  %cmp56 = icmp ugt i64 %add, %add55
  br i1 %cmp56, label %lor.lhs.false.if.then58_crit_edge, label %if.end67

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %if.end38.if.then58_crit_edge
  %52 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %21, align 8
  %54 = and i16 %53, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp62 = icmp eq i16 %54, 0
  br i1 %cmp62, label %if.then58.if.end65_crit_edge, label %if.then64

if.then58.if.end65_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %21) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then58.if.end65_crit_edge
  %i_sb66 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %55 = ptrtoint ptr %i_sb66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb66, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %56, ptr noundef nonnull @.str.20) #6
  br label %cleanup

if.end67:                                         ; preds = %lor.lhs.false
  %add68 = add nsw i32 %conv14, 1
  %nextindex69 = getelementptr inbounds %struct.xtheader, ptr %p.0, i32 0, i32 4
  %57 = ptrtoint ptr %nextindex69 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %nextindex69, align 2
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %conv70 = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %or46, i64 %or)
  %cmp71 = icmp ult i64 %or46, %or
  br i1 %cmp71, label %if.end67.coalesceRight_crit_edge, label %if.end74

if.end67.coalesceRight_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %coalesceRight

if.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp75 = icmp eq i16 %25, 2
  br i1 %cmp75, label %if.end74.replace_crit_edge, label %if.end78

if.end74.replace_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %replace

if.end78:                                         ; preds = %if.end74
  %sub = add nsw i32 %conv14, -1
  %arrayidx79 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %sub
  %loc80 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %sub, i32 4
  %60 = ptrtoint ptr %loc80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %loc80, align 4
  %62 = and i32 %61, -256
  %63 = call i32 @llvm.bswap.i32(i32 %62) #6
  %64 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx79, align 4
  %66 = and i8 %65, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool85.not = icmp eq i8 %66, 0
  br i1 %tobool85.not, label %land.lhs.true, label %if.end78.replace_crit_edge

if.end78.replace_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %replace

land.lhs.true:                                    ; preds = %if.end78
  %off186 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %sub, i32 2
  %67 = ptrtoint ptr %off186 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %off186, align 1
  %conv87 = zext i8 %68 to i64
  %shl88 = shl nuw nsw i64 %conv87, 32
  %off289 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %sub, i32 3
  %69 = ptrtoint ptr %off289 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %off289, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %conv90 = zext i32 %71 to i64
  %72 = zext i32 %63 to i64
  %or91 = or i64 %shl88, %72
  %add93 = add nuw nsw i64 %or91, %conv90
  call void @__sanitizer_cov_trace_cmp8(i64 %or, i64 %add93)
  %cmp94 = icmp eq i64 %or, %add93
  br i1 %cmp94, label %land.lhs.true96, label %land.lhs.true.replace_crit_edge

land.lhs.true.replace_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %replace

land.lhs.true96:                                  ; preds = %land.lhs.true
  %73 = shl i32 %61, 24
  %conv.i1406 = zext i32 %73 to i64
  %shl.i1407 = shl nuw nsw i64 %conv.i1406, 8
  %addr2.i1408 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %sub, i32 4, i32 1
  %74 = ptrtoint ptr %addr2.i1408 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr2.i1408, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #6
  %conv1.i1409 = zext i32 %76 to i64
  %add.i1410 = or i64 %shl.i1407, %72
  %add100 = add nuw nsw i64 %add.i1410, %conv1.i1409
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add100)
  %cmp101 = icmp eq i64 %add.i, %add100
  br i1 %cmp101, label %land.lhs.true103, label %land.lhs.true96.replace_crit_edge

land.lhs.true96.replace_crit_edge:                ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %replace

land.lhs.true103:                                 ; preds = %land.lhs.true96
  %add104 = add nuw nsw i32 %63, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %add104)
  %cmp105 = icmp ult i32 %add104, 16777215
  br i1 %cmp105, label %if.then107, label %land.lhs.true103.replace_crit_edge

land.lhs.true103.replace_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #8
  br label %replace

if.then107:                                       ; preds = %land.lhs.true103
  %and.i = and i32 %61, 255
  %77 = call i32 @llvm.bswap.i32(i32 %add104) #6
  %or.i = or i32 %77, %and.i
  %78 = ptrtoint ptr %loc80 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i, ptr %loc80, align 4
  %79 = and i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool114.not = icmp eq i8 %79, 0
  br i1 %tobool114.not, label %if.then115, label %if.then107.if.end120_crit_edge

if.then107.if.end120_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then115:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %or118 = or i8 %65, 2
  %80 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %or118, ptr %arrayidx79, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.then107.if.end120_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %11)
  %cmp121 = icmp ugt i32 %45, %11
  br i1 %cmp121, label %if.then123, label %if.else138

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %add125 = add nuw nsw i64 %or46, %50
  %shr = lshr i64 %add125, 32
  %conv126 = trunc i64 %shr to i8
  %81 = ptrtoint ptr %off141 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv126, ptr %off141, align 1
  %conv131 = trunc i64 %add125 to i32
  %82 = call i32 @llvm.bswap.i32(i32 %conv131)
  %83 = ptrtoint ptr %off244 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %off244, align 4
  %sub134 = sub nsw i32 %45, %11
  %and1.i1413 = and i32 %sub134, 16777215
  %84 = call i32 @llvm.bswap.i32(i32 %and1.i1413) #6
  %add137 = add nuw nsw i64 %add.i1405, %50
  %sum.shift.i = lshr i64 %add137, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i1416 = and i32 %conv7.i, 255
  %or.i1417 = or i32 %conv.i1416, %84
  %85 = ptrtoint ptr %loc47 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i1417, ptr %loc47, align 4
  %conv3.i = trunc i64 %add137 to i32
  %86 = call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  %87 = ptrtoint ptr %addr2.i1403 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %addr2.i1403, align 4
  br label %out

if.else138:                                       ; preds = %if.end120
  %sub139 = add nsw i32 %conv70, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub139, i32 %conv14)
  %cmp140 = icmp sgt i32 %sub139, %conv14
  br i1 %cmp140, label %if.then142, label %if.else138.if.end149_crit_edge

if.else138.if.end149_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then142:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx145 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add68
  %88 = xor i32 %conv14, -1
  %sub147 = add nsw i32 %conv70, %88
  %shl148 = shl nsw i32 %sub147, 4
  %89 = call ptr @memmove(ptr %arrayidx, ptr %arrayidx145, i32 %shl148)
  br label %if.end149

if.end149:                                        ; preds = %if.then142, %if.else138.if.end149_crit_edge
  %90 = ptrtoint ptr %nextindex69 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %nextindex69, align 2
  %92 = call i16 @llvm.bswap.i16(i16 %91)
  %sub152 = add i16 %92, -1
  %93 = call i16 @llvm.bswap.i16(i16 %sub152)
  %94 = ptrtoint ptr %nextindex69 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %nextindex69, align 2
  %conv157 = zext i16 %sub152 to i32
  %95 = ptrtoint ptr %off186 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %off186, align 1
  %conv159 = zext i8 %96 to i64
  %shl160 = shl nuw nsw i64 %conv159, 32
  %97 = ptrtoint ptr %off289 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %off289, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %conv162 = zext i32 %99 to i64
  %or163 = or i64 %shl160, %conv162
  %100 = ptrtoint ptr %loc80 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %loc80, align 4
  %102 = shl i32 %101, 24
  %conv.i1419 = zext i32 %102 to i64
  %shl.i1420 = shl nuw nsw i64 %conv.i1419, 8
  %103 = ptrtoint ptr %addr2.i1408 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %addr2.i1408, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %104) #6
  %conv1.i1422 = zext i32 %105 to i64
  %add.i1423 = or i64 %shl.i1420, %conv1.i1422
  br label %coalesceRight

replace:                                          ; preds = %land.lhs.true103.replace_crit_edge, %land.lhs.true96.replace_crit_edge, %land.lhs.true.replace_crit_edge, %if.end78.replace_crit_edge, %if.end74.replace_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %10)
  %cmp168 = icmp eq i32 %44, %10
  br i1 %cmp168, label %if.then170, label %replace.updateLeft_crit_edge

replace.updateLeft_crit_edge:                     ; preds = %replace
  call void @__sanitizer_cov_trace_pc() #8
  br label %updateLeft

if.then170:                                       ; preds = %replace
  call void @__sanitizer_cov_trace_pc() #8
  %106 = call ptr @memcpy(ptr %arrayidx, ptr %nxad, i32 16)
  %and171 = and i8 %36, -9
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %and171, ptr %arrayidx, align 4
  br label %coalesceRight

coalesceRight:                                    ; preds = %if.then170, %if.end149, %if.end67.coalesceRight_crit_edge
  %nxoff.0 = phi i64 [ %or, %if.end67.coalesceRight_crit_edge ], [ %or, %if.then170 ], [ %or163, %if.end149 ]
  %xoff.0 = phi i64 [ %or46, %if.end67.coalesceRight_crit_edge ], [ %or46, %if.then170 ], [ %or163, %if.end149 ]
  %nxlen.0 = phi i32 [ %11, %if.end67.coalesceRight_crit_edge ], [ %11, %if.then170 ], [ %add104, %if.end149 ]
  %xlen.0 = phi i32 [ %45, %if.end67.coalesceRight_crit_edge ], [ %45, %if.then170 ], [ %add104, %if.end149 ]
  %nxaddr.0 = phi i64 [ %add.i, %if.end67.coalesceRight_crit_edge ], [ %add.i, %if.then170 ], [ %add.i1423, %if.end149 ]
  %nextindex.0 = phi i32 [ %conv70, %if.end67.coalesceRight_crit_edge ], [ %conv70, %if.then170 ], [ %conv157, %if.end149 ]
  %newindex.0 = phi i32 [ %add68, %if.end67.coalesceRight_crit_edge ], [ %add68, %if.then170 ], [ %conv14, %if.end149 ]
  %index0.0 = phi i32 [ %conv14, %if.end67.coalesceRight_crit_edge ], [ %conv14, %if.then170 ], [ %sub, %if.end149 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nextindex.0, i32 %newindex.0)
  %cmp175 = icmp eq i32 %nextindex.0, %newindex.0
  br i1 %cmp175, label %if.then177, label %if.end182

if.then177:                                       ; preds = %coalesceRight
  call void @__sanitizer_cov_trace_cmp8(i64 %nxoff.0, i64 %xoff.0)
  %cmp178 = icmp eq i64 %nxoff.0, %xoff.0
  br i1 %cmp178, label %if.then177.out_crit_edge, label %if.then177.updateRight_crit_edge

if.then177.updateRight_crit_edge:                 ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #8
  br label %updateRight

if.then177.out_crit_edge:                         ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end182:                                        ; preds = %coalesceRight
  %add183 = add nsw i32 %index0.0, 1
  %arrayidx184 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add183
  %loc185 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add183, i32 4
  %108 = ptrtoint ptr %loc185 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %loc185, align 4
  %110 = and i32 %109, -256
  %111 = call i32 @llvm.bswap.i32(i32 %110) #6
  %112 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx184, align 4
  %114 = and i8 %113, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool190.not = icmp eq i8 %114, 0
  br i1 %tobool190.not, label %land.lhs.true191, label %if.end182.if.else251_crit_edge

if.end182.if.else251_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else251

land.lhs.true191:                                 ; preds = %if.end182
  %conv192 = sext i32 %nxlen.0 to i64
  %add193 = add nsw i64 %nxoff.0, %conv192
  %off1194 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add183, i32 2
  %115 = ptrtoint ptr %off1194 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %off1194, align 1
  %conv195 = zext i8 %116 to i64
  %shl196 = shl nuw nsw i64 %conv195, 32
  %off2197 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add183, i32 3
  %117 = ptrtoint ptr %off2197 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %off2197, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118)
  %conv198 = zext i32 %119 to i64
  %or199 = or i64 %shl196, %conv198
  call void @__sanitizer_cov_trace_cmp8(i64 %add193, i64 %or199)
  %cmp200 = icmp eq i64 %add193, %or199
  br i1 %cmp200, label %land.lhs.true202, label %land.lhs.true191.if.else251_crit_edge

land.lhs.true191.if.else251_crit_edge:            ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else251

land.lhs.true202:                                 ; preds = %land.lhs.true191
  %add204 = add nsw i64 %nxaddr.0, %conv192
  %120 = shl i32 %109, 24
  %conv.i1424 = zext i32 %120 to i64
  %shl.i1425 = shl nuw nsw i64 %conv.i1424, 8
  %addr2.i1426 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add183, i32 4, i32 1
  %121 = ptrtoint ptr %addr2.i1426 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %addr2.i1426, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %122) #6
  %conv1.i1427 = zext i32 %123 to i64
  %add.i1428 = or i64 %shl.i1425, %conv1.i1427
  call void @__sanitizer_cov_trace_cmp8(i64 %add204, i64 %add.i1428)
  %cmp207 = icmp eq i64 %add204, %add.i1428
  br i1 %cmp207, label %land.lhs.true209, label %land.lhs.true202.if.else251_crit_edge

land.lhs.true202.if.else251_crit_edge:            ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else251

land.lhs.true209:                                 ; preds = %land.lhs.true202
  %add210 = add nsw i32 %111, %nxlen.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %add210)
  %cmp211 = icmp slt i32 %add210, 16777215
  br i1 %cmp211, label %if.then213, label %land.lhs.true209.if.else251_crit_edge

land.lhs.true209.if.else251_crit_edge:            ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else251

if.then213:                                       ; preds = %land.lhs.true209
  %shr214 = lshr i64 %nxoff.0, 32
  %conv215 = trunc i64 %shr214 to i8
  %124 = ptrtoint ptr %off1194 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv215, ptr %off1194, align 1
  %conv218 = trunc i64 %nxoff.0 to i32
  %125 = call i32 @llvm.bswap.i32(i32 %conv218)
  %126 = ptrtoint ptr %off2197 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %off2197, align 4
  %and1.i1430 = and i32 %add210, 16777215
  %127 = call i32 @llvm.bswap.i32(i32 %and1.i1430) #6
  %sum.shift.i1433 = lshr i64 %nxaddr.0, 32
  %conv7.i1434 = trunc i64 %sum.shift.i1433 to i32
  %conv.i1435 = and i32 %conv7.i1434, 255
  %or.i1436 = or i32 %127, %conv.i1435
  %128 = ptrtoint ptr %loc185 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or.i1436, ptr %loc185, align 4
  %conv3.i1437 = trunc i64 %nxaddr.0 to i32
  %129 = call i32 @llvm.bswap.i32(i32 %conv3.i1437) #6
  %130 = ptrtoint ptr %addr2.i1426 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %addr2.i1426, align 4
  %131 = and i8 %113, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool226.not = icmp eq i8 %131, 0
  br i1 %tobool226.not, label %if.then227, label %if.then213.if.end232_crit_edge

if.then213.if.end232_crit_edge:                   ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

if.then227:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #8
  %or230 = or i8 %113, 2
  %132 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %or230, ptr %arrayidx184, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then227, %if.then213.if.end232_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %xlen.0, i32 %nxlen.0)
  %cmp233 = icmp sgt i32 %xlen.0, %nxlen.0
  br i1 %cmp233, label %if.then235, label %if.else238

if.then235:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #8
  %sub237 = sub nsw i32 %xlen.0, %nxlen.0
  %133 = ptrtoint ptr %loc47 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %loc47, align 4
  %and.i1439 = and i32 %134, 255
  %and1.i1440 = and i32 %sub237, 16777215
  %135 = call i32 @llvm.bswap.i32(i32 %and1.i1440) #6
  %or.i1441 = or i32 %and.i1439, %135
  %136 = ptrtoint ptr %loc47 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %or.i1441, ptr %loc47, align 4
  br label %out

if.else238:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx239 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %index0.0
  %137 = xor i32 %index0.0, -1
  %sub243 = add nsw i32 %nextindex.0, %137
  %shl244 = shl nsw i32 %sub243, 4
  %138 = call ptr @memmove(ptr %arrayidx239, ptr %arrayidx184, i32 %shl244)
  %139 = ptrtoint ptr %nextindex69 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %nextindex69, align 2
  %141 = call i16 @llvm.bswap.i16(i16 %140)
  %sub247 = add i16 %141, -1
  %142 = call i16 @llvm.bswap.i16(i16 %sub247)
  %143 = ptrtoint ptr %nextindex69 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %nextindex69, align 2
  br label %out

if.else251:                                       ; preds = %land.lhs.true209.if.else251_crit_edge, %land.lhs.true202.if.else251_crit_edge, %land.lhs.true191.if.else251_crit_edge, %if.end182.if.else251_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %nxoff.0, i64 %xoff.0)
  %cmp252 = icmp eq i64 %nxoff.0, %xoff.0
  br i1 %cmp252, label %if.else251.out_crit_edge, label %if.end256

if.else251.out_crit_edge:                         ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end256:                                        ; preds = %if.else251
  call void @__sanitizer_cov_trace_cmp8(i64 %nxoff.0, i64 %xoff.0)
  %cmp257.not = icmp sgt i64 %nxoff.0, %xoff.0
  br i1 %cmp257.not, label %if.end256.updateRight_crit_edge, label %if.then259

if.end256.updateRight_crit_edge:                  ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #8
  br label %updateRight

if.then259:                                       ; preds = %if.end256
  %144 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %21, align 8
  %146 = and i16 %145, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %cmp263 = icmp eq i16 %146, 0
  br i1 %cmp263, label %if.then259.if.end266_crit_edge, label %if.then265

if.then259.if.end266_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end266

if.then265:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %21) #6
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %if.then259.if.end266_crit_edge
  %i_sb267 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %147 = ptrtoint ptr %i_sb267 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i_sb267, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %148, ptr noundef nonnull @.str.21) #6
  br label %cleanup

updateRight:                                      ; preds = %if.end256.updateRight_crit_edge, %if.then177.updateRight_crit_edge
  %loc270 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %index0.0, i32 4
  %sub271 = sub nsw i64 %nxoff.0, %xoff.0
  %conv272 = trunc i64 %sub271 to i32
  %149 = ptrtoint ptr %loc270 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %loc270, align 4
  %and.i1442 = and i32 %150, 255
  %and1.i1443 = and i32 %conv272, 16777215
  %151 = call i32 @llvm.bswap.i32(i32 %and1.i1443) #6
  %or.i1444 = or i32 %and.i1442, %151
  %152 = ptrtoint ptr %loc270 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or.i1444, ptr %loc270, align 4
  %maxentry = getelementptr inbounds %struct.xtheader, ptr %p.0, i32 0, i32 5
  %153 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %maxentry, align 4
  %155 = call i16 @llvm.bswap.i16(i16 %154)
  %conv273 = zext i16 %155 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nextindex.0, i32 %conv273)
  %cmp274 = icmp eq i32 %nextindex.0, %conv273
  br i1 %cmp274, label %if.then276, label %if.else480

if.then276:                                       ; preds = %updateRight
  %156 = ptrtoint ptr %split to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %21, ptr %split, align 8
  %conv278 = trunc i32 %newindex.0 to i16
  %index279 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 1
  %157 = ptrtoint ptr %index279 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv278, ptr %index279, align 4
  %158 = and i8 %36, -9
  %flag282 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %159 = ptrtoint ptr %flag282 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %flag282, align 2
  %off = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %160 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %nxoff.0, ptr %off, align 8
  %len = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %161 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %nxlen.0, ptr %len, align 8
  %addr = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %162 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %nxaddr.0, ptr %addr, align 8
  %pxdlist = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 6
  %163 = ptrtoint ptr %pxdlist to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %pxdlist, align 4
  %call283 = call fastcc i32 @xtSplitUp(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %split, ptr noundef nonnull %btstack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283)
  %tobool284.not = icmp eq i32 %call283, 0
  br i1 %tobool284.not, label %do.body, label %if.then276.cleanup_crit_edge

if.then276.cleanup_crit_edge:                     ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.then276
  br i1 %tobool8.not, label %if.then289, label %if.else294

if.then289:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %u292 = getelementptr i8, ptr %ip, i32 -400
  br label %if.then313

if.else294:                                       ; preds = %do.body
  %conv295 = trunc i64 %19 to i32
  %call296 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv295, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool297.not = icmp eq ptr %call296, null
  br i1 %tobool297.not, label %if.else300, label %if.then298

if.then298:                                       ; preds = %if.else294
  call void @__sanitizer_cov_trace_pc() #8
  %data299 = getelementptr inbounds %struct.metapage, ptr %call296, i32 0, i32 7
  %164 = ptrtoint ptr %data299 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data299, align 4
  br label %if.then313

if.else300:                                       ; preds = %if.else294
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %166 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp302 = icmp sgt i32 %166, 0
  br i1 %cmp302, label %do.end, label %if.else300.cleanup_crit_edge

if.else300.cleanup_crit_edge:                     ; preds = %if.else300
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.else300
  call void @__sanitizer_cov_trace_pc() #8
  %call306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then313:                                       ; preds = %if.then298, %if.then289
  %p.1.ph = phi ptr [ %165, %if.then298 ], [ %u292, %if.then289 ]
  %mp.0.ph = phi ptr [ %call296, %if.then298 ], [ %bxflag, %if.then289 ]
  %nextindex314 = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 4
  %167 = ptrtoint ptr %nextindex314 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %nextindex314, align 2
  %169 = call i16 @llvm.bswap.i16(i16 %168)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %169)
  %cmp316 = icmp ult i16 %169, 2
  br i1 %cmp316, label %if.then313.if.then332_crit_edge, label %lor.lhs.false318

if.then313.if.then332_crit_edge:                  ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then332

lor.lhs.false318:                                 ; preds = %if.then313
  %maxentry321 = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 5
  %170 = ptrtoint ptr %maxentry321 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %maxentry321, align 4
  %172 = call i16 @llvm.bswap.i16(i16 %171)
  call void @__sanitizer_cov_trace_cmp2(i16 %169, i16 %172)
  %cmp323 = icmp ugt i16 %169, %172
  br i1 %cmp323, label %lor.lhs.false318.if.then332_crit_edge, label %lor.lhs.false325

lor.lhs.false318.if.then332_crit_edge:            ; preds = %lor.lhs.false318
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then332

lor.lhs.false325:                                 ; preds = %lor.lhs.false318
  %conv322 = zext i16 %172 to i32
  %cond = select i1 %tobool8.not, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv322)
  %cmp330 = icmp ult i32 %cond, %conv322
  br i1 %cmp330, label %lor.lhs.false325.if.then332_crit_edge, label %if.end347

lor.lhs.false325.if.then332_crit_edge:            ; preds = %lor.lhs.false325
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then332

if.then332:                                       ; preds = %lor.lhs.false325.if.then332_crit_edge, %lor.lhs.false318.if.then332_crit_edge, %if.then313.if.then332_crit_edge
  %i_sb333 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %173 = ptrtoint ptr %i_sb333 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i_sb333, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %174, ptr noundef nonnull @.str.12) #6
  %175 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %mp.0.ph, align 8
  %177 = and i16 %176, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %cmp337 = icmp eq i16 %177, 0
  br i1 %cmp337, label %if.then332.cleanup_crit_edge, label %if.then339

if.then332.cleanup_crit_edge:                     ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then339:                                       ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %cleanup

if.end347:                                        ; preds = %lor.lhs.false325
  %flag348 = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 2
  %178 = ptrtoint ptr %flag348 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %flag348, align 8
  %180 = and i8 %179, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool351.not = icmp eq i8 %180, 0
  br i1 %tobool351.not, label %if.else467, label %do.body353

do.body353:                                       ; preds = %if.end347
  %181 = ptrtoint ptr %nextindex314 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %nextindex314, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %182)
  %cmp356 = icmp eq i16 %182, 768
  br i1 %cmp356, label %do.end372, label %do.end361

do.end361:                                        ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #8
  %call363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 1939, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_xtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1939, 0\0A.popsection", ""() #6, !srcloc !154
  unreachable

do.end372:                                        ; preds = %do.body353
  %loc374 = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 2, i32 4
  %183 = ptrtoint ptr %loc374 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %loc374, align 4
  %185 = shl i32 %184, 24
  %conv.i1447 = zext i32 %185 to i64
  %shl.i1448 = shl nuw nsw i64 %conv.i1447, 8
  %addr2.i1449 = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 2, i32 4, i32 1
  %186 = ptrtoint ptr %addr2.i1449 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %addr2.i1449, align 4
  %188 = call i32 @llvm.bswap.i32(i32 %187) #6
  %conv1.i1450 = zext i32 %188 to i64
  %add.i1451 = or i64 %shl.i1448, %conv1.i1450
  %189 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %mp.0.ph, align 8
  %191 = and i16 %190, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %191)
  %cmp379 = icmp eq i16 %191, 0
  br i1 %cmp379, label %do.end372.do.body383_crit_edge, label %if.then381

do.end372.do.body383_crit_edge:                   ; preds = %do.end372
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body383

if.then381:                                       ; preds = %do.end372
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %do.body383

do.body383:                                       ; preds = %if.then381, %do.end372.do.body383_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i1451)
  %cmp384 = icmp eq i64 %add.i1451, 0
  br i1 %cmp384, label %if.then386, label %if.else392

if.then386:                                       ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #8
  %bxflag388 = getelementptr i8, ptr %ip, i32 -752
  %u390 = getelementptr i8, ptr %ip, i32 -400
  br label %if.then414

if.else392:                                       ; preds = %do.body383
  %call394 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %188, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool395.not = icmp eq ptr %call394, null
  br i1 %tobool395.not, label %if.else398, label %if.then396

if.then396:                                       ; preds = %if.else392
  call void @__sanitizer_cov_trace_pc() #8
  %data397 = getelementptr inbounds %struct.metapage, ptr %call394, i32 0, i32 7
  %192 = ptrtoint ptr %data397 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %data397, align 4
  br label %if.then414

if.else398:                                       ; preds = %if.else392
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %194 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp400 = icmp sgt i32 %194, 0
  br i1 %cmp400, label %do.end405, label %if.else398.cleanup_crit_edge

if.else398.cleanup_crit_edge:                     ; preds = %if.else398
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end405:                                        ; preds = %if.else398
  call void @__sanitizer_cov_trace_pc() #8
  %call407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then414:                                       ; preds = %if.then396, %if.then386
  %p.2.ph = phi ptr [ %193, %if.then396 ], [ %u390, %if.then386 ]
  %mp.2.ph = phi ptr [ %call394, %if.then396 ], [ %bxflag388, %if.then386 ]
  %nextindex415 = getelementptr inbounds %struct.xtheader, ptr %p.2.ph, i32 0, i32 4
  %195 = ptrtoint ptr %nextindex415 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %nextindex415, align 2
  %197 = call i16 @llvm.bswap.i16(i16 %196)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %197)
  %cmp417 = icmp ult i16 %197, 2
  br i1 %cmp417, label %if.then414.if.then434_crit_edge, label %lor.lhs.false419

if.then414.if.then434_crit_edge:                  ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then434

lor.lhs.false419:                                 ; preds = %if.then414
  %maxentry422 = getelementptr inbounds %struct.xtheader, ptr %p.2.ph, i32 0, i32 5
  %198 = ptrtoint ptr %maxentry422 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %maxentry422, align 4
  %200 = call i16 @llvm.bswap.i16(i16 %199)
  call void @__sanitizer_cov_trace_cmp2(i16 %197, i16 %200)
  %cmp424 = icmp ugt i16 %197, %200
  br i1 %cmp424, label %lor.lhs.false419.if.then434_crit_edge, label %lor.lhs.false426

lor.lhs.false419.if.then434_crit_edge:            ; preds = %lor.lhs.false419
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then434

lor.lhs.false426:                                 ; preds = %lor.lhs.false419
  %conv423 = zext i16 %200 to i32
  %cond431 = select i1 %cmp384, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond431, i32 %conv423)
  %cmp432 = icmp ult i32 %cond431, %conv423
  br i1 %cmp432, label %lor.lhs.false426.if.then434_crit_edge, label %if.end449

lor.lhs.false426.if.then434_crit_edge:            ; preds = %lor.lhs.false426
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then434

if.then434:                                       ; preds = %lor.lhs.false426.if.then434_crit_edge, %lor.lhs.false419.if.then434_crit_edge, %if.then414.if.then434_crit_edge
  %i_sb435 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %201 = ptrtoint ptr %i_sb435 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %i_sb435, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %202, ptr noundef nonnull @.str.12) #6
  %203 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %mp.2.ph, align 8
  %205 = and i16 %204, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %205)
  %cmp439 = icmp eq i16 %205, 0
  br i1 %cmp439, label %if.then434.cleanup_crit_edge, label %if.then441

if.then434.cleanup_crit_edge:                     ; preds = %if.then434
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then441:                                       ; preds = %if.then434
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.2.ph) #6
  br label %cleanup

if.end449:                                        ; preds = %lor.lhs.false426
  %206 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %mp.2.ph, align 8
  %208 = and i16 %207, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %208)
  %cmp453 = icmp eq i16 %208, 0
  br i1 %cmp453, label %if.then455, label %if.else456

if.then455:                                       ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end458

if.else456:                                       ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #8
  %flag457 = getelementptr inbounds %struct.metapage, ptr %mp.2.ph, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag457) #6
  br label %if.end458

if.end458:                                        ; preds = %if.else456, %if.then455
  %209 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %cflag, align 4
  %and1.i1395 = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1395)
  %tobool462.not = icmp eq i32 %and1.i1395, 0
  br i1 %tobool462.not, label %if.then463, label %if.end458.if.end499_crit_edge

if.end458.if.end499_crit_edge:                    ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end499

if.then463:                                       ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #8
  %call464 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.2.ph, i32 noundef 16385) #6
  %lock465 = getelementptr inbounds %struct.tlock, ptr %call464, i32 0, i32 6
  br label %if.end499

if.else467:                                       ; preds = %if.end347
  %211 = ptrtoint ptr %maxentry321 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %maxentry321, align 4
  %213 = call i16 @llvm.bswap.i16(i16 %212)
  %214 = lshr i16 %213, 1
  %215 = zext i16 %214 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %newindex.0, i32 %215)
  %cmp471 = icmp sgt i32 %newindex.0, %215
  br i1 %cmp471, label %if.end499.thread, label %if.else467.if.end499_crit_edge

if.else467.if.end499_crit_edge:                   ; preds = %if.else467
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end499

if.else480:                                       ; preds = %updateRight
  call void @__sanitizer_cov_trace_cmp4(i32 %nextindex.0, i32 %newindex.0)
  %cmp481 = icmp sgt i32 %nextindex.0, %newindex.0
  br i1 %cmp481, label %if.then483, label %if.else480.if.end489_crit_edge

if.else480.if.end489_crit_edge:                   ; preds = %if.else480
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end489

if.then483:                                       ; preds = %if.else480
  call void @__sanitizer_cov_trace_pc() #8
  %add484 = add nsw i32 %newindex.0, 1
  %arrayidx485 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %add484
  %arrayidx486 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %newindex.0
  %sub487 = sub nsw i32 %nextindex.0, %newindex.0
  %shl488 = shl nsw i32 %sub487, 4
  %216 = call ptr @memmove(ptr %arrayidx485, ptr %arrayidx486, i32 %shl488)
  br label %if.end489

if.end489:                                        ; preds = %if.then483, %if.else480.if.end489_crit_edge
  %arrayidx490 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %newindex.0
  %217 = call ptr @memcpy(ptr %arrayidx490, ptr %nxad, i32 16)
  %and491 = and i8 %36, -9
  %218 = ptrtoint ptr %arrayidx490 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %and491, ptr %arrayidx490, align 4
  %219 = ptrtoint ptr %nextindex69 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %nextindex69, align 2
  %221 = call i16 @llvm.bswap.i16(i16 %220)
  %add496 = add i16 %221, 1
  %222 = call i16 @llvm.bswap.i16(i16 %add496)
  %223 = ptrtoint ptr %nextindex69 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %222, ptr %nextindex69, align 2
  br label %if.end499

if.end499:                                        ; preds = %if.end489, %if.else467.if.end499_crit_edge, %if.then463, %if.end458.if.end499_crit_edge
  %xtlck.1 = phi ptr [ %xtlck.0, %if.end458.if.end499_crit_edge ], [ %lock465, %if.then463 ], [ %xtlck.0, %if.else467.if.end499_crit_edge ], [ %xtlck.0, %if.end489 ]
  %bn.0 = phi i64 [ %add.i1451, %if.end458.if.end499_crit_edge ], [ %add.i1451, %if.then463 ], [ %19, %if.else467.if.end499_crit_edge ], [ %19, %if.end489 ]
  %p.3 = phi ptr [ %p.2.ph, %if.end458.if.end499_crit_edge ], [ %p.2.ph, %if.then463 ], [ %p.1.ph, %if.else467.if.end499_crit_edge ], [ %p.0, %if.end489 ]
  %mp.4 = phi ptr [ %mp.2.ph, %if.end458.if.end499_crit_edge ], [ %mp.2.ph, %if.then463 ], [ %mp.0.ph, %if.else467.if.end499_crit_edge ], [ %21, %if.end489 ]
  %conv500 = sext i32 %nxlen.0 to i64
  %add501 = add nsw i64 %nxoff.0, %conv500
  %conv502 = sext i32 %xlen.0 to i64
  %add503 = add nsw i64 %xoff.0, %conv502
  call void @__sanitizer_cov_trace_cmp8(i64 %add501, i64 %add503)
  %cmp504 = icmp eq i64 %add501, %add503
  br i1 %cmp504, label %if.end499.out_crit_edge, label %if.else631

if.end499.out_crit_edge:                          ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end499.thread:                                 ; preds = %if.else467
  %224 = ptrtoint ptr %nextindex314 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %nextindex314, align 2
  %226 = call i16 @llvm.bswap.i16(i16 %225)
  %conv475 = zext i16 %226 to i32
  %sub476 = sub nsw i32 %newindex.0, %conv475
  %add477 = add nsw i32 %sub476, 2
  %conv5001509 = sext i32 %nxlen.0 to i64
  %add5011510 = add nsw i64 %nxoff.0, %conv5001509
  %conv5021511 = sext i32 %xlen.0 to i64
  %add5031512 = add nsw i64 %xoff.0, %conv5021511
  call void @__sanitizer_cov_trace_cmp8(i64 %add5011510, i64 %add5031512)
  %cmp5041513 = icmp eq i64 %add5011510, %add5031512
  br i1 %cmp5041513, label %if.end499.thread.out_crit_edge, label %if.then509

if.end499.thread.out_crit_edge:                   ; preds = %if.end499.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then509:                                       ; preds = %if.end499.thread
  %227 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %cflag, align 4
  %and1.i1396 = and i32 %228, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1396)
  %tobool513.not = icmp eq i32 %and1.i1396, 0
  br i1 %tobool513.not, label %if.then514, label %if.then509.if.end539_crit_edge

if.then509.if.end539_crit_edge:                   ; preds = %if.then509
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end539

if.then514:                                       ; preds = %if.then509
  call void @__sanitizer_cov_trace_pc() #8
  %lwm = getelementptr inbounds %struct.xtlock, ptr %xtlck.0, i32 0, i32 7
  %229 = ptrtoint ptr %lwm to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %lwm, align 2
  %conv515 = zext i8 %230 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool516.not = icmp eq i8 %230, 0
  %231 = call i32 @llvm.smin.i32(i32 %index0.0, i32 %conv515)
  %cond527 = select i1 %tobool516.not, i32 %index0.0, i32 %231
  %conv528 = trunc i32 %cond527 to i8
  %232 = ptrtoint ptr %lwm to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv528, ptr %lwm, align 2
  %233 = ptrtoint ptr %nextindex314 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %nextindex314, align 2
  %235 = lshr i16 %234, 8
  %conv532 = zext i16 %235 to i32
  %sub536 = sub nsw i32 %conv532, %cond527
  %conv537 = trunc i32 %sub536 to i8
  %length = getelementptr inbounds %struct.xtlock, ptr %xtlck.0, i32 0, i32 7, i32 1
  %236 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv537, ptr %length, align 1
  br label %if.end539

if.end539:                                        ; preds = %if.then514, %if.then509.if.end539_crit_edge
  %237 = ptrtoint ptr %p.1.ph to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %p.1.ph, align 8
  %239 = call i64 @llvm.bswap.i64(i64 %238)
  %240 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %mp.0.ph, align 8
  %242 = and i16 %241, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %cmp543 = icmp eq i16 %242, 0
  br i1 %cmp543, label %if.end539.do.body547_crit_edge, label %if.then545

if.end539.do.body547_crit_edge:                   ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body547

if.then545:                                       ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %do.body547

do.body547:                                       ; preds = %if.then545, %if.end539.do.body547_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %238)
  %cmp548 = icmp eq i64 %238, 0
  br i1 %cmp548, label %if.then550, label %if.else556

if.then550:                                       ; preds = %do.body547
  call void @__sanitizer_cov_trace_pc() #8
  %bxflag552 = getelementptr i8, ptr %ip, i32 -752
  %u554 = getelementptr i8, ptr %ip, i32 -400
  br label %if.then578

if.else556:                                       ; preds = %do.body547
  %conv557 = trunc i64 %239 to i32
  %call558 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv557, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool559.not = icmp eq ptr %call558, null
  br i1 %tobool559.not, label %if.else562, label %if.then560

if.then560:                                       ; preds = %if.else556
  call void @__sanitizer_cov_trace_pc() #8
  %data561 = getelementptr inbounds %struct.metapage, ptr %call558, i32 0, i32 7
  %243 = ptrtoint ptr %data561 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %data561, align 4
  br label %if.then578

if.else562:                                       ; preds = %if.else556
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %245 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp564 = icmp sgt i32 %245, 0
  br i1 %cmp564, label %do.end569, label %if.else562.cleanup_crit_edge

if.else562.cleanup_crit_edge:                     ; preds = %if.else562
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end569:                                        ; preds = %if.else562
  call void @__sanitizer_cov_trace_pc() #8
  %call571 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then578:                                       ; preds = %if.then560, %if.then550
  %p.4.ph = phi ptr [ %244, %if.then560 ], [ %u554, %if.then550 ]
  %mp.5.ph = phi ptr [ %call558, %if.then560 ], [ %bxflag552, %if.then550 ]
  %nextindex579 = getelementptr inbounds %struct.xtheader, ptr %p.4.ph, i32 0, i32 4
  %246 = ptrtoint ptr %nextindex579 to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %nextindex579, align 2
  %248 = call i16 @llvm.bswap.i16(i16 %247)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %248)
  %cmp581 = icmp ult i16 %248, 2
  br i1 %cmp581, label %if.then578.if.then598_crit_edge, label %lor.lhs.false583

if.then578.if.then598_crit_edge:                  ; preds = %if.then578
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then598

lor.lhs.false583:                                 ; preds = %if.then578
  %maxentry586 = getelementptr inbounds %struct.xtheader, ptr %p.4.ph, i32 0, i32 5
  %249 = ptrtoint ptr %maxentry586 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %maxentry586, align 4
  %251 = call i16 @llvm.bswap.i16(i16 %250)
  call void @__sanitizer_cov_trace_cmp2(i16 %248, i16 %251)
  %cmp588 = icmp ugt i16 %248, %251
  br i1 %cmp588, label %lor.lhs.false583.if.then598_crit_edge, label %lor.lhs.false590

lor.lhs.false583.if.then598_crit_edge:            ; preds = %lor.lhs.false583
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then598

lor.lhs.false590:                                 ; preds = %lor.lhs.false583
  %conv587 = zext i16 %251 to i32
  %cond595 = select i1 %cmp548, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond595, i32 %conv587)
  %cmp596 = icmp ult i32 %cond595, %conv587
  br i1 %cmp596, label %lor.lhs.false590.if.then598_crit_edge, label %if.end613

lor.lhs.false590.if.then598_crit_edge:            ; preds = %lor.lhs.false590
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then598

if.then598:                                       ; preds = %lor.lhs.false590.if.then598_crit_edge, %lor.lhs.false583.if.then598_crit_edge, %if.then578.if.then598_crit_edge
  %i_sb599 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %252 = ptrtoint ptr %i_sb599 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %i_sb599, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %253, ptr noundef nonnull @.str.12) #6
  %254 = ptrtoint ptr %mp.5.ph to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %mp.5.ph, align 8
  %256 = and i16 %255, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %cmp603 = icmp eq i16 %256, 0
  br i1 %cmp603, label %if.then598.cleanup_crit_edge, label %if.then605

if.then598.cleanup_crit_edge:                     ; preds = %if.then598
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then605:                                       ; preds = %if.then598
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.5.ph) #6
  br label %cleanup

if.end613:                                        ; preds = %lor.lhs.false590
  %257 = ptrtoint ptr %mp.5.ph to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %mp.5.ph, align 8
  %259 = and i16 %258, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %259)
  %cmp617 = icmp eq i16 %259, 0
  br i1 %cmp617, label %if.then619, label %if.else620

if.then619:                                       ; preds = %if.end613
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end622

if.else620:                                       ; preds = %if.end613
  call void @__sanitizer_cov_trace_pc() #8
  %flag621 = getelementptr inbounds %struct.metapage, ptr %mp.5.ph, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag621) #6
  br label %if.end622

if.end622:                                        ; preds = %if.else620, %if.then619
  %260 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load volatile i32, ptr %cflag, align 4
  %and1.i1397 = and i32 %261, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1397)
  %tobool626.not = icmp eq i32 %and1.i1397, 0
  br i1 %tobool626.not, label %if.then627, label %if.end622.if.end632_crit_edge

if.end622.if.end632_crit_edge:                    ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end632

if.then627:                                       ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #8
  %call628 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.5.ph, i32 noundef 16385) #6
  %lock629 = getelementptr inbounds %struct.tlock, ptr %call628, i32 0, i32 6
  br label %if.end632

if.else631:                                       ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nsw i32 %index0.0, 1
  br label %if.end632

if.end632:                                        ; preds = %if.else631, %if.then627, %if.end622.if.end632_crit_edge
  %xtlck.3 = phi ptr [ %xtlck.1, %if.else631 ], [ %xtlck.0, %if.end622.if.end632_crit_edge ], [ %lock629, %if.then627 ]
  %index.1 = phi i32 [ %inc, %if.else631 ], [ %add477, %if.end622.if.end632_crit_edge ], [ %add477, %if.then627 ]
  %index0.1 = phi i32 [ %index0.0, %if.else631 ], [ %add477, %if.end622.if.end632_crit_edge ], [ %add477, %if.then627 ]
  %bn.1 = phi i64 [ %bn.0, %if.else631 ], [ %239, %if.end622.if.end632_crit_edge ], [ %239, %if.then627 ]
  %p.5 = phi ptr [ %p.3, %if.else631 ], [ %p.4.ph, %if.end622.if.end632_crit_edge ], [ %p.4.ph, %if.then627 ]
  %mp.7 = phi ptr [ %mp.4, %if.else631 ], [ %mp.5.ph, %if.end622.if.end632_crit_edge ], [ %mp.5.ph, %if.then627 ]
  %add633 = add nsw i32 %index.1, 1
  %nextindex634 = getelementptr inbounds %struct.xtheader, ptr %p.5, i32 0, i32 4
  %262 = ptrtoint ptr %nextindex634 to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %nextindex634, align 2
  %264 = call i16 @llvm.bswap.i16(i16 %263)
  %conv635 = zext i16 %264 to i32
  %conv639 = sub i32 %xlen.0, %conv272
  %maxentry640 = getelementptr inbounds %struct.xtheader, ptr %p.5, i32 0, i32 5
  %265 = ptrtoint ptr %maxentry640 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %maxentry640, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %263, i16 %266)
  %cmp642 = icmp eq i16 %263, %266
  br i1 %cmp642, label %if.then644, label %if.end632.updateLeft_crit_edge

if.end632.updateLeft_crit_edge:                   ; preds = %if.end632
  call void @__sanitizer_cov_trace_pc() #8
  br label %updateLeft

if.then644:                                       ; preds = %if.end632
  %267 = ptrtoint ptr %mp.7 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %mp.7, align 8
  %269 = and i16 %268, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %269)
  %cmp648 = icmp eq i16 %269, 0
  br i1 %cmp648, label %if.then644.if.end651_crit_edge, label %if.then650

if.then644.if.end651_crit_edge:                   ; preds = %if.then644
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end651

if.then650:                                       ; preds = %if.then644
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.7) #6
  br label %if.end651

if.end651:                                        ; preds = %if.then650, %if.then644.if.end651_crit_edge
  %call652 = call fastcc i32 @xtSearch(ptr noundef %ip, i64 noundef %nxoff.0, ptr noundef null, ptr noundef nonnull %cmp, ptr noundef nonnull %btstack, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call652)
  %tobool653.not = icmp eq i32 %call652, 0
  br i1 %tobool653.not, label %if.end655, label %if.end651.cleanup_crit_edge

if.end651.cleanup_crit_edge:                      ; preds = %if.end651
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end655:                                        ; preds = %if.end651
  %270 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %btstack, align 8
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %271, align 8
  %mp659 = getelementptr inbounds %struct.btframe, ptr %271, i32 0, i32 3
  %274 = ptrtoint ptr %mp659 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %mp659, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %273)
  %tobool660.not = icmp eq i64 %273, 0
  br i1 %tobool660.not, label %if.else663, label %if.then661

if.then661:                                       ; preds = %if.end655
  call void @__sanitizer_cov_trace_pc() #8
  %data662 = getelementptr inbounds %struct.metapage, ptr %275, i32 0, i32 7
  %276 = ptrtoint ptr %data662 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %data662, align 4
  br label %if.end667

if.else663:                                       ; preds = %if.end655
  call void @__sanitizer_cov_trace_pc() #8
  %u665 = getelementptr i8, ptr %ip, i32 -400
  br label %if.end667

if.end667:                                        ; preds = %if.else663, %if.then661
  %p.6 = phi ptr [ %277, %if.then661 ], [ %u665, %if.else663 ]
  %278 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %cmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %cmp671.not = icmp eq i32 %279, 0
  br i1 %cmp671.not, label %if.end682, label %if.then673

if.then673:                                       ; preds = %if.end667
  %280 = ptrtoint ptr %275 to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %275, align 8
  %282 = and i16 %281, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %282)
  %cmp677 = icmp eq i16 %282, 0
  br i1 %cmp677, label %if.then673.if.end680_crit_edge, label %if.then679

if.then673.if.end680_crit_edge:                   ; preds = %if.then673
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end680

if.then679:                                       ; preds = %if.then673
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %275) #6
  br label %if.end680

if.end680:                                        ; preds = %if.then679, %if.then673.if.end680_crit_edge
  %i_sb681 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %283 = ptrtoint ptr %i_sb681 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %i_sb681, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %284, ptr noundef nonnull @.str.29) #6
  br label %cleanup

if.end682:                                        ; preds = %if.end667
  %index669 = getelementptr inbounds %struct.btframe, ptr %271, i32 0, i32 1
  %285 = ptrtoint ptr %index669 to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %index669, align 8
  %conv670 = sext i16 %286 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1, i32 %conv670)
  %cmp683.not = icmp eq i32 %index.1, %conv670
  br i1 %cmp683.not, label %if.end682.updateLeft_crit_edge, label %if.then685

if.end682.updateLeft_crit_edge:                   ; preds = %if.end682
  call void @__sanitizer_cov_trace_pc() #8
  br label %updateLeft

if.then685:                                       ; preds = %if.end682
  %287 = ptrtoint ptr %275 to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %275, align 8
  %289 = and i16 %288, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %289)
  %cmp689 = icmp eq i16 %289, 0
  br i1 %cmp689, label %if.then685.if.end692_crit_edge, label %if.then691

if.then685.if.end692_crit_edge:                   ; preds = %if.then685
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end692

if.then691:                                       ; preds = %if.then685
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %275) #6
  br label %if.end692

if.end692:                                        ; preds = %if.then691, %if.then685.if.end692_crit_edge
  %i_sb693 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %290 = ptrtoint ptr %i_sb693 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %i_sb693, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %291, ptr noundef nonnull @.str.30) #6
  br label %cleanup

updateLeft:                                       ; preds = %if.end682.updateLeft_crit_edge, %if.end632.updateLeft_crit_edge, %replace.updateLeft_crit_edge
  %xoff.1 = phi i64 [ %nxoff.0, %if.end682.updateLeft_crit_edge ], [ %nxoff.0, %if.end632.updateLeft_crit_edge ], [ %or46, %replace.updateLeft_crit_edge ]
  %nxlen.1 = phi i32 [ %nxlen.0, %if.end682.updateLeft_crit_edge ], [ %nxlen.0, %if.end632.updateLeft_crit_edge ], [ %11, %replace.updateLeft_crit_edge ]
  %xlen.1 = phi i32 [ %conv639, %if.end682.updateLeft_crit_edge ], [ %conv639, %if.end632.updateLeft_crit_edge ], [ %45, %replace.updateLeft_crit_edge ]
  %xaddr.0 = phi i64 [ %nxaddr.0, %if.end682.updateLeft_crit_edge ], [ %nxaddr.0, %if.end632.updateLeft_crit_edge ], [ %add.i1405, %replace.updateLeft_crit_edge ]
  %xtlck.4 = phi ptr [ %xtlck.3, %if.end682.updateLeft_crit_edge ], [ %xtlck.3, %if.end632.updateLeft_crit_edge ], [ %xtlck.0, %replace.updateLeft_crit_edge ]
  %nextindex.1 = phi i32 [ %conv635, %if.end682.updateLeft_crit_edge ], [ %conv635, %if.end632.updateLeft_crit_edge ], [ %conv70, %replace.updateLeft_crit_edge ]
  %newindex.2 = phi i32 [ %add633, %if.end682.updateLeft_crit_edge ], [ %add633, %if.end632.updateLeft_crit_edge ], [ %add68, %replace.updateLeft_crit_edge ]
  %index.2 = phi i32 [ %index.1, %if.end682.updateLeft_crit_edge ], [ %index.1, %if.end632.updateLeft_crit_edge ], [ %conv14, %replace.updateLeft_crit_edge ]
  %index0.2 = phi i32 [ %index.1, %if.end682.updateLeft_crit_edge ], [ %index0.1, %if.end632.updateLeft_crit_edge ], [ %conv14, %replace.updateLeft_crit_edge ]
  %bn.2 = phi i64 [ %273, %if.end682.updateLeft_crit_edge ], [ %bn.1, %if.end632.updateLeft_crit_edge ], [ %19, %replace.updateLeft_crit_edge ]
  %p.7 = phi ptr [ %p.6, %if.end682.updateLeft_crit_edge ], [ %p.5, %if.end632.updateLeft_crit_edge ], [ %p.0, %replace.updateLeft_crit_edge ]
  %mp.8 = phi ptr [ %275, %if.end682.updateLeft_crit_edge ], [ %mp.7, %if.end632.updateLeft_crit_edge ], [ %21, %replace.updateLeft_crit_edge ]
  %arrayidx696 = getelementptr [18 x %struct.xad], ptr %p.7, i32 0, i32 %index.2
  %292 = call ptr @memcpy(ptr %arrayidx696, ptr %nxad, i32 16)
  %and697 = and i8 %36, -9
  %293 = ptrtoint ptr %arrayidx696 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %and697, ptr %arrayidx696, align 4
  %conv700 = sext i32 %nxlen.1 to i64
  %add701 = add nsw i64 %xoff.1, %conv700
  %sub702 = sub i32 %xlen.1, %nxlen.1
  %add704 = add nsw i64 %xaddr.0, %conv700
  %maxentry705 = getelementptr inbounds %struct.xtheader, ptr %p.7, i32 0, i32 5
  %294 = ptrtoint ptr %maxentry705 to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %maxentry705, align 4
  %296 = call i16 @llvm.bswap.i16(i16 %295)
  %conv706 = zext i16 %296 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nextindex.1, i32 %conv706)
  %cmp707 = icmp eq i32 %nextindex.1, %conv706
  br i1 %cmp707, label %if.then709, label %if.else910

if.then709:                                       ; preds = %updateLeft
  %297 = ptrtoint ptr %split to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %mp.8, ptr %split, align 8
  %conv711 = trunc i32 %newindex.2 to i16
  %index712 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 1
  %298 = ptrtoint ptr %index712 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv711, ptr %index712, align 4
  %flag714 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %299 = ptrtoint ptr %flag714 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %36, ptr %flag714, align 2
  %off715 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %300 = ptrtoint ptr %off715 to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 %add701, ptr %off715, align 8
  %len716 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %301 = ptrtoint ptr %len716 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %sub702, ptr %len716, align 8
  %addr717 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %302 = ptrtoint ptr %addr717 to i32
  call void @__asan_store8_noabort(i32 %302)
  store i64 %add704, ptr %addr717, align 8
  %pxdlist718 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 6
  %303 = ptrtoint ptr %pxdlist718 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr null, ptr %pxdlist718, align 4
  %call719 = call fastcc i32 @xtSplitUp(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %split, ptr noundef nonnull %btstack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call719)
  %tobool720.not = icmp eq i32 %call719, 0
  br i1 %tobool720.not, label %do.body723, label %if.then709.cleanup_crit_edge

if.then709.cleanup_crit_edge:                     ; preds = %if.then709
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body723:                                       ; preds = %if.then709
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bn.2)
  %cmp724 = icmp eq i64 %bn.2, 0
  br i1 %cmp724, label %if.then726, label %if.else732

if.then726:                                       ; preds = %do.body723
  call void @__sanitizer_cov_trace_pc() #8
  %bxflag728 = getelementptr i8, ptr %ip, i32 -752
  %u730 = getelementptr i8, ptr %ip, i32 -400
  br label %if.then754

if.else732:                                       ; preds = %do.body723
  %conv733 = trunc i64 %bn.2 to i32
  %call734 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv733, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool735.not = icmp eq ptr %call734, null
  br i1 %tobool735.not, label %if.else738, label %if.then736

if.then736:                                       ; preds = %if.else732
  call void @__sanitizer_cov_trace_pc() #8
  %data737 = getelementptr inbounds %struct.metapage, ptr %call734, i32 0, i32 7
  %304 = ptrtoint ptr %data737 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %data737, align 4
  br label %if.then754

if.else738:                                       ; preds = %if.else732
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %306 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp740 = icmp sgt i32 %306, 0
  br i1 %cmp740, label %do.end745, label %if.else738.cleanup_crit_edge

if.else738.cleanup_crit_edge:                     ; preds = %if.else738
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end745:                                        ; preds = %if.else738
  call void @__sanitizer_cov_trace_pc() #8
  %call747 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then754:                                       ; preds = %if.then736, %if.then726
  %p.8.ph = phi ptr [ %305, %if.then736 ], [ %u730, %if.then726 ]
  %mp.9.ph = phi ptr [ %call734, %if.then736 ], [ %bxflag728, %if.then726 ]
  %nextindex755 = getelementptr inbounds %struct.xtheader, ptr %p.8.ph, i32 0, i32 4
  %307 = ptrtoint ptr %nextindex755 to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %nextindex755, align 2
  %309 = call i16 @llvm.bswap.i16(i16 %308)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %309)
  %cmp757 = icmp ult i16 %309, 2
  br i1 %cmp757, label %if.then754.if.then774_crit_edge, label %lor.lhs.false759

if.then754.if.then774_crit_edge:                  ; preds = %if.then754
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then774

lor.lhs.false759:                                 ; preds = %if.then754
  %maxentry762 = getelementptr inbounds %struct.xtheader, ptr %p.8.ph, i32 0, i32 5
  %310 = ptrtoint ptr %maxentry762 to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %maxentry762, align 4
  %312 = call i16 @llvm.bswap.i16(i16 %311)
  call void @__sanitizer_cov_trace_cmp2(i16 %309, i16 %312)
  %cmp764 = icmp ugt i16 %309, %312
  br i1 %cmp764, label %lor.lhs.false759.if.then774_crit_edge, label %lor.lhs.false766

lor.lhs.false759.if.then774_crit_edge:            ; preds = %lor.lhs.false759
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then774

lor.lhs.false766:                                 ; preds = %lor.lhs.false759
  %conv763 = zext i16 %312 to i32
  %cond771 = select i1 %cmp724, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond771, i32 %conv763)
  %cmp772 = icmp ult i32 %cond771, %conv763
  br i1 %cmp772, label %lor.lhs.false766.if.then774_crit_edge, label %if.end789

lor.lhs.false766.if.then774_crit_edge:            ; preds = %lor.lhs.false766
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then774

if.then774:                                       ; preds = %lor.lhs.false766.if.then774_crit_edge, %lor.lhs.false759.if.then774_crit_edge, %if.then754.if.then774_crit_edge
  %i_sb775 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %313 = ptrtoint ptr %i_sb775 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %i_sb775, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %314, ptr noundef nonnull @.str.12) #6
  %315 = ptrtoint ptr %mp.9.ph to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %mp.9.ph, align 8
  %317 = and i16 %316, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %317)
  %cmp779 = icmp eq i16 %317, 0
  br i1 %cmp779, label %if.then774.cleanup_crit_edge, label %if.then781

if.then774.cleanup_crit_edge:                     ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then781:                                       ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.9.ph) #6
  br label %cleanup

if.end789:                                        ; preds = %lor.lhs.false766
  %flag790 = getelementptr inbounds %struct.xtheader, ptr %p.8.ph, i32 0, i32 2
  %318 = ptrtoint ptr %flag790 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %flag790, align 8
  %320 = and i8 %319, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool793.not = icmp eq i8 %320, 0
  br i1 %tobool793.not, label %if.end789.out_crit_edge, label %do.body795

if.end789.out_crit_edge:                          ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body795:                                       ; preds = %if.end789
  %321 = ptrtoint ptr %nextindex755 to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %nextindex755, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %322)
  %cmp798 = icmp eq i16 %322, 768
  br i1 %cmp798, label %do.end814, label %do.end803

do.end803:                                        ; preds = %do.body795
  call void @__sanitizer_cov_trace_pc() #8
  %call805 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 2093, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_xtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2093, 0\0A.popsection", ""() #6, !srcloc !155
  unreachable

do.end814:                                        ; preds = %do.body795
  %loc816 = getelementptr [18 x %struct.xad], ptr %p.8.ph, i32 0, i32 2, i32 4
  %323 = ptrtoint ptr %loc816 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %loc816, align 4
  %325 = shl i32 %324, 24
  %conv.i1462 = zext i32 %325 to i64
  %shl.i1463 = shl nuw nsw i64 %conv.i1462, 8
  %addr2.i1464 = getelementptr [18 x %struct.xad], ptr %p.8.ph, i32 0, i32 2, i32 4, i32 1
  %326 = ptrtoint ptr %addr2.i1464 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %addr2.i1464, align 4
  %328 = call i32 @llvm.bswap.i32(i32 %327) #6
  %conv1.i1465 = zext i32 %328 to i64
  %add.i1466 = or i64 %shl.i1463, %conv1.i1465
  %329 = ptrtoint ptr %mp.9.ph to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %mp.9.ph, align 8
  %331 = and i16 %330, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %331)
  %cmp821 = icmp eq i16 %331, 0
  br i1 %cmp821, label %do.end814.do.body825_crit_edge, label %if.then823

do.end814.do.body825_crit_edge:                   ; preds = %do.end814
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body825

if.then823:                                       ; preds = %do.end814
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.9.ph) #6
  br label %do.body825

do.body825:                                       ; preds = %if.then823, %do.end814.do.body825_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i1466)
  %cmp826 = icmp eq i64 %add.i1466, 0
  br i1 %cmp826, label %if.then828, label %if.else834

if.then828:                                       ; preds = %do.body825
  call void @__sanitizer_cov_trace_pc() #8
  %bxflag830 = getelementptr i8, ptr %ip, i32 -752
  %u832 = getelementptr i8, ptr %ip, i32 -400
  br label %if.then856

if.else834:                                       ; preds = %do.body825
  %call836 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %328, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool837.not = icmp eq ptr %call836, null
  br i1 %tobool837.not, label %if.else840, label %if.then838

if.then838:                                       ; preds = %if.else834
  call void @__sanitizer_cov_trace_pc() #8
  %data839 = getelementptr inbounds %struct.metapage, ptr %call836, i32 0, i32 7
  %332 = ptrtoint ptr %data839 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %data839, align 4
  br label %if.then856

if.else840:                                       ; preds = %if.else834
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %334 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %cmp842 = icmp sgt i32 %334, 0
  br i1 %cmp842, label %do.end847, label %if.else840.cleanup_crit_edge

if.else840.cleanup_crit_edge:                     ; preds = %if.else840
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end847:                                        ; preds = %if.else840
  call void @__sanitizer_cov_trace_pc() #8
  %call849 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then856:                                       ; preds = %if.then838, %if.then828
  %p.9.ph = phi ptr [ %333, %if.then838 ], [ %u832, %if.then828 ]
  %mp.11.ph = phi ptr [ %call836, %if.then838 ], [ %bxflag830, %if.then828 ]
  %nextindex857 = getelementptr inbounds %struct.xtheader, ptr %p.9.ph, i32 0, i32 4
  %335 = ptrtoint ptr %nextindex857 to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %nextindex857, align 2
  %337 = call i16 @llvm.bswap.i16(i16 %336)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %337)
  %cmp859 = icmp ult i16 %337, 2
  br i1 %cmp859, label %if.then856.if.then876_crit_edge, label %lor.lhs.false861

if.then856.if.then876_crit_edge:                  ; preds = %if.then856
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then876

lor.lhs.false861:                                 ; preds = %if.then856
  %maxentry864 = getelementptr inbounds %struct.xtheader, ptr %p.9.ph, i32 0, i32 5
  %338 = ptrtoint ptr %maxentry864 to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %maxentry864, align 4
  %340 = call i16 @llvm.bswap.i16(i16 %339)
  call void @__sanitizer_cov_trace_cmp2(i16 %337, i16 %340)
  %cmp866 = icmp ugt i16 %337, %340
  br i1 %cmp866, label %lor.lhs.false861.if.then876_crit_edge, label %lor.lhs.false868

lor.lhs.false861.if.then876_crit_edge:            ; preds = %lor.lhs.false861
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then876

lor.lhs.false868:                                 ; preds = %lor.lhs.false861
  %conv865 = zext i16 %340 to i32
  %cond873 = select i1 %cmp826, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond873, i32 %conv865)
  %cmp874 = icmp ult i32 %cond873, %conv865
  br i1 %cmp874, label %lor.lhs.false868.if.then876_crit_edge, label %if.end891

lor.lhs.false868.if.then876_crit_edge:            ; preds = %lor.lhs.false868
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then876

if.then876:                                       ; preds = %lor.lhs.false868.if.then876_crit_edge, %lor.lhs.false861.if.then876_crit_edge, %if.then856.if.then876_crit_edge
  %i_sb877 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %341 = ptrtoint ptr %i_sb877 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %i_sb877, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %342, ptr noundef nonnull @.str.12) #6
  %343 = ptrtoint ptr %mp.11.ph to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %mp.11.ph, align 8
  %345 = and i16 %344, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %345)
  %cmp881 = icmp eq i16 %345, 0
  br i1 %cmp881, label %if.then876.cleanup_crit_edge, label %if.then883

if.then876.cleanup_crit_edge:                     ; preds = %if.then876
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then883:                                       ; preds = %if.then876
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.11.ph) #6
  br label %cleanup

if.end891:                                        ; preds = %lor.lhs.false868
  %346 = ptrtoint ptr %mp.11.ph to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %mp.11.ph, align 8
  %348 = and i16 %347, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %348)
  %cmp895 = icmp eq i16 %348, 0
  br i1 %cmp895, label %if.then897, label %if.else898

if.then897:                                       ; preds = %if.end891
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end900

if.else898:                                       ; preds = %if.end891
  call void @__sanitizer_cov_trace_pc() #8
  %flag899 = getelementptr inbounds %struct.metapage, ptr %mp.11.ph, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag899) #6
  br label %if.end900

if.end900:                                        ; preds = %if.else898, %if.then897
  %349 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load volatile i32, ptr %cflag, align 4
  %and1.i1398 = and i32 %350, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1398)
  %tobool904.not = icmp eq i32 %and1.i1398, 0
  br i1 %tobool904.not, label %if.then905, label %if.end900.out_crit_edge

if.end900.out_crit_edge:                          ; preds = %if.end900
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then905:                                       ; preds = %if.end900
  call void @__sanitizer_cov_trace_pc() #8
  %call906 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.11.ph, i32 noundef 16385) #6
  %lock907 = getelementptr inbounds %struct.tlock, ptr %call906, i32 0, i32 6
  br label %out

if.else910:                                       ; preds = %updateLeft
  call void @__sanitizer_cov_trace_cmp4(i32 %nextindex.1, i32 %newindex.2)
  %cmp911 = icmp sgt i32 %nextindex.1, %newindex.2
  br i1 %cmp911, label %if.then913, label %if.else910.if.end919_crit_edge

if.else910.if.end919_crit_edge:                   ; preds = %if.else910
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end919

if.then913:                                       ; preds = %if.else910
  call void @__sanitizer_cov_trace_pc() #8
  %add914 = add nsw i32 %newindex.2, 1
  %arrayidx915 = getelementptr [18 x %struct.xad], ptr %p.7, i32 0, i32 %add914
  %arrayidx916 = getelementptr [18 x %struct.xad], ptr %p.7, i32 0, i32 %newindex.2
  %sub917 = sub nsw i32 %nextindex.1, %newindex.2
  %shl918 = shl nsw i32 %sub917, 4
  %351 = call ptr @memmove(ptr %arrayidx915, ptr %arrayidx916, i32 %shl918)
  br label %if.end919

if.end919:                                        ; preds = %if.then913, %if.else910.if.end919_crit_edge
  %arrayidx920 = getelementptr [18 x %struct.xad], ptr %p.7, i32 0, i32 %newindex.2
  %352 = ptrtoint ptr %arrayidx920 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %36, ptr %arrayidx920, align 4
  %shr923 = lshr i64 %add701, 32
  %conv924 = trunc i64 %shr923 to i8
  %off1925 = getelementptr [18 x %struct.xad], ptr %p.7, i32 0, i32 %newindex.2, i32 2
  %353 = ptrtoint ptr %off1925 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %conv924, ptr %off1925, align 1
  %conv927 = trunc i64 %add701 to i32
  %354 = call i32 @llvm.bswap.i32(i32 %conv927)
  %off2928 = getelementptr [18 x %struct.xad], ptr %p.7, i32 0, i32 %newindex.2, i32 3
  %355 = ptrtoint ptr %off2928 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %off2928, align 4
  %loc929 = getelementptr [18 x %struct.xad], ptr %p.7, i32 0, i32 %newindex.2, i32 4
  %and1.i1471 = and i32 %sub702, 16777215
  %356 = call i32 @llvm.bswap.i32(i32 %and1.i1471) #6
  %sum.shift.i1474 = lshr i64 %add704, 32
  %conv7.i1475 = trunc i64 %sum.shift.i1474 to i32
  %conv.i1476 = and i32 %conv7.i1475, 255
  %or.i1477 = or i32 %conv.i1476, %356
  %357 = ptrtoint ptr %loc929 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %or.i1477, ptr %loc929, align 4
  %conv3.i1478 = trunc i64 %add704 to i32
  %358 = call i32 @llvm.bswap.i32(i32 %conv3.i1478) #6
  %addr2.i1479 = getelementptr [18 x %struct.xad], ptr %p.7, i32 0, i32 %newindex.2, i32 4, i32 1
  %359 = ptrtoint ptr %addr2.i1479 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %addr2.i1479, align 4
  %nextindex931 = getelementptr inbounds %struct.xtheader, ptr %p.7, i32 0, i32 4
  %360 = ptrtoint ptr %nextindex931 to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %nextindex931, align 2
  %362 = call i16 @llvm.bswap.i16(i16 %361)
  %add933 = add i16 %362, 1
  %363 = call i16 @llvm.bswap.i16(i16 %add933)
  %364 = ptrtoint ptr %nextindex931 to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 %363, ptr %nextindex931, align 2
  br label %out

out:                                              ; preds = %if.end919, %if.then905, %if.end900.out_crit_edge, %if.end789.out_crit_edge, %if.end499.thread.out_crit_edge, %if.end499.out_crit_edge, %if.else251.out_crit_edge, %if.else238, %if.then235, %if.then177.out_crit_edge, %if.then123
  %xtlck.5 = phi ptr [ %xtlck.0, %if.then177.out_crit_edge ], [ %xtlck.1, %if.end499.out_crit_edge ], [ %xtlck.4, %if.end900.out_crit_edge ], [ %lock907, %if.then905 ], [ %xtlck.4, %if.end789.out_crit_edge ], [ %xtlck.4, %if.end919 ], [ %xtlck.0, %if.else251.out_crit_edge ], [ %xtlck.0, %if.then235 ], [ %xtlck.0, %if.else238 ], [ %xtlck.0, %if.then123 ], [ %xtlck.0, %if.end499.thread.out_crit_edge ]
  %index0.3 = phi i32 [ %index0.0, %if.then177.out_crit_edge ], [ %index0.0, %if.end499.out_crit_edge ], [ %index0.2, %if.end900.out_crit_edge ], [ %index0.2, %if.then905 ], [ %index0.2, %if.end789.out_crit_edge ], [ %index0.2, %if.end919 ], [ %index0.0, %if.else251.out_crit_edge ], [ %index0.0, %if.then235 ], [ %index0.0, %if.else238 ], [ %sub, %if.then123 ], [ %index0.0, %if.end499.thread.out_crit_edge ]
  %p.10 = phi ptr [ %p.0, %if.then177.out_crit_edge ], [ %p.3, %if.end499.out_crit_edge ], [ %p.9.ph, %if.end900.out_crit_edge ], [ %p.9.ph, %if.then905 ], [ %p.8.ph, %if.end789.out_crit_edge ], [ %p.7, %if.end919 ], [ %p.0, %if.else251.out_crit_edge ], [ %p.0, %if.then235 ], [ %p.0, %if.else238 ], [ %p.0, %if.then123 ], [ %p.1.ph, %if.end499.thread.out_crit_edge ]
  %mp.13 = phi ptr [ %21, %if.then177.out_crit_edge ], [ %mp.4, %if.end499.out_crit_edge ], [ %mp.11.ph, %if.end900.out_crit_edge ], [ %mp.11.ph, %if.then905 ], [ %mp.9.ph, %if.end789.out_crit_edge ], [ %mp.8, %if.end919 ], [ %21, %if.else251.out_crit_edge ], [ %21, %if.then235 ], [ %21, %if.else238 ], [ %21, %if.then123 ], [ %mp.0.ph, %if.end499.thread.out_crit_edge ]
  %365 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load volatile i32, ptr %cflag, align 4
  %and1.i1399 = and i32 %366, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1399)
  %tobool940.not = icmp eq i32 %and1.i1399, 0
  br i1 %tobool940.not, label %if.then941, label %out.if.end972_crit_edge

out.if.end972_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end972

if.then941:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %lwm942 = getelementptr inbounds %struct.xtlock, ptr %xtlck.5, i32 0, i32 7
  %367 = ptrtoint ptr %lwm942 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %lwm942, align 2
  %conv944 = zext i8 %368 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool945.not = icmp eq i8 %368, 0
  %369 = call i32 @llvm.smin.i32(i32 %index0.3, i32 %conv944)
  %cond959 = select i1 %tobool945.not, i32 %index0.3, i32 %369
  %conv960 = trunc i32 %cond959 to i8
  %370 = ptrtoint ptr %lwm942 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %conv960, ptr %lwm942, align 2
  %nextindex963 = getelementptr inbounds %struct.xtheader, ptr %p.10, i32 0, i32 4
  %371 = ptrtoint ptr %nextindex963 to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %nextindex963, align 2
  %373 = lshr i16 %372, 8
  %conv964 = zext i16 %373 to i32
  %sub968 = sub nsw i32 %conv964, %cond959
  %conv969 = trunc i32 %sub968 to i8
  %length971 = getelementptr inbounds %struct.xtlock, ptr %xtlck.5, i32 0, i32 7, i32 1
  %374 = ptrtoint ptr %length971 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 %conv969, ptr %length971, align 1
  br label %if.end972

if.end972:                                        ; preds = %if.then941, %out.if.end972_crit_edge
  %375 = ptrtoint ptr %mp.13 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %mp.13, align 8
  %377 = and i16 %376, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %377)
  %cmp976 = icmp eq i16 %377, 0
  br i1 %cmp976, label %if.end972.cleanup_crit_edge, label %if.then978

if.end972.cleanup_crit_edge:                      ; preds = %if.end972
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then978:                                       ; preds = %if.end972
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then978, %if.end972.cleanup_crit_edge, %if.then883, %if.then876.cleanup_crit_edge, %do.end847, %if.else840.cleanup_crit_edge, %if.then781, %if.then774.cleanup_crit_edge, %do.end745, %if.else738.cleanup_crit_edge, %if.then709.cleanup_crit_edge, %if.end692, %if.end680, %if.end651.cleanup_crit_edge, %if.then605, %if.then598.cleanup_crit_edge, %do.end569, %if.else562.cleanup_crit_edge, %if.then441, %if.then434.cleanup_crit_edge, %do.end405, %if.else398.cleanup_crit_edge, %if.then339, %if.then332.cleanup_crit_edge, %do.end, %if.else300.cleanup_crit_edge, %if.then276.cleanup_crit_edge, %if.end266, %if.end65, %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end23 ], [ -5, %if.end65 ], [ -5, %if.end680 ], [ -5, %if.end692 ], [ -5, %if.end266 ], [ %call4, %entry.cleanup_crit_edge ], [ %call283, %if.then276.cleanup_crit_edge ], [ %call652, %if.end651.cleanup_crit_edge ], [ %call719, %if.then709.cleanup_crit_edge ], [ 0, %if.then978 ], [ 0, %if.end972.cleanup_crit_edge ], [ -5, %if.then339 ], [ -5, %if.then332.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %if.else300.cleanup_crit_edge ], [ -5, %if.then441 ], [ -5, %if.then434.cleanup_crit_edge ], [ -5, %do.end405 ], [ -5, %if.else398.cleanup_crit_edge ], [ -5, %if.then605 ], [ -5, %if.then598.cleanup_crit_edge ], [ -5, %do.end569 ], [ -5, %if.else562.cleanup_crit_edge ], [ -5, %if.then781 ], [ -5, %if.then774.cleanup_crit_edge ], [ -5, %do.end745 ], [ -5, %if.else738.cleanup_crit_edge ], [ -5, %if.then883 ], [ -5, %if.then876.cleanup_crit_edge ], [ -5, %do.end847 ], [ -5, %if.else840.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %split) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmp) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xtAppend(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %xflag, i64 noundef %xoff, i32 noundef %maxblocks, ptr nocapture noundef %xlenp, ptr nocapture noundef %xaddrp, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %btstack = alloca %struct.btstack, align 8
  %split = alloca %struct.xtsplit, align 8
  %cmp = alloca i32, align 4
  %pxdlist = alloca %struct.pxdlist, align 4
  %next = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #6
  %0 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %split) #6
  %1 = call ptr @memset(ptr %split, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmp) #6
  %2 = ptrtoint ptr %cmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cmp, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %pxdlist) #6
  %3 = call ptr @memset(ptr %pxdlist, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next) #6
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %next, align 8, !annotation !152
  %5 = ptrtoint ptr %xaddrp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %xaddrp, align 8
  %7 = ptrtoint ptr %xlenp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xlenp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %9 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp1 = icmp sgt i32 %9, 3
  br i1 %cmp1, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i64 %xoff to i32
  %conv3 = trunc i64 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %maxblocks, i32 noundef %8, i32 noundef %conv3) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = call fastcc i32 @xtSearch(ptr noundef %ip, i64 noundef %xoff, ptr noundef nonnull %next, ptr noundef nonnull %cmp, ptr noundef nonnull %btstack, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %10 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btstack, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  %mp11 = getelementptr inbounds %struct.btframe, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %mp11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mp11, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool12.not = icmp eq i64 %13, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.metapage, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %u = getelementptr i8, ptr %ip, i32 -400
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %p.0 = phi ptr [ %17, %if.then13 ], [ %u, %if.else ]
  %index17 = getelementptr inbounds %struct.btframe, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %index17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %index17, align 8
  %conv18 = sext i16 %19 to i32
  %20 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp19 = icmp eq i32 %21, 0
  br i1 %cmp19, label %if.end15.out_crit_edge, label %if.end22

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end22:                                         ; preds = %if.end15
  %22 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %next, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool23.not = icmp eq i64 %23, 0
  %sub = sub i64 %23, %xoff
  %conv25 = trunc i64 %sub to i32
  %24 = call i32 @llvm.smin.i32(i32 %8, i32 %conv25)
  %xlen.0 = select i1 %tobool23.not, i32 %8, i32 %24
  %or = or i32 %xflag, 1
  %nextindex30 = getelementptr inbounds %struct.xtheader, ptr %p.0, i32 0, i32 4
  %25 = ptrtoint ptr %nextindex30 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nextindex30, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %maxentry = getelementptr inbounds %struct.xtheader, ptr %p.0, i32 0, i32 5
  %28 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %maxentry, align 4
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %30)
  %cmp33 = icmp ult i16 %27, %30
  br i1 %cmp33, label %insertLeaf, label %if.end36

if.end36:                                         ; preds = %if.end22
  %nsplit37 = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 1
  %31 = ptrtoint ptr %nsplit37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nsplit37, align 4
  %pxdlist38 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 6
  %33 = ptrtoint ptr %pxdlist38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pxdlist, ptr %pxdlist38, align 4
  %npxd = getelementptr inbounds %struct.pxdlist, ptr %pxdlist, i32 0, i32 1
  %34 = ptrtoint ptr %npxd to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %npxd, align 2
  %35 = ptrtoint ptr %pxdlist to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %pxdlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp42242 = icmp sgt i32 %32, 0
  br i1 %cmp42242, label %for.body.lr.ph, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end36
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nbperpage, align 4
  %conv41 = sext i16 %41 to i32
  %pxd39 = getelementptr inbounds %struct.pxdlist, ptr %pxdlist, i32 0, i32 2
  %conv44 = sext i16 %41 to i64
  %and1.i = and i32 %conv41, 16777215
  %42 = call i32 @llvm.bswap.i32(i32 %and1.i) #6
  %43 = mul i32 %32, %conv41
  %44 = sub i32 %maxblocks, %43
  br label %for.body

for.body:                                         ; preds = %if.then48.for.body_crit_edge, %for.body.lr.ph
  %pxd.0245 = phi ptr [ %pxd39, %for.body.lr.ph ], [ %incdec.ptr, %if.then48.for.body_crit_edge ]
  %nsplit.0244 = phi i32 [ %32, %for.body.lr.ph ], [ %dec, %if.then48.for.body_crit_edge ]
  %xaddr.0243 = phi i64 [ %6, %for.body.lr.ph ], [ %add, %if.then48.for.body_crit_edge ]
  %call45 = call i32 @dbAllocBottomUp(ptr noundef %ip, i64 noundef %xaddr.0243, i64 noundef %conv44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then48:                                        ; preds = %for.body
  %sum.shift.i = lshr i64 %xaddr.0243, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i = and i32 %conv7.i, 255
  %conv3.i = trunc i64 %xaddr.0243 to i32
  %45 = call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  %addr2.i = getelementptr inbounds %struct.pxd_t, ptr %pxd.0245, i32 0, i32 1
  %46 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %addr2.i, align 4
  %or.i229 = or i32 %conv.i, %42
  %47 = ptrtoint ptr %pxd.0245 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i229, ptr %pxd.0245, align 4
  %48 = ptrtoint ptr %pxdlist to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %pxdlist, align 4
  %inc = add i16 %49, 1
  store i16 %inc, ptr %pxdlist, align 4
  %dec = add nsw i32 %nsplit.0244, -1
  %incdec.ptr = getelementptr %struct.pxd_t, ptr %pxd.0245, i32 1
  %add = add i64 %xaddr.0243, %conv44
  %cmp42 = icmp sgt i32 %nsplit.0244, 1
  br i1 %cmp42, label %if.then48.for.body_crit_edge, label %if.then48.for.end_crit_edge

if.then48.for.end_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then48.for.body_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.then48.for.end_crit_edge, %if.end36.for.end_crit_edge
  %xaddr.0.lcssa = phi i64 [ %6, %if.end36.for.end_crit_edge ], [ %add, %if.then48.for.end_crit_edge ]
  %maxblocks.addr.0.lcssa = phi i32 [ %maxblocks, %if.end36.for.end_crit_edge ], [ %44, %if.then48.for.end_crit_edge ]
  %50 = call i32 @llvm.smin.i32(i32 %xlen.0, i32 %maxblocks.addr.0.lcssa)
  %conv60 = sext i32 %50 to i64
  %call61 = call i32 @dbAllocBottomUp(ptr noundef %ip, i64 noundef %xaddr.0.lcssa, i64 noundef %conv60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end64:                                         ; preds = %for.end
  %51 = ptrtoint ptr %split to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %15, ptr %split, align 8
  %index67 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 1
  %52 = ptrtoint ptr %index67 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %19, ptr %index67, align 4
  %conv68 = trunc i32 %or to i8
  %flag69 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %53 = ptrtoint ptr %flag69 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv68, ptr %flag69, align 2
  %off = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %54 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %xoff, ptr %off, align 8
  %len = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %55 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %50, ptr %len, align 8
  %addr = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %56 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %xaddr.0.lcssa, ptr %addr, align 8
  %call70 = call fastcc i32 @xtSplitUp(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %split, ptr noundef nonnull %btstack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end75, label %if.then72

if.then72:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %xaddrp to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %xaddrp, align 8
  %59 = ptrtoint ptr %xlenp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %xlenp, align 4
  %conv73 = sext i32 %60 to i64
  %call74 = call i32 @dbFree(ptr noundef %ip, i64 noundef %58, i64 noundef %conv73) #6
  br label %cleanup

if.end75:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %xaddrp to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %xaddr.0.lcssa, ptr %xaddrp, align 8
  %62 = ptrtoint ptr %xlenp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %50, ptr %xlenp, align 4
  br label %cleanup

insertLeaf:                                       ; preds = %if.end22
  %conv76 = sext i32 %xlen.0 to i64
  %call77 = call i32 @dbAllocBottomUp(ptr noundef %ip, i64 noundef %6, i64 noundef %conv76) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %insertLeaf.out_crit_edge

insertLeaf.out_crit_edge:                         ; preds = %insertLeaf
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end80:                                         ; preds = %insertLeaf
  %63 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %15, align 8
  %65 = and i16 %64, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp83 = icmp eq i16 %65, 0
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end88

if.else86:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %flag87 = getelementptr inbounds %struct.metapage, ptr %15, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag87) #6
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %if.then85
  %call89 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %15, i32 noundef 16385) #6
  %arrayidx90 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv18
  %conv91 = trunc i32 %or to i8
  %66 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv91, ptr %arrayidx90, align 4
  %shr = lshr i64 %xoff, 32
  %conv93 = trunc i64 %shr to i8
  %off1 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv18, i32 2
  %67 = ptrtoint ptr %off1 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv93, ptr %off1, align 1
  %conv95 = trunc i64 %xoff to i32
  %68 = call i32 @llvm.bswap.i32(i32 %conv95)
  %off2 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv18, i32 3
  %69 = ptrtoint ptr %off2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %off2, align 4
  %loc = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv18, i32 4
  %and1.i231 = and i32 %xlen.0, 16777215
  %70 = call i32 @llvm.bswap.i32(i32 %and1.i231) #6
  %sum.shift.i234 = lshr i64 %6, 32
  %conv7.i235 = trunc i64 %sum.shift.i234 to i32
  %conv.i236 = and i32 %conv7.i235, 255
  %or.i237 = or i32 %70, %conv.i236
  %71 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or.i237, ptr %loc, align 4
  %conv3.i238 = trunc i64 %6 to i32
  %72 = call i32 @llvm.bswap.i32(i32 %conv3.i238) #6
  %addr2.i239 = getelementptr [18 x %struct.xad], ptr %p.0, i32 0, i32 %conv18, i32 4, i32 1
  %73 = ptrtoint ptr %addr2.i239 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %addr2.i239, align 4
  %74 = ptrtoint ptr %nextindex30 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %nextindex30, align 2
  %76 = call i16 @llvm.bswap.i16(i16 %75) #6
  %add.i = add i16 %76, 1
  %77 = call i16 @llvm.bswap.i16(i16 %add.i) #6
  %78 = ptrtoint ptr %nextindex30 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %nextindex30, align 2
  %lwm = getelementptr inbounds %struct.tlock, ptr %call89, i32 0, i32 6, i32 5
  %79 = ptrtoint ptr %lwm to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %lwm, align 2
  %conv98 = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool99.not = icmp eq i8 %80, 0
  %81 = call i32 @llvm.smin.i32(i32 %conv18, i32 %conv98)
  %cond113 = select i1 %tobool99.not, i32 %conv18, i32 %81
  %conv114 = trunc i32 %cond113 to i8
  %82 = ptrtoint ptr %lwm to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv114, ptr %lwm, align 2
  %83 = ptrtoint ptr %nextindex30 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %nextindex30, align 2
  %85 = lshr i16 %84, 8
  %conv118 = zext i16 %85 to i32
  %sub122 = sub nsw i32 %conv118, %cond113
  %conv123 = trunc i32 %sub122 to i8
  %length = getelementptr inbounds %struct.lv, ptr %lwm, i32 0, i32 1
  %86 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv123, ptr %length, align 1
  %87 = ptrtoint ptr %xaddrp to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %6, ptr %xaddrp, align 8
  %88 = ptrtoint ptr %xlenp to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %xlen.0, ptr %xlenp, align 4
  br label %out

out:                                              ; preds = %if.end88, %insertLeaf.out_crit_edge, %for.end.out_crit_edge, %for.body.out_crit_edge, %if.end15.out_crit_edge
  %rc.0 = phi i32 [ %call77, %insertLeaf.out_crit_edge ], [ 0, %if.end88 ], [ %call61, %for.end.out_crit_edge ], [ -17, %if.end15.out_crit_edge ], [ %call45, %for.body.out_crit_edge ]
  %89 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %15, align 8
  %91 = and i16 %90, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp128 = icmp eq i16 %91, 0
  br i1 %cmp128, label %out.cleanup_crit_edge, label %if.then130

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then130:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then130, %out.cleanup_crit_edge, %if.end75, %if.then72, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call70, %if.then72 ], [ 0, %if.end75 ], [ %call6, %do.end5.cleanup_crit_edge ], [ %rc.0, %if.then130 ], [ %rc.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %pxdlist) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmp) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %split) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbAllocBottomUp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xtInitRoot(i16 noundef zeroext %tid, ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %call1 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %bxflag, i32 noundef 16416) #6
  %flag = getelementptr i8, ptr %ip, i32 -384
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -125, ptr %flag, align 8
  %nextindex = getelementptr i8, ptr %ip, i32 -382
  %1 = ptrtoint ptr %nextindex to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 512, ptr %nextindex, align 2
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ip, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %i_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i16 [ 2560, %if.else ], [ 1536, %entry.if.end_crit_edge ]
  %6 = getelementptr i8, ptr %ip, i32 -380
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xtTruncate(i16 noundef zeroext %tid, ptr noundef %ip, i64 noundef %newsize, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %btstack = alloca %struct.btstack, align 8
  %xadlock = alloca %struct.xdlistlock, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #6
  %0 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xadlock) #6
  %1 = getelementptr inbounds %struct.xdlistlock, ptr %xadlock, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xdlistlock, ptr %xadlock, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xdlistlock, ptr %xadlock, i32 0, i32 5
  %4 = getelementptr inbounds %struct.xdlistlock, ptr %xadlock, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tid)
  %tobool.not = icmp eq i16 %tid, 0
  %5 = call ptr @memset(ptr %xadlock, i32 255, i32 16)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %6 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %tid to i32
  %arrayidx = getelementptr %struct.tblock, ptr %6, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 4
  %9 = trunc i32 %flag to i16
  %conv1 = or i16 %8, %9
  store i16 %conv1, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tblk.0 = phi ptr [ %arrayidx, %if.then ], [ null, %entry.if.end_crit_edge ]
  %and = and i32 %flag, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp.not = icmp eq i32 %and, 16
  br i1 %cmp.not, label %do.end, label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 3180, ptr noundef nonnull @.str.40) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_xtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3180, 0\0A.popsection", ""() #6, !srcloc !156
  unreachable

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and)
  %cmp14 = icmp eq i32 %and, 64
  br i1 %cmp14, label %do.end13.if.end19_crit_edge, label %if.else

do.end13.if.end19_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8, ptr %2, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %1, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %do.end13.if.end19_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %bsize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bsize, align 4
  %conv21 = sext i16 %17 to i32
  %sub = add nsw i32 %conv21, -1
  %conv22 = sext i32 %sub to i64
  %add = add i64 %conv22, %newsize
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 9
  %18 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %l2bsize, align 2
  %conv25 = sext i16 %19 to i32
  %sh_prom = zext i32 %conv25 to i64
  %shr = ashr i64 %add, %sh_prom
  %stack = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 2
  %20 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %stack, ptr %btstack, align 8
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %u = getelementptr i8, ptr %ip, i32 -400
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr)
  %cmp184 = icmp eq i64 %shr, 0
  %21 = trunc i64 %shr to i32
  %addr2.i1021 = getelementptr inbounds %struct.maplock, ptr %xadlock, i32 0, i32 6, i32 1
  %last = getelementptr inbounds %struct.tblock, ptr %tblk.0, i32 0, i32 7
  %next513 = getelementptr inbounds %struct.tblock, ptr %tblk.0, i32 0, i32 6
  %arrayidx654 = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 2, i32 7
  br label %getPage

getPage:                                          ; preds = %getPage.backedge, %if.end19
  %bn.0 = phi i64 [ 0, %if.end19 ], [ %add.i1033, %getPage.backedge ]
  %tlck.0 = phi ptr [ null, %if.end19 ], [ %tlck.9, %getPage.backedge ]
  %xtlck.0 = phi ptr [ null, %if.end19 ], [ %xtlck.6, %getPage.backedge ]
  %nfreed.0 = phi i64 [ 0, %if.end19 ], [ %nfreed.5, %getPage.backedge ]
  %locked_leaves.0 = phi i32 [ 0, %if.end19 ], [ %locked_leaves.3, %getPage.backedge ]
  %newsize.addr.0 = phi i64 [ %newsize, %if.end19 ], [ %newsize.addr.2, %getPage.backedge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bn.0)
  %cmp27 = icmp eq i64 %bn.0, 0
  br i1 %cmp27, label %getPage.if.then53_crit_edge, label %if.else32

getPage.if.then53_crit_edge:                      ; preds = %getPage
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

if.else32:                                        ; preds = %getPage
  %conv33 = trunc i64 %bn.0 to i32
  %call34 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv33, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.else37, label %if.then36

if.then36:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.metapage, ptr %call34, i32 0, i32 7
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  br label %if.then53

if.else37:                                        ; preds = %if.else32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %24 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp39 = icmp sgt i32 %24, 0
  br i1 %cmp39, label %do.end44, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end44:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then53:                                        ; preds = %if.then36, %getPage.if.then53_crit_edge
  %p.0.ph = phi ptr [ %23, %if.then36 ], [ %u, %getPage.if.then53_crit_edge ]
  %mp.0.ph = phi ptr [ %call34, %if.then36 ], [ %bxflag, %getPage.if.then53_crit_edge ]
  %nextindex54 = getelementptr inbounds %struct.xtheader, ptr %p.0.ph, i32 0, i32 4
  %25 = ptrtoint ptr %nextindex54 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nextindex54, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %27)
  %cmp56 = icmp ult i16 %27, 2
  br i1 %cmp56, label %if.then53.if.then70_crit_edge, label %lor.lhs.false

if.then53.if.then70_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

lor.lhs.false:                                    ; preds = %if.then53
  %maxentry = getelementptr inbounds %struct.xtheader, ptr %p.0.ph, i32 0, i32 5
  %28 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %maxentry, align 4
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %30)
  %cmp61 = icmp ugt i16 %27, %30
  br i1 %cmp61, label %lor.lhs.false.if.then70_crit_edge, label %lor.lhs.false63

lor.lhs.false.if.then70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

lor.lhs.false63:                                  ; preds = %lor.lhs.false
  %conv60 = zext i16 %30 to i32
  %cond = select i1 %cmp27, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv60)
  %cmp68 = icmp ult i32 %cond, %conv60
  br i1 %cmp68, label %lor.lhs.false63.if.then70_crit_edge, label %if.end86

lor.lhs.false63.if.then70_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false63.if.then70_crit_edge, %lor.lhs.false.if.then70_crit_edge, %if.then53.if.then70_crit_edge
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %32, ptr noundef nonnull @.str.12) #6
  %33 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mp.0.ph, align 8
  %35 = and i16 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp75 = icmp eq i16 %35, 0
  br i1 %cmp75, label %if.then70.cleanup_crit_edge, label %if.then77

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then77:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %cleanup

if.end86:                                         ; preds = %lor.lhs.false63
  %36 = ptrtoint ptr %nextindex54 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nextindex54, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %conv88 = zext i16 %38 to i32
  %sub89 = add nsw i32 %conv88, -1
  %39 = ptrtoint ptr %p.0.ph to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %p.0.ph, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool90.not = icmp eq i64 %40, 0
  br i1 %tobool90.not, label %if.end86.if.end106_crit_edge, label %if.then91

if.end86.if.end106_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then91:                                        ; preds = %if.end86
  br i1 %cmp14, label %if.then93, label %if.then91.if.end95_crit_edge

if.then91.if.end95_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then93:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  %call94 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.0.ph, i32 noundef 16385) #6
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.then91.if.end95_crit_edge
  %tlck.1 = phi ptr [ %call94, %if.then93 ], [ %tlck.0, %if.then91.if.end95_crit_edge ]
  %41 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mp.0.ph, align 8
  %43 = and i16 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp99 = icmp eq i16 %43, 0
  br i1 %cmp99, label %if.then101, label %if.else102

if.then101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end104

if.else102:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %flag103 = getelementptr inbounds %struct.metapage, ptr %mp.0.ph, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag103) #6
  br label %if.end104

if.end104:                                        ; preds = %if.else102, %if.then101
  %44 = ptrtoint ptr %p.0.ph to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %p.0.ph, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.end104, %if.end86.if.end106_crit_edge
  %tlck.2 = phi ptr [ %tlck.1, %if.end104 ], [ %tlck.0, %if.end86.if.end106_crit_edge ]
  %flag107 = getelementptr inbounds %struct.xtheader, ptr %p.0.ph, i32 0, i32 2
  %45 = ptrtoint ptr %flag107 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %flag107, align 8
  %47 = and i8 %46, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool110.not = icmp eq i8 %47, 0
  br i1 %tobool110.not, label %if.end112, label %if.end106.getChild_crit_edge

if.end106.getChild_crit_edge:                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %getChild

if.end112:                                        ; preds = %if.end106
  %off1 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %sub89, i32 2
  %48 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %off1, align 1
  %conv114 = zext i8 %49 to i64
  %shl = shl nuw nsw i64 %conv114, 32
  %off2 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %sub89, i32 3
  %50 = ptrtoint ptr %off2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %off2, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %conv115 = zext i32 %52 to i64
  %or116 = or i64 %shl, %conv115
  %loc = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %sub89, i32 4
  %53 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %loc, align 4
  %55 = and i32 %54, -256
  %56 = call i32 @llvm.bswap.i32(i32 %55) #6
  %57 = zext i32 %56 to i64
  %add119 = add nuw nsw i64 %or116, %57
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %add119)
  %cmp120.not = icmp slt i64 %shr, %add119
  br i1 %cmp120.not, label %if.end130, label %if.then122

if.then122:                                       ; preds = %if.end112
  %58 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mp.0.ph, align 8
  %60 = and i16 %59, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp126 = icmp eq i16 %60, 0
  br i1 %cmp126, label %if.then122.getParent.preheader_crit_edge, label %if.then128

if.then122.getParent.preheader_crit_edge:         ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %getParent.preheader

if.then128:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %getParent.preheader

if.end130:                                        ; preds = %if.end112
  br i1 %cmp14, label %if.then132, label %if.end130.if.end157_crit_edge

if.end130.if.end157_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.then132:                                       ; preds = %if.end130
  %inc = add i32 %locked_leaves.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc)
  %cmp133 = icmp sgt i32 %inc, 50
  br i1 %cmp133, label %if.then135, label %if.end151

if.then135:                                       ; preds = %if.then132
  %61 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mp.0.ph, align 8
  %63 = and i16 %62, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp139 = icmp eq i16 %63, 0
  br i1 %cmp139, label %if.then135.if.end142_crit_edge, label %if.then141

if.then135.if.end142_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

if.then141:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.then135.if.end142_crit_edge
  %64 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i1002 = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 33
  %66 = ptrtoint ptr %s_fs_info.i1002 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i1002, align 16
  %l2bsize147 = getelementptr inbounds %struct.jfs_sb_info, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %l2bsize147 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %l2bsize147, align 2
  %conv148 = sext i16 %69 to i32
  %sh_prom149 = zext i32 %conv148 to i64
  %shl150 = shl i64 %add119, %sh_prom149
  br label %getParent.preheader

if.end151:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  %call152 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.0.ph, i32 noundef 16384) #6
  %type = getelementptr inbounds %struct.tlock, ptr %call152, i32 0, i32 3
  %70 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 16388, ptr %type, align 2
  %lock = getelementptr inbounds %struct.tlock, ptr %call152, i32 0, i32 6
  %71 = ptrtoint ptr %nextindex54 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %nextindex54, align 2
  %73 = lshr i16 %72, 8
  %conv154 = trunc i16 %73 to i8
  %sub155 = add i8 %conv154, -1
  %hwm = getelementptr inbounds %struct.tlock, ptr %call152, i32 0, i32 6, i32 6
  %74 = ptrtoint ptr %hwm to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %sub155, ptr %hwm, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.end151, %if.end130.if.end157_crit_edge
  %tlck.3 = phi ptr [ %call152, %if.end151 ], [ %tlck.2, %if.end130.if.end157_crit_edge ]
  %xtlck.1 = phi ptr [ %lock, %if.end151 ], [ %xtlck.0, %if.end130.if.end157_crit_edge ]
  %locked_leaves.1 = phi i32 [ %inc, %if.end151 ], [ %locked_leaves.0, %if.end130.if.end157_crit_edge ]
  %75 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %mp.0.ph, align 8
  %77 = and i16 %76, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp161 = icmp eq i16 %77, 0
  br i1 %cmp161, label %if.then163, label %if.else164

if.then163:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end166

if.else164:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  %flag165 = getelementptr inbounds %struct.metapage, ptr %mp.0.ph, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag165) #6
  br label %if.end166

if.end166:                                        ; preds = %if.else164, %if.then163
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %38)
  %cmp1671156 = icmp ugt i16 %38, 2
  br i1 %cmp1671156, label %if.end166.for.body_crit_edge, label %if.end166.for.end_crit_edge

if.end166.for.end_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end166.for.body_crit_edge:                     ; preds = %if.end166
  br label %for.body

for.body:                                         ; preds = %if.then194.for.body_crit_edge, %if.end166.for.body_crit_edge
  %nfreed.11158 = phi i64 [ %add196, %if.then194.for.body_crit_edge ], [ %nfreed.0, %if.end166.for.body_crit_edge ]
  %index.01157 = phi i32 [ %dec, %if.then194.for.body_crit_edge ], [ %sub89, %if.end166.for.body_crit_edge ]
  %off1170 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %index.01157, i32 2
  %78 = ptrtoint ptr %off1170 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %off1170, align 1
  %conv171 = zext i8 %79 to i64
  %shl172 = shl nuw nsw i64 %conv171, 32
  %off2173 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %index.01157, i32 3
  %80 = ptrtoint ptr %off2173 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %off2173, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81)
  %conv174 = zext i32 %82 to i64
  %or175 = or i64 %shl172, %conv174
  %loc176 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %index.01157, i32 4
  %83 = ptrtoint ptr %loc176 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %loc176, align 4
  %85 = and i32 %84, -256
  %86 = call i32 @llvm.bswap.i32(i32 %85) #6
  %87 = shl i32 %84, 24
  %conv.i = zext i32 %87 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %index.01157, i32 4, i32 1
  %88 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr2.i, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #6
  %conv1.i = zext i32 %90 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %91 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %ip, align 8
  %93 = and i16 %92, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %93)
  %cmp182 = icmp eq i16 %93, 16384
  %or.cond = select i1 %cmp182, i1 %cmp184, i1 false
  br i1 %or.cond, label %if.then186, label %for.body.if.end191_crit_edge

for.body.if.end191_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.then186:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__invalidate_metapages(ptr noundef %ip, i64 noundef %add.i, i32 noundef %86) #6
  br label %if.end191

if.end191:                                        ; preds = %if.then186, %for.body.if.end191_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %or175)
  %cmp192 = icmp slt i64 %shr, %or175
  br i1 %cmp192, label %if.then194, label %if.end197

if.then194:                                       ; preds = %if.end191
  %94 = zext i32 %86 to i64
  %add196 = add i64 %nfreed.11158, %94
  %dec = add nsw i32 %index.01157, -1
  %cmp167 = icmp sgt i32 %index.01157, 2
  br i1 %cmp167, label %if.then194.for.body_crit_edge, label %if.then194.for.end_crit_edge

if.then194.for.end_crit_edge:                     ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then194.for.body_crit_edge:                    ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end197:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %or175)
  %cmp198 = icmp eq i64 %shr, %or175
  %95 = zext i32 %86 to i64
  br i1 %cmp198, label %if.then200, label %if.else207

if.then200:                                       ; preds = %if.end197
  %add202 = add i64 %nfreed.11158, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index.01157)
  %cmp203 = icmp eq i32 %index.01157, 2
  br i1 %cmp203, label %if.then200.for.end_crit_edge, label %if.then200.if.end262_crit_edge

if.then200.if.end262_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end262

if.then200.for.end_crit_edge:                     ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.else207:                                       ; preds = %if.end197
  %add209 = add nuw nsw i64 %or175, %95
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %add209)
  %cmp210 = icmp slt i64 %shr, %add209
  br i1 %cmp210, label %if.then212, label %if.else259

if.then212:                                       ; preds = %if.else207
  %conv214 = sub i32 %21, %82
  %sub215 = sub i32 %86, %conv214
  %96 = ptrtoint ptr %loc176 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %loc176, align 4
  %and.i = and i32 %97, 255
  %and1.i = and i32 %conv214, 16777215
  %98 = call i32 @llvm.bswap.i32(i32 %and1.i) #6
  %or.i = or i32 %and.i, %98
  %99 = ptrtoint ptr %loc176 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i, ptr %loc176, align 4
  %conv217 = sext i32 %conv214 to i64
  %add218 = add nsw i64 %add.i, %conv217
  br i1 %cmp14, label %if.then220, label %if.else250

if.then220:                                       ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #8
  %lwm = getelementptr inbounds %struct.xtlock, ptr %xtlck.1, i32 0, i32 7
  %100 = ptrtoint ptr %lwm to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %lwm, align 2
  %conv222 = zext i8 %101 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool223.not = icmp eq i8 %101, 0
  %102 = call i32 @llvm.umin.i32(i32 %index.01157, i32 %conv222)
  %cond234 = select i1 %tobool223.not, i32 %index.01157, i32 %102
  %conv235 = trunc i32 %cond234 to i8
  %103 = ptrtoint ptr %lwm to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv235, ptr %lwm, align 2
  %add238 = add nuw nsw i32 %index.01157, 1
  %sub242 = sub i32 %add238, %cond234
  %conv243 = trunc i32 %sub242 to i8
  %length = getelementptr inbounds %struct.xtlock, ptr %xtlck.1, i32 0, i32 7, i32 1
  %104 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv243, ptr %length, align 1
  %conv245 = trunc i32 %index.01157 to i8
  %twm = getelementptr inbounds %struct.xtlock, ptr %xtlck.1, i32 0, i32 9
  %105 = ptrtoint ptr %twm to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv245, ptr %twm, align 2
  %flag248 = getelementptr inbounds %struct.xtlock, ptr %xtlck.1, i32 0, i32 10, i32 1
  %106 = ptrtoint ptr %flag248 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1, ptr %flag248, align 4
  %pxd = getelementptr inbounds %struct.xtlock, ptr %xtlck.1, i32 0, i32 10, i32 2
  %sum.shift.i = lshr i64 %add218, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i1009 = and i32 %conv7.i, 255
  %conv3.i = trunc i64 %add218 to i32
  %107 = call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  %addr2.i1011 = getelementptr inbounds %struct.xtlock, ptr %xtlck.1, i32 0, i32 10, i32 3
  %108 = ptrtoint ptr %addr2.i1011 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %addr2.i1011, align 4
  %and1.i1013 = and i32 %sub215, 16777215
  %109 = call i32 @llvm.bswap.i32(i32 %and1.i1013) #6
  %or.i1014 = or i32 %conv.i1009, %109
  %110 = ptrtoint ptr %pxd to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i1014, ptr %pxd, align 4
  br label %if.end255

if.else250:                                       ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 1, ptr %2, align 4
  %sum.shift.i1016 = lshr i64 %add218, 32
  %conv7.i1017 = trunc i64 %sum.shift.i1016 to i32
  %conv.i1018 = and i32 %conv7.i1017, 255
  %conv3.i1020 = trunc i64 %add218 to i32
  %112 = call i32 @llvm.bswap.i32(i32 %conv3.i1020) #6
  %113 = ptrtoint ptr %addr2.i1021 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %addr2.i1021, align 4
  %and1.i1023 = and i32 %sub215, 16777215
  %114 = call i32 @llvm.bswap.i32(i32 %and1.i1023) #6
  %or.i1024 = or i32 %conv.i1018, %114
  %115 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i1024, ptr %4, align 8
  call void @txFreeMap(ptr noundef %ip, ptr noundef nonnull %xadlock, ptr noundef null, i32 noundef 32) #6
  %116 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 8, ptr %2, align 4
  %.pre = add nuw nsw i32 %index.01157, 1
  br label %if.end255

if.end255:                                        ; preds = %if.else250, %if.then220
  %add256.pre-phi = phi i32 [ %.pre, %if.else250 ], [ %add238, %if.then220 ]
  %conv257 = sext i32 %sub215 to i64
  %add258 = add i64 %nfreed.11158, %conv257
  br label %if.end262

if.else259:                                       ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #8
  %add260 = add nuw nsw i32 %index.01157, 1
  br label %if.end262

if.end262:                                        ; preds = %if.else259, %if.end255, %if.then200.if.end262_crit_edge
  %nextindex.0 = phi i32 [ %add256.pre-phi, %if.end255 ], [ %add260, %if.else259 ], [ %index.01157, %if.then200.if.end262_crit_edge ]
  %nfreed.2 = phi i64 [ %add258, %if.end255 ], [ %nfreed.11158, %if.else259 ], [ %add202, %if.then200.if.end262_crit_edge ]
  %117 = ptrtoint ptr %nextindex54 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %nextindex54, align 2
  %119 = call i16 @llvm.bswap.i16(i16 %118)
  %conv264 = zext i16 %119 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nextindex.0, i32 %conv264)
  %cmp265 = icmp slt i32 %nextindex.0, %conv264
  br i1 %cmp265, label %if.then267, label %if.end262.if.end278_crit_edge

if.end262.if.end278_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end278

if.then267:                                       ; preds = %if.end262
  br i1 %cmp14, label %if.then267.if.end275_crit_edge, label %if.then269

if.then267.if.end275_crit_edge:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end275

if.then269:                                       ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx270 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 %nextindex.0
  %120 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %arrayidx270, ptr %4, align 8
  %121 = lshr i16 %118, 8
  %conv272 = zext i16 %121 to i32
  %sub273 = sub nsw i32 %conv272, %nextindex.0
  %conv274 = trunc i32 %sub273 to i8
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv274, ptr %3, align 1
  call void @txFreeMap(ptr noundef %ip, ptr noundef nonnull %xadlock, ptr noundef null, i32 noundef 32) #6
  br label %if.end275

if.end275:                                        ; preds = %if.then269, %if.then267.if.end275_crit_edge
  %conv276 = trunc i32 %nextindex.0 to i16
  %123 = call i16 @llvm.bswap.i16(i16 %conv276)
  %124 = ptrtoint ptr %nextindex54 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %nextindex54, align 2
  br label %if.end278

if.end278:                                        ; preds = %if.end275, %if.end262.if.end278_crit_edge
  %125 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %mp.0.ph, align 8
  %127 = and i16 %126, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %cmp282 = icmp eq i16 %127, 0
  br i1 %cmp282, label %if.end278.getParent.preheader_crit_edge, label %if.then284

if.end278.getParent.preheader_crit_edge:          ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #8
  br label %getParent.preheader

if.then284:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %getParent.preheader

for.end:                                          ; preds = %if.then200.for.end_crit_edge, %if.then194.for.end_crit_edge, %if.end166.for.end_crit_edge
  %nfreed.3 = phi i64 [ %add202, %if.then200.for.end_crit_edge ], [ %nfreed.0, %if.end166.for.end_crit_edge ], [ %add196, %if.then194.for.end_crit_edge ]
  br i1 %cmp14, label %if.end297, label %if.end297.thread

if.end297:                                        ; preds = %for.end
  %type288 = getelementptr inbounds %struct.tlock, ptr %tlck.3, i32 0, i32 3
  %128 = ptrtoint ptr %type288 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 16448, ptr %type288, align 2
  %129 = ptrtoint ptr %flag107 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %flag107, align 8
  %131 = and i8 %130, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool301.not = icmp eq i8 %131, 0
  br i1 %tobool301.not, label %if.then321, label %if.end297.if.then302_crit_edge

if.end297.if.then302_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then302

if.end297.thread:                                 ; preds = %for.end
  %arrayidx290 = getelementptr [18 x %struct.xad], ptr %p.0.ph, i32 0, i32 2
  %132 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %arrayidx290, ptr %4, align 8
  %133 = ptrtoint ptr %nextindex54 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %nextindex54, align 2
  %135 = lshr i16 %134, 8
  %conv293 = trunc i16 %135 to i8
  %sub294 = add i8 %conv293, -2
  %136 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %sub294, ptr %3, align 1
  call void @txFreeMap(ptr noundef %ip, ptr noundef nonnull %xadlock, ptr noundef null, i32 noundef 32) #6
  %137 = ptrtoint ptr %flag107 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %flag107, align 8
  %139 = and i8 %138, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool301.not1052 = icmp eq i8 %139, 0
  br i1 %tobool301.not1052, label %if.else329, label %if.end297.thread.if.then302_crit_edge

if.end297.thread.if.then302_crit_edge:            ; preds = %if.end297.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then302

if.then302:                                       ; preds = %if.end297.thread.if.then302_crit_edge, %if.end297.if.then302_crit_edge
  %140 = phi i8 [ %138, %if.end297.thread.if.then302_crit_edge ], [ %130, %if.end297.if.then302_crit_edge ]
  %and305 = and i8 %140, -7
  %141 = or i8 %and305, 2
  %142 = ptrtoint ptr %flag107 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %flag107, align 8
  %143 = ptrtoint ptr %nextindex54 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 512, ptr %nextindex54, align 2
  %144 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %mp.0.ph, align 8
  %146 = and i16 %145, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %cmp315 = icmp eq i16 %146, 0
  br i1 %cmp315, label %if.then302.out_crit_edge, label %if.then302.out.sink.split_crit_edge

if.then302.out.sink.split_crit_edge:              ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.then302.out_crit_edge:                         ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then321:                                       ; preds = %if.end297
  %147 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %mp.0.ph, align 8
  %149 = and i16 %148, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp325 = icmp eq i16 %149, 0
  br i1 %cmp325, label %if.then321.getParent.preheader_crit_edge, label %if.then327

if.then321.getParent.preheader_crit_edge:         ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #8
  br label %getParent.preheader

if.then327:                                       ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %getParent.preheader

if.else329:                                       ; preds = %if.end297.thread
  %lid = getelementptr inbounds %struct.metapage, ptr %mp.0.ph, i32 0, i32 2
  %150 = ptrtoint ptr %lid to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %lid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool330.not = icmp eq i16 %151, 0
  br i1 %tobool330.not, label %if.else329.if.end339_crit_edge, label %if.then331

if.else329.if.end339_crit_edge:                   ; preds = %if.else329
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end339

if.then331:                                       ; preds = %if.else329
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxLock to i32))
  %152 = load ptr, ptr @TxLock, align 4
  %idxprom333 = zext i16 %151 to i32
  %flag335 = getelementptr %struct.tlock, ptr %152, i32 %idxprom333, i32 2
  %153 = ptrtoint ptr %flag335 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %flag335, align 4
  %155 = or i16 %154, 8
  store i16 %155, ptr %flag335, align 4
  br label %if.end339

if.end339:                                        ; preds = %if.then331, %if.else329.if.end339_crit_edge
  %flag.i = getelementptr inbounds %struct.metapage, ptr %mp.0.ph, i32 0, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %flag.i) #6
  call void @_set_bit(i32 noundef 4, ptr noundef %flag.i) #6
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %getParent.preheader

getParent.preheader:                              ; preds = %if.end339, %if.then327, %if.then321.getParent.preheader_crit_edge, %if.then284, %if.end278.getParent.preheader_crit_edge, %if.end142, %if.then128, %if.then122.getParent.preheader_crit_edge
  %tlck.4.ph = phi ptr [ %tlck.2, %if.end142 ], [ %tlck.2, %if.then128 ], [ %tlck.2, %if.then122.getParent.preheader_crit_edge ], [ %tlck.3, %if.then284 ], [ %tlck.3, %if.end278.getParent.preheader_crit_edge ], [ %tlck.3, %if.end339 ], [ %tlck.3, %if.then327 ], [ %tlck.3, %if.then321.getParent.preheader_crit_edge ]
  %xtlck.2.ph = phi ptr [ %xtlck.0, %if.end142 ], [ %xtlck.0, %if.then128 ], [ %xtlck.0, %if.then122.getParent.preheader_crit_edge ], [ %xtlck.1, %if.then284 ], [ %xtlck.1, %if.end278.getParent.preheader_crit_edge ], [ %xtlck.1, %if.end339 ], [ %xtlck.1, %if.then327 ], [ %xtlck.1, %if.then321.getParent.preheader_crit_edge ]
  %nfreed.4.ph = phi i64 [ %nfreed.0, %if.end142 ], [ %nfreed.0, %if.then128 ], [ %nfreed.0, %if.then122.getParent.preheader_crit_edge ], [ %nfreed.2, %if.then284 ], [ %nfreed.2, %if.end278.getParent.preheader_crit_edge ], [ %nfreed.3, %if.end339 ], [ %nfreed.3, %if.then327 ], [ %nfreed.3, %if.then321.getParent.preheader_crit_edge ]
  %cmp427.ph = phi i1 [ true, %if.end142 ], [ true, %if.then128 ], [ true, %if.then122.getParent.preheader_crit_edge ], [ true, %if.then284 ], [ true, %if.end278.getParent.preheader_crit_edge ], [ false, %if.end339 ], [ false, %if.then327 ], [ false, %if.then321.getParent.preheader_crit_edge ]
  %locked_leaves.2.ph = phi i32 [ %inc, %if.end142 ], [ %locked_leaves.0, %if.then128 ], [ %locked_leaves.0, %if.then122.getParent.preheader_crit_edge ], [ %locked_leaves.1, %if.then284 ], [ %locked_leaves.1, %if.end278.getParent.preheader_crit_edge ], [ %locked_leaves.1, %if.end339 ], [ %locked_leaves.1, %if.then327 ], [ %locked_leaves.1, %if.then321.getParent.preheader_crit_edge ]
  %newsize.addr.1.ph = phi i64 [ %shl150, %if.end142 ], [ %newsize.addr.0, %if.then128 ], [ %newsize.addr.0, %if.then122.getParent.preheader_crit_edge ], [ %newsize.addr.0, %if.then284 ], [ %newsize.addr.0, %if.end278.getParent.preheader_crit_edge ], [ %newsize.addr.0, %if.end339 ], [ %newsize.addr.0, %if.then327 ], [ %newsize.addr.0, %if.then321.getParent.preheader_crit_edge ]
  %156 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %btstack, align 8
  %cmp34511601170 = icmp eq ptr %157, %stack
  br i1 %cmp34511601170, label %getParent.preheader.out_crit_edge, label %getParent.preheader.cond.end350.lr.ph_crit_edge

getParent.preheader.cond.end350.lr.ph_crit_edge:  ; preds = %getParent.preheader
  br label %cond.end350.lr.ph

getParent.preheader.out_crit_edge:                ; preds = %getParent.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cond.end350.lr.ph:                                ; preds = %if.end649.cond.end350.lr.ph_crit_edge, %getParent.preheader.cond.end350.lr.ph_crit_edge
  %158 = phi ptr [ %263, %if.end649.cond.end350.lr.ph_crit_edge ], [ %157, %getParent.preheader.cond.end350.lr.ph_crit_edge ]
  %cmp427.ph10841174 = phi i1 [ false, %if.end649.cond.end350.lr.ph_crit_edge ], [ %cmp427.ph, %getParent.preheader.cond.end350.lr.ph_crit_edge ]
  %nfreed.4.ph10831173 = phi i64 [ %add489, %if.end649.cond.end350.lr.ph_crit_edge ], [ %nfreed.4.ph, %getParent.preheader.cond.end350.lr.ph_crit_edge ]
  %xtlck.2.ph10821172 = phi ptr [ %xtlck.5, %if.end649.cond.end350.lr.ph_crit_edge ], [ %xtlck.2.ph, %getParent.preheader.cond.end350.lr.ph_crit_edge ]
  %tlck.4.ph10811171 = phi ptr [ %tlck.8, %if.end649.cond.end350.lr.ph_crit_edge ], [ %tlck.4.ph, %getParent.preheader.cond.end350.lr.ph_crit_edge ]
  br label %cond.end350

cond.end350:                                      ; preds = %if.end483.cond.end350_crit_edge, %cond.end350.lr.ph
  %159 = phi ptr [ %158, %cond.end350.lr.ph ], [ %203, %if.end483.cond.end350_crit_edge ]
  %cmp4271163 = phi i1 [ %cmp427.ph10841174, %cond.end350.lr.ph ], [ true, %if.end483.cond.end350_crit_edge ]
  %xtlck.21162 = phi ptr [ %xtlck.2.ph10821172, %cond.end350.lr.ph ], [ %xtlck.4, %if.end483.cond.end350_crit_edge ]
  %tlck.41161 = phi ptr [ %tlck.4.ph10811171, %cond.end350.lr.ph ], [ %tlck.6, %if.end483.cond.end350_crit_edge ]
  %incdec.ptr = getelementptr %struct.btframe, ptr %159, i32 -1
  %160 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %incdec.ptr, ptr %btstack, align 8
  %cmp352 = icmp eq ptr %incdec.ptr, null
  br i1 %cmp352, label %cond.end350.out_crit_edge, label %if.end355

cond.end350.out_crit_edge:                        ; preds = %cond.end350
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end355:                                        ; preds = %cond.end350
  %161 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %incdec.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %162)
  %cmp358 = icmp eq i64 %162, 0
  br i1 %cmp358, label %if.end355.if.then388_crit_edge, label %if.else366

if.end355.if.then388_crit_edge:                   ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then388

if.else366:                                       ; preds = %if.end355
  %conv367 = trunc i64 %162 to i32
  %call368 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv367, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool369.not = icmp eq ptr %call368, null
  br i1 %tobool369.not, label %if.else372, label %if.then370

if.then370:                                       ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #8
  %data371 = getelementptr inbounds %struct.metapage, ptr %call368, i32 0, i32 7
  %163 = ptrtoint ptr %data371 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %data371, align 4
  br label %if.then388

if.else372:                                       ; preds = %if.else366
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %165 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp374 = icmp sgt i32 %165, 0
  br i1 %cmp374, label %do.end379, label %if.else372.cleanup_crit_edge

if.else372.cleanup_crit_edge:                     ; preds = %if.else372
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end379:                                        ; preds = %if.else372
  call void @__sanitizer_cov_trace_pc() #8
  %call381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then388:                                       ; preds = %if.then370, %if.end355.if.then388_crit_edge
  %p.1.ph = phi ptr [ %164, %if.then370 ], [ %u, %if.end355.if.then388_crit_edge ]
  %mp.2.ph = phi ptr [ %call368, %if.then370 ], [ %bxflag, %if.end355.if.then388_crit_edge ]
  %nextindex389 = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 4
  %166 = ptrtoint ptr %nextindex389 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %nextindex389, align 2
  %168 = call i16 @llvm.bswap.i16(i16 %167)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %168)
  %cmp391 = icmp ult i16 %168, 2
  br i1 %cmp391, label %if.then388.if.then408_crit_edge, label %lor.lhs.false393

if.then388.if.then408_crit_edge:                  ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then408

lor.lhs.false393:                                 ; preds = %if.then388
  %maxentry396 = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 5
  %169 = ptrtoint ptr %maxentry396 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %maxentry396, align 4
  %171 = call i16 @llvm.bswap.i16(i16 %170)
  call void @__sanitizer_cov_trace_cmp2(i16 %168, i16 %171)
  %cmp398 = icmp ugt i16 %168, %171
  br i1 %cmp398, label %lor.lhs.false393.if.then408_crit_edge, label %lor.lhs.false400

lor.lhs.false393.if.then408_crit_edge:            ; preds = %lor.lhs.false393
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then408

lor.lhs.false400:                                 ; preds = %lor.lhs.false393
  %conv397 = zext i16 %171 to i32
  %cond405 = select i1 %cmp358, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond405, i32 %conv397)
  %cmp406 = icmp ult i32 %cond405, %conv397
  br i1 %cmp406, label %lor.lhs.false400.if.then408_crit_edge, label %if.end424

lor.lhs.false400.if.then408_crit_edge:            ; preds = %lor.lhs.false400
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then408

if.then408:                                       ; preds = %lor.lhs.false400.if.then408_crit_edge, %lor.lhs.false393.if.then408_crit_edge, %if.then388.if.then408_crit_edge
  %172 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %173, ptr noundef nonnull @.str.12) #6
  %174 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %mp.2.ph, align 8
  %176 = and i16 %175, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %cmp413 = icmp eq i16 %176, 0
  br i1 %cmp413, label %if.then408.cleanup_crit_edge, label %if.then415

if.then408.cleanup_crit_edge:                     ; preds = %if.then408
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then415:                                       ; preds = %if.then408
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.2.ph) #6
  br label %cleanup

if.end424:                                        ; preds = %lor.lhs.false400
  %index425 = getelementptr %struct.btframe, ptr %159, i32 -1, i32 1
  %177 = ptrtoint ptr %index425 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %index425, align 8
  %conv426 = sext i16 %178 to i32
  br i1 %cmp4271163, label %if.then429, label %if.end484

if.then429:                                       ; preds = %if.end424
  %179 = ptrtoint ptr %nextindex389 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %nextindex389, align 2
  %181 = call i16 @llvm.bswap.i16(i16 %180)
  %conv431 = zext i16 %181 to i32
  %sub432 = add nsw i32 %conv431, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub432, i32 %conv426)
  %cmp433 = icmp sgt i32 %sub432, %conv426
  br i1 %cmp433, label %if.then435, label %if.then429.if.end476_crit_edge

if.then429.if.end476_crit_edge:                   ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end476

if.then435:                                       ; preds = %if.then429
  br i1 %cmp14, label %if.then437, label %if.else453

if.then437:                                       ; preds = %if.then435
  %call438 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.2.ph, i32 noundef 16384) #6
  %lock439 = getelementptr inbounds %struct.tlock, ptr %call438, i32 0, i32 6
  %type440 = getelementptr inbounds %struct.tlock, ptr %call438, i32 0, i32 3
  %182 = ptrtoint ptr %type440 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %type440, align 2
  %184 = and i16 %183, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %tobool443.not = icmp eq i16 %184, 0
  br i1 %tobool443.not, label %if.then444, label %if.then437.if.end463_crit_edge

if.then437.if.end463_crit_edge:                   ; preds = %if.then437
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end463

if.then444:                                       ; preds = %if.then437
  call void @__sanitizer_cov_trace_pc() #8
  %185 = ptrtoint ptr %nextindex389 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %nextindex389, align 2
  %187 = lshr i16 %186, 8
  %conv446 = trunc i16 %187 to i8
  %sub447 = add i8 %conv446, -1
  %hwm449 = getelementptr inbounds %struct.tlock, ptr %call438, i32 0, i32 6, i32 6
  %188 = ptrtoint ptr %hwm449 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %sub447, ptr %hwm449, align 4
  %189 = ptrtoint ptr %type440 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 16388, ptr %type440, align 2
  br label %if.end463

if.else453:                                       ; preds = %if.then435
  call void @__sanitizer_cov_trace_pc() #8
  %add454 = add nsw i32 %conv426, 1
  %arrayidx455 = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 %add454
  %190 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %arrayidx455, ptr %4, align 8
  %191 = lshr i16 %180, 8
  %192 = xor i16 %178, -1
  %sub460 = add i16 %191, %192
  %conv461 = trunc i16 %sub460 to i8
  %193 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv461, ptr %3, align 1
  call void @txFreeMap(ptr noundef %ip, ptr noundef nonnull %xadlock, ptr noundef null, i32 noundef 32) #6
  br label %if.end463

if.end463:                                        ; preds = %if.else453, %if.then444, %if.then437.if.end463_crit_edge
  %tlck.5 = phi ptr [ %call438, %if.then437.if.end463_crit_edge ], [ %call438, %if.then444 ], [ %tlck.41161, %if.else453 ]
  %xtlck.3 = phi ptr [ %lock439, %if.then437.if.end463_crit_edge ], [ %lock439, %if.then444 ], [ %xtlck.21162, %if.else453 ]
  %194 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %mp.2.ph, align 8
  %196 = and i16 %195, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %cmp467 = icmp eq i16 %196, 0
  br i1 %cmp467, label %if.then469, label %if.else470

if.then469:                                       ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end472

if.else470:                                       ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #8
  %flag471 = getelementptr inbounds %struct.metapage, ptr %mp.2.ph, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag471) #6
  br label %if.end472

if.end472:                                        ; preds = %if.else470, %if.then469
  %add473 = add i16 %178, 1
  %197 = call i16 @llvm.bswap.i16(i16 %add473)
  %198 = ptrtoint ptr %nextindex389 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %197, ptr %nextindex389, align 2
  br label %if.end476

if.end476:                                        ; preds = %if.end472, %if.then429.if.end476_crit_edge
  %tlck.6 = phi ptr [ %tlck.5, %if.end472 ], [ %tlck.41161, %if.then429.if.end476_crit_edge ]
  %xtlck.4 = phi ptr [ %xtlck.3, %if.end472 ], [ %xtlck.21162, %if.then429.if.end476_crit_edge ]
  %199 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %mp.2.ph, align 8
  %201 = and i16 %200, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %201)
  %cmp480 = icmp eq i16 %201, 0
  br i1 %cmp480, label %if.end476.if.end483_crit_edge, label %if.then482

if.end476.if.end483_crit_edge:                    ; preds = %if.end476
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end483

if.then482:                                       ; preds = %if.end476
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.2.ph) #6
  br label %if.end483

if.end483:                                        ; preds = %if.then482, %if.end476.if.end483_crit_edge
  %202 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %btstack, align 8
  %cmp345 = icmp eq ptr %203, %stack
  br i1 %cmp345, label %if.end483.out_crit_edge, label %if.end483.cond.end350_crit_edge

if.end483.cond.end350_crit_edge:                  ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end350

if.end483.out_crit_edge:                          ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end484:                                        ; preds = %if.end424
  %conv426.le = sext i16 %178 to i32
  %loc486 = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 %conv426.le, i32 4
  %204 = ptrtoint ptr %loc486 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %loc486, align 4
  %206 = and i32 %205, -256
  %207 = call i32 @llvm.bswap.i32(i32 %206) #6
  %conv488 = zext i32 %207 to i64
  %add489 = add i64 %nfreed.4.ph10831173, %conv488
  br i1 %cmp14, label %land.lhs.true491, label %if.end564.thread

land.lhs.true491:                                 ; preds = %if.end484
  %lid492 = getelementptr inbounds %struct.metapage, ptr %mp.2.ph, i32 0, i32 2
  %208 = ptrtoint ptr %lid492 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %lid492, align 4
  %conv493 = zext i16 %209 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %209)
  %tobool494.not = icmp eq i16 %209, 0
  br i1 %tobool494.not, label %land.lhs.true491.if.end564_crit_edge, label %land.lhs.true495

land.lhs.true491.if.end564_crit_edge:             ; preds = %land.lhs.true491
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end564

land.lhs.true495:                                 ; preds = %land.lhs.true491
  %210 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %last, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %211, i16 %209)
  %cmp499.not = icmp eq i16 %211, %209
  br i1 %cmp499.not, label %land.lhs.true495.if.end564_crit_edge, label %land.lhs.true501

land.lhs.true495.if.end564_crit_edge:             ; preds = %land.lhs.true495
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end564

land.lhs.true501:                                 ; preds = %land.lhs.true495
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxLock to i32))
  %212 = load ptr, ptr @TxLock, align 4
  %arrayidx504 = getelementptr %struct.tlock, ptr %212, i32 %conv493
  %tid505 = getelementptr %struct.tlock, ptr %212, i32 %conv493, i32 1
  %213 = ptrtoint ptr %tid505 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %tid505, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %tobool507.not = icmp eq i16 %214, 0
  br i1 %tobool507.not, label %land.lhs.true501.if.end564_crit_edge, label %if.then508

land.lhs.true501.if.end564_crit_edge:             ; preds = %land.lhs.true501
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end564

if.then508:                                       ; preds = %land.lhs.true501
  %215 = ptrtoint ptr %next513 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %next513, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %216, i16 %209)
  %cmp516 = icmp eq i16 %216, %209
  br i1 %cmp516, label %if.then508.if.end557_crit_edge, label %if.then508.for.cond525_crit_edge

if.then508.for.cond525_crit_edge:                 ; preds = %if.then508
  br label %for.cond525

if.then508.if.end557_crit_edge:                   ; preds = %if.then508
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end557

for.cond525:                                      ; preds = %do.body532.for.cond525_crit_edge, %if.then508.for.cond525_crit_edge
  %conv514.pn.in = phi i16 [ %218, %do.body532.for.cond525_crit_edge ], [ %216, %if.then508.for.cond525_crit_edge ]
  %conv514.pn = zext i16 %conv514.pn.in to i32
  %prev.0 = getelementptr %struct.tlock, ptr %212, i32 %conv514.pn
  %217 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %prev.0, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %218, i16 %209)
  %cmp529.not = icmp eq i16 %218, %209
  br i1 %cmp529.not, label %for.cond525.if.end557_crit_edge, label %do.body532

for.cond525.if.end557_crit_edge:                  ; preds = %for.cond525
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end557

do.body532:                                       ; preds = %for.cond525
  %tobool534.not = icmp eq i16 %218, 0
  br i1 %tobool534.not, label %do.end538, label %do.body532.for.cond525_crit_edge

do.body532.for.cond525_crit_edge:                 ; preds = %do.body532
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond525

do.end538:                                        ; preds = %do.body532
  call void @__sanitizer_cov_trace_pc() #8
  %call540 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 3545, ptr noundef nonnull @.str.47) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_xtree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3545, 0\0A.popsection", ""() #6, !srcloc !157
  unreachable

if.end557:                                        ; preds = %for.cond525.if.end557_crit_edge, %if.then508.if.end557_crit_edge
  %prev.0.lcssa.sink = phi ptr [ %next513, %if.then508.if.end557_crit_edge ], [ %prev.0, %for.cond525.if.end557_crit_edge ]
  %219 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %arrayidx504, align 4
  %221 = ptrtoint ptr %prev.0.lcssa.sink to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %220, ptr %prev.0.lcssa.sink, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxLock to i32))
  %222 = load ptr, ptr @TxLock, align 4
  %223 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %last, align 2
  %idxprom559 = zext i16 %224 to i32
  %arrayidx560 = getelementptr %struct.tlock, ptr %222, i32 %idxprom559
  %225 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %209, ptr %arrayidx560, align 4
  store i16 0, ptr %arrayidx504, align 4
  store i16 %209, ptr %last, align 2
  br label %if.end564

if.end564:                                        ; preds = %if.end557, %land.lhs.true501.if.end564_crit_edge, %land.lhs.true495.if.end564_crit_edge, %land.lhs.true491.if.end564_crit_edge
  %tlck.7 = phi ptr [ %arrayidx504, %if.end557 ], [ %tlck.41161, %land.lhs.true501.if.end564_crit_edge ], [ %tlck.41161, %land.lhs.true495.if.end564_crit_edge ], [ %tlck.41161, %land.lhs.true491.if.end564_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %178)
  %cmp565 = icmp eq i16 %178, 2
  br i1 %cmp565, label %if.then569, label %if.end564.if.else650_crit_edge

if.end564.if.else650_crit_edge:                   ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else650

if.end564.thread:                                 ; preds = %if.end484
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %178)
  %cmp5651074 = icmp eq i16 %178, 2
  br i1 %cmp5651074, label %if.else579, label %if.end564.thread.if.else650_crit_edge

if.end564.thread.if.else650_crit_edge:            ; preds = %if.end564.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else650

if.then569:                                       ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #8
  %call570 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.2.ph, i32 noundef 16384) #6
  %lock571 = getelementptr inbounds %struct.tlock, ptr %call570, i32 0, i32 6
  %226 = ptrtoint ptr %nextindex389 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %nextindex389, align 2
  %228 = lshr i16 %227, 8
  %conv573 = trunc i16 %228 to i8
  %sub574 = add i8 %conv573, -1
  %hwm576 = getelementptr inbounds %struct.tlock, ptr %call570, i32 0, i32 6, i32 6
  %229 = ptrtoint ptr %hwm576 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %sub574, ptr %hwm576, align 4
  %type578 = getelementptr inbounds %struct.tlock, ptr %call570, i32 0, i32 3
  %230 = ptrtoint ptr %type578 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 16448, ptr %type578, align 2
  br label %if.end587

if.else579:                                       ; preds = %if.end564.thread
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx580 = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 2
  %231 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %arrayidx580, ptr %4, align 8
  %232 = ptrtoint ptr %nextindex389 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %nextindex389, align 2
  %234 = lshr i16 %233, 8
  %conv583 = trunc i16 %234 to i8
  %sub584 = add i8 %conv583, -2
  %235 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %sub584, ptr %3, align 1
  call void @txFreeMap(ptr noundef %ip, ptr noundef nonnull %xadlock, ptr noundef null, i32 noundef 32) #6
  br label %if.end587

if.end587:                                        ; preds = %if.else579, %if.then569
  %tlck.8 = phi ptr [ %call570, %if.then569 ], [ %tlck.41161, %if.else579 ]
  %xtlck.5 = phi ptr [ %lock571, %if.then569 ], [ %xtlck.21162, %if.else579 ]
  %236 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %mp.2.ph, align 8
  %238 = and i16 %237, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %cmp591 = icmp eq i16 %238, 0
  br i1 %cmp591, label %if.then593, label %if.else594

if.then593:                                       ; preds = %if.end587
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end596

if.else594:                                       ; preds = %if.end587
  call void @__sanitizer_cov_trace_pc() #8
  %flag595 = getelementptr inbounds %struct.metapage, ptr %mp.2.ph, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag595) #6
  br label %if.end596

if.end596:                                        ; preds = %if.else594, %if.then593
  %flag597 = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 2
  %239 = ptrtoint ptr %flag597 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %flag597, align 8
  %241 = and i8 %240, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool600.not = icmp eq i8 %241, 0
  br i1 %tobool600.not, label %if.else627, label %if.then601

if.then601:                                       ; preds = %if.end596
  %maxentry396.le.le = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 5
  %flag597.le = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 2
  %and604 = and i8 %240, -7
  %242 = or i8 %and604, 2
  %243 = ptrtoint ptr %flag597.le to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %flag597.le, align 8
  %244 = ptrtoint ptr %nextindex389 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 512, ptr %nextindex389, align 2
  %245 = ptrtoint ptr %maxentry396.le.le to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %maxentry396.le.le, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4608, i16 %246)
  %cmp613 = icmp eq i16 %246, 4608
  br i1 %cmp613, label %if.then615, label %if.then601.if.end619_crit_edge

if.then601.if.end619_crit_edge:                   ; preds = %if.then601
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end619

if.then615:                                       ; preds = %if.then601
  call void @__sanitizer_cov_trace_pc() #8
  %247 = ptrtoint ptr %maxentry396.le.le to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 2560, ptr %maxentry396.le.le, align 4
  %mode2 = getelementptr i8, ptr %ip, i32 -844
  %248 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %mode2, align 4
  %or618 = or i32 %249, 262144
  store i32 %or618, ptr %mode2, align 4
  br label %if.end619

if.end619:                                        ; preds = %if.then615, %if.then601.if.end619_crit_edge
  %250 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %mp.2.ph, align 8
  %252 = and i16 %251, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %cmp623 = icmp eq i16 %252, 0
  br i1 %cmp623, label %if.end619.out_crit_edge, label %if.end619.out.sink.split_crit_edge

if.end619.out.sink.split_crit_edge:               ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end619.out_crit_edge:                          ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else627:                                       ; preds = %if.end596
  br i1 %cmp14, label %if.then629, label %if.else637

if.then629:                                       ; preds = %if.else627
  %253 = ptrtoint ptr %mp.2.ph to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %mp.2.ph, align 8
  %255 = and i16 %254, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %255)
  %cmp633 = icmp eq i16 %255, 0
  br i1 %cmp633, label %if.then629.if.end649_crit_edge, label %if.then629.if.end649.sink.split_crit_edge

if.then629.if.end649.sink.split_crit_edge:        ; preds = %if.then629
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end649.sink.split

if.then629.if.end649_crit_edge:                   ; preds = %if.then629
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end649

if.else637:                                       ; preds = %if.else627
  %lid638 = getelementptr inbounds %struct.metapage, ptr %mp.2.ph, i32 0, i32 2
  %256 = ptrtoint ptr %lid638 to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %lid638, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %257)
  %tobool639.not = icmp eq i16 %257, 0
  br i1 %tobool639.not, label %if.else637.if.end648_crit_edge, label %if.then640

if.else637.if.end648_crit_edge:                   ; preds = %if.else637
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end648

if.then640:                                       ; preds = %if.else637
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxLock to i32))
  %258 = load ptr, ptr @TxLock, align 4
  %idxprom642 = zext i16 %257 to i32
  %flag644 = getelementptr %struct.tlock, ptr %258, i32 %idxprom642, i32 2
  %259 = ptrtoint ptr %flag644 to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %flag644, align 4
  %261 = or i16 %260, 8
  store i16 %261, ptr %flag644, align 4
  br label %if.end648

if.end648:                                        ; preds = %if.then640, %if.else637.if.end648_crit_edge
  %flag.i1028 = getelementptr inbounds %struct.metapage, ptr %mp.2.ph, i32 0, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %flag.i1028) #6
  call void @_set_bit(i32 noundef 4, ptr noundef %flag.i1028) #6
  br label %if.end649.sink.split

if.end649.sink.split:                             ; preds = %if.end648, %if.then629.if.end649.sink.split_crit_edge
  call void @release_metapage(ptr noundef %mp.2.ph) #6
  br label %if.end649

if.end649:                                        ; preds = %if.end649.sink.split, %if.then629.if.end649_crit_edge
  %262 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %btstack, align 8
  %cmp3451160 = icmp eq ptr %263, %stack
  br i1 %cmp3451160, label %if.end649.out_crit_edge, label %if.end649.cond.end350.lr.ph_crit_edge

if.end649.cond.end350.lr.ph_crit_edge:            ; preds = %if.end649
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end350.lr.ph

if.end649.out_crit_edge:                          ; preds = %if.end649
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else650:                                       ; preds = %if.end564.thread.if.else650_crit_edge, %if.end564.if.else650_crit_edge
  %tlck.71078 = phi ptr [ %tlck.41161, %if.end564.thread.if.else650_crit_edge ], [ %tlck.7, %if.end564.if.else650_crit_edge ]
  %dec651 = add nsw i32 %conv426.le, -1
  br label %getChild

getChild:                                         ; preds = %if.else650, %if.end106.getChild_crit_edge
  %p.2 = phi ptr [ %p.0.ph, %if.end106.getChild_crit_edge ], [ %p.1.ph, %if.else650 ]
  %bn.1 = phi i64 [ %bn.0, %if.end106.getChild_crit_edge ], [ %162, %if.else650 ]
  %index.1 = phi i32 [ %sub89, %if.end106.getChild_crit_edge ], [ %dec651, %if.else650 ]
  %tlck.9 = phi ptr [ %tlck.2, %if.end106.getChild_crit_edge ], [ %tlck.71078, %if.else650 ]
  %xtlck.6 = phi ptr [ %xtlck.0, %if.end106.getChild_crit_edge ], [ %xtlck.21162, %if.else650 ]
  %nfreed.5 = phi i64 [ %nfreed.0, %if.end106.getChild_crit_edge ], [ %add489, %if.else650 ]
  %locked_leaves.3 = phi i32 [ %locked_leaves.0, %if.end106.getChild_crit_edge ], [ %locked_leaves.2.ph, %if.else650 ]
  %mp.4 = phi ptr [ %mp.0.ph, %if.end106.getChild_crit_edge ], [ %mp.2.ph, %if.else650 ]
  %newsize.addr.2 = phi i64 [ %newsize.addr.0, %if.end106.getChild_crit_edge ], [ %newsize.addr.1.ph, %if.else650 ]
  %264 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %btstack, align 8
  %cmp655 = icmp eq ptr %265, %arrayidx654
  br i1 %cmp655, label %if.then657, label %do.end687

if.then657:                                       ; preds = %getChild
  %266 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %267, ptr noundef nonnull @.str.48) #6
  %268 = ptrtoint ptr %mp.4 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %mp.4, align 8
  %270 = and i16 %269, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %270)
  %cmp662 = icmp eq i16 %270, 0
  br i1 %cmp662, label %if.then657.cleanup_crit_edge, label %if.then664

if.then657.cleanup_crit_edge:                     ; preds = %if.then657
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then664:                                       ; preds = %if.then657
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.4) #6
  br label %cleanup

do.end687:                                        ; preds = %getChild
  %271 = ptrtoint ptr %265 to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 %bn.1, ptr %265, align 8
  %conv690 = trunc i32 %index.1 to i16
  %272 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %btstack, align 8
  %index692 = getelementptr inbounds %struct.btframe, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %index692 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %conv690, ptr %index692, align 8
  %incdec.ptr694 = getelementptr %struct.btframe, ptr %273, i32 1
  store ptr %incdec.ptr694, ptr %btstack, align 8
  %loc696 = getelementptr [18 x %struct.xad], ptr %p.2, i32 0, i32 %index.1, i32 4
  %275 = ptrtoint ptr %loc696 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %loc696, align 4
  %277 = shl i32 %276, 24
  %conv.i1029 = zext i32 %277 to i64
  %shl.i1030 = shl nuw nsw i64 %conv.i1029, 8
  %addr2.i1031 = getelementptr [18 x %struct.xad], ptr %p.2, i32 0, i32 %index.1, i32 4, i32 1
  %278 = ptrtoint ptr %addr2.i1031 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %addr2.i1031, align 4
  %280 = call i32 @llvm.bswap.i32(i32 %279) #6
  %conv1.i1032 = zext i32 %280 to i64
  %add.i1033 = or i64 %shl.i1030, %conv1.i1032
  %281 = ptrtoint ptr %mp.4 to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %mp.4, align 8
  %283 = and i16 %282, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %283)
  %cmp701 = icmp eq i16 %283, 0
  br i1 %cmp701, label %do.end687.getPage.backedge_crit_edge, label %if.then703

do.end687.getPage.backedge_crit_edge:             ; preds = %do.end687
  call void @__sanitizer_cov_trace_pc() #8
  br label %getPage.backedge

if.then703:                                       ; preds = %do.end687
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.4) #6
  br label %getPage.backedge

getPage.backedge:                                 ; preds = %if.then703, %do.end687.getPage.backedge_crit_edge
  br label %getPage

out.sink.split:                                   ; preds = %if.end619.out.sink.split_crit_edge, %if.then302.out.sink.split_crit_edge
  %mp.2.ph.lcssa1299.lcssa1302.sink = phi ptr [ %mp.0.ph, %if.then302.out.sink.split_crit_edge ], [ %mp.2.ph, %if.end619.out.sink.split_crit_edge ]
  %nfreed.6.ph = phi i64 [ %nfreed.3, %if.then302.out.sink.split_crit_edge ], [ %add489, %if.end619.out.sink.split_crit_edge ]
  %newsize.addr.3.ph = phi i64 [ %newsize.addr.0, %if.then302.out.sink.split_crit_edge ], [ %newsize.addr.1.ph, %if.end619.out.sink.split_crit_edge ]
  call void @release_metapage(ptr noundef %mp.2.ph.lcssa1299.lcssa1302.sink) #6
  br label %out

out:                                              ; preds = %out.sink.split, %if.end649.out_crit_edge, %if.end619.out_crit_edge, %if.end483.out_crit_edge, %cond.end350.out_crit_edge, %getParent.preheader.out_crit_edge, %if.then302.out_crit_edge
  %nfreed.6 = phi i64 [ %add489, %if.end619.out_crit_edge ], [ %nfreed.3, %if.then302.out_crit_edge ], [ %nfreed.6.ph, %out.sink.split ], [ %nfreed.4.ph10831173, %if.end483.out_crit_edge ], [ %nfreed.4.ph10831173, %cond.end350.out_crit_edge ], [ %add489, %if.end649.out_crit_edge ], [ %nfreed.4.ph, %getParent.preheader.out_crit_edge ]
  %newsize.addr.3 = phi i64 [ %newsize.addr.1.ph, %if.end619.out_crit_edge ], [ %newsize.addr.0, %if.then302.out_crit_edge ], [ %newsize.addr.3.ph, %out.sink.split ], [ %newsize.addr.1.ph, %if.end483.out_crit_edge ], [ %newsize.addr.1.ph, %cond.end350.out_crit_edge ], [ %newsize.addr.1.ph, %if.end649.out_crit_edge ], [ %newsize.addr.1.ph, %getParent.preheader.out_crit_edge ]
  %284 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %ip, align 8
  %286 = and i16 %285, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %286)
  %cmp708 = icmp eq i16 %286, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %newsize.addr.3)
  %tobool711.not = icmp eq i64 %newsize.addr.3, 0
  %or.cond999 = select i1 %cmp708, i1 %tobool711.not, i1 false
  %newsize.addr.3.sink = select i1 %or.cond999, i64 1, i64 %newsize.addr.3
  %287 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store8_noabort(i32 %288)
  store i64 %newsize.addr.3.sink, ptr %287, align 8
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %289 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %290 to i64
  %shl.i1034 = shl i64 %nfreed.6, %sh_prom.i
  call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i1034, i32 noundef 0) #6
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp716 = icmp eq i32 %and, 32
  br i1 %cmp716, label %if.then718, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then718:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @txFreelock(ptr noundef %ip) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then718, %out.cleanup_crit_edge, %if.then664, %if.then657.cleanup_crit_edge, %if.then415, %if.then408.cleanup_crit_edge, %do.end379, %if.else372.cleanup_crit_edge, %if.then77, %if.then70.cleanup_crit_edge, %do.end44, %if.else37.cleanup_crit_edge
  %retval.0 = phi i64 [ -5, %if.then664 ], [ -5, %if.then657.cleanup_crit_edge ], [ %newsize.addr.3, %if.then718 ], [ %newsize.addr.3, %out.cleanup_crit_edge ], [ -5, %if.then77 ], [ -5, %if.then70.cleanup_crit_edge ], [ -5, %do.end44 ], [ -5, %if.else37.cleanup_crit_edge ], [ -5, %if.then415 ], [ -5, %if.then408.cleanup_crit_edge ], [ -5, %do.end379 ], [ -5, %if.else372.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xadlock) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #6
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalidate_metapages(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @txFreeMap(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @txFreelock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xtTruncate_pmap(i16 noundef zeroext %tid, ptr noundef %ip, i64 noundef %committed_size) local_unnamed_addr #0 align 64 {
entry:
  %btstack = alloca %struct.btstack, align 8
  %cmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %btstack) #6
  %0 = call ptr @memset(ptr %btstack, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmp) #6
  %1 = ptrtoint ptr %cmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cmp, align 4, !annotation !152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxBlock to i32))
  %2 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %tid to i32
  %arrayidx = getelementptr %struct.tblock, ptr %2, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 4
  %5 = or i16 %4, 16
  store i16 %5, ptr %arrayidx, align 4
  %stack = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 2
  %6 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %stack, ptr %btstack, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %committed_size)
  %tobool.not = icmp eq i64 %committed_size, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %l2bsize, align 2
  %conv2 = sext i16 %12 to i32
  %sh_prom = zext i32 %conv2 to i64
  %shr = ashr i64 %committed_size, %sh_prom
  %sub = add i64 %shr, -1
  %call3 = call fastcc i32 @xtSearch(ptr noundef %ip, i64 noundef %sub, ptr noundef null, ptr noundef nonnull %cmp, ptr noundef nonnull %btstack, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = sext i32 %call3 to i64
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btstack, align 8
  %mp10 = getelementptr inbounds %struct.btframe, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mp10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mp10, align 4
  %index16 = getelementptr inbounds %struct.btframe, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %index16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %index16, align 8
  %conv17439 = zext i16 %18 to i32
  %19 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18.not = icmp eq i32 %20, 0
  br i1 %cmp18.not, label %if.end.if.end120_crit_edge, label %if.then20

if.end.if.end120_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then20:                                        ; preds = %if.end
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %16, align 8
  %23 = and i16 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp23 = icmp eq i16 %23, 0
  br i1 %cmp23, label %if.then20.if.end26_crit_edge, label %if.then25

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %16) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then20.if.end26_crit_edge
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %25, ptr noundef nonnull @.str.52) #6
  br label %cleanup

do.body:                                          ; preds = %if.then290, %do.end274.do.body_crit_edge, %entry.do.body_crit_edge
  %locked_leaves.0 = phi i32 [ %locked_leaves.2, %do.end274.do.body_crit_edge ], [ %locked_leaves.2, %if.then290 ], [ 0, %entry.do.body_crit_edge ]
  %bn.0 = phi i64 [ %add.i, %do.end274.do.body_crit_edge ], [ %add.i, %if.then290 ], [ 0, %entry.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bn.0)
  %cmp30 = icmp eq i64 %bn.0, 0
  br i1 %cmp30, label %if.then32, label %if.else37

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %u35 = getelementptr i8, ptr %ip, i32 -400
  br label %if.then56

if.else37:                                        ; preds = %do.body
  %conv38 = trunc i64 %bn.0 to i32
  %call39 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv38, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  %data42 = getelementptr inbounds %struct.metapage, ptr %call39, i32 0, i32 7
  %26 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data42, align 4
  br label %if.then56

if.else43:                                        ; preds = %if.else37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %28 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp45 = icmp sgt i32 %28, 0
  br i1 %cmp45, label %do.end, label %if.else43.cleanup_crit_edge

if.else43.cleanup_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then56:                                        ; preds = %if.then41, %if.then32
  %mp.0.ph = phi ptr [ %call39, %if.then41 ], [ %bxflag, %if.then32 ]
  %p.1.ph = phi ptr [ %27, %if.then41 ], [ %u35, %if.then32 ]
  %nextindex = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 4
  %29 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nextindex, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %31)
  %cmp58 = icmp ult i16 %31, 2
  br i1 %cmp58, label %if.then56.if.then72_crit_edge, label %lor.lhs.false

if.then56.if.then72_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then72

lor.lhs.false:                                    ; preds = %if.then56
  %maxentry = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 5
  %32 = ptrtoint ptr %maxentry to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %maxentry, align 4
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %34)
  %cmp63 = icmp ugt i16 %31, %34
  br i1 %cmp63, label %lor.lhs.false.if.then72_crit_edge, label %lor.lhs.false65

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then72

lor.lhs.false65:                                  ; preds = %lor.lhs.false
  %conv62 = zext i16 %34 to i32
  %cond = select i1 %cmp30, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv62)
  %cmp70 = icmp ult i32 %cond, %conv62
  br i1 %cmp70, label %lor.lhs.false65.if.then72_crit_edge, label %if.end88

lor.lhs.false65.if.then72_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false65.if.then72_crit_edge, %lor.lhs.false.if.then72_crit_edge, %if.then56.if.then72_crit_edge
  %i_sb73 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb73, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %36, ptr noundef nonnull @.str.12) #6
  %37 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mp.0.ph, align 8
  %39 = and i16 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp77 = icmp eq i16 %39, 0
  br i1 %cmp77, label %if.then72.cleanup_crit_edge, label %if.then79

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then79:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %cleanup

if.end88:                                         ; preds = %lor.lhs.false65
  %40 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nextindex, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  %conv90 = zext i16 %42 to i32
  %sub91 = add nsw i32 %conv90, -1
  %flag = getelementptr inbounds %struct.xtheader, ptr %p.1.ph, i32 0, i32 2
  %43 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flag, align 8
  %45 = and i8 %44, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool94.not = icmp eq i8 %45, 0
  br i1 %tobool94.not, label %if.end97, label %if.end88.getChild_crit_edge

if.end88.getChild_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %getChild

if.end97:                                         ; preds = %if.end88
  %inc = add i32 %locked_leaves.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc)
  %cmp98 = icmp sgt i32 %inc, 50
  br i1 %cmp98, label %if.then100, label %if.end97.if.end120_crit_edge

if.end97.if.end120_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then100:                                       ; preds = %if.end97
  %off1 = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 %sub91, i32 2
  %46 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %off1, align 1
  %conv102 = zext i8 %47 to i64
  %shl = shl nuw nsw i64 %conv102, 32
  %off2 = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 %sub91, i32 3
  %48 = ptrtoint ptr %off2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %off2, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %conv103 = zext i32 %50 to i64
  %or104 = or i64 %shl, %conv103
  %loc = getelementptr [18 x %struct.xad], ptr %p.1.ph, i32 0, i32 %sub91, i32 4
  %51 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %loc, align 4
  %53 = and i32 %52, -256
  %54 = call i32 @llvm.bswap.i32(i32 %53) #6
  %55 = ptrtoint ptr %mp.0.ph to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mp.0.ph, align 8
  %57 = and i16 %56, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp109 = icmp eq i16 %57, 0
  br i1 %cmp109, label %if.then100.if.end112_crit_edge, label %if.then111

if.then100.if.end112_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then111:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.0.ph) #6
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.then100.if.end112_crit_edge
  %58 = zext i32 %54 to i64
  %add = add nuw nsw i64 %or104, %58
  %i_sb114 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %59 = ptrtoint ptr %i_sb114 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb114, align 4
  %s_fs_info.i391 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i391 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i391, align 16
  %l2bsize116 = getelementptr inbounds %struct.jfs_sb_info, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %l2bsize116 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %l2bsize116, align 2
  %conv117 = sext i16 %64 to i32
  %sh_prom118 = zext i32 %conv117 to i64
  %shl119 = shl i64 %add, %sh_prom118
  br label %cleanup

if.end120:                                        ; preds = %if.end97.if.end120_crit_edge, %if.end.if.end120_crit_edge
  %inc414 = phi i32 [ %inc, %if.end97.if.end120_crit_edge ], [ 1, %if.end.if.end120_crit_edge ]
  %index.0413 = phi i32 [ %sub91, %if.end97.if.end120_crit_edge ], [ %conv17439, %if.end.if.end120_crit_edge ]
  %mp.2412 = phi ptr [ %mp.0.ph, %if.end97.if.end120_crit_edge ], [ %16, %if.end.if.end120_crit_edge ]
  %call121 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.2412, i32 noundef 16384) #6
  %type = getelementptr inbounds %struct.tlock, ptr %call121, i32 0, i32 3
  %65 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 16448, ptr %type, align 2
  %conv122 = trunc i32 %index.0413 to i8
  %hwm = getelementptr inbounds %struct.tlock, ptr %call121, i32 0, i32 6, i32 6
  %66 = ptrtoint ptr %hwm to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv122, ptr %hwm, align 4
  %67 = ptrtoint ptr %mp.2412 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mp.2412, align 8
  %69 = and i16 %68, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp126 = icmp eq i16 %69, 0
  br i1 %cmp126, label %if.end120.if.end129_crit_edge, label %if.then128

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then128:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.2412) #6
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end120.if.end129_crit_edge
  %bxflag147 = getelementptr i8, ptr %ip, i32 -752
  %u149 = getelementptr i8, ptr %ip, i32 -400
  br label %getParent

getParent:                                        ; preds = %if.end230.getParent_crit_edge, %if.end129
  %70 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %btstack, align 8
  %cmp133 = icmp eq ptr %71, %stack
  br i1 %cmp133, label %getParent.cleanup_crit_edge, label %cond.end

getParent.cleanup_crit_edge:                      ; preds = %getParent
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %getParent
  %incdec.ptr = getelementptr %struct.btframe, ptr %71, i32 -1
  %72 = ptrtoint ptr %btstack to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %incdec.ptr, ptr %btstack, align 8
  %cmp137 = icmp eq ptr %incdec.ptr, null
  br i1 %cmp137, label %cond.end.cleanup_crit_edge, label %if.end140

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end140:                                        ; preds = %cond.end
  %73 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %incdec.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %cmp143 = icmp eq i64 %74, 0
  br i1 %cmp143, label %if.end140.if.then173_crit_edge, label %if.else151

if.end140.if.then173_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then173

if.else151:                                       ; preds = %if.end140
  %conv152 = trunc i64 %74 to i32
  %call153 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv152, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool154.not = icmp eq ptr %call153, null
  br i1 %tobool154.not, label %if.else157, label %if.then155

if.then155:                                       ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #8
  %data156 = getelementptr inbounds %struct.metapage, ptr %call153, i32 0, i32 7
  %75 = ptrtoint ptr %data156 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data156, align 4
  br label %if.then173

if.else157:                                       ; preds = %if.else151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %77 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp159 = icmp sgt i32 %77, 0
  br i1 %cmp159, label %do.end164, label %if.else157.cleanup_crit_edge

if.else157.cleanup_crit_edge:                     ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end164:                                        ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #8
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.then173:                                       ; preds = %if.then155, %if.end140.if.then173_crit_edge
  %mp.3.ph = phi ptr [ %call153, %if.then155 ], [ %bxflag147, %if.end140.if.then173_crit_edge ]
  %p.3.ph = phi ptr [ %76, %if.then155 ], [ %u149, %if.end140.if.then173_crit_edge ]
  %nextindex174 = getelementptr inbounds %struct.xtheader, ptr %p.3.ph, i32 0, i32 4
  %78 = ptrtoint ptr %nextindex174 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %nextindex174, align 2
  %80 = call i16 @llvm.bswap.i16(i16 %79)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %80)
  %cmp176 = icmp ult i16 %80, 2
  br i1 %cmp176, label %if.then173.if.then193_crit_edge, label %lor.lhs.false178

if.then173.if.then193_crit_edge:                  ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then193

lor.lhs.false178:                                 ; preds = %if.then173
  %maxentry181 = getelementptr inbounds %struct.xtheader, ptr %p.3.ph, i32 0, i32 5
  %81 = ptrtoint ptr %maxentry181 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %maxentry181, align 4
  %83 = call i16 @llvm.bswap.i16(i16 %82)
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %83)
  %cmp183 = icmp ugt i16 %80, %83
  br i1 %cmp183, label %lor.lhs.false178.if.then193_crit_edge, label %lor.lhs.false185

lor.lhs.false178.if.then193_crit_edge:            ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then193

lor.lhs.false185:                                 ; preds = %lor.lhs.false178
  %conv182 = zext i16 %83 to i32
  %cond190 = select i1 %cmp143, i32 18, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond190, i32 %conv182)
  %cmp191 = icmp ult i32 %cond190, %conv182
  br i1 %cmp191, label %lor.lhs.false185.if.then193_crit_edge, label %if.end209

lor.lhs.false185.if.then193_crit_edge:            ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then193

if.then193:                                       ; preds = %lor.lhs.false185.if.then193_crit_edge, %lor.lhs.false178.if.then193_crit_edge, %if.then173.if.then193_crit_edge
  %i_sb194 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %84 = ptrtoint ptr %i_sb194 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i_sb194, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %85, ptr noundef nonnull @.str.12) #6
  %86 = ptrtoint ptr %mp.3.ph to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %mp.3.ph, align 8
  %88 = and i16 %87, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp198 = icmp eq i16 %88, 0
  br i1 %cmp198, label %if.then193.cleanup_crit_edge, label %if.then200

if.then193.cleanup_crit_edge:                     ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then200:                                       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.3.ph) #6
  br label %cleanup

if.end209:                                        ; preds = %lor.lhs.false185
  %index210 = getelementptr %struct.btframe, ptr %71, i32 -1, i32 1
  %89 = ptrtoint ptr %index210 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %index210, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %90)
  %cmp212 = icmp eq i16 %90, 2
  br i1 %cmp212, label %if.then214, label %if.else237

if.then214:                                       ; preds = %if.end209
  %call215 = call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp.3.ph, i32 noundef 16384) #6
  %91 = ptrtoint ptr %nextindex174 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %nextindex174, align 2
  %93 = lshr i16 %92, 8
  %conv218 = trunc i16 %93 to i8
  %sub219 = add i8 %conv218, -1
  %hwm221 = getelementptr inbounds %struct.tlock, ptr %call215, i32 0, i32 6, i32 6
  %94 = ptrtoint ptr %hwm221 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %sub219, ptr %hwm221, align 4
  %type223 = getelementptr inbounds %struct.tlock, ptr %call215, i32 0, i32 3
  %95 = ptrtoint ptr %type223 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 16448, ptr %type223, align 2
  %96 = ptrtoint ptr %mp.3.ph to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %mp.3.ph, align 8
  %98 = and i16 %97, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp227 = icmp eq i16 %98, 0
  br i1 %cmp227, label %if.then214.if.end230_crit_edge, label %if.then229

if.then214.if.end230_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230

if.then229:                                       ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.3.ph) #6
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %if.then214.if.end230_crit_edge
  %flag231 = getelementptr inbounds %struct.xtheader, ptr %p.3.ph, i32 0, i32 2
  %99 = ptrtoint ptr %flag231 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %flag231, align 8
  %101 = and i8 %100, 1
  %tobool234.not = icmp eq i8 %101, 0
  br i1 %tobool234.not, label %if.end230.getParent_crit_edge, label %if.end230.cleanup_crit_edge

if.end230.cleanup_crit_edge:                      ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end230.getParent_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #8
  br label %getParent

if.else237:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  %conv211 = sext i16 %90 to i32
  %dec = add nsw i32 %conv211, -1
  br label %getChild

getChild:                                         ; preds = %if.else237, %if.end88.getChild_crit_edge
  %mp.5 = phi ptr [ %mp.3.ph, %if.else237 ], [ %mp.0.ph, %if.end88.getChild_crit_edge ]
  %p.4 = phi ptr [ %p.3.ph, %if.else237 ], [ %p.1.ph, %if.end88.getChild_crit_edge ]
  %locked_leaves.2 = phi i32 [ %inc414, %if.else237 ], [ %locked_leaves.0, %if.end88.getChild_crit_edge ]
  %index.1 = phi i32 [ %dec, %if.else237 ], [ %sub91, %if.end88.getChild_crit_edge ]
  %bn.1 = phi i64 [ %74, %if.else237 ], [ %bn.0, %if.end88.getChild_crit_edge ]
  %102 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %btstack, align 8
  %arrayidx241 = getelementptr inbounds %struct.btstack, ptr %btstack, i32 0, i32 2, i32 7
  %cmp242 = icmp eq ptr %103, %arrayidx241
  br i1 %cmp242, label %if.then244, label %do.end274

if.then244:                                       ; preds = %getChild
  %i_sb245 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %104 = ptrtoint ptr %i_sb245 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_sb245, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %105, ptr noundef nonnull @.str.48) #6
  %106 = ptrtoint ptr %mp.5 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %mp.5, align 8
  %108 = and i16 %107, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp249 = icmp eq i16 %108, 0
  br i1 %cmp249, label %if.then244.cleanup_crit_edge, label %if.then251

if.then244.cleanup_crit_edge:                     ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then251:                                       ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.5) #6
  br label %cleanup

do.end274:                                        ; preds = %getChild
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %bn.1, ptr %103, align 8
  %conv277 = trunc i32 %index.1 to i16
  %110 = ptrtoint ptr %btstack to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %btstack, align 8
  %index279 = getelementptr inbounds %struct.btframe, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %index279 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv277, ptr %index279, align 8
  %incdec.ptr281 = getelementptr %struct.btframe, ptr %111, i32 1
  store ptr %incdec.ptr281, ptr %btstack, align 8
  %loc283 = getelementptr [18 x %struct.xad], ptr %p.4, i32 0, i32 %index.1, i32 4
  %113 = ptrtoint ptr %loc283 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %loc283, align 4
  %115 = shl i32 %114, 24
  %conv.i = zext i32 %115 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr [18 x %struct.xad], ptr %p.4, i32 0, i32 %index.1, i32 4, i32 1
  %116 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %addr2.i, align 4
  %118 = call i32 @llvm.bswap.i32(i32 %117) #6
  %conv1.i = zext i32 %118 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %119 = ptrtoint ptr %mp.5 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %mp.5, align 8
  %121 = and i16 %120, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %cmp288 = icmp eq i16 %121, 0
  br i1 %cmp288, label %do.end274.do.body_crit_edge, label %if.then290

do.end274.do.body_crit_edge:                      ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then290:                                       ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #8
  call void @release_metapage(ptr noundef %mp.5) #6
  br label %do.body

cleanup:                                          ; preds = %if.then251, %if.then244.cleanup_crit_edge, %if.end230.cleanup_crit_edge, %if.then200, %if.then193.cleanup_crit_edge, %do.end164, %if.else157.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %getParent.cleanup_crit_edge, %if.end112, %if.then79, %if.then72.cleanup_crit_edge, %do.end, %if.else43.cleanup_crit_edge, %if.end26, %if.then5
  %retval.0 = phi i64 [ %conv6, %if.then5 ], [ -5, %if.end26 ], [ %shl119, %if.end112 ], [ -5, %if.then251 ], [ -5, %if.then244.cleanup_crit_edge ], [ -5, %if.then79 ], [ -5, %if.then72.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %if.else43.cleanup_crit_edge ], [ -5, %if.then200 ], [ -5, %if.then193.cleanup_crit_edge ], [ -5, %do.end164 ], [ -5, %if.else157.cleanup_crit_edge ], [ 0, %if.end230.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %getParent.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmp) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %btstack) #6
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_xtstat_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @xtStat.0, align 4
  %1 = load i32, ptr @xtStat.1, align 4
  %2 = load i32, ptr @xtStat.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %0, i32 noundef %1, i32 noundef %2) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xtSplitRoot(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef readonly %split, ptr nocapture noundef writeonly %rmpp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr i8, ptr %ip, i32 -400
  %0 = load i32, ptr @xtStat.2, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @xtStat.2, align 4
  %pxdlist1 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 6
  %1 = ptrtoint ptr %pxdlist1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pxdlist1, align 4
  %npxd = getelementptr inbounds %struct.pxdlist, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %npxd to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %npxd, align 2
  %idxprom = sext i16 %4 to i32
  %arrayidx = getelementptr %struct.pxdlist, ptr %2, i32 0, i32 2, i32 %idxprom
  %inc4 = add i16 %4, 1
  store i16 %inc4, ptr %npxd, align 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = and i32 %6, 255
  %addr2.i = getelementptr %struct.pxdlist, ptr %2, i32 0, i32 2, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr2.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %call6 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %10, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #6
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = and i32 %12, -256
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %conv9 = zext i32 %14 to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %15 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %16 to i64
  %shl.i202 = shl i64 %conv9, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %ip, i64 noundef %shl.i202, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_metapage(ptr noundef nonnull %call6) #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %17 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp13 = icmp sgt i32 %17, 3
  br i1 %cmp13, label %do.end, label %do.body.do.end20_crit_edge

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %ip, ptr noundef nonnull %call6) #9
  br label %do.end20

do.end20:                                         ; preds = %do.end, %do.body.do.end20_crit_edge
  %18 = ptrtoint ptr %call6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call6, align 8
  %20 = and i16 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp22 = icmp eq i16 %20, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end25

if.else:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  %flag = getelementptr inbounds %struct.metapage, ptr %call6, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #6
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %data = getelementptr inbounds %struct.metapage, ptr %call6, i32 0, i32 7
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %flag26 = getelementptr i8, ptr %ip, i32 -384
  %23 = ptrtoint ptr %flag26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flag26, align 8
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool29.not = icmp eq i8 %25, 0
  %conv30 = select i1 %tobool29.not, i8 4, i8 2
  %flag31 = getelementptr inbounds %struct.xtheader, ptr %22, i32 0, i32 2
  %26 = ptrtoint ptr %flag31 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv30, ptr %flag31, align 8
  %self = getelementptr inbounds %struct.xtheader, ptr %22, i32 0, i32 7
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %self to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %self, align 8
  %nextindex32 = getelementptr inbounds %struct.xtheader, ptr %22, i32 0, i32 4
  %30 = ptrtoint ptr %nextindex32 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 512, ptr %nextindex32, align 2
  %maxentry = getelementptr inbounds %struct.xtheader, ptr %22, i32 0, i32 5
  %31 = ptrtoint ptr %maxentry to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %maxentry, align 4
  %maxentry33 = getelementptr i8, ptr %ip, i32 -380
  %32 = call ptr @memset(ptr %22, i32 0, i32 16)
  %33 = ptrtoint ptr %maxentry33 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %maxentry33, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv34 = zext i16 %35 to i32
  %arrayidx35 = getelementptr [18 x %struct.xad], ptr %22, i32 0, i32 2
  %arrayidx36 = getelementptr i8, ptr %ip, i32 -368
  %sub = shl nuw nsw i32 %conv34, 4
  %shl = add nsw i32 %sub, -32
  %36 = call ptr @memmove(ptr %arrayidx35, ptr %arrayidx36, i32 %shl)
  %index = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 1
  %37 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %index, align 4
  %conv37 = sext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34, i32 %conv37)
  %cmp38.not = icmp eq i32 %conv34, %conv37
  br i1 %cmp38.not, label %if.end25.if.end44_crit_edge, label %if.then40

if.end25.if.end44_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nsw i32 %conv37, 1
  %arrayidx41 = getelementptr [18 x %struct.xad], ptr %22, i32 0, i32 %add
  %arrayidx42 = getelementptr [18 x %struct.xad], ptr %22, i32 0, i32 %conv37
  %sub43 = sub nsw i32 %conv34, %conv37
  %mul = shl nsw i32 %sub43, 4
  %39 = call ptr @memmove(ptr %arrayidx41, ptr %arrayidx42, i32 %mul)
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end25.if.end44_crit_edge
  %arrayidx45 = getelementptr [18 x %struct.xad], ptr %22, i32 0, i32 %conv37
  %flag46 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %40 = ptrtoint ptr %flag46 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flag46, align 2
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx45, align 4
  %off = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %43 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %off, align 8
  %shr = lshr i64 %44, 32
  %conv48 = trunc i64 %shr to i8
  %off1 = getelementptr [18 x %struct.xad], ptr %22, i32 0, i32 %conv37, i32 2
  %45 = ptrtoint ptr %off1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv48, ptr %off1, align 1
  %46 = load i64, ptr %off, align 8
  %conv51 = trunc i64 %46 to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv51)
  %off2 = getelementptr [18 x %struct.xad], ptr %22, i32 0, i32 %conv37, i32 3
  %48 = ptrtoint ptr %off2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %off2, align 4
  %loc = getelementptr [18 x %struct.xad], ptr %22, i32 0, i32 %conv37, i32 4
  %len = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 8
  %51 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %loc, align 4
  %and.i = and i32 %52, 255
  %and1.i203 = and i32 %50, 16777215
  %53 = tail call i32 @llvm.bswap.i32(i32 %and1.i203) #6
  %or.i = or i32 %and.i, %53
  %54 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.i, ptr %loc, align 4
  %addr = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %55 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %addr, align 8
  %sum.shift.i = lshr i64 %56, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i205 = and i32 %conv7.i, 255
  %or.i206 = or i32 %conv.i205, %53
  store i32 %or.i206, ptr %loc, align 4
  %conv3.i = trunc i64 %56 to i32
  %57 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  %addr2.i207 = getelementptr [18 x %struct.xad], ptr %22, i32 0, i32 %conv37, i32 4, i32 1
  %58 = ptrtoint ptr %addr2.i207 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %addr2.i207, align 4
  %add53 = add i16 %35, 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %add53)
  %60 = ptrtoint ptr %nextindex32 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %nextindex32, align 2
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %61 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %cflag, align 4
  %and1.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool58.not = icmp eq i32 %and1.i, 0
  br i1 %tobool58.not, label %if.then59, label %if.end44.if.end66_crit_edge

if.end44.if.end66_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then59:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %call6, i32 noundef 16416) #6
  %lwm = getelementptr inbounds %struct.tlock, ptr %call60, i32 0, i32 6, i32 5
  %63 = ptrtoint ptr %lwm to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %lwm, align 2
  %64 = ptrtoint ptr %nextindex32 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nextindex32, align 2
  %66 = lshr i16 %65, 8
  %conv62 = trunc i16 %66 to i8
  %sub63 = add i8 %conv62, -2
  %length = getelementptr inbounds %struct.lv, ptr %lwm, i32 0, i32 1
  %67 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %sub63, ptr %length, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %if.end44.if.end66_crit_edge
  %68 = ptrtoint ptr %split to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %split, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %69, align 8
  %72 = and i16 %71, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp70 = icmp eq i16 %72, 0
  br i1 %cmp70, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end76

if.else73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %flag75 = getelementptr inbounds %struct.metapage, ptr %69, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag75) #6
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then72
  %73 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %arrayidx36, align 4
  %off179 = getelementptr i8, ptr %ip, i32 -365
  %74 = ptrtoint ptr %off179 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %off179, align 1
  %off280 = getelementptr i8, ptr %ip, i32 -364
  %75 = ptrtoint ptr %off280 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %off280, align 4
  %loc81 = getelementptr i8, ptr %ip, i32 -360
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %76 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 33
  %78 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i, align 16
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %79, i32 0, i32 10
  %80 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %nbperpage, align 4
  %conv83 = sext i16 %81 to i32
  %and1.i210 = and i32 %conv83, 16777215
  %82 = tail call i32 @llvm.bswap.i32(i32 %and1.i210) #6
  %or.i216 = or i32 %82, %7
  %83 = ptrtoint ptr %loc81 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or.i216, ptr %loc81, align 4
  %addr2.i218 = getelementptr i8, ptr %ip, i32 -356
  %84 = ptrtoint ptr %addr2.i218 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %9, ptr %addr2.i218, align 4
  %85 = ptrtoint ptr %flag26 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flag26, align 8
  %87 = and i8 %86, -7
  %88 = or i8 %87, 4
  store i8 %88, ptr %flag26, align 8
  %nextindex92 = getelementptr i8, ptr %ip, i32 -382
  %89 = ptrtoint ptr %nextindex92 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 768, ptr %nextindex92, align 2
  %90 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %cflag, align 4
  %and1.i201 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i201)
  %tobool96.not = icmp eq i32 %and1.i201, 0
  br i1 %tobool96.not, label %if.then97, label %if.end76.if.end105_crit_edge

if.end76.if.end105_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then97:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %split to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %split, align 8
  %call99 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %93, i32 noundef 16385) #6
  %lwm101 = getelementptr inbounds %struct.tlock, ptr %call99, i32 0, i32 6, i32 5
  %94 = ptrtoint ptr %lwm101 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 2, ptr %lwm101, align 2
  %length104 = getelementptr inbounds %struct.lv, ptr %lwm101, i32 0, i32 1
  %95 = ptrtoint ptr %length104 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %length104, align 1
  br label %if.end105

if.end105:                                        ; preds = %if.then97, %if.end76.if.end105_crit_edge
  %96 = ptrtoint ptr %rmpp to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call6, ptr %rmpp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %97 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %97)
  %cmp107 = icmp sgt i32 %97, 3
  br i1 %cmp107, label %do.end112, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end112:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %u, ptr noundef %22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end112, %if.end105.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %if.then11 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %do.end112 ], [ 0, %if.end105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xtSplitPage(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef readonly %split, ptr nocapture noundef writeonly %rmpp, ptr nocapture noundef writeonly %rbnp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %split to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %split, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %u = getelementptr i8, ptr %ip, i32 -400
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.metapage, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %u, %cond.true ], [ %6, %cond.false ]
  %7 = load i32, ptr @xtStat.2, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @xtStat.2, align 4
  %pxdlist3 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 6
  %8 = ptrtoint ptr %pxdlist3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pxdlist3, align 4
  %npxd = getelementptr inbounds %struct.pxdlist, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %npxd to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %npxd, align 2
  %idxprom = sext i16 %11 to i32
  %arrayidx = getelementptr %struct.pxdlist, ptr %9, i32 0, i32 2, i32 %idxprom
  %inc6 = add i16 %11, 1
  store i16 %inc6, ptr %npxd, align 2
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
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %conv1.i = zext i32 %17 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %18 = and i32 %13, -256
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %conv9 = zext i32 %19 to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %20 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %21 to i64
  %shl.i568 = shl i64 %conv9, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %ip, i64 noundef %shl.i568, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = and i32 %23, -256
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %call13 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %17, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #6
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.end.clean_up_crit_edge, label %do.body

if.end.clean_up_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_up

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %26 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp18 = icmp sgt i32 %26, 3
  br i1 %cmp18, label %do.end, label %do.body.do.end25_crit_edge

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %ip, ptr noundef %1, ptr noundef nonnull %call13) #9
  br label %do.end25

do.end25:                                         ; preds = %do.end, %do.body.do.end25_crit_edge
  %27 = ptrtoint ptr %call13 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call13, align 8
  %29 = and i16 %28, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp29 = icmp eq i16 %29, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end32

if.else:                                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  %flag = getelementptr inbounds %struct.metapage, ptr %call13, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #6
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then31
  %data33 = getelementptr inbounds %struct.metapage, ptr %call13, i32 0, i32 7
  %30 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data33, align 4
  %self = getelementptr inbounds %struct.xtheader, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %self to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %self, align 8
  %flag34 = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 2
  %35 = ptrtoint ptr %flag34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flag34, align 8
  %37 = and i8 %36, 7
  %flag38 = getelementptr inbounds %struct.xtheader, ptr %31, i32 0, i32 2
  %38 = ptrtoint ptr %flag38 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %flag38, align 8
  %maxentry39 = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 5
  %39 = ptrtoint ptr %maxentry39 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %maxentry39, align 4
  %maxentry40 = getelementptr inbounds %struct.xtheader, ptr %31, i32 0, i32 5
  %41 = ptrtoint ptr %maxentry40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %maxentry40, align 4
  %nextindex = getelementptr inbounds %struct.xtheader, ptr %31, i32 0, i32 4
  %42 = ptrtoint ptr %nextindex to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 512, ptr %nextindex, align 2
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 8
  %45 = and i16 %44, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp44 = icmp eq i16 %45, 0
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end49

if.else47:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %flag48 = getelementptr inbounds %struct.metapage, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag48) #6
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then46
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %46 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %cflag, align 4
  %and1.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool52.not = icmp eq i32 %and1.i, 0
  br i1 %tobool52.not, label %if.then53, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %call13, i32 noundef 16416) #6
  %lock = getelementptr inbounds %struct.tlock, ptr %call54, i32 0, i32 6
  %lwm = getelementptr inbounds %struct.tlock, ptr %call54, i32 0, i32 6, i32 5
  %48 = ptrtoint ptr %lwm to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %lwm, align 2
  %call55 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %1, i32 noundef 16385) #6
  %lock56 = getelementptr inbounds %struct.tlock, ptr %call55, i32 0, i32 6
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end49.if.end57_crit_edge
  %sxtlck.0 = phi ptr [ null, %if.end49.if.end57_crit_edge ], [ %lock56, %if.then53 ]
  %rxtlck.0 = phi ptr [ null, %if.end49.if.end57_crit_edge ], [ %lock, %if.then53 ]
  %49 = ptrtoint ptr %cond to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %cond, align 8
  %51 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %31, align 8
  %self59 = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 7
  %52 = ptrtoint ptr %self59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %self59, align 4
  %54 = shl i32 %53, 24
  %conv.i570 = zext i32 %54 to i64
  %shl.i571 = shl nuw nsw i64 %conv.i570, 8
  %addr2.i572 = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %addr2.i572 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr2.i572, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  %conv1.i573 = zext i32 %57 to i64
  %add.i574 = or i64 %shl.i571, %conv1.i573
  %58 = tail call i64 @llvm.bswap.i64(i64 %add.i574)
  %prev = getelementptr inbounds %struct.xtheader, ptr %31, i32 0, i32 1
  %59 = ptrtoint ptr %prev to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %prev, align 8
  %60 = tail call i64 @llvm.bswap.i64(i64 %add.i)
  %61 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %cond, align 8
  %index = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 1
  %62 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %index, align 4
  %conv62 = sext i16 %63 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %cond562 = icmp eq i64 %50, 0
  br i1 %cond562, label %land.lhs.true, label %if.else110

land.lhs.true:                                    ; preds = %if.end57
  %64 = ptrtoint ptr %maxentry39 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %maxentry39, align 4
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %conv66 = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv62, i32 %conv66)
  %cmp67 = icmp eq i32 %conv62, %conv66
  br i1 %cmp67, label %if.then69, label %land.lhs.true.if.end197_crit_edge

land.lhs.true.if.end197_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.then69:                                        ; preds = %land.lhs.true
  %arrayidx70 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 2
  %flag71 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %67 = ptrtoint ptr %flag71 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flag71, align 2
  %69 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx70, align 4
  %off = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %70 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %off, align 8
  %shr = lshr i64 %71, 32
  %conv73 = trunc i64 %shr to i8
  %off1 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %off1 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv73, ptr %off1, align 1
  %73 = load i64, ptr %off, align 8
  %conv76 = trunc i64 %73 to i32
  %74 = tail call i32 @llvm.bswap.i32(i32 %conv76)
  %off2 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 2, i32 3
  %75 = ptrtoint ptr %off2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %off2, align 4
  %loc = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 2, i32 4
  %len = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 8
  %78 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %loc, align 4
  %and.i = and i32 %79, 255
  %and1.i575 = and i32 %77, 16777215
  %80 = tail call i32 @llvm.bswap.i32(i32 %and1.i575) #6
  %or.i = or i32 %and.i, %80
  %81 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i, ptr %loc, align 4
  %addr = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %82 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %addr, align 8
  %sum.shift.i = lshr i64 %83, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i577 = and i32 %conv7.i, 255
  %or.i578 = or i32 %conv.i577, %80
  store i32 %or.i578, ptr %loc, align 4
  %conv3.i = trunc i64 %83 to i32
  %84 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  %addr2.i579 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 2, i32 4, i32 1
  %85 = ptrtoint ptr %addr2.i579 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %addr2.i579, align 4
  %86 = ptrtoint ptr %nextindex to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 768, ptr %nextindex, align 2
  %87 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %cflag, align 4
  %and1.i563 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i563)
  %tobool82.not = icmp eq i32 %and1.i563, 0
  br i1 %tobool82.not, label %if.then83, label %if.then69.if.end85_crit_edge

if.then69.if.end85_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then83:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %length = getelementptr inbounds %struct.xtlock, ptr %rxtlck.0, i32 0, i32 7, i32 1
  %89 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %length, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then69.if.end85_crit_edge
  %90 = ptrtoint ptr %rmpp to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call13, ptr %rmpp, align 4
  %91 = ptrtoint ptr %rbnp to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %add.i, ptr %rbnp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %92 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp87 = icmp sgt i32 %92, 3
  br i1 %cmp87, label %do.end92, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %cond, ptr noundef %31) #9
  br label %cleanup

if.else110:                                       ; preds = %if.end57
  %93 = tail call i64 @llvm.bswap.i64(i64 %50)
  %conv111 = trunc i64 %93 to i32
  %call112 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv111, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %tobool113.not = icmp eq ptr %call112, null
  br i1 %tobool113.not, label %if.else116, label %if.then132

if.else116:                                       ; preds = %if.else110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %94 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp118 = icmp sgt i32 %94, 0
  br i1 %cmp118, label %do.end123, label %if.else116.if.then164_crit_edge

if.else116.if.then164_crit_edge:                  ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then164

do.end123:                                        ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #8
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %if.then164

if.then132:                                       ; preds = %if.else110
  %data115 = getelementptr inbounds %struct.metapage, ptr %call112, i32 0, i32 7
  %95 = ptrtoint ptr %data115 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data115, align 4
  %nextindex133 = getelementptr inbounds %struct.xtheader, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %nextindex133 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %nextindex133, align 2
  %99 = tail call i16 @llvm.bswap.i16(i16 %98)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %99)
  %cmp135 = icmp ult i16 %99, 2
  br i1 %cmp135, label %if.then132.if.then151_crit_edge, label %lor.lhs.false

if.then132.if.then151_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then151

lor.lhs.false:                                    ; preds = %if.then132
  %maxentry139 = getelementptr inbounds %struct.xtheader, ptr %96, i32 0, i32 5
  %100 = ptrtoint ptr %maxentry139 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %maxentry139, align 4
  %102 = tail call i16 @llvm.bswap.i16(i16 %101)
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %102)
  %cmp141 = icmp ugt i16 %99, %102
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %102)
  %cmp149 = icmp ugt i16 %102, 256
  %or.cond = or i1 %cmp141, %cmp149
  br i1 %or.cond, label %lor.lhs.false.if.then151_crit_edge, label %if.end172

lor.lhs.false.if.then151_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then151

if.then151:                                       ; preds = %lor.lhs.false.if.then151_crit_edge, %if.then132.if.then151_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %103 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %104, ptr noundef nonnull @.str.12) #6
  %105 = ptrtoint ptr %call112 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %call112, align 8
  %107 = and i16 %106, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %cmp155 = icmp eq i16 %107, 0
  br i1 %cmp155, label %if.then151.if.then164_crit_edge, label %if.then157

if.then151.if.then164_crit_edge:                  ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then164

if.then157:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_metapage(ptr noundef nonnull %call112) #6
  br label %if.then164

if.then164:                                       ; preds = %if.then157, %if.then151.if.then164_crit_edge, %do.end123, %if.else116.if.then164_crit_edge
  %108 = ptrtoint ptr %call13 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %call13, align 8
  %110 = and i16 %109, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %cmp168 = icmp eq i16 %110, 0
  br i1 %cmp168, label %if.then164.clean_up_crit_edge, label %if.then170

if.then164.clean_up_crit_edge:                    ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_up

if.then170:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_metapage(ptr noundef nonnull %call13) #6
  br label %clean_up

if.end172:                                        ; preds = %lor.lhs.false
  %111 = ptrtoint ptr %call112 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %call112, align 8
  %113 = and i16 %112, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp176 = icmp eq i16 %113, 0
  br i1 %cmp176, label %if.then178, label %if.else179

if.then178:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #6
  br label %if.end181

if.else179:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  %flag180 = getelementptr inbounds %struct.metapage, ptr %call112, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag180) #6
  br label %if.end181

if.end181:                                        ; preds = %if.else179, %if.then178
  %114 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %cflag, align 4
  %and1.i564 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i564)
  %tobool185.not = icmp eq i32 %and1.i564, 0
  br i1 %tobool185.not, label %if.then186, label %if.end181.if.end188_crit_edge

if.end181.if.end188_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

if.then186:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  %call187 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef nonnull %call112, i32 noundef 16512) #6
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %if.end181.if.end188_crit_edge
  %prev189 = getelementptr inbounds %struct.xtheader, ptr %96, i32 0, i32 1
  %116 = ptrtoint ptr %prev189 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %60, ptr %prev189, align 8
  %117 = ptrtoint ptr %call112 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %call112, align 8
  %119 = and i16 %118, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %cmp193 = icmp eq i16 %119, 0
  br i1 %cmp193, label %if.end188.if.end197_crit_edge, label %if.then195

if.end188.if.end197_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.then195:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_metapage(ptr noundef nonnull %call112) #6
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %if.end188.if.end197_crit_edge, %land.lhs.true.if.end197_crit_edge
  %120 = ptrtoint ptr %maxentry39 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %maxentry39, align 4
  %122 = tail call i16 @llvm.bswap.i16(i16 %121)
  %conv199 = zext i16 %122 to i32
  %123 = lshr i32 %conv199, 1
  %sub = sub nsw i32 %conv199, %123
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %conv62)
  %cmp201.not = icmp slt i32 %123, %conv62
  br i1 %cmp201.not, label %if.else263, label %if.then203

if.then203:                                       ; preds = %if.end197
  %arrayidx204 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 2
  %arrayidx205 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %123
  %shl = shl nsw i32 %sub, 4
  %124 = call ptr @memmove(ptr %arrayidx204, ptr %arrayidx205, i32 %shl)
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %conv62)
  %cmp206 = icmp sgt i32 %123, %conv62
  br i1 %cmp206, label %if.then208, label %if.then203.if.end214_crit_edge

if.then203.if.end214_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

if.then208:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  %add209 = add nsw i32 %conv62, 1
  %arrayidx210 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %add209
  %arrayidx211 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv62
  %sub212 = sub nsw i32 %123, %conv62
  %shl213 = shl nsw i32 %sub212, 4
  %125 = call ptr @memmove(ptr %arrayidx210, ptr %arrayidx211, i32 %shl213)
  br label %if.end214

if.end214:                                        ; preds = %if.then208, %if.then203.if.end214_crit_edge
  %arrayidx215 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv62
  %flag216 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %126 = ptrtoint ptr %flag216 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %flag216, align 2
  %128 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx215, align 4
  %off218 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %129 = ptrtoint ptr %off218 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %off218, align 8
  %shr219 = lshr i64 %130, 32
  %conv220 = trunc i64 %shr219 to i8
  %off1221 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv62, i32 2
  %131 = ptrtoint ptr %off1221 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv220, ptr %off1221, align 1
  %132 = load i64, ptr %off218, align 8
  %conv224 = trunc i64 %132 to i32
  %133 = tail call i32 @llvm.bswap.i32(i32 %conv224)
  %off2225 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv62, i32 3
  %134 = ptrtoint ptr %off2225 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %off2225, align 4
  %loc226 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv62, i32 4
  %len227 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %135 = ptrtoint ptr %len227 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len227, align 8
  %137 = ptrtoint ptr %loc226 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %loc226, align 4
  %and.i582 = and i32 %138, 255
  %and1.i583 = and i32 %136, 16777215
  %139 = tail call i32 @llvm.bswap.i32(i32 %and1.i583) #6
  %or.i584 = or i32 %and.i582, %139
  %140 = ptrtoint ptr %loc226 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or.i584, ptr %loc226, align 4
  %addr229 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %141 = ptrtoint ptr %addr229 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %addr229, align 8
  %sum.shift.i586 = lshr i64 %142, 32
  %conv7.i587 = trunc i64 %sum.shift.i586 to i32
  %conv.i588 = and i32 %conv7.i587, 255
  %or.i589 = or i32 %conv.i588, %139
  store i32 %or.i589, ptr %loc226, align 4
  %conv3.i590 = trunc i64 %142 to i32
  %143 = tail call i32 @llvm.bswap.i32(i32 %conv3.i590) #6
  %addr2.i591 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv62, i32 4, i32 1
  %144 = ptrtoint ptr %addr2.i591 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %addr2.i591, align 4
  %145 = trunc i32 %123 to i16
  %conv231 = add nuw i16 %145, 1
  %146 = tail call i16 @llvm.bswap.i16(i16 %conv231)
  %nextindex232 = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 4
  %147 = ptrtoint ptr %nextindex232 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %nextindex232, align 2
  %148 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %cflag, align 4
  %and1.i565 = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i565)
  %tobool236.not = icmp eq i32 %and1.i565, 0
  br i1 %tobool236.not, label %if.then237, label %if.end214.if.end326_crit_edge

if.end214.if.end326_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end326

if.then237:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  %lwm238 = getelementptr inbounds %struct.xtlock, ptr %sxtlck.0, i32 0, i32 7
  %150 = ptrtoint ptr %lwm238 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %lwm238, align 2
  %conv240 = zext i8 %151 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool241.not = icmp eq i8 %151, 0
  %152 = tail call i32 @llvm.smin.i32(i32 %conv62, i32 %conv240)
  %cond255 = select i1 %tobool241.not, i32 %conv62, i32 %152
  br label %if.end326.sink.split

if.else263:                                       ; preds = %if.end197
  %sub264 = sub nsw i32 %conv62, %123
  %arrayidx265 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 2
  %arrayidx266 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %123
  %shl267 = shl nsw i32 %sub264, 4
  %153 = call ptr @memmove(ptr %arrayidx265, ptr %arrayidx266, i32 %shl267)
  %add268 = add nsw i32 %sub264, 2
  %arrayidx269 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 %add268
  %flag270 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 2
  %154 = ptrtoint ptr %flag270 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %flag270, align 2
  %156 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %arrayidx269, align 4
  %off272 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 3
  %157 = ptrtoint ptr %off272 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %off272, align 8
  %shr273 = lshr i64 %158, 32
  %conv274 = trunc i64 %shr273 to i8
  %off1275 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 %add268, i32 2
  %159 = ptrtoint ptr %off1275 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv274, ptr %off1275, align 1
  %160 = load i64, ptr %off272, align 8
  %conv278 = trunc i64 %160 to i32
  %161 = tail call i32 @llvm.bswap.i32(i32 %conv278)
  %off2279 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 %add268, i32 3
  %162 = ptrtoint ptr %off2279 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %off2279, align 4
  %loc280 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 %add268, i32 4
  %len281 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 5
  %163 = ptrtoint ptr %len281 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len281, align 8
  %165 = ptrtoint ptr %loc280 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %loc280, align 4
  %and.i593 = and i32 %166, 255
  %and1.i594 = and i32 %164, 16777215
  %167 = tail call i32 @llvm.bswap.i32(i32 %and1.i594) #6
  %or.i595 = or i32 %and.i593, %167
  %168 = ptrtoint ptr %loc280 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or.i595, ptr %loc280, align 4
  %addr283 = getelementptr inbounds %struct.xtsplit, ptr %split, i32 0, i32 4
  %169 = ptrtoint ptr %addr283 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %addr283, align 8
  %sum.shift.i597 = lshr i64 %170, 32
  %conv7.i598 = trunc i64 %sum.shift.i597 to i32
  %conv.i599 = and i32 %conv7.i598, 255
  %or.i600 = or i32 %conv.i599, %167
  store i32 %or.i600, ptr %loc280, align 4
  %conv3.i601 = trunc i64 %170 to i32
  %171 = tail call i32 @llvm.bswap.i32(i32 %conv3.i601) #6
  %addr2.i602 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 %add268, i32 4, i32 1
  %172 = ptrtoint ptr %addr2.i602 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %addr2.i602, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv199, i32 %conv62)
  %cmp284 = icmp sgt i32 %conv199, %conv62
  br i1 %cmp284, label %if.then286, label %if.else263.if.end292_crit_edge

if.else263.if.end292_crit_edge:                   ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end292

if.then286:                                       ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #8
  %add287 = add nsw i32 %sub264, 3
  %arrayidx288 = getelementptr [18 x %struct.xad], ptr %31, i32 0, i32 %add287
  %arrayidx289 = getelementptr [18 x %struct.xad], ptr %cond, i32 0, i32 %conv62
  %sub290 = sub nsw i32 %conv199, %conv62
  %shl291 = shl nsw i32 %sub290, 4
  %173 = call ptr @memmove(ptr %arrayidx288, ptr %arrayidx289, i32 %shl291)
  br label %if.end292

if.end292:                                        ; preds = %if.then286, %if.else263.if.end292_crit_edge
  %conv293 = trunc i32 %123 to i16
  %174 = tail call i16 @llvm.bswap.i16(i16 %conv293)
  %nextindex294 = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 4
  %175 = ptrtoint ptr %nextindex294 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %nextindex294, align 2
  %176 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %cflag, align 4
  %and1.i566 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i566)
  %tobool298.not = icmp eq i32 %and1.i566, 0
  br i1 %tobool298.not, label %if.then299, label %if.end292.if.end326_crit_edge

if.end292.if.end326_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end326

if.then299:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #8
  %lwm300 = getelementptr inbounds %struct.xtlock, ptr %sxtlck.0, i32 0, i32 7
  %178 = ptrtoint ptr %lwm300 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %lwm300, align 2
  %conv302 = zext i8 %179 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool303.not = icmp eq i8 %179, 0
  %180 = tail call i32 @llvm.umin.i32(i32 %123, i32 %conv302)
  %cond317 = select i1 %tobool303.not, i32 %123, i32 %180
  br label %if.end326.sink.split

if.end326.sink.split:                             ; preds = %if.then299, %if.then237
  %cond317.sink = phi i32 [ %cond317, %if.then299 ], [ %cond255, %if.then237 ]
  %lwm300.sink = phi ptr [ %lwm300, %if.then299 ], [ %lwm238, %if.then237 ]
  %.sink620.ph = phi i16 [ 3, %if.then299 ], [ 2, %if.then237 ]
  %conv318 = trunc i32 %cond317.sink to i8
  %181 = ptrtoint ptr %lwm300.sink to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv318, ptr %lwm300.sink, align 2
  br label %if.end326

if.end326:                                        ; preds = %if.end326.sink.split, %if.end292.if.end326_crit_edge, %if.end214.if.end326_crit_edge
  %.sink620 = phi i16 [ 2, %if.end214.if.end326_crit_edge ], [ 3, %if.end292.if.end326_crit_edge ], [ %.sink620.ph, %if.end326.sink.split ]
  %182 = trunc i32 %sub to i16
  %conv324 = add i16 %.sink620, %182
  %183 = tail call i16 @llvm.bswap.i16(i16 %conv324)
  %184 = ptrtoint ptr %nextindex to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %nextindex, align 2
  %185 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %cflag, align 4
  %and1.i567 = and i32 %186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i567)
  %tobool330.not = icmp eq i32 %and1.i567, 0
  br i1 %tobool330.not, label %if.then331, label %if.end326.if.end347_crit_edge

if.end326.if.end347_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end347

if.then331:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #8
  %nextindex332 = getelementptr inbounds %struct.xtheader, ptr %cond, i32 0, i32 4
  %187 = ptrtoint ptr %nextindex332 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %nextindex332, align 2
  %189 = lshr i16 %188, 8
  %conv333 = trunc i16 %189 to i8
  %lwm334 = getelementptr inbounds %struct.xtlock, ptr %sxtlck.0, i32 0, i32 7
  %190 = ptrtoint ptr %lwm334 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %lwm334, align 2
  %sub337 = sub i8 %conv333, %191
  %length340 = getelementptr inbounds %struct.xtlock, ptr %sxtlck.0, i32 0, i32 7, i32 1
  %192 = ptrtoint ptr %length340 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %sub337, ptr %length340, align 1
  %193 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %nextindex, align 2
  %195 = lshr i16 %194, 8
  %conv342 = trunc i16 %195 to i8
  %sub343 = add i8 %conv342, -2
  %length346 = getelementptr inbounds %struct.xtlock, ptr %rxtlck.0, i32 0, i32 7, i32 1
  %196 = ptrtoint ptr %length346 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %sub343, ptr %length346, align 1
  br label %if.end347

if.end347:                                        ; preds = %if.then331, %if.end326.if.end347_crit_edge
  %197 = ptrtoint ptr %rmpp to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call13, ptr %rmpp, align 4
  %198 = ptrtoint ptr %rbnp to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %add.i, ptr %rbnp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %199 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %199)
  %cmp349 = icmp sgt i32 %199, 3
  br i1 %cmp349, label %do.end354, label %if.end347.cleanup_crit_edge

if.end347.cleanup_crit_edge:                      ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end354:                                        ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #8
  %call356 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %cond, ptr noundef %31) #9
  br label %cleanup

clean_up:                                         ; preds = %if.then170, %if.then164.clean_up_crit_edge, %if.end.clean_up_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool360.not = icmp eq i32 %24, 0
  br i1 %tobool360.not, label %clean_up.cleanup_crit_edge, label %if.then361

clean_up.cleanup_crit_edge:                       ; preds = %clean_up
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then361:                                       ; preds = %clean_up
  call void @__sanitizer_cov_trace_pc() #8
  %conv362 = zext i32 %25 to i64
  %200 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i606 = zext i8 %201 to i64
  %shl.i607 = shl i64 %conv362, %sh_prom.i606
  tail call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i607, i32 noundef 0) #6
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then361, %clean_up.cleanup_crit_edge, %do.end354, %if.end347.cleanup_crit_edge, %do.end92, %if.end85.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end92 ], [ 0, %if.end85.cleanup_crit_edge ], [ 0, %do.end354 ], [ 0, %if.end347.cleanup_crit_edge ], [ -5, %if.then361 ], [ -5, %clean_up.cleanup_crit_edge ], [ %call.i.i.i, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !95, !96, !97, !99, !100, !102, !103, !105, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_xtree.c", i32 164, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @xtLookup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @xtLookup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jfs/jfs_xtree.c", i32 542, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @xtInsert._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @xtInsert._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/jfs/jfs_xtree.c", i32 1365, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @xtExtend._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @xtExtend._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/jfs/jfs_xtree.c", i32 1376, i32 23}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/jfs/jfs_xtree.c", i32 1384, i32 23}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jfs/jfs_xtree.c", i32 1431, i32 3}
!22 = !{ptr @xtExtend._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @xtExtend._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/jfs/jfs_xtree.c", i32 1440, i32 4}
!27 = !{ptr @xtExtend._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @xtExtend._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @xtExtend._entry.17, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../fs/jfs/jfs_xtree.c", i32 1447, i32 4}
!32 = !{ptr @xtExtend._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/jfs/jfs_xtree.c", i32 1724, i32 23}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/jfs/jfs_xtree.c", i32 1748, i32 6}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/jfs/jfs_xtree.c", i32 1897, i32 23}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/jfs/jfs_xtree.c", i32 1929, i32 3}
!41 = !{ptr @xtUpdate._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @xtUpdate._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @xtUpdate._entry.23, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../fs/jfs/jfs_xtree.c", i32 1938, i32 4}
!45 = !{ptr @xtUpdate._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @xtUpdate._entry.25, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../fs/jfs/jfs_xtree.c", i32 1945, i32 4}
!48 = !{ptr @xtUpdate._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @xtUpdate._entry.27, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../fs/jfs/jfs_xtree.c", i32 2006, i32 3}
!51 = !{ptr @xtUpdate._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/jfs/jfs_xtree.c", i32 2038, i32 24}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/jfs/jfs_xtree.c", i32 2044, i32 24}
!56 = !{ptr @xtUpdate._entry.31, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../fs/jfs/jfs_xtree.c", i32 2082, i32 3}
!58 = !{ptr @xtUpdate._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @xtUpdate._entry.33, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../fs/jfs/jfs_xtree.c", i32 2092, i32 4}
!61 = !{ptr @xtUpdate._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @xtUpdate._entry.35, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../fs/jfs/jfs_xtree.c", i32 2099, i32 4}
!64 = !{ptr @xtUpdate._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/jfs/jfs_xtree.c", i32 2180, i32 2}
!67 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @xtAppend._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @xtAppend._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/jfs/jfs_xtree.c", i32 3180, i32 2}
!72 = !{ptr @xtTruncate._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @xtTruncate._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @xtTruncate._entry.41, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../fs/jfs/jfs_xtree.c", i32 3232, i32 2}
!77 = !{ptr @xtTruncate._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @xtTruncate._entry.43, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../fs/jfs/jfs_xtree.c", i32 3470, i32 2}
!80 = !{ptr @xtTruncate._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @xtTruncate._entry.45, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../fs/jfs/jfs_xtree.c", i32 3545, i32 5}
!83 = !{ptr @xtTruncate._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/jfs/jfs_xtree.c", i32 3639, i32 23}
!87 = !{ptr @xtTruncate._entry.49, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../fs/jfs/jfs_xtree.c", i32 3643, i32 2}
!89 = !{ptr @xtTruncate._entry_ptr.50, !88, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/jfs/jfs_xtree.c", i32 3740, i32 24}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/jfs/jfs_xtree.c", i32 3755, i32 3}
!95 = !{ptr @xtTruncate_pmap._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @xtTruncate_pmap._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @xtTruncate_pmap._entry.54, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../fs/jfs/jfs_xtree.c", i32 3800, i32 2}
!99 = !{ptr @xtTruncate_pmap._entry_ptr.55, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @xtTruncate_pmap._entry.56, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../fs/jfs/jfs_xtree.c", i32 3843, i32 2}
!102 = !{ptr @xtTruncate_pmap._entry_ptr.57, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/jfs/jfs_xtree.c", i32 3867, i32 10}
!105 = distinct !{null, !106, !"xtStat", i1 false, i1 false}
!106 = !{!"../fs/jfs/jfs_xtree.c", i32 97, i32 3}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/jfs/jfs_xtree.c", i32 266, i32 3}
!109 = !{ptr @xtSearch._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @xtSearch._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @xtSearch._entry.60, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../fs/jfs/jfs_xtree.c", i32 494, i32 3}
!113 = !{ptr @xtSearch._entry_ptr.61, !112, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/jfs/jfs_xtree.c", i32 821, i32 3}
!117 = !{ptr @xtSplitUp._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @xtSplitUp._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/jfs/jfs_xtree.c", i32 1249, i32 2}
!121 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @xtSplitRoot._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @xtSplitRoot._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/jfs/jfs_xtree.c", i32 1332, i32 2}
!126 = !{ptr @xtSplitRoot._entry.66, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @xtSplitRoot._entry_ptr.68, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/jfs/jfs_xtree.c", i32 991, i32 2}
!130 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @xtSplitPage._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @xtSplitPage._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/jfs/jfs_xtree.c", i32 1064, i32 3}
!135 = !{ptr @xtSplitPage._entry.71, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @xtSplitPage._entry_ptr.73, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @xtSplitPage._entry.74, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../fs/jfs/jfs_xtree.c", i32 1076, i32 3}
!139 = !{ptr @xtSplitPage._entry_ptr.75, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @xtSplitPage._entry.76, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../fs/jfs/jfs_xtree.c", i32 1178, i32 2}
!142 = !{ptr @xtSplitPage._entry_ptr.77, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{i64 2154171165, i64 2154171649, i64 2154171202, i64 2154171258, i64 2154171292, i64 2154171316, i64 2154171357, i64 2154171378, i64 2154171406, i64 2154171440}
!154 = !{i64 2154189090, i64 2154189574, i64 2154189127, i64 2154189183, i64 2154189217, i64 2154189241, i64 2154189282, i64 2154189303, i64 2154189331, i64 2154189365}
!155 = !{i64 2154207599, i64 2154208083, i64 2154207636, i64 2154207692, i64 2154207726, i64 2154207750, i64 2154207791, i64 2154207812, i64 2154207840, i64 2154207874}
!156 = !{i64 2154225914, i64 2154226398, i64 2154225951, i64 2154226007, i64 2154226041, i64 2154226065, i64 2154226106, i64 2154226127, i64 2154226155, i64 2154226189}
!157 = !{i64 2154241732, i64 2154242216, i64 2154241769, i64 2154241825, i64 2154241859, i64 2154241883, i64 2154241924, i64 2154241945, i64 2154241973, i64 2154242007}
