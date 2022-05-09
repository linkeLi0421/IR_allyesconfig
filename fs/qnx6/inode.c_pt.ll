; ModuleID = '/llk/IR_all_yes/fs/qnx6/inode.c_pt.bc'
source_filename = "../fs/qnx6/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.qnx6_sb_info = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.qnx6_super_block = type { i32, i32, i64, i32, i32, i32, i16, i16, [16 x i8], i32, i32, i32, i32, i32, i32, %struct.qnx6_root_node, %struct.qnx6_root_node, %struct.qnx6_root_node, %struct.qnx6_root_node }
%struct.qnx6_root_node = type { i64, [16 x i32], i8, i8, [6 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.qnx6_inode_entry = type { i64, i32, i32, i32, i32, i32, i32, i16, i16, [16 x i32], i8, i8, [2 x i8], [6 x i32] }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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
%struct.qnx6_dir_entry = type { i32, i8, [27 x i8] }
%struct.qnx6_inode_info = type { [16 x i32], i8, i32, %struct.inode }
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
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@qnx6_superblock_debug.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qnx6\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qnx6_superblock_debug\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/qnx6/inode.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"magic: %08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qnx6: magic: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@qnx6_superblock_debug.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"checksum: %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qnx6: checksum: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@qnx6_superblock_debug.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial: %llx\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qnx6: serial: %llx\0A\00", [44 x i8] zeroinitializer }, align 32
@qnx6_superblock_debug.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"flags: %08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qnx6: flags: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@qnx6_superblock_debug.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 52, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"blocksize: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qnx6: blocksize: %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@qnx6_superblock_debug.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"num_inodes: %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qnx6: num_inodes: %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@qnx6_superblock_debug.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"free_inodes: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qnx6: free_inodes: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@qnx6_superblock_debug.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"num_blocks: %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qnx6: num_blocks: %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@qnx6_superblock_debug.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.19, i8 0, i8 53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"free_blocks: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qnx6: free_blocks: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@qnx6_superblock_debug.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.21, i8 0, i8 54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inode_levels: %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qnx6: inode_levels: %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@qnx6_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013qnx6: bad inode number on dev %s: %u is out of range\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qnx6_iget\00", [22 x i8] zeroinitializer }, align 32
@qnx6_iget._entry_ptr = internal global ptr @qnx6_iget._entry, section ".printk_index", align 4
@qnx6_iget._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013qnx6: major problem: unable to read inode from dev %s\0A\00", [39 x i8] zeroinitializer }, align 32
@qnx6_iget._entry_ptr.27 = internal global ptr @qnx6_iget._entry.25, section ".printk_index", align 4
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@qnx6_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @qnx6_readpage, ptr null, ptr null, ptr null, ptr @qnx6_readahead, ptr null, ptr null, ptr @qnx6_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qnx6_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@qnx6_dir_operations = external dso_local constant %struct.file_operations, align 4
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@__UNIQUE_ID_alias282 = internal constant [19 x i8] c"qnx6.alias=fs-qnx6\00", section ".modinfo", align 1
@qnx6_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr null, ptr null, ptr @qnx6_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_qnx6__283_679_init_qnx6_fs6 = internal global ptr @init_qnx6_fs, section ".initcall6.init", align 4
@__exitcall_exit_qnx6_fs = internal global ptr @exit_qnx6_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file284 = internal constant [23 x i8] c"qnx6.file=fs/qnx6/qnx6\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [17 x i8] c"qnx6.license=GPL\00", section ".modinfo", align 1
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@qnx6_get_block.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qnx6_get_block\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"qnx6_get_block inode=[%ld] iblock=[%ld]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"qnx6: qnx6_get_block inode=[%ld] iblock=[%ld]\0A\00", [49 x i8] zeroinitializer }, align 32
@qnx6_block_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013qnx6: Requested file block number (%u) too big.\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qnx6_block_map\00", [17 x i8] zeroinitializer }, align 32
@qnx6_block_map._entry_ptr = internal global ptr @qnx6_block_map._entry, section ".printk_index", align 4
@qnx6_block_map._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013qnx6: Error reading block (%u)\0A\00", [62 x i8] zeroinitializer }, align 32
@qnx6_block_map._entry_ptr.36 = internal global ptr @qnx6_block_map._entry.34, section ".printk_index", align 4
@qnx6_check_blockptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013qnx6: hit unused blockpointer.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qnx6_check_blockptr\00", [44 x i8] zeroinitializer }, align 32
@qnx6_check_blockptr._entry_ptr = internal global ptr @qnx6_check_blockptr._entry, section ".printk_index", align 4
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@qnx6_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013qnx6: unable to set blocksize\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qnx6_fill_super\00", [16 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr = internal global ptr @qnx6_fill_super._entry, section ".printk_index", align 4
@qnx6_fill_super._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013qnx6: invalid mount options.\0A\00", [32 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.44 = internal global ptr @qnx6_fill_super._entry.42, section ".printk_index", align 4
@qnx6_fill_super._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013qnx6: unable to read the first superblock\0A\00", [51 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.47 = internal global ptr @qnx6_fill_super._entry.45, section ".printk_index", align 4
@qnx6_fill_super._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013qnx6: superblock #1 checksum error\0A\00", [58 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.50 = internal global ptr @qnx6_fill_super._entry.48, section ".printk_index", align 4
@qnx6_fill_super._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.52 = internal global ptr @qnx6_fill_super._entry.51, section ".printk_index", align 4
@qnx6_fill_super._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.41, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qnx6: unable to read the second superblock\0A\00", [50 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.55 = internal global ptr @qnx6_fill_super._entry.53, section ".printk_index", align 4
@qnx6_fill_super._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.41, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qnx6: wrong signature (magic) in superblock #2.\0A\00", [45 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.58 = internal global ptr @qnx6_fill_super._entry.56, section ".printk_index", align 4
@qnx6_fill_super._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.41, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013qnx6: superblock #2 checksum error\0A\00", [58 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.61 = internal global ptr @qnx6_fill_super._entry.59, section ".printk_index", align 4
@qnx6_fill_super._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.41, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016qnx6: superblock #1 active\0A\00", [34 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.64 = internal global ptr @qnx6_fill_super._entry.62, section ".printk_index", align 4
@qnx6_fill_super._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.41, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016qnx6: superblock #2 active\0A\00", [34 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.67 = internal global ptr @qnx6_fill_super._entry.65, section ".printk_index", align 4
@qnx6_fill_super._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.41, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013qnx6: too many inode levels (max %i, sb %i)\0A\00", [49 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.70 = internal global ptr @qnx6_fill_super._entry.68, section ".printk_index", align 4
@qnx6_fill_super._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.41, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qnx6: too many longfilename levels (max %i, sb %i)\0A\00", [42 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.73 = internal global ptr @qnx6_fill_super._entry.71, section ".printk_index", align 4
@qnx6_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @qnx6_alloc_inode, ptr null, ptr @qnx6_free_inode, ptr null, ptr null, ptr null, ptr null, ptr @qnx6_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qnx6_statfs, ptr @qnx6_remount, ptr null, ptr @qnx6_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.41, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013qnx6: get inode failed\0A\00", [38 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.76 = internal global ptr @qnx6_fill_super._entry.74, section ".printk_index", align 4
@qnx6_fill_super._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.41, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013qnx6: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@qnx6_fill_super._entry_ptr.79 = internal global ptr @qnx6_fill_super._entry.77, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.80 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [2 x %struct.match_token], [16 x i8] } { [2 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.81 }, %struct.match_token { i32 1, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mmi_fs\00", [25 x i8] zeroinitializer }, align 32
@qnx6_check_first_superblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.82, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qnx6_check_first_superblock\00", [36 x i8] zeroinitializer }, align 32
@qnx6_check_first_superblock._entry_ptr = internal global ptr @qnx6_check_first_superblock._entry, section ".printk_index", align 4
@qnx6_check_first_superblock.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs got different endianness.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qnx6: fs got different endianness.\0A\00", [60 x i8] zeroinitializer }, align 32
@qnx6_check_first_superblock._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.82, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qnx6: wrong signature (magic) in superblock #1.\0A\00", [45 x i8] zeroinitializer }, align 32
@qnx6_check_first_superblock._entry_ptr.87 = internal global ptr @qnx6_check_first_superblock._entry.85, section ".printk_index", align 4
@qnx6_check_first_superblock._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.82, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\016qnx6: wrong signature (magic) at position (0x%lx) - will try alternative position (0x0000).\0A\00", [33 x i8] zeroinitializer }, align 32
@qnx6_check_first_superblock._entry_ptr.90 = internal global ptr @qnx6_check_first_superblock._entry.88, section ".printk_index", align 4
@qnx6_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",mmi_fs\00", [24 x i8] zeroinitializer }, align 32
@qnx6_checkroot.match_root = internal global { [2 x [3 x i8]], [26 x i8] } { [2 x [3 x i8]] [[3 x i8] c".\00\00", [3 x i8] c"..\00"], [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error reading root directory\00", [35 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error reading root directory.\00", [34 x i8] zeroinitializer }, align 32
@init_qnx6_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016qnx6: QNX6 filesystem 1.0.0 registered.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_qnx6_fs\00", [19 x i8] zeroinitializer }, align 32
@init_qnx6_fs._entry_ptr = internal global ptr @init_qnx6_fs._entry, section ".printk_index", align 4
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qnx6_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 207, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 208, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 209, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 210, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 211, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 212, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 213, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 214, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 215, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 216, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 541, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 551, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [10 x i8] c"qnx6_aops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 498, i32 46 }
@___asan_gen_.187 = private unnamed_addr constant [13 x i8] c"qnx6_fs_type\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 646, i32 32 }
@___asan_gen_.191 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 44, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 77, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 130, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 139, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 91, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 717, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 315, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 321, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 341, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 356, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 362, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 384, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 390, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 397, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 407, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 413, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 418, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 423, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [10 x i8] c"qnx6_sops\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 38, i32 38 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 446, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 460, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 239, i32 31 }
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 225, i32 28 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 226, i32 14 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 267, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 275, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 281, i32 5 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 283, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant [18 x i8] c"qnx6_inode_cachep\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 595, i32 27 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 53, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant [11 x i8] c"match_root\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 181, i32 14 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 188, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 198, i32 10 }
@___asan_gen_.364 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 669, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private constant [19 x i8] c"../fs/qnx6/inode.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 620, i32 40 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_alias282, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_exit_qnx6_fs, ptr @__initcall__kmod_qnx6__283_679_init_qnx6_fs6, ptr @exit_qnx6_fs, ptr @init_qnx6_fs._entry, ptr @init_qnx6_fs._entry_ptr, ptr @qnx6_block_map._entry, ptr @qnx6_block_map._entry.34, ptr @qnx6_block_map._entry_ptr, ptr @qnx6_block_map._entry_ptr.36, ptr @qnx6_check_blockptr._entry, ptr @qnx6_check_blockptr._entry_ptr, ptr @qnx6_check_first_superblock._entry, ptr @qnx6_check_first_superblock._entry.85, ptr @qnx6_check_first_superblock._entry.88, ptr @qnx6_check_first_superblock._entry_ptr, ptr @qnx6_check_first_superblock._entry_ptr.87, ptr @qnx6_check_first_superblock._entry_ptr.90, ptr @qnx6_fill_super._entry, ptr @qnx6_fill_super._entry.42, ptr @qnx6_fill_super._entry.45, ptr @qnx6_fill_super._entry.48, ptr @qnx6_fill_super._entry.51, ptr @qnx6_fill_super._entry.53, ptr @qnx6_fill_super._entry.56, ptr @qnx6_fill_super._entry.59, ptr @qnx6_fill_super._entry.62, ptr @qnx6_fill_super._entry.65, ptr @qnx6_fill_super._entry.68, ptr @qnx6_fill_super._entry.71, ptr @qnx6_fill_super._entry.74, ptr @qnx6_fill_super._entry.77, ptr @qnx6_fill_super._entry_ptr, ptr @qnx6_fill_super._entry_ptr.44, ptr @qnx6_fill_super._entry_ptr.47, ptr @qnx6_fill_super._entry_ptr.50, ptr @qnx6_fill_super._entry_ptr.52, ptr @qnx6_fill_super._entry_ptr.55, ptr @qnx6_fill_super._entry_ptr.58, ptr @qnx6_fill_super._entry_ptr.61, ptr @qnx6_fill_super._entry_ptr.64, ptr @qnx6_fill_super._entry_ptr.67, ptr @qnx6_fill_super._entry_ptr.70, ptr @qnx6_fill_super._entry_ptr.73, ptr @qnx6_fill_super._entry_ptr.76, ptr @qnx6_fill_super._entry_ptr.79, ptr @qnx6_iget._entry, ptr @qnx6_iget._entry.25, ptr @qnx6_iget._entry_ptr, ptr @qnx6_iget._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @qnx6_aops, ptr @qnx6_fs_type, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @qnx6_sops, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @tokens, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @qnx6_inode_cachep, ptr @.str.91, ptr @qnx6_checkroot.match_root, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_iget._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_block_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_block_map._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_check_blockptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_fill_super._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_check_first_superblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_check_first_superblock._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_check_first_superblock._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_checkroot.match_root to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_qnx6_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qnx6_superblock_debug(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.body6)) #12
          to label %if.then [label %do.body6], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb, align 8
  %s_bytesex.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  %retval.0.i220 = select i1 %cmp.i, i32 %6, i32 %3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i220) #12
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.body25)) #12
          to label %if.then20 [label %do.body25], !srcloc !194

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %sb_checksum = getelementptr inbounds %struct.qnx6_super_block, ptr %sb, i32 0, i32 1
  %7 = ptrtoint ptr %sb_checksum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_checksum, align 4
  %s_bytesex.i221 = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %s_bytesex.i221 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_bytesex.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i222 = icmp eq i32 %10, 0
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  %retval.0.i223 = select i1 %cmp.i222, i32 %11, i32 %8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i223) #12
  br label %do.body25

do.body25:                                        ; preds = %if.then20, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.body44)) #12
          to label %if.then39 [label %do.body44], !srcloc !194

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %sb_serial = getelementptr inbounds %struct.qnx6_super_block, ptr %sb, i32 0, i32 2
  %12 = ptrtoint ptr %sb_serial to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sb_serial, align 8
  %s_bytesex.i224 = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %s_bytesex.i224 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_bytesex.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i225 = icmp eq i32 %15, 0
  %16 = tail call i64 @llvm.bswap.i64(i64 %13) #12
  %retval.0.i226 = select i1 %cmp.i225, i64 %16, i64 %13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.8, i64 noundef %retval.0.i226) #12
  br label %do.body44

do.body44:                                        ; preds = %if.then39, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.body63)) #12
          to label %if.then58 [label %do.body63], !srcloc !194

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  %sb_flags = getelementptr inbounds %struct.qnx6_super_block, ptr %sb, i32 0, i32 5
  %17 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_flags, align 8
  %s_bytesex.i227 = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %s_bytesex.i227 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_bytesex.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i228 = icmp eq i32 %20, 0
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %retval.0.i229 = select i1 %cmp.i228, i32 %21, i32 %18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i229) #12
  br label %do.body63

do.body63:                                        ; preds = %if.then58, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.body82)) #12
          to label %if.then77 [label %do.body82], !srcloc !194

if.then77:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  %sb_blocksize = getelementptr inbounds %struct.qnx6_super_block, ptr %sb, i32 0, i32 9
  %22 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_blocksize, align 8
  %s_bytesex.i230 = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %s_bytesex.i230 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_bytesex.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i231 = icmp eq i32 %25, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %retval.0.i232 = select i1 %cmp.i231, i32 %26, i32 %23
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i232) #12
  br label %do.body82

do.body82:                                        ; preds = %if.then77, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.body101)) #12
          to label %if.then96 [label %do.body101], !srcloc !194

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  %sb_num_inodes = getelementptr inbounds %struct.qnx6_super_block, ptr %sb, i32 0, i32 10
  %27 = ptrtoint ptr %sb_num_inodes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sb_num_inodes, align 4
  %s_bytesex.i233 = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %s_bytesex.i233 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_bytesex.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i234 = icmp eq i32 %30, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  %retval.0.i235 = select i1 %cmp.i234, i32 %31, i32 %28
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i235) #12
  br label %do.body101

do.body101:                                       ; preds = %if.then96, %do.body82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.body120)) #12
          to label %if.then115 [label %do.body120], !srcloc !194

if.then115:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #14
  %sb_free_inodes = getelementptr inbounds %struct.qnx6_super_block, ptr %sb, i32 0, i32 11
  %32 = ptrtoint ptr %sb_free_inodes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sb_free_inodes, align 8
  %s_bytesex.i236 = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %s_bytesex.i236 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_bytesex.i236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i237 = icmp eq i32 %35, 0
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  %retval.0.i238 = select i1 %cmp.i237, i32 %36, i32 %33
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i238) #12
  br label %do.body120

do.body120:                                       ; preds = %if.then115, %do.body101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.body139)) #12
          to label %if.then134 [label %do.body139], !srcloc !194

if.then134:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #14
  %sb_num_blocks = getelementptr inbounds %struct.qnx6_super_block, ptr %sb, i32 0, i32 12
  %37 = ptrtoint ptr %sb_num_blocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_num_blocks, align 4
  %s_bytesex.i239 = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %s_bytesex.i239 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_bytesex.i239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i240 = icmp eq i32 %40, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  %retval.0.i241 = select i1 %cmp.i240, i32 %41, i32 %38
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i241) #12
  br label %do.body139

do.body139:                                       ; preds = %if.then134, %do.body120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.body158)) #12
          to label %if.then153 [label %do.body158], !srcloc !194

if.then153:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #14
  %sb_free_blocks = getelementptr inbounds %struct.qnx6_super_block, ptr %sb, i32 0, i32 13
  %42 = ptrtoint ptr %sb_free_blocks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sb_free_blocks, align 8
  %s_bytesex.i242 = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %s_bytesex.i242 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_bytesex.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i243 = icmp eq i32 %45, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  %retval.0.i244 = select i1 %cmp.i243, i32 %46, i32 %43
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i244) #12
  br label %do.body158

do.body158:                                       ; preds = %if.then153, %do.body139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_superblock_debug, %do.end175)) #12
          to label %if.then172 [label %do.end175], !srcloc !194

if.then172:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #14
  %levels = getelementptr inbounds %struct.qnx6_super_block, ptr %sb, i32 0, i32 15, i32 2
  %47 = ptrtoint ptr %levels to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %levels, align 8
  %conv = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_superblock_debug.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.22, i32 noundef %conv) #12
  br label %do.end175

do.end175:                                        ; preds = %if.then172, %do.body158
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qnx6_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -72
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %call1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ino)
  %cmp = icmp eq i32 %ino, 0
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %s_id, i32 noundef 0) #15
  tail call void @iget_failed(ptr noundef nonnull %call1) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %sub = add i32 %ino, -1
  %shr = lshr i32 %sub, 5
  %inodes = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inodes, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %8, i32 noundef %shr, ptr noundef null, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %if.end24

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %s_id20 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %s_id20) #15
  tail call void @iget_failed(ptr noundef nonnull %call1) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end10
  %and12 = and i32 %sub, 31
  tail call void @__might_sleep(ptr noundef nonnull @.str.28, i32 noundef 44) #12
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end24.if.then.i_crit_edge [
    i32 2, label %if.end24.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end24.if.else.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.end24.if.then.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end24.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #12
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end24.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #12
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %call26 = tail call ptr @page_address(ptr noundef %call.i) #12
  %add.ptr = getelementptr %struct.qnx6_inode_entry, ptr %call26, i32 %and12
  %di_mode = getelementptr %struct.qnx6_inode_entry, ptr %call26, i32 %and12, i32 7
  %13 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %di_mode, align 8
  %s_bytesex.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i145 = icmp eq i32 %16, 0
  %17 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  %retval.0.i = select i1 %cmp.i145, i16 %17, i16 %14
  %18 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %retval.0.i, ptr %call1, align 8
  %di_uid = getelementptr %struct.qnx6_inode_entry, ptr %call26, i32 %and12, i32 1
  %19 = ptrtoint ptr %di_uid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %di_uid, align 8
  %21 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i147 = icmp eq i32 %22, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %retval.0.i148 = select i1 %cmp.i147, i32 %23, i32 %20
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %27, i32 noundef %retval.0.i148) #12
  %28 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %di_gid = getelementptr %struct.qnx6_inode_entry, ptr %call26, i32 %and12, i32 2
  %29 = ptrtoint ptr %di_gid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %di_gid, align 4
  %31 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i150 = icmp eq i32 %32, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  %retval.0.i151 = select i1 %cmp.i150, i32 %33, i32 %30
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %34 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i153 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 53
  %36 = ptrtoint ptr %s_user_ns.i.i153 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_user_ns.i.i153, align 8
  %call1.i154 = tail call i32 @make_kgid(ptr noundef %37, i32 noundef %retval.0.i151) #12
  %38 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call1.i154, ptr %i_gid.i, align 8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr, align 8
  %41 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i156 = icmp eq i32 %42, 0
  %43 = tail call i64 @llvm.bswap.i64(i64 %40) #12
  %retval.0.i157 = select i1 %cmp.i156, i64 %43, i64 %40
  %i_size = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %44 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %retval.0.i157, ptr %i_size, align 8
  %di_mtime = getelementptr %struct.qnx6_inode_entry, ptr %call26, i32 %and12, i32 4
  %45 = ptrtoint ptr %di_mtime to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %di_mtime, align 4
  %47 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i159 = icmp eq i32 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  %retval.0.i160 = select i1 %cmp.i159, i32 %49, i32 %46
  %conv = zext i32 %retval.0.i160 to i64
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %50 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv, ptr %i_mtime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16, i32 1
  %51 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %tv_nsec, align 8
  %di_atime = getelementptr %struct.qnx6_inode_entry, ptr %call26, i32 %and12, i32 5
  %52 = ptrtoint ptr %di_atime to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %di_atime, align 8
  %54 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i162 = icmp eq i32 %55, 0
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #12
  %retval.0.i163 = select i1 %cmp.i162, i32 %56, i32 %53
  %conv35 = zext i32 %retval.0.i163 to i64
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %57 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv35, ptr %i_atime, align 8
  %tv_nsec38 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15, i32 1
  %58 = ptrtoint ptr %tv_nsec38 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %tv_nsec38, align 8
  %di_ctime = getelementptr %struct.qnx6_inode_entry, ptr %call26, i32 %and12, i32 6
  %59 = ptrtoint ptr %di_ctime to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %di_ctime, align 4
  %61 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i165 = icmp eq i32 %62, 0
  %63 = tail call i32 @llvm.bswap.i32(i32 %60) #12
  %retval.0.i166 = select i1 %cmp.i165, i32 %63, i32 %60
  %conv40 = zext i32 %retval.0.i166 to i64
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  %64 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv40, ptr %i_ctime, align 8
  %tv_nsec43 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17, i32 1
  %65 = ptrtoint ptr %tv_nsec43 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %tv_nsec43, align 8
  %add = add i64 %retval.0.i157, 511
  %shr45 = ashr i64 %add, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %66 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %shr45, ptr %i_blocks, align 8
  %di_block_ptr46 = getelementptr %struct.qnx6_inode_entry, ptr %call26, i32 %and12, i32 9
  %67 = call ptr @memcpy(ptr %add.ptr.i, ptr %di_block_ptr46, i32 64)
  %di_filelevels = getelementptr %struct.qnx6_inode_entry, ptr %call26, i32 %and12, i32 10
  %68 = ptrtoint ptr %di_filelevels to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %di_filelevels, align 4
  %di_filelevels47 = getelementptr i8, ptr %call1, i32 -8
  %70 = ptrtoint ptr %di_filelevels47 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %di_filelevels47, align 8
  %71 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %call1, align 8
  %73 = and i16 %72, -4096
  %74 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %73, label %if.else73 [
    i16 -32768, label %if.then53
    i16 16384, label %if.then60
    i16 -24576, label %if.then69
  ]

if.then53:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %75 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @generic_ro_fops, ptr %75, align 8
  %i_mapping54 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %77 = ptrtoint ptr %i_mapping54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_mapping54, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @qnx6_aops, ptr %a_ops, align 4
  br label %if.end77

if.then60:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %80 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @qnx6_dir_inode_operations, ptr %i_op, align 8
  %81 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @qnx6_dir_operations, ptr %81, align 8
  %i_mapping61 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %83 = ptrtoint ptr %i_mapping61 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_mapping61, align 8
  %a_ops62 = getelementptr inbounds %struct.address_space, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %a_ops62 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @qnx6_aops, ptr %a_ops62, align 4
  br label %if.end77

if.then69:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %i_op70 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %86 = ptrtoint ptr %i_op70 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @page_symlink_inode_operations, ptr %i_op70, align 8
  tail call void @inode_nohighmem(ptr noundef nonnull %call1) #12
  %i_mapping71 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %87 = ptrtoint ptr %i_mapping71 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_mapping71, align 8
  %a_ops72 = getelementptr inbounds %struct.address_space, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %a_ops72 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @qnx6_aops, ptr %a_ops72, align 4
  br label %if.end77

if.else73:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @init_special_inode(ptr noundef nonnull %call1, i16 noundef zeroext %72, i32 noundef 0) #12
  br label %if.end77

if.end77:                                         ; preds = %if.else73, %if.then69, %if.then60, %if.then53
  tail call fastcc void @qnx6_put_page(ptr noundef %call.i)
  tail call void @unlock_new_inode(ptr noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end18, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end ], [ %call.i, %do.end18 ], [ %call1, %if.end77 ], [ %call1, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qnx6_put_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.28, i32 noundef 55) #12
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #12
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !195

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !196

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.39) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !197
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !199
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@qnx6_put_page, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !194

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %8) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_qnx6_fs() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @qnx6_fs_type) #12
  tail call void @rcu_barrier() #12
  %0 = load ptr, ptr @qnx6_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_qnx6_fs() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.96, i32 noundef 856, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #12
  store ptr %call.i, ptr @qnx6_inode_cachep, align 4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @qnx6_fs_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcu_barrier() #12
  %0 = load ptr, ptr @qnx6_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx6_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @qnx6_get_block) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qnx6_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @qnx6_get_block) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @qnx6_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @qnx6_get_block) #12
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx6_get_block(ptr nocapture noundef readonly %inode, i64 noundef %iblock, ptr noundef %bh, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_get_block.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_get_block, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %conv = trunc i64 %iblock to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_get_block.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.31, i32 noundef %1, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv4 = trunc i64 %iblock to i32
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_ptrbits.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_ptrbits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_ptrbits.i, align 4
  %notmask.i = shl nsw i32 -1, %7
  %sub.i = xor i32 %notmask.i, -1
  %di_filelevels.i = getelementptr i8, ptr %inode, i32 -8
  %8 = ptrtoint ptr %di_filelevels.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %di_filelevels.i, align 8
  %conv.i = zext i8 %9 to i32
  %mul.i = mul i32 %7, %conv.i
  %shr.i = lshr i32 %conv4, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp.i = icmp sgt i32 %shr.i, 15
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv4) #15
  br label %if.end9

if.end.i:                                         ; preds = %do.end
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -72
  %arrayidx.i = getelementptr [16 x i32], ptr %add.ptr.i.i, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %s_bytesex.i.i.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_bytesex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i = icmp eq i32 %13, 0
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 %14, i32 %11
  %s_blks_off.i.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %s_blks_off.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blks_off.i.i, align 4
  %add.i.i = add i32 %retval.0.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp566.not.i = icmp eq i8 %9, 0
  br i1 %cmp566.not.i, label %if.end.i.qnx6_block_map.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.qnx6_block_map.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qnx6_block_map.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.069.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %brelse.exit.i.for.body.i_crit_edge ]
  %bitdelta.068.i = phi i32 [ %mul.i, %for.body.lr.ph.i ], [ %sub16.i, %brelse.exit.i.for.body.i_crit_edge ]
  %block.067.i = phi i32 [ %add.i.i, %for.body.lr.ph.i ], [ %add.i61.i, %brelse.exit.i.for.body.i_crit_edge ]
  %conv7.i = zext i32 %block.067.i to i64
  %17 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev.i.i, align 4
  %19 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %18, i64 noundef %conv7.i, i32 noundef %20, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %block.067.i) #15
  br label %if.end9

if.end15.i:                                       ; preds = %for.body.i
  %sub16.i = sub i32 %bitdelta.068.i, %7
  %shr17.i = lshr i32 %conv4, %sub16.i
  %and.i = and i32 %shr17.i, %sub.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data.i, align 4
  %arrayidx18.i = getelementptr i32, ptr %22, i32 %and.i
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.i = icmp eq i32 %24, -1
  br i1 %cmp.i.i, label %qnx6_check_blockptr.exit.thread.i, label %brelse.exit.i

qnx6_check_blockptr.exit.thread.i:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  br label %if.end9

brelse.exit.i:                                    ; preds = %if.end15.i
  %25 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i.i57.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %s_bytesex.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_bytesex.i.i57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i58.i = icmp eq i32 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %retval.0.i.i59.i = select i1 %cmp.i.i58.i, i32 %29, i32 %24
  %s_blks_off.i60.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %26, i32 0, i32 2
  %30 = ptrtoint ptr %s_blks_off.i60.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blks_off.i60.i, align 4
  %add.i61.i = add i32 %retval.0.i.i59.i, %31
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #12
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %brelse.exit.i.qnx6_block_map.exit_crit_edge, label %brelse.exit.i.for.body.i_crit_edge

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

brelse.exit.i.qnx6_block_map.exit_crit_edge:      ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qnx6_block_map.exit

qnx6_block_map.exit:                              ; preds = %brelse.exit.i.qnx6_block_map.exit_crit_edge, %if.end.i.qnx6_block_map.exit_crit_edge
  %retval.0.i14 = phi i32 [ %add.i.i, %if.end.i.qnx6_block_map.exit_crit_edge ], [ %add.i61.i, %brelse.exit.i.qnx6_block_map.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i14)
  %tobool6.not = icmp eq i32 %retval.0.i14, 0
  br i1 %tobool6.not, label %qnx6_block_map.exit.if.end9_crit_edge, label %if.then7

qnx6_block_map.exit.if.end9_crit_edge:            ; preds = %qnx6_block_map.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %qnx6_block_map.exit
  %32 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i, align 4
  %conv8 = zext i32 %retval.0.i14 to i64
  %34 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %bh, align 4
  %36 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then7.map_bh.exit_crit_edge

if.then7.map_bh.exit_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh) #12
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then7.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 26
  %37 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %39 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %40 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv8, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 3
  %41 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %43 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %b_size.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %map_bh.exit, %qnx6_block_map.exit.if.end9_crit_edge, %qnx6_check_blockptr.exit.thread.i, %do.end12.i, %do.end.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qnx6_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @qnx6_fill_super) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx6_fill_super(ptr noundef %s, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %call1 = tail call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  br label %outnobh

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %2 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %options.addr.i, align 4
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #12
  %tobool.not.i = icmp eq ptr %data, null
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  br i1 %tobool.not.i, label %if.end5.if.end14_crit_edge, label %while.cond.preheader.i

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

while.cond.preheader.i:                           ; preds = %if.end5
  %call111.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.80) #12
  %cmp.not12.i = icmp eq ptr %call111.i, null
  br i1 %cmp.not12.i, label %while.cond.preheader.i.if.end14_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.if.end14_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %s_mount_opt.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %4, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call113.i = phi ptr [ %call111.i, %while.body.lr.ph.i ], [ %call1.i, %cleanup.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %call113.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call113.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %while.body.i.cleanup.i_crit_edge, label %if.end4.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end4.i:                                        ; preds = %while.body.i
  %call5.i = call i32 @match_token(ptr noundef nonnull %call113.i, ptr noundef nonnull @tokens, ptr noundef nonnull %args.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cond.i = icmp eq i32 %call5.i, 0
  br i1 %cond.i, label %sw.bb.i, label %do.end11

sw.bb.i:                                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_mount_opt.i, align 4
  %or.i = or i32 %9, 65536
  store i32 %or.i, ptr %s_mount_opt.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb.i, %while.body.i.cleanup.i_crit_edge
  %call1.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.80) #12
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %cleanup.i.if.end14_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.if.end14_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end11:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #15
  br label %outnobh

if.end14:                                         ; preds = %cleanup.i.if.end14_crit_edge, %while.cond.preheader.i.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %10 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info, align 16
  %s_mount_opt = getelementptr inbounds %struct.qnx6_sb_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call18 = call ptr @qnx6_mmi_fill_super(ptr noundef %s, i32 noundef %silent) #12
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.outnobh_crit_edge, label %if.then17.mmi_success_crit_edge

if.then17.mmi_success_crit_edge:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmi_success

if.then17.outnobh_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %outnobh

if.end21:                                         ; preds = %if.end14
  %s_bytesex = getelementptr inbounds %struct.qnx6_sb_info, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %s_bytesex to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %s_bytesex, align 4
  %call23 = call fastcc ptr @qnx6_check_first_superblock(ptr noundef %s, i32 noundef 16, i32 noundef %silent)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end21.if.end35_crit_edge

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then25:                                        ; preds = %if.end21
  %call26 = call fastcc ptr @qnx6_check_first_superblock(ptr noundef %s, i32 noundef 0, i32 noundef %silent)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.end31, label %if.then25.if.end35_crit_edge

if.then25.if.end35_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #15
  br label %outnobh

if.end35:                                         ; preds = %if.then25.if.end35_crit_edge, %if.end21.if.end35_crit_edge
  %bootblock_offset.0 = phi i32 [ 8192, %if.end21.if.end35_crit_edge ], [ 0, %if.then25.if.end35_crit_edge ]
  %bh1.0 = phi ptr [ %call23, %if.end21.if.end35_crit_edge ], [ %call26, %if.then25.if.end35_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh1.0, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  call void @qnx6_superblock_debug(ptr noundef %16, ptr noundef %s)
  %sb_checksum = getelementptr inbounds %struct.qnx6_super_block, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sb_checksum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_checksum, align 4
  %19 = ptrtoint ptr %s_bytesex to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_bytesex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  %21 = call i32 @llvm.bswap.i32(i32 %18) #12
  %retval.0.i = select i1 %cmp.i, i32 %21, i32 %18
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 8
  %call38 = call i32 @crc32_be(i32 noundef 0, ptr noundef %add.ptr, i32 noundef 504) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %call38)
  %cmp.not = icmp eq i32 %retval.0.i, %call38
  br i1 %cmp.not, label %if.end45, label %if.end35.brelse.exit397.sink.split_crit_edge

if.end35.brelse.exit397.sink.split_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit397.sink.split

if.end45:                                         ; preds = %if.end35
  %sb_blocksize = getelementptr inbounds %struct.qnx6_super_block, ptr %16, i32 0, i32 9
  %24 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_blocksize, align 8
  %26 = call i32 @llvm.bswap.i32(i32 %25) #12
  %retval.0.i342 = select i1 %cmp.i, i32 %26, i32 %25
  %call47 = call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef %retval.0.i342) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.brelse.exit397.sink.split_crit_edge, label %brelse.exit

if.end45.brelse.exit397.sink.split_crit_edge:     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit397.sink.split

brelse.exit:                                      ; preds = %if.end45
  call void @__brelse(ptr noundef nonnull %bh1.0) #12
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 2
  %27 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %28 to i32
  %shr = lshr i32 %bootblock_offset.0, %conv
  %29 = zext i32 %shr to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %30 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %32 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %31, i64 noundef %29, i32 noundef %33, i32 noundef 8) #12
  %tobool58.not = icmp eq ptr %call.i, null
  br i1 %tobool58.not, label %brelse.exit.outnobh_crit_edge, label %if.end60

brelse.exit.outnobh_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %outnobh

if.end60:                                         ; preds = %brelse.exit
  %b_data61 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %b_data61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data61, align 4
  %sb_num_blocks = getelementptr inbounds %struct.qnx6_super_block, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sb_num_blocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sb_num_blocks, align 4
  %38 = ptrtoint ptr %s_bytesex to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_bytesex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i345 = icmp eq i32 %39, 0
  %40 = call i32 @llvm.bswap.i32(i32 %37) #12
  %retval.0.i346 = select i1 %cmp.i345, i32 %40, i32 %37
  %41 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %s_blocksize_bits, align 4
  %conv64 = zext i8 %42 to i32
  %shr65 = lshr i32 %bootblock_offset.0, %conv64
  %shr68 = lshr i32 4096, %conv64
  %add = add nuw nsw i32 %shr68, %shr65
  %add69 = add i32 %add, %retval.0.i346
  %conv70 = zext i32 %add69 to i64
  %s_blks_off = getelementptr inbounds %struct.qnx6_sb_info, ptr %11, i32 0, i32 2
  %43 = ptrtoint ptr %s_blks_off to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add, ptr %s_blks_off, align 4
  %44 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_bdev.i, align 4
  %46 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize.i, align 16
  %call.i349 = call ptr @__bread_gfp(ptr noundef %45, i64 noundef %conv70, i32 noundef %47, i32 noundef 8) #12
  %tobool79.not = icmp eq ptr %call.i349, null
  br i1 %tobool79.not, label %if.end60.brelse.exit397.sink.split_crit_edge, label %if.end86

if.end60.brelse.exit397.sink.split_crit_edge:     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit397.sink.split

if.end86:                                         ; preds = %if.end60
  %b_data87 = getelementptr inbounds %struct.buffer_head, ptr %call.i349, i32 0, i32 5
  %48 = ptrtoint ptr %b_data87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data87, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %52 = ptrtoint ptr %s_bytesex to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_bytesex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i351 = icmp eq i32 %53, 0
  %54 = call i32 @llvm.bswap.i32(i32 %51) #12
  %retval.0.i352 = select i1 %cmp.i351, i32 %54, i32 %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1746473250, i32 %retval.0.i352)
  %cmp89.not = icmp eq i32 %retval.0.i352, 1746473250
  br i1 %cmp89.not, label %if.end100, label %if.then91

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool92.not = icmp eq i32 %silent, 0
  br i1 %tobool92.not, label %if.then91.brelse.exit397.sink.split_crit_edge, label %if.then91.brelse.exit397_crit_edge

if.then91.brelse.exit397_crit_edge:               ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit397

if.then91.brelse.exit397.sink.split_crit_edge:    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit397.sink.split

if.end100:                                        ; preds = %if.end86
  %sb_checksum101 = getelementptr inbounds %struct.qnx6_super_block, ptr %49, i32 0, i32 1
  %55 = ptrtoint ptr %sb_checksum101 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sb_checksum101, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #12
  %retval.0.i355 = select i1 %cmp.i351, i32 %57, i32 %56
  %add.ptr104 = getelementptr i8, ptr %49, i32 8
  %call105 = call i32 @crc32_be(i32 noundef 0, ptr noundef %add.ptr104, i32 noundef 504) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i355, i32 %call105)
  %cmp106.not = icmp eq i32 %retval.0.i355, %call105
  br i1 %cmp106.not, label %if.end114, label %if.end100.brelse.exit397.sink.split_crit_edge

if.end100.brelse.exit397.sink.split_crit_edge:    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit397.sink.split

if.end114:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %sb_serial = getelementptr inbounds %struct.qnx6_super_block, ptr %35, i32 0, i32 2
  %58 = ptrtoint ptr %sb_serial to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sb_serial, align 8
  %60 = call i64 @llvm.bswap.i64(i64 %59) #12
  %retval.0.i358 = select i1 %cmp.i351, i64 %60, i64 %59
  %61 = ptrtoint ptr %add.ptr104 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %add.ptr104, align 8
  %63 = call i64 @llvm.bswap.i64(i64 %62) #12
  %retval.0.i361 = select i1 %cmp.i351, i64 %63, i64 %62
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i358, i64 %retval.0.i361)
  %cmp118.not = icmp ult i64 %retval.0.i358, %retval.0.i361
  %call.i349.call.i = select i1 %cmp118.not, ptr %call.i349, ptr %call.i
  %b_data87.b_data61 = select i1 %cmp118.not, ptr %b_data87, ptr %b_data61
  %call.i.call.i349 = select i1 %cmp118.not, ptr %call.i, ptr %call.i349
  %.str.66..str.63 = select i1 %cmp118.not, ptr @.str.66, ptr @.str.63
  %64 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i349.call.i, ptr %11, align 4
  %65 = ptrtoint ptr %b_data87.b_data61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data87.b_data61, align 4
  %sb = getelementptr inbounds %struct.qnx6_sb_info, ptr %11, i32 0, i32 1
  %67 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %sb, align 4
  call void @__brelse(ptr noundef nonnull %call.i.call.i349) #12
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.66..str.63) #15
  br label %mmi_success

mmi_success:                                      ; preds = %if.end114, %if.then17.mmi_success_crit_edge
  %sb1.0 = phi ptr [ %call18, %if.then17.mmi_success_crit_edge ], [ %35, %if.end114 ]
  %bh2.0 = phi ptr [ null, %if.then17.mmi_success_crit_edge ], [ %call.i349, %if.end114 ]
  %bh1.1 = phi ptr [ null, %if.then17.mmi_success_crit_edge ], [ %call.i, %if.end114 ]
  %Inode = getelementptr inbounds %struct.qnx6_super_block, ptr %sb1.0, i32 0, i32 15
  %levels = getelementptr inbounds %struct.qnx6_super_block, ptr %sb1.0, i32 0, i32 15, i32 2
  %68 = ptrtoint ptr %levels to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %levels, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %69)
  %cmp138 = icmp ugt i8 %69, 5
  br i1 %cmp138, label %do.end143, label %if.end149

do.end143:                                        ; preds = %mmi_success
  call void @__sanitizer_cov_trace_pc() #14
  %conv137 = zext i8 %69 to i32
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef 5, i32 noundef %conv137) #15
  br label %out

if.end149:                                        ; preds = %mmi_success
  %Longfile = getelementptr inbounds %struct.qnx6_super_block, ptr %sb1.0, i32 0, i32 17
  %levels150 = getelementptr inbounds %struct.qnx6_super_block, ptr %sb1.0, i32 0, i32 17, i32 2
  %70 = ptrtoint ptr %levels150 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %levels150, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %71)
  %cmp152 = icmp ugt i8 %71, 5
  br i1 %cmp152, label %do.end157, label %if.end163

do.end157:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  %conv151 = zext i8 %71 to i32
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 5, i32 noundef %conv151) #15
  br label %out

if.end163:                                        ; preds = %if.end149
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %72 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @qnx6_sops, ptr %s_op, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %73 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1746473250, ptr %s_magic, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %74 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_flags, align 4
  %or = or i32 %75, 1
  store i32 %or, ptr %s_flags, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 35
  %76 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 36
  %77 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 4294967295, ptr %s_time_max, align 64
  %78 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %80 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %81)
  %tobool.not.i.i = icmp ult i32 %81, 4
  %div165338 = lshr i32 %81, 2
  %82 = call i32 @llvm.ctlz.i32(i32 %div165338, i1 true) #12, !range !201
  %sub.i.op.i = xor i32 %82, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %s_ptrbits = getelementptr inbounds %struct.qnx6_sb_info, ptr %79, i32 0, i32 3
  %83 = ptrtoint ptr %s_ptrbits to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub.i, ptr %s_ptrbits, align 4
  %call.i369 = call ptr @new_inode(ptr noundef %s) #12
  %tobool.not.i370 = icmp eq ptr %call.i369, null
  br i1 %tobool.not.i370, label %qnx6_private_inode.exit.thread, label %if.end185

qnx6_private_inode.exit.thread:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  %inodes404 = getelementptr inbounds %struct.qnx6_sb_info, ptr %79, i32 0, i32 6
  %84 = ptrtoint ptr %inodes404 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %inodes404, align 4
  br label %out

if.end185:                                        ; preds = %if.end163
  %add.ptr.i.i = getelementptr i8, ptr %call.i369, i32 -72
  %85 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info, align 16
  %87 = ptrtoint ptr %Inode to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %Inode, align 8
  %s_bytesex.i.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %86, i32 0, i32 5
  %89 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i = icmp eq i32 %90, 0
  %91 = call i64 @llvm.bswap.i64(i64 %88) #12
  %retval.0.i.i = select i1 %cmp.i.i, i64 %91, i64 %88
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call.i369, i32 0, i32 14
  %92 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %retval.0.i.i, ptr %i_size.i, align 8
  %ptr.i = getelementptr inbounds %struct.qnx6_super_block, ptr %sb1.0, i32 0, i32 15, i32 1
  %93 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %ptr.i, i32 64)
  %94 = ptrtoint ptr %levels to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %levels, align 8
  %di_filelevels.i = getelementptr i8, ptr %call.i369, i32 -8
  %96 = ptrtoint ptr %di_filelevels.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %di_filelevels.i, align 8
  %97 = ptrtoint ptr %call.i369 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 -32512, ptr %call.i369, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call.i369, i32 0, i32 9
  %98 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @qnx6_aops, ptr %a_ops.i, align 4
  %inodes = getelementptr inbounds %struct.qnx6_sb_info, ptr %79, i32 0, i32 6
  %101 = ptrtoint ptr %inodes to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i369, ptr %inodes, align 4
  %call.i373 = call ptr @new_inode(ptr noundef %s) #12
  %tobool.not.i374 = icmp eq ptr %call.i373, null
  br i1 %tobool.not.i374, label %qnx6_private_inode.exit387.thread, label %if.end191

qnx6_private_inode.exit387.thread:                ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  %longfile405 = getelementptr inbounds %struct.qnx6_sb_info, ptr %79, i32 0, i32 7
  %102 = ptrtoint ptr %longfile405 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %longfile405, align 4
  br label %out1

if.end191:                                        ; preds = %if.end185
  %add.ptr.i.i375 = getelementptr i8, ptr %call.i373, i32 -72
  %103 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_fs_info, align 16
  %105 = ptrtoint ptr %Longfile to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %Longfile, align 8
  %s_bytesex.i.i377 = getelementptr inbounds %struct.qnx6_sb_info, ptr %104, i32 0, i32 5
  %107 = ptrtoint ptr %s_bytesex.i.i377 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %s_bytesex.i.i377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i.i378 = icmp eq i32 %108, 0
  %109 = call i64 @llvm.bswap.i64(i64 %106) #12
  %retval.0.i.i379 = select i1 %cmp.i.i378, i64 %109, i64 %106
  %i_size.i380 = getelementptr inbounds %struct.inode, ptr %call.i373, i32 0, i32 14
  %110 = ptrtoint ptr %i_size.i380 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %retval.0.i.i379, ptr %i_size.i380, align 8
  %ptr.i381 = getelementptr inbounds %struct.qnx6_super_block, ptr %sb1.0, i32 0, i32 17, i32 1
  %111 = call ptr @memcpy(ptr %add.ptr.i.i375, ptr %ptr.i381, i32 64)
  %112 = ptrtoint ptr %levels150 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %levels150, align 8
  %di_filelevels.i383 = getelementptr i8, ptr %call.i373, i32 -8
  %114 = ptrtoint ptr %di_filelevels.i383 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %di_filelevels.i383, align 8
  %115 = ptrtoint ptr %call.i373 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -32512, ptr %call.i373, align 8
  %i_mapping.i384 = getelementptr inbounds %struct.inode, ptr %call.i373, i32 0, i32 9
  %116 = ptrtoint ptr %i_mapping.i384 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i_mapping.i384, align 8
  %a_ops.i385 = getelementptr inbounds %struct.address_space, ptr %117, i32 0, i32 9
  %118 = ptrtoint ptr %a_ops.i385 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @qnx6_aops, ptr %a_ops.i385, align 4
  %longfile = getelementptr inbounds %struct.qnx6_sb_info, ptr %79, i32 0, i32 7
  %119 = ptrtoint ptr %longfile to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i373, ptr %longfile, align 4
  %call192 = call ptr @qnx6_iget(ptr noundef %s, i32 noundef 1)
  %cmp.i388 = icmp ugt ptr %call192, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i388, label %do.end197, label %if.end201

do.end197:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #15
  %120 = ptrtoint ptr %call192 to i32
  br label %out2

if.end201:                                        ; preds = %if.end191
  %call202 = call ptr @d_make_root(ptr noundef %call192) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %121 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call202, ptr %s_root, align 64
  %tobool204.not = icmp eq ptr %call202, null
  br i1 %tobool204.not, label %if.end201.out2_crit_edge, label %if.end206

if.end201.out2_crit_edge:                         ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  br label %out2

if.end206:                                        ; preds = %if.end201
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call202, i32 0, i32 5
  %122 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %d_inode.i.i, align 8
  %i_mapping.i389 = getelementptr inbounds %struct.inode, ptr %123, i32 0, i32 9
  %124 = ptrtoint ptr %i_mapping.i389 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %i_mapping.i389, align 8
  %call.i.i = call ptr @read_cache_page(ptr noundef %125, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %cmp.i.i390 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i390, label %if.end206.if.then210_crit_edge, label %if.end.i

if.end206.if.then210_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then210

if.end.i:                                         ; preds = %if.end206
  call void @__might_sleep(ptr noundef nonnull @.str.28, i32 noundef 44) #12
  %126 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %127, 30
  %128 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %shr.i.i.i, label %if.end.i.if.then.i.i_crit_edge [
    i32 2, label %if.end.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.end.i.if.else.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %129 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %cmp2.i.not.i.i = icmp eq i32 %129, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %call5.i.i = call ptr @page_address(ptr noundef %call.i.i) #12
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.end.i.if.else.i.i_crit_edge
  %call6.i.i = call ptr @kmap_high(ptr noundef %call.i.i) #12
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %call4.i = call ptr @page_address(ptr noundef %call.i.i) #12
  %de_fname.i = getelementptr %struct.qnx6_dir_entry, ptr %call4.i, i32 0, i32 2
  %call7.i = call i32 @strncmp(ptr noundef %de_fname.i, ptr noundef nonnull @qnx6_checkroot.match_root, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i391 = icmp eq i32 %call7.i, 0
  %de_fname.1.i = getelementptr %struct.qnx6_dir_entry, ptr %call4.i, i32 1, i32 2
  %call7.1.i = call i32 @strncmp(ptr noundef %de_fname.1.i, ptr noundef getelementptr inbounds ([2 x [3 x i8]], ptr @qnx6_checkroot.match_root, i32 0, i32 1), i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %tobool.not.1.i = icmp eq i32 %call7.1.i, 0
  %narrow.i = select i1 %tobool.not.1.i, i1 %tobool.not.i391, i1 false
  call fastcc void @qnx6_put_page(ptr noundef %call.i.i) #12
  br i1 %narrow.i, label %kmap.exit.i.cleanup_crit_edge, label %kmap.exit.i.if.then210_crit_edge

kmap.exit.i.if.then210_crit_edge:                 ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then210

kmap.exit.i.cleanup_crit_edge:                    ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then210:                                       ; preds = %kmap.exit.i.if.then210_crit_edge, %if.end206.if.then210_crit_edge
  %retval.0.i392.ph = phi ptr [ @.str.93, %kmap.exit.i.if.then210_crit_edge ], [ @.str.92, %if.end206.if.then210_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool211.not = icmp eq i32 %silent, 0
  br i1 %tobool211.not, label %do.end215, label %if.then210.out3_crit_edge

if.then210.out3_crit_edge:                        ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #14
  br label %out3

do.end215:                                        ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #14
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %retval.0.i392.ph) #15
  br label %out3

out3:                                             ; preds = %do.end215, %if.then210.out3_crit_edge
  %130 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_root, align 64
  call void @dput(ptr noundef %131) #12
  %132 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %s_root, align 64
  br label %out2

out2:                                             ; preds = %out3, %if.end201.out2_crit_edge, %do.end197
  %ret.0 = phi i32 [ %120, %do.end197 ], [ -22, %out3 ], [ -12, %if.end201.out2_crit_edge ]
  %133 = ptrtoint ptr %longfile to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %longfile, align 4
  call void @iput(ptr noundef %134) #12
  br label %out1

out1:                                             ; preds = %out2, %qnx6_private_inode.exit387.thread
  %ret.1 = phi i32 [ %ret.0, %out2 ], [ -22, %qnx6_private_inode.exit387.thread ]
  %135 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %inodes, align 4
  call void @iput(ptr noundef %136) #12
  br label %out

out:                                              ; preds = %out1, %qnx6_private_inode.exit.thread, %do.end157, %do.end143
  %ret.2 = phi i32 [ -22, %do.end143 ], [ -22, %do.end157 ], [ %ret.1, %out1 ], [ -22, %qnx6_private_inode.exit.thread ]
  %tobool224.not = icmp eq ptr %bh1.1, null
  br i1 %tobool224.not, label %out.if.end226_crit_edge, label %out.brelse.exit397_crit_edge

out.brelse.exit397_crit_edge:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit397

out.if.end226_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end226

brelse.exit397.sink.split:                        ; preds = %if.end100.brelse.exit397.sink.split_crit_edge, %if.then91.brelse.exit397.sink.split_crit_edge, %if.end60.brelse.exit397.sink.split_crit_edge, %if.end45.brelse.exit397.sink.split_crit_edge, %if.end35.brelse.exit397.sink.split_crit_edge
  %.str.40.sink = phi ptr [ @.str.49, %if.end35.brelse.exit397.sink.split_crit_edge ], [ @.str.40, %if.end45.brelse.exit397.sink.split_crit_edge ], [ @.str.54, %if.end60.brelse.exit397.sink.split_crit_edge ], [ @.str.57, %if.then91.brelse.exit397.sink.split_crit_edge ], [ @.str.60, %if.end100.brelse.exit397.sink.split_crit_edge ]
  %bh1.2417.ph = phi ptr [ %bh1.0, %if.end35.brelse.exit397.sink.split_crit_edge ], [ %bh1.0, %if.end45.brelse.exit397.sink.split_crit_edge ], [ %call.i, %if.end60.brelse.exit397.sink.split_crit_edge ], [ %call.i, %if.then91.brelse.exit397.sink.split_crit_edge ], [ %call.i, %if.end100.brelse.exit397.sink.split_crit_edge ]
  %bh2.1415.ph = phi ptr [ null, %if.end35.brelse.exit397.sink.split_crit_edge ], [ null, %if.end45.brelse.exit397.sink.split_crit_edge ], [ null, %if.end60.brelse.exit397.sink.split_crit_edge ], [ %call.i349, %if.then91.brelse.exit397.sink.split_crit_edge ], [ %call.i349, %if.end100.brelse.exit397.sink.split_crit_edge ]
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.40.sink) #15
  br label %brelse.exit397

brelse.exit397:                                   ; preds = %brelse.exit397.sink.split, %out.brelse.exit397_crit_edge, %if.then91.brelse.exit397_crit_edge
  %bh1.2417 = phi ptr [ %bh1.1, %out.brelse.exit397_crit_edge ], [ %call.i, %if.then91.brelse.exit397_crit_edge ], [ %bh1.2417.ph, %brelse.exit397.sink.split ]
  %bh2.1415 = phi ptr [ %bh2.0, %out.brelse.exit397_crit_edge ], [ %call.i349, %if.then91.brelse.exit397_crit_edge ], [ %bh2.1415.ph, %brelse.exit397.sink.split ]
  %ret.2413 = phi i32 [ %ret.2, %out.brelse.exit397_crit_edge ], [ -22, %if.then91.brelse.exit397_crit_edge ], [ -22, %brelse.exit397.sink.split ]
  call void @__brelse(ptr noundef nonnull %bh1.2417) #12
  br label %if.end226

if.end226:                                        ; preds = %brelse.exit397, %out.if.end226_crit_edge
  %bh2.1416 = phi ptr [ %bh2.1415, %brelse.exit397 ], [ %bh2.0, %out.if.end226_crit_edge ]
  %ret.2414 = phi i32 [ %ret.2413, %brelse.exit397 ], [ %ret.2, %out.if.end226_crit_edge ]
  %tobool227.not = icmp eq ptr %bh2.1416, null
  br i1 %tobool227.not, label %if.end226.outnobh_crit_edge, label %brelse.exit401

if.end226.outnobh_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  br label %outnobh

brelse.exit401:                                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %bh2.1416) #12
  br label %outnobh

outnobh:                                          ; preds = %brelse.exit401, %if.end226.outnobh_crit_edge, %brelse.exit.outnobh_crit_edge, %do.end31, %if.then17.outnobh_crit_edge, %do.end11, %do.end
  %ret.3 = phi i32 [ %ret.2414, %brelse.exit401 ], [ %ret.2414, %if.end226.outnobh_crit_edge ], [ -22, %if.then17.outnobh_crit_edge ], [ -22, %brelse.exit.outnobh_crit_edge ], [ -22, %do.end31 ], [ -22, %do.end11 ], [ -22, %do.end ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %137 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup

cleanup:                                          ; preds = %outnobh, %kmap.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %outnobh ], [ -12, %entry.cleanup_crit_edge ], [ 0, %kmap.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qnx6_mmi_fill_super(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qnx6_check_first_superblock(ptr nocapture noundef readonly %s, i32 noundef %offset, i32 noundef %silent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = zext i32 %offset to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %3 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %4, i64 noundef %2, i32 noundef %6, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %s_bytesex.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  %retval.0.i57 = select i1 %cmp.i, i32 %13, i32 %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1746473250, i32 %retval.0.i57)
  %cmp.not = icmp eq i32 %retval.0.i57, 1746473250
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %14 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %s_bytesex.i, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1746473250, i32 %16)
  %cmp8 = icmp eq i32 %16, 1746473250
  br i1 %cmp8, label %do.body11, label %if.else

do.body11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_check_first_superblock.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_check_first_superblock, %cleanup)) #12
          to label %if.then18 [label %cleanup], !srcloc !194

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_check_first_superblock.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.84) #12
  br label %cleanup

if.else:                                          ; preds = %if.then5
  %17 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool24.not = icmp eq i32 %silent, 0
  br i1 %tobool24.not, label %if.then25, label %if.else.brelse.exit_crit_edge

if.else.brelse.exit_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp26 = icmp eq i32 %offset, 0
  br i1 %cmp26, label %do.end31, label %do.end37

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #15
  br label %brelse.exit

do.end37:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i, align 16
  %mul = mul i32 %19, %offset
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %mul) #15
  br label %brelse.exit

brelse.exit:                                      ; preds = %do.end37, %do.end31, %if.else.brelse.exit_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then18, %do.body11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %brelse.exit ], [ null, %do.end ], [ %call.i, %if.then18 ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i, %do.body11 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @qnx6_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @qnx6_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.qnx6_inode_info, ptr %call, i32 0, i32 3
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qnx6_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @qnx6_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -72
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qnx6_put_super(ptr nocapture noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.brelse.exit_crit_edge, label %if.then.i

entry.brelse.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %3) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %entry.brelse.exit_crit_edge
  %longfile = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %longfile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %longfile, align 4
  tail call void @iput(ptr noundef %5) #12
  %inodes = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inodes, align 4
  tail call void @iput(ptr noundef %7) #12
  tail call void @kfree(ptr noundef %1) #12
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %s_fs_info.i, align 16
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qnx6_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %7, 255
  %8 = lshr i32 %7, 12
  %shl.i.i = and i32 %8, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_magic, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %14 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %f_bsize, align 4
  %sb2 = getelementptr inbounds %struct.qnx6_sb_info, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %sb2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sb2, align 4
  %sb_num_blocks = getelementptr inbounds %struct.qnx6_super_block, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %sb_num_blocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_num_blocks, align 4
  %s_bytesex.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %retval.0.i = select i1 %cmp.i, i32 %21, i32 %18
  %conv = zext i32 %retval.0.i to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %22 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %f_blocks, align 8
  %23 = ptrtoint ptr %sb2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sb2, align 4
  %sb_free_blocks = getelementptr inbounds %struct.qnx6_super_block, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %sb_free_blocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_free_blocks, align 8
  %27 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i34 = icmp eq i32 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  %retval.0.i35 = select i1 %cmp.i34, i32 %29, i32 %26
  %conv6 = zext i32 %retval.0.i35 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %30 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv6, ptr %f_bfree, align 8
  %31 = ptrtoint ptr %sb2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sb2, align 4
  %sb_num_inodes = getelementptr inbounds %struct.qnx6_super_block, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %sb_num_inodes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_num_inodes, align 4
  %35 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i37 = icmp eq i32 %36, 0
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %retval.0.i38 = select i1 %cmp.i37, i32 %37, i32 %34
  %conv9 = zext i32 %retval.0.i38 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %38 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv9, ptr %f_files, align 8
  %39 = ptrtoint ptr %sb2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sb2, align 4
  %sb_free_inodes = getelementptr inbounds %struct.qnx6_super_block, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %sb_free_inodes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sb_free_inodes, align 8
  %43 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i40 = icmp eq i32 %44, 0
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  %retval.0.i41 = select i1 %cmp.i40, i32 %45, i32 %42
  %conv12 = zext i32 %retval.0.i41 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %46 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv12, ptr %f_ffree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %47 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv6, ptr %f_bavail, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %48 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 510, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %49 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx6_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #12
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx6_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.qnx6_sb_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.91) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.qnx6_inode_info, ptr %foo, i32 0, i32 3
  tail call void @inode_init_once(ptr noundef %vfs_inode) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/qnx6/inode.c", i32 207, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug271, !1, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/qnx6/inode.c", i32 208, i32 2}
!9 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug272, !8, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/qnx6/inode.c", i32 209, i32 2}
!13 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug273, !12, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/qnx6/inode.c", i32 210, i32 2}
!17 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug274, !16, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/qnx6/inode.c", i32 211, i32 2}
!21 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug275, !20, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/qnx6/inode.c", i32 212, i32 2}
!25 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug276, !24, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!26 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/qnx6/inode.c", i32 213, i32 2}
!29 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug277, !28, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/qnx6/inode.c", i32 214, i32 2}
!33 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug278, !32, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!34 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/qnx6/inode.c", i32 215, i32 2}
!37 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug279, !36, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!38 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/qnx6/inode.c", i32 216, i32 2}
!41 = !{ptr @qnx6_superblock_debug.__UNIQUE_ID_ddebug280, !40, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!42 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/qnx6/inode.c", i32 541, i32 3}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qnx6_iget._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qnx6_iget._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/qnx6/inode.c", i32 551, i32 3}
!50 = !{ptr @qnx6_iget._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qnx6_iget._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_alias282, !53, !"__UNIQUE_ID_alias282", i1 false, i1 false}
!53 = !{!"../fs/qnx6/inode.c", i32 653, i32 1}
!54 = !{ptr @__initcall__kmod_qnx6__283_679_init_qnx6_fs6, !55, !"__initcall__kmod_qnx6__283_679_init_qnx6_fs6", i1 false, i1 false}
!55 = !{!"../fs/qnx6/inode.c", i32 679, i32 1}
!56 = !{ptr @__exitcall_exit_qnx6_fs, !57, !"__exitcall_exit_qnx6_fs", i1 false, i1 false}
!57 = !{!"../fs/qnx6/inode.c", i32 680, i32 1}
!58 = !{ptr @__UNIQUE_ID_file284, !59, !"__UNIQUE_ID_file284", i1 false, i1 false}
!59 = !{!"../fs/qnx6/inode.c", i32 681, i32 1}
!60 = !{ptr @__UNIQUE_ID_license285, !59, !"__UNIQUE_ID_license285", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!63 = !{ptr @qnx6_aops, !64, !"qnx6_aops", i1 false, i1 false}
!64 = !{!"../fs/qnx6/inode.c", i32 498, i32 46}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/qnx6/inode.c", i32 77, i32 2}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qnx6_get_block.__UNIQUE_ID_ddebug270, !66, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!69 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/qnx6/inode.c", i32 130, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @qnx6_block_map._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @qnx6_block_map._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/qnx6/inode.c", i32 139, i32 4}
!77 = !{ptr @qnx6_block_map._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qnx6_block_map._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/qnx6/inode.c", i32 91, i32 3}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @qnx6_check_blockptr._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @qnx6_check_blockptr._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/mm.h", i32 717, i32 2}
!86 = !{ptr @qnx6_fs_type, !87, !"qnx6_fs_type", i1 false, i1 false}
!87 = !{!"../fs/qnx6/inode.c", i32 646, i32 32}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/qnx6/inode.c", i32 315, i32 3}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @qnx6_fill_super._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @qnx6_fill_super._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/qnx6/inode.c", i32 321, i32 3}
!95 = !{ptr @qnx6_fill_super._entry.42, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @qnx6_fill_super._entry_ptr.44, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/qnx6/inode.c", i32 341, i32 4}
!99 = !{ptr @qnx6_fill_super._entry.45, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @qnx6_fill_super._entry_ptr.47, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/qnx6/inode.c", i32 356, i32 3}
!103 = !{ptr @qnx6_fill_super._entry.48, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @qnx6_fill_super._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @qnx6_fill_super._entry.51, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../fs/qnx6/inode.c", i32 362, i32 3}
!107 = !{ptr @qnx6_fill_super._entry_ptr.52, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/qnx6/inode.c", i32 384, i32 3}
!110 = !{ptr @qnx6_fill_super._entry.53, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @qnx6_fill_super._entry_ptr.55, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/qnx6/inode.c", i32 390, i32 4}
!114 = !{ptr @qnx6_fill_super._entry.56, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @qnx6_fill_super._entry_ptr.58, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/qnx6/inode.c", i32 397, i32 3}
!118 = !{ptr @qnx6_fill_super._entry.59, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @qnx6_fill_super._entry_ptr.61, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/qnx6/inode.c", i32 407, i32 3}
!122 = !{ptr @qnx6_fill_super._entry.62, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @qnx6_fill_super._entry_ptr.64, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/qnx6/inode.c", i32 413, i32 3}
!126 = !{ptr @qnx6_fill_super._entry.65, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @qnx6_fill_super._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/qnx6/inode.c", i32 418, i32 3}
!130 = !{ptr @qnx6_fill_super._entry.68, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @qnx6_fill_super._entry_ptr.70, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/qnx6/inode.c", i32 423, i32 3}
!134 = !{ptr @qnx6_fill_super._entry.71, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @qnx6_fill_super._entry_ptr.73, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/qnx6/inode.c", i32 446, i32 3}
!138 = !{ptr @qnx6_fill_super._entry.74, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @qnx6_fill_super._entry_ptr.76, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/qnx6/inode.c", i32 460, i32 4}
!142 = !{ptr @qnx6_fill_super._entry.77, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @qnx6_fill_super._entry_ptr.79, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/qnx6/inode.c", i32 239, i32 31}
!146 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/qnx6/inode.c", i32 226, i32 14}
!148 = !{ptr @tokens, !149, !"tokens", i1 false, i1 false}
!149 = !{!"../fs/qnx6/inode.c", i32 225, i32 28}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/qnx6/inode.c", i32 267, i32 3}
!152 = !{ptr @qnx6_check_first_superblock._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @qnx6_check_first_superblock._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/qnx6/inode.c", i32 275, i32 4}
!156 = !{ptr @qnx6_check_first_superblock.__UNIQUE_ID_ddebug281, !155, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!157 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/qnx6/inode.c", i32 281, i32 5}
!160 = !{ptr @qnx6_check_first_superblock._entry.85, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @qnx6_check_first_superblock._entry_ptr.87, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.89, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/qnx6/inode.c", i32 283, i32 5}
!164 = !{ptr @qnx6_check_first_superblock._entry.88, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @qnx6_check_first_superblock._entry_ptr.90, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @qnx6_sops, !167, !"qnx6_sops", i1 false, i1 false}
!167 = !{!"../fs/qnx6/inode.c", i32 38, i32 38}
!168 = !{ptr @qnx6_inode_cachep, !169, !"qnx6_inode_cachep", i1 false, i1 false}
!169 = !{!"../fs/qnx6/inode.c", i32 595, i32 27}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/qnx6/inode.c", i32 53, i32 17}
!172 = !{ptr @qnx6_checkroot.match_root, !173, !"match_root", i1 false, i1 false}
!173 = !{!"../fs/qnx6/inode.c", i32 181, i32 14}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/qnx6/inode.c", i32 188, i32 10}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/qnx6/inode.c", i32 198, i32 10}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/qnx6/inode.c", i32 669, i32 2}
!180 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @init_qnx6_fs._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @init_qnx6_fs._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/qnx6/inode.c", i32 620, i32 40}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2148968930, i64 2148968935, i64 2148968948, i64 2148968992, i64 2148969026, i64 2148969047}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{!"branch_weights", i32 1, i32 2000}
!197 = !{i64 2153412688, i64 2153413171, i64 2153412725, i64 2153412781, i64 2153412815, i64 2153412839, i64 2153412880, i64 2153412901, i64 2153412929, i64 2153412963}
!198 = !{i64 2148444029}
!199 = !{i64 2148358738, i64 2148358770, i64 2148358799, i64 2148358833, i64 2148358864, i64 2148358887}
!200 = !{i64 2148444258}
!201 = !{i32 0, i32 33}
