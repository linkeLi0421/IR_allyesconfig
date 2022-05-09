; ModuleID = '/llk/IR_all_yes/fs/ufs/dir.c_pt.bc'
source_filename = "../fs/ufs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
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
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { ptr }
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
%struct.ufs_sb_info = type { ptr, ptr, i32, i32, ptr, [8 x ptr], [8 x i32], i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.ufs_dir_entry = type { i32, i16, %union.anon.84, [256 x i8] }
%union.anon.84 = type { i16 }
%struct.anon.85 = type { i8, i8 }
%struct.page = type { i32, %union.anon.6, %union.anon.72, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.72 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.76, %struct.list_head, %struct.list_head, %union.anon.77 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%struct.ufs_sb_private_info = type { %struct.ufs_buffer_head, %struct.ufs_csum_core, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ufs_buffer_head = type { i64, i64, [8 x ptr] }
%struct.ufs_csum_core = type { i64, i64, i64, i64, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@ufs_find_entry.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ufs\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufs_find_entry\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/ufs/dir.c\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UFSD (%s, %d): %s:\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs: UFSD (%s, %d): %s:\00", [40 x i8] zeroinitializer }, align 32
@ufs_find_entry.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ENTER, dir_ino %lu, name %s, namlen %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ufs: ENTER, dir_ino %lu, name %s, namlen %u\0A\00", [51 x i8] zeroinitializer }, align 32
@ufs_add_link.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufs_add_link\00", [19 x i8] zeroinitializer }, align 32
@ufs_add_link.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ENTER, name %s, namelen %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ufs: ENTER, name %s, namelen %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zero-length directory entry\00", [36 x i8] zeroinitializer }, align 32
@ufs_delete_entry.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufs_delete_entry\00", [47 x i8] zeroinitializer }, align 32
@ufs_delete_entry.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENTER\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufs: ENTER\0A\00", [20 x i8] zeroinitializer }, align 32
@ufs_delete_entry.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 0, i8 -128, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_delete_entry.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 -128, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ino %u, reclen %u, namlen %u, name %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ufs: ino %u, reclen %u, namlen %u, name %s\0A\00", [52 x i8] zeroinitializer }, align 32
@ufs_delete_entry.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 0, i8 -122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_delete_entry.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 -122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EXIT\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufs: EXIT\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@__func__.ufs_empty_dir = private unnamed_addr constant [14 x i8] c"ufs_empty_dir\00", align 1
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"zero-length directory entry: kaddr=%p, de=%p\0A\00", [50 x i8] zeroinitializer }, align 32
@ufs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufs_check_page\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"size of directory #%lu is not a multiple of chunk size\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rec_len is smaller than minimal\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unaligned directory entry\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rec_len is too small for name_len\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"directory entry across blocks\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inode out of bounds\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"bad entry in directory #%lu: %s - offset=%lu, rec_len=%d, name_len=%d\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"entry in directory #%lu spans the page boundaryoffset=%lu\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@ufs_readdir.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.3, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufs_readdir\00", [20 x i8] zeroinitializer }, align 32
@ufs_readdir.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BEGIN\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufs: BEGIN\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad page in #%lu\00", [47 x i8] zeroinitializer }, align 32
@ufs_readdir.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.3, i8 0, i8 117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_readdir.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.44, i8 0, i8 117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"filldir(%s,%u)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufs: filldir(%s,%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@ufs_readdir.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.3, i8 0, i8 117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_readdir.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.46, i8 0, i8 117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"namlen %u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs: namlen %u\0A\00", [16 x i8] zeroinitializer }, align 32
@switch.table.ufs_set_link = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\02\00\04\00\06\00\08\00\0A\00\0C", [20 x i8] zeroinitializer }, align 32
@switch.table.ufs_add_link = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\02\00\04\00\06\00\08\00\0A\00\0C", [20 x i8] zeroinitializer }, align 32
@switch.table.ufs_make_empty = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\02\00\04\00\06\00\08\00\0A\00\0C", [20 x i8] zeroinitializer }, align 32
@switch.table.ufs_make_empty.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\02\00\04\00\06\00\08\00\0A\00\0C", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 263, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 322, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 352, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 507, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 509, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 539, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 579, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 612, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"ufs_dir_operations\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 641, i32 30 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 788, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 260, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 271, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 153, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 154, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 159, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 162, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 165, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 168, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 171, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 173, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 181, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 430, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 416, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 44, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 717, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 435, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 448, i32 7 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 468, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [16 x i8] c"../fs/ufs/dir.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 470, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant [26 x i8] c"switch.table.ufs_set_link\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [26 x i8] c"switch.table.ufs_add_link\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [28 x i8] c"switch.table.ufs_make_empty\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [31 x i8] c"switch.table.ufs_make_empty.48\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @ufs_dir_operations, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @switch.table.ufs_set_link, ptr @switch.table.ufs_add_link, ptr @switch.table.ufs_make_empty, ptr @switch.table.ufs_make_empty.48], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ufs_set_link to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ufs_add_link to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ufs_make_empty to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ufs_make_empty.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_inode_by_name(ptr nocapture noundef %dir, ptr nocapture noundef readonly %qstr) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !109
  %call = call ptr @ufs_find_entry(ptr noundef %dir, ptr noundef %qstr, ptr noundef nonnull %page)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %retval.0.i = select i1 %cmp.i, i32 %9, i32 %4
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page, align 4
  tail call fastcc void @ufs_put_page(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi i32 [ %retval.0.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #9
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ufs_find_entry(ptr nocapture noundef %dir, ptr nocapture noundef readonly %qstr, ptr nocapture noundef writeonly %res_page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %name1 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 8
  %4 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qstr, align 8
  %add3 = add i32 %5, 12
  %and = and i32 %add3, -4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %6 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size.i, align 8
  %8 = trunc i64 %7 to i32
  %conv.i = add i32 %8, 4095
  %shr.i = lshr i32 %conv.i, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_find_entry.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_find_entry, %do.body9)) #9
          to label %if.then [label %do.body9], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_find_entry.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 263, ptr noundef nonnull @.str.1) #9
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_find_entry.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_find_entry, %do.end26)) #9
          to label %if.then23 [label %do.end26], !srcloc !110

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_find_entry.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.6, i32 noundef %10, ptr noundef %3, i32 noundef %5) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv.i)
  %cmp = icmp ult i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp27 = icmp sgt i32 %5, 255
  %or.cond = select i1 %cmp, i1 true, i1 %cmp27
  br i1 %or.cond, label %do.end26.cleanup53_crit_edge, label %if.end29

do.end26.cleanup53_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

if.end29:                                         ; preds = %do.end26
  %11 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %res_page, align 4
  %i_dir_start_lookup = getelementptr i8, ptr %dir, i32 -4
  %12 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_dir_start_lookup, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shr.i)
  %cmp30.not = icmp ult i32 %13, %shr.i
  %spec.store.select = select i1 %cmp30.not, i32 %13, i32 0
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  br label %do.body33

do.body33:                                        ; preds = %do.cond49.do.body33_crit_edge, %if.end29
  %n.0 = phi i32 [ %spec.store.select, %if.end29 ], [ %spec.store.select63, %do.cond49.do.body33_crit_edge ]
  %call34 = tail call fastcc ptr @ufs_get_page(ptr noundef %dir, i32 noundef %n.0)
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body33.do.cond49_crit_edge, label %if.then36

do.body33.do.cond49_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond49

if.then36:                                        ; preds = %do.body33
  %call37 = tail call ptr @page_address(ptr noundef %call34) #9
  %14 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_size.i, align 8
  %conv.i97 = trunc i64 %15 to i32
  %shl.neg.i = mul i32 %n.0, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i97
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #9
  %sub = sub i32 %16, %and
  %add.ptr = getelementptr i8, ptr %call37, i32 %sub
  %cmp39.not117 = icmp ugt ptr %call37, %add.ptr
  br i1 %cmp39.not117, label %if.then36.while.end_crit_edge, label %while.body.lr.ph

if.then36.while.end_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then36
  %17 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  %s_bytesex.i.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %18, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %while.body.lr.ph
  %de.1118 = phi ptr [ %call37, %while.body.lr.ph ], [ %add.ptr.i104, %if.end43.while.body_crit_edge ]
  %d_u.i.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.1118, i32 0, i32 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %d_u.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %d_u.i.i, align 2
  %23 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_bytesex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i = icmp eq i32 %24, 0
  %25 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i16 %25, i16 %22
  br label %ufs_get_de_namlen.exit.i

if.else.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %d_namlen.i.i = getelementptr inbounds %struct.anon.85, ptr %d_u.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %d_namlen.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %d_namlen.i.i, align 1
  %conv.i.i = zext i8 %27 to i16
  br label %ufs_get_de_namlen.exit.i

ufs_get_de_namlen.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %retval.0.i.i.i, %if.then.i.i ], [ %conv.i.i, %if.else.i.i ]
  %conv.i98 = zext i16 %retval.0.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i98)
  %cmp.not.i = icmp eq i32 %5, %conv.i98
  br i1 %cmp.not.i, label %if.end.i, label %ufs_get_de_namlen.exit.i.if.end43_crit_edge

ufs_get_de_namlen.exit.i.if.end43_crit_edge:      ; preds = %ufs_get_de_namlen.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end.i:                                         ; preds = %ufs_get_de_namlen.exit.i
  %28 = ptrtoint ptr %de.1118 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %de.1118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.end.i.if.end43_crit_edge, label %ufs_match.exit

if.end.i.if.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

ufs_match.exit:                                   ; preds = %if.end.i
  %d_name.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.1118, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %3, ptr %d_name.i, i32 %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i.not, label %found, label %ufs_match.exit.if.end43_crit_edge

ufs_match.exit.if.end43_crit_edge:                ; preds = %ufs_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %ufs_match.exit.if.end43_crit_edge, %if.end.i.if.end43_crit_edge, %ufs_get_de_namlen.exit.i.if.end43_crit_edge
  %d_reclen.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.1118, i32 0, i32 1
  %30 = ptrtoint ptr %d_reclen.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %d_reclen.i, align 4
  %32 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_bytesex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i101 = icmp eq i32 %33, 0
  %34 = tail call i16 @llvm.bswap.i16(i16 %31) #9
  %retval.0.i.i102 = select i1 %cmp.i.i101, i16 %34, i16 %31
  %conv.i103 = zext i16 %retval.0.i.i102 to i32
  %add.ptr.i104 = getelementptr i8, ptr %de.1118, i32 %conv.i103
  %cmp39.not = icmp ugt ptr %add.ptr.i104, %add.ptr
  br i1 %cmp39.not, label %if.end43.while.end_crit_edge, label %if.end43.while.body_crit_edge

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end43.while.end_crit_edge, %if.then36.while.end_crit_edge
  tail call fastcc void @ufs_put_page(ptr noundef %call34)
  br label %do.cond49

do.cond49:                                        ; preds = %while.end, %do.body33.do.cond49_crit_edge
  %inc = add i32 %n.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %shr.i)
  %cmp46.not = icmp ult i32 %inc, %shr.i
  %spec.store.select63 = select i1 %cmp46.not, i32 %inc, i32 0
  %cmp50.not = icmp eq i32 %spec.store.select63, %spec.store.select
  br i1 %cmp50.not, label %do.cond49.cleanup53_crit_edge, label %do.cond49.do.body33_crit_edge

do.cond49.do.body33_crit_edge:                    ; preds = %do.cond49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

do.cond49.cleanup53_crit_edge:                    ; preds = %do.cond49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

found:                                            ; preds = %ufs_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call34, ptr %res_page, align 4
  %36 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %n.0, ptr %i_dir_start_lookup, align 4
  br label %cleanup53

cleanup53:                                        ; preds = %found, %do.cond49.cleanup53_crit_edge, %do.end26.cleanup53_crit_edge
  %retval.0 = phi ptr [ %de.1118, %found ], [ null, %do.end26.cleanup53_crit_edge ], [ null, %do.cond49.cleanup53_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_put_page(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 55) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !111

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !112

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.39) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ufs_put_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !110

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %8) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_set_link(ptr noundef %dir, ptr noundef %de, ptr noundef %page, ptr nocapture noundef readonly %inode, i1 noundef zeroext %update_times) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %1, 12
  %add.ptr = getelementptr i8, ptr %de, i32 %shl.i
  %call1 = tail call ptr @page_address(ptr noundef %page) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %d_reclen = getelementptr inbounds %struct.ufs_dir_entry, ptr %de, i32 0, i32 1
  %4 = ptrtoint ptr %d_reclen to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %d_reclen, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %10 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %retval.0.i = select i1 %cmp.i, i16 %10, i16 %5
  %conv3 = zext i16 %retval.0.i to i32
  tail call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 788) #9
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !111

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !111

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.22) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !117
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #9
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and.i.i4.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #9, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %15) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call4 = tail call i32 @ufs_prepare_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef %conv3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end12, label %do.body7, !prof !111

do.body7:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #9, !srcloc !120
  unreachable

do.end12:                                         ; preds = %lock_page.exit
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  %s_fs_info.i.i38 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i38, align 16
  %s_bytesex.i39 = getelementptr inbounds %struct.ufs_sb_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %s_bytesex.i39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_bytesex.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i40 = icmp eq i32 %29, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %retval.0.i41 = select i1 %cmp.i40, i32 %30, i32 %25
  %31 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i41, ptr %de, align 4
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i42 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i.i42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i42, align 16
  %s_flags.i = getelementptr inbounds %struct.ufs_sb_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.not.i, label %do.end12.ufs_set_de_type.exit_crit_edge, label %if.end.i

do.end12.ufs_set_de_type.exit_crit_edge:          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufs_set_de_type.exit

if.end.i:                                         ; preds = %do.end12
  %38 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %inode, align 8
  %40 = and i16 %39, -4096
  %and1.i = zext i16 %40 to i32
  %41 = add nsw i32 %and1.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %41)
  %42 = icmp ult i32 %41, 49152
  br i1 %42, label %switch.lookup, label %if.end.i.sw.epilog.sink.split.i_crit_edge

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = lshr exact i32 %41, 12
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.ufs_set_link, i32 0, i32 %43
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %44)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %switch.lookup, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %d_u20.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de, i32 0, i32 2
  %45 = ptrtoint ptr %d_u20.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink.i, ptr %d_u20.i, align 2
  br label %ufs_set_de_type.exit

ufs_set_de_type.exit:                             ; preds = %sw.epilog.sink.split.i, %do.end12.ufs_set_de_type.exit_crit_edge
  %call17 = tail call fastcc i32 @ufs_commit_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef %conv3)
  tail call fastcc void @ufs_put_page(ptr noundef %page)
  br i1 %update_times, label %if.then19, label %ufs_set_de_type.exit.if.end20_crit_edge

ufs_set_de_type.exit.if.end20_crit_edge:          ; preds = %ufs_set_de_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %ufs_set_de_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #9
  %46 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %47 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %ufs_set_de_type.exit.if.end20_crit_edge
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_prepare_chunk(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_commit_chunk(ptr noundef %page, i64 noundef %pos, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i1.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %entry
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %entry ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %4 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %4, -2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #9
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !111

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %call = tail call i32 @block_write_end(ptr noundef null, ptr noundef %1, i64 noundef %pos, i32 noundef %len, i32 noundef %len, ptr noundef %page, ptr noundef null) #9
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %6)
  %cmp = icmp sgt i64 %add, %6
  br i1 %cmp, label %if.then, label %inode_inc_iversion.exit.if.end_crit_edge

inode_inc_iversion.exit.if.end_crit_edge:         ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %inode_inc_iversion.exit
  %7 = tail call i32 @llvm.read_register.i32(metadata !99) #9
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i24 = add i32 %10, 1
  store volatile i32 %add.i.i24, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.then.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then.i_size_write.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %12 = tail call i32 @llvm.read_register.i32(metadata !99) #9
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %16 = tail call i32 @llvm.read_register.i32(metadata !99) #9
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %21, ptrtoint (ptr @lockdep_recursion to i32)
  %22 = inttoptr i32 %add.i28.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !124
  %25 = tail call i32 @llvm.read_register.i32(metadata !99) #9
  %and.i.i.i7.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool20.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %29 = tail call i32 @llvm.read_register.i32(metadata !99) #9
  %and.i.i.i29.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i25 = icmp eq i32 %32, 0
  br i1 %cmp.i.i25, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !99) #9
  %and.i.i.i9.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %36, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %37 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %40, ptrtoint (ptr @hardirqs_enabled to i32)
  %41 = inttoptr i32 %add47.i.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %44 = tail call i32 @llvm.read_register.i32(metadata !99) #9
  %and.i.i.i12.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %47, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool54.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !111

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %48 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !127
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #9
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %51) #9
  %52 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %add, ptr %i_size, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %51) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  %53 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %55 = tail call i32 @llvm.read_register.i32(metadata !99) #9
  %and.i.i.i26.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #9
  br label %if.end

if.end:                                           ; preds = %i_size_write.exit, %inode_inc_iversion.exit.if.end_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_flags, align 4
  %and = and i32 %62, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %63 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_flags, align 4
  %and5 = and i32 %64, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %65 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  %and.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i, label %if.then.i.i28, !prof !111

if.then.i.i28:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i27 = add i32 %67, -1
  br label %write_one_page.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %page to i32
  br label %write_one_page.exit

write_one_page.exit:                              ; preds = %if.end.i.i, %if.then.i.i28
  %retval.0.i.i = phi i32 [ %sub.i.i27, %if.then.i.i28 ], [ %68, %if.end.i.i ]
  %69 = inttoptr i32 %retval.0.i.i to ptr
  %call1.i = tail call i32 @folio_write_one(ptr noundef %69) #9
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef %page) #9
  br label %if.end9

if.end9:                                          ; preds = %if.else, %write_one_page.exit
  %err.0 = phi i32 [ %call1.i, %write_one_page.exit ], [ 0, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ufs_dotdot(ptr nocapture noundef readonly %dir, ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ufs_get_page(ptr noundef %dir, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call2 = tail call ptr @page_address(ptr noundef %call) #9
  %d_reclen.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %d_reclen.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %d_reclen.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  %8 = tail call i16 @llvm.bswap.i16(i16 %3) #9
  %retval.0.i.i = select i1 %cmp.i.i, i16 %8, i16 %3
  %conv.i = zext i16 %retval.0.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %call2, i32 %conv.i
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %p, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %de.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr.i, %if.then ]
  ret ptr %de.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ufs_get_page(ptr nocapture noundef readonly %dir, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef %n, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 44) #9
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %shr.i.i26 = lshr i32 %3, 30
  %4 = zext i32 %shr.i.i26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %shr.i.i26, label %if.then.if.then.i27_crit_edge [
    i32 2, label %if.then.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.if.then.i27_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i27

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not.i = icmp eq i32 %5, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i27_crit_edge

is_highmem_idx.exit.i.if.then.i27_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i27

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i27:                                      ; preds = %is_highmem_idx.exit.i.if.then.i27_crit_edge, %if.then.if.then.i27_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i27
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !112

if.then.i:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.25) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

PageChecked.exit:                                 ; preds = %kmap.exit
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %call.i, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then7, label %PageChecked.exit.cleanup_crit_edge, !prof !112

PageChecked.exit.cleanup_crit_edge:               ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %PageChecked.exit
  %11 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !111

if.then.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i22 = icmp eq i32 %17, -1
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %11, align 4
  %and.i16.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i22, label %if.then.i23, label %do.end10.i, !prof !112

if.then.i23:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !111

if.then.i19.i:                                    ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %19, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %20, %if.end.i20.i ]
  %21 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.26) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !131
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !111

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %19, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %22, %if.end.i27.i ]
  %23 = inttoptr i32 %retval.0.i28.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp eq i32 %26, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %PageError.exit.fail_crit_edge

PageError.exit.fail_crit_edge:                    ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false:                                    ; preds = %PageError.exit
  %call10 = tail call fastcc zeroext i1 @ufs_check_page(ptr noundef %call.i)
  br i1 %call10, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.fail_crit_edge

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail:                                             ; preds = %lor.lhs.false.fail_crit_edge, %PageError.exit.fail_crit_edge
  tail call fastcc void @ufs_put_page(ptr noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %lor.lhs.false.cleanup_crit_edge, %PageChecked.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %fail ], [ %call.i, %PageChecked.exit.cleanup_crit_edge ], [ %call.i, %lor.lhs.false.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_add_link(ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  %tmp116 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name1, align 8
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %add = add i32 %7, 1
  %add4 = add i32 %7, 12
  %and = and i32 %add4, -4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %s_dirblksize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %13, i32 0, i32 63
  %14 = ptrtoint ptr %s_dirblksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_dirblksize, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size.i, align 8
  %18 = trunc i64 %17 to i32
  %conv.i = add i32 %18, 4095
  %shr.i = lshr i32 %conv.i, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_add_link.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_add_link, %do.body11)) #9
          to label %if.then [label %do.body11], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_add_link.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 322, ptr noundef nonnull @.str.7) #9
  br label %do.body11

do.body11:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_add_link.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_add_link, %do.end28)) #9
          to label %if.then25 [label %do.end28], !srcloc !110

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_add_link.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.9, ptr noundef %5, i32 noundef %7) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body11
  %sub = sub i32 4096, %and
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end28
  %n.0309 = phi i32 [ 0, %do.end28 ], [ %inc, %for.inc.for.body_crit_edge ]
  %call29 = tail call fastcc ptr @ufs_get_page(ptr noundef %3, i32 noundef %n.0309)
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %call29 to i32
  br i1 %cmp.i, label %cleanup117.loopexit, label %if.end33

if.end33:                                         ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 788) #9
  %20 = getelementptr inbounds %struct.page, ptr %call29, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end33._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !111

if.end33._compound_head.exit.i_crit_edge:         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %22, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end33._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end33._compound_head.exit.i_crit_edge ]
  %23 = inttoptr i32 %retval.0.i.i to ptr
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !111

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.22) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !117
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %23, i32 noundef 4) #9
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %23, align 4
  %and.i.i4.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %23, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #9, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %23) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call34 = tail call ptr @page_address(ptr noundef %call29) #9
  %31 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_size.i, align 8
  %conv.i210 = trunc i64 %32 to i32
  %shl.neg.i = mul i32 %n.0309, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i210
  %33 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #9
  %add.ptr = getelementptr i8, ptr %call34, i32 %33
  %add.ptr36 = getelementptr i8, ptr %call34, i32 %sub
  %cmp37.not307 = icmp ugt ptr %call34, %add.ptr36
  br i1 %cmp37.not307, label %lock_page.exit.for.inc_crit_edge, label %lock_page.exit.while.body_crit_edge

lock_page.exit.while.body_crit_edge:              ; preds = %lock_page.exit
  br label %while.body

lock_page.exit.for.inc_crit_edge:                 ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body:                                       ; preds = %if.end76.while.body_crit_edge, %lock_page.exit.while.body_crit_edge
  %de.1308 = phi ptr [ %add.ptr78, %if.end76.while.body_crit_edge ], [ %call34, %lock_page.exit.while.body_crit_edge ]
  %cmp38 = icmp eq ptr %de.1308, %add.ptr
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %15 to i16
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i211 = icmp eq i32 %37, 0
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv) #9
  %retval.0.i212 = select i1 %cmp.i211, i16 %38, i16 %conv
  %d_reclen = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 1
  %39 = ptrtoint ptr %d_reclen to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %retval.0.i212, ptr %d_reclen, align 4
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %add.ptr, align 4
  %.pre = and i32 %15, 65535
  br label %got_it

if.end42:                                         ; preds = %while.body
  %d_reclen43 = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.1308, i32 0, i32 1
  %41 = ptrtoint ptr %d_reclen43 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %d_reclen43, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp45 = icmp eq i16 %42, 0
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %44, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #9
  br label %out_unlock

if.end49:                                         ; preds = %if.end42
  %45 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i213 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i213)
  %cmp.i.i = icmp eq i32 %and.i.i213, 0
  %d_u.i.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.1308, i32 0, i32 2
  br i1 %cmp.i.i, label %if.then.i.i214, label %if.else.i.i

if.then.i.i214:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %d_u.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %d_u.i.i, align 2
  %s_bytesex.i.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 2
  %51 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_bytesex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i = icmp eq i32 %52, 0
  %53 = tail call i16 @llvm.bswap.i16(i16 %50) #9
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i16 %53, i16 %50
  br label %ufs_get_de_namlen.exit.i

if.else.i.i:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %d_namlen.i.i = getelementptr inbounds %struct.anon.85, ptr %d_u.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %d_namlen.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %d_namlen.i.i, align 1
  %conv.i.i = zext i8 %55 to i16
  br label %ufs_get_de_namlen.exit.i

ufs_get_de_namlen.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i214
  %retval.0.i.i215 = phi i16 [ %retval.0.i.i.i, %if.then.i.i214 ], [ %conv.i.i, %if.else.i.i ]
  %conv.i216 = zext i16 %retval.0.i.i215 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i216)
  %cmp.not.i = icmp eq i32 %7, %conv.i216
  br i1 %cmp.not.i, label %if.end.i, label %ufs_get_de_namlen.exit.i.if.end53_crit_edge

ufs_get_de_namlen.exit.i.if.end53_crit_edge:      ; preds = %ufs_get_de_namlen.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end.i:                                         ; preds = %ufs_get_de_namlen.exit.i
  %56 = ptrtoint ptr %de.1308 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %de.1308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i, label %if.end.i.if.end53_crit_edge, label %ufs_match.exit

if.end.i.if.end53_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

ufs_match.exit:                                   ; preds = %if.end.i
  %d_name.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.1308, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %5, ptr %d_name.i, i32 %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i.not, label %ufs_match.exit.out_unlock_crit_edge, label %ufs_match.exit.if.end53_crit_edge

ufs_match.exit.if.end53_crit_edge:                ; preds = %ufs_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

ufs_match.exit.out_unlock_crit_edge:              ; preds = %ufs_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end53:                                         ; preds = %ufs_match.exit.if.end53_crit_edge, %if.end.i.if.end53_crit_edge, %ufs_get_de_namlen.exit.i.if.end53_crit_edge
  br i1 %cmp.i.i, label %if.then.i222, label %if.else.i

if.then.i222:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %d_u.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %d_u.i.i, align 2
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 2
  %60 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i220 = icmp eq i32 %61, 0
  %62 = tail call i16 @llvm.bswap.i16(i16 %59) #9
  %retval.0.i.i221 = select i1 %cmp.i.i220, i16 %62, i16 %59
  br label %ufs_get_de_namlen.exit

if.else.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %d_namlen.i = getelementptr inbounds %struct.anon.85, ptr %d_u.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %d_namlen.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %d_namlen.i, align 1
  %conv.i223 = zext i8 %64 to i16
  br label %ufs_get_de_namlen.exit

ufs_get_de_namlen.exit:                           ; preds = %if.else.i, %if.then.i222
  %retval.0.i224 = phi i16 [ %retval.0.i.i221, %if.then.i222 ], [ %conv.i223, %if.else.i ]
  %add58 = add i16 %retval.0.i224, 12
  %and59 = and i16 %add58, -4
  %s_bytesex.i226 = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 2
  %65 = ptrtoint ptr %s_bytesex.i226 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_bytesex.i226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i227 = icmp eq i32 %66, 0
  %67 = tail call i16 @llvm.bswap.i16(i16 %42) #9
  %retval.0.i228 = select i1 %cmp.i227, i16 %67, i16 %42
  %68 = ptrtoint ptr %de.1308 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %de.1308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool64.not = icmp ne i32 %69, 0
  %conv65 = zext i16 %retval.0.i228 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv65)
  %cmp66.not = icmp ugt i32 %and, %conv65
  %or.cond = select i1 %tobool64.not, i1 true, i1 %cmp66.not
  br i1 %or.cond, label %if.end69, label %ufs_get_de_namlen.exit.got_it_crit_edge

ufs_get_de_namlen.exit.got_it_crit_edge:          ; preds = %ufs_get_de_namlen.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_it

if.end69:                                         ; preds = %ufs_get_de_namlen.exit
  %conv71 = zext i16 %and59 to i32
  %add72 = add i32 %and, %conv71
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %conv65)
  %cmp73.not = icmp ugt i32 %add72, %conv65
  br i1 %cmp73.not, label %if.end76, label %if.end69.got_it_crit_edge

if.end69.got_it_crit_edge:                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_it

if.end76:                                         ; preds = %if.end69
  %add.ptr78 = getelementptr i8, ptr %de.1308, i32 %conv65
  %cmp37.not = icmp ugt ptr %add.ptr78, %add.ptr36
  br i1 %cmp37.not, label %if.end76.for.inc_crit_edge, label %if.end76.while.body_crit_edge

if.end76.while.body_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end76.for.inc_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end76.for.inc_crit_edge, %lock_page.exit.for.inc_crit_edge
  tail call void @unlock_page(ptr noundef %call29) #9
  tail call fastcc void @ufs_put_page(ptr noundef %call29)
  %inc = add nuw nsw i32 %n.0309, 1
  %exitcond = icmp eq i32 %n.0309, %shr.i
  br i1 %exitcond, label %do.body79, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body79:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #9, !srcloc !132
  unreachable

got_it:                                           ; preds = %if.end69.got_it_crit_edge, %ufs_get_de_namlen.exit.got_it_crit_edge, %if.then39
  %conv89.pre-phi = phi i32 [ %.pre, %if.then39 ], [ %conv65, %if.end69.got_it_crit_edge ], [ %conv65, %ufs_get_de_namlen.exit.got_it_crit_edge ]
  %de.1308314 = phi ptr [ %add.ptr, %if.then39 ], [ %de.1308, %if.end69.got_it_crit_edge ], [ %de.1308, %ufs_get_de_namlen.exit.got_it_crit_edge ]
  %rec_len.2.ph = phi i16 [ %conv, %if.then39 ], [ %retval.0.i228, %if.end69.got_it_crit_edge ], [ %retval.0.i228, %ufs_get_de_namlen.exit.got_it_crit_edge ]
  %name_len.2.ph = phi i16 [ 0, %if.then39 ], [ %and59, %if.end69.got_it_crit_edge ], [ %and59, %ufs_get_de_namlen.exit.got_it_crit_edge ]
  %index.i = getelementptr inbounds %struct.page, ptr %call29, i32 0, i32 1, i32 0, i32 2
  %70 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %71, 12
  %add.ptr86 = getelementptr i8, ptr %de.1308314, i32 %shl.i
  %call87 = tail call ptr @page_address(ptr noundef %call29) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr86 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call87 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv88 = sext i32 %sub.ptr.sub to i64
  %call90 = tail call i32 @ufs_prepare_chunk(ptr noundef %call29, i64 noundef %conv88, i32 noundef %conv89.pre-phi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %got_it.out_unlock_crit_edge

got_it.out_unlock_crit_edge:                      ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end93:                                         ; preds = %got_it
  %72 = ptrtoint ptr %de.1308314 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %de.1308314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool95.not = icmp eq i32 %73, 0
  br i1 %tobool95.not, label %if.end93.if.end107_crit_edge, label %if.then96

if.end93.if.end107_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %conv97 = zext i16 %name_len.2.ph to i32
  %add.ptr98 = getelementptr i8, ptr %de.1308314, i32 %conv97
  %sub101 = sub i16 %rec_len.2.ph, %name_len.2.ph
  %74 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i231 = getelementptr inbounds %struct.ufs_sb_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %s_bytesex.i231 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_bytesex.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i232 = icmp eq i32 %77, 0
  %78 = tail call i16 @llvm.bswap.i16(i16 %sub101) #9
  %retval.0.i233 = select i1 %cmp.i232, i16 %78, i16 %sub101
  %d_reclen104 = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr98, i32 0, i32 1
  %79 = ptrtoint ptr %d_reclen104 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %retval.0.i233, ptr %d_reclen104, align 4
  %80 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i235 = getelementptr inbounds %struct.ufs_sb_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %s_bytesex.i235 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_bytesex.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i236 = icmp eq i32 %83, 0
  %84 = tail call i16 @llvm.bswap.i16(i16 %name_len.2.ph) #9
  %retval.0.i237 = select i1 %cmp.i236, i16 %84, i16 %name_len.2.ph
  %d_reclen106 = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.1308314, i32 0, i32 1
  %85 = ptrtoint ptr %d_reclen106 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %retval.0.i237, ptr %d_reclen106, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then96, %if.end93.if.end107_crit_edge
  %de.3 = phi ptr [ %add.ptr98, %if.then96 ], [ %de.1308314, %if.end93.if.end107_crit_edge ]
  %86 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i239 = getelementptr inbounds %struct.ufs_sb_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %s_flags.i239 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_flags.i239, align 4
  %and.i240 = and i32 %89, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i240)
  %cmp.i241 = icmp eq i32 %and.i240, 0
  br i1 %cmp.i241, label %if.then.i246, label %if.else.i249

if.then.i246:                                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %conv108 = trunc i32 %7 to i16
  %s_bytesex.i.i242 = getelementptr inbounds %struct.ufs_sb_info, ptr %87, i32 0, i32 2
  %90 = ptrtoint ptr %s_bytesex.i.i242 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_bytesex.i.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i.i243 = icmp eq i32 %91, 0
  %92 = tail call i16 @llvm.bswap.i16(i16 %conv108) #9
  %retval.0.i.i244 = select i1 %cmp.i.i243, i16 %92, i16 %conv108
  %d_u.i245 = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.3, i32 0, i32 2
  %93 = ptrtoint ptr %d_u.i245 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %retval.0.i.i244, ptr %d_u.i245, align 2
  br label %ufs_set_de_namlen.exit

if.else.i249:                                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i247 = trunc i32 %7 to i8
  %d_u2.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.3, i32 0, i32 2
  %d_namlen.i248 = getelementptr inbounds %struct.anon.85, ptr %d_u2.i, i32 0, i32 1
  %94 = ptrtoint ptr %d_namlen.i248 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv.i247, ptr %d_namlen.i248, align 1
  br label %ufs_set_de_namlen.exit

ufs_set_de_namlen.exit:                           ; preds = %if.else.i249, %if.then.i246
  %d_name109 = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.3, i32 0, i32 3
  %95 = call ptr @memcpy(ptr %d_name109, ptr %5, i32 %add)
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %96 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %i_ino, align 8
  %98 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i252 = getelementptr inbounds %struct.ufs_sb_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %s_bytesex.i252 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_bytesex.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i253 = icmp eq i32 %101, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %97) #9
  %retval.0.i254 = select i1 %cmp.i253, i32 %102, i32 %97
  %103 = ptrtoint ptr %de.3 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %retval.0.i254, ptr %de.3, align 4
  %104 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i256 = getelementptr inbounds %struct.ufs_sb_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %s_flags.i256 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_flags.i256, align 4
  %and.i257 = and i32 %107, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257)
  %cmp.not.not.i = icmp eq i32 %and.i257, 0
  br i1 %cmp.not.not.i, label %ufs_set_de_namlen.exit.ufs_set_de_type.exit_crit_edge, label %if.end.i258

ufs_set_de_namlen.exit.ufs_set_de_type.exit_crit_edge: ; preds = %ufs_set_de_namlen.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufs_set_de_type.exit

if.end.i258:                                      ; preds = %ufs_set_de_namlen.exit
  %108 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %inode, align 8
  %110 = and i16 %109, -4096
  %and1.i = zext i16 %110 to i32
  %111 = add nsw i32 %and1.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %111)
  %112 = icmp ult i32 %111, 49152
  br i1 %112, label %switch.lookup, label %if.end.i258.sw.epilog.sink.split.i_crit_edge

if.end.i258.sw.epilog.sink.split.i_crit_edge:     ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

switch.lookup:                                    ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #11
  %113 = lshr exact i32 %111, 12
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.ufs_add_link, i32 0, i32 %113
  %114 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %114)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %switch.lookup, %if.end.i258.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.end.i258.sw.epilog.sink.split.i_crit_edge ]
  %d_u20.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.3, i32 0, i32 2
  %115 = ptrtoint ptr %d_u20.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %.sink.i, ptr %d_u20.i, align 2
  br label %ufs_set_de_type.exit

ufs_set_de_type.exit:                             ; preds = %sw.epilog.sink.split.i, %ufs_set_de_namlen.exit.ufs_set_de_type.exit_crit_edge
  %call115 = tail call fastcc i32 @ufs_commit_chunk(ptr noundef %call29, i64 noundef %conv88, i32 noundef %conv89.pre-phi)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp116) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp116, ptr noundef %3) #9
  %116 = call ptr @memcpy(ptr %i_ctime, ptr %tmp116, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp116) #9
  %117 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #9
  br label %out_put

out_put:                                          ; preds = %out_unlock, %ufs_set_de_type.exit
  %err.2 = phi i32 [ %err.4, %out_unlock ], [ %call115, %ufs_set_de_type.exit ]
  call fastcc void @ufs_put_page(ptr noundef %call29)
  br label %cleanup117

out_unlock:                                       ; preds = %got_it.out_unlock_crit_edge, %ufs_match.exit.out_unlock_crit_edge, %if.then47
  %err.4 = phi i32 [ %call90, %got_it.out_unlock_crit_edge ], [ -5, %if.then47 ], [ -17, %ufs_match.exit.out_unlock_crit_edge ]
  tail call void @unlock_page(ptr noundef %call29) #9
  br label %out_put

cleanup117.loopexit:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %call29 to i32
  br label %cleanup117

cleanup117:                                       ; preds = %cleanup117.loopexit, %out_put
  %retval.0 = phi i32 [ %err.2, %out_put ], [ %118, %cleanup117.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_delete_entry(ptr noundef %inode, ptr noundef %dir, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %tmp119 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @page_address(ptr noundef %page) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %dir to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %s_dirblksize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 63
  %6 = ptrtoint ptr %s_dirblksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_dirblksize, align 4
  %neg = sub i32 0, %7
  %and = and i32 %sub.ptr.sub, %neg
  %d_reclen = getelementptr inbounds %struct.ufs_dir_entry, ptr %dir, i32 0, i32 1
  %8 = ptrtoint ptr %d_reclen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %d_reclen, align 4
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %12 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  %retval.0.i212 = select i1 %cmp.i, i16 %12, i16 %9
  %conv = zext i16 %retval.0.i212 to i32
  %add = add i32 %sub.ptr.sub, %conv
  %add.ptr = getelementptr i8, ptr %call, i32 %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_delete_entry.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_delete_entry, %do.body10)) #9
          to label %if.then [label %do.body10], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_delete_entry.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 507, ptr noundef nonnull @.str.11) #9
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_delete_entry.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_delete_entry, %do.body28)) #9
          to label %if.then24 [label %do.body28], !srcloc !110

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_delete_entry.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.13) #9
  br label %do.body28

do.body28:                                        ; preds = %if.then24, %do.body10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_delete_entry.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_delete_entry, %do.body46)) #9
          to label %if.then42 [label %do.body46], !srcloc !110

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_delete_entry.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 512, ptr noundef nonnull @.str.11) #9
  br label %do.body46

do.body46:                                        ; preds = %if.then42, %do.body28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_delete_entry.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_delete_entry, %do.end69)) #9
          to label %if.then60 [label %do.end69], !srcloc !110

if.then60:                                        ; preds = %do.body46
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i214 = getelementptr inbounds %struct.ufs_sb_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %s_bytesex.i214 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_bytesex.i214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i215 = icmp eq i32 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %retval.0.i216 = select i1 %cmp.i215, i32 %19, i32 %14
  %d_reclen62 = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %d_reclen62 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %d_reclen62, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  %retval.0.i220 = select i1 %cmp.i215, i16 %22, i16 %21
  %conv64 = zext i16 %retval.0.i220 to i32
  %s_flags.i = getelementptr inbounds %struct.ufs_sb_info, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i222 = icmp eq i32 %and.i, 0
  %d_u.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 2
  br i1 %cmp.i222, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %d_u.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %d_u.i, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  %retval.0.i.i = select i1 %cmp.i215, i16 %27, i16 %26
  br label %ufs_get_de_namlen.exit

if.else.i:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %d_namlen.i = getelementptr inbounds %struct.anon.85, ptr %d_u.i, i32 0, i32 1
  %28 = ptrtoint ptr %d_namlen.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %d_namlen.i, align 1
  %conv.i = zext i8 %29 to i16
  br label %ufs_get_de_namlen.exit

ufs_get_de_namlen.exit:                           ; preds = %if.else.i, %if.then.i
  %retval.0.i223 = phi i16 [ %retval.0.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %conv66 = zext i16 %retval.0.i223 to i32
  %d_name = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_delete_entry.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i216, i32 noundef %conv64, i32 noundef %conv66, ptr noundef %d_name) #9
  br label %do.end69

do.end69:                                         ; preds = %ufs_get_de_namlen.exit, %do.body46
  %cmp242 = icmp ult ptr %add.ptr, %dir
  br i1 %cmp242, label %do.end69.while.body_crit_edge, label %do.end69.if.end85_crit_edge

do.end69.if.end85_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

do.end69.while.body_crit_edge:                    ; preds = %do.end69
  br label %while.body

while.body:                                       ; preds = %if.end77.while.body_crit_edge, %do.end69.while.body_crit_edge
  %de.0243 = phi ptr [ %add.ptr.i, %if.end77.while.body_crit_edge ], [ %add.ptr, %do.end69.while.body_crit_edge ]
  %d_reclen71 = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.0243, i32 0, i32 1
  %30 = ptrtoint ptr %d_reclen71 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %d_reclen71, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp73 = icmp eq i16 %31, 0
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %33, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #9
  br label %out

if.end77:                                         ; preds = %while.body
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i224 = getelementptr inbounds %struct.ufs_sb_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %s_bytesex.i.i224 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_bytesex.i.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i225 = icmp eq i32 %37, 0
  %38 = tail call i16 @llvm.bswap.i16(i16 %31) #9
  %retval.0.i.i226 = select i1 %cmp.i.i225, i16 %38, i16 %31
  %conv.i227 = zext i16 %retval.0.i.i226 to i32
  %add.ptr.i = getelementptr i8, ptr %de.0243, i32 %conv.i227
  %cmp = icmp ult ptr %add.ptr.i, %dir
  br i1 %cmp, label %if.end77.while.body_crit_edge, label %while.end

if.end77.while.body_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end77
  %tobool79.not = icmp eq ptr %de.0243, null
  br i1 %tobool79.not, label %while.end.if.end85_crit_edge, label %if.then80

while.end.if.end85_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then80:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call81 = tail call ptr @page_address(ptr noundef %page) #9
  %sub.ptr.lhs.cast82 = ptrtoint ptr %de.0243 to i32
  %sub.ptr.rhs.cast83 = ptrtoint ptr %call81 to i32
  %sub.ptr.sub84 = sub i32 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %while.end.if.end85_crit_edge, %do.end69.if.end85_crit_edge
  %tobool79.not248 = phi i1 [ false, %if.then80 ], [ true, %while.end.if.end85_crit_edge ], [ true, %do.end69.if.end85_crit_edge ]
  %pde.0.lcssa247 = phi ptr [ %de.0243, %if.then80 ], [ null, %while.end.if.end85_crit_edge ], [ null, %do.end69.if.end85_crit_edge ]
  %from.0 = phi i32 [ %sub.ptr.sub84, %if.then80 ], [ %and, %while.end.if.end85_crit_edge ], [ %and, %do.end69.if.end85_crit_edge ]
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i, align 4
  %conv.i228 = zext i32 %40 to i64
  %shl.i = shl nuw nsw i64 %conv.i228, 12
  %conv87 = zext i32 %from.0 to i64
  %add88 = add nuw nsw i64 %shl.i, %conv87
  tail call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 788) #9
  %41 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !111

if.then.i.i:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %43, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i229 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %44, %if.end.i.i ]
  %45 = inttoptr i32 %retval.0.i.i229 to ptr
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !111

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.22) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !117
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %45, i32 noundef 4) #9
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %45, align 4
  %and.i.i4.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i230_crit_edge

folio_flags.exit.i.i.if.then.i230_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i230

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %45, i32 1, i32 3, i32 1) #9
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #9, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i230_crit_edge

folio_trylock.exit.i.if.then.i230_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i230

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i230:                                     ; preds = %folio_trylock.exit.i.if.then.i230_crit_edge, %folio_flags.exit.i.i.if.then.i230_crit_edge
  tail call void @__folio_lock(ptr noundef %45) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i230, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %sub89 = sub i32 %add, %from.0
  %call90 = tail call i32 @ufs_prepare_chunk(ptr noundef %page, i64 noundef %add88, i32 noundef %sub89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool92.not = icmp eq i32 %call90, 0
  br i1 %tobool92.not, label %do.end108, label %do.body100, !prof !111

do.body100:                                       ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 530, 0\0A.popsection", ""() #9, !srcloc !133
  unreachable

do.end108:                                        ; preds = %lock_page.exit
  br i1 %tobool79.not248, label %do.end108.if.end115_crit_edge, label %if.then110

do.end108.if.end115_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then110:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  %conv112 = trunc i32 %sub89 to i16
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i232 = getelementptr inbounds %struct.ufs_sb_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %s_bytesex.i232 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_bytesex.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i233 = icmp eq i32 %55, 0
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv112) #9
  %retval.0.i234 = select i1 %cmp.i233, i16 %56, i16 %conv112
  %d_reclen114 = getelementptr inbounds %struct.ufs_dir_entry, ptr %pde.0.lcssa247, i32 0, i32 1
  %57 = ptrtoint ptr %d_reclen114 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %retval.0.i234, ptr %d_reclen114, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %do.end108.if.end115_crit_edge
  %58 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %dir, align 4
  %call118 = tail call fastcc i32 @ufs_commit_chunk(ptr noundef %page, i64 noundef %add88, i32 noundef %sub89)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp119) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp119, ptr noundef %inode) #9
  %59 = call ptr @memcpy(ptr %i_mtime, ptr %tmp119, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp119) #9
  %60 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #9
  br label %out

out:                                              ; preds = %if.end115, %if.then75
  %err.0 = phi i32 [ -5, %if.then75 ], [ %call118, %if.end115 ]
  call fastcc void @ufs_put_page(ptr noundef %page)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_delete_entry.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_delete_entry, %do.body138)) #9
          to label %if.then134 [label %do.body138], !srcloc !110

if.then134:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_delete_entry.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 539, ptr noundef nonnull @.str.11) #9
  br label %do.body138

do.body138:                                       ; preds = %if.then134, %out
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_delete_entry.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_delete_entry, %do.end155)) #9
          to label %if.then152 [label %do.end155], !srcloc !110

if.then152:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_delete_entry.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.17) #9
  br label %do.end155

do.end155:                                        ; preds = %if.then152, %do.body138
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_make_empty(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %3, i32 noundef 0, i32 noundef 7, i32 noundef %5) #9
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %s_dirblksize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 63
  %10 = ptrtoint ptr %s_dirblksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dirblksize, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ufs_prepare_chunk(ptr noundef nonnull %call.i.i, i64 noundef 0, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #9
  br label %fail

if.end5:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 44) #9
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i.i, align 4
  %shr.i.i = lshr i32 %13, 30
  %14 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %shr.i.i, label %if.end5.if.then.i_crit_edge [
    i32 2, label %if.end5.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end5.if.else.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %15 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp2.i.not.i = icmp eq i32 %15, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %call.i.i) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end5.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %call.i.i) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %call7 = tail call ptr @page_address(ptr noundef nonnull %call.i.i) #9
  %16 = call ptr @memset(ptr %call7, i32 0, i32 4096)
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %retval.0.i = select i1 %cmp.i, i32 %23, i32 %18
  %24 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %call7, align 4
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.ufs_sb_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.not.i, label %kmap.exit.ufs_set_de_type.exit_crit_edge, label %if.end.i

kmap.exit.ufs_set_de_type.exit_crit_edge:         ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufs_set_de_type.exit

if.end.i:                                         ; preds = %kmap.exit
  %29 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %inode, align 8
  %31 = and i16 %30, -4096
  %and1.i = zext i16 %31 to i32
  %32 = add nsw i32 %and1.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %32)
  %33 = icmp ult i32 %32, 49152
  br i1 %33, label %switch.lookup, label %if.end.i.sw.epilog.sink.split.i_crit_edge

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = lshr exact i32 %32, 12
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.ufs_make_empty, i32 0, i32 %34
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %35)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %switch.lookup, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %d_u20.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %call7, i32 0, i32 2
  %36 = ptrtoint ptr %d_u20.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink.i, ptr %d_u20.i, align 2
  br label %ufs_set_de_type.exit

ufs_set_de_type.exit:                             ; preds = %sw.epilog.sink.split.i, %kmap.exit.ufs_set_de_type.exit_crit_edge
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i69 = getelementptr inbounds %struct.ufs_sb_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %s_flags.i69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_flags.i69, align 4
  %and.i70 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %cmp.i71 = icmp eq i32 %and.i70, 0
  br i1 %cmp.i71, label %if.then.i72, label %if.else.i73

if.then.i72:                                      ; preds = %ufs_set_de_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %38, i32 0, i32 2
  %41 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i = icmp eq i32 %42, 0
  %retval.0.i.i = select i1 %cmp.i.i, i16 256, i16 1
  %d_u.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %call7, i32 0, i32 2
  %43 = ptrtoint ptr %d_u.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %retval.0.i.i, ptr %d_u.i, align 2
  br label %ufs_set_de_namlen.exit

if.else.i73:                                      ; preds = %ufs_set_de_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  %d_u2.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %call7, i32 0, i32 2
  %d_namlen.i = getelementptr inbounds %struct.anon.85, ptr %d_u2.i, i32 0, i32 1
  %44 = ptrtoint ptr %d_namlen.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %d_namlen.i, align 1
  br label %ufs_set_de_namlen.exit

ufs_set_de_namlen.exit:                           ; preds = %if.else.i73, %if.then.i72
  %45 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i76 = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %s_bytesex.i76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_bytesex.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i77 = icmp eq i32 %48, 0
  %retval.0.i78 = select i1 %cmp.i77, i16 3072, i16 12
  %d_reclen = getelementptr inbounds %struct.ufs_dir_entry, ptr %call7, i32 0, i32 1
  %49 = ptrtoint ptr %d_reclen to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %retval.0.i78, ptr %d_reclen, align 4
  %d_name = getelementptr inbounds %struct.ufs_dir_entry, ptr %call7, i32 0, i32 3
  %50 = ptrtoint ptr %d_name to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 11776, ptr %d_name, align 1
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i80 = getelementptr inbounds %struct.ufs_sb_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %s_bytesex.i80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_bytesex.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i81 = icmp eq i32 %54, 0
  %55 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i78) #9
  %retval.0.i82 = select i1 %cmp.i81, i16 %55, i16 %retval.0.i78
  %conv13 = zext i16 %retval.0.i82 to i32
  %add.ptr = getelementptr i8, ptr %call7, i32 %conv13
  %i_ino14 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %56 = ptrtoint ptr %i_ino14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino14, align 8
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  %retval.0.i86 = select i1 %cmp.i81, i32 %58, i32 %57
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i86, ptr %add.ptr, align 4
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i88 = getelementptr inbounds %struct.ufs_sb_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %s_flags.i88 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_flags.i88, align 4
  %and.i89 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %cmp.not.not.i90 = icmp eq i32 %and.i89, 0
  br i1 %cmp.not.not.i90, label %ufs_set_de_namlen.exit.ufs_set_de_type.exit103_crit_edge, label %if.end.i92

ufs_set_de_namlen.exit.ufs_set_de_type.exit103_crit_edge: ; preds = %ufs_set_de_namlen.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufs_set_de_type.exit103

if.end.i92:                                       ; preds = %ufs_set_de_namlen.exit
  %64 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %dir, align 8
  %66 = and i16 %65, -4096
  %and1.i91 = zext i16 %66 to i32
  %67 = add nsw i32 %and1.i91, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %67)
  %68 = icmp ult i32 %67, 49152
  br i1 %68, label %switch.lookup127, label %if.end.i92.sw.epilog.sink.split.i102_crit_edge

if.end.i92.sw.epilog.sink.split.i102_crit_edge:   ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i102

switch.lookup127:                                 ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  %69 = lshr exact i32 %67, 12
  %switch.gep128 = getelementptr inbounds [12 x i8], ptr @switch.table.ufs_make_empty.48, i32 0, i32 %69
  %70 = ptrtoint ptr %switch.gep128 to i32
  call void @__asan_load1_noabort(i32 %70)
  %switch.load129 = load i8, ptr %switch.gep128, align 1
  br label %sw.epilog.sink.split.i102

sw.epilog.sink.split.i102:                        ; preds = %switch.lookup127, %if.end.i92.sw.epilog.sink.split.i102_crit_edge
  %.sink.i100 = phi i8 [ %switch.load129, %switch.lookup127 ], [ 0, %if.end.i92.sw.epilog.sink.split.i102_crit_edge ]
  %d_u20.i101 = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 2
  %71 = ptrtoint ptr %d_u20.i101 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %.sink.i100, ptr %d_u20.i101, align 2
  br label %ufs_set_de_type.exit103

ufs_set_de_type.exit103:                          ; preds = %sw.epilog.sink.split.i102, %ufs_set_de_namlen.exit.ufs_set_de_type.exit103_crit_edge
  %72 = trunc i32 %11 to i16
  %conv19 = add i16 %72, -12
  %73 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i105 = getelementptr inbounds %struct.ufs_sb_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %s_bytesex.i105 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_bytesex.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i106 = icmp eq i32 %76, 0
  %77 = tail call i16 @llvm.bswap.i16(i16 %conv19) #9
  %retval.0.i107 = select i1 %cmp.i106, i16 %77, i16 %conv19
  %d_reclen21 = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 1
  %78 = ptrtoint ptr %d_reclen21 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %retval.0.i107, ptr %d_reclen21, align 4
  %79 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i109 = getelementptr inbounds %struct.ufs_sb_info, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %s_flags.i109 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_flags.i109, align 4
  %and.i110 = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %cmp.i111 = icmp eq i32 %and.i110, 0
  br i1 %cmp.i111, label %if.then.i116, label %if.else.i119

if.then.i116:                                     ; preds = %ufs_set_de_type.exit103
  call void @__sanitizer_cov_trace_pc() #11
  %s_bytesex.i.i112 = getelementptr inbounds %struct.ufs_sb_info, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %s_bytesex.i.i112 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_bytesex.i.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i.i113 = icmp eq i32 %84, 0
  %retval.0.i.i114 = select i1 %cmp.i.i113, i16 512, i16 2
  %d_u.i115 = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 2
  %85 = ptrtoint ptr %d_u.i115 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %retval.0.i.i114, ptr %d_u.i115, align 2
  br label %ufs_set_de_namlen.exit121

if.else.i119:                                     ; preds = %ufs_set_de_type.exit103
  call void @__sanitizer_cov_trace_pc() #11
  %d_u2.i117 = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 2
  %d_namlen.i118 = getelementptr inbounds %struct.anon.85, ptr %d_u2.i117, i32 0, i32 1
  %86 = ptrtoint ptr %d_namlen.i118 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 2, ptr %d_namlen.i118, align 1
  br label %ufs_set_de_namlen.exit121

ufs_set_de_namlen.exit121:                        ; preds = %if.else.i119, %if.then.i116
  %d_name22 = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 3
  %87 = call ptr @memcpy(ptr %d_name22, ptr @.str.19, i32 3)
  tail call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 55) #9
  %88 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %call.i.i, align 4
  %shr.i.i122 = lshr i32 %89, 30
  %90 = zext i32 %shr.i.i122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %shr.i.i122, label %ufs_set_de_namlen.exit121.kunmap.exit_crit_edge [
    i32 2, label %ufs_set_de_namlen.exit121.if.end.i125_crit_edge
    i32 3, label %is_highmem_idx.exit.i124
  ]

ufs_set_de_namlen.exit121.if.end.i125_crit_edge:  ; preds = %ufs_set_de_namlen.exit121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i125

ufs_set_de_namlen.exit121.kunmap.exit_crit_edge:  ; preds = %ufs_set_de_namlen.exit121
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i124:                         ; preds = %ufs_set_de_namlen.exit121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %91 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp2.i.not.i123 = icmp eq i32 %91, 2
  br i1 %cmp2.i.not.i123, label %is_highmem_idx.exit.i124.if.end.i125_crit_edge, label %is_highmem_idx.exit.i124.kunmap.exit_crit_edge

is_highmem_idx.exit.i124.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i124.if.end.i125_crit_edge:   ; preds = %is_highmem_idx.exit.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i125

if.end.i125:                                      ; preds = %is_highmem_idx.exit.i124.if.end.i125_crit_edge, %ufs_set_de_namlen.exit121.if.end.i125_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %call.i.i) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i125, %is_highmem_idx.exit.i124.kunmap.exit_crit_edge, %ufs_set_de_namlen.exit121.kunmap.exit_crit_edge
  %call25 = tail call fastcc i32 @ufs_commit_chunk(ptr noundef nonnull %call.i.i, i64 noundef 0, i32 noundef %11)
  br label %fail

fail:                                             ; preds = %kunmap.exit, %if.then4
  %err.0 = phi i32 [ %call2, %if.then4 ], [ %call25, %kunmap.exit ]
  %92 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  %and.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !111

if.then.i.i:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %94, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i126 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %95, %if.end.i.i ]
  %96 = inttoptr i32 %retval.0.i.i126 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %96, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %97 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i.i.i.i = icmp eq i32 %98, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !112

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %96, ptr noundef nonnull @.str.39) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %99, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ufs_make_empty, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !110

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %96, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %96) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %err.0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_empty_dir(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = add i32 %2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv.i)
  %cmp98.not = icmp ult i32 %conv.i, 4096
  br i1 %cmp98.not, label %entry.cleanup47_crit_edge, label %for.body.lr.ph

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47

for.body.lr.ph:                                   ; preds = %entry
  %shr.i = lshr i32 %conv.i, 12
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call1 = tail call fastcc ptr @ufs_get_page(ptr noundef %inode, i32 noundef %i.099)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call3 = tail call ptr @page_address(ptr noundef %call1) #9
  %5 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size.i, align 8
  %conv.i78 = trunc i64 %6 to i32
  %shl.neg.i = mul i32 %i.099, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i78
  %7 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #9
  %sub = add nsw i32 %7, -12
  %add.ptr = getelementptr i8, ptr %call3, i32 %sub
  %cmp5.not96 = icmp ugt ptr %call3, %add.ptr
  br i1 %cmp5.not96, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end41.while.body_crit_edge, %if.end.while.body_crit_edge
  %de.097 = phi ptr [ %add.ptr.i, %if.end41.while.body_crit_edge ], [ %call3, %if.end.while.body_crit_edge ]
  %d_reclen = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.097, i32 0, i32 1
  %8 = ptrtoint ptr %d_reclen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %d_reclen, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp6 = icmp eq i16 %9, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %11, ptr noundef nonnull @__func__.ufs_empty_dir, ptr noundef nonnull @.str.20, ptr noundef %add.ptr, ptr noundef %de.097) #9
  br label %not_empty

if.end10:                                         ; preds = %while.body
  %12 = ptrtoint ptr %de.097 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %de.097, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end10.if.end41_crit_edge, label %if.then11

if.end10.if.end41_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then11:                                        ; preds = %if.end10
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.ufs_sb_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i79 = icmp eq i32 %and.i, 0
  %d_u.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.097, i32 0, i32 2
  br i1 %cmp.i79, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %d_u.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %d_u.i, align 2
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  %22 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  %retval.0.i.i = select i1 %cmp.i.i, i16 %22, i16 %19
  br label %ufs_get_de_namlen.exit

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %d_namlen.i = getelementptr inbounds %struct.anon.85, ptr %d_u.i, i32 0, i32 1
  %23 = ptrtoint ptr %d_namlen.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %d_namlen.i, align 1
  %conv.i80 = zext i8 %24 to i16
  br label %ufs_get_de_namlen.exit

ufs_get_de_namlen.exit:                           ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %retval.0.i.i, %if.then.i ], [ %conv.i80, %if.else.i ]
  %d_name = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.097, i32 0, i32 3
  %25 = ptrtoint ptr %d_name to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %d_name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp14.not = icmp ne i8 %26, 46
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %retval.0.i)
  %cmp19 = icmp ugt i16 %retval.0.i, 2
  %or.cond = select i1 %cmp14.not, i1 true, i1 %cmp19
  br i1 %or.cond, label %ufs_get_de_namlen.exit.not_empty_crit_edge, label %if.end22

ufs_get_de_namlen.exit.not_empty_crit_edge:       ; preds = %ufs_get_de_namlen.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.end22:                                         ; preds = %ufs_get_de_namlen.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %retval.0.i)
  %cmp24.not = icmp eq i16 %retval.0.i, 2
  br i1 %cmp24.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end22
  %27 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino, align 8
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %15, i32 0, i32 2
  %29 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i82 = icmp eq i32 %30, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %retval.0.i83 = select i1 %cmp.i82, i32 %31, i32 %13
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %retval.0.i83)
  %cmp29.not = icmp eq i32 %28, %retval.0.i83
  br i1 %cmp29.not, label %if.then26.if.end41_crit_edge, label %if.then26.not_empty_crit_edge

if.then26.not_empty_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.then26.if.end41_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.else:                                          ; preds = %if.end22
  %arrayidx34 = getelementptr %struct.ufs_dir_entry, ptr %de.097, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %33)
  %cmp36.not = icmp eq i8 %33, 46
  br i1 %cmp36.not, label %if.else.if.end41_crit_edge, label %if.else.not_empty_crit_edge

if.else.not_empty_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end41:                                         ; preds = %if.else.if.end41_crit_edge, %if.then26.if.end41_crit_edge, %if.end10.if.end41_crit_edge
  %34 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i.i84 = getelementptr inbounds %struct.ufs_sb_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %s_bytesex.i.i84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_bytesex.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i85 = icmp eq i32 %37, 0
  %38 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  %retval.0.i.i86 = select i1 %cmp.i.i85, i16 %38, i16 %9
  %conv.i87 = zext i16 %retval.0.i.i86 to i32
  %add.ptr.i = getelementptr i8, ptr %de.097, i32 %conv.i87
  %cmp5.not = icmp ugt ptr %add.ptr.i, %add.ptr
  br i1 %cmp5.not, label %if.end41.while.end_crit_edge, label %if.end41.while.body_crit_edge

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end41.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call fastcc void @ufs_put_page(ptr noundef %call1)
  br label %for.inc

for.inc:                                          ; preds = %while.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc.cleanup47_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup47_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47

not_empty:                                        ; preds = %if.else.not_empty_crit_edge, %if.then26.not_empty_crit_edge, %ufs_get_de_namlen.exit.not_empty_crit_edge, %if.then8
  tail call fastcc void @ufs_put_page(ptr noundef %call1)
  br label %cleanup47

cleanup47:                                        ; preds = %not_empty, %for.inc.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.0 = phi i32 [ 0, %not_empty ], [ 1, %entry.cleanup47_crit_edge ], [ 1, %for.inc.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_readdir(ptr nocapture noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pos1 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos1, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %6 = trunc i64 %1 to i32
  %conv = and i32 %6, 4095
  %7 = lshr i64 %1, 12
  %conv2 = trunc i64 %7 to i32
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size.i, align 8
  %10 = trunc i64 %9 to i32
  %conv.i = add i32 %10, 4095
  %shr.i = lshr i32 %conv.i, 12
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %s_dirblksize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %14, i32 0, i32 63
  %15 = ptrtoint ptr %s_dirblksize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_dirblksize, align 4
  %neg = sub i32 0, %16
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %17 = ptrtoint ptr %f_version to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %f_version, align 8
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  %shr.i.i = lshr i64 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %18)
  %cmp.i = icmp ne i64 %shr.i.i, %18
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_readdir.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_readdir, %do.body13)) #9
          to label %if.then [label %do.body13], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_readdir.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 435, ptr noundef nonnull @.str.40) #9
  br label %do.body13

do.body13:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_readdir.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_readdir, %do.end30)) #9
          to label %if.then27 [label %do.end30], !srcloc !110

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_readdir.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.42) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body13
  %23 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size.i, align 8
  %sub31 = add i64 %24, -12
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %sub31)
  %cmp = icmp sle i64 %1, %sub31
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv2)
  %cmp35312 = icmp ugt i32 %shr.i, %conv2
  %or.cond = select i1 %cmp, i1 %cmp35312, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %do.end30.cleanup179_crit_edge

do.end30.cleanup179_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup179

for.body.lr.ph:                                   ; preds = %do.end30
  %and148 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %cmp149.not = icmp eq i32 %and148, 0
  br label %for.body

for.body:                                         ; preds = %for.inc177.for.body_crit_edge, %for.body.lr.ph
  %offset.0317 = phi i32 [ %conv, %for.body.lr.ph ], [ 0, %for.inc177.for.body_crit_edge ]
  %n.0314 = phi i32 [ %conv2, %for.body.lr.ph ], [ %inc, %for.inc177.for.body_crit_edge ]
  %need_revalidate.0.off0313 = phi i1 [ %cmp.i, %for.body.lr.ph ], [ false, %for.inc177.for.body_crit_edge ]
  %call37 = tail call fastcc ptr @ufs_get_page(ptr noundef %3, i32 noundef %n.0314)
  %cmp.i258 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %if.then39, label %if.end43

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.43, i32 noundef %26) #9
  %sub40 = sub nuw nsw i32 4096, %offset.0317
  %conv41 = zext i32 %sub40 to i64
  %27 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pos1, align 8
  %add = add i64 %28, %conv41
  store i64 %add, ptr %pos1, align 8
  br label %cleanup179

if.end43:                                         ; preds = %for.body
  %call44 = tail call ptr @page_address(ptr noundef %call37) #9
  br i1 %need_revalidate.0.off0313, label %if.then52, label %if.end43.if.end62_crit_edge, !prof !112

if.end43.if.end62_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0317)
  %tobool53.not = icmp eq i32 %offset.0317, 0
  br i1 %tobool53.not, label %if.then52.if.end59_crit_edge, label %if.then54

if.then52.if.end59_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then54:                                        ; preds = %if.then52
  %add.ptr.i = getelementptr i8, ptr %call44, i32 %offset.0317
  %and.i = and i32 %offset.0317, %neg
  %add.ptr1.i = getelementptr i8, ptr %call44, i32 %and.i
  %cmp7.i = icmp ult ptr %add.ptr1.i, %add.ptr.i
  br i1 %cmp7.i, label %while.body.lr.ph.i, label %if.then54.ufs_validate_entry.exit_crit_edge

if.then54.ufs_validate_entry.exit_crit_edge:      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufs_validate_entry.exit

while.body.lr.ph.i:                               ; preds = %if.then54
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_bytesex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i = icmp eq i32 %32, 0
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.08.i = phi ptr [ %add.ptr1.i, %while.body.lr.ph.i ], [ %add.ptr.i.i, %while.body.i.while.body.i_crit_edge ]
  %d_reclen.i.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %p.08.i, i32 0, i32 1
  %33 = ptrtoint ptr %d_reclen.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %d_reclen.i.i, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #9
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i16 %35, i16 %34
  %conv.i.i = zext i16 %retval.0.i.i.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %p.08.i, i32 %conv.i.i
  %cmp.i259 = icmp ult ptr %add.ptr.i.i, %add.ptr.i
  br i1 %cmp.i259, label %while.body.i.while.body.i_crit_edge, label %while.body.i.ufs_validate_entry.exit_crit_edge

while.body.i.ufs_validate_entry.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufs_validate_entry.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

ufs_validate_entry.exit:                          ; preds = %while.body.i.ufs_validate_entry.exit_crit_edge, %if.then54.ufs_validate_entry.exit_crit_edge
  %p.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.then54.ufs_validate_entry.exit_crit_edge ], [ %add.ptr.i.i, %while.body.i.ufs_validate_entry.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call44 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shl = shl i32 %n.0314, 12
  %add56 = add i32 %sub.ptr.sub.i, %shl
  %conv57 = zext i32 %add56 to i64
  %36 = ptrtoint ptr %pos1 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv57, ptr %pos1, align 8
  br label %if.end59

if.end59:                                         ; preds = %ufs_validate_entry.exit, %if.then52.if.end59_crit_edge
  %offset.1 = phi i32 [ %sub.ptr.sub.i, %ufs_validate_entry.exit ], [ 0, %if.then52.if.end59_crit_edge ]
  %call60 = tail call fastcc i64 @inode_query_iversion(ptr noundef %3)
  %37 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call60, ptr %f_version, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end59, %if.end43.if.end62_crit_edge
  %offset.2 = phi i32 [ %offset.1, %if.end59 ], [ %offset.0317, %if.end43.if.end62_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call44, i32 %offset.2
  %38 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_size.i, align 8
  %conv.i261 = trunc i64 %39 to i32
  %shl.neg.i = mul i32 %n.0314, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i261
  %40 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #9
  %add.ptr64 = getelementptr i8, ptr %call44, i32 -12
  %add.ptr65 = getelementptr i8, ptr %add.ptr64, i32 %40
  %cmp67.not310 = icmp ugt ptr %add.ptr, %add.ptr65
  br i1 %cmp67.not310, label %if.end62.for.inc177_crit_edge, label %if.end62.for.body69_crit_edge

if.end62.for.body69_crit_edge:                    ; preds = %if.end62
  br label %for.body69

if.end62.for.inc177_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc177

for.body69:                                       ; preds = %if.end165.for.body69_crit_edge, %if.end62.for.body69_crit_edge
  %de.0311 = phi ptr [ %add.ptr.i296, %if.end165.for.body69_crit_edge ], [ %add.ptr, %if.end62.for.body69_crit_edge ]
  %41 = ptrtoint ptr %de.0311 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %de.0311, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool70.not = icmp eq i32 %42, 0
  br i1 %tobool70.not, label %for.body69.if.end165_crit_edge, label %if.then71

for.body69.if.end165_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.then71:                                        ; preds = %for.body69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_readdir.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_readdir, %do.body90)) #9
          to label %if.then86 [label %do.body90], !srcloc !110

if.then86:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_readdir.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 469, ptr noundef nonnull @.str.40) #9
  br label %do.body90

do.body90:                                        ; preds = %if.then86, %if.then71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_readdir.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_readdir, %do.body110)) #9
          to label %if.then104 [label %do.body110], !srcloc !110

if.then104:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  %d_name = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.0311, i32 0, i32 3
  %43 = ptrtoint ptr %de.0311 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %de.0311, align 4
  %45 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i262 = icmp eq i32 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %retval.0.i263 = select i1 %cmp.i262, i32 %49, i32 %44
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_readdir.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.45, ptr noundef %d_name, i32 noundef %retval.0.i263) #9
  br label %do.body110

do.body110:                                       ; preds = %if.then104, %do.body90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_readdir.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_readdir, %do.body128)) #9
          to label %if.then124 [label %do.body128], !srcloc !110

if.then124:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_readdir.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 470, ptr noundef nonnull @.str.40) #9
  br label %do.body128

do.body128:                                       ; preds = %if.then124, %do.body110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_readdir.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_readdir, %do.end147)) #9
          to label %if.then142 [label %do.end147], !srcloc !110

if.then142:                                       ; preds = %do.body128
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.ufs_sb_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_flags.i, align 4
  %and.i265 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i265)
  %cmp.i266 = icmp eq i32 %and.i265, 0
  %d_u.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.0311, i32 0, i32 2
  br i1 %cmp.i266, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %d_u.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %d_u.i, align 2
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %51, i32 0, i32 2
  %56 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i = icmp eq i32 %57, 0
  %58 = tail call i16 @llvm.bswap.i16(i16 %55) #9
  %retval.0.i.i = select i1 %cmp.i.i, i16 %58, i16 %55
  br label %ufs_get_de_namlen.exit

if.else.i:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #11
  %d_namlen.i = getelementptr inbounds %struct.anon.85, ptr %d_u.i, i32 0, i32 1
  %59 = ptrtoint ptr %d_namlen.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %d_namlen.i, align 1
  %conv.i267 = zext i8 %60 to i16
  br label %ufs_get_de_namlen.exit

ufs_get_de_namlen.exit:                           ; preds = %if.else.i, %if.then.i
  %retval.0.i268 = phi i16 [ %retval.0.i.i, %if.then.i ], [ %conv.i267, %if.else.i ]
  %conv144 = zext i16 %retval.0.i268 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_readdir.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.47, i32 noundef %conv144) #9
  br label %do.end147

do.end147:                                        ; preds = %ufs_get_de_namlen.exit, %do.body128
  br i1 %cmp149.not, label %do.end147.if.end153_crit_edge, label %if.then151

do.end147.if.end153_crit_edge:                    ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then151:                                       ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  %d_u = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.0311, i32 0, i32 2
  %61 = ptrtoint ptr %d_u to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %d_u, align 2
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %do.end147.if.end153_crit_edge
  %d_type.0 = phi i8 [ %62, %if.then151 ], [ 0, %do.end147.if.end153_crit_edge ]
  %d_name154 = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.0311, i32 0, i32 3
  %63 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i270 = getelementptr inbounds %struct.ufs_sb_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %s_flags.i270 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_flags.i270, align 4
  %and.i271 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i271)
  %cmp.i272 = icmp eq i32 %and.i271, 0
  %d_u.i273 = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.0311, i32 0, i32 2
  br i1 %cmp.i272, label %if.then.i277, label %if.else.i280

if.then.i277:                                     ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %d_u.i273 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %d_u.i273, align 2
  %s_bytesex.i.i274 = getelementptr inbounds %struct.ufs_sb_info, ptr %64, i32 0, i32 2
  %69 = ptrtoint ptr %s_bytesex.i.i274 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_bytesex.i.i274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i275 = icmp eq i32 %70, 0
  %71 = tail call i16 @llvm.bswap.i16(i16 %68) #9
  %retval.0.i.i276 = select i1 %cmp.i.i275, i16 %71, i16 %68
  br label %ufs_get_de_namlen.exit282

if.else.i280:                                     ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  %d_namlen.i278 = getelementptr inbounds %struct.anon.85, ptr %d_u.i273, i32 0, i32 1
  %72 = ptrtoint ptr %d_namlen.i278 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %d_namlen.i278, align 1
  %conv.i279 = zext i8 %73 to i16
  br label %ufs_get_de_namlen.exit282

ufs_get_de_namlen.exit282:                        ; preds = %if.else.i280, %if.then.i277
  %retval.0.i281 = phi i16 [ %retval.0.i.i276, %if.then.i277 ], [ %conv.i279, %if.else.i280 ]
  %conv157 = zext i16 %retval.0.i281 to i32
  %74 = ptrtoint ptr %de.0311 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %de.0311, align 4
  %s_bytesex.i284 = getelementptr inbounds %struct.ufs_sb_info, ptr %64, i32 0, i32 2
  %76 = ptrtoint ptr %s_bytesex.i284 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_bytesex.i284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i285 = icmp eq i32 %77, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  %retval.0.i286 = select i1 %cmp.i285, i32 %78, i32 %75
  %conv160 = zext i32 %retval.0.i286 to i64
  %conv161 = zext i8 %d_type.0 to i32
  %79 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctx, align 8
  %81 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %pos1, align 8
  %call.i = tail call i32 %80(ptr noundef %ctx, ptr noundef %d_name154, i32 noundef %conv157, i64 noundef %82, i64 noundef %conv160, i32 noundef %conv161) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i287 = icmp eq i32 %call.i, 0
  br i1 %cmp.i287, label %ufs_get_de_namlen.exit282.if.end165_crit_edge, label %cleanup

ufs_get_de_namlen.exit282.if.end165_crit_edge:    ; preds = %ufs_get_de_namlen.exit282
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

cleanup:                                          ; preds = %ufs_get_de_namlen.exit282
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ufs_put_page(ptr noundef %call37)
  br label %cleanup179

if.end165:                                        ; preds = %ufs_get_de_namlen.exit282.if.end165_crit_edge, %for.body69.if.end165_crit_edge
  %d_reclen = getelementptr inbounds %struct.ufs_dir_entry, ptr %de.0311, i32 0, i32 1
  %83 = ptrtoint ptr %d_reclen to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %d_reclen, align 4
  %85 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i289 = getelementptr inbounds %struct.ufs_sb_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %s_bytesex.i289 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_bytesex.i289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i290 = icmp eq i32 %88, 0
  %89 = tail call i16 @llvm.bswap.i16(i16 %84) #9
  %retval.0.i291 = select i1 %cmp.i290, i16 %89, i16 %84
  %conv167 = zext i16 %retval.0.i291 to i64
  %90 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %pos1, align 8
  %add169 = add i64 %91, %conv167
  store i64 %add169, ptr %pos1, align 8
  %92 = ptrtoint ptr %d_reclen to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %d_reclen, align 4
  %94 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i292 = getelementptr inbounds %struct.ufs_sb_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %s_bytesex.i.i292 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_bytesex.i.i292, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.i.i293 = icmp eq i32 %97, 0
  %98 = tail call i16 @llvm.bswap.i16(i16 %93) #9
  %retval.0.i.i294 = select i1 %cmp.i.i293, i16 %98, i16 %93
  %conv.i295 = zext i16 %retval.0.i.i294 to i32
  %add.ptr.i296 = getelementptr i8, ptr %de.0311, i32 %conv.i295
  %cmp67.not = icmp ugt ptr %add.ptr.i296, %add.ptr65
  br i1 %cmp67.not, label %if.end165.for.inc177_crit_edge, label %if.end165.for.body69_crit_edge

if.end165.for.body69_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body69

if.end165.for.inc177_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc177

for.inc177:                                       ; preds = %if.end165.for.inc177_crit_edge, %if.end62.for.inc177_crit_edge
  tail call fastcc void @ufs_put_page(ptr noundef %call37)
  %inc = add nuw nsw i32 %n.0314, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc177.cleanup179_crit_edge, label %for.inc177.for.body_crit_edge

for.inc177.for.body_crit_edge:                    ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc177.cleanup179_crit_edge:                  ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup179

cleanup179:                                       ; preds = %for.inc177.cleanup179_crit_edge, %cleanup, %if.then39, %do.end30.cleanup179_crit_edge
  %retval.5 = phi i32 [ 0, %do.end30.cleanup179_crit_edge ], [ 0, %cleanup ], [ -5, %if.then39 ], [ 0, %for.inc177.cleanup179_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_write_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ufs_check_page(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @page_address(ptr noundef %page) #9
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %s_dirblksize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 63
  %10 = ptrtoint ptr %s_dirblksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dirblksize, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size, align 8
  %shr = ashr i64 %13, 12
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %conv = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp = icmp eq i64 %shr, %conv
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %sub = add i32 %11, -1
  %16 = trunc i64 %13 to i32
  %conv4 = and i32 %16, 4095
  %and5 = and i32 %conv4, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %Ebadsize

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %tobool7.not = icmp eq i32 %conv4, 0
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %limit.0 = phi i32 [ %conv4, %if.end.if.end10_crit_edge ], [ 4096, %entry.if.end10_crit_edge ]
  %sub11 = add nsw i32 %limit.0, -12
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  %s_flags.i = getelementptr inbounds %struct.ufs_sb_info, ptr %7, i32 0, i32 3
  %neg = sub i32 0, %11
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 36
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %if.end38.for.cond_crit_edge, %if.end10
  %offs.0 = phi i32 [ 0, %if.end10 ], [ %add33, %if.end38.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0, i32 %sub11)
  %cmp12.not = icmp ugt i32 %offs.0, %sub11
  br i1 %cmp12.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %call, i32 %offs.0
  %d_reclen = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 1
  %19 = ptrtoint ptr %d_reclen to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %d_reclen, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %retval.0.i = select i1 %cmp.i, i16 %21, i16 %20
  %conv15 = zext i16 %retval.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %retval.0.i)
  %cmp16 = icmp ult i16 %retval.0.i, 12
  br i1 %cmp16, label %for.body.bad_entry_crit_edge, label %if.end19

for.body.bad_entry_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_entry

if.end19:                                         ; preds = %for.body
  %and20 = and i32 %conv15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.bad_entry_crit_edge

if.end19.bad_entry_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_entry

if.end23:                                         ; preds = %if.end19
  %22 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i118 = icmp eq i32 %and.i, 0
  %d_u.i = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 2
  br i1 %cmp.i118, label %if.then.i120, label %if.else.i

if.then.i120:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %d_u.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %d_u.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #9
  %retval.0.i.i119 = select i1 %cmp.i, i16 %26, i16 %25
  br label %ufs_get_de_namlen.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %d_namlen.i = getelementptr inbounds %struct.anon.85, ptr %d_u.i, i32 0, i32 1
  %27 = ptrtoint ptr %d_namlen.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %d_namlen.i, align 1
  %conv.i = zext i8 %28 to i16
  br label %ufs_get_de_namlen.exit

ufs_get_de_namlen.exit:                           ; preds = %if.else.i, %if.then.i120
  %retval.0.i121 = phi i16 [ %retval.0.i.i119, %if.then.i120 ], [ %conv.i, %if.else.i ]
  %conv25 = zext i16 %retval.0.i121 to i32
  %add27 = add nuw nsw i32 %conv25, 12
  %and28 = and i32 %add27, 131068
  call void @__sanitizer_cov_trace_cmp4(i32 %and28, i32 %conv15)
  %cmp29 = icmp ugt i32 %and28, %conv15
  br i1 %cmp29, label %ufs_get_de_namlen.exit.bad_entry_crit_edge, label %if.end32

ufs_get_de_namlen.exit.bad_entry_crit_edge:       ; preds = %ufs_get_de_namlen.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_entry

if.end32:                                         ; preds = %ufs_get_de_namlen.exit
  %add33 = add i32 %offs.0, %conv15
  %sub34 = add i32 %add33, -1
  %xor = xor i32 %sub34, %offs.0
  %and35 = and i32 %xor, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.bad_entry_crit_edge

if.end32.bad_entry_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_entry

if.end38:                                         ; preds = %if.end32
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %retval.0.i125 = select i1 %cmp.i, i32 %31, i32 %30
  %32 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_ipg, align 4
  %34 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_ncg, align 8
  %mul = mul i32 %35, %33
  %cmp44 = icmp ugt i32 %retval.0.i125, %mul
  br i1 %cmp44, label %if.end38.bad_entry_crit_edge, label %if.end38.for.cond_crit_edge

if.end38.for.cond_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end38.bad_entry_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_entry

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0, i32 %limit.0)
  %cmp49.not = icmp eq i32 %offs.0, %limit.0
  br i1 %cmp49.not, label %for.end.out_crit_edge, label %Eend

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.end.out_crit_edge, %if.end.out_crit_edge
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page, align 4
  %38 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %out.if.then.i_crit_edge

out.if.then.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %out
  %39 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !111

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %out.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.36) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !134
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %42 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.not.i = icmp eq i32 %43, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !112

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !135
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 10, ptr noundef %page) #9
  br label %cleanup

Ebadsize:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %44 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %5, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %45) #9
  br label %fail

bad_entry:                                        ; preds = %if.end38.bad_entry_crit_edge, %if.end32.bad_entry_crit_edge, %ufs_get_de_namlen.exit.bad_entry_crit_edge, %if.end19.bad_entry_crit_edge, %for.body.bad_entry_crit_edge
  %error.0 = phi ptr [ @.str.29, %for.body.bad_entry_crit_edge ], [ @.str.30, %if.end19.bad_entry_crit_edge ], [ @.str.31, %ufs_get_de_namlen.exit.bad_entry_crit_edge ], [ @.str.32, %if.end32.bad_entry_crit_edge ], [ @.str.33, %if.end38.bad_entry_crit_edge ]
  %i_ino53 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %46 = ptrtoint ptr %i_ino53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_ino53, align 8
  %shl = shl i32 %15, 12
  %add55 = add i32 %offs.0, %shl
  %48 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_flags.i, align 4
  %and.i130 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %cmp.i131 = icmp eq i32 %and.i130, 0
  %d_u.i132 = getelementptr inbounds %struct.ufs_dir_entry, ptr %add.ptr, i32 0, i32 2
  br i1 %cmp.i131, label %if.then.i136, label %if.else.i139

if.then.i136:                                     ; preds = %bad_entry
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %d_u.i132 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %d_u.i132, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #9
  %retval.0.i.i135 = select i1 %cmp.i, i16 %52, i16 %51
  br label %ufs_get_de_namlen.exit141

if.else.i139:                                     ; preds = %bad_entry
  call void @__sanitizer_cov_trace_pc() #11
  %d_namlen.i137 = getelementptr inbounds %struct.anon.85, ptr %d_u.i132, i32 0, i32 1
  %53 = ptrtoint ptr %d_namlen.i137 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %d_namlen.i137, align 1
  %conv.i138 = zext i8 %54 to i16
  br label %ufs_get_de_namlen.exit141

ufs_get_de_namlen.exit141:                        ; preds = %if.else.i139, %if.then.i136
  %retval.0.i140 = phi i16 [ %retval.0.i.i135, %if.then.i136 ], [ %conv.i138, %if.else.i139 ]
  %conv57 = zext i16 %retval.0.i140 to i32
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %5, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34, i32 noundef %47, ptr noundef nonnull %error.0, i32 noundef %add55, i32 noundef %conv15, i32 noundef %conv57) #9
  br label %fail

Eend:                                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino59 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %55 = ptrtoint ptr %i_ino59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_ino59, align 8
  %shl61 = shl i32 %15, 12
  %add62 = add i32 %offs.0, %shl61
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %5, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35, i32 noundef %56, i32 noundef %add62) #9
  br label %fail

fail:                                             ; preds = %Eend, %ufs_get_de_namlen.exit141, %Ebadsize
  %57 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i112 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i112, label %do.body7.i115, label %if.then.i113, !prof !111

if.then.i113:                                     ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.37) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !136
  unreachable

do.body7.i115:                                    ; preds = %fail
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %57, align 4
  %and.i31.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i114 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i114, label %if.end.i.i, label %if.then.i.i, !prof !111

if.then.i.i:                                      ; preds = %do.body7.i115
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %61, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i115
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %62, %if.end.i.i ]
  %63 = inttoptr i32 %retval.0.i.i to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp.i.not.i116 = icmp eq i32 %65, -1
  %66 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %57, align 4
  %and.i32.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i116, label %if.then17.i, label %do.end24.i, !prof !112

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !111

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %67, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %68, %if.end.i36.i ]
  %69 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %69, ptr noundef nonnull @.str.26) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !137
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !111

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %67, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %70, %if.end.i43.i ]
  %71 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %71) #9
  br label %cleanup

cleanup:                                          ; preds = %SetPageError.exit, %SetPageChecked.exit
  %retval.0 = phi i1 [ false, %SetPageError.exit ], [ true, %SetPageChecked.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @inode_query_iversion(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_version.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i, i32 noundef 8) #9
  %call.i.i15 = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i) #9
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %cur.0 = phi i64 [ %call.i.i15, %entry ], [ %call.i, %if.end.for.cond_crit_edge ]
  %and = and i64 %cur.0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !138
  br label %for.end

if.end:                                           ; preds = %for.cond
  %or = or i64 %cur.0, 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #9
  %call.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i, i64 noundef %cur.0, i64 noundef %or) #9
  %cmp = icmp eq i64 %call.i, %cur.0
  br i1 %cmp, label %if.end.for.end_crit_edge, label %if.end.for.cond_crit_edge, !prof !111

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %do.end
  %shr = lshr i64 %cur.0, 1
  ret i64 %shr
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98}
!llvm.named.register.sp = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ufs/dir.c", i32 263, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ufs_find_entry.__UNIQUE_ID_ddebug292, !1, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ufs_find_entry.__UNIQUE_ID_ddebug293, !1, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ufs/dir.c", i32 322, i32 2}
!12 = !{ptr @ufs_add_link.__UNIQUE_ID_ddebug294, !11, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ufs_add_link.__UNIQUE_ID_ddebug295, !11, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ufs/dir.c", i32 352, i32 8}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ufs/dir.c", i32 507, i32 2}
!20 = !{ptr @ufs_delete_entry.__UNIQUE_ID_ddebug302, !19, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!21 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ufs_delete_entry.__UNIQUE_ID_ddebug303, !19, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!23 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ufs_delete_entry.__UNIQUE_ID_ddebug304, !25, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!25 = !{!"../fs/ufs/dir.c", i32 509, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ufs_delete_entry.__UNIQUE_ID_ddebug305, !25, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!28 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ufs_delete_entry.__UNIQUE_ID_ddebug306, !30, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!30 = !{!"../fs/ufs/dir.c", i32 539, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ufs_delete_entry.__UNIQUE_ID_ddebug307, !30, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!33 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ufs/dir.c", i32 572, i32 22}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ufs/dir.c", i32 579, i32 22}
!38 = !{ptr @__func__.ufs_empty_dir, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ufs/dir.c", i32 611, i32 28}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ufs/dir.c", i32 612, i32 6}
!42 = !{ptr @ufs_dir_operations, !43, !"ufs_dir_operations", i1 false, i1 false}
!43 = !{!"../fs/ufs/dir.c", i32 641, i32 30}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/page-flags.h", i32 430, i32 1}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ufs/dir.c", i32 153, i32 16}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ufs/dir.c", i32 154, i32 5}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ufs/dir.c", i32 159, i32 10}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ufs/dir.c", i32 162, i32 10}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ufs/dir.c", i32 165, i32 10}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ufs/dir.c", i32 168, i32 10}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ufs/dir.c", i32 171, i32 10}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ufs/dir.c", i32 173, i32 35}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ufs/dir.c", i32 181, i32 6}
!75 = !{ptr @.str.36, !54, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/mm.h", i32 717, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ufs/dir.c", i32 435, i32 2}
!83 = !{ptr @ufs_readdir.__UNIQUE_ID_ddebug296, !82, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!84 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ufs_readdir.__UNIQUE_ID_ddebug297, !82, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!86 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ufs/dir.c", i32 448, i32 7}
!89 = !{ptr @ufs_readdir.__UNIQUE_ID_ddebug298, !90, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!90 = !{!"../fs/ufs/dir.c", i32 468, i32 5}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ufs_readdir.__UNIQUE_ID_ddebug299, !90, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!93 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ufs_readdir.__UNIQUE_ID_ddebug300, !95, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!95 = !{!"../fs/ufs/dir.c", i32 470, i32 5}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ufs_readdir.__UNIQUE_ID_ddebug301, !95, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!98 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!99 = !{!"sp"}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i64 2149064444, i64 2149064449, i64 2149064462, i64 2149064506, i64 2149064540, i64 2149064561}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 2153883802, i64 2153884285, i64 2153883839, i64 2153883895, i64 2153883929, i64 2153883953, i64 2153883994, i64 2153884015, i64 2153884043, i64 2153884077}
!114 = !{i64 2148302555}
!115 = !{i64 2148217288, i64 2148217320, i64 2148217349, i64 2148217383, i64 2148217414, i64 2148217437}
!116 = !{i64 2148302784}
!117 = !{i64 2150575098, i64 2150575589, i64 2150575135, i64 2150575191, i64 2150575225, i64 2150575249, i64 2150575290, i64 2150575311, i64 2150575339, i64 2150575373}
!118 = !{i64 2148222961, i64 2148222993, i64 2148223022, i64 2148223056, i64 2148223087, i64 2148223110}
!119 = !{i64 2148312042}
!120 = !{i64 2154951404, i64 2154951880, i64 2154951441, i64 2154951497, i64 2154951531, i64 2154951555, i64 2154951596, i64 2154951617, i64 2154951645, i64 2154951679}
!121 = !{i64 2154812746}
!122 = !{i64 2152511115}
!123 = !{i64 2150011071}
!124 = !{i64 2150016005}
!125 = !{i64 2150037723}
!126 = !{i64 2150042617}
!127 = !{i64 2150119144}
!128 = !{i64 2150119469}
!129 = !{i64 2152522977}
!130 = !{i64 2150823437, i64 2150823928, i64 2150823474, i64 2150823530, i64 2150823564, i64 2150823588, i64 2150823629, i64 2150823650, i64 2150823678, i64 2150823712}
!131 = !{i64 2150628130, i64 2150628621, i64 2150628167, i64 2150628223, i64 2150628257, i64 2150628281, i64 2150628322, i64 2150628343, i64 2150628371, i64 2150628405}
!132 = !{i64 2154963893, i64 2154964370, i64 2154963930, i64 2154963986, i64 2154964020, i64 2154964044, i64 2154964085, i64 2154964106, i64 2154964134, i64 2154964168}
!133 = !{i64 2154990022, i64 2154990499, i64 2154990059, i64 2154990115, i64 2154990149, i64 2154990173, i64 2154990214, i64 2154990235, i64 2154990263, i64 2154990297}
!134 = !{i64 2150831480, i64 2150831653, i64 2150831668, i64 2150831720, i64 2150831779, i64 2150831803, i64 2150831844, i64 2150831865, i64 2150831893, i64 2150831925}
!135 = !{i64 2150832251, i64 2150832424, i64 2150832439, i64 2150832491, i64 2150832550, i64 2150832574, i64 2150832615, i64 2150832636, i64 2150832664, i64 2150832696}
!136 = !{i64 2150636688, i64 2150636861, i64 2150636876, i64 2150636928, i64 2150636987, i64 2150637011, i64 2150637052, i64 2150637073, i64 2150637101, i64 2150637133}
!137 = !{i64 2150637563, i64 2150637736, i64 2150637751, i64 2150637803, i64 2150637862, i64 2150637886, i64 2150637927, i64 2150637948, i64 2150637976, i64 2150638008}
!138 = !{i64 2154813999}
