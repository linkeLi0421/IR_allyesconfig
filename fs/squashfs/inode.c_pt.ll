; ModuleID = '/llk/IR_all_yes/fs/squashfs/inode.c_pt.bc'
source_filename = "../fs/squashfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
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
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { ptr }
%union.squashfs_inode = type { %struct.squashfs_lreg_inode }
%struct.squashfs_lreg_inode = type { i16, i16, i16, i16, i32, i32, i64, i64, i64, i32, i32, i32, i32, [0 x i16] }
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
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.squashfs_base_inode = type { i16, i16, i16, i16, i32, i32 }
%struct.squashfs_reg_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, [0 x i16] }
%struct.squashfs_dir_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32 }
%struct.squashfs_ldir_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, i16, i32, [0 x %struct.squashfs_dir_index] }
%struct.squashfs_dir_index = type { i32, i32, i32, [0 x i8] }
%struct.squashfs_symlink_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.squashfs_dev_inode = type { i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.squashfs_ldev_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.squashfs_ipc_inode = type { i16, i16, i16, i16, i32, i32, i32 }
%struct.squashfs_lipc_inode = type { i16, i16, i16, i16, i32, i32, i32, i32 }

@squashfs_iget.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"squashfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"squashfs_iget\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/squashfs/inode.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SQUASHFS: Entered squashfs_iget\0A\00", [63 x i8] zeroinitializer }, align 32
@squashfs_read_inode.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"squashfs_read_inode\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SQUASHFS: Entered squashfs_read_inode\0A\00", [57 x i8] zeroinitializer }, align 32
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@squashfs_aops = external dso_local constant %struct.address_space_operations, align 4
@squashfs_read_inode.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"SQUASHFS: File inode %x:%x, start_block %llx, block_list_start %llx, offset %x\0A\00", [48 x i8] zeroinitializer }, align 32
@squashfs_inode_ops = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @squashfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@squashfs_read_inode.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@squashfs_dir_inode_ops = external dso_local constant %struct.inode_operations, align 128
@squashfs_dir_ops = external dso_local constant %struct.file_operations, align 4
@squashfs_read_inode.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"SQUASHFS: Directory inode %x:%x, start_block %llx, offset %x\0A\00", [34 x i8] zeroinitializer }, align 32
@squashfs_read_inode.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"SQUASHFS: Long directory inode %x:%x, start_block %llx, offset %x\0A\00", [61 x i8] zeroinitializer }, align 32
@squashfs_symlink_inode_ops = external dso_local constant %struct.inode_operations, align 128
@squashfs_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@squashfs_read_inode.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"SQUASHFS: Symbolic link inode %x:%x, start_block %llx, offset %x\0A\00", [62 x i8] zeroinitializer }, align 32
@squashfs_read_inode.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SQUASHFS: Device inode %x:%x, rdev %x\0A\00", [57 x i8] zeroinitializer }, align 32
@squashfs_read_inode.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@squashfs_read_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013SQUASHFS error: Unknown inode type %d in squashfs_iget!\0A\00", [37 x i8] zeroinitializer }, align 32
@squashfs_read_inode._entry_ptr = internal global ptr @squashfs_read_inode._entry, section ".printk_index", align 4
@squashfs_read_inode._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013SQUASHFS error: Unable to read inode 0x%llx\0A\00", [49 x i8] zeroinitializer }, align 32
@squashfs_read_inode._entry_ptr.14 = internal global ptr @squashfs_read_inode._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 78, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 110, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 167, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 237, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 264, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 302, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 325, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 390, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [23 x i8] c"../fs/squashfs/inode.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 409, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @squashfs_read_inode._entry, ptr @squashfs_read_inode._entry.12, ptr @squashfs_read_inode._entry_ptr, ptr @squashfs_read_inode._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_read_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_read_inode._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_iget(ptr noundef %sb, i64 noundef %ino, i32 noundef %ino_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino_number) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_iget.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_iget, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_iget.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @squashfs_read_inode(ptr noundef nonnull %call, i64 noundef %ino)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iget_failed(ptr noundef nonnull %call) #5
  %2 = inttoptr i32 %call11 to ptr
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @unlock_new_inode(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then13 ], [ %call, %if.end15 ], [ %call, %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @squashfs_read_inode(ptr noundef %inode, i64 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %i_uid.i = alloca i32, align 4
  %i_gid.i = alloca i32, align 4
  %block = alloca i64, align 8
  %offset = alloca i32, align 4
  %squashfs_ino = alloca %union.squashfs_inode, align 8
  %frag_blk = alloca i64, align 8
  %frag_blk78 = alloca i64, align 8
  %xattr280 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block) #5
  %4 = lshr i64 %ino, 16
  %conv = trunc i64 %4 to i32
  %conv1 = and i64 %4, 4294967295
  %inode_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %inode_table to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %inode_table, align 8
  %add = add i64 %6, %conv1
  %7 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add, ptr %block, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #5
  %8 = trunc i64 %ino to i32
  %conv2 = and i32 %8, 65535
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv2, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %squashfs_ino) #5
  %10 = call ptr @memset(ptr %squashfs_ino, i32 255, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_inode.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_inode, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_inode.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.do.end491_crit_edge, label %if.end8

do.end.do.end491_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end491

if.end8:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_uid.i) #5
  %11 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %i_uid.i, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_gid.i) #5
  %12 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %i_gid.i, align 4, !annotation !49
  %uid.i = getelementptr inbounds %struct.squashfs_base_inode, ptr %squashfs_ino, i32 0, i32 2
  %13 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %uid.i, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14) #5
  %conv.i = zext i16 %15 to i32
  %call.i = call i32 @squashfs_get_id(ptr noundef %1, i32 noundef %conv.i, ptr noundef nonnull %i_uid.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.squashfs_new_inode.exit.thread_crit_edge

if.end8.squashfs_new_inode.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %squashfs_new_inode.exit.thread

if.end.i:                                         ; preds = %if.end8
  %guid.i = getelementptr inbounds %struct.squashfs_base_inode, ptr %squashfs_ino, i32 0, i32 3
  %16 = ptrtoint ptr %guid.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %guid.i, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17) #5
  %conv1.i = zext i16 %18 to i32
  %call2.i = call i32 @squashfs_get_id(ptr noundef %1, i32 noundef %conv1.i, ptr noundef nonnull %i_gid.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end12, label %if.end.i.squashfs_new_inode.exit.thread_crit_edge

if.end.i.squashfs_new_inode.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %squashfs_new_inode.exit.thread

squashfs_new_inode.exit.thread:                   ; preds = %if.end.i.squashfs_new_inode.exit.thread_crit_edge, %if.end8.squashfs_new_inode.exit.thread_crit_edge
  %retval.0.i742.ph = phi i32 [ %call2.i, %if.end.i.squashfs_new_inode.exit.thread_crit_edge ], [ %call.i, %if.end8.squashfs_new_inode.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_gid.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_uid.i) #5
  br label %do.end491

if.end12:                                         ; preds = %if.end.i
  %19 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_uid.i, align 4
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 53
  %23 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %call1.i.i = call i32 @make_kuid(ptr noundef %24, i32 noundef %20) #5
  %25 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call1.i.i, ptr %i_uid.i.i, align 4
  %26 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_gid.i, align 4
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i34.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %s_user_ns.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_user_ns.i.i34.i, align 8
  %call1.i35.i = call i32 @make_kgid(ptr noundef %31, i32 noundef %27) #5
  %32 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call1.i35.i, ptr %i_gid.i.i, align 8
  %inode_number.i = getelementptr inbounds %struct.squashfs_base_inode, ptr %squashfs_ino, i32 0, i32 5
  %33 = ptrtoint ptr %inode_number.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inode_number.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #5
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %36 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %i_ino.i, align 8
  %mtime.i = getelementptr inbounds %struct.squashfs_base_inode, ptr %squashfs_ino, i32 0, i32 4
  %37 = ptrtoint ptr %mtime.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mtime.i, align 8
  %39 = call i32 @llvm.bswap.i32(i32 %38) #5
  %conv6.i = zext i32 %39 to i64
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %40 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv6.i, ptr %i_mtime.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %41 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv6.i, ptr %i_atime.i, align 8
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %42 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv6.i, ptr %i_ctime.i, align 8
  %mode.i = getelementptr inbounds %struct.squashfs_base_inode, ptr %squashfs_ino, i32 0, i32 1
  %43 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mode.i, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44) #5
  %46 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %inode, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %47 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %i_size.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_gid.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_uid.i) #5
  %48 = ptrtoint ptr %inode_table to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %inode_table, align 8
  %add17 = add i64 %49, %conv1
  %50 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add17, ptr %block, align 8
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv2, ptr %offset, align 4
  %52 = ptrtoint ptr %squashfs_ino to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %squashfs_ino, align 8
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %55 = zext i16 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i16 %54, label %do.end461 [
    i16 2, label %sw.bb
    i16 9, label %sw.bb74
    i16 1, label %sw.bb149
    i16 8, label %sw.bb199
    i16 3, label %if.end12.sw.bb256_crit_edge
    i16 10, label %if.end12.sw.bb256_crit_edge859
    i16 4, label %if.end12.sw.bb316_crit_edge
    i16 5, label %if.end12.sw.bb316_crit_edge860
    i16 11, label %if.end12.sw.bb361_crit_edge
    i16 12, label %if.end12.sw.bb361_crit_edge861
    i16 6, label %if.end12.sw.bb409_crit_edge
    i16 7, label %if.end12.sw.bb409_crit_edge862
    i16 13, label %if.end12.sw.bb433_crit_edge
    i16 14, label %if.end12.sw.bb433_crit_edge863
  ]

if.end12.sw.bb433_crit_edge863:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb433

if.end12.sw.bb433_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb433

if.end12.sw.bb409_crit_edge862:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb409

if.end12.sw.bb409_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb409

if.end12.sw.bb361_crit_edge861:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb361

if.end12.sw.bb361_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb361

if.end12.sw.bb316_crit_edge860:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb316

if.end12.sw.bb316_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb316

if.end12.sw.bb256_crit_edge859:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb256

if.end12.sw.bb256_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb256

sw.bb:                                            ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %frag_blk) #5
  %56 = ptrtoint ptr %frag_blk to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 -1, ptr %frag_blk, align 8, !annotation !49
  %call21 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %sw.bb.cleanup.thread_crit_edge, label %if.end25

sw.bb.cleanup.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end25:                                         ; preds = %sw.bb
  %fragment = getelementptr inbounds %struct.squashfs_reg_inode, ptr %squashfs_ino, i32 0, i32 7
  %57 = ptrtoint ptr %fragment to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fragment, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp26.not = icmp eq i32 %58, -1
  br i1 %cmp26.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end25
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %offset29 = getelementptr inbounds %struct.squashfs_reg_inode, ptr %squashfs_ino, i32 0, i32 8
  %60 = ptrtoint ptr %offset29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset29, align 8
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %call30 = call i32 @squashfs_frag_lookup(ptr noundef %1, i32 noundef %59, ptr noundef nonnull %frag_blk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then28.cleanup.thread_crit_edge, label %if.then28.if.end35_crit_edge

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then28.cleanup.thread_crit_edge:               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %frag_blk to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 -1, ptr %frag_blk, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then28.if.end35_crit_edge
  %frag_size.0 = phi i32 [ %call30, %if.then28.if.end35_crit_edge ], [ 0, %if.else ]
  %frag_offset.0 = phi i32 [ %62, %if.then28.if.end35_crit_edge ], [ 0, %if.else ]
  call void @set_nlink(ptr noundef %inode, i32 noundef 1) #5
  %file_size = getelementptr inbounds %struct.squashfs_reg_inode, ptr %squashfs_ino, i32 0, i32 9
  %64 = ptrtoint ptr %file_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %file_size, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %conv36 = zext i32 %66 to i64
  %67 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv36, ptr %i_size.i, align 8
  %68 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @generic_ro_fops, ptr %68, align 8
  %70 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %inode, align 8
  %72 = or i16 %71, -32768
  store i16 %72, ptr %inode, align 8
  %sub = add nsw i64 %conv36, -1
  %shr40 = ashr i64 %sub, 9
  %add41 = add nsw i64 %shr40, 1
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %73 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %add41, ptr %i_blocks, align 8
  %74 = ptrtoint ptr %frag_blk to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %frag_blk, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -56
  %76 = getelementptr i8, ptr %inode, i32 -24
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %75, ptr %76, align 8
  %fragment_size = getelementptr i8, ptr %inode, i32 -16
  %78 = ptrtoint ptr %fragment_size to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %frag_size.0, ptr %fragment_size, align 8
  %fragment_offset = getelementptr i8, ptr %inode, i32 -12
  %79 = ptrtoint ptr %fragment_offset to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %frag_offset.0, ptr %fragment_offset, align 4
  %start_block = getelementptr inbounds %struct.squashfs_reg_inode, ptr %squashfs_ino, i32 0, i32 6
  %80 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %start_block, align 8
  %82 = call i32 @llvm.bswap.i32(i32 %81)
  %conv45 = zext i32 %82 to i64
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv45, ptr %add.ptr.i, align 8
  %84 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %block, align 8
  %block_list_start = getelementptr i8, ptr %inode, i32 -8
  %86 = ptrtoint ptr %block_list_start to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %block_list_start, align 8
  %87 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offset, align 4
  %offset49 = getelementptr i8, ptr %inode, i32 -48
  %89 = ptrtoint ptr %offset49 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %offset49, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %90 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @squashfs_aops, ptr %a_ops, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_inode.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_inode, %cleanup.thread783)) #5
          to label %cleanup [label %cleanup.thread783], !srcloc !48

cleanup.thread783:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset, align 4
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %add.ptr.i, align 8
  %95 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %block, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_inode.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %92, i64 noundef %94, i64 noundef %96, i32 noundef %92) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frag_blk) #5
  br label %if.else485

cleanup.thread:                                   ; preds = %if.then28.cleanup.thread_crit_edge, %sw.bb.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ %call30, %if.then28.cleanup.thread_crit_edge ], [ %call21, %sw.bb.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frag_blk) #5
  br label %do.end491

cleanup:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frag_blk) #5
  br label %if.else485

sw.bb74:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %frag_blk78) #5
  %97 = ptrtoint ptr %frag_blk78 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 -1, ptr %frag_blk78, align 8, !annotation !49
  %call80 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 56) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %sw.bb74.cleanup143.thread_crit_edge, label %if.end84

sw.bb74.cleanup143.thread_crit_edge:              ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup143.thread

if.end84:                                         ; preds = %sw.bb74
  %fragment85 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %squashfs_ino, i32 0, i32 10
  %98 = ptrtoint ptr %fragment85 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fragment85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp86.not = icmp eq i32 %99, -1
  br i1 %cmp86.not, label %if.else95, label %if.then88

if.then88:                                        ; preds = %if.end84
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  %offset89 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %squashfs_ino, i32 0, i32 11
  %101 = ptrtoint ptr %offset89 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset89, align 8
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %call90 = call i32 @squashfs_frag_lookup(ptr noundef %1, i32 noundef %100, ptr noundef nonnull %frag_blk78) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then88.cleanup143.thread_crit_edge, label %if.then88.if.end96_crit_edge

if.then88.if.end96_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then88.cleanup143.thread_crit_edge:            ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup143.thread

if.else95:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %frag_blk78 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 -1, ptr %frag_blk78, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then88.if.end96_crit_edge
  %frag_size77.0 = phi i32 [ %call90, %if.then88.if.end96_crit_edge ], [ 0, %if.else95 ]
  %frag_offset75.0 = phi i32 [ %103, %if.then88.if.end96_crit_edge ], [ 0, %if.else95 ]
  %xattr = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %squashfs_ino, i32 0, i32 12
  %105 = ptrtoint ptr %xattr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %xattr, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %nlink = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %squashfs_ino, i32 0, i32 9
  %108 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nlink, align 8
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  call void @set_nlink(ptr noundef %inode, i32 noundef %110) #5
  %file_size97 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %squashfs_ino, i32 0, i32 7
  %111 = ptrtoint ptr %file_size97 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %file_size97, align 8
  %113 = call i64 @llvm.bswap.i64(i64 %112)
  %114 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %i_size.i, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %115 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @squashfs_inode_ops, ptr %i_op, align 8
  %116 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @generic_ro_fops, ptr %116, align 8
  %118 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %inode, align 8
  %120 = or i16 %119, -32768
  store i16 %120, ptr %inode, align 8
  %sparse = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %squashfs_ino, i32 0, i32 8
  %121 = ptrtoint ptr %sparse to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %sparse, align 8
  %123 = call i64 @llvm.bswap.i64(i64 %122)
  %sub104 = add i64 %113, 511
  %add105 = sub i64 %sub104, %123
  %shr106 = lshr i64 %add105, 9
  %i_blocks107 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %124 = ptrtoint ptr %i_blocks107 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %shr106, ptr %i_blocks107, align 8
  %125 = ptrtoint ptr %frag_blk78 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %frag_blk78, align 8
  %add.ptr.i749 = getelementptr i8, ptr %inode, i32 -56
  %127 = getelementptr i8, ptr %inode, i32 -24
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %126, ptr %127, align 8
  %fragment_size111 = getelementptr i8, ptr %inode, i32 -16
  %129 = ptrtoint ptr %fragment_size111 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %frag_size77.0, ptr %fragment_size111, align 8
  %fragment_offset113 = getelementptr i8, ptr %inode, i32 -12
  %130 = ptrtoint ptr %fragment_offset113 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %frag_offset75.0, ptr %fragment_offset113, align 4
  %start_block114 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %squashfs_ino, i32 0, i32 6
  %131 = ptrtoint ptr %start_block114 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %start_block114, align 8
  %133 = call i64 @llvm.bswap.i64(i64 %132)
  %134 = ptrtoint ptr %add.ptr.i749 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %add.ptr.i749, align 8
  %135 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %block, align 8
  %block_list_start118 = getelementptr i8, ptr %inode, i32 -8
  %137 = ptrtoint ptr %block_list_start118 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %block_list_start118, align 8
  %138 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %offset, align 4
  %offset120 = getelementptr i8, ptr %inode, i32 -48
  %140 = ptrtoint ptr %offset120 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %offset120, align 8
  %a_ops122 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %141 = ptrtoint ptr %a_ops122 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @squashfs_aops, ptr %a_ops122, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_inode.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_inode, %cleanup143.thread794)) #5
          to label %cleanup143 [label %cleanup143.thread794], !srcloc !48

cleanup143.thread794:                             ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  %142 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %offset, align 4
  %144 = ptrtoint ptr %add.ptr.i749 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %add.ptr.i749, align 8
  %146 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %block, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_inode.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %143, i64 noundef %145, i64 noundef %147, i32 noundef %143) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frag_blk78) #5
  br label %sw.epilog

cleanup143.thread:                                ; preds = %if.then88.cleanup143.thread_crit_edge, %sw.bb74.cleanup143.thread_crit_edge
  %err.1.ph = phi i32 [ %call90, %if.then88.cleanup143.thread_crit_edge ], [ %call80, %sw.bb74.cleanup143.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frag_blk78) #5
  br label %do.end491

cleanup143:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frag_blk78) #5
  br label %sw.epilog

sw.bb149:                                         ; preds = %if.end12
  %call151 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %sw.bb149.do.end491_crit_edge, label %if.end155

sw.bb149.do.end491_crit_edge:                     ; preds = %sw.bb149
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end491

if.end155:                                        ; preds = %sw.bb149
  call void @__sanitizer_cov_trace_pc() #7
  %nlink156 = getelementptr inbounds %struct.squashfs_dir_inode, ptr %squashfs_ino, i32 0, i32 7
  %148 = ptrtoint ptr %nlink156 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nlink156, align 4
  %150 = call i32 @llvm.bswap.i32(i32 %149)
  call void @set_nlink(ptr noundef %inode, i32 noundef %150) #5
  %file_size157 = getelementptr inbounds %struct.squashfs_dir_inode, ptr %squashfs_ino, i32 0, i32 8
  %151 = ptrtoint ptr %file_size157 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %file_size157, align 8
  %153 = call i16 @llvm.bswap.i16(i16 %152)
  %conv158 = zext i16 %153 to i64
  %154 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %conv158, ptr %i_size.i, align 8
  %i_op160 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %155 = ptrtoint ptr %i_op160 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @squashfs_dir_inode_ops, ptr %i_op160, align 8
  %156 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @squashfs_dir_ops, ptr %156, align 8
  %158 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %inode, align 8
  %160 = or i16 %159, 16384
  store i16 %160, ptr %inode, align 8
  %start_block165 = getelementptr inbounds %struct.squashfs_dir_inode, ptr %squashfs_ino, i32 0, i32 6
  %161 = ptrtoint ptr %start_block165 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %start_block165, align 8
  %163 = call i32 @llvm.bswap.i32(i32 %162)
  %conv166 = zext i32 %163 to i64
  %add.ptr.i756 = getelementptr i8, ptr %inode, i32 -56
  %164 = ptrtoint ptr %add.ptr.i756 to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %conv166, ptr %add.ptr.i756, align 8
  %offset169 = getelementptr inbounds %struct.squashfs_dir_inode, ptr %squashfs_ino, i32 0, i32 9
  %165 = ptrtoint ptr %offset169 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %offset169, align 2
  %167 = call i16 @llvm.bswap.i16(i16 %166)
  %conv170 = zext i16 %167 to i32
  %offset172 = getelementptr i8, ptr %inode, i32 -48
  %168 = ptrtoint ptr %offset172 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %conv170, ptr %offset172, align 8
  %dir_idx_cnt = getelementptr i8, ptr %inode, i32 -12
  %169 = ptrtoint ptr %dir_idx_cnt to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %dir_idx_cnt, align 4
  %parent_inode = getelementptr inbounds %struct.squashfs_dir_inode, ptr %squashfs_ino, i32 0, i32 10
  %170 = ptrtoint ptr %parent_inode to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %parent_inode, align 4
  %172 = call i32 @llvm.bswap.i32(i32 %171)
  %parent = getelementptr i8, ptr %inode, i32 -8
  %173 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %parent, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_inode.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_inode, %cleanup197.thread)) #5
          to label %if.else485 [label %cleanup197.thread], !srcloc !48

cleanup197.thread:                                ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  %174 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %offset, align 4
  %176 = ptrtoint ptr %add.ptr.i756 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %add.ptr.i756, align 8
  %178 = ptrtoint ptr %offset169 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %offset169, align 2
  %180 = call i16 @llvm.bswap.i16(i16 %179)
  %conv193 = zext i16 %180 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_inode.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %175, i64 noundef %177, i32 noundef %conv193) #5
  br label %if.else485

sw.bb199:                                         ; preds = %if.end12
  %call201 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %sw.bb199.do.end491_crit_edge, label %if.end205

sw.bb199.do.end491_crit_edge:                     ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end491

if.end205:                                        ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #7
  %xattr206 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %squashfs_ino, i32 0, i32 12
  %181 = ptrtoint ptr %xattr206 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %xattr206, align 4
  %183 = call i32 @llvm.bswap.i32(i32 %182)
  %nlink207 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %squashfs_ino, i32 0, i32 6
  %184 = ptrtoint ptr %nlink207 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %nlink207, align 8
  %186 = call i32 @llvm.bswap.i32(i32 %185)
  call void @set_nlink(ptr noundef %inode, i32 noundef %186) #5
  %file_size208 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %squashfs_ino, i32 0, i32 7
  %187 = ptrtoint ptr %file_size208 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %file_size208, align 4
  %189 = call i32 @llvm.bswap.i32(i32 %188)
  %conv209 = zext i32 %189 to i64
  %190 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %conv209, ptr %i_size.i, align 8
  %i_op211 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %191 = ptrtoint ptr %i_op211 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @squashfs_dir_inode_ops, ptr %i_op211, align 8
  %192 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @squashfs_dir_ops, ptr %192, align 8
  %194 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %inode, align 8
  %196 = or i16 %195, 16384
  store i16 %196, ptr %inode, align 8
  %start_block216 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %squashfs_ino, i32 0, i32 8
  %197 = ptrtoint ptr %start_block216 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %start_block216, align 8
  %199 = call i32 @llvm.bswap.i32(i32 %198)
  %conv217 = zext i32 %199 to i64
  %add.ptr.i761 = getelementptr i8, ptr %inode, i32 -56
  %200 = ptrtoint ptr %add.ptr.i761 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %conv217, ptr %add.ptr.i761, align 8
  %offset220 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %squashfs_ino, i32 0, i32 11
  %201 = ptrtoint ptr %offset220 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %offset220, align 2
  %203 = call i16 @llvm.bswap.i16(i16 %202)
  %conv221 = zext i16 %203 to i32
  %offset223 = getelementptr i8, ptr %inode, i32 -48
  %204 = ptrtoint ptr %offset223 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %conv221, ptr %offset223, align 8
  %205 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %block, align 8
  %207 = getelementptr i8, ptr %inode, i32 -24
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %206, ptr %207, align 8
  %209 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %offset, align 4
  %dir_idx_offset = getelementptr i8, ptr %inode, i32 -16
  %211 = ptrtoint ptr %dir_idx_offset to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %dir_idx_offset, align 8
  %i_count = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %squashfs_ino, i32 0, i32 10
  %212 = ptrtoint ptr %i_count to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %i_count, align 8
  %214 = call i16 @llvm.bswap.i16(i16 %213)
  %conv226 = zext i16 %214 to i32
  %dir_idx_cnt228 = getelementptr i8, ptr %inode, i32 -12
  %215 = ptrtoint ptr %dir_idx_cnt228 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %conv226, ptr %dir_idx_cnt228, align 4
  %parent_inode229 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %squashfs_ino, i32 0, i32 9
  %216 = ptrtoint ptr %parent_inode229 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %parent_inode229, align 4
  %218 = call i32 @llvm.bswap.i32(i32 %217)
  %parent231 = getelementptr i8, ptr %inode, i32 -8
  %219 = ptrtoint ptr %parent231 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %parent231, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_inode.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_inode, %cleanup254.thread)) #5
          to label %sw.epilog [label %cleanup254.thread], !srcloc !48

cleanup254.thread:                                ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  %220 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %offset, align 4
  %222 = ptrtoint ptr %add.ptr.i761 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %add.ptr.i761, align 8
  %224 = ptrtoint ptr %offset220 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %offset220, align 2
  %226 = call i16 @llvm.bswap.i16(i16 %225)
  %conv250 = zext i16 %226 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_inode.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %221, i64 noundef %223, i32 noundef %conv250) #5
  br label %sw.epilog

sw.bb256:                                         ; preds = %if.end12.sw.bb256_crit_edge, %if.end12.sw.bb256_crit_edge859
  %call258 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259 = icmp slt i32 %call258, 0
  br i1 %cmp259, label %sw.bb256.do.end491_crit_edge, label %if.end262

sw.bb256.do.end491_crit_edge:                     ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end491

if.end262:                                        ; preds = %sw.bb256
  %nlink263 = getelementptr inbounds %struct.squashfs_symlink_inode, ptr %squashfs_ino, i32 0, i32 6
  %227 = ptrtoint ptr %nlink263 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %nlink263, align 8
  %229 = call i32 @llvm.bswap.i32(i32 %228)
  call void @set_nlink(ptr noundef %inode, i32 noundef %229) #5
  %symlink_size = getelementptr inbounds %struct.squashfs_symlink_inode, ptr %squashfs_ino, i32 0, i32 7
  %230 = ptrtoint ptr %symlink_size to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %symlink_size, align 4
  %232 = call i32 @llvm.bswap.i32(i32 %231)
  %conv264 = zext i32 %232 to i64
  %233 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 %conv264, ptr %i_size.i, align 8
  %i_op266 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %234 = ptrtoint ptr %i_op266 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @squashfs_symlink_inode_ops, ptr %i_op266, align 8
  call void @inode_nohighmem(ptr noundef %inode) #5
  %a_ops268 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %235 = ptrtoint ptr %a_ops268 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr @squashfs_symlink_aops, ptr %a_ops268, align 8
  %236 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %inode, align 8
  %238 = or i16 %237, -24576
  store i16 %238, ptr %inode, align 8
  %239 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %block, align 8
  %add.ptr.i768 = getelementptr i8, ptr %inode, i32 -56
  %241 = ptrtoint ptr %add.ptr.i768 to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %240, ptr %add.ptr.i768, align 8
  %242 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %offset, align 4
  %offset276 = getelementptr i8, ptr %inode, i32 -48
  %244 = ptrtoint ptr %offset276 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %offset276, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2560, i16 %53)
  %cmp277 = icmp eq i16 %53, 2560
  br i1 %cmp277, label %if.then279, label %if.end262.do.body296_crit_edge

if.end262.do.body296_crit_edge:                   ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body296

if.then279:                                       ; preds = %if.end262
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr280) #5
  %245 = ptrtoint ptr %xattr280 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -1, ptr %xattr280, align 4, !annotation !49
  %246 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %i_size.i, align 8
  %conv282 = trunc i64 %247 to i32
  %call283 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef null, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef %conv282) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283)
  %cmp284 = icmp slt i32 %call283, 0
  br i1 %cmp284, label %if.then279.cleanup293.thread_crit_edge, label %if.end287

if.then279.cleanup293.thread_crit_edge:           ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup293.thread

if.end287:                                        ; preds = %if.then279
  %call288 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %xattr280, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %cmp289 = icmp slt i32 %call288, 0
  br i1 %cmp289, label %if.end287.cleanup293.thread_crit_edge, label %cleanup293

if.end287.cleanup293.thread_crit_edge:            ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup293.thread

cleanup293.thread:                                ; preds = %if.end287.cleanup293.thread_crit_edge, %if.then279.cleanup293.thread_crit_edge
  %err.2.ph = phi i32 [ %call288, %if.end287.cleanup293.thread_crit_edge ], [ %call283, %if.then279.cleanup293.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr280) #5
  br label %do.end491

cleanup293:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #7
  %248 = ptrtoint ptr %xattr280 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %xattr280, align 4
  %250 = call i32 @llvm.bswap.i32(i32 %249)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr280) #5
  br label %do.body296

do.body296:                                       ; preds = %cleanup293, %if.end262.do.body296_crit_edge
  %xattr_id.3 = phi i32 [ %250, %cleanup293 ], [ -1, %if.end262.do.body296_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_inode.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_inode, %if.then308)) #5
          to label %sw.epilog [label %if.then308], !srcloc !48

if.then308:                                       ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #7
  %251 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %offset, align 4
  %253 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %block, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_inode.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %252, i64 noundef %254, i32 noundef %252) #5
  br label %sw.epilog

sw.bb316:                                         ; preds = %if.end12.sw.bb316_crit_edge, %if.end12.sw.bb316_crit_edge860
  %call318 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318)
  %cmp319 = icmp slt i32 %call318, 0
  br i1 %cmp319, label %sw.bb316.do.end491_crit_edge, label %if.end322

sw.bb316.do.end491_crit_edge:                     ; preds = %sw.bb316
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end491

if.end322:                                        ; preds = %sw.bb316
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %53)
  %cmp323 = icmp eq i16 %53, 1280
  %255 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %inode, align 8
  %. = select i1 %cmp323, i16 8192, i16 24576
  %257 = or i16 %256, %.
  store i16 %257, ptr %inode, align 8
  %nlink336 = getelementptr inbounds %struct.squashfs_dev_inode, ptr %squashfs_ino, i32 0, i32 6
  %258 = ptrtoint ptr %nlink336 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %nlink336, align 8
  %260 = call i32 @llvm.bswap.i32(i32 %259)
  call void @set_nlink(ptr noundef %inode, i32 noundef %260) #5
  %rdev337 = getelementptr inbounds %struct.squashfs_dev_inode, ptr %squashfs_ino, i32 0, i32 7
  %261 = ptrtoint ptr %rdev337 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %rdev337, align 4
  %263 = call i32 @llvm.bswap.i32(i32 %262)
  %264 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %inode, align 8
  %and1.i = and i32 %263, 255
  %shr2.i = lshr i32 %263, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %266 = shl i32 %263, 12
  %shl.i = and i32 %266, -1048576
  %or4.i = or i32 %or.i, %shl.i
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %265, i32 noundef %or4.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_inode.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_inode, %cleanup358.thread)) #5
          to label %if.else485 [label %cleanup358.thread], !srcloc !48

cleanup358.thread:                                ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #7
  %267 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %offset, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_inode.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %268, i32 noundef %263) #5
  br label %if.else485

sw.bb361:                                         ; preds = %if.end12.sw.bb361_crit_edge, %if.end12.sw.bb361_crit_edge861
  %call364 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364)
  %cmp365 = icmp slt i32 %call364, 0
  br i1 %cmp365, label %sw.bb361.do.end491_crit_edge, label %if.end368

sw.bb361.do.end491_crit_edge:                     ; preds = %sw.bb361
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end491

if.end368:                                        ; preds = %sw.bb361
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %53)
  %cmp369 = icmp eq i16 %53, 3072
  %269 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %inode, align 8
  %.856 = select i1 %cmp369, i16 8192, i16 24576
  %271 = or i16 %270, %.856
  store i16 %271, ptr %inode, align 8
  %xattr382 = getelementptr inbounds %struct.squashfs_ldev_inode, ptr %squashfs_ino, i32 0, i32 8
  %272 = ptrtoint ptr %xattr382 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %xattr382, align 8
  %274 = call i32 @llvm.bswap.i32(i32 %273)
  %i_op383 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %275 = ptrtoint ptr %i_op383 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr @squashfs_inode_ops, ptr %i_op383, align 8
  %nlink384 = getelementptr inbounds %struct.squashfs_ldev_inode, ptr %squashfs_ino, i32 0, i32 6
  %276 = ptrtoint ptr %nlink384 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %nlink384, align 8
  %278 = call i32 @llvm.bswap.i32(i32 %277)
  call void @set_nlink(ptr noundef %inode, i32 noundef %278) #5
  %rdev385 = getelementptr inbounds %struct.squashfs_ldev_inode, ptr %squashfs_ino, i32 0, i32 7
  %279 = ptrtoint ptr %rdev385 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %rdev385, align 4
  %281 = call i32 @llvm.bswap.i32(i32 %280)
  %282 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %inode, align 8
  %and1.i733 = and i32 %281, 255
  %shr2.i734 = lshr i32 %281, 12
  %and3.i735 = and i32 %shr2.i734, 1048320
  %or.i736 = or i32 %and3.i735, %and1.i733
  %284 = shl i32 %281, 12
  %shl.i737 = and i32 %284, -1048576
  %or4.i738 = or i32 %or.i736, %shl.i737
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %283, i32 noundef %or4.i738) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_inode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_inode, %cleanup406.thread)) #5
          to label %sw.epilog [label %cleanup406.thread], !srcloc !48

cleanup406.thread:                                ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #7
  %285 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %offset, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_inode.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %286, i32 noundef %281) #5
  br label %sw.epilog

sw.bb409:                                         ; preds = %if.end12.sw.bb409_crit_edge, %if.end12.sw.bb409_crit_edge862
  %call411 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411)
  %cmp412 = icmp slt i32 %call411, 0
  br i1 %cmp412, label %sw.bb409.do.end491_crit_edge, label %if.end415

sw.bb409.do.end491_crit_edge:                     ; preds = %sw.bb409
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end491

if.end415:                                        ; preds = %sw.bb409
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %53)
  %cmp416 = icmp eq i16 %53, 1536
  %287 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %inode, align 8
  %.857 = select i1 %cmp416, i16 4096, i16 -16384
  %289 = or i16 %288, %.857
  store i16 %289, ptr %inode, align 8
  %nlink429 = getelementptr inbounds %struct.squashfs_ipc_inode, ptr %squashfs_ino, i32 0, i32 6
  %290 = ptrtoint ptr %nlink429 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %nlink429, align 8
  %292 = call i32 @llvm.bswap.i32(i32 %291)
  call void @set_nlink(ptr noundef %inode, i32 noundef %292) #5
  %293 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %inode, align 8
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %294, i32 noundef 0) #5
  br label %if.else485

sw.bb433:                                         ; preds = %if.end12.sw.bb433_crit_edge, %if.end12.sw.bb433_crit_edge863
  %call435 = call i32 @squashfs_read_metadata(ptr noundef %1, ptr noundef nonnull %squashfs_ino, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call435)
  %cmp436 = icmp slt i32 %call435, 0
  br i1 %cmp436, label %sw.bb433.do.end491_crit_edge, label %if.end439

sw.bb433.do.end491_crit_edge:                     ; preds = %sw.bb433
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end491

if.end439:                                        ; preds = %sw.bb433
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 3328, i16 %53)
  %cmp440 = icmp eq i16 %53, 3328
  %295 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %inode, align 8
  %.858 = select i1 %cmp440, i16 4096, i16 -16384
  %297 = or i16 %296, %.858
  store i16 %297, ptr %inode, align 8
  %xattr453 = getelementptr inbounds %struct.squashfs_lipc_inode, ptr %squashfs_ino, i32 0, i32 7
  %298 = ptrtoint ptr %xattr453 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %xattr453, align 4
  %300 = call i32 @llvm.bswap.i32(i32 %299)
  %i_op454 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %301 = ptrtoint ptr %i_op454 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr @squashfs_inode_ops, ptr %i_op454, align 8
  %nlink455 = getelementptr inbounds %struct.squashfs_lipc_inode, ptr %squashfs_ino, i32 0, i32 6
  %302 = ptrtoint ptr %nlink455 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %nlink455, align 8
  %304 = call i32 @llvm.bswap.i32(i32 %303)
  call void @set_nlink(ptr noundef %inode, i32 noundef %304) #5
  %305 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %inode, align 8
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %306, i32 noundef 0) #5
  br label %sw.epilog

do.end461:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %conv20 = zext i16 %54 to i32
  %call463 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv20) #8
  br label %cleanup494

sw.epilog:                                        ; preds = %if.end439, %cleanup406.thread, %if.end368, %if.then308, %do.body296, %cleanup254.thread, %if.end205, %cleanup143, %cleanup143.thread794
  %xattr_id.7 = phi i32 [ %107, %cleanup143 ], [ %107, %cleanup143.thread794 ], [ %183, %cleanup254.thread ], [ %xattr_id.3, %if.then308 ], [ %xattr_id.3, %do.body296 ], [ %274, %cleanup406.thread ], [ %300, %if.end439 ], [ %183, %if.end205 ], [ %274, %if.end368 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %xattr_id.7)
  %cmp464.not = icmp eq i32 %xattr_id.7, -1
  br i1 %cmp464.not, label %sw.epilog.if.else485_crit_edge, label %land.lhs.true

sw.epilog.if.else485_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else485

land.lhs.true:                                    ; preds = %sw.epilog
  %xattr_id_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 9
  %307 = ptrtoint ptr %xattr_id_table to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %xattr_id_table, align 4
  %tobool466.not = icmp eq ptr %308, null
  br i1 %tobool466.not, label %land.lhs.true.if.else485_crit_edge, label %if.then467

land.lhs.true.if.else485_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else485

if.then467:                                       ; preds = %land.lhs.true
  %xattr_count = getelementptr i8, ptr %inode, i32 -28
  %xattr_size = getelementptr i8, ptr %inode, i32 -32
  %xattr471 = getelementptr i8, ptr %inode, i32 -40
  %call472 = call i32 @squashfs_xattr_lookup(ptr noundef %1, i32 noundef %xattr_id.7, ptr noundef %xattr_count, ptr noundef %xattr_size, ptr noundef %xattr471) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call472)
  %cmp473 = icmp slt i32 %call472, 0
  br i1 %cmp473, label %if.then467.do.end491_crit_edge, label %if.end476

if.then467.do.end491_crit_edge:                   ; preds = %if.then467
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end491

if.end476:                                        ; preds = %if.then467
  call void @__sanitizer_cov_trace_pc() #7
  %309 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %xattr_size, align 8
  %sub479 = add i32 %310, -1
  %shr480 = lshr i32 %sub479, 9
  %add481 = add nuw nsw i32 %shr480, 1
  %conv482 = zext i32 %add481 to i64
  %i_blocks483 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %311 = ptrtoint ptr %i_blocks483 to i32
  call void @__asan_load8_noabort(i32 %311)
  %312 = load i64, ptr %i_blocks483, align 8
  %add484 = add i64 %312, %conv482
  store i64 %add484, ptr %i_blocks483, align 8
  br label %cleanup494

if.else485:                                       ; preds = %land.lhs.true.if.else485_crit_edge, %sw.epilog.if.else485_crit_edge, %if.end415, %cleanup358.thread, %if.end322, %cleanup197.thread, %if.end155, %cleanup, %cleanup.thread783
  %xattr_count487 = getelementptr i8, ptr %inode, i32 -28
  %313 = ptrtoint ptr %xattr_count487 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 0, ptr %xattr_count487, align 4
  br label %cleanup494

do.end491:                                        ; preds = %if.then467.do.end491_crit_edge, %sw.bb433.do.end491_crit_edge, %sw.bb409.do.end491_crit_edge, %sw.bb361.do.end491_crit_edge, %sw.bb316.do.end491_crit_edge, %cleanup293.thread, %sw.bb256.do.end491_crit_edge, %sw.bb199.do.end491_crit_edge, %sw.bb149.do.end491_crit_edge, %cleanup143.thread, %cleanup.thread, %squashfs_new_inode.exit.thread, %do.end.do.end491_crit_edge
  %err.5 = phi i32 [ %call5, %do.end.do.end491_crit_edge ], [ %call472, %if.then467.do.end491_crit_edge ], [ %retval.0.i742.ph, %squashfs_new_inode.exit.thread ], [ %err.0.ph, %cleanup.thread ], [ %err.1.ph, %cleanup143.thread ], [ %call151, %sw.bb149.do.end491_crit_edge ], [ %call201, %sw.bb199.do.end491_crit_edge ], [ %err.2.ph, %cleanup293.thread ], [ %call258, %sw.bb256.do.end491_crit_edge ], [ %call318, %sw.bb316.do.end491_crit_edge ], [ %call364, %sw.bb361.do.end491_crit_edge ], [ %call411, %sw.bb409.do.end491_crit_edge ], [ %call435, %sw.bb433.do.end491_crit_edge ]
  %call493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i64 noundef %ino) #8
  br label %cleanup494

cleanup494:                                       ; preds = %do.end491, %if.else485, %if.end476, %do.end461
  %retval.0 = phi i32 [ %err.5, %do.end491 ], [ -22, %do.end461 ], [ 0, %if.else485 ], [ 0, %if.end476 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %squashfs_ino) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_frag_lookup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_xattr_lookup(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_get_id(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/inode.c", i32 78, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @squashfs_iget.__UNIQUE_ID_ddebug234, !1, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/squashfs/inode.c", i32 110, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @squashfs_read_inode.__UNIQUE_ID_ddebug235, !7, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/squashfs/inode.c", i32 167, i32 3}
!12 = !{ptr @squashfs_read_inode.__UNIQUE_ID_ddebug236, !11, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!13 = !{ptr @squashfs_read_inode.__UNIQUE_ID_ddebug237, !14, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!14 = !{!"../fs/squashfs/inode.c", i32 214, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/squashfs/inode.c", i32 237, i32 3}
!17 = !{ptr @squashfs_read_inode.__UNIQUE_ID_ddebug238, !16, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/squashfs/inode.c", i32 264, i32 3}
!20 = !{ptr @squashfs_read_inode.__UNIQUE_ID_ddebug239, !19, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/squashfs/inode.c", i32 302, i32 3}
!23 = !{ptr @squashfs_read_inode.__UNIQUE_ID_ddebug240, !22, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/squashfs/inode.c", i32 325, i32 3}
!26 = !{ptr @squashfs_read_inode.__UNIQUE_ID_ddebug241, !25, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!27 = !{ptr @squashfs_read_inode.__UNIQUE_ID_ddebug242, !28, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!28 = !{!"../fs/squashfs/inode.c", i32 349, i32 3}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/squashfs/inode.c", i32 390, i32 3}
!31 = !{ptr @squashfs_read_inode._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @squashfs_read_inode._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/squashfs/inode.c", i32 409, i32 2}
!35 = !{ptr @squashfs_read_inode._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @squashfs_read_inode._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @squashfs_inode_ops, !38, !"squashfs_inode_ops", i1 false, i1 false}
!38 = !{!"../fs/squashfs/inode.c", i32 414, i32 31}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148486991, i64 2148486996, i64 2148487009, i64 2148487053, i64 2148487087, i64 2148487108}
!49 = !{!"auto-init"}
