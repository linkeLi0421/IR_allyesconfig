; ModuleID = '/llk/IR_all_yes/fs/ufs/inode.c_pt.bc'
source_filename = "../fs/ufs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
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
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufs_sb_private_info = type { %struct.ufs_buffer_head, %struct.ufs_csum_core, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ufs_buffer_head = type { i64, i64, [8 x ptr] }
%struct.ufs_csum_core = type { i64, i64, i64, i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ufs_sb_info = type { ptr, ptr, i32, i32, ptr, [8 x ptr], [8 x i32], i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ufs_inode = type { i16, i16, %union.anon.86, i64, %struct.ufs_timeval, %struct.ufs_timeval, %struct.ufs_timeval, %union.anon.88, i32, i32, i32, %union.anon.90 }
%union.anon.86 = type { i32 }
%struct.ufs_timeval = type { i32, i32 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { [12 x i32], [3 x i32] }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32, i32 }
%struct.anon.87 = type { i16, i16 }
%struct.ufs2_inode = type { i16, i16, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i64], %union.anon.84, [3 x i64] }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { [12 x i64], [3 x i64] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.Indirect = type { ptr, %union.anon.94, ptr }
%union.anon.94 = type { i64 }

@ufs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ufs_writepage, ptr @ufs_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @ufs_write_begin, ptr @ufs_write_end, ptr @ufs_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufs_iget.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ufs\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ufs_iget\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ufs/inode.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UFSD (%s, %d): %s:\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs: UFSD (%s, %d): %s:\00", [40 x i8] zeroinitializer }, align 32
@ufs_iget.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ENTER, ino %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufs: ENTER, ino %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufs_read_inode\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad inode number (%lu)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to read inode %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@ufs_iget.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_iget.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 -80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EXIT\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufs: EXIT\0A\00", [21 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ufs_file_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ufs_getfrag_block.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.3, i8 0, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_getfrag_block\00", [46 x i8] zeroinitializer }, align 32
@ufs_getfrag_block.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ENTER, ino %lu, fragment %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ufs: ENTER, ino %lu, fragment %llu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufs_get_block\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"block > big\00", [20 x i8] zeroinitializer }, align 32
@ufs_block_to_path.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.3, i8 0, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_block_to_path\00", [46 x i8] zeroinitializer }, align 32
@ufs_block_to_path.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ptrs=uspi->s_apb = %d,double_blocks=%ld \0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ufs: ptrs=uspi->s_apb = %d,double_blocks=%ld \0A\00", [49 x i8] zeroinitializer }, align 32
@ufs_frag_map.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.3, i8 0, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufs_frag_map\00", [19 x i8] zeroinitializer }, align 32
@ufs_frag_map.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c": uspi->s_fpbshift = %d ,uspi->s_apbmask = %x, mask=%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ufs: : uspi->s_fpbshift = %d ,uspi->s_apbmask = %x, mask=%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@ufs_inode_getblock.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.3, i8 0, i8 96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufs_inode_getblock\00", [45 x i8] zeroinitializer }, align 32
@ufs_inode_getblock.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.10, i8 0, i8 96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs2_read_inode.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.3, i8 0, i8 -103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs2_read_inode\00", [16 x i8] zeroinitializer }, align 32
@ufs2_read_inode.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Reading ufs2 inode, ino %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ufs: Reading ufs2 inode, ino %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@ufs_file_operations = external dso_local constant %struct.file_operations, align 4
@ufs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ufs_dir_operations = external dso_local constant %struct.file_operations, align 4
@simple_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ufs_update_inode.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.3, i8 0, i8 -55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufs_update_inode\00", [47 x i8] zeroinitializer }, align 32
@ufs_update_inode.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.5, i8 0, i8 -55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_update_inode.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.3, i8 0, i8 -48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_update_inode.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.10, i8 0, i8 -48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs2_update_inode.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.3, i8 0, i8 -66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs2_update_inode\00", [46 x i8] zeroinitializer }, align 32
@ufs2_update_inode.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENTER\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufs: ENTER\0A\00", [20 x i8] zeroinitializer }, align 32
@ufs2_update_inode.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.3, i8 0, i8 -58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs2_update_inode.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.10, i8 0, i8 -58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_trunc_direct.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.3, i8 0, i8 -32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufs_trunc_direct\00", [47 x i8] zeroinitializer }, align 32
@ufs_trunc_direct.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ENTER: ino %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufs: ENTER: ino %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@ufs_trunc_direct.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.3, i8 0, i8 -26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_trunc_direct.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.34, i8 0, i8 -26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"ino %lu, frag1 %llu, frag2 %llu, block1 %llu, block2 %llu, frag3 %llu, frag4 %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"ufs: ino %lu, frag1 %llu, frag2 %llu, block1 %llu, block2 %llu, frag3 %llu, frag4 %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs_truncate_direct\00", [44 x i8] zeroinitializer }, align 32
@ufs_trunc_direct.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.3, i8 0, i8 -13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_trunc_direct.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.38, i8 0, i8 -13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXIT: ino %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs: EXIT: ino %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@ufs_truncate.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.3, i8 1, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufs_truncate\00", [19 x i8] zeroinitializer }, align 32
@ufs_truncate.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 1, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ENTER: ino %lu, i_size: %llu, old_i_size: %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ufs: ENTER: ino %lu, i_size: %llu, old_i_size: %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@ufs_truncate.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.3, i8 1, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_truncate.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 1, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EXIT: err %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufs: EXIT: err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"ufs_aops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 528, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 661, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 664, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 664, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 679, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 706, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 424, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 426, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 426, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 57, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 136, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 385, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 612, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 804, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 763, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 899, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 917, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 932, i32 38 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 965, i32 17 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 974, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1188, i32 2 }
@___asan_gen_.194 = private constant [18 x i8] c"../fs/ufs/inode.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1211, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 452, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 366, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 717, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @ufs_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_prepare_chunk(ptr noundef %page, i64 noundef %pos, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__block_write_begin(ptr noundef %page, i64 noundef %pos, i32 noundef %len, ptr noundef nonnull @ufs_getfrag_block) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_getfrag_block(ptr noundef %inode, i64 noundef %fragment, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %err = alloca i32, align 4
  %new = alloca i32, align 4
  %offsets = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new) #7
  %7 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %new, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #7
  %s_fpbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 19
  %8 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  %9 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_fpbshift, align 4
  %sh_prom = zext i32 %10 to i64
  %shr = lshr i64 %fragment, %sh_prom
  %call1 = call fastcc i32 @ufs_block_to_path(ptr noundef %inode, i64 noundef %shr, ptr noundef nonnull %offsets), !range !119
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 46
  %11 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_fpbmask, align 8
  %13 = trunc i64 %fragment to i32
  %conv2 = and i32 %12, %13
  %call4 = call fastcc i64 @ufs_frag_map(ptr noundef %inode, ptr noundef nonnull %offsets, i32 noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4)
  %tobool109.not = icmp eq i64 %call4, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  br i1 %tobool109.not, label %if.end.if.end22_crit_edge, label %if.then6

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then6:                                         ; preds = %if.end
  %14 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_fpbshift, align 4
  %shl = shl i32 12, %15
  %conv8 = sext i32 %shl to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv8, i64 %fragment)
  %cmp.not = icmp ugt i64 %conv8, %fragment
  br i1 %cmp.not, label %if.end11, label %if.then6.if.then110_crit_edge

if.then6.if.then110_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

if.end11:                                         ; preds = %if.then6
  %lock.i = getelementptr i8, ptr %inode, i32 -140
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %i_lastfrag = getelementptr i8, ptr %inode, i32 -184
  %16 = ptrtoint ptr %i_lastfrag to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_lastfrag, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %fragment)
  %cmp14 = icmp ugt i64 %17, %fragment
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br i1 %cmp14, label %if.end11.if.then110_crit_edge, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end11.if.then110_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

if.end22:                                         ; preds = %if.end11.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %add.ptr.i183 = getelementptr i8, ptr %inode, i32 -328
  %truncate_mutex = getelementptr i8, ptr %inode, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %truncate_mutex, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_getfrag_block.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_getfrag_block, %do.body31)) #7
          to label %if.then29 [label %do.body31], !srcloc !120

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_getfrag_block.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 424, ptr noundef nonnull @.str.12) #7
  br label %do.body31

do.body31:                                        ; preds = %if.then29, %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_getfrag_block.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_getfrag_block, %do.end48)) #7
          to label %if.then45 [label %do.end48], !srcloc !120

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_getfrag_block.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.14, i32 noundef %19, i64 noundef %fragment) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %do.body31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool49.not = icmp eq i32 %call1, 0
  br i1 %tobool49.not, label %if.then58, label %if.end59, !prof !121

if.then58:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #7
  %20 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -5, ptr %err, align 4
  br label %out

if.end59:                                         ; preds = %do.end48
  %i_lastfrag61 = getelementptr i8, ptr %inode, i32 -184
  %21 = ptrtoint ptr %i_lastfrag61 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_lastfrag61, align 8
  %23 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_fpbshift, align 4
  %shl63 = shl i32 12, %24
  %conv64 = sext i32 %shl63 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv64)
  %cmp65 = icmp ult i64 %22, %conv64
  br i1 %cmp65, label %if.then67, label %if.end59.if.end83_crit_edge

if.end59.if.end83_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then67:                                        ; preds = %if.end59
  %conv70 = trunc i64 %22 to i32
  %25 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_fpbmask, align 8
  %and72 = and i32 %26, %conv70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %conv74 = and i64 %22, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv74, i64 %fragment)
  %cmp75.not = icmp ugt i64 %conv74, %fragment
  %or.cond = select i1 %tobool73.not, i1 true, i1 %cmp75.not
  br i1 %or.cond, label %if.then67.if.end83_crit_edge, label %if.then77

if.then67.if.end83_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then77:                                        ; preds = %if.then67
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %27 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_page, align 8
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i.i, align 16
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %i_lastfrag61 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_lastfrag61, align 8
  %conv.i = trunc i64 %36 to i32
  %s_fpbshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %34, i32 0, i32 19
  %37 = ptrtoint ptr %s_fpbshift.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_fpbshift.i, align 4
  %s_fpbmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %34, i32 0, i32 46
  %39 = ptrtoint ptr %s_fpbmask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_fpbmask.i, align 8
  %or.i = or i32 %40, %conv.i
  %conv2.i = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv2.i, i64 %fragment)
  %cmp.i = icmp ugt i64 %conv2.i, %fragment
  br i1 %cmp.i, label %if.then.i186, label %if.else.i

if.then.i186:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %41 = and i32 %40, %13
  %conv6.i = add i32 %41, 1
  br label %if.end.i

if.else.i:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %s_fpb.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %34, i32 0, i32 13
  %42 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_fpb.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i186
  %new_size.0.i = phi i32 [ %conv6.i, %if.then.i186 ], [ %43, %if.else.i ]
  %shr.i = lshr i32 %conv.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %shr.i)
  %cmp.i.i = icmp ugt i32 %shr.i, 14
  br i1 %cmp.i.i, label %do.body2.i.i, label %ufs_get_direct_data_ptr.exit.i, !prof !121

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 555, 0\0A.popsection", ""() #7, !srcloc !122
  unreachable

ufs_get_direct_data_ptr.exit.i:                   ; preds = %if.end.i
  %fs_magic.i.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %34, i32 0, i32 62
  %44 = ptrtoint ptr %fs_magic.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fs_magic.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %45)
  %cmp6.i.i = icmp eq i32 %45, 424935705
  %arrayidx.i.i = getelementptr [15 x i64], ptr %add.ptr.i183, i32 0, i32 %shr.i
  %arrayidx8.i.i = getelementptr [15 x i32], ptr %add.ptr.i183, i32 0, i32 %shr.i
  %cond.i.i = select i1 %cmp6.i.i, ptr %arrayidx.i.i, ptr %arrayidx8.i.i
  br i1 %cmp6.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %ufs_get_direct_data_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %cond.i.i, align 8
  %s_bytesex.i.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %32, i32 0, i32 2
  %48 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_bytesex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i.i = icmp eq i32 %49, 0
  %50 = tail call i64 @llvm.bswap.i64(i64 %47) #7
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i64 %50, i64 %47
  br label %ufs_extend_tail.exit

cond.false.i.i:                                   ; preds = %ufs_get_direct_data_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cond.i.i, align 4
  %s_bytesex.i7.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %32, i32 0, i32 2
  %53 = ptrtoint ptr %s_bytesex.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_bytesex.i7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i8.i.i = icmp eq i32 %54, 0
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %retval.0.i9.i.i = select i1 %cmp.i8.i.i, i32 %55, i32 %52
  %conv.i.i = zext i32 %retval.0.i9.i.i to i64
  br label %ufs_extend_tail.exit

ufs_extend_tail.exit:                             ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i31.i = phi i64 [ %retval.0.i.i.i, %cond.true.i.i ], [ %conv.i.i, %cond.false.i.i ]
  %conv8.i = and i64 %36, 4294967295
  %and11.i = and i32 %40, %conv.i
  %sub.i = sub i32 %new_size.0.i, %and11.i
  %call12.i = call i64 @ufs_new_fragments(ptr noundef %inode, ptr noundef %cond.i.i, i64 noundef %conv8.i, i64 noundef %cond.i31.i, i32 noundef %sub.i, ptr noundef nonnull %err, ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call12.i)
  %cmp13.i.not = icmp eq i64 %call12.i, 0
  br i1 %cmp13.i.not, label %ufs_extend_tail.exit.out_crit_edge, label %ufs_extend_tail.exit.if.end83_crit_edge

ufs_extend_tail.exit.if.end83_crit_edge:          ; preds = %ufs_extend_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

ufs_extend_tail.exit.out_crit_edge:               ; preds = %ufs_extend_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end83:                                         ; preds = %ufs_extend_tail.exit.if.end83_crit_edge, %if.then67.if.end83_crit_edge, %if.end59.if.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp84 = icmp eq i32 %call1, 1
  %56 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offsets, align 4
  br i1 %cmp84, label %if.then86, label %if.else

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %b_page87 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %58 = ptrtoint ptr %b_page87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_page87, align 8
  %call88 = call fastcc i64 @ufs_inode_getfrag(ptr noundef %inode, i32 noundef %57, i64 noundef %fragment, ptr noundef nonnull %err, ptr noundef nonnull %new, ptr noundef %59)
  br label %out

if.else:                                          ; preds = %if.end83
  %call90 = call fastcc i64 @ufs_inode_getfrag(ptr noundef %inode, i32 noundef %57, i64 noundef %fragment, ptr noundef nonnull %err, ptr noundef null, ptr noundef null)
  %sub = add nsw i32 %call1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp91200 = icmp ugt i32 %call1, 2
  br i1 %cmp91200, label %for.body, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.else
  %arrayidx93 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx93, align 4
  %call94 = call fastcc i64 @ufs_inode_getblock(ptr noundef %inode, i64 noundef %call90, i32 noundef %61, i64 noundef %fragment, ptr noundef nonnull %err, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %exitcond.not = icmp eq i32 %sub, 2
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx93.1 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx93.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx93.1, align 4
  %call94.1 = call fastcc i64 @ufs_inode_getblock(ptr noundef %inode, i64 noundef %call94, i32 noundef %63, i64 noundef %fragment, ptr noundef nonnull %err, ptr noundef null, ptr noundef null)
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %phys64.0.lcssa = phi i64 [ %call90, %if.else.for.end_crit_edge ], [ %call94, %for.body.for.end_crit_edge ], [ %call94.1, %for.body.1 ]
  %arrayidx96 = getelementptr [4 x i32], ptr %offsets, i32 0, i32 %sub
  %64 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx96, align 4
  %b_page97 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %66 = ptrtoint ptr %b_page97 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_page97, align 8
  %call98 = call fastcc i64 @ufs_inode_getblock(ptr noundef %inode, i64 noundef %phys64.0.lcssa, i32 noundef %65, i64 noundef %fragment, ptr noundef nonnull %err, ptr noundef nonnull %new, ptr noundef %67)
  br label %out

out:                                              ; preds = %for.end, %if.then86, %ufs_extend_tail.exit.out_crit_edge, %if.then58
  %phys64.1 = phi i64 [ %call4, %if.then58 ], [ %call88, %if.then86 ], [ %call98, %for.end ], [ %call4, %ufs_extend_tail.exit.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %phys64.1)
  %tobool100.not = icmp eq i64 %phys64.1, 0
  br i1 %tobool100.not, label %out.if.end106_crit_edge, label %if.then101

out.if.end106_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then101:                                       ; preds = %out
  %conv102 = zext i32 %conv2 to i64
  %add = add i64 %phys64.1, %conv102
  %68 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %bh_result, align 4
  %70 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then101.map_bh.exit_crit_edge

if.then101.map_bh.exit_crit_edge:                 ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #7
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then101.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %71 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %73 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %74 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %75 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %77 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %b_size.i, align 8
  %78 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool103.not = icmp eq i32 %79, 0
  br i1 %tobool103.not, label %map_bh.exit.if.end106_crit_edge, label %if.then104

map_bh.exit.if.end106_crit_edge:                  ; preds = %map_bh.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then104:                                       ; preds = %map_bh.exit
  %80 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %bh_result, align 4
  %82 = and i32 %81, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then104.if.end106_crit_edge

if.then104.if.end106_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then.i:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #7
  br label %if.end106

if.end106:                                        ; preds = %if.then.i, %if.then104.if.end106_crit_edge, %map_bh.exit.if.end106_crit_edge, %out.if.end106_crit_edge
  call void @mutex_unlock(ptr noundef %truncate_mutex) #7
  %83 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %err, align 4
  br label %cleanup114

done:                                             ; preds = %entry
  br i1 %tobool109.not, label %done.cleanup114_crit_edge, label %done.if.then110_crit_edge

done.if.then110_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

done.cleanup114_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup114

if.then110:                                       ; preds = %done.if.then110_crit_edge, %if.end11.if.then110_crit_edge, %if.then6.if.then110_crit_edge
  %conv111 = zext i32 %conv2 to i64
  %add112 = add i64 %call4, %conv111
  %85 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %bh_result, align 4
  %87 = and i32 %86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i188 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i188, label %if.then.i.i189, label %if.then110.map_bh.exit195_crit_edge

if.then110.map_bh.exit195_crit_edge:              ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %map_bh.exit195

if.then.i.i189:                                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #7
  br label %map_bh.exit195

map_bh.exit195:                                   ; preds = %if.then.i.i189, %if.then110.map_bh.exit195_crit_edge
  %s_bdev.i190 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %88 = ptrtoint ptr %s_bdev.i190 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_bdev.i190, align 4
  %b_bdev.i191 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %90 = ptrtoint ptr %b_bdev.i191 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %b_bdev.i191, align 8
  %b_blocknr.i192 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %91 = ptrtoint ptr %b_blocknr.i192 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %add112, ptr %b_blocknr.i192, align 8
  %s_blocksize.i193 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %92 = ptrtoint ptr %s_blocksize.i193 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_blocksize.i193, align 16
  %b_size.i194 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %94 = ptrtoint ptr %b_size.i194 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %b_size.i194, align 8
  br label %cleanup114

cleanup114:                                       ; preds = %map_bh.exit195, %done.cleanup114_crit_edge, %if.end106
  %retval.0 = phi i32 [ %84, %if.end106 ], [ 0, %map_bh.exit195 ], [ 0, %done.cleanup114_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @ufs_getfrag_block, ptr noundef %wbc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @ufs_getfrag_block) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @ufs_getfrag_block) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !123

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @ufs_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %len)
  %cmp = icmp ult i32 %call, %len
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %add)
  %cmp.i = icmp slt i64 %3, %add
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #7
  tail call fastcc void @ufs_truncate_blocks(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ufs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @ufs_getfrag_block) #7
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ufs_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_iget.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_iget, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_iget.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 661, ptr noundef nonnull @.str.1) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_iget.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_iget, %do.end22)) #7
          to label %if.then19 [label %do.end22], !srcloc !120

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_iget.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.6, i32 noundef %ino) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ino)
  %cmp = icmp ult i32 %ino, 2
  br i1 %cmp, label %do.end22.if.then24_crit_edge, label %lor.lhs.false

do.end22.if.then24_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

lor.lhs.false:                                    ; preds = %do.end22
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_ncg, align 8
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_ipg, align 4
  %mul = mul i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %ino)
  %cmp23 = icmp ult i32 %mul, %ino
  br i1 %cmp23, label %lor.lhs.false.if.then24_crit_edge, label %if.end26

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %do.end22.if.then24_crit_edge
  tail call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %ino) #7
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %call27 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #7
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %i_state = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 24
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_state, align 8
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.end34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %add.ptr.i = getelementptr i8, ptr %call27, i32 -328
  %s_sbbase = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 57
  %10 = ptrtoint ptr %s_sbbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_sbbase, align 4
  %conv = zext i32 %11 to i64
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 62
  %12 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %13)
  %cmp36 = icmp eq i32 %13, 424935705
  %s_fpg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 37
  %14 = ptrtoint ptr %s_fpg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_fpg, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %18 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_ipg, align 4
  %div = udiv i32 %17, %19
  %mul39 = mul i32 %div, %15
  br i1 %cmp36, label %if.end34.cond.end_crit_edge, label %cond.false

if.end34.cond.end_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %s_cgoffset = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %s_cgoffset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_cgoffset, align 8
  %s_cgmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %s_cgmask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_cgmask, align 4
  %neg = xor i32 %23, -1
  %and48 = and i32 %div, %neg
  %mul49 = mul i32 %and48, %21
  %add = add i32 %mul49, %mul39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end34.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ %mul39, %if.end34.cond.end_crit_edge ]
  %s_iblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %s_iblkno to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_iblkno, align 8
  %add50 = add i32 %25, %cond
  %conv51 = zext i32 %add50 to i64
  %i_ino52 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino52, align 8
  %28 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_ipg, align 4
  %rem = urem i32 %27, %29
  %s_inopf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 56
  %30 = ptrtoint ptr %s_inopf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_inopf, align 8
  %div54 = udiv i32 %rem, %31
  %conv55 = zext i32 %div54 to i64
  %add56 = add nuw nsw i64 %conv51, %conv
  %add57 = add nuw nsw i64 %add56, %conv55
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %32 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %34 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %33, i64 noundef %add57, i32 noundef %35, i32 noundef 8) #7
  %tobool59.not = icmp eq ptr %call.i, null
  br i1 %tobool59.not, label %if.then60, label %if.end62

if.then60:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %i_ino52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_ino52, align 8
  tail call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef %37) #7
  br label %bad_inode

if.end62:                                         ; preds = %cond.end
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_flags, align 4
  %and64 = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %cmp65.not = icmp eq i32 %and64, 0
  %b_data72 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %b_data72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data72, align 4
  %44 = ptrtoint ptr %i_ino52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino52, align 8
  %46 = ptrtoint ptr %s_inopf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_inopf, align 8
  %rem75 = urem i32 %45, %47
  br i1 %cmp65.not, label %if.else, label %brelse.exit

if.else:                                          ; preds = %if.end62
  %add.ptr76 = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 8
  %48 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i, align 4
  %50 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr76, align 8
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %52 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i = icmp eq i32 %55, 0
  %56 = tail call i16 @llvm.bswap.i16(i16 %51) #7
  %retval.0.i.i = select i1 %cmp.i.i, i16 %56, i16 %51
  %57 = ptrtoint ptr %call27 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %retval.0.i.i, ptr %call27, align 8
  %ui_nlink.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 1
  %58 = ptrtoint ptr %ui_nlink.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ui_nlink.i, align 2
  %60 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i97.i = getelementptr inbounds %struct.ufs_sb_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %s_bytesex.i97.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_bytesex.i97.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i98.i = icmp eq i32 %63, 0
  %64 = tail call i16 @llvm.bswap.i16(i16 %59) #7
  %retval.0.i99.i = select i1 %cmp.i98.i, i16 %64, i16 %59
  %conv.i = zext i16 %retval.0.i99.i to i32
  tail call void @set_nlink(ptr noundef nonnull %call27, i32 noundef %conv.i) #7
  %65 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 12
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i = icmp eq i32 %67, 0
  br i1 %cmp.i, label %brelse.exit.thread192, label %if.end.i

brelse.exit.thread192:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  br label %bad_inode

if.end.i:                                         ; preds = %if.else
  %68 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %71, 96
  %72 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %if.end.i.sw.default.i.i_crit_edge [
    i32 32, label %sw.bb.i.i
    i32 64, label %sw.bb2.i.i
  ]

if.end.i.sw.default.i.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ui_u3.i.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 11
  %73 = ptrtoint ptr %ui_u3.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ui_u3.i.i, align 8
  %s_bytesex.i.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %69, i32 0, i32 2
  %75 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_bytesex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i.i = icmp eq i32 %76, 0
  %77 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 %77, i32 %74
  br label %ufs_get_inode_uid.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i
  %ui_u1.i.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 2
  %78 = ptrtoint ptr %ui_u1.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ui_u1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %79)
  %cmp.i101.i = icmp eq i16 %79, -1
  br i1 %cmp.i101.i, label %if.then.i.i, label %sw.bb2.i.i.sw.default.i.i_crit_edge

sw.bb2.i.i.sw.default.i.i_crit_edge:              ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i.i

if.then.i.i:                                      ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ui_uid5.i.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 11, i32 0, i32 1
  %80 = ptrtoint ptr %ui_uid5.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ui_uid5.i.i, align 4
  %s_bytesex.i18.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %69, i32 0, i32 2
  %82 = ptrtoint ptr %s_bytesex.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_bytesex.i18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i19.i.i = icmp eq i32 %83, 0
  %84 = tail call i32 @llvm.bswap.i32(i32 %81) #7
  %retval.0.i20.i.i = select i1 %cmp.i19.i.i, i32 %84, i32 %81
  br label %ufs_get_inode_uid.exit.i

sw.default.i.i:                                   ; preds = %sw.bb2.i.i.sw.default.i.i_crit_edge, %if.end.i.sw.default.i.i_crit_edge
  %ui_u17.i.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 2
  %85 = ptrtoint ptr %ui_u17.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ui_u17.i.i, align 4
  %s_bytesex.i22.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %69, i32 0, i32 2
  %87 = ptrtoint ptr %s_bytesex.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_bytesex.i22.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i23.i.i = icmp eq i32 %88, 0
  %89 = tail call i16 @llvm.bswap.i16(i16 %86) #7
  %retval.0.i24.i.i = select i1 %cmp.i23.i.i, i16 %89, i16 %86
  %conv10.i.i = zext i16 %retval.0.i24.i.i to i32
  br label %ufs_get_inode_uid.exit.i

ufs_get_inode_uid.exit.i:                         ; preds = %sw.default.i.i, %if.then.i.i, %sw.bb.i.i
  %retval.0.i102.i = phi i32 [ %conv10.i.i, %sw.default.i.i ], [ %retval.0.i20.i.i, %if.then.i.i ], [ %retval.0.i.i.i, %sw.bb.i.i ]
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 2
  %90 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 53
  %92 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %call1.i.i = tail call i32 @make_kuid(ptr noundef %93, i32 noundef %retval.0.i102.i) #7
  %94 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call1.i.i, ptr %i_uid.i.i, align 4
  %95 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i104.i = getelementptr inbounds %struct.ufs_sb_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %s_flags.i104.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_flags.i104.i, align 4
  %and.i105.i = and i32 %98, 96
  %99 = zext i32 %and.i105.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and.i105.i, label %ufs_get_inode_uid.exit.i.sw.default.i122.i_crit_edge [
    i32 32, label %sw.bb.i109.i
    i32 64, label %sw.bb2.i112.i
  ]

ufs_get_inode_uid.exit.i.sw.default.i122.i_crit_edge: ; preds = %ufs_get_inode_uid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i122.i

sw.bb.i109.i:                                     ; preds = %ufs_get_inode_uid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %ui_gid.i.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 11, i32 0, i32 1
  %100 = ptrtoint ptr %ui_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ui_gid.i.i, align 4
  %s_bytesex.i.i106.i = getelementptr inbounds %struct.ufs_sb_info, ptr %96, i32 0, i32 2
  %102 = ptrtoint ptr %s_bytesex.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_bytesex.i.i106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i.i107.i = icmp eq i32 %103, 0
  %104 = tail call i32 @llvm.bswap.i32(i32 %101) #7
  %retval.0.i.i108.i = select i1 %cmp.i.i107.i, i32 %104, i32 %101
  br label %ufs_get_inode_gid.exit.i

sw.bb2.i112.i:                                    ; preds = %ufs_get_inode_uid.exit.i
  %ui_u1.i110.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 2
  %ui_sgid.i.i = getelementptr inbounds %struct.anon.87, ptr %ui_u1.i110.i, i32 0, i32 1
  %105 = ptrtoint ptr %ui_sgid.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %ui_sgid.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %106)
  %cmp.i111.i = icmp eq i16 %106, -1
  br i1 %cmp.i111.i, label %if.then.i116.i, label %sw.bb2.i112.i.sw.default.i122.i_crit_edge

sw.bb2.i112.i.sw.default.i122.i_crit_edge:        ; preds = %sw.bb2.i112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i122.i

if.then.i116.i:                                   ; preds = %sw.bb2.i112.i
  call void @__sanitizer_cov_trace_pc() #9
  %ui_gid5.i.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 11, i32 0, i32 2
  %107 = ptrtoint ptr %ui_gid5.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ui_gid5.i.i, align 8
  %s_bytesex.i18.i113.i = getelementptr inbounds %struct.ufs_sb_info, ptr %96, i32 0, i32 2
  %109 = ptrtoint ptr %s_bytesex.i18.i113.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_bytesex.i18.i113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i19.i114.i = icmp eq i32 %110, 0
  %111 = tail call i32 @llvm.bswap.i32(i32 %108) #7
  %retval.0.i20.i115.i = select i1 %cmp.i19.i114.i, i32 %111, i32 %108
  br label %ufs_get_inode_gid.exit.i

sw.default.i122.i:                                ; preds = %sw.bb2.i112.i.sw.default.i122.i_crit_edge, %ufs_get_inode_uid.exit.i.sw.default.i122.i_crit_edge
  %ui_u17.i117.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 2
  %ui_sgid8.i.i = getelementptr inbounds %struct.anon.87, ptr %ui_u17.i117.i, i32 0, i32 1
  %112 = ptrtoint ptr %ui_sgid8.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %ui_sgid8.i.i, align 2
  %s_bytesex.i22.i118.i = getelementptr inbounds %struct.ufs_sb_info, ptr %96, i32 0, i32 2
  %114 = ptrtoint ptr %s_bytesex.i22.i118.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_bytesex.i22.i118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.i23.i119.i = icmp eq i32 %115, 0
  %116 = tail call i16 @llvm.bswap.i16(i16 %113) #7
  %retval.0.i24.i120.i = select i1 %cmp.i23.i119.i, i16 %116, i16 %113
  %conv10.i121.i = zext i16 %retval.0.i24.i120.i to i32
  br label %ufs_get_inode_gid.exit.i

ufs_get_inode_gid.exit.i:                         ; preds = %sw.default.i122.i, %if.then.i116.i, %sw.bb.i109.i
  %retval.0.i123.i = phi i32 [ %conv10.i121.i, %sw.default.i122.i ], [ %retval.0.i20.i115.i, %if.then.i116.i ], [ %retval.0.i.i108.i, %sw.bb.i109.i ]
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 3
  %117 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i_sb.i, align 4
  %s_user_ns.i.i125.i = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 53
  %119 = ptrtoint ptr %s_user_ns.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %s_user_ns.i.i125.i, align 8
  %call1.i126.i = tail call i32 @make_kgid(ptr noundef %120, i32 noundef %retval.0.i123.i) #7
  %121 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call1.i126.i, ptr %i_gid.i.i, align 8
  %ui_size.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 3
  %122 = ptrtoint ptr %ui_size.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %ui_size.i, align 8
  %124 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i128.i = getelementptr inbounds %struct.ufs_sb_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %s_bytesex.i128.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %s_bytesex.i128.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i129.i = icmp eq i32 %127, 0
  %128 = tail call i64 @llvm.bswap.i64(i64 %123) #7
  %retval.0.i130.i = select i1 %cmp.i129.i, i64 %128, i64 %123
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 14
  %129 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %retval.0.i130.i, ptr %i_size.i, align 8
  %ui_atime.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 4
  %130 = ptrtoint ptr %ui_atime.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ui_atime.i, align 8
  %132 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i132.i = getelementptr inbounds %struct.ufs_sb_info, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %s_bytesex.i132.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %s_bytesex.i132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp.i133.i = icmp eq i32 %135, 0
  %136 = tail call i32 @llvm.bswap.i32(i32 %131) #7
  %retval.0.i134.i = select i1 %cmp.i133.i, i32 %136, i32 %131
  %conv8.i = sext i32 %retval.0.i134.i to i64
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 15
  %137 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv8.i, ptr %i_atime.i, align 8
  %ui_ctime.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 6
  %138 = ptrtoint ptr %ui_ctime.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ui_ctime.i, align 8
  %140 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i136.i = getelementptr inbounds %struct.ufs_sb_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %s_bytesex.i136.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %s_bytesex.i136.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i137.i = icmp eq i32 %143, 0
  %144 = tail call i32 @llvm.bswap.i32(i32 %139) #7
  %retval.0.i138.i = select i1 %cmp.i137.i, i32 %144, i32 %139
  %conv12.i = sext i32 %retval.0.i138.i to i64
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 17
  %145 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %conv12.i, ptr %i_ctime.i, align 8
  %ui_mtime.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 5
  %146 = ptrtoint ptr %ui_mtime.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ui_mtime.i, align 8
  %148 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i140.i = getelementptr inbounds %struct.ufs_sb_info, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %s_bytesex.i140.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %s_bytesex.i140.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp.i141.i = icmp eq i32 %151, 0
  %152 = tail call i32 @llvm.bswap.i32(i32 %147) #7
  %retval.0.i142.i = select i1 %cmp.i141.i, i32 %152, i32 %147
  %conv16.i = sext i32 %retval.0.i142.i to i64
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 16
  %153 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv16.i, ptr %i_mtime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 16, i32 1
  %154 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec20.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 15, i32 1
  %155 = ptrtoint ptr %tv_nsec20.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %tv_nsec20.i, align 8
  %tv_nsec22.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 17, i32 1
  %156 = ptrtoint ptr %tv_nsec22.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %tv_nsec22.i, align 8
  %ui_blocks.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 9
  %157 = ptrtoint ptr %ui_blocks.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ui_blocks.i, align 8
  %159 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i144.i = getelementptr inbounds %struct.ufs_sb_info, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %s_bytesex.i144.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %s_bytesex.i144.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp.i145.i = icmp eq i32 %162, 0
  %163 = tail call i32 @llvm.bswap.i32(i32 %158) #7
  %retval.0.i146.i = select i1 %cmp.i145.i, i32 %163, i32 %158
  %conv24.i = zext i32 %retval.0.i146.i to i64
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 22
  %164 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %conv24.i, ptr %i_blocks.i, align 8
  %ui_gen.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 10
  %165 = ptrtoint ptr %ui_gen.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ui_gen.i, align 4
  %167 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i148.i = getelementptr inbounds %struct.ufs_sb_info, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %s_bytesex.i148.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %s_bytesex.i148.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp.i149.i = icmp eq i32 %170, 0
  %171 = tail call i32 @llvm.bswap.i32(i32 %166) #7
  %retval.0.i150.i = select i1 %cmp.i149.i, i32 %171, i32 %166
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 49
  %172 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %retval.0.i150.i, ptr %i_generation.i, align 8
  %ui_flags.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 8
  %173 = ptrtoint ptr %ui_flags.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %ui_flags.i, align 4
  %175 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i152.i = getelementptr inbounds %struct.ufs_sb_info, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %s_bytesex.i152.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %s_bytesex.i152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp.i153.i = icmp eq i32 %178, 0
  %179 = tail call i32 @llvm.bswap.i32(i32 %174) #7
  %retval.0.i154.i = select i1 %cmp.i153.i, i32 %179, i32 %174
  %i_flags.i = getelementptr i8, ptr %call27, i32 -208
  %180 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %retval.0.i154.i, ptr %i_flags.i, align 8
  %ui_u3.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 11
  %181 = ptrtoint ptr %ui_u3.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %ui_u3.i, align 8
  %183 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i156.i = getelementptr inbounds %struct.ufs_sb_info, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %s_bytesex.i156.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %s_bytesex.i156.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i157.i = icmp eq i32 %186, 0
  %187 = tail call i32 @llvm.bswap.i32(i32 %182) #7
  %retval.0.i158.i = select i1 %cmp.i157.i, i32 %187, i32 %182
  %i_shadow.i = getelementptr i8, ptr %call27, i32 -204
  %188 = ptrtoint ptr %i_shadow.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %retval.0.i158.i, ptr %i_shadow.i, align 4
  %ui_oeftflag.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 11, i32 0, i32 3
  %189 = ptrtoint ptr %ui_oeftflag.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ui_oeftflag.i, align 4
  %191 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i160.i = getelementptr inbounds %struct.ufs_sb_info, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %s_bytesex.i160.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_bytesex.i160.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp.i161.i = icmp eq i32 %194, 0
  %195 = tail call i32 @llvm.bswap.i32(i32 %190) #7
  %retval.0.i162.i = select i1 %cmp.i161.i, i32 %195, i32 %190
  %i_oeftflag.i = getelementptr i8, ptr %call27, i32 -192
  %196 = ptrtoint ptr %i_oeftflag.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %retval.0.i162.i, ptr %i_oeftflag.i, align 8
  %197 = and i16 %retval.0.i.i, -4096
  %198 = zext i16 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %197, label %lor.lhs.false37.i [
    i16 8192, label %ufs_get_inode_gid.exit.i.if.then39.i_crit_edge
    i16 24576, label %ufs_get_inode_gid.exit.i.if.then39.i_crit_edge197
  ]

ufs_get_inode_gid.exit.i.if.then39.i_crit_edge197: ; preds = %ufs_get_inode_gid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

ufs_get_inode_gid.exit.i.if.then39.i_crit_edge:   ; preds = %ufs_get_inode_gid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

lor.lhs.false37.i:                                ; preds = %ufs_get_inode_gid.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i146.i)
  %tobool.not.i = icmp eq i32 %retval.0.i146.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %lor.lhs.false37.i.if.then39.i_crit_edge

lor.lhs.false37.i.if.then39.i_crit_edge:          ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

if.then39.i:                                      ; preds = %lor.lhs.false37.i.if.then39.i_crit_edge, %ufs_get_inode_gid.exit.i.if.then39.i_crit_edge, %ufs_get_inode_gid.exit.i.if.then39.i_crit_edge197
  %ui_u2.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 7
  %199 = call ptr @memcpy(ptr %add.ptr.i, ptr %ui_u2.i, i32 60)
  br label %brelse.exit.thread

if.else.i:                                        ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #9
  %ui_u242.i = getelementptr %struct.ufs_inode, ptr %43, i32 %rem75, i32 7
  %200 = call ptr @memcpy(ptr %add.ptr.i, ptr %ui_u242.i, i32 59)
  %arrayidx.i = getelementptr i8, ptr %call27, i32 -269
  %201 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %arrayidx.i, align 1
  br label %brelse.exit.thread

brelse.exit.thread:                               ; preds = %if.else.i, %if.then39.i
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  br label %if.end81

brelse.exit:                                      ; preds = %if.end62
  %add.ptr = getelementptr %struct.ufs2_inode, ptr %43, i32 %rem75
  %call71 = tail call fastcc i32 @ufs2_read_inode(ptr noundef nonnull %call27, ptr noundef %add.ptr)
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool79.not = icmp eq i32 %call71, 0
  br i1 %tobool79.not, label %brelse.exit.if.end81_crit_edge, label %brelse.exit.bad_inode_crit_edge

brelse.exit.bad_inode_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad_inode

brelse.exit.if.end81_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.end81:                                         ; preds = %brelse.exit.if.end81_crit_edge, %brelse.exit.thread
  tail call fastcc void @inode_inc_iversion(ptr noundef nonnull %call27)
  %i_size = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 14
  %202 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %i_size, align 8
  %s_fsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 12
  %204 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %s_fsize, align 8
  %conv82 = zext i32 %205 to i64
  %add83 = add i64 %203, -1
  %sub = add i64 %add83, %conv82
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 18
  %206 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %s_fshift, align 8
  %sh_prom = zext i32 %207 to i64
  %shr = ashr i64 %sub, %sh_prom
  %i_lastfrag = getelementptr i8, ptr %call27, i32 -184
  %208 = ptrtoint ptr %i_lastfrag to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %shr, ptr %i_lastfrag, align 8
  %i_dir_start_lookup = getelementptr i8, ptr %call27, i32 -4
  %209 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %i_dir_start_lookup, align 4
  %i_osync = getelementptr i8, ptr %call27, i32 -188
  %210 = ptrtoint ptr %i_osync to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %i_osync, align 4
  tail call fastcc void @ufs_set_inode_ops(ptr noundef nonnull %call27)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_iget.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_iget, %do.body102)) #7
          to label %if.then98 [label %do.body102], !srcloc !120

if.then98:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_iget.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 706, ptr noundef nonnull @.str.1) #7
  br label %do.body102

do.body102:                                       ; preds = %if.then98, %if.end81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_iget.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_iget, %do.end119)) #7
          to label %if.then116 [label %do.end119], !srcloc !120

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_iget.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.11) #7
  br label %do.end119

do.end119:                                        ; preds = %if.then116, %do.body102
  tail call void @unlock_new_inode(ptr noundef nonnull %call27) #7
  br label %cleanup

bad_inode:                                        ; preds = %brelse.exit.bad_inode_crit_edge, %brelse.exit.thread192, %if.then60
  %err.1 = phi i32 [ %call71, %brelse.exit.bad_inode_crit_edge ], [ -5, %if.then60 ], [ -116, %brelse.exit.thread192 ]
  tail call void @iget_failed(ptr noundef nonnull %call27) #7
  %211 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %bad_inode, %do.end119, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then24
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.then24 ], [ %211, %bad_inode ], [ %call27, %do.end119 ], [ %call27, %if.end31.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end26.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs2_read_inode(ptr noundef %inode, ptr nocapture noundef readonly %ufs2_inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_read_inode.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_read_inode, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_read_inode.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 612, ptr noundef nonnull @.str.24) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_read_inode.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_read_inode, %do.end22)) #7
          to label %if.then19 [label %do.end22], !srcloc !120

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_read_inode.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.26, i32 noundef %3) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %4 = ptrtoint ptr %ufs2_inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ufs2_inode, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %10 = tail call i16 @llvm.bswap.i16(i16 %5) #7
  %retval.0.i118 = select i1 %cmp.i, i16 %10, i16 %5
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %retval.0.i118, ptr %inode, align 8
  %ui_nlink = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 1
  %12 = ptrtoint ptr %ui_nlink to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ui_nlink, align 2
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i120 = getelementptr inbounds %struct.ufs_sb_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %s_bytesex.i120 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_bytesex.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i121 = icmp eq i32 %17, 0
  %18 = tail call i16 @llvm.bswap.i16(i16 %13) #7
  %retval.0.i122 = select i1 %cmp.i121, i16 %18, i16 %13
  %conv = zext i16 %retval.0.i122 to i32
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %conv) #7
  %19 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %do.end22.cleanup_crit_edge, label %if.end27

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %do.end22
  %ui_uid = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 2
  %22 = ptrtoint ptr %ui_uid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ui_uid, align 4
  %24 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i124 = getelementptr inbounds %struct.ufs_sb_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %s_bytesex.i124 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_bytesex.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i125 = icmp eq i32 %27, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %retval.0.i126 = select i1 %cmp.i125, i32 %28, i32 %23
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 53
  %31 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %32, i32 noundef %retval.0.i126) #7
  %33 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %ui_gid = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 3
  %34 = ptrtoint ptr %ui_gid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ui_gid, align 8
  %36 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i128 = getelementptr inbounds %struct.ufs_sb_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %s_bytesex.i128 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_bytesex.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i129 = icmp eq i32 %39, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %retval.0.i130 = select i1 %cmp.i129, i32 %40, i32 %35
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i132 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 53
  %43 = ptrtoint ptr %s_user_ns.i.i132 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_user_ns.i.i132, align 8
  %call1.i133 = tail call i32 @make_kgid(ptr noundef %44, i32 noundef %retval.0.i130) #7
  %45 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call1.i133, ptr %i_gid.i, align 8
  %ui_size = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 5
  %46 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ui_size, align 8
  %48 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i135 = getelementptr inbounds %struct.ufs_sb_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %s_bytesex.i135 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_bytesex.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i136 = icmp eq i32 %51, 0
  %52 = tail call i64 @llvm.bswap.i64(i64 %47) #7
  %retval.0.i137 = select i1 %cmp.i136, i64 %52, i64 %47
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %53 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %retval.0.i137, ptr %i_size, align 8
  %ui_atime = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 7
  %54 = ptrtoint ptr %ui_atime to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ui_atime, align 8
  %56 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i139 = getelementptr inbounds %struct.ufs_sb_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %s_bytesex.i139 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_bytesex.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i140 = icmp eq i32 %59, 0
  %60 = tail call i64 @llvm.bswap.i64(i64 %55) #7
  %retval.0.i141 = select i1 %cmp.i140, i64 %60, i64 %55
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %61 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %retval.0.i141, ptr %i_atime, align 8
  %ui_ctime = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 9
  %62 = ptrtoint ptr %ui_ctime to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ui_ctime, align 8
  %64 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i143 = getelementptr inbounds %struct.ufs_sb_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %s_bytesex.i143 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_bytesex.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i144 = icmp eq i32 %67, 0
  %68 = tail call i64 @llvm.bswap.i64(i64 %63) #7
  %retval.0.i145 = select i1 %cmp.i144, i64 %68, i64 %63
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %69 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %retval.0.i145, ptr %i_ctime, align 8
  %ui_mtime = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 8
  %70 = ptrtoint ptr %ui_mtime to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ui_mtime, align 8
  %72 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i147 = getelementptr inbounds %struct.ufs_sb_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %s_bytesex.i147 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_bytesex.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i148 = icmp eq i32 %75, 0
  %76 = tail call i64 @llvm.bswap.i64(i64 %71) #7
  %retval.0.i149 = select i1 %cmp.i148, i64 %76, i64 %71
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %77 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %retval.0.i149, ptr %i_mtime, align 8
  %ui_atimensec = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 12
  %78 = ptrtoint ptr %ui_atimensec to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ui_atimensec, align 4
  %80 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i151 = getelementptr inbounds %struct.ufs_sb_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %s_bytesex.i151 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_bytesex.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i152 = icmp eq i32 %83, 0
  %84 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  %retval.0.i153 = select i1 %cmp.i152, i32 %84, i32 %79
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %85 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i153, ptr %tv_nsec, align 8
  %ui_ctimensec = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 13
  %86 = ptrtoint ptr %ui_ctimensec to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ui_ctimensec, align 8
  %88 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i155 = getelementptr inbounds %struct.ufs_sb_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %s_bytesex.i155 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_bytesex.i155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i156 = icmp eq i32 %91, 0
  %92 = tail call i32 @llvm.bswap.i32(i32 %87) #7
  %retval.0.i157 = select i1 %cmp.i156, i32 %92, i32 %87
  %tv_nsec40 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %93 = ptrtoint ptr %tv_nsec40 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i157, ptr %tv_nsec40, align 8
  %ui_mtimensec = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 11
  %94 = ptrtoint ptr %ui_mtimensec to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ui_mtimensec, align 8
  %96 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i159 = getelementptr inbounds %struct.ufs_sb_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %s_bytesex.i159 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_bytesex.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i160 = icmp eq i32 %99, 0
  %100 = tail call i32 @llvm.bswap.i32(i32 %95) #7
  %retval.0.i161 = select i1 %cmp.i160, i32 %100, i32 %95
  %tv_nsec43 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %101 = ptrtoint ptr %tv_nsec43 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %retval.0.i161, ptr %tv_nsec43, align 8
  %ui_blocks = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 6
  %102 = ptrtoint ptr %ui_blocks to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ui_blocks, align 8
  %104 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i163 = getelementptr inbounds %struct.ufs_sb_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %s_bytesex.i163 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_bytesex.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.i164 = icmp eq i32 %107, 0
  %108 = tail call i64 @llvm.bswap.i64(i64 %103) #7
  %retval.0.i165 = select i1 %cmp.i164, i64 %108, i64 %103
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %109 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %retval.0.i165, ptr %i_blocks, align 8
  %ui_gen = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 15
  %110 = ptrtoint ptr %ui_gen to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ui_gen, align 8
  %112 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i167 = getelementptr inbounds %struct.ufs_sb_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %s_bytesex.i167 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_bytesex.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.i168 = icmp eq i32 %115, 0
  %116 = tail call i32 @llvm.bswap.i32(i32 %111) #7
  %retval.0.i169 = select i1 %cmp.i168, i32 %116, i32 %111
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %117 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %retval.0.i169, ptr %i_generation, align 8
  %ui_flags = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 17
  %118 = ptrtoint ptr %ui_flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ui_flags, align 8
  %120 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i171 = getelementptr inbounds %struct.ufs_sb_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %s_bytesex.i171 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_bytesex.i171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp.i172 = icmp eq i32 %123, 0
  %124 = tail call i32 @llvm.bswap.i32(i32 %119) #7
  %retval.0.i173 = select i1 %cmp.i172, i32 %124, i32 %119
  %i_flags = getelementptr i8, ptr %inode, i32 -208
  %125 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %retval.0.i173, ptr %i_flags, align 8
  %126 = and i16 %retval.0.i118, -4096
  %127 = zext i16 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %126, label %lor.lhs.false54 [
    i16 8192, label %if.end27.if.then57_crit_edge
    i16 24576, label %if.end27.if.then57_crit_edge176
  ]

if.end27.if.then57_crit_edge176:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.end27.if.then57_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

lor.lhs.false54:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i165)
  %tobool56.not = icmp eq i64 %retval.0.i165, 0
  br i1 %tobool56.not, label %if.else, label %lor.lhs.false54.if.then57_crit_edge

lor.lhs.false54.if.then57_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false54.if.then57_crit_edge, %if.end27.if.then57_crit_edge, %if.end27.if.then57_crit_edge176
  %ui_u2 = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 20
  %128 = call ptr @memcpy(ptr %add.ptr.i, ptr %ui_u2, i32 120)
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #9
  %ui_u260 = getelementptr inbounds %struct.ufs2_inode, ptr %ufs2_inode, i32 0, i32 20
  %129 = call ptr @memcpy(ptr %add.ptr.i, ptr %ui_u260, i32 119)
  %arrayidx = getelementptr i8, ptr %inode, i32 -209
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then57, %do.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ -116, %do.end22.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then57 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inode_inc_iversion(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !124
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #7
  %call.i.i1.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %cur.0.i = phi i64 [ %call.i.i1.i, %entry ], [ %call.i.i, %for.cond.i.for.cond.i_crit_edge ]
  %0 = add i64 %cur.0.i, 2
  %add.i = and i64 %0, -2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %add.i) #7
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %inode_maybe_inc_iversion.exit, label %for.cond.i.for.cond.i_crit_edge, !prof !123

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

inode_maybe_inc_iversion.exit:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_set_inode_ops(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %2, label %if.else24 [
    i16 -32768, label %if.then
    i16 16384, label %if.then7
    i16 -24576, label %if.then17
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ufs_file_inode_operations, ptr %i_op, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ufs_file_operations, ptr %5, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ufs_aops, ptr %a_ops, align 4
  br label %if.end30

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_op8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %10 = ptrtoint ptr %i_op8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ufs_dir_inode_operations, ptr %i_op8, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ufs_dir_operations, ptr %11, align 8
  %i_mapping9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping9, align 8
  %a_ops10 = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %a_ops10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ufs_aops, ptr %a_ops10, align 4
  br label %if.end30

if.then17:                                        ; preds = %entry
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %16 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not = icmp eq i64 %17, 0
  br i1 %tobool.not, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  %18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %18, align 4
  %i_op19 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %20 = ptrtoint ptr %i_op19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @simple_symlink_inode_operations, ptr %i_op19, align 8
  br label %if.end30

if.else20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %i_mapping21 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %21 = ptrtoint ptr %i_mapping21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_mapping21, align 8
  %a_ops22 = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %a_ops22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ufs_aops, ptr %a_ops22, align 4
  %i_op23 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %24 = ptrtoint ptr %i_op23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @page_symlink_inode_operations, ptr %i_op23, align 8
  tail call void @inode_nohighmem(ptr noundef %inode) #7
  br label %if.end30

if.else24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %add.ptr.i50 = getelementptr i8, ptr %inode, i32 -328
  %call27 = tail call i32 @ufs_get_inode_dev(ptr noundef %26, ptr noundef %add.ptr.i50) #7
  tail call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %1, i32 noundef %call27) #7
  br label %if.end30

if.end30:                                         ; preds = %if.else24, %if.else20, %if.then18, %if.then7, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_write_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @ufs_update_inode(ptr noundef %inode, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_update_inode(ptr nocapture noundef readonly %inode, i32 noundef %do_sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_update_inode.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_update_inode, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_update_inode.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 804, ptr noundef nonnull @.str.27) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_update_inode.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_update_inode, %do.end22)) #7
          to label %if.then19 [label %do.end22], !srcloc !120

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_update_inode.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.6, i32 noundef %7) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %i_ino23 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ult i32 %9, 2
  br i1 %cmp, label %do.end22.if.then26_crit_edge, label %lor.lhs.false

do.end22.if.then26_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false:                                    ; preds = %do.end22
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_ncg, align 8
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 36
  %12 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_ipg, align 4
  %mul = mul i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul)
  %cmp25 = icmp ugt i32 %9, %mul
  br i1 %cmp25, label %lor.lhs.false.if.then26_crit_edge, label %if.end28

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %do.end22.if.then26_crit_edge
  tail call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %9) #7
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  %14 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %15)
  %cmp29 = icmp eq i32 %15, 424935705
  %s_fpg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 37
  %16 = ptrtoint ptr %s_fpg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_fpg, align 8
  %.frozen = freeze i32 %9
  %.frozen159 = freeze i32 %13
  %div = udiv i32 %.frozen, %.frozen159
  %mul32 = mul i32 %div, %17
  br i1 %cmp29, label %if.end28.cond.end_crit_edge, label %cond.false

if.end28.cond.end_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %s_cgoffset = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %s_cgoffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_cgoffset, align 8
  %s_cgmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 7
  %20 = ptrtoint ptr %s_cgmask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_cgmask, align 4
  %neg = xor i32 %21, -1
  %and = and i32 %div, %neg
  %mul41 = mul i32 %and, %19
  %add = add i32 %mul41, %mul32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end28.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ %mul32, %if.end28.cond.end_crit_edge ]
  %s_iblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %s_iblkno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_iblkno, align 8
  %add42 = add i32 %23, %cond
  %conv = zext i32 %add42 to i64
  %24 = mul i32 %div, %.frozen159
  %rem.decomposed = sub i32 %.frozen, %24
  %s_inopf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 56
  %25 = ptrtoint ptr %s_inopf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_inopf, align 8
  %div45 = udiv i32 %rem.decomposed, %26
  %conv46 = zext i32 %div45 to i64
  %add47 = add nuw nsw i64 %conv46, %conv
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %27 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %28, i64 noundef %add47, i32 noundef %30, i32 noundef 8) #7
  %tobool49.not = icmp eq ptr %call.i, null
  br i1 %tobool49.not, label %if.then50, label %if.end52

if.then50:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %i_ino23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino23, align 8
  tail call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef %32) #7
  br label %cleanup

if.end52:                                         ; preds = %cond.end
  %33 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %34)
  %cmp54 = icmp eq i32 %34, 424935705
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data, align 4
  %37 = ptrtoint ptr %i_ino23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino23, align 8
  %39 = ptrtoint ptr %s_inopf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_inopf, align 8
  %rem59 = urem i32 %38, %40
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.ufs2_inode, ptr %36, i32 %rem59
  tail call fastcc void @ufs2_update_inode(ptr noundef %inode, ptr noundef %add.ptr)
  br label %if.end65

if.else:                                          ; preds = %if.end52
  %add.ptr64 = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -328
  %43 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %inode, align 8
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %45 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i = icmp eq i32 %48, 0
  %49 = tail call i16 @llvm.bswap.i16(i16 %44) #7
  %retval.0.i.i = select i1 %cmp.i.i, i16 %49, i16 %44
  %50 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %retval.0.i.i, ptr %add.ptr64, align 8
  %51 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %conv.i = trunc i32 %53 to i16
  %54 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i109.i = getelementptr inbounds %struct.ufs_sb_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %s_bytesex.i109.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_bytesex.i109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i110.i = icmp eq i32 %57, 0
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %retval.0.i111.i = select i1 %cmp.i110.i, i16 %58, i16 %conv.i
  %ui_nlink.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 1
  %59 = ptrtoint ptr %ui_nlink.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %retval.0.i111.i, ptr %ui_nlink.i, align 2
  %60 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 53
  %62 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %64 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %65 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call1.i.i = tail call i32 @from_kuid(ptr noundef %63, [1 x i32] %65) #7
  %66 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %69, 96
  %70 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and.i.i, label %if.else.ufs_set_inode_uid.exit.i_crit_edge [
    i32 32, label %sw.bb.i.i
    i32 64, label %sw.bb3.i.i
  ]

if.else.ufs_set_inode_uid.exit.i_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ufs_set_inode_uid.exit.i

sw.bb.i.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %s_bytesex.i.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %67, i32 0, i32 2
  %71 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_bytesex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i.i.i = icmp eq i32 %72, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %call1.i.i) #7
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 %73, i32 %call1.i.i
  %ui_u3.i.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 11
  %74 = ptrtoint ptr %ui_u3.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i.i.i, ptr %ui_u3.i.i, align 8
  br label %ufs_set_inode_uid.exit.i

sw.bb3.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %s_bytesex.i28.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %67, i32 0, i32 2
  %75 = ptrtoint ptr %s_bytesex.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_bytesex.i28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i29.i.i = icmp eq i32 %76, 0
  %77 = tail call i32 @llvm.bswap.i32(i32 %call1.i.i) #7
  %retval.0.i30.i.i = select i1 %cmp.i29.i.i, i32 %77, i32 %call1.i.i
  %ui_uid6.i.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 11, i32 0, i32 1
  %78 = ptrtoint ptr %ui_uid6.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %retval.0.i30.i.i, ptr %ui_uid6.i.i, align 4
  %79 = tail call i32 @llvm.umin.i32(i32 %call1.i.i, i32 65535) #7
  br label %ufs_set_inode_uid.exit.i

ufs_set_inode_uid.exit.i:                         ; preds = %sw.bb3.i.i, %sw.bb.i.i, %if.else.ufs_set_inode_uid.exit.i_crit_edge
  %value.addr.0.sink.i.i = phi i32 [ %call1.i.i, %sw.bb.i.i ], [ %call1.i.i, %if.else.ufs_set_inode_uid.exit.i_crit_edge ], [ %79, %sw.bb3.i.i ]
  %conv8.i.i = trunc i32 %value.addr.0.sink.i.i to i16
  %80 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i32.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %s_bytesex.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_bytesex.i32.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i33.i.i = icmp eq i32 %83, 0
  %84 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i) #7
  %retval.0.i34.i.i = select i1 %cmp.i33.i.i, i16 %84, i16 %conv8.i.i
  %ui_u110.i.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 2
  %85 = ptrtoint ptr %ui_u110.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %retval.0.i34.i.i, ptr %ui_u110.i.i, align 4
  %86 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i114.i = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 53
  %88 = ptrtoint ptr %s_user_ns.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_user_ns.i.i114.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %90 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.unpack.i115.i = load i32, ptr %i_gid.i.i, align 8
  %91 = insertvalue [1 x i32] undef, i32 %.unpack.i115.i, 0
  %call1.i116.i = tail call i32 @from_kgid(ptr noundef %89, [1 x i32] %91) #7
  %92 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i118.i = getelementptr inbounds %struct.ufs_sb_info, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %s_flags.i118.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_flags.i118.i, align 4
  %and.i119.i = and i32 %95, 96
  %96 = zext i32 %and.i119.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and.i119.i, label %ufs_set_inode_uid.exit.i.ufs_set_inode_gid.exit.i_crit_edge [
    i32 32, label %sw.bb.i123.i
    i32 64, label %sw.bb3.i127.i
  ]

ufs_set_inode_uid.exit.i.ufs_set_inode_gid.exit.i_crit_edge: ; preds = %ufs_set_inode_uid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ufs_set_inode_gid.exit.i

sw.bb.i123.i:                                     ; preds = %ufs_set_inode_uid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %s_bytesex.i.i120.i = getelementptr inbounds %struct.ufs_sb_info, ptr %93, i32 0, i32 2
  %97 = ptrtoint ptr %s_bytesex.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_bytesex.i.i120.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i.i121.i = icmp eq i32 %98, 0
  %99 = tail call i32 @llvm.bswap.i32(i32 %call1.i116.i) #7
  %retval.0.i.i122.i = select i1 %cmp.i.i121.i, i32 %99, i32 %call1.i116.i
  %ui_gid.i.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 11, i32 0, i32 1
  %100 = ptrtoint ptr %ui_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i.i122.i, ptr %ui_gid.i.i, align 4
  br label %ufs_set_inode_gid.exit.i

sw.bb3.i127.i:                                    ; preds = %ufs_set_inode_uid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %s_bytesex.i28.i124.i = getelementptr inbounds %struct.ufs_sb_info, ptr %93, i32 0, i32 2
  %101 = ptrtoint ptr %s_bytesex.i28.i124.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s_bytesex.i28.i124.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.i29.i125.i = icmp eq i32 %102, 0
  %103 = tail call i32 @llvm.bswap.i32(i32 %call1.i116.i) #7
  %retval.0.i30.i126.i = select i1 %cmp.i29.i125.i, i32 %103, i32 %call1.i116.i
  %ui_gid6.i.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 11, i32 0, i32 2
  %104 = ptrtoint ptr %ui_gid6.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %retval.0.i30.i126.i, ptr %ui_gid6.i.i, align 8
  %105 = tail call i32 @llvm.umin.i32(i32 %call1.i116.i, i32 65535) #7
  br label %ufs_set_inode_gid.exit.i

ufs_set_inode_gid.exit.i:                         ; preds = %sw.bb3.i127.i, %sw.bb.i123.i, %ufs_set_inode_uid.exit.i.ufs_set_inode_gid.exit.i_crit_edge
  %value.addr.0.sink.i128.i = phi i32 [ %call1.i116.i, %sw.bb.i123.i ], [ %call1.i116.i, %ufs_set_inode_uid.exit.i.ufs_set_inode_gid.exit.i_crit_edge ], [ %105, %sw.bb3.i127.i ]
  %conv8.i129.i = trunc i32 %value.addr.0.sink.i128.i to i16
  %106 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i32.i130.i = getelementptr inbounds %struct.ufs_sb_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %s_bytesex.i32.i130.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_bytesex.i32.i130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp.i33.i131.i = icmp eq i32 %109, 0
  %110 = tail call i16 @llvm.bswap.i16(i16 %conv8.i129.i) #7
  %retval.0.i34.i132.i = select i1 %cmp.i33.i131.i, i16 %110, i16 %conv8.i129.i
  %ui_sgid11.i.i = getelementptr inbounds %struct.anon.87, ptr %ui_u110.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %ui_sgid11.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %retval.0.i34.i132.i, ptr %ui_sgid11.i.i, align 2
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %112 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %i_size.i, align 8
  %114 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i135.i = getelementptr inbounds %struct.ufs_sb_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %s_bytesex.i135.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_bytesex.i135.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i136.i = icmp eq i32 %117, 0
  %118 = tail call i64 @llvm.bswap.i64(i64 %113) #7
  %retval.0.i137.i = select i1 %cmp.i136.i, i64 %118, i64 %113
  %ui_size.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 3
  %119 = ptrtoint ptr %ui_size.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %retval.0.i137.i, ptr %ui_size.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %120 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %i_atime.i, align 8
  %conv6.i = trunc i64 %121 to i32
  %122 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i139.i = getelementptr inbounds %struct.ufs_sb_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %s_bytesex.i139.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %s_bytesex.i139.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp.i140.i = icmp eq i32 %125, 0
  %126 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #7
  %retval.0.i141.i = select i1 %cmp.i140.i, i32 %126, i32 %conv6.i
  %ui_atime.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 4
  %127 = ptrtoint ptr %ui_atime.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %retval.0.i141.i, ptr %ui_atime.i, align 8
  %tv_usec.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 4, i32 1
  %128 = ptrtoint ptr %tv_usec.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %tv_usec.i, align 4
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %129 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %i_ctime.i, align 8
  %conv11.i = trunc i64 %130 to i32
  %131 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i143.i = getelementptr inbounds %struct.ufs_sb_info, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %s_bytesex.i143.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_bytesex.i143.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.i144.i = icmp eq i32 %134, 0
  %135 = tail call i32 @llvm.bswap.i32(i32 %conv11.i) #7
  %retval.0.i145.i = select i1 %cmp.i144.i, i32 %135, i32 %conv11.i
  %ui_ctime.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 6
  %136 = ptrtoint ptr %ui_ctime.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %retval.0.i145.i, ptr %ui_ctime.i, align 8
  %tv_usec15.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 6, i32 1
  %137 = ptrtoint ptr %tv_usec15.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %tv_usec15.i, align 4
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %138 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %i_mtime.i, align 8
  %conv17.i = trunc i64 %139 to i32
  %140 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i147.i = getelementptr inbounds %struct.ufs_sb_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %s_bytesex.i147.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %s_bytesex.i147.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i148.i = icmp eq i32 %143, 0
  %144 = tail call i32 @llvm.bswap.i32(i32 %conv17.i) #7
  %retval.0.i149.i = select i1 %cmp.i148.i, i32 %144, i32 %conv17.i
  %ui_mtime.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 5
  %145 = ptrtoint ptr %ui_mtime.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %retval.0.i149.i, ptr %ui_mtime.i, align 8
  %tv_usec21.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 5, i32 1
  %146 = ptrtoint ptr %tv_usec21.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %tv_usec21.i, align 4
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %147 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %i_blocks.i, align 8
  %conv22.i = trunc i64 %148 to i32
  %149 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i151.i = getelementptr inbounds %struct.ufs_sb_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %s_bytesex.i151.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %s_bytesex.i151.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i152.i = icmp eq i32 %152, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %conv22.i) #7
  %retval.0.i153.i = select i1 %cmp.i152.i, i32 %153, i32 %conv22.i
  %ui_blocks.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 9
  %154 = ptrtoint ptr %ui_blocks.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %retval.0.i153.i, ptr %ui_blocks.i, align 8
  %i_flags.i = getelementptr i8, ptr %inode, i32 -208
  %155 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %i_flags.i, align 8
  %157 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i155.i = getelementptr inbounds %struct.ufs_sb_info, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %s_bytesex.i155.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %s_bytesex.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.i156.i = icmp eq i32 %160, 0
  %161 = tail call i32 @llvm.bswap.i32(i32 %156) #7
  %retval.0.i157.i = select i1 %cmp.i156.i, i32 %161, i32 %156
  %ui_flags.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 8
  %162 = ptrtoint ptr %ui_flags.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %retval.0.i157.i, ptr %ui_flags.i, align 4
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %163 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %i_generation.i, align 8
  %165 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i159.i = getelementptr inbounds %struct.ufs_sb_info, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %s_bytesex.i159.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %s_bytesex.i159.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp.i160.i = icmp eq i32 %168, 0
  %169 = tail call i32 @llvm.bswap.i32(i32 %164) #7
  %retval.0.i161.i = select i1 %cmp.i160.i, i32 %169, i32 %164
  %ui_gen.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 10
  %170 = ptrtoint ptr %ui_gen.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %retval.0.i161.i, ptr %ui_gen.i, align 4
  %171 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.ufs_sb_info, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %174, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 64
  br i1 %cmp.i, label %if.then.i, label %ufs_set_inode_gid.exit.i.if.end.i_crit_edge

ufs_set_inode_gid.exit.i.if.end.i_crit_edge:      ; preds = %ufs_set_inode_gid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %ufs_set_inode_gid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_shadow.i = getelementptr i8, ptr %inode, i32 -204
  %175 = ptrtoint ptr %i_shadow.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %i_shadow.i, align 4
  %s_bytesex.i163.i = getelementptr inbounds %struct.ufs_sb_info, ptr %172, i32 0, i32 2
  %177 = ptrtoint ptr %s_bytesex.i163.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %s_bytesex.i163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp.i164.i = icmp eq i32 %178, 0
  %179 = tail call i32 @llvm.bswap.i32(i32 %176) #7
  %retval.0.i165.i = select i1 %cmp.i164.i, i32 %179, i32 %176
  %ui_u3.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 11
  %180 = ptrtoint ptr %ui_u3.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %retval.0.i165.i, ptr %ui_u3.i, align 8
  %i_oeftflag.i = getelementptr i8, ptr %inode, i32 -192
  %181 = ptrtoint ptr %i_oeftflag.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %i_oeftflag.i, align 8
  %183 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_bytesex.i167.i = getelementptr inbounds %struct.ufs_sb_info, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %s_bytesex.i167.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %s_bytesex.i167.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i168.i = icmp eq i32 %186, 0
  %187 = tail call i32 @llvm.bswap.i32(i32 %182) #7
  %retval.0.i169.i = select i1 %cmp.i168.i, i32 %187, i32 %182
  %ui_oeftflag.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 11, i32 0, i32 3
  %188 = ptrtoint ptr %ui_oeftflag.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %retval.0.i169.i, ptr %ui_oeftflag.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %ufs_set_inode_gid.exit.i.if.end.i_crit_edge
  %189 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %inode, align 8
  %191 = and i16 %190, -4096
  %192 = zext i16 %191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %191, label %if.else.i [
    i16 8192, label %if.end.i.if.then41.i_crit_edge
    i16 24576, label %if.end.i.if.then41.i_crit_edge160
  ]

if.end.i.if.then41.i_crit_edge160:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

if.end.i.if.then41.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

if.then41.i:                                      ; preds = %if.end.i.if.then41.i_crit_edge, %if.end.i.if.then41.i_crit_edge160
  %193 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %add.ptr.i.i, align 8
  %ui_u2.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 7
  %195 = ptrtoint ptr %ui_u2.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %ui_u2.i, align 8
  br label %if.end52.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ui_u248.i = getelementptr %struct.ufs_inode, ptr %36, i32 %rem59, i32 7
  %196 = call ptr @memcpy(ptr %ui_u248.i, ptr %add.ptr.i.i, i32 60)
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else.i, %if.then41.i
  %197 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool53.not.i = icmp eq i32 %198, 0
  br i1 %tobool53.not.i, label %if.then54.i, label %if.end52.i.if.end65_crit_edge

if.end52.i.if.end65_crit_edge:                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %199 = call ptr @memset(ptr %add.ptr64, i32 0, i32 128)
  br label %if.end65

if.end65:                                         ; preds = %if.then54.i, %if.end52.i.if.end65_crit_edge, %if.then56
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_sync)
  %tobool66.not = icmp eq i32 %do_sync, 0
  br i1 %tobool66.not, label %if.end65.brelse.exit_crit_edge, label %if.then67

if.end65.brelse.exit_crit_edge:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then67, %if.end65.brelse.exit_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_update_inode.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_update_inode, %do.body88)) #7
          to label %if.then84 [label %do.body88], !srcloc !120

if.then84:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_update_inode.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 833, ptr noundef nonnull @.str.27) #7
  br label %do.body88

do.body88:                                        ; preds = %if.then84, %brelse.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_update_inode.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_update_inode, %cleanup)) #7
          to label %if.then102 [label %cleanup], !srcloc !120

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_update_inode.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %do.body88, %if.then50, %if.then26
  %retval.0 = phi i32 [ -1, %if.then26 ], [ -1, %if.then50 ], [ 0, %if.then102 ], [ 0, %do.body88 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_sync_inode(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ufs_update_inode(ptr noundef %inode, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end24.critedge.critedge

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #7
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #7
  br i1 %call, label %land.lhs.true.if.end24.critedge_crit_edge, label %if.then2

land.lhs.true.if.end24.critedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.critedge

if.then2:                                         ; preds = %land.lhs.true
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %i_size, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %4 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool3.not = icmp eq i64 %5, 0
  br i1 %tobool3.not, label %if.then2.if.end18_crit_edge, label %land.lhs.true4

if.then2.if.end18_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true4:                                   ; preds = %if.then2
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %8, label %land.lhs.true4.if.end18_crit_edge [
    i16 -32768, label %land.lhs.true4.if.then17_crit_edge
    i16 16384, label %land.lhs.true4.if.then17_crit_edge39
    i16 -24576, label %land.lhs.true4.if.then17_crit_edge40
  ]

land.lhs.true4.if.then17_crit_edge40:             ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

land.lhs.true4.if.then17_crit_edge39:             ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

land.lhs.true4.if.then17_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

land.lhs.true4.if.end18_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true4.if.then17_crit_edge, %land.lhs.true4.if.then17_crit_edge39, %land.lhs.true4.if.then17_crit_edge40
  tail call fastcc void @ufs_truncate_blocks(ptr noundef %inode)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true4.if.end18_crit_edge, %if.then2.if.end18_crit_edge
  %call19 = tail call i32 @inode_needs_sync(ptr noundef %inode) #7
  %call20 = tail call fastcc i32 @ufs_update_inode(ptr noundef %inode, i32 noundef %call19)
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #7
  tail call void @clear_inode(ptr noundef %inode) #7
  tail call void @ufs_free_inode(ptr noundef %inode) #7
  br label %if.end24

if.end24.critedge.critedge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_data.c = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data.c) #7
  br label %if.end24.critedge

if.end24.critedge:                                ; preds = %if.end24.critedge.critedge, %land.lhs.true.if.end24.critedge_crit_edge
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #7
  tail call void @clear_inode(ptr noundef %inode) #7
  br label %if.end24

if.end24:                                         ; preds = %if.end24.critedge, %if.end18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_truncate_blocks(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %offsets = alloca [4 x i32], align 4
  %ubh = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #7
  %6 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ubh) #7
  %7 = ptrtoint ptr %ubh to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %ubh, align 4, !annotation !125
  %8 = getelementptr inbounds [3 x ptr], ptr %ubh, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !125
  %10 = getelementptr inbounds [3 x ptr], ptr %ubh, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !125
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not = icmp eq i64 %13, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %sub = add i64 %13, -1
  %s_bshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 17
  %14 = ptrtoint ptr %s_bshift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_bshift, align 4
  %sh_prom = zext i32 %15 to i64
  %shr = ashr i64 %sub, %sh_prom
  %call3 = call fastcc i32 @ufs_block_to_path(ptr noundef %inode, i64 noundef %shr, ptr noundef nonnull %offsets)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.cleanup74_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.cleanup74_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %depth.0 = phi i32 [ %call3, %if.then.if.end6_crit_edge ], [ 1, %entry.if.end6_crit_edge ]
  %s_apb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 47
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end6
  %depth2.0.in = phi i32 [ %depth.0, %if.end6 ], [ %depth2.0, %for.body.for.cond_crit_edge ]
  %depth2.0 = add i32 %depth2.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth2.0)
  %tobool8.not = icmp eq i32 %depth2.0, 0
  br i1 %tobool8.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [4 x i32], ptr %offsets, i32 0, i32 %depth2.0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %s_apb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_apb, align 4
  %sub9 = add i32 %19, -1
  %cmp.not = icmp eq i32 %17, %sub9
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %truncate_mutex = getelementptr i8, ptr %inode, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %truncate_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %depth.0)
  %cmp12 = icmp eq i32 %depth.0, 1
  br i1 %cmp12, label %if.end47.thread, label %if.else15

if.end47.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ufs_trunc_direct(ptr noundef %inode)
  %20 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %offsets, align 4
  br label %ufs_get_direct_data_ptr.exit168.lr.ph

if.else15:                                        ; preds = %for.end
  %21 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offsets, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %offsets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %22)
  %cmp.i = icmp ugt i32 %22, 14
  br i1 %cmp.i, label %do.body2.i, label %ufs_get_direct_data_ptr.exit, !prof !121

do.body2.i:                                       ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 555, 0\0A.popsection", ""() #7, !srcloc !122
  unreachable

ufs_get_direct_data_ptr.exit:                     ; preds = %if.else15
  %fs_magic.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth2.0)
  %cmp19200.not = icmp eq i32 %depth2.0, 0
  br i1 %cmp19200.not, label %ufs_get_direct_data_ptr.exit.if.end47_crit_edge, label %for.body20.lr.ph

ufs_get_direct_data_ptr.exit.if.end47_crit_edge:  ; preds = %ufs_get_direct_data_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

for.body20.lr.ph:                                 ; preds = %ufs_get_direct_data_ptr.exit
  %23 = ptrtoint ptr %fs_magic.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fs_magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %24)
  %cmp6.i = icmp eq i32 %24, 424935705
  %arrayidx.i = getelementptr [15 x i64], ptr %add.ptr.i, i32 0, i32 %22
  %arrayidx8.i = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 %22
  %cond.i = select i1 %cmp6.i, ptr %arrayidx.i, ptr %arrayidx8.i
  %s_bsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 11
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %s_fsize11.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 12
  br label %for.body20

for.body20:                                       ; preds = %ubh_get_data_ptr.exit.for.body20_crit_edge, %for.body20.lr.ph
  %p.0202 = phi ptr [ %cond.i, %for.body20.lr.ph ], [ %retval.0.i, %ubh_get_data_ptr.exit.for.body20_crit_edge ]
  %i.0201 = phi i32 [ 0, %for.body20.lr.ph ], [ %add, %ubh_get_data_ptr.exit.for.body20_crit_edge ]
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %fs_magic.i143 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %28, i32 0, i32 62
  %29 = ptrtoint ptr %fs_magic.i143 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fs_magic.i143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %30)
  %cmp.i144 = icmp eq i32 %30, 424935705
  br i1 %cmp.i144, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %p.0202 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %p.0202, align 8
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %26, i32 0, i32 2
  %33 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 0
  %35 = tail call i64 @llvm.bswap.i64(i64 %32) #7
  %retval.0.i.i = select i1 %cmp.i.i, i64 %35, i64 %32
  br label %ufs_data_ptr_to_cpu.exit

cond.false.i:                                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %p.0202 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p.0202, align 4
  %s_bytesex.i7.i = getelementptr inbounds %struct.ufs_sb_info, ptr %26, i32 0, i32 2
  %38 = ptrtoint ptr %s_bytesex.i7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_bytesex.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i8.i = icmp eq i32 %39, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %retval.0.i9.i = select i1 %cmp.i8.i, i32 %40, i32 %37
  %conv.i = zext i32 %retval.0.i9.i to i64
  br label %ufs_data_ptr_to_cpu.exit

ufs_data_ptr_to_cpu.exit:                         ; preds = %cond.false.i, %cond.true.i
  %cond.i145 = phi i64 [ %retval.0.i.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i145)
  %tobool22.not = icmp eq i64 %cond.i145, 0
  br i1 %tobool22.not, label %ufs_data_ptr_to_cpu.exit.for.end39_crit_edge, label %if.end24

ufs_data_ptr_to_cpu.exit.for.end39_crit_edge:     ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39

if.end24:                                         ; preds = %ufs_data_ptr_to_cpu.exit
  %41 = ptrtoint ptr %s_bsize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_bsize, align 4
  %conv = zext i32 %42 to i64
  %call25 = tail call ptr @_ubh_bread_(ptr noundef %5, ptr noundef %1, i64 noundef %cond.i145, i64 noundef %conv) #7
  %arrayidx26 = getelementptr [3 x ptr], ptr %ubh, i32 0, i32 %i.0201
  %43 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call25, ptr %arrayidx26, align 4
  %tobool28.not = icmp eq ptr %call25, null
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end24
  %meta_lock = getelementptr i8, ptr %inode, i32 -176
  %lock.i = getelementptr i8, ptr %inode, i32 -140
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %44 = ptrtoint ptr %meta_lock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %meta_lock, align 4
  %inc.i.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i.i, ptr %meta_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  %dep_map.i.i.i = getelementptr i8, ptr %inode, i32 -172
  %46 = tail call ptr @llvm.returnaddress(i32 0) #7
  %47 = ptrtoint ptr %46 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %47) #7
  %48 = ptrtoint ptr %fs_magic.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fs_magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %49)
  %cmp.i147 = icmp eq i32 %49, 424935705
  br i1 %cmp.i147, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %p.0202 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %p.0202, align 8
  br label %ufs_data_ptr_clear.exit

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %p.0202 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %p.0202, align 4
  br label %ufs_data_ptr_clear.exit

ufs_data_ptr_clear.exit:                          ; preds = %if.else.i, %if.then.i
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  %52 = ptrtoint ptr %meta_lock to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %meta_lock, align 4
  %inc.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i, ptr %meta_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %for.end39

if.end31:                                         ; preds = %if.end24
  %add = add nuw i32 %i.0201, 1
  %arrayidx33 = getelementptr [4 x i32], ptr %offsets, i32 0, i32 %add
  %54 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx33, align 4
  %inc34 = add i32 %55, 1
  store i32 %inc34, ptr %arrayidx33, align 4
  %conv35 = zext i32 %55 to i64
  %56 = ptrtoint ptr %fs_magic.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fs_magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %57)
  %cmp.i150 = icmp eq i32 %57, 424935705
  %58 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_fshift.i, align 8
  br i1 %cmp.i150, label %if.then.i153, label %if.else.i154

if.then.i153:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %59, -3
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %conv35, %sh_prom.i
  %idxprom.i = trunc i64 %shr.i to i32
  %arrayidx.i151 = getelementptr %struct.ufs_buffer_head, ptr %call25, i32 0, i32 2, i32 %idxprom.i
  %60 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i151, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data.i, align 4
  %64 = ptrtoint ptr %s_fsize11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_fsize11.i, align 8
  %shr1.i = lshr i32 %65, 3
  %sub2.i = add nsw i32 %shr1.i, -1
  %idx.ext.i = and i32 %sub2.i, %55
  %add.ptr.i152 = getelementptr i64, ptr %63, i32 %idx.ext.i
  br label %ubh_get_data_ptr.exit

if.else.i154:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %sub5.i = add i32 %59, -2
  %sh_prom6.i = zext i32 %sub5.i to i64
  %shr7.i = lshr i64 %conv35, %sh_prom6.i
  %idxprom8.i = trunc i64 %shr7.i to i32
  %arrayidx9.i = getelementptr %struct.ufs_buffer_head, ptr %call25, i32 0, i32 2, i32 %idxprom8.i
  %66 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx9.i, align 4
  %b_data10.i = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %b_data10.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data10.i, align 4
  %70 = ptrtoint ptr %s_fsize11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_fsize11.i, align 8
  %shr12.i = lshr i32 %71, 2
  %sub13.i = add nsw i32 %shr12.i, -1
  %idx.ext16.i = and i32 %sub13.i, %55
  %add.ptr17.i = getelementptr i32, ptr %69, i32 %idx.ext16.i
  br label %ubh_get_data_ptr.exit

ubh_get_data_ptr.exit:                            ; preds = %if.else.i154, %if.then.i153
  %retval.0.i = phi ptr [ %add.ptr.i152, %if.then.i153 ], [ %add.ptr17.i, %if.else.i154 ]
  %exitcond.not = icmp eq i32 %add, %depth2.0
  br i1 %exitcond.not, label %ubh_get_data_ptr.exit.for.end39_crit_edge, label %ubh_get_data_ptr.exit.for.body20_crit_edge

ubh_get_data_ptr.exit.for.body20_crit_edge:       ; preds = %ubh_get_data_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

ubh_get_data_ptr.exit.for.end39_crit_edge:        ; preds = %ubh_get_data_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39

for.end39:                                        ; preds = %ubh_get_data_ptr.exit.for.end39_crit_edge, %ufs_data_ptr_clear.exit, %ufs_data_ptr_to_cpu.exit.for.end39_crit_edge
  %i.0199 = phi i32 [ %i.0201, %ufs_data_ptr_clear.exit ], [ %depth2.0, %ubh_get_data_ptr.exit.for.end39_crit_edge ], [ %i.0201, %ufs_data_ptr_to_cpu.exit.for.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0199)
  %tobool41.not204 = icmp eq i32 %i.0199, 0
  br i1 %tobool41.not204, label %for.end39.if.end47thread-pre-split215_crit_edge, label %while.body.lr.ph

for.end39.if.end47thread-pre-split215_crit_edge:  ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47thread-pre-split215

while.body.lr.ph:                                 ; preds = %for.end39
  %meta_lock.i = getelementptr i8, ptr %inode, i32 -176
  %lock.i.i = getelementptr i8, ptr %inode, i32 -140
  %dep_map.i.i.i.i = getelementptr i8, ptr %inode, i32 -172
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %free_branch_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %i.1205 = phi i32 [ %i.0199, %while.body.lr.ph ], [ %dec40, %free_branch_tail.exit.while.body_crit_edge ]
  %dec40 = add i32 %i.1205, -1
  %arrayidx43 = getelementptr [4 x i32], ptr %offsets, i32 0, i32 %i.1205
  %72 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx43, align 4
  %arrayidx44 = getelementptr [3 x ptr], ptr %ubh, i32 0, i32 %dec40
  %74 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx44, align 4
  %76 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i155 = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 33
  %78 = ptrtoint ptr %s_fs_info.i.i155 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i.i155, align 16
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = xor i32 %i.1205, -1
  %dec.i = add i32 %depth.0, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %s_apb10.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %81, i32 0, i32 47
  %83 = ptrtoint ptr %s_apb10.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_apb10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %73)
  %cmp11162.i = icmp ugt i32 %84, %73
  br i1 %tobool.not.i, label %for.cond9.preheader.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.body
  br i1 %cmp11162.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end29.i_crit_edge

for.cond.preheader.i.if.end29.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %fs_magic.i.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %81, i32 0, i32 62
  %s_fshift.i.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %81, i32 0, i32 18
  %s_fsize11.i.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %81, i32 0, i32 12
  br label %for.body.i

for.cond9.preheader.i:                            ; preds = %while.body
  br i1 %cmp11162.i, label %for.body13.lr.ph.i, label %for.cond9.preheader.i.if.end29.i_crit_edge

for.cond9.preheader.i.if.end29.i_crit_edge:       ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

for.body13.lr.ph.i:                               ; preds = %for.cond9.preheader.i
  %fs_magic.i80.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %81, i32 0, i32 62
  %s_fshift.i82.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %81, i32 0, i32 18
  %s_fsize11.i101.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %81, i32 0, i32 12
  %s_fpb.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %81, i32 0, i32 13
  br label %for.body13.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0160.i = phi i32 [ %73, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %conv.i156 = zext i32 %i.0160.i to i64
  %85 = ptrtoint ptr %fs_magic.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fs_magic.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %86)
  %cmp.i.i157 = icmp eq i32 %86, 424935705
  %87 = ptrtoint ptr %s_fshift.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_fshift.i.i, align 8
  br i1 %cmp.i.i157, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %88, -3
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shr.i.i = lshr i64 %conv.i156, %sh_prom.i.i
  %idxprom.i.i = trunc i64 %shr.i.i to i32
  %arrayidx.i.i = getelementptr %struct.ufs_buffer_head, ptr %75, i32 0, i32 2, i32 %idxprom.i.i
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_data.i.i, align 4
  %93 = ptrtoint ptr %s_fsize11.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_fsize11.i.i, align 8
  %shr1.i.i = lshr i32 %94, 3
  %sub2.i.i = add nsw i32 %shr1.i.i, -1
  %idx.ext.i.i = and i32 %sub2.i.i, %i.0160.i
  %add.ptr.i.i = getelementptr i64, ptr %92, i32 %idx.ext.i.i
  br label %ubh_get_data_ptr.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub5.i.i = add i32 %88, -2
  %sh_prom6.i.i = zext i32 %sub5.i.i to i64
  %shr7.i.i = lshr i64 %conv.i156, %sh_prom6.i.i
  %idxprom8.i.i = trunc i64 %shr7.i.i to i32
  %arrayidx9.i.i = getelementptr %struct.ufs_buffer_head, ptr %75, i32 0, i32 2, i32 %idxprom8.i.i
  %95 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx9.i.i, align 4
  %b_data10.i.i = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %b_data10.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %b_data10.i.i, align 4
  %99 = ptrtoint ptr %s_fsize11.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %s_fsize11.i.i, align 8
  %shr12.i.i = lshr i32 %100, 2
  %sub13.i.i = add nsw i32 %shr12.i.i, -1
  %idx.ext16.i.i = and i32 %sub13.i.i, %i.0160.i
  %add.ptr17.i.i = getelementptr i32, ptr %98, i32 %idx.ext16.i.i
  br label %ubh_get_data_ptr.exit.i

ubh_get_data_ptr.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i158 = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr17.i.i, %if.else.i.i ]
  %101 = ptrtoint ptr %s_fs_info.i.i155 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i.i155, align 16
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %fs_magic.i71.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %104, i32 0, i32 62
  %105 = ptrtoint ptr %fs_magic.i71.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fs_magic.i71.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %106)
  %cmp.i72.i = icmp eq i32 %106, 424935705
  br i1 %cmp.i72.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %ubh_get_data_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %retval.0.i.i158 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %retval.0.i.i158, align 8
  %s_bytesex.i.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %102, i32 0, i32 2
  %109 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_bytesex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i.i.i = icmp eq i32 %110, 0
  %111 = tail call i64 @llvm.bswap.i64(i64 %108) #7
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i64 %111, i64 %108
  br label %ufs_data_ptr_to_cpu.exit.i

cond.false.i.i:                                   ; preds = %ubh_get_data_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %retval.0.i.i158 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %retval.0.i.i158, align 4
  %s_bytesex.i7.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %102, i32 0, i32 2
  %114 = ptrtoint ptr %s_bytesex.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_bytesex.i7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.i8.i.i = icmp eq i32 %115, 0
  %116 = tail call i32 @llvm.bswap.i32(i32 %113) #7
  %retval.0.i9.i.i = select i1 %cmp.i8.i.i, i32 %116, i32 %113
  %conv.i.i = zext i32 %retval.0.i9.i.i to i64
  br label %ufs_data_ptr_to_cpu.exit.i

ufs_data_ptr_to_cpu.exit.i:                       ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %retval.0.i.i.i, %cond.true.i.i ], [ %conv.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %tobool3.not.i = icmp eq i64 %cond.i.i, 0
  br i1 %tobool3.not.i, label %ufs_data_ptr_to_cpu.exit.i.if.end.i_crit_edge, label %if.then4.i

ufs_data_ptr_to_cpu.exit.i.if.end.i_crit_edge:    ; preds = %ufs_data_ptr_to_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then4.i:                                       ; preds = %ufs_data_ptr_to_cpu.exit.i
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #7
  %117 = ptrtoint ptr %meta_lock.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %meta_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %118, 1
  store i32 %inc.i.i.i.i.i, ptr %meta_lock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  %119 = tail call ptr @llvm.returnaddress(i32 0) #7
  %120 = ptrtoint ptr %119 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %120) #7
  %121 = ptrtoint ptr %fs_magic.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fs_magic.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %122)
  %cmp.i75.i = icmp eq i32 %122, 424935705
  br i1 %cmp.i75.i, label %if.then.i76.i, label %if.else.i77.i

if.then.i76.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %retval.0.i.i158 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 0, ptr %retval.0.i.i158, align 8
  br label %ufs_data_ptr_clear.exit.i

if.else.i77.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %retval.0.i.i158 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %retval.0.i.i158, align 4
  br label %ufs_data_ptr_clear.exit.i

ufs_data_ptr_clear.exit.i:                        ; preds = %if.else.i77.i, %if.then.i76.i
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %120) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  %125 = ptrtoint ptr %meta_lock.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %meta_lock.i, align 4
  %inc.i.i.i.i159 = add i32 %126, 1
  store i32 %inc.i.i.i.i159, ptr %meta_lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #7
  tail call void @ubh_mark_buffer_dirty(ptr noundef %75) #7
  tail call fastcc void @free_full_branch(ptr noundef %inode, i64 noundef %cond.i.i, i32 noundef %dec.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %ufs_data_ptr_clear.exit.i, %ufs_data_ptr_to_cpu.exit.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %i.0160.i, 1
  %127 = ptrtoint ptr %s_apb10.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %s_apb10.i, align 4
  %cmp.i160 = icmp ult i32 %inc.i, %128
  br i1 %cmp.i160, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body13.i:                                     ; preds = %if.end25.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %i.1165.i = phi i32 [ %73, %for.body13.lr.ph.i ], [ %inc27.i, %if.end25.i.for.body13.i_crit_edge ]
  %ctx.sroa.11.0164.i = phi i32 [ 0, %for.body13.lr.ph.i ], [ %ctx.sroa.11.2.i, %if.end25.i.for.body13.i_crit_edge ]
  %ctx.sroa.7150.0163.i = phi i64 [ 0, %for.body13.lr.ph.i ], [ %ctx.sroa.7150.1.i, %if.end25.i.for.body13.i_crit_edge ]
  %conv15.i = zext i32 %i.1165.i to i64
  %129 = ptrtoint ptr %fs_magic.i80.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %fs_magic.i80.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %130)
  %cmp.i81.i = icmp eq i32 %130, 424935705
  %131 = ptrtoint ptr %s_fshift.i82.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %s_fshift.i82.i, align 8
  br i1 %cmp.i81.i, label %if.then.i94.i, label %if.else.i106.i

if.then.i94.i:                                    ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i83.i = add i32 %132, -3
  %sh_prom.i84.i = zext i32 %sub.i83.i to i64
  %shr.i85.i = lshr i64 %conv15.i, %sh_prom.i84.i
  %idxprom.i86.i = trunc i64 %shr.i85.i to i32
  %arrayidx.i87.i = getelementptr %struct.ufs_buffer_head, ptr %75, i32 0, i32 2, i32 %idxprom.i86.i
  %133 = ptrtoint ptr %arrayidx.i87.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i87.i, align 4
  %b_data.i88.i = getelementptr inbounds %struct.buffer_head, ptr %134, i32 0, i32 5
  %135 = ptrtoint ptr %b_data.i88.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %b_data.i88.i, align 4
  %137 = ptrtoint ptr %s_fsize11.i101.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %s_fsize11.i101.i, align 8
  %shr1.i90.i = lshr i32 %138, 3
  %sub2.i91.i = add nsw i32 %shr1.i90.i, -1
  %idx.ext.i92.i = and i32 %sub2.i91.i, %i.1165.i
  %add.ptr.i93.i = getelementptr i64, ptr %136, i32 %idx.ext.i92.i
  br label %ubh_get_data_ptr.exit108.i

if.else.i106.i:                                   ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub5.i95.i = add i32 %132, -2
  %sh_prom6.i96.i = zext i32 %sub5.i95.i to i64
  %shr7.i97.i = lshr i64 %conv15.i, %sh_prom6.i96.i
  %idxprom8.i98.i = trunc i64 %shr7.i97.i to i32
  %arrayidx9.i99.i = getelementptr %struct.ufs_buffer_head, ptr %75, i32 0, i32 2, i32 %idxprom8.i98.i
  %139 = ptrtoint ptr %arrayidx9.i99.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx9.i99.i, align 4
  %b_data10.i100.i = getelementptr inbounds %struct.buffer_head, ptr %140, i32 0, i32 5
  %141 = ptrtoint ptr %b_data10.i100.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %b_data10.i100.i, align 4
  %143 = ptrtoint ptr %s_fsize11.i101.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %s_fsize11.i101.i, align 8
  %shr12.i102.i = lshr i32 %144, 2
  %sub13.i103.i = add nsw i32 %shr12.i102.i, -1
  %idx.ext16.i104.i = and i32 %sub13.i103.i, %i.1165.i
  %add.ptr17.i105.i = getelementptr i32, ptr %142, i32 %idx.ext16.i104.i
  br label %ubh_get_data_ptr.exit108.i

ubh_get_data_ptr.exit108.i:                       ; preds = %if.else.i106.i, %if.then.i94.i
  %retval.0.i107.i = phi ptr [ %add.ptr.i93.i, %if.then.i94.i ], [ %add.ptr17.i105.i, %if.else.i106.i ]
  %145 = ptrtoint ptr %s_fs_info.i.i155 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s_fs_info.i.i155, align 16
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %fs_magic.i110.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %148, i32 0, i32 62
  %149 = ptrtoint ptr %fs_magic.i110.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %fs_magic.i110.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %150)
  %cmp.i111.i = icmp eq i32 %150, 424935705
  br i1 %cmp.i111.i, label %cond.true.i115.i, label %cond.false.i120.i

cond.true.i115.i:                                 ; preds = %ubh_get_data_ptr.exit108.i
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %retval.0.i107.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %retval.0.i107.i, align 8
  %s_bytesex.i.i112.i = getelementptr inbounds %struct.ufs_sb_info, ptr %146, i32 0, i32 2
  %153 = ptrtoint ptr %s_bytesex.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %s_bytesex.i.i112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.i.i113.i = icmp eq i32 %154, 0
  %155 = tail call i64 @llvm.bswap.i64(i64 %152) #7
  %retval.0.i.i114.i = select i1 %cmp.i.i113.i, i64 %155, i64 %152
  br label %ufs_data_ptr_to_cpu.exit122.i

cond.false.i120.i:                                ; preds = %ubh_get_data_ptr.exit108.i
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %retval.0.i107.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %retval.0.i107.i, align 4
  %s_bytesex.i7.i116.i = getelementptr inbounds %struct.ufs_sb_info, ptr %146, i32 0, i32 2
  %158 = ptrtoint ptr %s_bytesex.i7.i116.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %s_bytesex.i7.i116.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.i8.i117.i = icmp eq i32 %159, 0
  %160 = tail call i32 @llvm.bswap.i32(i32 %157) #7
  %retval.0.i9.i118.i = select i1 %cmp.i8.i117.i, i32 %160, i32 %157
  %conv.i119.i = zext i32 %retval.0.i9.i118.i to i64
  br label %ufs_data_ptr_to_cpu.exit122.i

ufs_data_ptr_to_cpu.exit122.i:                    ; preds = %cond.false.i120.i, %cond.true.i115.i
  %cond.i121.i = phi i64 [ %retval.0.i.i114.i, %cond.true.i115.i ], [ %conv.i119.i, %cond.false.i120.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i121.i)
  %tobool19.not.i = icmp eq i64 %cond.i121.i, 0
  br i1 %tobool19.not.i, label %ufs_data_ptr_to_cpu.exit122.i.if.end25.i_crit_edge, label %if.then20.i

ufs_data_ptr_to_cpu.exit122.i.if.end25.i_crit_edge: ; preds = %ufs_data_ptr_to_cpu.exit122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then20.i:                                      ; preds = %ufs_data_ptr_to_cpu.exit122.i
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #7
  %161 = ptrtoint ptr %meta_lock.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %meta_lock.i, align 4
  %inc.i.i.i.i125.i = add i32 %162, 1
  store i32 %inc.i.i.i.i125.i, ptr %meta_lock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  %163 = tail call ptr @llvm.returnaddress(i32 0) #7
  %164 = ptrtoint ptr %163 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %164) #7
  %165 = ptrtoint ptr %fs_magic.i80.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %fs_magic.i80.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %166)
  %cmp.i128.i = icmp eq i32 %166, 424935705
  br i1 %cmp.i128.i, label %if.then.i129.i, label %if.else.i130.i

if.then.i129.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %retval.0.i107.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 0, ptr %retval.0.i107.i, align 8
  br label %ufs_data_ptr_clear.exit131.i

if.else.i130.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %retval.0.i107.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %retval.0.i107.i, align 4
  br label %ufs_data_ptr_clear.exit131.i

ufs_data_ptr_clear.exit131.i:                     ; preds = %if.else.i130.i, %if.then.i129.i
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %164) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  %169 = ptrtoint ptr %meta_lock.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %meta_lock.i, align 4
  %inc.i.i.i134.i = add i32 %170, 1
  store i32 %inc.i.i.i134.i, ptr %meta_lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #7
  tail call void @ubh_mark_buffer_dirty(ptr noundef %75) #7
  %171 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %s_fpb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctx.sroa.11.0164.i)
  %tobool.not.i.i = icmp eq i32 %ctx.sroa.11.0164.i, 0
  br i1 %tobool.not.i.i, label %ufs_data_ptr_clear.exit131.i.free_data.exit.i_crit_edge, label %land.lhs.true.i.i

ufs_data_ptr_clear.exit131.i.free_data.exit.i_crit_edge: ; preds = %ufs_data_ptr_clear.exit131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_data.exit.i

land.lhs.true.i.i:                                ; preds = %ufs_data_ptr_clear.exit131.i
  call void @__sanitizer_cov_trace_cmp8(i64 %ctx.sroa.7150.0163.i, i64 %cond.i121.i)
  %cmp.not.i.i = icmp eq i64 %ctx.sroa.7150.0163.i, %cond.i121.i
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.free_data.exit.i_crit_edge, label %if.then.i138.i

land.lhs.true.i.i.free_data.exit.i_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_data.exit.i

if.then.i138.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i136.i = zext i32 %ctx.sroa.11.0164.i to i64
  %sub.i137.i = sub i64 %ctx.sroa.7150.0163.i, %conv.i136.i
  tail call void @ufs_free_blocks(ptr noundef %inode, i64 noundef %sub.i137.i, i32 noundef %ctx.sroa.11.0164.i) #7
  br label %free_data.exit.i

free_data.exit.i:                                 ; preds = %if.then.i138.i, %land.lhs.true.i.i.free_data.exit.i_crit_edge, %ufs_data_ptr_clear.exit131.i.free_data.exit.i_crit_edge
  %ctx.sroa.11.1.i = phi i32 [ 0, %ufs_data_ptr_clear.exit131.i.free_data.exit.i_crit_edge ], [ %ctx.sroa.11.0164.i, %land.lhs.true.i.i.free_data.exit.i_crit_edge ], [ 0, %if.then.i138.i ]
  %add.i.i = add i32 %ctx.sroa.11.1.i, %172
  %conv7.i.i = zext i32 %172 to i64
  %add8.i.i = add i64 %cond.i121.i, %conv7.i.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %free_data.exit.i, %ufs_data_ptr_to_cpu.exit122.i.if.end25.i_crit_edge
  %ctx.sroa.7150.1.i = phi i64 [ %ctx.sroa.7150.0163.i, %ufs_data_ptr_to_cpu.exit122.i.if.end25.i_crit_edge ], [ %add8.i.i, %free_data.exit.i ]
  %ctx.sroa.11.2.i = phi i32 [ %ctx.sroa.11.0164.i, %ufs_data_ptr_to_cpu.exit122.i.if.end25.i_crit_edge ], [ %add.i.i, %free_data.exit.i ]
  %inc27.i = add nuw i32 %i.1165.i, 1
  %173 = ptrtoint ptr %s_apb10.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %s_apb10.i, align 4
  %cmp11.i = icmp ult i32 %inc27.i, %174
  br i1 %cmp11.i, label %if.end25.i.for.body13.i_crit_edge, label %for.end28.i

if.end25.i.for.body13.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13.i

for.end28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctx.sroa.11.2.i)
  %tobool.not.i140.i = icmp eq i32 %ctx.sroa.11.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ctx.sroa.7150.1.i)
  %cmp.not.i142.i = icmp eq i64 %ctx.sroa.7150.1.i, 0
  %or.cond.i = select i1 %tobool.not.i140.i, i1 true, i1 %cmp.not.i142.i
  br i1 %or.cond.i, label %for.end28.i.if.end29.i_crit_edge, label %if.then.i146.i

for.end28.i.if.end29.i_crit_edge:                 ; preds = %for.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then.i146.i:                                   ; preds = %for.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i144.i = zext i32 %ctx.sroa.11.2.i to i64
  %sub.i145.i = sub i64 %ctx.sroa.7150.1.i, %conv.i144.i
  tail call void @ufs_free_blocks(ptr noundef %inode, i64 noundef %sub.i145.i, i32 noundef %ctx.sroa.11.2.i) #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i146.i, %for.end28.i.if.end29.i_crit_edge, %if.end.i.if.end29.i_crit_edge, %for.cond9.preheader.i.if.end29.i_crit_edge, %for.cond.preheader.i.if.end29.i_crit_edge
  %175 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %176, i32 0, i32 10
  %177 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %178, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool31.not.i, label %lor.lhs.false.i, label %if.end29.i.land.lhs.true.i_crit_edge

if.end29.i.land.lhs.true.i_crit_edge:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end29.i
  %179 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %i_flags.i, align 4
  %and32.i = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %lor.lhs.false.i.free_branch_tail.exit_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

lor.lhs.false.i.free_branch_tail.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_branch_tail.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end29.i.land.lhs.true.i_crit_edge
  %call34.i = tail call i32 @ubh_buffer_dirty(ptr noundef %75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true.i.free_branch_tail.exit_crit_edge, label %if.then36.i

land.lhs.true.i.free_branch_tail.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_branch_tail.exit

if.then36.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubh_sync_block(ptr noundef %75) #7
  br label %free_branch_tail.exit

free_branch_tail.exit:                            ; preds = %if.then36.i, %land.lhs.true.i.free_branch_tail.exit_crit_edge, %lor.lhs.false.i.free_branch_tail.exit_crit_edge
  tail call void @ubh_brelse(ptr noundef %75) #7
  %tobool41.not = icmp eq i32 %dec40, 0
  br i1 %tobool41.not, label %free_branch_tail.exit.if.end47thread-pre-split215_crit_edge, label %free_branch_tail.exit.while.body_crit_edge

free_branch_tail.exit.while.body_crit_edge:       ; preds = %free_branch_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

free_branch_tail.exit.if.end47thread-pre-split215_crit_edge: ; preds = %free_branch_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47thread-pre-split215

if.end47thread-pre-split215:                      ; preds = %free_branch_tail.exit.if.end47thread-pre-split215_crit_edge, %for.end39.if.end47thread-pre-split215_crit_edge
  %181 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pr.pr = load i32, ptr %offsets, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end47thread-pre-split215, %ufs_get_direct_data_ptr.exit.if.end47_crit_edge
  %.pr = phi i32 [ %.pr.pr, %if.end47thread-pre-split215 ], [ %inc, %ufs_get_direct_data_ptr.exit.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.pr)
  %cmp50206 = icmp ult i32 %.pr, 15
  br i1 %cmp50206, label %if.end47.ufs_get_direct_data_ptr.exit168.lr.ph_crit_edge, label %if.end47.for.end64_crit_edge

if.end47.for.end64_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end64

if.end47.ufs_get_direct_data_ptr.exit168.lr.ph_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %ufs_get_direct_data_ptr.exit168.lr.ph

ufs_get_direct_data_ptr.exit168.lr.ph:            ; preds = %if.end47.ufs_get_direct_data_ptr.exit168.lr.ph_crit_edge, %if.end47.thread
  %182 = phi i32 [ 12, %if.end47.thread ], [ %.pr, %if.end47.ufs_get_direct_data_ptr.exit168.lr.ph_crit_edge ]
  %fs_magic.i163 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  %meta_lock57 = getelementptr i8, ptr %inode, i32 -176
  %lock.i183 = getelementptr i8, ptr %inode, i32 -140
  %dep_map.i.i.i185 = getelementptr i8, ptr %inode, i32 -172
  br label %ufs_get_direct_data_ptr.exit168

ufs_get_direct_data_ptr.exit168:                  ; preds = %for.inc62.ufs_get_direct_data_ptr.exit168_crit_edge, %ufs_get_direct_data_ptr.exit168.lr.ph
  %i.2207 = phi i32 [ %182, %ufs_get_direct_data_ptr.exit168.lr.ph ], [ %inc63, %for.inc62.ufs_get_direct_data_ptr.exit168_crit_edge ]
  %183 = ptrtoint ptr %fs_magic.i163 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %fs_magic.i163, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %184)
  %cmp6.i164 = icmp eq i32 %184, 424935705
  %arrayidx.i165 = getelementptr [15 x i64], ptr %add.ptr.i, i32 0, i32 %i.2207
  %arrayidx8.i166 = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 %i.2207
  %cond.i167 = select i1 %cmp6.i164, ptr %arrayidx.i165, ptr %arrayidx8.i166
  %185 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %s_fs_info.i, align 16
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %fs_magic.i170 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %188, i32 0, i32 62
  %189 = ptrtoint ptr %fs_magic.i170 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %fs_magic.i170, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %190)
  %cmp.i171 = icmp eq i32 %190, 424935705
  br i1 %cmp.i171, label %cond.true.i175, label %cond.false.i180

cond.true.i175:                                   ; preds = %ufs_get_direct_data_ptr.exit168
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %cond.i167 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %cond.i167, align 8
  %s_bytesex.i.i172 = getelementptr inbounds %struct.ufs_sb_info, ptr %186, i32 0, i32 2
  %193 = ptrtoint ptr %s_bytesex.i.i172 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_bytesex.i.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp.i.i173 = icmp eq i32 %194, 0
  %195 = tail call i64 @llvm.bswap.i64(i64 %192) #7
  %retval.0.i.i174 = select i1 %cmp.i.i173, i64 %195, i64 %192
  br label %ufs_data_ptr_to_cpu.exit182

cond.false.i180:                                  ; preds = %ufs_get_direct_data_ptr.exit168
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %cond.i167 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cond.i167, align 4
  %s_bytesex.i7.i176 = getelementptr inbounds %struct.ufs_sb_info, ptr %186, i32 0, i32 2
  %198 = ptrtoint ptr %s_bytesex.i7.i176 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %s_bytesex.i7.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp.i8.i177 = icmp eq i32 %199, 0
  %200 = tail call i32 @llvm.bswap.i32(i32 %197) #7
  %retval.0.i9.i178 = select i1 %cmp.i8.i177, i32 %200, i32 %197
  %conv.i179 = zext i32 %retval.0.i9.i178 to i64
  br label %ufs_data_ptr_to_cpu.exit182

ufs_data_ptr_to_cpu.exit182:                      ; preds = %cond.false.i180, %cond.true.i175
  %cond.i181 = phi i64 [ %retval.0.i.i174, %cond.true.i175 ], [ %conv.i179, %cond.false.i180 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i181)
  %tobool55.not = icmp eq i64 %cond.i181, 0
  br i1 %tobool55.not, label %ufs_data_ptr_to_cpu.exit182.for.inc62_crit_edge, label %if.then56

ufs_data_ptr_to_cpu.exit182.for.inc62_crit_edge:  ; preds = %ufs_data_ptr_to_cpu.exit182
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62

if.then56:                                        ; preds = %ufs_data_ptr_to_cpu.exit182
  tail call void @_raw_spin_lock(ptr noundef %lock.i183) #7
  %201 = ptrtoint ptr %meta_lock57 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %meta_lock57, align 4
  %inc.i.i.i.i184 = add i32 %202, 1
  store i32 %inc.i.i.i.i184, ptr %meta_lock57, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  %203 = tail call ptr @llvm.returnaddress(i32 0) #7
  %204 = ptrtoint ptr %203 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i185, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %204) #7
  %205 = ptrtoint ptr %fs_magic.i163 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %fs_magic.i163, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %206)
  %cmp.i187 = icmp eq i32 %206, 424935705
  br i1 %cmp.i187, label %if.then.i188, label %if.else.i189

if.then.i188:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %207 = ptrtoint ptr %cond.i167 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 0, ptr %cond.i167, align 8
  br label %ufs_data_ptr_clear.exit191

if.else.i189:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %208 = ptrtoint ptr %cond.i167 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %cond.i167, align 4
  br label %ufs_data_ptr_clear.exit191

ufs_data_ptr_clear.exit191:                       ; preds = %if.else.i189, %if.then.i188
  tail call void @lock_release(ptr noundef %dep_map.i.i.i185, i32 noundef %204) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  %209 = ptrtoint ptr %meta_lock57 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %meta_lock57, align 4
  %inc.i.i.i193 = add i32 %210, 1
  store i32 %inc.i.i.i193, ptr %meta_lock57, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i183) #7
  %add60 = add nsw i32 %i.2207, -11
  tail call fastcc void @free_full_branch(ptr noundef %inode, i64 noundef %cond.i181, i32 noundef %add60)
  br label %for.inc62

for.inc62:                                        ; preds = %ufs_data_ptr_clear.exit191, %ufs_data_ptr_to_cpu.exit182.for.inc62_crit_edge
  %inc63 = add i32 %i.2207, 1
  %exitcond211.not = icmp eq i32 %inc63, 15
  br i1 %exitcond211.not, label %for.inc62.for.end64_crit_edge, label %for.inc62.ufs_get_direct_data_ptr.exit168_crit_edge

for.inc62.ufs_get_direct_data_ptr.exit168_crit_edge: ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #9
  br label %ufs_get_direct_data_ptr.exit168

for.inc62.for.end64_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end64

for.end64:                                        ; preds = %for.inc62.for.end64_crit_edge, %if.end47.for.end64_crit_edge
  %lock.i195 = getelementptr i8, ptr %inode, i32 -140
  tail call void @_raw_spin_lock(ptr noundef %lock.i195) #7
  %211 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %i_size, align 8
  %s_fsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 12
  %213 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %s_fsize, align 8
  %conv67 = zext i32 %214 to i64
  %add68 = add i64 %212, -1
  %sub69 = add i64 %add68, %conv67
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %215 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %s_fshift, align 8
  %sh_prom70 = zext i32 %216 to i64
  %shr71 = ashr i64 %sub69, %sh_prom70
  %i_lastfrag = getelementptr i8, ptr %inode, i32 -184
  %217 = ptrtoint ptr %i_lastfrag to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 %shr71, ptr %i_lastfrag, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i195) #7
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  tail call void @mutex_unlock(ptr noundef %truncate_mutex) #7
  br label %cleanup74

cleanup74:                                        ; preds = %for.end64, %if.then.cleanup74_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ubh) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_free_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %call2 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ia_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.not = icmp eq i64 %5, %7
  br i1 %cmp.not, label %land.lhs.true.if.end10_crit_edge, label %if.then4

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %land.lhs.true
  %call6 = tail call fastcc i32 @ufs_truncate(ptr noundef %1, i64 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #7
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call2, %entry.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_truncate(ptr noundef %inode, i64 noundef %size) unnamed_addr #0 align 64 {
entry:
  %tmp50 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_truncate.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_truncate, %do.body4)) #7
          to label %if.then [label %do.body4], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_truncate.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1190, ptr noundef nonnull @.str.40) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_truncate.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_truncate, %do.end22)) #7
          to label %if.then18 [label %do.end22], !srcloc !120

if.then18:                                        ; preds = %do.body4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.then18
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %i_size_seqcount.i) #7
  %2 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %do.body.i.while.end.i_crit_edge, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  br label %do.end.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !129
  %4 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %5, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %3, %do.body.i.while.end.i_crit_edge ], [ %5, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !130
  %6 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  %8 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %9, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_truncate.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.42, i32 noundef %1, i64 noundef %size, i64 noundef %7) #7
  br label %do.end22

do.end22:                                         ; preds = %i_size_read.exit, %do.body4
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = and i16 %11, -4096
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %12, label %do.end22.cleanup_crit_edge [
    i16 -32768, label %do.end22.if.end36_crit_edge
    i16 16384, label %do.end22.if.end36_crit_edge143
    i16 -24576, label %do.end22.if.end36_crit_edge144
  ]

do.end22.if.end36_crit_edge144:                   ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end22.if.end36_crit_edge143:                   ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end22.if.end36_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %do.end22.if.end36_crit_edge, %do.end22.if.end36_crit_edge143, %do.end22.if.end36_crit_edge144
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags, align 4
  %16 = and i32 %15, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %if.end44, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %s_fsize.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %s_fsize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_fsize.i, align 8
  %conv.i = zext i32 %25 to i64
  %add.i = add i64 %size, -1
  %sub.i = add i64 %add.i, %conv.i
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %23, i32 0, i32 18
  %26 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_fshift.i, align 8
  %sh_prom.i = zext i32 %27 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i)
  %tobool.not.i115 = icmp eq i64 %shr.i, 0
  br i1 %tobool.not.i115, label %if.end44.if.end48_crit_edge, label %if.end.i

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end.i:                                         ; preds = %if.end44
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %28 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_mapping.i, align 8
  %dec.i = add i64 %shr.i, -1
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %30 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i_blkbits.i, align 2
  %conv1.i = zext i8 %31 to i32
  %sub2.i = sub nsw i32 12, %conv1.i
  %sh_prom3.i = zext i32 %sub2.i to i64
  %shr4.i = lshr i64 %dec.i, %sh_prom3.i
  %conv5.i = trunc i64 %shr4.i to i32
  %call6.i = tail call ptr @ufs_get_locked_page(ptr noundef %29, i32 noundef %conv5.i) #7
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.do.body51_crit_edge, label %if.end9.i

if.end.i.do.body51_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

if.end9.i:                                        ; preds = %if.end.i
  %32 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i_blkbits.i, align 2
  %conv11.i = zext i8 %33 to i32
  %sub12.i = sub nsw i32 12, %conv11.i
  %notmask.i = shl nsw i32 -1, %sub12.i
  %sub13.i = xor i32 %notmask.i, -1
  %34 = trunc i64 %dec.i to i32
  %conv15.i = and i32 %sub13.i, %34
  %35 = ptrtoint ptr %call6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %call6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i.i = icmp eq i32 %36, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !121

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %call6.i, ptr noundef nonnull @.str.45) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !132
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end9.i
  %37 = ptrtoint ptr %call6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %call6.i, align 4
  %39 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool17.not.i = icmp eq i32 %39, 0
  br i1 %tobool17.not.i, label %do.body22.i, label %do.end28.i, !prof !121

do.body22.i:                                      ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1076, 0\0A.popsection", ""() #7, !srcloc !133
  unreachable

do.end28.i:                                       ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %call6.i, i32 0, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %private.i, align 4
  %42 = inttoptr i32 %41 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp121.not.i = icmp eq i32 %conv15.i, 0
  br i1 %cmp121.not.i, label %do.end28.i.for.end.i_crit_edge, label %do.end28.i.for.body.i_crit_edge

do.end28.i.for.body.i_crit_edge:                  ; preds = %do.end28.i
  br label %for.body.i

do.end28.i.for.end.i_crit_edge:                   ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end28.i.for.body.i_crit_edge
  %bh.0123.i = phi ptr [ %44, %for.body.i.for.body.i_crit_edge ], [ %42, %do.end28.i.for.body.i_crit_edge ]
  %i.0122.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end28.i.for.body.i_crit_edge ]
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0123.i, i32 0, i32 1
  %43 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_this_page.i, align 4
  %inc.i = add nuw i32 %i.0122.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv15.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end28.i.for.end.i_crit_edge
  %bh.0.lcssa.i = phi ptr [ %42, %do.end28.i.for.end.i_crit_edge ], [ %44, %for.body.i.for.end.i_crit_edge ]
  %call30.i = tail call i32 @ufs_getfrag_block(ptr noundef %inode, i64 noundef %dec.i, ptr noundef %bh.0.lcssa.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end39.i, label %ufs_alloc_lastblock.exit.thread127, !prof !123

ufs_alloc_lastblock.exit.thread127:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ufs_put_locked_page(ptr noundef %call6.i) #7
  br label %do.body51

if.end39.i:                                       ; preds = %for.end.i
  %45 = ptrtoint ptr %bh.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %bh.0.lcssa.i, align 4
  %47 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool41.not.i = icmp eq i32 %47, 0
  br i1 %tobool41.not.i, label %if.end39.i.if.end44.i_crit_edge, label %if.then42.i

if.end39.i.if.end44.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end39.i
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bh.0.lcssa.i) #7
  %b_bdev.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa.i, i32 0, i32 6
  %48 = ptrtoint ptr %b_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_bdev.i.i, align 8
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa.i, i32 0, i32 3
  %50 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %b_blocknr.i.i, align 8
  tail call void @clean_bdev_aliases(ptr noundef %49, i64 noundef %51, i64 noundef 1) #7
  %52 = ptrtoint ptr %bh.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %bh.0.lcssa.i, align 4
  %and1.i.i112.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i112.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i112.i, 0
  br i1 %tobool.not.i.i, label %if.then.i113.i, label %if.then42.i.set_buffer_uptodate.exit.i_crit_edge

if.then42.i.set_buffer_uptodate.exit.i_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_buffer_uptodate.exit.i

if.then.i113.i:                                   ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.lcssa.i) #7
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i113.i, %if.then42.i.set_buffer_uptodate.exit.i_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %bh.0.lcssa.i) #7
  %call43.i = tail call zeroext i1 @set_page_dirty(ptr noundef %call6.i) #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %set_buffer_uptodate.exit.i, %if.end39.i.if.end44.i_crit_edge
  %s_fpbshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %23, i32 0, i32 19
  %54 = ptrtoint ptr %s_fpbshift.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_fpbshift.i, align 4
  %shl45.i = shl i32 12, %55
  %conv46.i = sext i32 %shl45.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %dec.i, i64 %conv46.i)
  %cmp47.not.i = icmp ult i64 %dec.i, %conv46.i
  br i1 %cmp47.not.i, label %if.end44.i.if.end48.sink.split_crit_edge, label %if.then49.i

if.end44.i.if.end48.sink.split_crit_edge:         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.sink.split

if.then49.i:                                      ; preds = %if.end44.i
  %s_fpb.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %23, i32 0, i32 13
  %56 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_fpb.i, align 4
  %s_fpbmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %23, i32 0, i32 46
  %58 = ptrtoint ptr %s_fpbmask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_fpbmask.i, align 8
  %60 = and i32 %59, %34
  %61 = xor i32 %60, -1
  %conv55.i = add i32 %57, %61
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa.i, i32 0, i32 3
  %62 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %b_blocknr.i, align 8
  %add56.i = add i64 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv55.i)
  %cmp58124.not.i = icmp eq i32 %conv55.i, 0
  br i1 %cmp58124.not.i, label %if.then49.i.if.end48.sink.split_crit_edge, label %for.body60.lr.ph.i

if.then49.i.if.end48.sink.split_crit_edge:        ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.sink.split

for.body60.lr.ph.i:                               ; preds = %if.then49.i
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
  br label %for.body60.i

for.body60.i:                                     ; preds = %brelse.exit.i.for.body60.i_crit_edge, %for.body60.lr.ph.i
  %i.1125.i = phi i32 [ 0, %for.body60.lr.ph.i ], [ %inc66.i, %brelse.exit.i.for.body60.i_crit_edge ]
  %conv61.i = zext i32 %i.1125.i to i64
  %add62.i = add i64 %add56.i, %conv61.i
  %64 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_bdev.i.i, align 4
  %66 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__getblk_gfp(ptr noundef %65, i64 noundef %add62.i, i32 noundef %67, i32 noundef 8) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 366) #7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i.i, i32 noundef 4) #7
  %68 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %call.i.i, align 4
  %and.i.i.i.i.i = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %for.body60.i.if.then.i118.i_crit_edge

for.body60.i.if.then.i118.i_crit_edge:            ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i118.i

trylock_buffer.exit.i.i:                          ; preds = %for.body60.i
  tail call void @llvm.prefetch.p0(ptr %call.i.i, i32 1, i32 3, i32 1) #7
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i.i, ptr %call.i.i, i32 4, ptr elementtype(i32) %call.i.i) #7, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  %71 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.not.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i118.i_crit_edge

trylock_buffer.exit.i.i.if.then.i118.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i118.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit.i

if.then.i118.i:                                   ; preds = %trylock_buffer.exit.i.i.if.then.i118.i_crit_edge, %for.body60.i.if.then.i118.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %call.i.i) #7
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i118.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %72 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %b_data.i, align 4
  %74 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_blocksize.i.i, align 16
  %76 = call ptr @memset(ptr %73, i32 0, i32 %75)
  %77 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i114.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i114.i)
  %tobool.not.i115.i = icmp eq i32 %and1.i.i114.i, 0
  br i1 %tobool.not.i115.i, label %if.then.i116.i, label %lock_buffer.exit.i.set_buffer_uptodate.exit117.i_crit_edge

lock_buffer.exit.i.set_buffer_uptodate.exit117.i_crit_edge: ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_buffer_uptodate.exit117.i

if.then.i116.i:                                   ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call.i.i) #7
  br label %set_buffer_uptodate.exit117.i

set_buffer_uptodate.exit117.i:                    ; preds = %if.then.i116.i, %lock_buffer.exit.i.set_buffer_uptodate.exit117.i_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %call.i.i) #7
  tail call void @unlock_buffer(ptr noundef %call.i.i) #7
  %call64.i = tail call i32 @sync_dirty_buffer(ptr noundef %call.i.i) #7
  %tobool.not.i119.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i119.i, label %set_buffer_uptodate.exit117.i.brelse.exit.i_crit_edge, label %if.then.i120.i

set_buffer_uptodate.exit117.i.brelse.exit.i_crit_edge: ; preds = %set_buffer_uptodate.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit.i

if.then.i120.i:                                   ; preds = %set_buffer_uptodate.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #7
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i120.i, %set_buffer_uptodate.exit117.i.brelse.exit.i_crit_edge
  %inc66.i = add nuw i32 %i.1125.i, 1
  %exitcond126.not.i = icmp eq i32 %inc66.i, %conv55.i
  br i1 %exitcond126.not.i, label %brelse.exit.i.if.end48.sink.split_crit_edge, label %brelse.exit.i.for.body60.i_crit_edge

brelse.exit.i.for.body60.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body60.i

brelse.exit.i.if.end48.sink.split_crit_edge:      ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %brelse.exit.i.if.end48.sink.split_crit_edge, %if.then49.i.if.end48.sink.split_crit_edge, %if.end44.i.if.end48.sink.split_crit_edge
  tail call fastcc void @ufs_put_locked_page(ptr noundef %call6.i) #7
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.end44.if.end48_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %79 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_mapping, align 8
  %call49 = tail call i32 @block_truncate_page(ptr noundef %80, i64 noundef %size, ptr noundef nonnull @ufs_getfrag_block) #7
  tail call void @truncate_setsize(ptr noundef %inode, i64 noundef %size) #7
  tail call fastcc void @ufs_truncate_blocks(ptr noundef %inode)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp50) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp50, ptr noundef %inode) #7
  %81 = call ptr @memcpy(ptr %i_ctime, ptr %tmp50, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp50) #7
  %82 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %do.body51

do.body51:                                        ; preds = %if.end48, %ufs_alloc_lastblock.exit.thread127, %if.end.i.do.body51_crit_edge
  %err.0.i120 = phi i32 [ 0, %if.end48 ], [ %call30.i, %ufs_alloc_lastblock.exit.thread127 ], [ -5, %if.end.i.do.body51_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_truncate.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_truncate, %do.body69)) #7
          to label %if.then65 [label %do.body69], !srcloc !120

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_truncate.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1211, ptr noundef nonnull @.str.40) #7
  br label %do.body69

do.body69:                                        ; preds = %if.then65, %do.body51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_truncate.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_truncate, %cleanup)) #7
          to label %if.then83 [label %cleanup], !srcloc !120

if.then83:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_truncate.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.44, i32 noundef %err.0.i120) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %do.body69, %if.end36.cleanup_crit_edge, %do.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end22.cleanup_crit_edge ], [ -1, %if.end36.cleanup_crit_edge ], [ %err.0.i120, %if.then83 ], [ %err.0.i120, %do.body69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_block_to_path(ptr nocapture noundef readonly %inode, i64 noundef %i_block, ptr nocapture noundef writeonly %offsets) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %s_apb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %s_apb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_apb, align 4
  %s_apbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 51
  %8 = ptrtoint ptr %s_apbshift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_apbshift, align 4
  %mul = shl i32 %9, 1
  %shl = shl nuw i32 1, %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_block_to_path.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_block_to_path, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_block_to_path.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 57, ptr noundef nonnull @.str.17) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_block_to_path.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_block_to_path, %do.end22)) #7
          to label %if.then19 [label %do.end22], !srcloc !120

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_block_to_path.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.19, i32 noundef %7, i32 noundef %shl) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  call void @__sanitizer_cov_trace_const_cmp8(i64 12, i64 %i_block)
  %cmp = icmp ult i64 %i_block, 12
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %i_block to i32
  %10 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %offsets, align 4
  br label %if.end87

if.else:                                          ; preds = %do.end22
  %sub = add i64 %i_block, -12
  %conv24 = sext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv24)
  %cmp25 = icmp ult i64 %sub, %conv24
  br i1 %cmp25, label %if.then27, label %if.else33

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %offsets, align 4
  %conv30 = trunc i64 %sub to i32
  %arrayidx32 = getelementptr i32, ptr %offsets, i32 1
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv30, ptr %arrayidx32, align 4
  br label %if.end87

if.else33:                                        ; preds = %if.else
  %sub35 = sub i64 %sub, %conv24
  %conv36 = sext i32 %shl to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub35, i64 %conv36)
  %cmp37 = icmp ult i64 %sub35, %conv36
  br i1 %cmp37, label %if.then39, label %if.else50

if.then39:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 13, ptr %offsets, align 4
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %sub35, %sh_prom
  %conv42 = trunc i64 %shr to i32
  %arrayidx44 = getelementptr i32, ptr %offsets, i32 1
  %14 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv42, ptr %arrayidx44, align 4
  %sub45 = add i32 %7, -1
  %15 = trunc i64 %sub35 to i32
  %conv47 = and i32 %sub45, %15
  %arrayidx49 = getelementptr i32, ptr %offsets, i32 2
  %16 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv47, ptr %arrayidx49, align 4
  br label %if.end87

if.else50:                                        ; preds = %if.else33
  %sub52 = sub i64 %sub35, %conv36
  %sh_prom54 = zext i32 %mul to i64
  %shr55 = lshr i64 %sub52, %sh_prom54
  call void @__sanitizer_cov_trace_cmp8(i64 %shr55, i64 %conv24)
  %cmp57 = icmp ult i64 %shr55, %conv24
  br i1 %cmp57, label %if.then59, label %if.else82

if.then59:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 14, ptr %offsets, align 4
  %conv65 = trunc i64 %shr55 to i32
  %arrayidx67 = getelementptr i32, ptr %offsets, i32 1
  %18 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv65, ptr %arrayidx67, align 4
  %sh_prom68 = zext i32 %9 to i64
  %shr69 = lshr i64 %sub52, %sh_prom68
  %sub70 = add i32 %7, -1
  %19 = trunc i64 %shr69 to i32
  %conv73 = and i32 %sub70, %19
  %arrayidx75 = getelementptr i32, ptr %offsets, i32 2
  %20 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv73, ptr %arrayidx75, align 4
  %21 = trunc i64 %sub52 to i32
  %conv79 = and i32 %sub70, %21
  %arrayidx81 = getelementptr i32, ptr %offsets, i32 3
  %22 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv79, ptr %arrayidx81, align 4
  br label %if.end87

if.else82:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %24, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16) #7
  br label %if.end87

if.end87:                                         ; preds = %if.else82, %if.then59, %if.then39, %if.then27, %if.then23
  %n.0 = phi i32 [ 1, %if.then23 ], [ 2, %if.then27 ], [ 3, %if.then39 ], [ 4, %if.then59 ], [ 0, %if.else82 ]
  ret i32 %n.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ufs_frag_map(ptr noundef %inode, ptr nocapture noundef readonly %offsets, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  %chain = alloca [4 x %struct.Indirect], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %s_apbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %s_apbmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_apbmask, align 8
  %conv = zext i32 %7 to i64
  %s_fpbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_fpbshift, align 4
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %conv, %sh_prom
  %s_apbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 51
  %10 = ptrtoint ptr %s_apbshift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_apbshift, align 4
  %sub = sub i32 %11, %9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %chain) #7
  %12 = call ptr @memset(ptr %chain, i32 255, i32 96)
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_frag_map.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_frag_map, %do.body8)) #7
          to label %if.then [label %do.body8], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_frag_map.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 138, ptr noundef nonnull @.str.20) #7
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_frag_map.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_frag_map, %do.end27)) #7
          to label %if.then22 [label %do.end27], !srcloc !120

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_fpbshift, align 4
  %17 = ptrtoint ptr %s_apbmask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_apbmask, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_frag_map.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.22, i32 noundef %16, i32 noundef %18, i64 noundef %shr) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %cmp = icmp eq i32 %depth, 0
  br i1 %cmp, label %do.end27.cleanup138_crit_edge, label %again.preheader

do.end27.cleanup138_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup138

again.preheader:                                  ; preds = %do.end27
  %and = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp31.not = icmp eq i32 %and, 0
  %meta_lock.i236 = getelementptr i8, ptr %inode, i32 -176
  %s_sbbase87 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 57
  %s_bdev.i260 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize.i261 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %19 = trunc i64 %shr to i32
  br label %again

again:                                            ; preds = %again.backedge, %again.preheader
  %q.0 = phi ptr [ %chain, %again.preheader ], [ %q.0.be, %again.backedge ]
  %depth.addr.0 = phi i32 [ %depth, %again.preheader ], [ %depth.addr.3, %again.backedge ]
  %20 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets, align 4
  br i1 %cmp31.not, label %if.end34, label %ufs2

if.end34:                                         ; preds = %again
  %arrayidx = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 %21
  %bh1.i = getelementptr inbounds %struct.Indirect, ptr %q.0, i32 0, i32 2
  %22 = ptrtoint ptr %bh1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %bh1.i, align 8
  %23 = getelementptr inbounds %struct.Indirect, ptr %q.0, i32 0, i32 1
  %cmp.not17.i = icmp ugt ptr %chain, %q.0
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end34
  call fastcc void @seqcount_lockdep_reader_access(ptr noundef %meta_lock.i236) #7
  %24 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %meta_lock.i236, align 4
  %and18.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %do.body.i.read_seqbegin.exit.i_crit_edge, label %do.body.i.do.end.i.i_crit_edge

do.body.i.do.end.i.i_crit_edge:                   ; preds = %do.body.i
  br label %do.end.i.i

do.body.i.read_seqbegin.exit.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.do.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !137
  %26 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %meta_lock.i236, align 4
  %and.i.i = and i32 %27, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %do.body.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %25, %do.body.i.read_seqbegin.exit.i_crit_edge ], [ %27, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !138
  %28 = ptrtoint ptr %q.0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx, ptr %q.0, align 8
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %23, align 8
  br i1 %cmp.not17.i, label %read_seqbegin.exit.i.do.cond.i_crit_edge, label %read_seqbegin.exit.i.land.rhs.i_crit_edge

read_seqbegin.exit.i.land.rhs.i_crit_edge:        ; preds = %read_seqbegin.exit.i
  br label %land.rhs.i

read_seqbegin.exit.i.do.cond.i_crit_edge:         ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %read_seqbegin.exit.i.land.rhs.i_crit_edge
  %p.018.i = phi ptr [ %incdec.ptr.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %chain, %read_seqbegin.exit.i.land.rhs.i_crit_edge ]
  %32 = getelementptr inbounds %struct.Indirect, ptr %p.018.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %35 = ptrtoint ptr %p.018.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p.018.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %38)
  %cmp4.i = icmp eq i32 %34, %38
  %incdec.ptr.i = getelementptr %struct.Indirect, ptr %p.018.i, i32 1
  %cmp.not.i = icmp ule ptr %incdec.ptr.i, %q.0
  %39 = and i1 %cmp.not.i, %cmp4.i
  br i1 %39, label %land.rhs.i.land.rhs.i_crit_edge, label %do.cond.loopexit.i

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

do.cond.loopexit.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i = zext i1 %cmp4.i to i32
  br label %do.cond.i

do.cond.i:                                        ; preds = %do.cond.loopexit.i, %read_seqbegin.exit.i.do.cond.i_crit_edge
  %cmp.not.lcssa.i = phi i32 [ 1, %read_seqbegin.exit.i.do.cond.i_crit_edge ], [ %phi.cast.i, %do.cond.loopexit.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  %40 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %meta_lock.i236, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %41, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %grow_chain32.exit, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

grow_chain32.exit:                                ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.not.lcssa.i)
  %tobool37.not = icmp eq i32 %cmp.not.lcssa.i, 0
  br i1 %tobool37.not, label %grow_chain32.exit.changed_crit_edge, label %if.end39

grow_chain32.exit.changed_crit_edge:              ; preds = %grow_chain32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed

if.end39:                                         ; preds = %grow_chain32.exit
  %42 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool40.not = icmp eq i32 %43, 0
  br i1 %tobool40.not, label %if.end39.no_block_crit_edge, label %if.end39.while.cond_crit_edge

if.end39.while.cond_crit_edge:                    ; preds = %if.end39
  br label %while.cond

if.end39.no_block_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_block

while.cond:                                       ; preds = %if.end60.while.cond_crit_edge, %if.end39.while.cond_crit_edge
  %q.1 = phi ptr [ %incdec.ptr56, %if.end60.while.cond_crit_edge ], [ %q.0, %if.end39.while.cond_crit_edge ]
  %offsets.pn = phi ptr [ %p.0, %if.end60.while.cond_crit_edge ], [ %offsets, %if.end39.while.cond_crit_edge ]
  %depth.addr.1 = phi i32 [ %dec, %if.end60.while.cond_crit_edge ], [ %depth.addr.0, %if.end39.while.cond_crit_edge ]
  %p.0 = getelementptr i32, ptr %offsets.pn, i32 1
  %dec = add i32 %depth.addr.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool43.not = icmp eq i32 %dec, 0
  br i1 %tobool43.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %44 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %p.0, align 4
  %46 = ptrtoint ptr %s_sbbase87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_sbbase87, align 4
  %48 = getelementptr inbounds %struct.Indirect, ptr %q.1, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i = icmp eq i32 %54, 0
  %55 = call i32 @llvm.bswap.i32(i32 %50) #7
  %retval.0.i208 = select i1 %cmp.i, i32 %55, i32 %50
  %shr46 = lshr i32 %45, %sub
  %add = add i32 %shr46, %47
  %add47 = add i32 %add, %retval.0.i208
  %conv48 = zext i32 %add47 to i64
  %56 = ptrtoint ptr %s_bdev.i260 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_bdev.i260, align 4
  %58 = ptrtoint ptr %s_blocksize.i261 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_blocksize.i261, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %57, i64 noundef %conv48, i32 noundef %59, i32 noundef 8) #7
  %tobool50.not = icmp eq ptr %call.i, null
  br i1 %tobool50.not, label %while.body.no_block_crit_edge, label %if.end52

while.body.no_block_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_block

if.end52:                                         ; preds = %while.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %60 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data, align 4
  %idx.ext = and i32 %45, %19
  %add.ptr = getelementptr i32, ptr %61, i32 %idx.ext
  %incdec.ptr56 = getelementptr %struct.Indirect, ptr %q.1, i32 1
  %bh1.i209 = getelementptr %struct.Indirect, ptr %q.1, i32 1, i32 2
  %62 = ptrtoint ptr %bh1.i209 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %bh1.i209, align 8
  %63 = getelementptr %struct.Indirect, ptr %q.1, i32 1, i32 1
  %cmp.not17.i211 = icmp ugt ptr %chain, %incdec.ptr56
  br label %do.body.i214

do.body.i214:                                     ; preds = %do.cond.i229.do.body.i214_crit_edge, %if.end52
  call fastcc void @seqcount_lockdep_reader_access(ptr noundef %meta_lock.i236) #7
  %64 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %meta_lock.i236, align 4
  %and18.i.i212 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i212)
  %tobool.not19.i.i213 = icmp eq i32 %and18.i.i212, 0
  br i1 %tobool.not19.i.i213, label %do.body.i214.read_seqbegin.exit.i219_crit_edge, label %do.body.i214.do.end.i.i217_crit_edge

do.body.i214.do.end.i.i217_crit_edge:             ; preds = %do.body.i214
  br label %do.end.i.i217

do.body.i214.read_seqbegin.exit.i219_crit_edge:   ; preds = %do.body.i214
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i219

do.end.i.i217:                                    ; preds = %do.end.i.i217.do.end.i.i217_crit_edge, %do.body.i214.do.end.i.i217_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !137
  %66 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %meta_lock.i236, align 4
  %and.i.i215 = and i32 %67, 1
  %tobool.not.i.i216 = icmp eq i32 %and.i.i215, 0
  br i1 %tobool.not.i.i216, label %do.end.i.i217.read_seqbegin.exit.i219_crit_edge, label %do.end.i.i217.do.end.i.i217_crit_edge

do.end.i.i217.do.end.i.i217_crit_edge:            ; preds = %do.end.i.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i217

do.end.i.i217.read_seqbegin.exit.i219_crit_edge:  ; preds = %do.end.i.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i219

read_seqbegin.exit.i219:                          ; preds = %do.end.i.i217.read_seqbegin.exit.i219_crit_edge, %do.body.i214.read_seqbegin.exit.i219_crit_edge
  %.lcssa.i.i218 = phi i32 [ %65, %do.body.i214.read_seqbegin.exit.i219_crit_edge ], [ %67, %do.end.i.i217.read_seqbegin.exit.i219_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !138
  %68 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr, ptr %incdec.ptr56, align 8
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr, align 4
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %63, align 8
  br i1 %cmp.not17.i211, label %read_seqbegin.exit.i219.do.cond.i229_crit_edge, label %read_seqbegin.exit.i219.land.rhs.i224_crit_edge

read_seqbegin.exit.i219.land.rhs.i224_crit_edge:  ; preds = %read_seqbegin.exit.i219
  br label %land.rhs.i224

read_seqbegin.exit.i219.do.cond.i229_crit_edge:   ; preds = %read_seqbegin.exit.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i229

land.rhs.i224:                                    ; preds = %land.rhs.i224.land.rhs.i224_crit_edge, %read_seqbegin.exit.i219.land.rhs.i224_crit_edge
  %p.018.i220 = phi ptr [ %incdec.ptr.i222, %land.rhs.i224.land.rhs.i224_crit_edge ], [ %chain, %read_seqbegin.exit.i219.land.rhs.i224_crit_edge ]
  %72 = getelementptr inbounds %struct.Indirect, ptr %p.018.i220, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %75 = ptrtoint ptr %p.018.i220 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %p.018.i220, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %78)
  %cmp4.i221 = icmp eq i32 %74, %78
  %incdec.ptr.i222 = getelementptr %struct.Indirect, ptr %p.018.i220, i32 1
  %cmp.not.i223 = icmp ule ptr %p.018.i220, %q.1
  %79 = and i1 %cmp.not.i223, %cmp4.i221
  br i1 %79, label %land.rhs.i224.land.rhs.i224_crit_edge, label %do.cond.loopexit.i226

land.rhs.i224.land.rhs.i224_crit_edge:            ; preds = %land.rhs.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i224

do.cond.loopexit.i226:                            ; preds = %land.rhs.i224
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i225 = zext i1 %cmp4.i221 to i32
  br label %do.cond.i229

do.cond.i229:                                     ; preds = %do.cond.loopexit.i226, %read_seqbegin.exit.i219.do.cond.i229_crit_edge
  %cmp.not.lcssa.i227 = phi i32 [ 1, %read_seqbegin.exit.i219.do.cond.i229_crit_edge ], [ %phi.cast.i225, %do.cond.loopexit.i226 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  %80 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %meta_lock.i236, align 4
  %cmp.i.i.i.not.i228 = icmp eq i32 %81, %.lcssa.i.i218
  br i1 %cmp.i.i.i.not.i228, label %grow_chain32.exit230, label %do.cond.i229.do.body.i214_crit_edge

do.cond.i229.do.body.i214_crit_edge:              ; preds = %do.cond.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i214

grow_chain32.exit230:                             ; preds = %do.cond.i229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.not.lcssa.i227)
  %tobool58.not = icmp eq i32 %cmp.not.lcssa.i227, 0
  br i1 %tobool58.not, label %grow_chain32.exit230.changed_crit_edge, label %if.end60

grow_chain32.exit230.changed_crit_edge:           ; preds = %grow_chain32.exit230
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed

if.end60:                                         ; preds = %grow_chain32.exit230
  %82 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %63, align 8
  %tobool61.not = icmp eq i32 %83, 0
  br i1 %tobool61.not, label %if.end60.no_block_crit_edge, label %if.end60.while.cond_crit_edge

if.end60.while.cond_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end60.no_block_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_block

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %84 = getelementptr inbounds %struct.Indirect, ptr %q.1, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  %87 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i232 = getelementptr inbounds %struct.ufs_sb_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %s_bytesex.i232 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_bytesex.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i233 = icmp eq i32 %90, 0
  %91 = call i32 @llvm.bswap.i32(i32 %86) #7
  %retval.0.i234 = select i1 %cmp.i233, i32 %91, i32 %86
  %conv67 = zext i32 %retval.0.i234 to i64
  br label %found

ufs2:                                             ; preds = %again
  %arrayidx70 = getelementptr [15 x i64], ptr %add.ptr.i, i32 0, i32 %21
  %bh1.i235 = getelementptr inbounds %struct.Indirect, ptr %q.0, i32 0, i32 2
  %92 = ptrtoint ptr %bh1.i235 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %bh1.i235, align 8
  %93 = getelementptr inbounds %struct.Indirect, ptr %q.0, i32 0, i32 1
  %cmp.not17.i237 = icmp ugt ptr %chain, %q.0
  br label %do.body.i240

do.body.i240:                                     ; preds = %do.cond.i255.do.body.i240_crit_edge, %ufs2
  call fastcc void @seqcount_lockdep_reader_access(ptr noundef %meta_lock.i236) #7
  %94 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %meta_lock.i236, align 4
  %and18.i.i238 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i238)
  %tobool.not19.i.i239 = icmp eq i32 %and18.i.i238, 0
  br i1 %tobool.not19.i.i239, label %do.body.i240.read_seqbegin.exit.i245_crit_edge, label %do.body.i240.do.end.i.i243_crit_edge

do.body.i240.do.end.i.i243_crit_edge:             ; preds = %do.body.i240
  br label %do.end.i.i243

do.body.i240.read_seqbegin.exit.i245_crit_edge:   ; preds = %do.body.i240
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i245

do.end.i.i243:                                    ; preds = %do.end.i.i243.do.end.i.i243_crit_edge, %do.body.i240.do.end.i.i243_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !137
  %96 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %meta_lock.i236, align 4
  %and.i.i241 = and i32 %97, 1
  %tobool.not.i.i242 = icmp eq i32 %and.i.i241, 0
  br i1 %tobool.not.i.i242, label %do.end.i.i243.read_seqbegin.exit.i245_crit_edge, label %do.end.i.i243.do.end.i.i243_crit_edge

do.end.i.i243.do.end.i.i243_crit_edge:            ; preds = %do.end.i.i243
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i243

do.end.i.i243.read_seqbegin.exit.i245_crit_edge:  ; preds = %do.end.i.i243
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i245

read_seqbegin.exit.i245:                          ; preds = %do.end.i.i243.read_seqbegin.exit.i245_crit_edge, %do.body.i240.read_seqbegin.exit.i245_crit_edge
  %.lcssa.i.i244 = phi i32 [ %95, %do.body.i240.read_seqbegin.exit.i245_crit_edge ], [ %97, %do.end.i.i243.read_seqbegin.exit.i245_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !138
  %98 = ptrtoint ptr %q.0 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %arrayidx70, ptr %q.0, align 8
  %99 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx70, align 8
  %101 = ptrtoint ptr %93 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %93, align 8
  br i1 %cmp.not17.i237, label %read_seqbegin.exit.i245.do.cond.i255_crit_edge, label %read_seqbegin.exit.i245.land.rhs.i250_crit_edge

read_seqbegin.exit.i245.land.rhs.i250_crit_edge:  ; preds = %read_seqbegin.exit.i245
  br label %land.rhs.i250

read_seqbegin.exit.i245.do.cond.i255_crit_edge:   ; preds = %read_seqbegin.exit.i245
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i255

land.rhs.i250:                                    ; preds = %land.rhs.i250.land.rhs.i250_crit_edge, %read_seqbegin.exit.i245.land.rhs.i250_crit_edge
  %p.018.i246 = phi ptr [ %incdec.ptr.i248, %land.rhs.i250.land.rhs.i250_crit_edge ], [ %chain, %read_seqbegin.exit.i245.land.rhs.i250_crit_edge ]
  %102 = getelementptr inbounds %struct.Indirect, ptr %p.018.i246, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %102, align 8
  %105 = ptrtoint ptr %p.018.i246 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %p.018.i246, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %106, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %104, i64 %108)
  %cmp4.i247 = icmp eq i64 %104, %108
  %incdec.ptr.i248 = getelementptr %struct.Indirect, ptr %p.018.i246, i32 1
  %cmp.not.i249 = icmp ule ptr %incdec.ptr.i248, %q.0
  %109 = and i1 %cmp.not.i249, %cmp4.i247
  br i1 %109, label %land.rhs.i250.land.rhs.i250_crit_edge, label %do.cond.loopexit.i252

land.rhs.i250.land.rhs.i250_crit_edge:            ; preds = %land.rhs.i250
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i250

do.cond.loopexit.i252:                            ; preds = %land.rhs.i250
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i251 = zext i1 %cmp4.i247 to i32
  br label %do.cond.i255

do.cond.i255:                                     ; preds = %do.cond.loopexit.i252, %read_seqbegin.exit.i245.do.cond.i255_crit_edge
  %cmp.not.lcssa.i253 = phi i32 [ 1, %read_seqbegin.exit.i245.do.cond.i255_crit_edge ], [ %phi.cast.i251, %do.cond.loopexit.i252 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  %110 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %meta_lock.i236, align 4
  %cmp.i.i.i.not.i254 = icmp eq i32 %111, %.lcssa.i.i244
  br i1 %cmp.i.i.i.not.i254, label %grow_chain64.exit, label %do.cond.i255.do.body.i240_crit_edge

do.cond.i255.do.body.i240_crit_edge:              ; preds = %do.cond.i255
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i240

grow_chain64.exit:                                ; preds = %do.cond.i255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.not.lcssa.i253)
  %tobool73.not = icmp eq i32 %cmp.not.lcssa.i253, 0
  br i1 %tobool73.not, label %grow_chain64.exit.changed_crit_edge, label %if.end75

grow_chain64.exit.changed_crit_edge:              ; preds = %grow_chain64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed

if.end75:                                         ; preds = %grow_chain64.exit
  %112 = ptrtoint ptr %93 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %93, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %tobool76.not = icmp eq i64 %113, 0
  br i1 %tobool76.not, label %if.end75.no_block_crit_edge, label %if.end75.while.cond79_crit_edge

if.end75.while.cond79_crit_edge:                  ; preds = %if.end75
  br label %while.cond79

if.end75.no_block_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_block

while.cond79:                                     ; preds = %if.end108.while.cond79_crit_edge, %if.end75.while.cond79_crit_edge
  %q.3 = phi ptr [ %incdec.ptr104, %if.end108.while.cond79_crit_edge ], [ %q.0, %if.end75.while.cond79_crit_edge ]
  %offsets.pn202 = phi ptr [ %p.1, %if.end108.while.cond79_crit_edge ], [ %offsets, %if.end75.while.cond79_crit_edge ]
  %depth.addr.2 = phi i32 [ %dec80, %if.end108.while.cond79_crit_edge ], [ %depth.addr.0, %if.end75.while.cond79_crit_edge ]
  %p.1 = getelementptr i32, ptr %offsets.pn202, i32 1
  %dec80 = add i32 %depth.addr.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec80)
  %tobool81.not = icmp eq i32 %dec80, 0
  br i1 %tobool81.not, label %while.end117, label %while.body82

while.body82:                                     ; preds = %while.cond79
  %114 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %p.1, align 4
  %116 = ptrtoint ptr %s_sbbase87 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_sbbase87, align 4
  %conv88 = zext i32 %117 to i64
  %118 = getelementptr inbounds %struct.Indirect, ptr %q.3, i32 0, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %118, align 8
  %121 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i257 = getelementptr inbounds %struct.ufs_sb_info, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %s_bytesex.i257 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_bytesex.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp.i258 = icmp eq i32 %124, 0
  %125 = call i64 @llvm.bswap.i64(i64 %120) #7
  %retval.0.i259 = select i1 %cmp.i258, i64 %125, i64 %120
  %shr91 = lshr i32 %115, %sub
  %conv92 = zext i32 %shr91 to i64
  %add90 = add nuw nsw i64 %conv92, %conv88
  %add93 = add i64 %add90, %retval.0.i259
  %126 = ptrtoint ptr %s_bdev.i260 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %s_bdev.i260, align 4
  %128 = ptrtoint ptr %s_blocksize.i261 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %s_blocksize.i261, align 16
  %call.i262 = call ptr @__bread_gfp(ptr noundef %127, i64 noundef %add93, i32 noundef %129, i32 noundef 8) #7
  %tobool95.not = icmp eq ptr %call.i262, null
  br i1 %tobool95.not, label %while.body82.no_block_crit_edge, label %if.end97

while.body82.no_block_crit_edge:                  ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_block

if.end97:                                         ; preds = %while.body82
  %b_data98 = getelementptr inbounds %struct.buffer_head, ptr %call.i262, i32 0, i32 5
  %130 = ptrtoint ptr %b_data98 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %b_data98, align 4
  %idx.ext101 = and i32 %115, %19
  %add.ptr102 = getelementptr i64, ptr %131, i32 %idx.ext101
  %incdec.ptr104 = getelementptr %struct.Indirect, ptr %q.3, i32 1
  %bh1.i263 = getelementptr %struct.Indirect, ptr %q.3, i32 1, i32 2
  %132 = ptrtoint ptr %bh1.i263 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i262, ptr %bh1.i263, align 8
  %133 = getelementptr %struct.Indirect, ptr %q.3, i32 1, i32 1
  %cmp.not17.i265 = icmp ugt ptr %chain, %incdec.ptr104
  br label %do.body.i268

do.body.i268:                                     ; preds = %do.cond.i283.do.body.i268_crit_edge, %if.end97
  call fastcc void @seqcount_lockdep_reader_access(ptr noundef %meta_lock.i236) #7
  %134 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %meta_lock.i236, align 4
  %and18.i.i266 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i266)
  %tobool.not19.i.i267 = icmp eq i32 %and18.i.i266, 0
  br i1 %tobool.not19.i.i267, label %do.body.i268.read_seqbegin.exit.i273_crit_edge, label %do.body.i268.do.end.i.i271_crit_edge

do.body.i268.do.end.i.i271_crit_edge:             ; preds = %do.body.i268
  br label %do.end.i.i271

do.body.i268.read_seqbegin.exit.i273_crit_edge:   ; preds = %do.body.i268
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i273

do.end.i.i271:                                    ; preds = %do.end.i.i271.do.end.i.i271_crit_edge, %do.body.i268.do.end.i.i271_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !137
  %136 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %meta_lock.i236, align 4
  %and.i.i269 = and i32 %137, 1
  %tobool.not.i.i270 = icmp eq i32 %and.i.i269, 0
  br i1 %tobool.not.i.i270, label %do.end.i.i271.read_seqbegin.exit.i273_crit_edge, label %do.end.i.i271.do.end.i.i271_crit_edge

do.end.i.i271.do.end.i.i271_crit_edge:            ; preds = %do.end.i.i271
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i271

do.end.i.i271.read_seqbegin.exit.i273_crit_edge:  ; preds = %do.end.i.i271
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i273

read_seqbegin.exit.i273:                          ; preds = %do.end.i.i271.read_seqbegin.exit.i273_crit_edge, %do.body.i268.read_seqbegin.exit.i273_crit_edge
  %.lcssa.i.i272 = phi i32 [ %135, %do.body.i268.read_seqbegin.exit.i273_crit_edge ], [ %137, %do.end.i.i271.read_seqbegin.exit.i273_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !138
  %138 = ptrtoint ptr %incdec.ptr104 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %add.ptr102, ptr %incdec.ptr104, align 8
  %139 = ptrtoint ptr %add.ptr102 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %add.ptr102, align 8
  %141 = ptrtoint ptr %133 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %133, align 8
  br i1 %cmp.not17.i265, label %read_seqbegin.exit.i273.do.cond.i283_crit_edge, label %read_seqbegin.exit.i273.land.rhs.i278_crit_edge

read_seqbegin.exit.i273.land.rhs.i278_crit_edge:  ; preds = %read_seqbegin.exit.i273
  br label %land.rhs.i278

read_seqbegin.exit.i273.do.cond.i283_crit_edge:   ; preds = %read_seqbegin.exit.i273
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i283

land.rhs.i278:                                    ; preds = %land.rhs.i278.land.rhs.i278_crit_edge, %read_seqbegin.exit.i273.land.rhs.i278_crit_edge
  %p.018.i274 = phi ptr [ %incdec.ptr.i276, %land.rhs.i278.land.rhs.i278_crit_edge ], [ %chain, %read_seqbegin.exit.i273.land.rhs.i278_crit_edge ]
  %142 = getelementptr inbounds %struct.Indirect, ptr %p.018.i274, i32 0, i32 1
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %142, align 8
  %145 = ptrtoint ptr %p.018.i274 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %p.018.i274, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %146, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %144, i64 %148)
  %cmp4.i275 = icmp eq i64 %144, %148
  %incdec.ptr.i276 = getelementptr %struct.Indirect, ptr %p.018.i274, i32 1
  %cmp.not.i277 = icmp ule ptr %p.018.i274, %q.3
  %149 = and i1 %cmp.not.i277, %cmp4.i275
  br i1 %149, label %land.rhs.i278.land.rhs.i278_crit_edge, label %do.cond.loopexit.i280

land.rhs.i278.land.rhs.i278_crit_edge:            ; preds = %land.rhs.i278
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i278

do.cond.loopexit.i280:                            ; preds = %land.rhs.i278
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i279 = zext i1 %cmp4.i275 to i32
  br label %do.cond.i283

do.cond.i283:                                     ; preds = %do.cond.loopexit.i280, %read_seqbegin.exit.i273.do.cond.i283_crit_edge
  %cmp.not.lcssa.i281 = phi i32 [ 1, %read_seqbegin.exit.i273.do.cond.i283_crit_edge ], [ %phi.cast.i279, %do.cond.loopexit.i280 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  %150 = ptrtoint ptr %meta_lock.i236 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %meta_lock.i236, align 4
  %cmp.i.i.i.not.i282 = icmp eq i32 %151, %.lcssa.i.i272
  br i1 %cmp.i.i.i.not.i282, label %grow_chain64.exit284, label %do.cond.i283.do.body.i268_crit_edge

do.cond.i283.do.body.i268_crit_edge:              ; preds = %do.cond.i283
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i268

grow_chain64.exit284:                             ; preds = %do.cond.i283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.not.lcssa.i281)
  %tobool106.not = icmp eq i32 %cmp.not.lcssa.i281, 0
  br i1 %tobool106.not, label %grow_chain64.exit284.changed_crit_edge, label %if.end108

grow_chain64.exit284.changed_crit_edge:           ; preds = %grow_chain64.exit284
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed

if.end108:                                        ; preds = %grow_chain64.exit284
  %152 = ptrtoint ptr %133 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %133, align 8
  %tobool109.not = icmp eq i64 %153, 0
  br i1 %tobool109.not, label %if.end108.no_block_crit_edge, label %if.end108.while.cond79_crit_edge

if.end108.while.cond79_crit_edge:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond79

if.end108.no_block_crit_edge:                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_block

while.end117:                                     ; preds = %while.cond79
  call void @__sanitizer_cov_trace_pc() #9
  %154 = getelementptr inbounds %struct.Indirect, ptr %q.3, i32 0, i32 1
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %154, align 8
  %157 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i286 = getelementptr inbounds %struct.ufs_sb_info, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %s_bytesex.i286 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %s_bytesex.i286, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.i287 = icmp eq i32 %160, 0
  %161 = call i64 @llvm.bswap.i64(i64 %156) #7
  %retval.0.i288 = select i1 %cmp.i287, i64 %161, i64 %156
  br label %found

found:                                            ; preds = %while.end117, %while.end
  %q.5 = phi ptr [ %q.3, %while.end117 ], [ %q.1, %while.end ]
  %res.0 = phi i64 [ %retval.0.i288, %while.end117 ], [ %conv67, %while.end ]
  %162 = ptrtoint ptr %s_sbbase87 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %s_sbbase87, align 4
  %conv120 = zext i32 %163 to i64
  %add121 = add i64 %res.0, %conv120
  br label %no_block

no_block:                                         ; preds = %found, %if.end108.no_block_crit_edge, %while.body82.no_block_crit_edge, %if.end75.no_block_crit_edge, %if.end60.no_block_crit_edge, %while.body.no_block_crit_edge, %if.end39.no_block_crit_edge
  %q.6 = phi ptr [ %q.5, %found ], [ %incdec.ptr56, %if.end60.no_block_crit_edge ], [ %q.1, %while.body.no_block_crit_edge ], [ %incdec.ptr104, %if.end108.no_block_crit_edge ], [ %q.3, %while.body82.no_block_crit_edge ], [ %q.0, %if.end39.no_block_crit_edge ], [ %q.0, %if.end75.no_block_crit_edge ]
  %res.1 = phi i64 [ %add121, %found ], [ 0, %while.body.no_block_crit_edge ], [ 0, %if.end60.no_block_crit_edge ], [ 0, %while.body82.no_block_crit_edge ], [ 0, %if.end108.no_block_crit_edge ], [ 0, %if.end39.no_block_crit_edge ], [ 0, %if.end75.no_block_crit_edge ]
  %cmp124326 = icmp ugt ptr %q.6, %chain
  br i1 %cmp124326, label %no_block.while.body126_crit_edge, label %no_block.cleanup138_crit_edge

no_block.cleanup138_crit_edge:                    ; preds = %no_block
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup138

no_block.while.body126_crit_edge:                 ; preds = %no_block
  br label %while.body126

while.body126:                                    ; preds = %brelse.exit.while.body126_crit_edge, %no_block.while.body126_crit_edge
  %q.7327 = phi ptr [ %incdec.ptr128, %brelse.exit.while.body126_crit_edge ], [ %q.6, %no_block.while.body126_crit_edge ]
  %bh127 = getelementptr inbounds %struct.Indirect, ptr %q.7327, i32 0, i32 2
  %164 = ptrtoint ptr %bh127 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bh127, align 8
  %tobool.not.i = icmp eq ptr %165, null
  br i1 %tobool.not.i, label %while.body126.brelse.exit_crit_edge, label %if.then.i

while.body126.brelse.exit_crit_edge:              ; preds = %while.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %while.body126
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %165) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %while.body126.brelse.exit_crit_edge
  %incdec.ptr128 = getelementptr %struct.Indirect, ptr %q.7327, i32 -1
  %cmp124 = icmp ugt ptr %incdec.ptr128, %chain
  br i1 %cmp124, label %brelse.exit.while.body126_crit_edge, label %brelse.exit.cleanup138_crit_edge

brelse.exit.cleanup138_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup138

brelse.exit.while.body126_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body126

changed:                                          ; preds = %grow_chain64.exit284.changed_crit_edge, %grow_chain64.exit.changed_crit_edge, %grow_chain32.exit230.changed_crit_edge, %grow_chain32.exit.changed_crit_edge
  %q.8 = phi ptr [ %q.0, %grow_chain64.exit.changed_crit_edge ], [ %q.0, %grow_chain32.exit.changed_crit_edge ], [ %incdec.ptr56, %grow_chain32.exit230.changed_crit_edge ], [ %incdec.ptr104, %grow_chain64.exit284.changed_crit_edge ]
  %depth.addr.3 = phi i32 [ %depth.addr.0, %grow_chain64.exit.changed_crit_edge ], [ %depth.addr.0, %grow_chain32.exit.changed_crit_edge ], [ %dec, %grow_chain32.exit230.changed_crit_edge ], [ %dec80, %grow_chain64.exit284.changed_crit_edge ]
  %cmp132324 = icmp ugt ptr %q.8, %chain
  br i1 %cmp132324, label %changed.while.body134_crit_edge, label %changed.again.backedge_crit_edge

changed.again.backedge_crit_edge:                 ; preds = %changed
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

changed.while.body134_crit_edge:                  ; preds = %changed
  br label %while.body134

again.backedge:                                   ; preds = %brelse.exit291.again.backedge_crit_edge, %changed.again.backedge_crit_edge
  %q.0.be = phi ptr [ %q.8, %changed.again.backedge_crit_edge ], [ %incdec.ptr136, %brelse.exit291.again.backedge_crit_edge ]
  br label %again

while.body134:                                    ; preds = %brelse.exit291.while.body134_crit_edge, %changed.while.body134_crit_edge
  %q.9325 = phi ptr [ %incdec.ptr136, %brelse.exit291.while.body134_crit_edge ], [ %q.8, %changed.while.body134_crit_edge ]
  %bh135 = getelementptr inbounds %struct.Indirect, ptr %q.9325, i32 0, i32 2
  %166 = ptrtoint ptr %bh135 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bh135, align 8
  %tobool.not.i289 = icmp eq ptr %167, null
  br i1 %tobool.not.i289, label %while.body134.brelse.exit291_crit_edge, label %if.then.i290

while.body134.brelse.exit291_crit_edge:           ; preds = %while.body134
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit291

if.then.i290:                                     ; preds = %while.body134
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %167) #7
  br label %brelse.exit291

brelse.exit291:                                   ; preds = %if.then.i290, %while.body134.brelse.exit291_crit_edge
  %incdec.ptr136 = getelementptr %struct.Indirect, ptr %q.9325, i32 -1
  %cmp132 = icmp ugt ptr %incdec.ptr136, %chain
  br i1 %cmp132, label %brelse.exit291.while.body134_crit_edge, label %brelse.exit291.again.backedge_crit_edge

brelse.exit291.again.backedge_crit_edge:          ; preds = %brelse.exit291
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

brelse.exit291.while.body134_crit_edge:           ; preds = %brelse.exit291
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body134

cleanup138:                                       ; preds = %brelse.exit.cleanup138_crit_edge, %no_block.cleanup138_crit_edge, %do.end27.cleanup138_crit_edge
  %res.1350 = phi i64 [ %res.1, %no_block.cleanup138_crit_edge ], [ 0, %do.end27.cleanup138_crit_edge ], [ %res.1, %brelse.exit.cleanup138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %chain) #7
  ret i64 %res.1350
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ufs_inode_getfrag(ptr noundef %inode, i32 noundef %index, i64 noundef %new_fragment, ptr noundef %err, ptr noundef writeonly %new, ptr noundef %locked_page) unnamed_addr #0 align 64 {
entry:
  %tmp32 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_fpb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %index)
  %cmp.i = icmp ugt i32 %index, 14
  br i1 %cmp.i, label %do.body2.i, label %ufs_get_direct_data_ptr.exit, !prof !121

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 555, 0\0A.popsection", ""() #7, !srcloc !122
  unreachable

ufs_get_direct_data_ptr.exit:                     ; preds = %entry
  %fs_magic.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  %8 = ptrtoint ptr %fs_magic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fs_magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %9)
  %cmp6.i = icmp eq i32 %9, 424935705
  %arrayidx.i = getelementptr [15 x i64], ptr %add.ptr.i, i32 0, i32 %index
  %arrayidx8.i = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 %index
  %cond.i = select i1 %cmp6.i, ptr %arrayidx.i, ptr %arrayidx8.i
  br i1 %cmp6.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %ufs_get_direct_data_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %cond.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cond.i, align 8
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 0
  %14 = tail call i64 @llvm.bswap.i64(i64 %11) #7
  %retval.0.i.i = select i1 %cmp.i.i, i64 %14, i64 %11
  br label %ufs_data_ptr_to_cpu.exit

cond.false.i:                                     ; preds = %ufs_get_direct_data_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cond.i, align 4
  %s_bytesex.i7.i = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %s_bytesex.i7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_bytesex.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i8.i = icmp eq i32 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %retval.0.i9.i = select i1 %cmp.i8.i, i32 %19, i32 %16
  %conv.i = zext i32 %retval.0.i9.i to i64
  br label %ufs_data_ptr_to_cpu.exit

ufs_data_ptr_to_cpu.exit:                         ; preds = %cond.false.i, %cond.true.i
  %cond.i83 = phi i64 [ %retval.0.i.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i83)
  %tobool.not = icmp eq i64 %cond.i83, 0
  br i1 %tobool.not, label %if.end, label %ufs_data_ptr_to_cpu.exit.out_crit_edge

ufs_data_ptr_to_cpu.exit.out_crit_edge:           ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %ufs_data_ptr_to_cpu.exit
  %s_fpbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 19
  %20 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_fpbshift, align 4
  %shl = shl i32 12, %21
  %conv = sext i32 %shl to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %new_fragment)
  %cmp = icmp ugt i64 %conv, %new_fragment
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %i_lastfrag = getelementptr i8, ptr %inode, i32 -184
  %22 = ptrtoint ptr %i_lastfrag to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_lastfrag, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %new_fragment)
  %cmp5.not = icmp ugt i64 %23, %new_fragment
  br i1 %cmp5.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 46
  %24 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_fpbmask, align 8
  %26 = trunc i64 %new_fragment to i32
  %27 = and i32 %25, %26
  %conv9 = add i32 %27, 1
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %nfrags.0 = phi i32 [ %conv9, %if.then7 ], [ %7, %land.lhs.true.if.end10_crit_edge ], [ %7, %if.end.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %tobool11.not = icmp eq i32 %index, 0
  br i1 %tobool11.not, label %if.end10.if.end21_crit_edge, label %ufs_get_direct_data_ptr.exit91

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

ufs_get_direct_data_ptr.exit91:                   ; preds = %if.end10
  %sub = add nsw i32 %index, -1
  %arrayidx.i88 = getelementptr [15 x i64], ptr %add.ptr.i, i32 0, i32 %sub
  %arrayidx8.i89 = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 %sub
  %cond.i90 = select i1 %cmp6.i, ptr %arrayidx.i88, ptr %arrayidx8.i89
  br i1 %cmp6.i, label %cond.true.i98, label %cond.false.i103

cond.true.i98:                                    ; preds = %ufs_get_direct_data_ptr.exit91
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %cond.i90 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %cond.i90, align 8
  %s_bytesex.i.i95 = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %s_bytesex.i.i95 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_bytesex.i.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i96 = icmp eq i32 %31, 0
  %32 = tail call i64 @llvm.bswap.i64(i64 %29) #7
  %retval.0.i.i97 = select i1 %cmp.i.i96, i64 %32, i64 %29
  br label %ufs_data_ptr_to_cpu.exit105

cond.false.i103:                                  ; preds = %ufs_get_direct_data_ptr.exit91
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %cond.i90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cond.i90, align 4
  %s_bytesex.i7.i99 = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %s_bytesex.i7.i99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_bytesex.i7.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i8.i100 = icmp eq i32 %36, 0
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %retval.0.i9.i101 = select i1 %cmp.i8.i100, i32 %37, i32 %34
  %conv.i102 = zext i32 %retval.0.i9.i101 to i64
  br label %ufs_data_ptr_to_cpu.exit105

ufs_data_ptr_to_cpu.exit105:                      ; preds = %cond.false.i103, %cond.true.i98
  %cond.i104 = phi i64 [ %retval.0.i.i97, %cond.true.i98 ], [ %conv.i102, %cond.false.i103 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i104)
  %tobool15.not = icmp eq i64 %cond.i104, 0
  br i1 %tobool15.not, label %ufs_data_ptr_to_cpu.exit105.if.end21_crit_edge, label %if.then16

ufs_data_ptr_to_cpu.exit105.if.end21_crit_edge:   ; preds = %ufs_data_ptr_to_cpu.exit105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then16:                                        ; preds = %ufs_data_ptr_to_cpu.exit105
  call void @__sanitizer_cov_trace_pc() #9
  %conv18 = zext i32 %7 to i64
  %add19 = add i64 %cond.i104, %conv18
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %ufs_data_ptr_to_cpu.exit105.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %goal.0 = phi i64 [ %add19, %if.then16 ], [ 0, %ufs_data_ptr_to_cpu.exit105.if.end21_crit_edge ], [ 0, %if.end10.if.end21_crit_edge ]
  %s_fpbmask22 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 46
  %38 = ptrtoint ptr %s_fpbmask22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_fpbmask22, align 8
  %neg = xor i32 %39, -1
  %conv23 = zext i32 %neg to i64
  %and24 = and i64 %conv23, %new_fragment
  %call25 = tail call i64 @ufs_new_fragments(ptr noundef %inode, ptr noundef %cond.i, i64 noundef %and24, i64 noundef %goal.0, i32 noundef %nfrags.0, ptr noundef %err, ptr noundef %locked_page) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call25)
  %tobool26.not = icmp eq i64 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -28, ptr %err, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %tobool29.not = icmp eq ptr %new, null
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %new, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp32) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp32, ptr noundef %inode) #7
  %42 = call ptr @memcpy(ptr %i_ctime, ptr %tmp32, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp32) #7
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_flags, align 4
  %and34 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %lor.lhs.false, label %if.end31.if.then38_crit_edge

if.end31.if.then38_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.end31
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %47 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_flags, align 4
  %and36 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false.if.end40_crit_edge, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %if.end31.if.then38_crit_edge
  %call.i = call fastcc i32 @ufs_update_inode(ptr noundef %inode, i32 noundef 1) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %lor.lhs.false.if.end40_crit_edge
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %out

out:                                              ; preds = %if.end40, %ufs_data_ptr_to_cpu.exit.out_crit_edge
  %tmp.0 = phi i64 [ %cond.i83, %ufs_data_ptr_to_cpu.exit.out_crit_edge ], [ %call25, %if.end40 ]
  %s_sbbase = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 57
  %49 = ptrtoint ptr %s_sbbase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_sbbase, align 4
  %conv41 = zext i32 %50 to i64
  %add42 = add i64 %tmp.0, %conv41
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then27
  %retval.0 = phi i64 [ %add42, %out ], [ 0, %if.then27 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ufs_inode_getblock(ptr noundef %inode, i64 noundef %ind_block, i32 noundef %index, i64 noundef %new_fragment, ptr noundef %err, ptr noundef writeonly %new, ptr noundef %locked_page) unnamed_addr #0 align 64 {
entry:
  %tmp59 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %s_fpbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ind_block)
  %tobool.not = icmp eq i64 %ind_block, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_apbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 51
  %6 = ptrtoint ptr %s_apbshift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_apbshift, align 4
  %8 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_fpbshift, align 4
  %sub = sub i32 %7, %9
  %shr = lshr i32 %index, %sub
  %conv = zext i32 %shr to i64
  %add = add i64 %conv, %ind_block
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %11, i64 noundef %add, i32 noundef %13, i32 noundef 8) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then6, label %if.end7, !prof !121

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -5, ptr %err, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %s_apbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 50
  %15 = ptrtoint ptr %s_apbmask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_apbmask, align 8
  %17 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_fpbshift, align 4
  %shr9 = lshr i32 %16, %18
  %and = and i32 %shr9, %index
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  %19 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %20)
  %cmp = icmp eq i32 %20, 424935705
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i64, ptr %22, i32 %and
  %add.ptr13 = getelementptr i32, ptr %22, i32 %and
  %p.0 = select i1 %cmp, ptr %add.ptr, ptr %add.ptr13
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %fs_magic.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %26, i32 0, i32 62
  %27 = ptrtoint ptr %fs_magic.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fs_magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %28)
  %cmp.i = icmp eq i32 %28, 424935705
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %p.0 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %p.0, align 8
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %24, i32 0, i32 2
  %31 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 0
  %33 = tail call i64 @llvm.bswap.i64(i64 %30) #7
  %retval.0.i.i = select i1 %cmp.i.i, i64 %33, i64 %30
  br label %ufs_data_ptr_to_cpu.exit

cond.false.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p.0, align 4
  %s_bytesex.i7.i = getelementptr inbounds %struct.ufs_sb_info, ptr %24, i32 0, i32 2
  %36 = ptrtoint ptr %s_bytesex.i7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_bytesex.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i8.i = icmp eq i32 %37, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %retval.0.i9.i = select i1 %cmp.i8.i, i32 %38, i32 %35
  %conv.i = zext i32 %retval.0.i9.i to i64
  br label %ufs_data_ptr_to_cpu.exit

ufs_data_ptr_to_cpu.exit:                         ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %retval.0.i.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %tobool16.not = icmp eq i64 %cond.i, 0
  br i1 %tobool16.not, label %if.end18, label %ufs_data_ptr_to_cpu.exit.brelse.exit_crit_edge

ufs_data_ptr_to_cpu.exit.brelse.exit_crit_edge:   ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.end18:                                         ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.if.else36_crit_edge, label %land.lhs.true

if.end18.if.else36_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else36

land.lhs.true:                                    ; preds = %if.end18
  %b_data23 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %b_data23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data23, align 4
  %sub24 = add i32 %and, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %arrayidx = getelementptr i64, ptr %40, i32 %sub24
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx, align 8
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %24, i32 0, i32 2
  %43 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i149 = icmp eq i32 %44, 0
  %45 = tail call i64 @llvm.bswap.i64(i64 %42) #7
  %retval.0.i150 = select i1 %cmp.i149, i64 %45, i64 %42
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i150)
  %tobool26.not = icmp eq i64 %retval.0.i150, 0
  br i1 %tobool26.not, label %cond.true.if.else36_crit_edge, label %cond.true.if.end40_crit_edge

cond.true.if.end40_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

cond.true.if.else36_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else36

cond.false:                                       ; preds = %land.lhs.true
  %arrayidx29 = getelementptr i32, ptr %40, i32 %sub24
  %46 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx29, align 4
  %s_bytesex.i152 = getelementptr inbounds %struct.ufs_sb_info, ptr %24, i32 0, i32 2
  %48 = ptrtoint ptr %s_bytesex.i152 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_bytesex.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i153 = icmp eq i32 %49, 0
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %retval.0.i154 = select i1 %cmp.i153, i32 %50, i32 %47
  %conv31 = zext i32 %retval.0.i154 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i154)
  %tobool32.not = icmp eq i32 %retval.0.i154, 0
  br i1 %tobool32.not, label %cond.false.if.else36_crit_edge, label %cond.false.if.end40_crit_edge

cond.false.if.end40_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

cond.false.if.else36_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else36

if.else36:                                        ; preds = %cond.false.if.else36_crit_edge, %cond.true.if.else36_crit_edge, %if.end18.if.else36_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 3
  %51 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %b_blocknr, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %cond.false.if.end40_crit_edge, %cond.true.if.end40_crit_edge
  %.sink = phi i64 [ %52, %if.else36 ], [ %retval.0.i150, %cond.true.if.end40_crit_edge ], [ %conv31, %cond.false.if.end40_crit_edge ]
  %s_fpb37 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %53 = ptrtoint ptr %s_fpb37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_fpb37, align 4
  %conv38 = zext i32 %54 to i64
  %add39 = add i64 %.sink, %conv38
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 46
  %55 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_fpbmask, align 8
  %neg = xor i32 %56, -1
  %conv41 = zext i32 %neg to i64
  %and42 = and i64 %conv41, %new_fragment
  %s_fpb43 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %57 = ptrtoint ptr %s_fpb43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_fpb43, align 4
  %call44 = tail call i64 @ufs_new_fragments(ptr noundef %inode, ptr noundef %p.0, i64 noundef %and42, i64 noundef %add39, i32 noundef %58, ptr noundef %err, ptr noundef %locked_page) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call44)
  %tobool45.not = icmp eq i64 %call44, 0
  br i1 %tobool45.not, label %if.end40.brelse.exit_crit_edge, label %if.end47

if.end40.brelse.exit_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.end47:                                         ; preds = %if.end40
  %tobool48.not = icmp eq ptr %new, null
  br i1 %tobool48.not, label %if.end47.if.end50_crit_edge, label %if.then49

if.end47.if.end50_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %new, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end47.if.end50_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #7
  %60 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_flags, align 4
  %and52 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %lor.lhs.false, label %if.end50.if.then56_crit_edge

if.end50.if.then56_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.end50
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %64 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_flags, align 4
  %and54 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %lor.lhs.false.if.end58_crit_edge, label %lor.lhs.false.if.then56_crit_edge

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %if.end50.if.then56_crit_edge
  %call57 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i) #7
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %lor.lhs.false.if.end58_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp59) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp59, ptr noundef %inode) #7
  %66 = call ptr @memcpy(ptr %i_ctime, ptr %tmp59, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp59) #7
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.end58, %if.end40.brelse.exit_crit_edge, %ufs_data_ptr_to_cpu.exit.brelse.exit_crit_edge
  %tmp.1 = phi i64 [ %cond.i, %ufs_data_ptr_to_cpu.exit.brelse.exit_crit_edge ], [ %call44, %if.end58 ], [ 0, %if.end40.brelse.exit_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_inode_getblock.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_inode_getblock, %do.body73)) #7
          to label %if.then71 [label %do.body73], !srcloc !120

if.then71:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_inode_getblock.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 385, ptr noundef nonnull @.str.23) #7
  br label %do.body73

do.body73:                                        ; preds = %if.then71, %brelse.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_inode_getblock.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_inode_getblock, %do.end90)) #7
          to label %if.then87 [label %do.end90], !srcloc !120

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_inode_getblock.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.11) #7
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %do.body73
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tmp.1)
  %tobool91.not = icmp eq i64 %tmp.1, 0
  br i1 %tobool91.not, label %do.end90.cleanup_crit_edge, label %if.then92

do.end90.cleanup_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then92:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  %s_sbbase = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 57
  %67 = ptrtoint ptr %s_sbbase to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_sbbase, align 4
  %conv93 = zext i32 %68 to i64
  %add94 = add i64 %tmp.1, %conv93
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %do.end90.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ %add94, %if.then92 ], [ 0, %do.end90.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access(ptr noundef %s) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !139
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %dep_map.c = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #7
  tail call void @lock_release(ptr noundef %dep_map.c, i32 noundef %2) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dep_map.c48 = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #7
  tail call void @lock_release(ptr noundef %dep_map.c48, i32 noundef %4) #7
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !140
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !121

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !141
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ufs_new_fragments(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %to)
  %cmp = icmp slt i64 %3, %to
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #7
  tail call fastcc void @ufs_truncate_blocks(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_get_inode_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs2_update_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %ufs_inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_update_inode.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_update_inode, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_update_inode.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 763, ptr noundef nonnull @.str.28) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_update_inode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_update_inode, %do.end22)) #7
          to label %if.then19 [label %do.end22], !srcloc !120

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_update_inode.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.30) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %8 = tail call i16 @llvm.bswap.i16(i16 %3) #7
  %retval.0.i166 = select i1 %cmp.i, i16 %8, i16 %3
  %9 = ptrtoint ptr %ufs_inode to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %retval.0.i166, ptr %ufs_inode, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %conv = trunc i32 %12 to i16
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i168 = getelementptr inbounds %struct.ufs_sb_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %s_bytesex.i168 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_bytesex.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i169 = icmp eq i32 %16, 0
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  %retval.0.i170 = select i1 %cmp.i169, i16 %17, i16 %conv
  %ui_nlink = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 1
  %18 = ptrtoint ptr %ui_nlink to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %retval.0.i170, ptr %ui_nlink, align 2
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %23 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %24 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %22, [1 x i32] %24) #7
  %25 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i172 = getelementptr inbounds %struct.ufs_sb_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %s_bytesex.i172 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_bytesex.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i173 = icmp eq i32 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %call1.i) #7
  %retval.0.i174 = select i1 %cmp.i173, i32 %29, i32 %call1.i
  %ui_uid = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 2
  %30 = ptrtoint ptr %ui_uid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i174, ptr %ui_uid, align 4
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i176 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 53
  %33 = ptrtoint ptr %s_user_ns.i.i176 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_user_ns.i.i176, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %35 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack.i177 = load i32, ptr %i_gid.i, align 8
  %36 = insertvalue [1 x i32] undef, i32 %.unpack.i177, 0
  %call1.i178 = tail call i32 @from_kgid(ptr noundef %34, [1 x i32] %36) #7
  %37 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i180 = getelementptr inbounds %struct.ufs_sb_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %s_bytesex.i180 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_bytesex.i180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i181 = icmp eq i32 %40, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %call1.i178) #7
  %retval.0.i182 = select i1 %cmp.i181, i32 %41, i32 %call1.i178
  %ui_gid = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 3
  %42 = ptrtoint ptr %ui_gid to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i182, ptr %ui_gid, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %43 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_size, align 8
  %45 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i184 = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %s_bytesex.i184 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_bytesex.i184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i185 = icmp eq i32 %48, 0
  %49 = tail call i64 @llvm.bswap.i64(i64 %44) #7
  %retval.0.i186 = select i1 %cmp.i185, i64 %49, i64 %44
  %ui_size = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 5
  %50 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %retval.0.i186, ptr %ui_size, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %51 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %i_atime, align 8
  %53 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i188 = getelementptr inbounds %struct.ufs_sb_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %s_bytesex.i188 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_bytesex.i188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i189 = icmp eq i32 %56, 0
  %57 = tail call i64 @llvm.bswap.i64(i64 %52) #7
  %retval.0.i190 = select i1 %cmp.i189, i64 %57, i64 %52
  %ui_atime = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 7
  %58 = ptrtoint ptr %ui_atime to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %retval.0.i190, ptr %ui_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %59 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tv_nsec, align 8
  %61 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i192 = getelementptr inbounds %struct.ufs_sb_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %s_bytesex.i192 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_bytesex.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i193 = icmp eq i32 %64, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  %retval.0.i194 = select i1 %cmp.i193, i32 %65, i32 %60
  %ui_atimensec = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 12
  %66 = ptrtoint ptr %ui_atimensec to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i194, ptr %ui_atimensec, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %67 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %i_ctime, align 8
  %69 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i196 = getelementptr inbounds %struct.ufs_sb_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %s_bytesex.i196 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_bytesex.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i197 = icmp eq i32 %72, 0
  %73 = tail call i64 @llvm.bswap.i64(i64 %68) #7
  %retval.0.i198 = select i1 %cmp.i197, i64 %73, i64 %68
  %ui_ctime = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 9
  %74 = ptrtoint ptr %ui_ctime to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %retval.0.i198, ptr %ui_ctime, align 8
  %tv_nsec36 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %75 = ptrtoint ptr %tv_nsec36 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tv_nsec36, align 8
  %77 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i200 = getelementptr inbounds %struct.ufs_sb_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %s_bytesex.i200 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_bytesex.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i201 = icmp eq i32 %80, 0
  %81 = tail call i32 @llvm.bswap.i32(i32 %76) #7
  %retval.0.i202 = select i1 %cmp.i201, i32 %81, i32 %76
  %ui_ctimensec = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 13
  %82 = ptrtoint ptr %ui_ctimensec to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i202, ptr %ui_ctimensec, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %83 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %i_mtime, align 8
  %85 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i204 = getelementptr inbounds %struct.ufs_sb_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %s_bytesex.i204 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_bytesex.i204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i205 = icmp eq i32 %88, 0
  %89 = tail call i64 @llvm.bswap.i64(i64 %84) #7
  %retval.0.i206 = select i1 %cmp.i205, i64 %89, i64 %84
  %ui_mtime = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 8
  %90 = ptrtoint ptr %ui_mtime to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %retval.0.i206, ptr %ui_mtime, align 8
  %tv_nsec41 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %91 = ptrtoint ptr %tv_nsec41 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tv_nsec41, align 8
  %93 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i208 = getelementptr inbounds %struct.ufs_sb_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %s_bytesex.i208 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_bytesex.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i209 = icmp eq i32 %96, 0
  %97 = tail call i32 @llvm.bswap.i32(i32 %92) #7
  %retval.0.i210 = select i1 %cmp.i209, i32 %97, i32 %92
  %ui_mtimensec = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 11
  %98 = ptrtoint ptr %ui_mtimensec to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %retval.0.i210, ptr %ui_mtimensec, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %99 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %i_blocks, align 8
  %101 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i212 = getelementptr inbounds %struct.ufs_sb_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %s_bytesex.i212 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_bytesex.i212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i213 = icmp eq i32 %104, 0
  %105 = tail call i64 @llvm.bswap.i64(i64 %100) #7
  %retval.0.i214 = select i1 %cmp.i213, i64 %105, i64 %100
  %ui_blocks = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 6
  %106 = ptrtoint ptr %ui_blocks to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %retval.0.i214, ptr %ui_blocks, align 8
  %i_flags = getelementptr i8, ptr %inode, i32 -208
  %107 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %i_flags, align 8
  %109 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i216 = getelementptr inbounds %struct.ufs_sb_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %s_bytesex.i216 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %s_bytesex.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.i217 = icmp eq i32 %112, 0
  %113 = tail call i32 @llvm.bswap.i32(i32 %108) #7
  %retval.0.i218 = select i1 %cmp.i217, i32 %113, i32 %108
  %ui_flags = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 17
  %114 = ptrtoint ptr %ui_flags to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %retval.0.i218, ptr %ui_flags, align 8
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %115 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i_generation, align 8
  %117 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_bytesex.i220 = getelementptr inbounds %struct.ufs_sb_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %s_bytesex.i220 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %s_bytesex.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i221 = icmp eq i32 %120, 0
  %121 = tail call i32 @llvm.bswap.i32(i32 %116) #7
  %retval.0.i222 = select i1 %cmp.i221, i32 %121, i32 %116
  %ui_gen = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 15
  %122 = ptrtoint ptr %ui_gen to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %retval.0.i222, ptr %ui_gen, align 8
  %123 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %inode, align 8
  %125 = and i16 %124, -4096
  %126 = zext i16 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %125, label %if.else [
    i16 8192, label %do.end22.if.then54_crit_edge
    i16 24576, label %do.end22.if.then54_crit_edge227
  ]

do.end22.if.then54_crit_edge227:                  ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

do.end22.if.then54_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.then54:                                        ; preds = %do.end22.if.then54_crit_edge, %do.end22.if.then54_crit_edge227
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %add.ptr.i, align 8
  %ui_u2 = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 20
  %129 = ptrtoint ptr %ui_u2 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %ui_u2, align 8
  br label %if.end66

if.else:                                          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  %ui_u262 = getelementptr inbounds %struct.ufs2_inode, ptr %ufs_inode, i32 0, i32 20
  %130 = call ptr @memcpy(ptr %ui_u262, ptr %add.ptr.i, i32 120)
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then54
  %131 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool67.not = icmp eq i32 %132, 0
  br i1 %tobool67.not, label %if.then68, label %if.end66.do.body70_crit_edge

if.end66.do.body70_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %133 = call ptr @memset(ptr %ufs_inode, i32 0, i32 256)
  br label %do.body70

do.body70:                                        ; preds = %if.then68, %if.end66.do.body70_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_update_inode.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_update_inode, %do.body88)) #7
          to label %if.then84 [label %do.body88], !srcloc !120

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_update_inode.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 795, ptr noundef nonnull @.str.28) #7
  br label %do.body88

do.body88:                                        ; preds = %if.then84, %do.body70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_update_inode.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_update_inode, %do.end105)) #7
          to label %if.then102 [label %do.end105], !srcloc !120

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_update_inode.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.11) #7
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %do.body88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_trunc_direct(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_trunc_direct, %do.body7)) #7
          to label %if.then [label %do.body7], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_trunc_direct.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 899, ptr noundef nonnull @.str.31) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_trunc_direct, %do.end24)) #7
          to label %if.then21 [label %do.end24], !srcloc !120

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_trunc_direct.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.33, i32 noundef %1) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body7
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  %s_fsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_fsize, align 8
  %conv = zext i32 %11 to i64
  %add = add i64 %9, -1
  %sub = add i64 %add, %conv
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_fshift, align 8
  %sh_prom = zext i32 %13 to i64
  %shr = ashr i64 %sub, %sh_prom
  %s_fpbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 19
  %14 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_fpbshift, align 4
  %shl = shl i32 12, %15
  %conv26 = sext i32 %shl to i64
  %i_lastfrag = getelementptr i8, ptr %inode, i32 -184
  %16 = ptrtoint ptr %i_lastfrag to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_lastfrag, align 8
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 %conv26)
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 46
  %19 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_fpbmask, align 8
  %conv29 = zext i32 %20 to i64
  %and = and i64 %shr, %conv29
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool30.not = icmp eq i64 %and, 0
  %or = or i64 %shr, %conv29
  %add34 = add i64 %or, 1
  %cond37 = select i1 %tobool30.not, i64 %shr, i64 %add34
  %neg = xor i32 %20, -1
  %conv39 = zext i32 %neg to i64
  %and40 = and i64 %18, %conv39
  call void @__sanitizer_cov_trace_cmp8(i64 %cond37, i64 %and40)
  %cmp41 = icmp ugt i64 %cond37, %and40
  br i1 %cmp41, label %do.end24.do.body55_crit_edge, label %if.else

do.end24.do.body55_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

if.else:                                          ; preds = %do.end24
  call void @__sanitizer_cov_trace_cmp8(i64 %cond37, i64 %and40)
  %cmp44 = icmp ult i64 %cond37, %and40
  br i1 %cmp44, label %if.then46, label %if.else.do.body55_crit_edge

if.else.do.body55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom48 = zext i32 %15 to i64
  %shr49 = lshr i64 %cond37, %sh_prom48
  %shr52 = lshr i64 %and40, %sh_prom48
  br label %do.body55

do.body55:                                        ; preds = %if.then46, %if.else.do.body55_crit_edge, %do.end24.do.body55_crit_edge
  %block2.0 = phi i64 [ %shr52, %if.then46 ], [ 0, %if.else.do.body55_crit_edge ], [ 0, %do.end24.do.body55_crit_edge ]
  %block1.0 = phi i64 [ %shr49, %if.then46 ], [ 0, %if.else.do.body55_crit_edge ], [ 0, %do.end24.do.body55_crit_edge ]
  %frag4.0 = phi i64 [ %18, %if.then46 ], [ %18, %if.else.do.body55_crit_edge ], [ 0, %do.end24.do.body55_crit_edge ]
  %frag3.0 = phi i64 [ %and40, %if.then46 ], [ %and40, %if.else.do.body55_crit_edge ], [ 0, %do.end24.do.body55_crit_edge ]
  %frag2.0 = phi i64 [ %cond37, %if.then46 ], [ %cond37, %if.else.do.body55_crit_edge ], [ %18, %do.end24.do.body55_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_trunc_direct, %do.body73)) #7
          to label %if.then69 [label %do.body73], !srcloc !120

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_trunc_direct.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 921, ptr noundef nonnull @.str.31) #7
  br label %do.body73

do.body73:                                        ; preds = %if.then69, %do.body55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_trunc_direct, %do.end91)) #7
          to label %if.then87 [label %do.end91], !srcloc !120

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino88 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino88 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino88, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_trunc_direct.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.35, i32 noundef %22, i64 noundef %shr, i64 noundef %frag2.0, i64 noundef %block1.0, i64 noundef %block2.0, i64 noundef %frag3.0, i64 noundef %frag4.0) #7
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %do.body73
  call void @__sanitizer_cov_trace_cmp8(i64 %frag2.0, i64 %shr)
  %cmp92.not = icmp ugt i64 %frag2.0, %shr
  br i1 %cmp92.not, label %if.end95, label %do.end91.next1_crit_edge

do.end91.next1_crit_edge:                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %next1

if.end95:                                         ; preds = %do.end91
  %23 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_fpbshift, align 4
  %sh_prom97 = zext i32 %24 to i64
  %shr98 = lshr i64 %shr, %sh_prom97
  %conv99 = trunc i64 %shr98 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv99)
  %cmp.i = icmp ugt i32 %conv99, 14
  br i1 %cmp.i, label %do.body2.i, label %ufs_get_direct_data_ptr.exit, !prof !121

do.body2.i:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 555, 0\0A.popsection", ""() #7, !srcloc !122
  unreachable

ufs_get_direct_data_ptr.exit:                     ; preds = %if.end95
  %fs_magic.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 62
  %25 = ptrtoint ptr %fs_magic.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fs_magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %26)
  %cmp6.i = icmp eq i32 %26, 424935705
  %arrayidx.i = getelementptr [15 x i64], ptr %add.ptr.i, i32 0, i32 %conv99
  %arrayidx8.i = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 %conv99
  %cond.i = select i1 %cmp6.i, ptr %arrayidx.i, ptr %arrayidx8.i
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %fs_magic.i274 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %30, i32 0, i32 62
  %31 = ptrtoint ptr %fs_magic.i274 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fs_magic.i274, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %32)
  %cmp.i275 = icmp eq i32 %32, 424935705
  br i1 %cmp.i275, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %ufs_get_direct_data_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %cond.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cond.i, align 8
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %28, i32 0, i32 2
  %35 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 0
  %37 = tail call i64 @llvm.bswap.i64(i64 %34) #7
  %retval.0.i.i = select i1 %cmp.i.i, i64 %37, i64 %34
  br label %ufs_data_ptr_to_cpu.exit

cond.false.i:                                     ; preds = %ufs_get_direct_data_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cond.i, align 4
  %s_bytesex.i7.i = getelementptr inbounds %struct.ufs_sb_info, ptr %28, i32 0, i32 2
  %40 = ptrtoint ptr %s_bytesex.i7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_bytesex.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i8.i = icmp eq i32 %41, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %retval.0.i9.i = select i1 %cmp.i8.i, i32 %42, i32 %39
  %conv.i = zext i32 %retval.0.i9.i to i64
  br label %ufs_data_ptr_to_cpu.exit

ufs_data_ptr_to_cpu.exit:                         ; preds = %cond.false.i, %cond.true.i
  %cond.i276 = phi i64 [ %retval.0.i.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv102 = trunc i64 %cond.i276 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv102)
  %tobool103.not = icmp eq i32 %conv102, 0
  br i1 %tobool103.not, label %if.then104, label %ufs_data_ptr_to_cpu.exit.if.end105_crit_edge

ufs_data_ptr_to_cpu.exit.if.end105_crit_edge:     ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then104:                                       ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.36) #7
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %ufs_data_ptr_to_cpu.exit.if.end105_crit_edge
  %sub106 = sub i64 %frag2.0, %shr
  %43 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_fpbmask, align 8
  %conv108 = zext i32 %44 to i64
  %and109 = and i64 %shr, %conv108
  %conv110 = and i64 %cond.i276, 4294967295
  %add111 = add nuw nsw i64 %and109, %conv110
  %conv112 = trunc i64 %sub106 to i32
  tail call void @ufs_free_fragments(ptr noundef %inode, i64 noundef %add111, i32 noundef %conv112) #7
  br label %next1

next1:                                            ; preds = %if.end105, %do.end91.next1_crit_edge
  %conv114365 = and i64 %block1.0, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %block2.0, i64 %conv114365)
  %cmp115366 = icmp ugt i64 %block2.0, %conv114365
  br i1 %cmp115366, label %for.body.lr.ph, label %next1.free_data.exit313_crit_edge

next1.free_data.exit313_crit_edge:                ; preds = %next1
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_data.exit313

for.body.lr.ph:                                   ; preds = %next1
  %conv113 = trunc i64 %block1.0 to i32
  %fs_magic.i279 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 62
  %meta_lock = getelementptr i8, ptr %inode, i32 -176
  %lock.i = getelementptr i8, ptr %inode, i32 -140
  %dep_map.i.i.i = getelementptr i8, ptr %inode, i32 -172
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 13
  %umax = call i32 @llvm.umax.i32(i32 %conv113, i32 15)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0369 = phi i32 [ %conv113, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ctx.sroa.11.0368 = phi i32 [ 0, %for.body.lr.ph ], [ %ctx.sroa.11.2, %for.inc.for.body_crit_edge ]
  %ctx.sroa.7348.0367 = phi i64 [ 0, %for.body.lr.ph ], [ %ctx.sroa.7348.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0369, i32 %umax)
  %exitcond = icmp eq i32 %i.0369, %umax
  br i1 %exitcond, label %do.body2.i278, label %ufs_get_direct_data_ptr.exit284, !prof !121

do.body2.i278:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 555, 0\0A.popsection", ""() #7, !srcloc !122
  unreachable

ufs_get_direct_data_ptr.exit284:                  ; preds = %for.body
  %45 = ptrtoint ptr %fs_magic.i279 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fs_magic.i279, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %46)
  %cmp6.i280 = icmp eq i32 %46, 424935705
  %arrayidx.i281 = getelementptr [15 x i64], ptr %add.ptr.i, i32 0, i32 %i.0369
  %arrayidx8.i282 = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 %i.0369
  %cond.i283 = select i1 %cmp6.i280, ptr %arrayidx.i281, ptr %arrayidx8.i282
  %47 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i, align 16
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %fs_magic.i286 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %50, i32 0, i32 62
  %51 = ptrtoint ptr %fs_magic.i286 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fs_magic.i286, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %52)
  %cmp.i287 = icmp eq i32 %52, 424935705
  br i1 %cmp.i287, label %cond.true.i291, label %cond.false.i296

cond.true.i291:                                   ; preds = %ufs_get_direct_data_ptr.exit284
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %cond.i283 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %cond.i283, align 8
  %s_bytesex.i.i288 = getelementptr inbounds %struct.ufs_sb_info, ptr %48, i32 0, i32 2
  %55 = ptrtoint ptr %s_bytesex.i.i288 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_bytesex.i.i288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i289 = icmp eq i32 %56, 0
  %57 = tail call i64 @llvm.bswap.i64(i64 %54) #7
  %retval.0.i.i290 = select i1 %cmp.i.i289, i64 %57, i64 %54
  br label %ufs_data_ptr_to_cpu.exit298

cond.false.i296:                                  ; preds = %ufs_get_direct_data_ptr.exit284
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %cond.i283 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cond.i283, align 4
  %s_bytesex.i7.i292 = getelementptr inbounds %struct.ufs_sb_info, ptr %48, i32 0, i32 2
  %60 = ptrtoint ptr %s_bytesex.i7.i292 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_bytesex.i7.i292, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i8.i293 = icmp eq i32 %61, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  %retval.0.i9.i294 = select i1 %cmp.i8.i293, i32 %62, i32 %59
  %conv.i295 = zext i32 %retval.0.i9.i294 to i64
  br label %ufs_data_ptr_to_cpu.exit298

ufs_data_ptr_to_cpu.exit298:                      ; preds = %cond.false.i296, %cond.true.i291
  %cond.i297 = phi i64 [ %retval.0.i.i290, %cond.true.i291 ], [ %conv.i295, %cond.false.i296 ]
  %conv119 = trunc i64 %cond.i297 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv119)
  %tobool120.not = icmp eq i32 %conv119, 0
  br i1 %tobool120.not, label %ufs_data_ptr_to_cpu.exit298.for.inc_crit_edge, label %if.end122

ufs_data_ptr_to_cpu.exit298.for.inc_crit_edge:    ; preds = %ufs_data_ptr_to_cpu.exit298
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end122:                                        ; preds = %ufs_data_ptr_to_cpu.exit298
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %63 = ptrtoint ptr %meta_lock to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %meta_lock, align 4
  %inc.i.i.i.i = add i32 %64, 1
  store i32 %inc.i.i.i.i, ptr %meta_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  %65 = tail call ptr @llvm.returnaddress(i32 0) #7
  %66 = ptrtoint ptr %65 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %66) #7
  %67 = ptrtoint ptr %fs_magic.i279 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fs_magic.i279, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %68)
  %cmp.i300 = icmp eq i32 %68, 424935705
  br i1 %cmp.i300, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %cond.i283 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %cond.i283, align 8
  br label %ufs_data_ptr_clear.exit

if.else.i:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %cond.i283 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %cond.i283, align 4
  br label %ufs_data_ptr_clear.exit

ufs_data_ptr_clear.exit:                          ; preds = %if.else.i, %if.then.i
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %66) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  %71 = ptrtoint ptr %meta_lock to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %meta_lock, align 4
  %inc.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i, ptr %meta_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %conv124 = and i64 %cond.i297, 4294967295
  %73 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_fpb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctx.sroa.11.0368)
  %tobool.not.i = icmp eq i32 %ctx.sroa.11.0368, 0
  br i1 %tobool.not.i, label %ufs_data_ptr_clear.exit.free_data.exit_crit_edge, label %land.lhs.true.i

ufs_data_ptr_clear.exit.free_data.exit_crit_edge: ; preds = %ufs_data_ptr_clear.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_data.exit

land.lhs.true.i:                                  ; preds = %ufs_data_ptr_clear.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %ctx.sroa.7348.0367, i64 %conv124)
  %cmp.not.i = icmp eq i64 %ctx.sroa.7348.0367, %conv124
  br i1 %cmp.not.i, label %land.lhs.true.i.free_data.exit_crit_edge, label %if.then.i303

land.lhs.true.i.free_data.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_data.exit

if.then.i303:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i302 = zext i32 %ctx.sroa.11.0368 to i64
  %sub.i = sub i64 %ctx.sroa.7348.0367, %conv.i302
  tail call void @ufs_free_blocks(ptr noundef %inode, i64 noundef %sub.i, i32 noundef %ctx.sroa.11.0368) #7
  br label %free_data.exit

free_data.exit:                                   ; preds = %if.then.i303, %land.lhs.true.i.free_data.exit_crit_edge, %ufs_data_ptr_clear.exit.free_data.exit_crit_edge
  %ctx.sroa.11.1 = phi i32 [ 0, %ufs_data_ptr_clear.exit.free_data.exit_crit_edge ], [ %ctx.sroa.11.0368, %land.lhs.true.i.free_data.exit_crit_edge ], [ 0, %if.then.i303 ]
  %add.i = add i32 %ctx.sroa.11.1, %74
  %conv7.i = zext i32 %74 to i64
  %add8.i = add nuw nsw i64 %conv124, %conv7.i
  br label %for.inc

for.inc:                                          ; preds = %free_data.exit, %ufs_data_ptr_to_cpu.exit298.for.inc_crit_edge
  %ctx.sroa.7348.1 = phi i64 [ %ctx.sroa.7348.0367, %ufs_data_ptr_to_cpu.exit298.for.inc_crit_edge ], [ %add8.i, %free_data.exit ]
  %ctx.sroa.11.2 = phi i32 [ %ctx.sroa.11.0368, %ufs_data_ptr_to_cpu.exit298.for.inc_crit_edge ], [ %add.i, %free_data.exit ]
  %inc = add nsw i32 %i.0369, 1
  %conv114 = zext i32 %inc to i64
  %cmp115 = icmp ugt i64 %block2.0, %conv114
  br i1 %cmp115, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctx.sroa.11.2)
  %tobool.not.i305 = icmp eq i32 %ctx.sroa.11.2, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ctx.sroa.7348.1)
  %cmp.not.i307 = icmp eq i64 %ctx.sroa.7348.1, 0
  %or.cond = select i1 %tobool.not.i305, i1 true, i1 %cmp.not.i307
  br i1 %or.cond, label %for.end.free_data.exit313_crit_edge, label %if.then.i311

for.end.free_data.exit313_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_data.exit313

if.then.i311:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i309 = zext i32 %ctx.sroa.11.2 to i64
  %sub.i310 = sub i64 %ctx.sroa.7348.1, %conv.i309
  tail call void @ufs_free_blocks(ptr noundef %inode, i64 noundef %sub.i310, i32 noundef %ctx.sroa.11.2) #7
  br label %free_data.exit313

free_data.exit313:                                ; preds = %if.then.i311, %for.end.free_data.exit313_crit_edge, %next1.free_data.exit313_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %frag3.0, i64 %frag4.0)
  %cmp125.not = icmp ult i64 %frag3.0, %frag4.0
  br i1 %cmp125.not, label %if.end128, label %free_data.exit313.do.body146_crit_edge

free_data.exit313.do.body146_crit_edge:           ; preds = %free_data.exit313
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body146

if.end128:                                        ; preds = %free_data.exit313
  %75 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_fpbshift, align 4
  %sh_prom130 = zext i32 %76 to i64
  %shr131 = lshr i64 %frag3.0, %sh_prom130
  %conv132 = trunc i64 %shr131 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv132)
  %cmp.i314 = icmp ugt i32 %conv132, 14
  br i1 %cmp.i314, label %do.body2.i315, label %ufs_get_direct_data_ptr.exit321, !prof !121

do.body2.i315:                                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 555, 0\0A.popsection", ""() #7, !srcloc !122
  unreachable

ufs_get_direct_data_ptr.exit321:                  ; preds = %if.end128
  %fs_magic.i316 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 62
  %77 = ptrtoint ptr %fs_magic.i316 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fs_magic.i316, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %78)
  %cmp6.i317 = icmp eq i32 %78, 424935705
  %arrayidx.i318 = getelementptr [15 x i64], ptr %add.ptr.i, i32 0, i32 %conv132
  %arrayidx8.i319 = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 %conv132
  %cond.i320 = select i1 %cmp6.i317, ptr %arrayidx.i318, ptr %arrayidx8.i319
  %79 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i, align 16
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %fs_magic.i323 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %82, i32 0, i32 62
  %83 = ptrtoint ptr %fs_magic.i323 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fs_magic.i323, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %84)
  %cmp.i324 = icmp eq i32 %84, 424935705
  br i1 %cmp.i324, label %cond.true.i328, label %cond.false.i333

cond.true.i328:                                   ; preds = %ufs_get_direct_data_ptr.exit321
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %cond.i320 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %cond.i320, align 8
  %s_bytesex.i.i325 = getelementptr inbounds %struct.ufs_sb_info, ptr %80, i32 0, i32 2
  %87 = ptrtoint ptr %s_bytesex.i.i325 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_bytesex.i.i325, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i326 = icmp eq i32 %88, 0
  %89 = tail call i64 @llvm.bswap.i64(i64 %86) #7
  %retval.0.i.i327 = select i1 %cmp.i.i326, i64 %89, i64 %86
  br label %ufs_data_ptr_to_cpu.exit335

cond.false.i333:                                  ; preds = %ufs_get_direct_data_ptr.exit321
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %cond.i320 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cond.i320, align 4
  %s_bytesex.i7.i329 = getelementptr inbounds %struct.ufs_sb_info, ptr %80, i32 0, i32 2
  %92 = ptrtoint ptr %s_bytesex.i7.i329 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_bytesex.i7.i329, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.i8.i330 = icmp eq i32 %93, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #7
  %retval.0.i9.i331 = select i1 %cmp.i8.i330, i32 %94, i32 %91
  %conv.i332 = zext i32 %retval.0.i9.i331 to i64
  br label %ufs_data_ptr_to_cpu.exit335

ufs_data_ptr_to_cpu.exit335:                      ; preds = %cond.false.i333, %cond.true.i328
  %cond.i334 = phi i64 [ %retval.0.i.i327, %cond.true.i328 ], [ %conv.i332, %cond.false.i333 ]
  %conv135 = trunc i64 %cond.i334 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv135)
  %tobool136.not = icmp eq i32 %conv135, 0
  br i1 %tobool136.not, label %if.then137, label %ufs_data_ptr_to_cpu.exit335.if.end138_crit_edge

ufs_data_ptr_to_cpu.exit335.if.end138_crit_edge:  ; preds = %ufs_data_ptr_to_cpu.exit335
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then137:                                       ; preds = %ufs_data_ptr_to_cpu.exit335
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36) #7
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %ufs_data_ptr_to_cpu.exit335.if.end138_crit_edge
  %95 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_fpbmask, align 8
  %meta_lock142 = getelementptr i8, ptr %inode, i32 -176
  %lock.i336 = getelementptr i8, ptr %inode, i32 -140
  tail call void @_raw_spin_lock(ptr noundef %lock.i336) #7
  %97 = ptrtoint ptr %meta_lock142 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %meta_lock142, align 4
  %inc.i.i.i.i337 = add i32 %98, 1
  store i32 %inc.i.i.i.i337, ptr %meta_lock142, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  %dep_map.i.i.i338 = getelementptr i8, ptr %inode, i32 -172
  %99 = tail call ptr @llvm.returnaddress(i32 0) #7
  %100 = ptrtoint ptr %99 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i338, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %100) #7
  %101 = ptrtoint ptr %fs_magic.i316 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fs_magic.i316, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %102)
  %cmp.i340 = icmp eq i32 %102, 424935705
  br i1 %cmp.i340, label %if.then.i341, label %if.else.i342

if.then.i341:                                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %cond.i320 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 0, ptr %cond.i320, align 8
  br label %ufs_data_ptr_clear.exit343

if.else.i342:                                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %cond.i320 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %cond.i320, align 4
  br label %ufs_data_ptr_clear.exit343

ufs_data_ptr_clear.exit343:                       ; preds = %if.else.i342, %if.then.i341
  tail call void @lock_release(ptr noundef %dep_map.i.i.i338, i32 noundef %100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  %105 = ptrtoint ptr %meta_lock142 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %meta_lock142, align 4
  %inc.i.i.i345 = add i32 %106, 1
  store i32 %inc.i.i.i345, ptr %meta_lock142, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i336) #7
  %conv144 = and i64 %cond.i334, 4294967295
  %107 = trunc i64 %frag4.0 to i32
  %conv145 = and i32 %96, %107
  tail call void @ufs_free_fragments(ptr noundef %inode, i64 noundef %conv144, i32 noundef %conv145) #7
  br label %do.body146

do.body146:                                       ; preds = %ufs_data_ptr_clear.exit343, %free_data.exit313.do.body146_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_trunc_direct, %do.body164)) #7
          to label %if.then160 [label %do.body164], !srcloc !120

if.then160:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_trunc_direct.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 974, ptr noundef nonnull @.str.31) #7
  br label %do.body164

do.body164:                                       ; preds = %if.then160, %do.body146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_trunc_direct, %do.end182)) #7
          to label %if.then178 [label %do.end182], !srcloc !120

if.then178:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino179 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %108 = ptrtoint ptr %i_ino179 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i_ino179, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_trunc_direct.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.39, i32 noundef %109) #7
  br label %do.end182

do.end182:                                        ; preds = %if.then178, %do.body164
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ubh_bread_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_full_branch(ptr noundef %inode, i64 noundef %ind_block, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %s_bsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %s_bsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_bsize, align 4
  %conv = zext i32 %7 to i64
  %call1 = tail call ptr @_ubh_bread_(ptr noundef %5, ptr noundef %1, i64 noundef %ind_block, i64 noundef %conv) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dec = add i32 %depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  %s_apb13 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 47
  %8 = ptrtoint ptr %s_apb13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_apb13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14129.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %for.cond12.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp14129.not, label %for.cond.preheader.if.end28_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end28_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs_magic.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %s_fsize11.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 12
  br label %for.body

for.cond12.preheader:                             ; preds = %if.end
  br i1 %cmp14129.not, label %for.cond12.preheader.if.end28_crit_edge, label %for.body16.lr.ph

for.cond12.preheader.if.end28_crit_edge:          ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body16.lr.ph:                                 ; preds = %for.cond12.preheader
  %fs_magic.i60 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  %s_fshift.i62 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %s_fsize11.i81 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 12
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  br label %for.body16

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %i.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end10.for.body_crit_edge ]
  %conv5 = zext i32 %i.0127 to i64
  %10 = ptrtoint ptr %fs_magic.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fs_magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %11)
  %cmp.i = icmp eq i32 %11, 424935705
  %12 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_fshift.i, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %13, -3
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %conv5, %sh_prom.i
  %idxprom.i = trunc i64 %shr.i to i32
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %call1, i32 0, i32 2, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %18 = ptrtoint ptr %s_fsize11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_fsize11.i, align 8
  %shr1.i = lshr i32 %19, 3
  %sub2.i = add nsw i32 %shr1.i, -1
  %idx.ext.i = and i32 %sub2.i, %i.0127
  %add.ptr.i = getelementptr i64, ptr %17, i32 %idx.ext.i
  br label %ubh_get_data_ptr.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub5.i = add i32 %13, -2
  %sh_prom6.i = zext i32 %sub5.i to i64
  %shr7.i = lshr i64 %conv5, %sh_prom6.i
  %idxprom8.i = trunc i64 %shr7.i to i32
  %arrayidx9.i = getelementptr %struct.ufs_buffer_head, ptr %call1, i32 0, i32 2, i32 %idxprom8.i
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx9.i, align 4
  %b_data10.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data10.i, align 4
  %24 = ptrtoint ptr %s_fsize11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_fsize11.i, align 8
  %shr12.i = lshr i32 %25, 2
  %sub13.i = add nsw i32 %shr12.i, -1
  %idx.ext16.i = and i32 %sub13.i, %i.0127
  %add.ptr17.i = getelementptr i32, ptr %23, i32 %idx.ext16.i
  br label %ubh_get_data_ptr.exit

ubh_get_data_ptr.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr17.i, %if.else.i ]
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %fs_magic.i58 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %29, i32 0, i32 62
  %30 = ptrtoint ptr %fs_magic.i58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fs_magic.i58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %31)
  %cmp.i59 = icmp eq i32 %31, 424935705
  br i1 %cmp.i59, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %ubh_get_data_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %retval.0.i, align 8
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %27, i32 0, i32 2
  %34 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 0
  %36 = tail call i64 @llvm.bswap.i64(i64 %33) #7
  %retval.0.i.i = select i1 %cmp.i.i, i64 %36, i64 %33
  br label %ufs_data_ptr_to_cpu.exit

cond.false.i:                                     ; preds = %ubh_get_data_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retval.0.i, align 4
  %s_bytesex.i7.i = getelementptr inbounds %struct.ufs_sb_info, ptr %27, i32 0, i32 2
  %39 = ptrtoint ptr %s_bytesex.i7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_bytesex.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i8.i = icmp eq i32 %40, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %retval.0.i9.i = select i1 %cmp.i8.i, i32 %41, i32 %38
  %conv.i = zext i32 %retval.0.i9.i to i64
  br label %ufs_data_ptr_to_cpu.exit

ufs_data_ptr_to_cpu.exit:                         ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %retval.0.i.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %tobool8.not = icmp eq i64 %cond.i, 0
  br i1 %tobool8.not, label %ufs_data_ptr_to_cpu.exit.if.end10_crit_edge, label %if.then9

ufs_data_ptr_to_cpu.exit.if.end10_crit_edge:      ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @free_full_branch(ptr noundef %inode, i64 noundef %cond.i, i32 noundef %dec)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %ufs_data_ptr_to_cpu.exit.if.end10_crit_edge
  %inc = add nuw i32 %i.0127, 1
  %42 = ptrtoint ptr %s_apb13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_apb13, align 4
  %cmp = icmp ult i32 %inc, %43
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.if.end28_crit_edge

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body16:                                       ; preds = %if.end24.for.body16_crit_edge, %for.body16.lr.ph
  %i.1132 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc26, %if.end24.for.body16_crit_edge ]
  %ctx.sroa.11.0131 = phi i32 [ 0, %for.body16.lr.ph ], [ %ctx.sroa.11.2, %if.end24.for.body16_crit_edge ]
  %ctx.sroa.7117.0130 = phi i64 [ 0, %for.body16.lr.ph ], [ %ctx.sroa.7117.1, %if.end24.for.body16_crit_edge ]
  %conv18 = zext i32 %i.1132 to i64
  %44 = ptrtoint ptr %fs_magic.i60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fs_magic.i60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %45)
  %cmp.i61 = icmp eq i32 %45, 424935705
  %46 = ptrtoint ptr %s_fshift.i62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_fshift.i62, align 8
  br i1 %cmp.i61, label %if.then.i74, label %if.else.i86

if.then.i74:                                      ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i63 = add i32 %47, -3
  %sh_prom.i64 = zext i32 %sub.i63 to i64
  %shr.i65 = lshr i64 %conv18, %sh_prom.i64
  %idxprom.i66 = trunc i64 %shr.i65 to i32
  %arrayidx.i67 = getelementptr %struct.ufs_buffer_head, ptr %call1, i32 0, i32 2, i32 %idxprom.i66
  %48 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i67, align 4
  %b_data.i68 = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %b_data.i68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_data.i68, align 4
  %52 = ptrtoint ptr %s_fsize11.i81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_fsize11.i81, align 8
  %shr1.i70 = lshr i32 %53, 3
  %sub2.i71 = add nsw i32 %shr1.i70, -1
  %idx.ext.i72 = and i32 %sub2.i71, %i.1132
  %add.ptr.i73 = getelementptr i64, ptr %51, i32 %idx.ext.i72
  br label %ubh_get_data_ptr.exit88

if.else.i86:                                      ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  %sub5.i75 = add i32 %47, -2
  %sh_prom6.i76 = zext i32 %sub5.i75 to i64
  %shr7.i77 = lshr i64 %conv18, %sh_prom6.i76
  %idxprom8.i78 = trunc i64 %shr7.i77 to i32
  %arrayidx9.i79 = getelementptr %struct.ufs_buffer_head, ptr %call1, i32 0, i32 2, i32 %idxprom8.i78
  %54 = ptrtoint ptr %arrayidx9.i79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx9.i79, align 4
  %b_data10.i80 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %b_data10.i80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data10.i80, align 4
  %58 = ptrtoint ptr %s_fsize11.i81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_fsize11.i81, align 8
  %shr12.i82 = lshr i32 %59, 2
  %sub13.i83 = add nsw i32 %shr12.i82, -1
  %idx.ext16.i84 = and i32 %sub13.i83, %i.1132
  %add.ptr17.i85 = getelementptr i32, ptr %57, i32 %idx.ext16.i84
  br label %ubh_get_data_ptr.exit88

ubh_get_data_ptr.exit88:                          ; preds = %if.else.i86, %if.then.i74
  %retval.0.i87 = phi ptr [ %add.ptr.i73, %if.then.i74 ], [ %add.ptr17.i85, %if.else.i86 ]
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %fs_magic.i90 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %63, i32 0, i32 62
  %64 = ptrtoint ptr %fs_magic.i90 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fs_magic.i90, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %65)
  %cmp.i91 = icmp eq i32 %65, 424935705
  br i1 %cmp.i91, label %cond.true.i95, label %cond.false.i100

cond.true.i95:                                    ; preds = %ubh_get_data_ptr.exit88
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %retval.0.i87 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %retval.0.i87, align 8
  %s_bytesex.i.i92 = getelementptr inbounds %struct.ufs_sb_info, ptr %61, i32 0, i32 2
  %68 = ptrtoint ptr %s_bytesex.i.i92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_bytesex.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i93 = icmp eq i32 %69, 0
  %70 = tail call i64 @llvm.bswap.i64(i64 %67) #7
  %retval.0.i.i94 = select i1 %cmp.i.i93, i64 %70, i64 %67
  br label %ufs_data_ptr_to_cpu.exit102

cond.false.i100:                                  ; preds = %ubh_get_data_ptr.exit88
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %retval.0.i87 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %retval.0.i87, align 4
  %s_bytesex.i7.i96 = getelementptr inbounds %struct.ufs_sb_info, ptr %61, i32 0, i32 2
  %73 = ptrtoint ptr %s_bytesex.i7.i96 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_bytesex.i7.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i8.i97 = icmp eq i32 %74, 0
  %75 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  %retval.0.i9.i98 = select i1 %cmp.i8.i97, i32 %75, i32 %72
  %conv.i99 = zext i32 %retval.0.i9.i98 to i64
  br label %ufs_data_ptr_to_cpu.exit102

ufs_data_ptr_to_cpu.exit102:                      ; preds = %cond.false.i100, %cond.true.i95
  %cond.i101 = phi i64 [ %retval.0.i.i94, %cond.true.i95 ], [ %conv.i99, %cond.false.i100 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i101)
  %tobool22.not = icmp eq i64 %cond.i101, 0
  br i1 %tobool22.not, label %ufs_data_ptr_to_cpu.exit102.if.end24_crit_edge, label %if.then23

ufs_data_ptr_to_cpu.exit102.if.end24_crit_edge:   ; preds = %ufs_data_ptr_to_cpu.exit102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %ufs_data_ptr_to_cpu.exit102
  %76 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_fpb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctx.sroa.11.0131)
  %tobool.not.i = icmp eq i32 %ctx.sroa.11.0131, 0
  br i1 %tobool.not.i, label %if.then23.free_data.exit_crit_edge, label %land.lhs.true.i

if.then23.free_data.exit_crit_edge:               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_data.exit

land.lhs.true.i:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_cmp8(i64 %ctx.sroa.7117.0130, i64 %cond.i101)
  %cmp.not.i = icmp eq i64 %ctx.sroa.7117.0130, %cond.i101
  br i1 %cmp.not.i, label %land.lhs.true.i.free_data.exit_crit_edge, label %if.then.i105

land.lhs.true.i.free_data.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_data.exit

if.then.i105:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i103 = zext i32 %ctx.sroa.11.0131 to i64
  %sub.i104 = sub i64 %ctx.sroa.7117.0130, %conv.i103
  tail call void @ufs_free_blocks(ptr noundef %inode, i64 noundef %sub.i104, i32 noundef %ctx.sroa.11.0131) #7
  br label %free_data.exit

free_data.exit:                                   ; preds = %if.then.i105, %land.lhs.true.i.free_data.exit_crit_edge, %if.then23.free_data.exit_crit_edge
  %ctx.sroa.11.1 = phi i32 [ 0, %if.then23.free_data.exit_crit_edge ], [ %ctx.sroa.11.0131, %land.lhs.true.i.free_data.exit_crit_edge ], [ 0, %if.then.i105 ]
  %add.i = add i32 %ctx.sroa.11.1, %77
  %conv7.i = zext i32 %77 to i64
  %add8.i = add i64 %cond.i101, %conv7.i
  br label %if.end24

if.end24:                                         ; preds = %free_data.exit, %ufs_data_ptr_to_cpu.exit102.if.end24_crit_edge
  %ctx.sroa.7117.1 = phi i64 [ %ctx.sroa.7117.0130, %ufs_data_ptr_to_cpu.exit102.if.end24_crit_edge ], [ %add8.i, %free_data.exit ]
  %ctx.sroa.11.2 = phi i32 [ %ctx.sroa.11.0131, %ufs_data_ptr_to_cpu.exit102.if.end24_crit_edge ], [ %add.i, %free_data.exit ]
  %inc26 = add nuw i32 %i.1132, 1
  %78 = ptrtoint ptr %s_apb13 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_apb13, align 4
  %cmp14 = icmp ult i32 %inc26, %79
  br i1 %cmp14, label %if.end24.for.body16_crit_edge, label %for.end27

if.end24.for.body16_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

for.end27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctx.sroa.11.2)
  %tobool.not.i107 = icmp eq i32 %ctx.sroa.11.2, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ctx.sroa.7117.1)
  %cmp.not.i109 = icmp eq i64 %ctx.sroa.7117.1, 0
  %or.cond = select i1 %tobool.not.i107, i1 true, i1 %cmp.not.i109
  br i1 %or.cond, label %for.end27.if.end28_crit_edge, label %if.then.i113

for.end27.if.end28_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then.i113:                                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i111 = zext i32 %ctx.sroa.11.2 to i64
  %sub.i112 = sub i64 %ctx.sroa.7117.1, %conv.i111
  tail call void @ufs_free_blocks(ptr noundef %inode, i64 noundef %sub.i112, i32 noundef %ctx.sroa.11.2) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then.i113, %for.end27.if.end28_crit_edge, %if.end10.if.end28_crit_edge, %for.cond12.preheader.if.end28_crit_edge, %for.cond.preheader.if.end28_crit_edge
  tail call void @ubh_bforget(ptr noundef nonnull %call1) #7
  %s_fpb29 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %80 = ptrtoint ptr %s_fpb29 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_fpb29, align 4
  tail call void @ufs_free_blocks(ptr noundef %inode, i64 noundef %ind_block, i32 noundef %81) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_panic(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_free_fragments(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_free_blocks(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubh_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_sync_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_bforget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ufs_get_locked_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_put_locked_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unlock_page(ptr noundef %page) #7
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !123

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !121

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.47) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !142
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !144
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ufs_put_locked_page, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !120

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %4) #7
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !70, !72, !73, !75, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @ufs_aops, !1, !"ufs_aops", i1 false, i1 false}
!1 = !{!"../fs/ufs/inode.c", i32 528, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ufs/inode.c", i32 661, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ufs_iget.__UNIQUE_ID_ddebug284, !3, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ufs_iget.__UNIQUE_ID_ddebug285, !3, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!11 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ufs/inode.c", i32 664, i32 19}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ufs/inode.c", i32 664, i32 37}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ufs/inode.c", i32 679, i32 37}
!18 = !{ptr @ufs_iget.__UNIQUE_ID_ddebug286, !19, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!19 = !{!"../fs/ufs/inode.c", i32 706, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ufs_iget.__UNIQUE_ID_ddebug287, !19, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ufs_file_inode_operations, !24, !"ufs_file_inode_operations", i1 false, i1 false}
!24 = !{!"../fs/ufs/inode.c", i32 1237, i32 31}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ufs/inode.c", i32 424, i32 2}
!27 = !{ptr @ufs_getfrag_block.__UNIQUE_ID_ddebug280, !26, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!28 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ufs_getfrag_block.__UNIQUE_ID_ddebug281, !26, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!30 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ufs/inode.c", i32 426, i32 19}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ufs/inode.c", i32 426, i32 36}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ufs/inode.c", i32 57, i32 2}
!37 = !{ptr @ufs_block_to_path.__UNIQUE_ID_ddebug274, !36, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ufs_block_to_path.__UNIQUE_ID_ddebug275, !36, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!40 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ufs/inode.c", i32 136, i32 2}
!43 = !{ptr @ufs_frag_map.__UNIQUE_ID_ddebug276, !42, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!44 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ufs_frag_map.__UNIQUE_ID_ddebug277, !42, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!46 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ufs/inode.c", i32 385, i32 2}
!49 = !{ptr @ufs_inode_getblock.__UNIQUE_ID_ddebug278, !48, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!50 = !{ptr @ufs_inode_getblock.__UNIQUE_ID_ddebug279, !48, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ufs/inode.c", i32 612, i32 2}
!53 = !{ptr @ufs2_read_inode.__UNIQUE_ID_ddebug282, !52, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!54 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ufs2_read_inode.__UNIQUE_ID_ddebug283, !52, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!56 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ufs/inode.c", i32 804, i32 2}
!59 = !{ptr @ufs_update_inode.__UNIQUE_ID_ddebug292, !58, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!60 = !{ptr @ufs_update_inode.__UNIQUE_ID_ddebug293, !58, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!61 = !{ptr @ufs_update_inode.__UNIQUE_ID_ddebug294, !62, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!62 = !{!"../fs/ufs/inode.c", i32 833, i32 2}
!63 = !{ptr @ufs_update_inode.__UNIQUE_ID_ddebug295, !62, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ufs/inode.c", i32 763, i32 2}
!66 = !{ptr @ufs2_update_inode.__UNIQUE_ID_ddebug288, !65, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!67 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ufs2_update_inode.__UNIQUE_ID_ddebug289, !65, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!69 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ufs2_update_inode.__UNIQUE_ID_ddebug290, !71, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!71 = !{!"../fs/ufs/inode.c", i32 795, i32 2}
!72 = !{ptr @ufs2_update_inode.__UNIQUE_ID_ddebug291, !71, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ufs/inode.c", i32 899, i32 2}
!75 = !{ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug296, !74, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!76 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug297, !74, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!78 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug300, !80, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!80 = !{!"../fs/ufs/inode.c", i32 917, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug301, !80, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!83 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ufs/inode.c", i32 932, i32 38}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ufs/inode.c", i32 965, i32 17}
!88 = !{ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug302, !89, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!89 = !{!"../fs/ufs/inode.c", i32 974, i32 2}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ufs_trunc_direct.__UNIQUE_ID_ddebug303, !89, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!92 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ufs/inode.c", i32 1188, i32 2}
!95 = !{ptr @ufs_truncate.__UNIQUE_ID_ddebug304, !94, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!96 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ufs_truncate.__UNIQUE_ID_ddebug305, !94, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!98 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ufs_truncate.__UNIQUE_ID_ddebug306, !100, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!100 = !{!"../fs/ufs/inode.c", i32 1211, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ufs_truncate.__UNIQUE_ID_ddebug307, !100, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!103 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/mm.h", i32 717, i32 2}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i32 0, i32 5}
!120 = !{i64 2148288366, i64 2148288371, i64 2148288384, i64 2148288428, i64 2148288462, i64 2148288483}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2154772587, i64 2154773065, i64 2154772624, i64 2154772680, i64 2154772714, i64 2154772738, i64 2154772779, i64 2154772800, i64 2154772828, i64 2154772862}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2154683637}
!125 = !{!"auto-init"}
!126 = !{i64 2150220096}
!127 = !{i64 2150220421}
!128 = !{i64 2152526807}
!129 = !{i64 2152526649}
!130 = !{i64 2152526977}
!131 = !{i64 2150219771}
!132 = !{i64 2151468135, i64 2151468626, i64 2151468172, i64 2151468228, i64 2151468262, i64 2151468286, i64 2151468327, i64 2151468348, i64 2151468376, i64 2151468410}
!133 = !{i64 2154849053, i64 2154849533, i64 2154849090, i64 2154849146, i64 2154849180, i64 2154849204, i64 2154849245, i64 2154849266, i64 2154849294, i64 2154849328}
!134 = !{i64 2148483831, i64 2148483863, i64 2148483892, i64 2148483926, i64 2148483957, i64 2148483980}
!135 = !{i64 2148572912}
!136 = !{i64 2150234530}
!137 = !{i64 2150234372}
!138 = !{i64 2150234700}
!139 = !{i64 869231, i64 869292}
!140 = !{i64 871963}
!141 = !{i64 872248}
!142 = !{i64 2153143012, i64 2153143495, i64 2153143049, i64 2153143105, i64 2153143139, i64 2153143163, i64 2153143204, i64 2153143225, i64 2153143253, i64 2153143287}
!143 = !{i64 2148563425}
!144 = !{i64 2148478158, i64 2148478190, i64 2148478219, i64 2148478253, i64 2148478284, i64 2148478307}
!145 = !{i64 2148563654}
