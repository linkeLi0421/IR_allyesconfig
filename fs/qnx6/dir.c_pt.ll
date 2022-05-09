; ModuleID = '/llk/IR_all_yes/fs/qnx6/dir.c_pt.bc'
source_filename = "../fs/qnx6/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
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
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
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
%struct.qnx6_dir_entry = type { i32, i8, [27 x i8] }
%struct.qnx6_sb_info = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.qnx6_long_filename = type { i16, [510 x i8] }
%struct.page = type { i32, %union.anon.22, %union.anon.36, %struct.atomic_t, i32 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.36 = type { %struct.atomic_t }
%struct.file = type { %union.anon.24, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.qnx6_long_dir_entry = type { i32, i8, [3 x i8], i32, i32 }

@qnx6_find_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qnx6: undefined filename size in inode.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qnx6_find_entry\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/qnx6/dir.c\00", [18 x i8] zeroinitializer }, align 32
@qnx6_find_entry._entry_ptr = internal global ptr @qnx6_find_entry._entry, section ".printk_index", align 4
@qnx6_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qnx6_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@qnx6_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @qnx6_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@qnx6_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013qnx6: %s(): read failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qnx6_readdir\00", [19 x i8] zeroinitializer }, align 32
@qnx6_readdir._entry_ptr = internal global ptr @qnx6_readdir._entry, section ".printk_index", align 4
@qnx6_readdir.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qnx6\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s():%.*s inode:%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qnx6: %s():%.*s inode:%u\0A\00", [38 x i8] zeroinitializer }, align 32
@qnx6_dir_longfilename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013qnx6: invalid direntry size (%i).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qnx6_dir_longfilename\00", [42 x i8] zeroinitializer }, align 32
@qnx6_dir_longfilename._entry_ptr = internal global ptr @qnx6_dir_longfilename._entry, section ".printk_index", align 4
@qnx6_dir_longfilename._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013qnx6: Error reading longname\0A\00", [32 x i8] zeroinitializer }, align 32
@qnx6_dir_longfilename._entry_ptr.14 = internal global ptr @qnx6_dir_longfilename._entry.12, section ".printk_index", align 4
@qnx6_dir_longfilename.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 22, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"file %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qnx6: file %s\0A\00", [17 x i8] zeroinitializer }, align 32
@qnx6_dir_longfilename._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013qnx6: Filename too long (%i)\0A\00", [32 x i8] zeroinitializer }, align 32
@qnx6_dir_longfilename._entry_ptr.19 = internal global ptr @qnx6_dir_longfilename._entry.17, section ".printk_index", align 4
@qnx6_dir_longfilename._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016qnx6: long filename checksum error.\0A\00", [57 x i8] zeroinitializer }, align 32
@qnx6_dir_longfilename._entry_ptr.22 = internal global ptr @qnx6_dir_longfilename._entry.20, section ".printk_index", align 4
@qnx6_dir_longfilename.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.11, ptr @.str.2, ptr @.str.23, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qnx6_readdir:%.*s inode:%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qnx6: qnx6_readdir:%.*s inode:%u\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 257, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"qnx6_dir_operations\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 273, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 44, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 717, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 134, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 157, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 76, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 81, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 88, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 89, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 98, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [17 x i8] c"../fs/qnx6/dir.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 100, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @qnx6_dir_longfilename._entry, ptr @qnx6_dir_longfilename._entry.12, ptr @qnx6_dir_longfilename._entry.17, ptr @qnx6_dir_longfilename._entry.20, ptr @qnx6_dir_longfilename._entry_ptr, ptr @qnx6_dir_longfilename._entry_ptr.14, ptr @qnx6_dir_longfilename._entry_ptr.19, ptr @qnx6_dir_longfilename._entry_ptr.22, ptr @qnx6_find_entry._entry, ptr @qnx6_find_entry._entry_ptr, ptr @qnx6_readdir._entry, ptr @qnx6_readdir._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qnx6_dir_operations, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_find_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_dir_longfilename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_dir_longfilename._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_dir_longfilename._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_dir_longfilename._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qnx6_find_entry(i32 noundef %len, ptr nocapture noundef %dir, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %res_page) local_unnamed_addr #0 align 64 {
entry:
  %page.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %2 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size.i, align 8
  %4 = trunc i64 %3 to i32
  %conv.i = add i32 %4, 4095
  %shr.i = lshr i32 %conv.i, 12
  %5 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %res_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv.i)
  %cmp = icmp ult i32 %conv.i, 4096
  br i1 %cmp, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

if.end:                                           ; preds = %entry
  %i_dir_start_lookup = getelementptr i8, ptr %dir, i32 -4
  %6 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_dir_start_lookup, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shr.i)
  %cmp2.not = icmp ult i32 %7, %shr.i
  %spec.store.select = select i1 %cmp2.not, i32 %7, i32 0
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %len)
  %cmp11 = icmp slt i32 %len, 28
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  br label %do.body

do.body:                                          ; preds = %if.end35.do.body_crit_edge, %if.end
  %n.0 = phi i32 [ %spec.store.select, %if.end ], [ %spec.store.select55, %if.end35.do.body_crit_edge ]
  %8 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %9, i32 noundef %n.0, ptr noundef null, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.if.end35_crit_edge, label %if.then.i

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then.i:                                        ; preds = %do.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 44) #8
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %11, 30
  %12 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %13 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i.not.i.i = icmp eq i32 %13, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #8
  br label %if.then7

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #8
  br label %if.then7

if.then7:                                         ; preds = %if.else.i.i, %if.then.i.i
  %14 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_size.i, align 8
  %conv.i86 = trunc i64 %15 to i32
  %shl.neg.i = mul i32 %n.0, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i86
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #8
  %call9 = tail call ptr @page_address(ptr noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp10107.not = icmp ult i32 %16, 32
  br i1 %cmp10107.not, label %if.then7.cleanup_crit_edge, label %for.body.preheader

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.then7
  %div4.i = lshr i32 %16, 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0112 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %de.0109 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call9, %for.body.preheader ]
  %de_size = getelementptr inbounds %struct.qnx6_dir_entry, ptr %de.0109, i32 0, i32 1
  %17 = ptrtoint ptr %de_size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %de_size, align 4
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.body
  %conv = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp13.not = icmp eq i32 %conv, %len
  br i1 %cmp13.not, label %if.end16, label %if.then12.for.inc_crit_edge

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end16:                                         ; preds = %if.then12
  %de_fname.i = getelementptr inbounds %struct.qnx6_dir_entry, ptr %de.0109, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr %name, ptr %de_fname.i, i32 %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i87 = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i87, label %qnx6_match.exit, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

qnx6_match.exit:                                  ; preds = %if.end16
  %19 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i, align 16
  %21 = ptrtoint ptr %de.0109 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %de.0109, align 4
  %s_bytesex.i.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i88 = icmp eq i32 %24, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %retval.0.i.i = select i1 %cmp.i.i88, i32 %25, i32 %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not, label %qnx6_match.exit.for.inc_crit_edge, label %qnx6_match.exit.found_crit_edge

qnx6_match.exit.found_crit_edge:                  ; preds = %qnx6_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

qnx6_match.exit.for.inc_crit_edge:                ; preds = %qnx6_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp22 = icmp eq i8 %18, -1
  br i1 %cmp22, label %if.then24, label %do.end

if.then24:                                        ; preds = %if.else
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i90 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i90, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #8
  %30 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %page.i, align 4, !annotation !58
  %call1.i = call fastcc ptr @qnx6_longname(ptr noundef %27, ptr noundef %de.0109, ptr noundef nonnull %page.i) #8
  %cmp.i.i91 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i91, label %if.then24.qnx6_long_match.exit.thread_crit_edge, label %if.end.i

if.then24.qnx6_long_match.exit.thread_crit_edge:  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %qnx6_long_match.exit.thread

if.end.i:                                         ; preds = %if.then24
  %31 = ptrtoint ptr %call1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %call1.i, align 2
  %s_bytesex.i.i92 = getelementptr inbounds %struct.qnx6_sb_info, ptr %29, i32 0, i32 5
  %33 = ptrtoint ptr %s_bytesex.i.i92 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_bytesex.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i23.i = icmp eq i32 %34, 0
  %35 = tail call i16 @llvm.bswap.i16(i16 %32) #8
  %retval.0.i.i93 = select i1 %cmp.i23.i, i16 %35, i16 %32
  %conv.i94 = zext i16 %retval.0.i.i93 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i94, i32 %len)
  %cmp.not.i = icmp eq i32 %conv.i94, %len
  br i1 %cmp.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %page.i, align 4
  tail call fastcc void @qnx6_put_page(ptr noundef %37) #8
  br label %qnx6_long_match.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %lf_fname.i = getelementptr inbounds %struct.qnx6_long_filename, ptr %call1.i, i32 0, i32 1
  %bcmp.i95 = tail call i32 @bcmp(ptr %name, ptr %lf_fname.i, i32 %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i95)
  %cmp8.i = icmp eq i32 %bcmp.i95, 0
  %38 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %page.i, align 4
  tail call fastcc void @qnx6_put_page(ptr noundef %39) #8
  br i1 %cmp8.i, label %qnx6_long_match.exit, label %if.end6.i.qnx6_long_match.exit.thread_crit_edge

if.end6.i.qnx6_long_match.exit.thread_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qnx6_long_match.exit.thread

qnx6_long_match.exit.thread:                      ; preds = %if.end6.i.qnx6_long_match.exit.thread_crit_edge, %if.then5.i, %if.then24.qnx6_long_match.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #8
  br label %for.inc

qnx6_long_match.exit:                             ; preds = %if.end6.i
  %40 = ptrtoint ptr %de.0109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %de.0109, align 4
  %42 = ptrtoint ptr %s_bytesex.i.i92 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_bytesex.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i25.i = icmp eq i32 %43, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  %retval.0.i26.i = select i1 %cmp.i25.i, i32 %44, i32 %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i26.i)
  %tobool26.not = icmp eq i32 %retval.0.i26.i, 0
  br i1 %tobool26.not, label %qnx6_long_match.exit.for.inc_crit_edge, label %qnx6_long_match.exit.found_crit_edge

qnx6_long_match.exit.found_crit_edge:             ; preds = %qnx6_long_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

qnx6_long_match.exit.for.inc_crit_edge:           ; preds = %qnx6_long_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %qnx6_long_match.exit.for.inc_crit_edge, %qnx6_long_match.exit.thread, %qnx6_match.exit.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %if.then12.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0112, 1
  %incdec.ptr = getelementptr %struct.qnx6_dir_entry, ptr %de.0109, i32 1
  %exitcond.not = icmp eq i32 %inc, %div4.i
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  tail call fastcc void @qnx6_put_page(ptr noundef %call.i.i)
  br label %if.end35

if.end35:                                         ; preds = %cleanup, %do.body.if.end35_crit_edge
  %inc36 = add i32 %n.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc36, i32 %shr.i)
  %cmp37.not = icmp ult i32 %inc36, %shr.i
  %spec.store.select55 = select i1 %cmp37.not, i32 %inc36, i32 0
  %cmp42.not = icmp eq i32 %spec.store.select55, %spec.store.select
  br i1 %cmp42.not, label %if.end35.cleanup46_crit_edge, label %if.end35.do.body_crit_edge

if.end35.do.body_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end35.cleanup46_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

found:                                            ; preds = %qnx6_long_match.exit.found_crit_edge, %qnx6_match.exit.found_crit_edge
  %ino.3.ph = phi i32 [ %retval.0.i26.i, %qnx6_long_match.exit.found_crit_edge ], [ %retval.0.i.i, %qnx6_match.exit.found_crit_edge ]
  %45 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i, ptr %res_page, align 4
  %46 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %n.0, ptr %i_dir_start_lookup, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %found, %if.end35.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %ino.3.ph, %found ], [ 0, %entry.cleanup46_crit_edge ], [ 0, %if.end35.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qnx6_put_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 55) #8
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !60

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@qnx6_put_page, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !65

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %8) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnx6_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
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
  %pos2 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %pos2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos2, align 8
  %and = and i64 %7, -32
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size.i, align 8
  %10 = trunc i64 %9 to i32
  %conv.i = add i32 %10, 4095
  %shr.i = lshr i32 %conv.i, 12
  %11 = lshr i64 %7, 12
  %conv = trunc i64 %11 to i32
  store i64 %and, ptr %pos2, align 8
  %12 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %12)
  %cmp.not = icmp slt i64 %and, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv)
  %cmp9144 = icmp ugt i32 %shr.i, %conv
  %or.cond149 = select i1 %cmp.not, i1 %cmp9144, i1 false
  br i1 %or.cond149, label %for.body.lr.ph, label %entry.cleanup68_crit_edge

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

for.body.lr.ph:                                   ; preds = %entry
  %13 = trunc i64 %7 to i32
  %14 = lshr i32 %13, 5
  %conv5 = and i32 %14, 127
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %s_bytesex.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %5, i32 0, i32 5
  %15 = mul i32 %conv, -4096
  br label %for.body

for.body:                                         ; preds = %for.inc65.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ %15, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc65.for.body_crit_edge ]
  %done.0.off0147 = phi i1 [ false, %for.body.lr.ph ], [ %done.3.off0, %for.inc65.for.body_crit_edge ]
  %start.0146 = phi i32 [ %conv5, %for.body.lr.ph ], [ 0, %for.inc65.for.body_crit_edge ]
  %n.0145 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc66, %for.inc65.for.body_crit_edge ]
  %16 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %17, i32 noundef %n.0145, ptr noundef null, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup59.thread, label %if.then.i

if.then.i:                                        ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 44) #8
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %19, 30
  %20 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %21 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp2.i.not.i.i = icmp eq i32 %21, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #8
  br label %if.end19

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #8
  br label %if.end19

cleanup59.thread:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #12
  %add = shl i32 %n.0145, 12
  %shl = add i32 %add, 4096
  %conv16 = zext i32 %shl to i64
  %22 = ptrtoint ptr %pos2 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv16, ptr %pos2, align 8
  %23 = ptrtoint ptr %call.i.i to i32
  br label %cleanup68

if.end19:                                         ; preds = %if.else.i.i, %if.then.i.i
  %24 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size.i, align 8
  %conv.i121125 = trunc i64 %25 to i32
  %shl.neg.i126 = mul i32 %n.0145, -4096
  %sub.i127 = add i32 %shl.neg.i126, %conv.i121125
  %26 = tail call i32 @llvm.umin.i32(i32 %sub.i127, i32 4096) #8
  %div4.i128 = lshr i32 %26, 5
  %call20 = tail call ptr @page_address(ptr noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0146, i32 %div4.i128)
  %cmp22138 = icmp ult i32 %start.0146, %div4.i128
  br i1 %cmp22138, label %for.body24.preheader, label %if.end19.for.inc65_crit_edge

if.end19.for.inc65_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

for.body24.preheader:                             ; preds = %if.end19
  %add.ptr = getelementptr %struct.qnx6_dir_entry, ptr %call20, i32 %start.0146
  %27 = add i32 %indvars.iv, %conv.i121125
  %umin = call i32 @llvm.umin.i32(i32 %27, i32 4096)
  %28 = lshr i32 %umin, 5
  br label %for.body24

for.body24:                                       ; preds = %for.inc.for.body24_crit_edge, %for.body24.preheader
  %i.0141 = phi i32 [ %inc, %for.inc.for.body24_crit_edge ], [ %start.0146, %for.body24.preheader ]
  %de.0139 = phi ptr [ %incdec.ptr, %for.inc.for.body24_crit_edge ], [ %add.ptr, %for.body24.preheader ]
  %de_size = getelementptr inbounds %struct.qnx6_dir_entry, ptr %de.0139, i32 0, i32 1
  %29 = ptrtoint ptr %de_size to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %de_size, align 4
  %conv25 = zext i8 %30 to i32
  %31 = ptrtoint ptr %de.0139 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %de.0139, align 4
  %33 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i122 = icmp eq i32 %34, 0
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %retval.0.i123 = select i1 %cmp.i122, i32 %35, i32 %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i123)
  %tobool27.not = icmp eq i32 %retval.0.i123, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool28.not = icmp eq i8 %30, 0
  %or.cond119 = select i1 %tobool27.not, i1 true, i1 %tobool28.not
  br i1 %or.cond119, label %for.body24.for.inc_crit_edge, label %if.end30

for.body24.for.inc_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end30:                                         ; preds = %for.body24
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %30)
  %cmp31 = icmp ugt i8 %30, 27
  br i1 %cmp31, label %if.then33, label %do.body38

if.then33:                                        ; preds = %if.end30
  %call34 = tail call fastcc i32 @qnx6_dir_longfilename(ptr noundef %1, ptr noundef %de.0139, ptr noundef %ctx, i32 noundef %retval.0.i123)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.for.inc65_crit_edge, label %if.then33.for.inc_crit_edge

if.then33.for.inc_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then33.for.inc65_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

do.body38:                                        ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_readdir.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_readdir, %do.end48)) #8
          to label %if.then45 [label %do.end48], !srcloc !65

if.then45:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %de_fname = getelementptr inbounds %struct.qnx6_dir_entry, ptr %de.0139, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_readdir.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef %conv25, ptr noundef %de_fname, i32 noundef %retval.0.i123) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %do.body38
  %de_fname49 = getelementptr inbounds %struct.qnx6_dir_entry, ptr %de.0139, i32 0, i32 2
  %conv51 = zext i32 %retval.0.i123 to i64
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 8
  %38 = ptrtoint ptr %pos2 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pos2, align 8
  %call.i = tail call i32 %37(ptr noundef %ctx, ptr noundef %de_fname49, i32 noundef %conv25, i64 noundef %39, i64 noundef %conv51, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i124 = icmp eq i32 %call.i, 0
  br i1 %cmp.i124, label %do.end48.for.inc_crit_edge, label %do.end48.for.inc65_crit_edge

do.end48.for.inc65_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

do.end48.for.inc_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %do.end48.for.inc_crit_edge, %if.then33.for.inc_crit_edge, %for.body24.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0141, 1
  %incdec.ptr = getelementptr %struct.qnx6_dir_entry, ptr %de.0139, i32 1
  %40 = ptrtoint ptr %pos2 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pos2, align 8
  %add58 = add i64 %41, 32
  store i64 %add58, ptr %pos2, align 8
  %exitcond.not = icmp eq i32 %inc, %28
  br i1 %exitcond.not, label %for.inc.for.inc65_crit_edge, label %for.inc.for.body24_crit_edge

for.inc.for.body24_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

for.inc.for.inc65_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

for.inc65:                                        ; preds = %for.inc.for.inc65_crit_edge, %do.end48.for.inc65_crit_edge, %if.then33.for.inc65_crit_edge, %if.end19.for.inc65_crit_edge
  %done.3.off0 = phi i1 [ %done.0.off0147, %if.end19.for.inc65_crit_edge ], [ true, %do.end48.for.inc65_crit_edge ], [ true, %if.then33.for.inc65_crit_edge ], [ %done.0.off0147, %for.inc.for.inc65_crit_edge ]
  tail call fastcc void @qnx6_put_page(ptr noundef %call.i.i)
  %inc66 = add nuw nsw i32 %n.0145, 1
  %done.0.off0.not = xor i1 %done.3.off0, true
  call void @__sanitizer_cov_trace_cmp4(i32 %inc66, i32 %shr.i)
  %cmp9 = icmp ult i32 %inc66, %shr.i
  %or.cond = select i1 %done.0.off0.not, i1 %cmp9, i1 false
  %indvars.iv.next = add i32 %indvars.iv, -4096
  br i1 %or.cond, label %for.inc65.for.body_crit_edge, label %for.inc65.cleanup68_crit_edge

for.inc65.cleanup68_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

for.inc65.for.body_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup68:                                        ; preds = %for.inc65.cleanup68_crit_edge, %cleanup59.thread, %entry.cleanup68_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup68_crit_edge ], [ %23, %cleanup59.thread ], [ 0, %for.inc65.cleanup68_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qnx6_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qnx6_longname(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %de, ptr nocapture noundef writeonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %de_long_inode = getelementptr inbounds %struct.qnx6_long_dir_entry, ptr %de, i32 0, i32 3
  %2 = ptrtoint ptr %de_long_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %de_long_inode, align 4
  %s_bytesex.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %retval.0.i = select i1 %cmp.i, i32 %6, i32 %3
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %7 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %8 to i32
  %sub = sub nsw i32 12, %conv
  %shr = lshr i32 %retval.0.i, %sub
  %longfile = getelementptr inbounds %struct.qnx6_sb_info, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %longfile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %longfile, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %12, i32 noundef %shr, ptr noundef null, ptr noundef null) #8
  %cmp.i21 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %retval.0.i, %conv
  %and = and i32 %shl, 4095
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %p, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 44) #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %15, 30
  %16 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %shr.i.i, label %if.end.if.then.i_crit_edge [
    i32 2, label %if.end.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %17 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp2.i.not.i = icmp eq i32 %17, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %call8 = tail call ptr @page_address(ptr noundef %call.i) #8
  %add.ptr = getelementptr i8, ptr %call8, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %kmap.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %kmap.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qnx6_dir_longfilename(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %de, ptr noundef %ctx, i32 noundef %de_inode) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #8
  %4 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !58
  %de_size = getelementptr inbounds %struct.qnx6_long_dir_entry, ptr %de, i32 0, i32 1
  %5 = ptrtoint ptr %de_size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %de_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.not = icmp eq i8 %6, -1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %6 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call fastcc ptr @qnx6_longname(ptr noundef %1, ptr noundef %de, ptr noundef nonnull %page)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %7 = ptrtoint ptr %call5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call5, align 2
  %s_bytesex.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i100 = icmp eq i32 %10, 0
  %11 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  %retval.0.i101 = select i1 %cmp.i100, i16 %11, i16 %8
  %conv16 = zext i16 %retval.0.i101 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 510, i16 %retval.0.i101)
  %cmp17 = icmp ugt i16 %retval.0.i101, 510
  br i1 %cmp17, label %do.body20, label %if.end35

do.body20:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_dir_longfilename.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_dir_longfilename, %do.end32)) #8
          to label %if.then26 [label %do.end32], !srcloc !65

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %lf_fname = getelementptr inbounds %struct.qnx6_long_filename, ptr %call5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_dir_longfilename.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.16, ptr noundef %lf_fname) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then26, %do.body20
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv16) #12
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page, align 4
  tail call fastcc void @qnx6_put_page(ptr noundef %13)
  br label %cleanup

if.end35:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.qnx6_sb_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %land.lhs.true, label %if.end35.do.body51_crit_edge

if.end35.do.body51_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body51

land.lhs.true:                                    ; preds = %if.end35
  %de_checksum = getelementptr inbounds %struct.qnx6_long_dir_entry, ptr %de, i32 0, i32 4
  %18 = ptrtoint ptr %de_checksum to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %de_checksum, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %retval.0.i105 = select i1 %cmp.i100, i32 %20, i32 %19
  %lf_fname39 = getelementptr inbounds %struct.qnx6_long_filename, ptr %call5, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %lf_fname39, i32 %conv16
  %cmp5.i = icmp ugt ptr %add.ptr.i, %lf_fname39
  br i1 %cmp5.i, label %land.lhs.true.while.body.i_crit_edge, label %land.lhs.true.qnx6_lfile_checksum.exit_crit_edge

land.lhs.true.qnx6_lfile_checksum.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %qnx6_lfile_checksum.exit

land.lhs.true.while.body.i_crit_edge:             ; preds = %land.lhs.true
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %land.lhs.true.while.body.i_crit_edge
  %crc.07.i = phi i32 [ %xor.i, %while.body.i.while.body.i_crit_edge ], [ 0, %land.lhs.true.while.body.i_crit_edge ]
  %name.addr.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %lf_fname39, %land.lhs.true.while.body.i_crit_edge ]
  %shr.i = lshr i32 %crc.07.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %name.addr.06.i, i32 1
  %21 = ptrtoint ptr %name.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %name.addr.06.i, align 1
  %conv.i = zext i8 %22 to i32
  %add.i = add nuw i32 %shr.i, %conv.i
  %23 = shl i32 %crc.07.i, 31
  %xor.i = xor i32 %add.i, %23
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %add.ptr.i
  br i1 %exitcond.not.i, label %while.body.i.qnx6_lfile_checksum.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.qnx6_lfile_checksum.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qnx6_lfile_checksum.exit

qnx6_lfile_checksum.exit:                         ; preds = %while.body.i.qnx6_lfile_checksum.exit_crit_edge, %land.lhs.true.qnx6_lfile_checksum.exit_crit_edge
  %crc.0.lcssa.i = phi i32 [ 0, %land.lhs.true.qnx6_lfile_checksum.exit_crit_edge ], [ %xor.i, %while.body.i.qnx6_lfile_checksum.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i105, i32 %crc.0.lcssa.i)
  %cmp42.not = icmp eq i32 %retval.0.i105, %crc.0.lcssa.i
  br i1 %cmp42.not, label %qnx6_lfile_checksum.exit.do.body51_crit_edge, label %do.end47

qnx6_lfile_checksum.exit.do.body51_crit_edge:     ; preds = %qnx6_lfile_checksum.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body51

do.end47:                                         ; preds = %qnx6_lfile_checksum.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %do.body51

do.body51:                                        ; preds = %do.end47, %qnx6_lfile_checksum.exit.do.body51_crit_edge, %if.end35.do.body51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qnx6_dir_longfilename.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qnx6_dir_longfilename, %do.end70)) #8
          to label %if.then65 [label %do.end70], !srcloc !65

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %lf_fname66 = getelementptr inbounds %struct.qnx6_long_filename, ptr %call5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qnx6_dir_longfilename.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.24, i32 noundef %conv16, ptr noundef %lf_fname66, i32 noundef %de_inode) #8
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %do.body51
  %lf_fname71 = getelementptr inbounds %struct.qnx6_long_filename, ptr %call5, i32 0, i32 1
  %conv73 = zext i32 %de_inode to i64
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 8
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %26 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos.i, align 8
  %call.i = tail call i32 %25(ptr noundef %ctx, ptr noundef %lf_fname71, i32 noundef %conv16, i64 noundef %27, i64 noundef %conv73, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i106 = icmp eq i32 %call.i, 0
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page, align 4
  tail call fastcc void @qnx6_put_page(ptr noundef %29)
  %. = zext i1 %cmp.i106 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %do.end32, %do.end10, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end10 ], [ 0, %do.end32 ], [ %., %do.end70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/qnx6/dir.c", i32 257, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qnx6_find_entry._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qnx6_find_entry._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @qnx6_dir_operations, !7, !"qnx6_dir_operations", i1 false, i1 false}
!7 = !{!"../fs/qnx6/dir.c", i32 273, i32 30}
!8 = !{ptr @qnx6_dir_inode_operations, !9, !"qnx6_dir_inode_operations", i1 false, i1 false}
!9 = !{!"../fs/qnx6/dir.c", i32 280, i32 31}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mm.h", i32 717, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/qnx6/dir.c", i32 134, i32 4}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @qnx6_readdir._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @qnx6_readdir._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/qnx6/dir.c", i32 157, i32 5}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qnx6_readdir.__UNIQUE_ID_ddebug236, !20, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!23 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/qnx6/dir.c", i32 76, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @qnx6_dir_longfilename._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @qnx6_dir_longfilename._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/qnx6/dir.c", i32 81, i32 3}
!31 = !{ptr @qnx6_dir_longfilename._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @qnx6_dir_longfilename._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/qnx6/dir.c", i32 88, i32 3}
!35 = !{ptr @qnx6_dir_longfilename.__UNIQUE_ID_ddebug234, !34, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!36 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/qnx6/dir.c", i32 89, i32 3}
!39 = !{ptr @qnx6_dir_longfilename._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @qnx6_dir_longfilename._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/qnx6/dir.c", i32 98, i32 3}
!43 = !{ptr @qnx6_dir_longfilename._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @qnx6_dir_longfilename._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/qnx6/dir.c", i32 100, i32 2}
!47 = !{ptr @qnx6_dir_longfilename.__UNIQUE_ID_ddebug235, !46, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!48 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i64 2153158512, i64 2153158995, i64 2153158549, i64 2153158605, i64 2153158639, i64 2153158663, i64 2153158704, i64 2153158725, i64 2153158753, i64 2153158787}
!62 = !{i64 2148749073}
!63 = !{i64 2148663782, i64 2148663814, i64 2148663843, i64 2148663877, i64 2148663908, i64 2148663931}
!64 = !{i64 2148749302}
!65 = !{i64 2148485195, i64 2148485200, i64 2148485213, i64 2148485257, i64 2148485291, i64 2148485312}
