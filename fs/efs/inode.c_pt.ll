; ModuleID = '/llk/IR_all_yes/fs/efs/inode.c_pt.bc'
source_filename = "../fs/efs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.efs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.efs_dinode = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, %union.di_addr }
%union.di_addr = type { [12 x %union.extent_u] }
%union.extent_u = type { %struct.extent_s }
%struct.extent_s = type { i64 }
%struct.edevs = type { i16, i32 }
%struct.efs_inode_info = type { i32, i32, [12 x %union.extent_u], %struct.inode }

@efs_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014efs: %s() failed at block %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"efs_iget\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/efs/inode.c\00", [17 x i8] zeroinitializer }, align 32
@efs_iget._entry_ptr = internal global ptr @efs_iget._entry, section ".printk_index", align 4
@efs_iget._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014efs: extent %d has bad magic number in inode %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@efs_iget._entry_ptr.5 = internal global ptr @efs_iget._entry.3, section ".printk_index", align 4
@efs_iget.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"efs\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"efs_iget(): inode %lu, extents %d, mode %o\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"efs: efs_iget(): inode %lu, extents %d, mode %o\0A\00", [47 x i8] zeroinitializer }, align 32
@efs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@efs_dir_operations = external dso_local constant %struct.file_operations, align 4
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@efs_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @efs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_efs_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@efs_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@efs_iget._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014efs: unsupported inode mode %o\0A\00", [62 x i8] zeroinitializer }, align 32
@efs_iget._entry_ptr.11 = internal global ptr @efs_iget._entry.9, section ".printk_index", align 4
@efs_iget._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014efs: failed to read inode %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@efs_iget._entry_ptr.14 = internal global ptr @efs_iget._entry.12, section ".printk_index", align 4
@efs_map_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013efs: %s() failed to map (1 extent)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efs_map_block\00", [18 x i8] zeroinitializer }, align 32
@efs_map_block._entry_ptr = internal global ptr @efs_map_block._entry, section ".printk_index", align 4
@efs_map_block._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013efs: %s() failed to map block %u (dir)\0A\00", [54 x i8] zeroinitializer }, align 32
@efs_map_block._entry_ptr.19 = internal global ptr @efs_map_block._entry.17, section ".printk_index", align 4
@efs_map_block.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): indirect search for logical block %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"efs: %s(): indirect search for logical block %u\0A\00", [47 x i8] zeroinitializer }, align 32
@efs_map_block._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013efs: couldn't find direct extent for indirect extent %d (block %u)\0A\00", [58 x i8] zeroinitializer }, align 32
@efs_map_block._entry_ptr.24 = internal global ptr @efs_map_block._entry.22, section ".printk_index", align 4
@efs_map_block._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013efs: %s() failed at block %d\0A\00", [32 x i8] zeroinitializer }, align 32
@efs_map_block._entry_ptr.27 = internal global ptr @efs_map_block._entry.25, section ".printk_index", align 4
@efs_map_block.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.2, ptr @.str.28, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): read indirect extent block %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"efs: %s(): read indirect extent block %d\0A\00", [54 x i8] zeroinitializer }, align 32
@efs_map_block._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.16, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013efs: extent %d has bad magic number in block %d\0A\00", [45 x i8] zeroinitializer }, align 32
@efs_map_block._entry_ptr.32 = internal global ptr @efs_map_block._entry.30, section ".printk_index", align 4
@efs_map_block._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.16, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013efs: %s() failed to map block %u (indir)\0A\00", [52 x i8] zeroinitializer }, align 32
@efs_map_block._entry_ptr.35 = internal global ptr @efs_map_block._entry.33, section ".printk_index", align 4
@__UNIQUE_ID_file243 = internal constant [20 x i8] c"efs.file=fs/efs/efs\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [16 x i8] c"efs.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 93, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 134, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 142, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"efs_aops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 25, i32 46 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 164, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 173, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 218, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 236, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 240, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 263, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 281, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 285, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 296, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [18 x i8] c"../fs/efs/inode.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 309, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @efs_iget._entry, ptr @efs_iget._entry.12, ptr @efs_iget._entry.3, ptr @efs_iget._entry.9, ptr @efs_iget._entry_ptr, ptr @efs_iget._entry_ptr.11, ptr @efs_iget._entry_ptr.14, ptr @efs_iget._entry_ptr.5, ptr @efs_map_block._entry, ptr @efs_map_block._entry.17, ptr @efs_map_block._entry.22, ptr @efs_map_block._entry.25, ptr @efs_map_block._entry.30, ptr @efs_map_block._entry.33, ptr @efs_map_block._entry_ptr, ptr @efs_map_block._entry_ptr.19, ptr @efs_map_block._entry_ptr.24, ptr @efs_map_block._entry_ptr.27, ptr @efs_map_block._entry_ptr.32, ptr @efs_map_block._entry_ptr.35, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @efs_aops, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_iget._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_iget._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_iget._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_map_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_map_block._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_map_block._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_map_block._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_map_block._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_map_block._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efs_iget(ptr noundef %super, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %super, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @iget_locked(ptr noundef %super, i32 noundef %ino) #3
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -104
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %div202 = lshr i32 %5, 2
  %fs_start = getelementptr inbounds %struct.efs_sb_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %fs_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fs_start, align 4
  %first_block = getelementptr inbounds %struct.efs_sb_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %first_block to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %first_block, align 4
  %add = add i32 %9, %7
  %group_size = getelementptr inbounds %struct.efs_sb_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %group_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %group_size, align 4
  %inode_blocks = getelementptr inbounds %struct.efs_sb_info, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %inode_blocks to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %inode_blocks, align 4
  %conv = zext i16 %13 to i32
  %div202.frozen = freeze i32 %div202
  %conv.frozen = freeze i32 %conv
  %div7 = udiv i32 %div202.frozen, %conv.frozen
  %mul = mul i32 %div7, %11
  %add8 = add i32 %add, %mul
  %14 = mul i32 %div7, %conv.frozen
  %rem.decomposed = sub i32 %div202.frozen, %14
  %add11 = add i32 %add8, %rem.decomposed
  %i_sb = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %conv15 = sext i32 %add11 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %18, i64 noundef %conv15, i32 noundef %20, i32 noundef 8) #3
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %add11) #6
  br label %do.end112

if.end20:                                         ; preds = %if.end5
  %rem13 = shl i32 %5, 7
  %mul14 = and i32 %rem13, 384
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %mul14
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr, align 4
  %25 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %call1, align 8
  %di_nlink = getelementptr inbounds %struct.efs_dinode, ptr %add.ptr, i32 0, i32 1
  %26 = ptrtoint ptr %di_nlink to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %di_nlink, align 2
  %conv21 = zext i16 %27 to i32
  tail call void @set_nlink(ptr noundef nonnull %call1, i32 noundef %conv21) #3
  %di_uid = getelementptr inbounds %struct.efs_dinode, ptr %add.ptr, i32 0, i32 2
  %28 = ptrtoint ptr %di_uid to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %di_uid, align 4
  %conv22 = zext i16 %29 to i32
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 53
  %32 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %33, i32 noundef %conv22) #3
  %34 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %di_gid = getelementptr inbounds %struct.efs_dinode, ptr %add.ptr, i32 0, i32 3
  %35 = ptrtoint ptr %di_gid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %di_gid, align 2
  %conv23 = zext i16 %36 to i32
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i205 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 53
  %39 = ptrtoint ptr %s_user_ns.i.i205 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_user_ns.i.i205, align 8
  %call1.i206 = tail call i32 @make_kgid(ptr noundef %40, i32 noundef %conv23) #3
  %41 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call1.i206, ptr %i_gid.i, align 8
  %di_size = getelementptr inbounds %struct.efs_dinode, ptr %add.ptr, i32 0, i32 4
  %42 = ptrtoint ptr %di_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %di_size, align 4
  %conv24 = zext i32 %43 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %44 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv24, ptr %i_size, align 8
  %di_atime = getelementptr inbounds %struct.efs_dinode, ptr %add.ptr, i32 0, i32 5
  %45 = ptrtoint ptr %di_atime to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %di_atime, align 4
  %conv25 = zext i32 %46 to i64
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %47 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv25, ptr %i_atime, align 8
  %di_mtime = getelementptr inbounds %struct.efs_dinode, ptr %add.ptr, i32 0, i32 6
  %48 = ptrtoint ptr %di_mtime to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %di_mtime, align 4
  %conv26 = zext i32 %49 to i64
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %50 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv26, ptr %i_mtime, align 8
  %di_ctime = getelementptr inbounds %struct.efs_dinode, ptr %add.ptr, i32 0, i32 7
  %51 = ptrtoint ptr %di_ctime to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %di_ctime, align 4
  %conv28 = zext i32 %52 to i64
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  %53 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv28, ptr %i_ctime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17, i32 1
  %54 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec32 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16, i32 1
  %55 = ptrtoint ptr %tv_nsec32 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %tv_nsec32, align 8
  %tv_nsec34 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15, i32 1
  %56 = ptrtoint ptr %tv_nsec34 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %tv_nsec34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  %sub = add nsw i64 %conv24, -1
  %shr213 = lshr i64 %sub, 9
  %add39 = add nuw nsw i64 %shr213, 1
  %add39.sink = select i1 %cmp, i64 0, i64 %add39
  %57 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add39.sink, ptr %57, align 8
  %di_u = getelementptr inbounds %struct.efs_dinode, ptr %add.ptr, i32 0, i32 12
  %59 = ptrtoint ptr %di_u to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %di_u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %60)
  %cmp43 = icmp eq i16 %60, -1
  br i1 %cmp43, label %if.then45, label %if.else55

if.then45:                                        ; preds = %if.end20
  %ndev = getelementptr inbounds %struct.edevs, ptr %di_u, i32 0, i32 1
  %61 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ndev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %62)
  %cmp48 = icmp ugt i32 %62, 1073741823
  br i1 %cmp48, label %if.then45.if.end58_crit_edge, label %if.else51

if.then45.if.end58_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

if.else51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #5
  %63 = shl nuw i32 %62, 2
  %shl = and i32 %63, -1048576
  %and.i = and i32 %62, 262143
  %or = or i32 %shl, %and.i
  br label %if.end58

if.else55:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i = zext i16 %60 to i32
  %64 = shl nuw nsw i32 %conv.i, 12
  %shl.i = and i32 %64, 267386880
  %and2.i = and i32 %conv.i, 255
  %or.i = or i32 %shl.i, %and2.i
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.else51, %if.then45.if.end58_crit_edge
  %device.0 = phi i32 [ %or, %if.else51 ], [ %or.i, %if.else55 ], [ 0, %if.then45.if.end58_crit_edge ]
  %di_numextents = getelementptr inbounds %struct.efs_dinode, ptr %add.ptr, i32 0, i32 9
  %65 = ptrtoint ptr %di_numextents to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %di_numextents, align 4
  %conv59 = zext i16 %66 to i32
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv59, ptr %add.ptr.i, align 8
  %lastextent = getelementptr i8, ptr %call1, i32 -100
  %68 = ptrtoint ptr %lastextent to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %lastextent, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end58
  %i.0215 = phi i32 [ 0, %if.end58 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %union.extent_u], ptr %di_u, i32 0, i32 %i.0215
  %arrayidx63 = getelementptr %struct.efs_inode_info, ptr %add.ptr.i, i32 0, i32 2, i32 %i.0215
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx, align 4
  %71 = zext i8 %70 to i64
  %72 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %bf.load.i = load i64, ptr %arrayidx63, align 4
  %bf.shl.i = shl nuw i64 %71, 56
  %bf.clear.i = and i64 %bf.load.i, 72057594037927935
  %bf.set.i = or i64 %bf.clear.i, %bf.shl.i
  store i64 %bf.set.i, ptr %arrayidx63, align 4
  %arrayidx1.i = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %74 to i32
  %shl.i207 = shl nuw nsw i32 %conv2.i, 16
  %arrayidx3.i = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx3.i, align 2
  %conv4.i = zext i8 %76 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %or.i208 = or i32 %shl5.i, %shl.i207
  %arrayidx6.i = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %78 to i32
  %or9.i = or i32 %or.i208, %conv7.i
  %79 = zext i32 %or9.i to i64
  %bf.shl12.i = shl nuw nsw i64 %79, 32
  %bf.clear13.i = and i64 %bf.set.i, -72057589742960641
  %bf.set14.i = or i64 %bf.shl12.i, %bf.clear13.i
  store i64 %bf.set14.i, ptr %arrayidx63, align 4
  %arrayidx16.i = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 4
  %80 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx16.i, align 4
  %82 = zext i8 %81 to i64
  %bf.shl20.i = shl nuw nsw i64 %82, 24
  %bf.clear21.i = and i64 %bf.set14.i, -4278190081
  %bf.set22.i = or i64 %bf.clear21.i, %bf.shl20.i
  store i64 %bf.set22.i, ptr %arrayidx63, align 4
  %arrayidx24.i = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 5
  %83 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %84 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 16
  %arrayidx27.i = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 6
  %85 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx27.i, align 2
  %conv28.i = zext i8 %86 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 8
  %or30.i = or i32 %shl29.i, %shl26.i
  %arrayidx31.i = getelementptr [8 x i8], ptr %arrayidx, i32 0, i32 7
  %87 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx31.i, align 1
  %conv32.i = zext i8 %88 to i32
  %or34.i = or i32 %or30.i, %conv32.i
  %89 = zext i32 %or34.i to i64
  %bf.clear37.i = and i64 %bf.set22.i, -16777216
  %bf.set38.i = or i64 %bf.clear37.i, %89
  store i64 %bf.set38.i, ptr %arrayidx63, align 4
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0215, i32 %91)
  %cmp65 = icmp sge i32 %i.0215, %91
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %bf.set38.i)
  %cmp69.not = icmp ult i64 %bf.set38.i, 72057594037927936
  %or.cond = select i1 %cmp65, i1 true, i1 %cmp69.not
  br i1 %or.cond, label %for.inc, label %brelse.exit

brelse.exit:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %92 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %i_ino, align 8
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %i.0215, i32 noundef %93) #6
  tail call void @__brelse(ptr noundef nonnull %call.i) #3
  br label %do.end112

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0215, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %brelse.exit211, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

brelse.exit211:                                   ; preds = %for.inc
  tail call void @__brelse(ptr noundef nonnull %call.i) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efs_iget.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efs_iget, %if.then85)) #3
          to label %do.end92 [label %if.then85], !srcloc !70

if.then85:                                        ; preds = %brelse.exit211
  call void @__sanitizer_cov_trace_pc() #5
  %94 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i_ino, align 8
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i, align 8
  %98 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %call1, align 8
  %conv89 = zext i16 %99 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @efs_iget.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.8, i32 noundef %95, i32 noundef %97, i32 noundef %conv89) #3
  br label %do.end92

do.end92:                                         ; preds = %if.then85, %brelse.exit211
  %100 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %call1, align 8
  %conv94 = zext i16 %101 to i32
  %and95 = and i32 %conv94, 61440
  %102 = add nsw i32 %and95, -4096
  %103 = lshr exact i32 %102, 12
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i32 %103, label %do.end105 [
    i32 3, label %sw.bb
    i32 7, label %sw.bb96
    i32 9, label %sw.bb97
    i32 1, label %do.end92.sw.bb101_crit_edge
    i32 5, label %do.end92.sw.bb101_crit_edge221
    i32 0, label %do.end92.sw.bb101_crit_edge222
  ]

do.end92.sw.bb101_crit_edge222:                   ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb101

do.end92.sw.bb101_crit_edge221:                   ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb101

do.end92.sw.bb101_crit_edge:                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb101

sw.bb:                                            ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #5
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %105 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @efs_dir_inode_operations, ptr %i_op, align 8
  %106 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @efs_dir_operations, ptr %106, align 8
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #5
  %108 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @generic_ro_fops, ptr %108, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 46, i32 9
  %110 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @efs_aops, ptr %a_ops, align 8
  br label %sw.epilog

sw.bb97:                                          ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #5
  %i_op98 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %111 = ptrtoint ptr %i_op98 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @page_symlink_inode_operations, ptr %i_op98, align 8
  tail call void @inode_nohighmem(ptr noundef %call1) #3
  %a_ops100 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 46, i32 9
  %112 = ptrtoint ptr %a_ops100 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @efs_symlink_aops, ptr %a_ops100, align 8
  br label %sw.epilog

sw.bb101:                                         ; preds = %do.end92.sw.bb101_crit_edge, %do.end92.sw.bb101_crit_edge221, %do.end92.sw.bb101_crit_edge222
  tail call void @init_special_inode(ptr noundef %call1, i16 noundef zeroext %101, i32 noundef %device.0) #3
  br label %sw.epilog

do.end105:                                        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #5
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv94) #6
  br label %do.end112

sw.epilog:                                        ; preds = %sw.bb101, %sw.bb97, %sw.bb96, %sw.bb
  tail call void @unlock_new_inode(ptr noundef %call1) #3
  br label %cleanup

do.end112:                                        ; preds = %do.end105, %brelse.exit, %do.end
  %113 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %i_ino, align 8
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %114) #6
  tail call void @iget_failed(ptr noundef %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end112, %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end112 ], [ %call1, %sw.epilog ], [ %call1, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efs_map_block(ptr nocapture noundef %inode, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -104
  %lastextent = getelementptr i8, ptr %inode, i32 -100
  %4 = ptrtoint ptr %lastextent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lastextent, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %cmp = icmp slt i32 %7, 13
  br i1 %cmp, label %if.then, label %do.body25

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.efs_inode_info, ptr %add.ptr.i, i32 0, i32 2, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i = load i64, ptr %arrayidx, align 4
  %9 = trunc i64 %bf.load.i to i32
  %bf.cast7.i = and i32 %9, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast7.i, i32 %block)
  %cmp.not.i = icmp sle i32 %bf.cast7.i, %block
  %10 = lshr i32 %9, 24
  %add.i = add nuw nsw i32 %bf.cast7.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %block)
  %cmp8.i = icmp sgt i32 %add.i, %block
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %efs_extent_check.exit, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

efs_extent_check.exit:                            ; preds = %if.then
  %bf.lshr.i = lshr i64 %bf.load.i, 32
  %11 = trunc i64 %bf.lshr.i to i32
  %bf.cast.i = and i32 %11, 16777215
  %fs_start.i = getelementptr inbounds %struct.efs_sb_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %fs_start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fs_start.i, align 4
  %add9.i = sub i32 %block, %bf.cast7.i
  %add10.i = add i32 %add9.i, %bf.cast.i
  %sub.i = add i32 %add10.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not = icmp eq i32 %sub.i, 0
  br i1 %tobool.not, label %efs_extent_check.exit.if.end_crit_edge, label %efs_extent_check.exit.cleanup_crit_edge

efs_extent_check.exit.cleanup_crit_edge:          ; preds = %efs_extent_check.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

efs_extent_check.exit.if.end_crit_edge:           ; preds = %efs_extent_check.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %efs_extent_check.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp10309 = icmp sgt i32 %7, 1
  br i1 %cmp10309, label %for.body.lr.ph, label %for.cond.preheader.do.end21_crit_edge

for.cond.preheader.do.end21_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end21

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs_start.i241 = getelementptr inbounds %struct.efs_sb_info, ptr %3, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dirext.0310 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %dirext.0310, %5
  %rem = srem i32 %add, %7
  %arrayidx13 = getelementptr %struct.efs_inode_info, ptr %add.ptr.i, i32 0, i32 2, i32 %rem
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load.i233 = load i64, ptr %arrayidx13, align 4
  %15 = trunc i64 %bf.load.i233 to i32
  %bf.cast7.i234 = and i32 %15, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast7.i234, i32 %block)
  %cmp.not.i235 = icmp sle i32 %bf.cast7.i234, %block
  %16 = lshr i32 %15, 24
  %add.i236 = add nuw nsw i32 %bf.cast7.i234, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i236, i32 %block)
  %cmp8.i237 = icmp sgt i32 %add.i236, %block
  %or.cond.i238 = select i1 %cmp.not.i235, i1 %cmp8.i237, i1 false
  br i1 %or.cond.i238, label %efs_extent_check.exit247, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

efs_extent_check.exit247:                         ; preds = %for.body
  %bf.lshr.i239 = lshr i64 %bf.load.i233, 32
  %17 = trunc i64 %bf.lshr.i239 to i32
  %bf.cast.i240 = and i32 %17, 16777215
  %18 = ptrtoint ptr %fs_start.i241 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fs_start.i241, align 4
  %add9.i242 = sub i32 %block, %bf.cast7.i234
  %add10.i243 = add i32 %add9.i242, %bf.cast.i240
  %sub.i244 = add i32 %add10.i243, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i244)
  %tobool15.not = icmp eq i32 %sub.i244, 0
  br i1 %tobool15.not, label %efs_extent_check.exit247.for.inc_crit_edge, label %if.then16

efs_extent_check.exit247.for.inc_crit_edge:       ; preds = %efs_extent_check.exit247
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then16:                                        ; preds = %efs_extent_check.exit247
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %lastextent to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rem, ptr %lastextent, align 4
  br label %cleanup

for.inc:                                          ; preds = %efs_extent_check.exit247.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %dirext.0310, 1
  %exitcond325.not = icmp eq i32 %inc, %7
  br i1 %exitcond325.not, label %for.inc.do.end21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.do.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end21

do.end21:                                         ; preds = %for.inc.do.end21_crit_edge, %for.cond.preheader.do.end21_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %block) #6
  br label %cleanup

do.body25:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efs_map_block.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efs_map_block, %if.then31)) #3
          to label %do.end34 [label %if.then31], !srcloc !70

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @efs_map_block.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, i32 noundef %block) #3
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body25
  %extents35 = getelementptr i8, ptr %inode, i32 -96
  %21 = ptrtoint ptr %extents35 to i32
  call void @__asan_load8_noabort(i32 %21)
  %bf.load = load i64, ptr %extents35, align 8
  %22 = trunc i64 %bf.load to i32
  %bf.cast = and i32 %22, 16777215
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp39303 = icmp sgt i32 %24, 0
  br i1 %cmp39303, label %for.body40.lr.ph, label %do.end34.do.end142_crit_edge

do.end34.do.end142_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end142

for.body40.lr.ph:                                 ; preds = %do.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %cmp45298 = icmp ne i32 %bf.cast, 0
  %fs_start = getelementptr inbounds %struct.efs_sb_info, ptr %3, i32 0, i32 1
  br label %for.body40

for.body40:                                       ; preds = %for.inc134.for.body40_crit_edge, %for.body40.lr.ph
  %bh.0307 = phi ptr [ null, %for.body40.lr.ph ], [ %bh.1, %for.inc134.for.body40_crit_edge ]
  %tobool77.not306 = phi i1 [ false, %for.body40.lr.ph ], [ true, %for.inc134.for.body40_crit_edge ]
  %lastblock.0305 = phi i32 [ 0, %for.body40.lr.ph ], [ %lastblock.1, %for.inc134.for.body40_crit_edge ]
  %indext.0304 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc135, %for.inc134.for.body40_crit_edge ]
  %add41 = add i32 %indext.0304, %5
  %rem42 = srem i32 %add41, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem42)
  %cmp44297 = icmp slt i32 %rem42, 0
  %or.cond299 = select i1 %cmp44297, i1 %cmp45298, i1 false
  br i1 %or.cond299, label %for.body40.for.body46_crit_edge, label %for.body40.for.end55_crit_edge

for.body40.for.end55_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end55

for.body40.for.body46_crit_edge:                  ; preds = %for.body40
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body40.for.body46_crit_edge
  %ibase.0301 = phi i32 [ %add52, %for.body46.for.body46_crit_edge ], [ 0, %for.body40.for.body46_crit_edge ]
  %dirext.1300 = phi i32 [ %inc54, %for.body46.for.body46_crit_edge ], [ 0, %for.body40.for.body46_crit_edge ]
  %arrayidx48 = getelementptr %struct.efs_inode_info, ptr %add.ptr.i, i32 0, i32 2, i32 %dirext.1300
  %25 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load8_noabort(i32 %25)
  %bf.load49 = load i64, ptr %arrayidx48, align 8
  %26 = trunc i64 %bf.load49 to i32
  %27 = lshr i32 %26, 18
  %mul = and i32 %27, 16320
  %add52 = add i32 %mul, %ibase.0301
  %inc54 = add nuw nsw i32 %dirext.1300, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem42, i32 %add52)
  %cmp44 = icmp slt i32 %rem42, %add52
  call void @__sanitizer_cov_trace_cmp4(i32 %inc54, i32 %bf.cast)
  %cmp45 = icmp ult i32 %inc54, %bf.cast
  %or.cond = select i1 %cmp44, i1 %cmp45, i1 false
  br i1 %or.cond, label %for.body46.for.body46_crit_edge, label %for.body46.for.end55_crit_edge

for.body46.for.end55_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end55

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body46

for.end55:                                        ; preds = %for.body46.for.end55_crit_edge, %for.body40.for.end55_crit_edge
  %dirext.1.lcssa = phi i32 [ 0, %for.body40.for.end55_crit_edge ], [ %inc54, %for.body46.for.end55_crit_edge ]
  %ibase.0.lcssa = phi i32 [ 0, %for.body40.for.end55_crit_edge ], [ %add52, %for.body46.for.end55_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dirext.1.lcssa, i32 %bf.cast)
  %cmp56 = icmp eq i32 %dirext.1.lcssa, %bf.cast
  br i1 %cmp56, label %do.end60, label %if.end66

do.end60:                                         ; preds = %for.end55
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %rem42, i32 noundef %block) #6
  %tobool63.not = icmp eq ptr %bh.0307, null
  br i1 %tobool63.not, label %do.end60.cleanup_crit_edge, label %brelse.exit

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

brelse.exit:                                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__brelse(ptr noundef nonnull %bh.0307) #3
  br label %cleanup

if.end66:                                         ; preds = %for.end55
  %28 = ptrtoint ptr %fs_start to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fs_start, align 4
  %arrayidx68 = getelementptr %struct.efs_inode_info, ptr %add.ptr.i, i32 0, i32 2, i32 %dirext.1.lcssa
  %30 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load8_noabort(i32 %30)
  %bf.load69 = load i64, ptr %arrayidx68, align 8
  %bf.lshr70 = lshr i64 %bf.load69, 32
  %31 = trunc i64 %bf.lshr70 to i32
  %bf.cast72 = and i32 %31, 16777215
  %sub = sub i32 %rem42, %ibase.0.lcssa
  %div227 = lshr i32 %sub, 6
  %add73 = add i32 %29, %div227
  %add74 = add i32 %add73, %bf.cast72
  %rem76 = and i32 %sub, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %lastblock.0305, i32 %add74)
  %cmp78.not = icmp eq i32 %lastblock.0305, %add74
  %or.cond228 = select i1 %tobool77.not306, i1 %cmp78.not, i1 false
  br i1 %or.cond228, label %if.end66.if.end109_crit_edge, label %if.then79

if.end66.if.end109_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end109

if.then79:                                        ; preds = %if.end66
  %tobool80.not = icmp eq ptr %bh.0307, null
  br i1 %tobool80.not, label %if.then79.if.end82_crit_edge, label %brelse.exit251

if.then79.if.end82_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82

brelse.exit251:                                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__brelse(ptr noundef nonnull %bh.0307) #3
  br label %if.end82

if.end82:                                         ; preds = %brelse.exit251, %if.then79.if.end82_crit_edge
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %conv = sext i32 %add74 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 26
  %34 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %35, i64 noundef %conv, i32 noundef %37, i32 noundef 8) #3
  %tobool85.not = icmp eq ptr %call.i, null
  br i1 %tobool85.not, label %do.end89, label %do.body93

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #5
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.16, i32 noundef %add74) #6
  br label %cleanup

do.body93:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efs_map_block.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efs_map_block, %if.then105)) #3
          to label %if.end109 [label %if.then105], !srcloc !70

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @efs_map_block.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.16, i32 noundef %add74) #3
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %do.body93, %if.end66.if.end109_crit_edge
  %lastblock.1 = phi i32 [ %lastblock.0305, %if.end66.if.end109_crit_edge ], [ %add74, %if.then105 ], [ %add74, %do.body93 ]
  %bh.1 = phi ptr [ %bh.0307, %if.end66.if.end109_crit_edge ], [ %call.i, %if.then105 ], [ %call.i, %do.body93 ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 5
  %38 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data, align 4
  %arrayidx110 = getelementptr %union.extent_u, ptr %39, i32 %rem76
  %40 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx110, align 4
  %42 = zext i8 %41 to i64
  %bf.shl.i = shl nuw i64 %42, 56
  %arrayidx1.i = getelementptr [8 x i8], ptr %arrayidx110, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %44 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 16
  %arrayidx3.i = getelementptr [8 x i8], ptr %arrayidx110, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx3.i, align 2
  %conv4.i = zext i8 %46 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl5.i, %shl.i
  %arrayidx6.i = getelementptr [8 x i8], ptr %arrayidx110, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %48 to i32
  %or9.i = or i32 %or.i, %conv7.i
  %49 = zext i32 %or9.i to i64
  %bf.shl12.i = shl nuw nsw i64 %49, 32
  %bf.set14.i = or i64 %bf.shl12.i, %bf.shl.i
  %arrayidx16.i = getelementptr [8 x i8], ptr %arrayidx110, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx16.i, align 4
  %52 = zext i8 %51 to i64
  %bf.shl20.i = shl nuw nsw i64 %52, 24
  %bf.set22.i = or i64 %bf.set14.i, %bf.shl20.i
  %arrayidx24.i = getelementptr [8 x i8], ptr %arrayidx110, i32 0, i32 5
  %53 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %54 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 16
  %arrayidx27.i = getelementptr [8 x i8], ptr %arrayidx110, i32 0, i32 6
  %55 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx27.i, align 2
  %conv28.i = zext i8 %56 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 8
  %or30.i = or i32 %shl29.i, %shl26.i
  %arrayidx31.i = getelementptr [8 x i8], ptr %arrayidx110, i32 0, i32 7
  %57 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx31.i, align 1
  %conv32.i = zext i8 %58 to i32
  %or34.i = or i32 %or30.i, %conv32.i
  %59 = zext i32 %or34.i to i64
  %bf.set38.i = or i64 %bf.set22.i, %59
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %bf.set38.i)
  %cmp114.not = icmp ult i64 %bf.set38.i, 72057594037927936
  br i1 %cmp114.not, label %if.end125, label %do.end119

do.end119:                                        ; preds = %if.end109
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %rem42, i32 noundef %add74) #6
  %tobool122.not = icmp eq ptr %bh.1, null
  br i1 %tobool122.not, label %do.end119.cleanup_crit_edge, label %brelse.exit255

do.end119.cleanup_crit_edge:                      ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

brelse.exit255:                                   ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__brelse(ptr noundef nonnull %bh.1) #3
  br label %cleanup

if.end125:                                        ; preds = %if.end109
  %60 = trunc i64 %bf.set38.i to i32
  %bf.cast7.i257 = and i32 %60, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast7.i257, i32 %block)
  %cmp.not.i258 = icmp sle i32 %bf.cast7.i257, %block
  %61 = lshr i32 %60, 24
  %add.i259 = add nuw nsw i32 %bf.cast7.i257, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i259, i32 %block)
  %cmp8.i260 = icmp sgt i32 %add.i259, %block
  %or.cond.i261 = select i1 %cmp.not.i258, i1 %cmp8.i260, i1 false
  br i1 %or.cond.i261, label %efs_extent_check.exit270, label %if.end125.for.inc134_crit_edge

if.end125.for.inc134_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc134

efs_extent_check.exit270:                         ; preds = %if.end125
  %bf.lshr.i262 = lshr exact i64 %bf.set14.i, 32
  %62 = trunc i64 %bf.lshr.i262 to i32
  %63 = ptrtoint ptr %fs_start to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fs_start, align 4
  %add9.i265 = add i32 %62, %block
  %add10.i266 = sub i32 %add9.i265, %bf.cast7.i257
  %sub.i267 = add i32 %add10.i266, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i267)
  %tobool127.not = icmp eq i32 %sub.i267, 0
  br i1 %tobool127.not, label %efs_extent_check.exit270.for.inc134_crit_edge, label %if.then128

efs_extent_check.exit270.for.inc134_crit_edge:    ; preds = %efs_extent_check.exit270
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc134

if.then128:                                       ; preds = %efs_extent_check.exit270
  %tobool129.not = icmp eq ptr %bh.1, null
  br i1 %tobool129.not, label %if.then128.if.end131_crit_edge, label %brelse.exit273

if.then128.if.end131_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end131

brelse.exit273:                                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__brelse(ptr noundef nonnull %bh.1) #3
  br label %if.end131

if.end131:                                        ; preds = %brelse.exit273, %if.then128.if.end131_crit_edge
  %65 = ptrtoint ptr %lastextent to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %rem42, ptr %lastextent, align 4
  br label %cleanup

for.inc134:                                       ; preds = %efs_extent_check.exit270.for.inc134_crit_edge, %if.end125.for.inc134_crit_edge
  %inc135 = add nuw nsw i32 %indext.0304, 1
  %exitcond.not = icmp eq i32 %inc135, %24
  br i1 %exitcond.not, label %for.end136, label %for.inc134.for.body40_crit_edge

for.inc134.for.body40_crit_edge:                  ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body40

for.end136:                                       ; preds = %for.inc134
  %tobool137.not = icmp eq ptr %bh.1, null
  br i1 %tobool137.not, label %for.end136.do.end142_crit_edge, label %brelse.exit276

for.end136.do.end142_crit_edge:                   ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end142

brelse.exit276:                                   ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__brelse(ptr noundef nonnull %bh.1) #3
  br label %do.end142

do.end142:                                        ; preds = %brelse.exit276, %for.end136.do.end142_crit_edge, %do.end34.do.end142_crit_edge
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.16, i32 noundef %block) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end142, %if.end131, %brelse.exit255, %do.end119.cleanup_crit_edge, %do.end89, %brelse.exit, %do.end60.cleanup_crit_edge, %do.end21, %if.then16, %do.end, %efs_extent_check.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %sub.i244, %if.then16 ], [ 0, %do.end21 ], [ %sub.i267, %if.end131 ], [ 0, %do.end89 ], [ 0, %do.end142 ], [ %sub.i, %efs_extent_check.exit.cleanup_crit_edge ], [ 0, %brelse.exit ], [ 0, %do.end60.cleanup_crit_edge ], [ 0, %brelse.exit255 ], [ 0, %do.end119.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @efs_get_block) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @_efs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @efs_get_block) #3
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efs_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/efs/inode.c", i32 93, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @efs_iget._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @efs_iget._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/efs/inode.c", i32 134, i32 4}
!8 = !{ptr @efs_iget._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @efs_iget._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/efs/inode.c", i32 142, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @efs_iget.__UNIQUE_ID_ddebug240, !11, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/efs/inode.c", i32 164, i32 4}
!17 = !{ptr @efs_iget._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @efs_iget._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/efs/inode.c", i32 173, i32 2}
!21 = !{ptr @efs_iget._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @efs_iget._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/efs/inode.c", i32 218, i32 4}
!25 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @efs_map_block._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @efs_map_block._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/efs/inode.c", i32 236, i32 3}
!30 = !{ptr @efs_map_block._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @efs_map_block._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/efs/inode.c", i32 240, i32 2}
!34 = !{ptr @efs_map_block.__UNIQUE_ID_ddebug241, !33, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!35 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/efs/inode.c", i32 263, i32 4}
!38 = !{ptr @efs_map_block._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @efs_map_block._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/efs/inode.c", i32 281, i32 5}
!42 = !{ptr @efs_map_block._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @efs_map_block._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/efs/inode.c", i32 285, i32 4}
!46 = !{ptr @efs_map_block.__UNIQUE_ID_ddebug242, !45, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!47 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/efs/inode.c", i32 296, i32 4}
!50 = !{ptr @efs_map_block._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @efs_map_block._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/efs/inode.c", i32 309, i32 2}
!54 = !{ptr @efs_map_block._entry.33, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @efs_map_block._entry_ptr.35, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_file243, !57, !"__UNIQUE_ID_file243", i1 false, i1 false}
!57 = !{!"../fs/efs/inode.c", i32 313, i32 1}
!58 = !{ptr @__UNIQUE_ID_license244, !57, !"__UNIQUE_ID_license244", i1 false, i1 false}
!59 = !{ptr @efs_aops, !60, !"efs_aops", i1 false, i1 false}
!60 = !{!"../fs/efs/inode.c", i32 25, i32 46}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148497382, i64 2148497387, i64 2148497400, i64 2148497444, i64 2148497478, i64 2148497499}
