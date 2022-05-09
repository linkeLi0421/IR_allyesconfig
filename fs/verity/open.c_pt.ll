; ModuleID = '/llk/IR_all_yes/fs/verity/open.c_pt.bc'
source_filename = "../fs/verity/open.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsverity_file_open\22, \22a\22\09"
module asm "\09.weak\09__crc_fsverity_file_open\09\09\09\09"
module asm "\09.long\09__crc_fsverity_file_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsverity_file_open:\09\09\09\09\09"
module asm "\09.asciz \09\22fsverity_file_open\22\09\09\09\09\09"
module asm "__kstrtabns_fsverity_file_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsverity_prepare_setattr\22, \22a\22\09"
module asm "\09.weak\09__crc_fsverity_prepare_setattr\09\09\09\09"
module asm "\09.long\09__crc_fsverity_prepare_setattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsverity_prepare_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22fsverity_prepare_setattr\22\09\09\09\09\09"
module asm "__kstrtabns_fsverity_prepare_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsverity_cleanup_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_fsverity_cleanup_inode\09\09\09\09"
module asm "\09.long\09__crc_fsverity_cleanup_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsverity_cleanup_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22fsverity_cleanup_inode\22\09\09\09\09\09"
module asm "__kstrtabns_fsverity_cleanup_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fsverity_hash_alg = type { ptr, ptr, i32, i32, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.merkle_tree_params = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, [8 x i64] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.fsverity_info = type { %struct.merkle_tree_params, [64 x i8], [64 x i8], ptr }
%struct.fsverity_descriptor = type { i8, i8, i8, i8, i32, i64, [64 x i8], [32 x i8], [144 x i8], [0 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fsverity_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error %d preparing hash state\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported log_blocksize: %u\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/verity/open.c\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Merkle tree block size (%u) too small for hash algorithm \22%s\22\00", [34 x i8] zeroinitializer }, align 32
@fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 0, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fsverity_init_merkle_tree_params\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Merkle tree uses %s with %u-byte blocks (%u hashes/block), salt=%*phN\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"fs-verity: Merkle tree uses %s with %u-byte blocks (%u hashes/block), salt=%*phN\0A\00", [46 x i8] zeroinitializer }, align 32
@fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.4, ptr @.str.10, i8 0, i8 23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Data is %lld bytes (%llu blocks)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fs-verity: Data is %lld bytes (%llu blocks)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Too many levels in Merkle tree\00", [33 x i8] zeroinitializer }, align 32
@fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.4, ptr @.str.13, i8 0, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Level %d is %llu blocks starting at index %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"fs-verity: Level %d is %llu blocks starting at index %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@fsverity_info_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error %d initializing Merkle tree parameters\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error %d computing file digest\00", [33 x i8] zeroinitializer }, align 32
@fsverity_create_info.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsverity_create_info\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Computed file digest: %s:%*phN\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fs-verity: Computed file digest: %s:%*phN\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error %d getting verity descriptor size\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Verity descriptor is too large (%d bytes)\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error %d reading verity descriptor\00", [61 x i8] zeroinitializer }, align 32
@fsverity_file_open.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsverity_file_open\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Denying opening verity file (ino %lu) for write\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"fs-verity: Denying opening verity file (ino %lu) for write\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_fsverity_file_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsverity_file_open = external dso_local constant [0 x i8], align 1
@__ksymtab_fsverity_file_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsverity_file_open to i32), ptr @__kstrtab_fsverity_file_open, ptr @__kstrtabns_fsverity_file_open }, section "___ksymtab_gpl+fsverity_file_open", align 4
@fsverity_prepare_setattr.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsverity_prepare_setattr\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Denying truncate of verity file (ino %lu)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fs-verity: Denying truncate of verity file (ino %lu)\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_fsverity_prepare_setattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsverity_prepare_setattr = external dso_local constant [0 x i8], align 1
@__ksymtab_fsverity_prepare_setattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsverity_prepare_setattr to i32), ptr @__kstrtab_fsverity_prepare_setattr, ptr @__kstrtabns_fsverity_prepare_setattr }, section "___ksymtab_gpl+fsverity_prepare_setattr", align 4
@__kstrtab_fsverity_cleanup_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsverity_cleanup_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_fsverity_cleanup_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsverity_cleanup_inode to i32), ptr @__kstrtab_fsverity_cleanup_inode, ptr @__kstrtabns_fsverity_cleanup_inode }, section "___ksymtab_gpl+fsverity_cleanup_inode", align 4
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsverity_info\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unrecognized descriptor size: %zu bytes\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unrecognized descriptor version: %u\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Reserved bits set in descriptor\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid salt_size: %u\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Wrong data_size: %llu (desc) != %lld (inode)\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Signature overflows verity descriptor\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 53, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 58, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 66, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 71, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 80, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 93, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 96, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 112, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"fsverity_info_cachep\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 12, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 166, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 177, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 180, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 275, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 280, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 289, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 351, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 373, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 396, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 226, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 232, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 238, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 243, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 248, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [20 x i8] c"../fs/verity/open.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 255, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__ksymtab_fsverity_cleanup_inode, ptr @__ksymtab_fsverity_file_open, ptr @__ksymtab_fsverity_prepare_setattr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @fsverity_info_cachep, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsverity_info_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_init_merkle_tree_params(ptr nocapture noundef %params, ptr noundef %inode, i32 noundef %hash_algorithm, i32 noundef %log_blocksize, ptr noundef %salt, i32 noundef %salt_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %params, i32 0, i32 112)
  %call = tail call ptr @fsverity_get_hash_alg(ptr noundef %inode, i32 noundef %hash_algorithm) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %params, align 8
  %digest_size = getelementptr inbounds %struct.fsverity_hash_alg, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %digest_size, align 4
  %digest_size4 = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 2
  %5 = ptrtoint ptr %digest_size4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %digest_size4, align 8
  %call5 = tail call ptr @fsverity_prepare_hash_state(ptr noundef %call, ptr noundef %salt, i32 noundef %salt_size) #8
  %hashstate = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %hashstate to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %hashstate, align 4
  %cmp.i231 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call5 to i32
  %8 = ptrtoint ptr %hashstate to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %hashstate, align 4
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %7) #11
  br label %out_err

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %log_blocksize)
  %cmp.not = icmp eq i32 %log_blocksize, 12
  br i1 %cmp.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %log_blocksize) #11
  br label %out_err

if.end14:                                         ; preds = %if.end12
  %log_blocksize15 = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 5
  %9 = ptrtoint ptr %log_blocksize15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %log_blocksize15, align 4
  %block_size = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %block_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %block_size, align 4
  %11 = ptrtoint ptr %digest_size4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %digest_size4, align 8
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #8, !range !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %if.end41, label %do.end, !prof !83

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 66, i32 noundef 9, ptr noundef null) #8
  br label %out_err

if.end41:                                         ; preds = %if.end14
  %mul = shl i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul)
  %cmp44 = icmp ugt i32 %mul, 4096
  br i1 %cmp44, label %if.then45, label %cond.end57

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.fsverity_hash_alg, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 4096, ptr noundef %16) #11
  br label %out_err

cond.end57:                                       ; preds = %if.end41
  %17 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #8, !range !82
  %sub59 = add nsw i32 %17, -19
  %log_arity = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 6
  %18 = ptrtoint ptr %log_arity to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub59, ptr %log_arity, align 8
  %shl61 = shl nuw nsw i32 1, %sub59
  %hashes_per_block = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 4
  %19 = ptrtoint ptr %hashes_per_block to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl61, ptr %hashes_per_block, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsverity_init_merkle_tree_params, %do.end80)) #8
          to label %if.then74 [label %do.end80], !srcloc !84

if.then74:                                        ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #10
  %name75 = getelementptr inbounds %struct.fsverity_hash_alg, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %name75 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name75, align 4
  %22 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %block_size, align 4
  %24 = ptrtoint ptr %hashes_per_block to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hashes_per_block, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.9, ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %salt_size, ptr noundef %salt) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then74, %cond.end57
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %26 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_size, align 8
  %28 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %block_size, align 4
  %conv82 = zext i32 %29 to i64
  %add = add i64 %27, -1
  %sub83 = add i64 %add, %conv82
  %shr = lshr i64 %sub83, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsverity_init_merkle_tree_params, %do.end102)) #8
          to label %if.then98 [label %do.end102], !srcloc !84

if.then98:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.11, i64 noundef %31, i64 noundef %shr) #8
  br label %do.end102

do.end102:                                        ; preds = %if.then98, %do.end80
  call void @__sanitizer_cov_trace_const_cmp8(i64 8191, i64 %sub83)
  %cmp103235 = icmp ugt i64 %sub83, 8191
  br i1 %cmp103235, label %while.body.lr.ph, label %do.end102.while.end_crit_edge

do.end102.while.end_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end102
  %num_levels = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end108.while.body_crit_edge, %while.body.lr.ph
  %blocks.0236 = phi i64 [ %shr, %while.body.lr.ph ], [ %shr115, %if.end108.while.body_crit_edge ]
  %32 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp105 = icmp ugt i32 %33, 7
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #11
  br label %out_err

if.end108:                                        ; preds = %while.body
  %34 = ptrtoint ptr %hashes_per_block to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hashes_per_block, align 8
  %conv110 = zext i32 %35 to i64
  %add111 = add i64 %blocks.0236, -1
  %sub112 = add i64 %add111, %conv110
  %36 = ptrtoint ptr %log_arity to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %log_arity, align 8
  %sh_prom114 = zext i32 %37 to i64
  %shr115 = lshr i64 %sub112, %sh_prom114
  %inc = add nuw nsw i32 %33, 1
  %38 = ptrtoint ptr %num_levels to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc, ptr %num_levels, align 4
  %arrayidx = getelementptr %struct.merkle_tree_params, ptr %params, i32 0, i32 10, i32 %33
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %shr115, ptr %arrayidx, align 8
  %cmp103 = icmp ugt i64 %shr115, 1
  br i1 %cmp103, label %if.end108.while.body_crit_edge, label %if.end108.while.end_crit_edge

if.end108.while.end_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end108.while.body_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end108.while.end_crit_edge, %do.end102.while.end_crit_edge
  %level_start117 = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 10
  %40 = ptrtoint ptr %level_start117 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %level_start117, align 8
  %conv119 = trunc i64 %41 to i32
  %level0_blocks = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 9
  %42 = ptrtoint ptr %level0_blocks to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv119, ptr %level0_blocks, align 8
  %num_levels120 = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 7
  %43 = ptrtoint ptr %num_levels120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_levels120, align 4
  %level.0237 = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %level.0237)
  %cmp122238 = icmp sgt i32 %level.0237, -1
  br i1 %cmp122238, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

for.body:                                         ; preds = %do.end145.for.body_crit_edge, %while.end.for.body_crit_edge
  %level.0240 = phi i32 [ %level.0, %do.end145.for.body_crit_edge ], [ %level.0237, %while.end.for.body_crit_edge ]
  %offset.0239 = phi i64 [ %add146, %do.end145.for.body_crit_edge ], [ 0, %while.end.for.body_crit_edge ]
  %arrayidx125 = getelementptr %struct.merkle_tree_params, ptr %params, i32 0, i32 10, i32 %level.0240
  %45 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx125, align 8
  store i64 %offset.0239, ptr %arrayidx125, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsverity_init_merkle_tree_params, %do.end145)) #8
          to label %if.then142 [label %do.end145], !srcloc !84

if.then142:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.14, i32 noundef %level.0240, i64 noundef %46, i64 noundef %offset.0239) #8
  br label %do.end145

do.end145:                                        ; preds = %if.then142, %for.body
  %add146 = add i64 %46, %offset.0239
  %level.0 = add i32 %level.0240, -1
  %cmp122 = icmp sgt i32 %level.0, -1
  br i1 %cmp122, label %do.end145.for.body_crit_edge, label %for.end.loopexit

do.end145.for.body_crit_edge:                     ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = shl i64 %add146, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %while.end.for.end_crit_edge
  %offset.0.lcssa = phi i64 [ 0, %while.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %tree_size = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 8
  %47 = ptrtoint ptr %tree_size to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %offset.0.lcssa, ptr %tree_size, align 8
  br label %cleanup

out_err:                                          ; preds = %if.then107, %if.then45, %do.end, %if.then13, %if.then8
  %err.0 = phi i32 [ %7, %if.then8 ], [ -22, %if.then13 ], [ -22, %do.end ], [ -22, %if.then45 ], [ -22, %if.then107 ]
  %48 = ptrtoint ptr %hashstate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hashstate, align 4
  tail call void @kfree(ptr noundef %49) #8
  %50 = call ptr @memset(ptr %params, i32 0, i32 112)
  br label %cleanup

cleanup:                                          ; preds = %out_err, %for.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %err.0, %out_err ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsverity_get_hash_alg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsverity_prepare_hash_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fsverity_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsverity_create_info(ptr noundef %inode, ptr noundef %desc, i32 %desc_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fsverity_info_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %inode2 = getelementptr inbounds %struct.fsverity_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %inode2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inode, ptr %inode2, align 8
  %hash_algorithm = getelementptr inbounds %struct.fsverity_descriptor, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %hash_algorithm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hash_algorithm, align 1
  %conv = zext i8 %3 to i32
  %log_blocksize = getelementptr inbounds %struct.fsverity_descriptor, ptr %desc, i32 0, i32 2
  %4 = ptrtoint ptr %log_blocksize to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %log_blocksize, align 2
  %conv3 = zext i8 %5 to i32
  %salt = getelementptr inbounds %struct.fsverity_descriptor, ptr %desc, i32 0, i32 7
  %salt_size = getelementptr inbounds %struct.fsverity_descriptor, ptr %desc, i32 0, i32 3
  %6 = ptrtoint ptr %salt_size to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %salt_size, align 1
  %conv4 = zext i8 %7 to i32
  %call5 = tail call i32 @fsverity_init_merkle_tree_params(ptr noundef nonnull %call.i, ptr noundef %inode, i32 noundef %conv, i32 noundef %conv3, ptr noundef %salt, i32 noundef %conv4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %call5) #11
  br label %fsverity_free_info.exit

if.end8:                                          ; preds = %if.end
  %root_hash = getelementptr inbounds %struct.fsverity_info, ptr %call.i, i32 0, i32 1
  %root_hash10 = getelementptr inbounds %struct.fsverity_descriptor, ptr %desc, i32 0, i32 6
  %digest_size = getelementptr inbounds %struct.merkle_tree_params, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %digest_size, align 8
  %10 = call ptr @memcpy(ptr %root_hash, ptr %root_hash10, i32 %9)
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 8
  %file_digest = getelementptr inbounds %struct.fsverity_info, ptr %call.i, i32 0, i32 2
  %sig_size1.i = getelementptr inbounds %struct.fsverity_descriptor, ptr %desc, i32 0, i32 4
  %13 = ptrtoint ptr %sig_size1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sig_size1.i, align 4
  store i32 0, ptr %sig_size1.i, align 4
  %call.i66 = tail call i32 @fsverity_hash_buffer(ptr noundef %12, ptr noundef %desc, i32 noundef 256, ptr noundef %file_digest) #8
  %15 = ptrtoint ptr %sig_size1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sig_size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool16.not = icmp eq i32 %call.i66, 0
  br i1 %tobool16.not, label %do.body, label %if.then17

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %call.i66) #11
  br label %fsverity_free_info.exit

do.body:                                          ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsverity_create_info.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsverity_create_info, %out)) #8
          to label %if.then24 [label %out], !srcloc !84

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 8
  %name = getelementptr inbounds %struct.fsverity_hash_alg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %20 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %digest_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsverity_create_info.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.19, ptr noundef %19, i32 noundef %21, ptr noundef %file_digest) #8
  br label %out

out:                                              ; preds = %if.then24, %do.body
  %signature = getelementptr inbounds %struct.fsverity_descriptor, ptr %desc, i32 0, i32 9
  %22 = ptrtoint ptr %sig_size1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sig_size1.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %call33 = tail call i32 @fsverity_verify_signature(ptr noundef nonnull %call.i, ptr noundef %signature, i32 noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %out.cleanup_crit_edge, label %out.fsverity_free_info.exit_crit_edge

out.fsverity_free_info.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsverity_free_info.exit

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fsverity_free_info.exit:                          ; preds = %out.fsverity_free_info.exit_crit_edge, %if.then17, %if.then7
  %err.070 = phi i32 [ %call33, %out.fsverity_free_info.exit_crit_edge ], [ %call.i66, %if.then17 ], [ %call5, %if.then7 ]
  %hashstate.i = getelementptr inbounds %struct.merkle_tree_params, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %hashstate.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hashstate.i, align 4
  tail call void @kfree(ptr noundef %26) #8
  %27 = load ptr, ptr @fsverity_info_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %call.i) #8
  %28 = inttoptr i32 %err.070 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fsverity_free_info.exit, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %28, %fsverity_free_info.exit ], [ %call.i, %out.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_verify_signature(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsverity_free_info(ptr noundef %vi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vi, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hashstate = getelementptr inbounds %struct.merkle_tree_params, ptr %vi, i32 0, i32 1
  %0 = ptrtoint ptr %hashstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hashstate, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = load ptr, ptr @fsverity_info_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef nonnull %vi) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsverity_set_info(ptr noundef %inode, ptr noundef %vi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_verity_info = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 53
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_verity_info, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %0 = ptrtoint ptr %vi to i32
  tail call void @llvm.prefetch.p0(ptr %i_verity_info, i32 1, i32 3, i32 1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %i_verity_info, i32 0, i32 %0) #8, !srcloc !86
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp.not = icmp eq i32 %asmresult1.i, 0
  br i1 %cmp.not, label %__cmpxchg.exit.if.end_crit_edge, label %if.then

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %__cmpxchg.exit
  %tobool.not.i13 = icmp eq ptr %vi, null
  br i1 %tobool.not.i13, label %if.then.fsverity_free_info.exit_crit_edge, label %if.end.i

if.then.fsverity_free_info.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsverity_free_info.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %hashstate.i = getelementptr inbounds %struct.merkle_tree_params, ptr %vi, i32 0, i32 1
  %2 = ptrtoint ptr %hashstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hashstate.i, align 4
  tail call void @kfree(ptr noundef %3) #8
  %4 = load ptr, ptr @fsverity_info_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef nonnull %vi) #8
  br label %fsverity_free_info.exit

fsverity_free_info.exit:                          ; preds = %if.end.i, %if.then.fsverity_free_info.exit_crit_edge
  %5 = ptrtoint ptr %i_verity_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %i_verity_info, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %if.end

if.end:                                           ; preds = %fsverity_free_info.exit, %__cmpxchg.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_get_descriptor(ptr noundef %inode, ptr nocapture noundef writeonly %desc_ret, ptr nocapture noundef writeonly %desc_size_ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_vop = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %s_vop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_vop, align 4
  %get_verity_descriptor = getelementptr inbounds %struct.fsverity_operations, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_verity_descriptor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_verity_descriptor, align 4
  %call = tail call i32 %5(ptr noundef %inode, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %call)
  %cmp1 = icmp ugt i32 %call, 16384
  br i1 %cmp1, label %if.then2, label %if.end8.i

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef %call) #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_vop8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %s_vop8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_vop8, align 4
  %get_verity_descriptor9 = getelementptr inbounds %struct.fsverity_operations, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %get_verity_descriptor9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_verity_descriptor9, align 4
  %call10 = tail call i32 %11(ptr noundef %inode, ptr noundef nonnull %call9.i, i32 noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.22, i32 noundef %call10) #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call10)
  %cmp.i41 = icmp ult i32 %call10, 256
  br i1 %cmp.i41, label %if.then.i42, label %if.end.i43

if.then.i42:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, i32 noundef %call10) #11
  br label %if.then15

if.end.i43:                                       ; preds = %if.end13
  %12 = ptrtoint ptr %call9.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp1.not.i = icmp eq i8 %13, 1
  br i1 %cmp1.not.i, label %if.end6.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.31, i32 noundef %conv.i) #11
  br label %if.then15

if.end6.i:                                        ; preds = %if.end.i43
  %__reserved.i = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i, i32 0, i32 8
  %call.i = tail call ptr @memchr_inv(ptr noundef %__reserved.i, i32 noundef 0, i32 noundef 144) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end8.i44, label %if.then7.i

if.then7.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #11
  br label %if.then15

if.end8.i44:                                      ; preds = %if.end6.i
  %salt_size.i = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i, i32 0, i32 3
  %14 = ptrtoint ptr %salt_size.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %salt_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %15)
  %cmp10.i = icmp ugt i8 %15, 32
  br i1 %cmp10.i, label %if.then12.i, label %if.end15.i

if.then12.i:                                      ; preds = %if.end8.i44
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, i32 noundef %conv9.i) #11
  br label %if.then15

if.end15.i:                                       ; preds = %if.end8.i44
  %data_size.i = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i, i32 0, i32 5
  %16 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %data_size.i, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %19 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp16.not.i = icmp eq i64 %18, %20
  br i1 %cmp16.not.i, label %if.end21.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.34, i64 noundef %18, i64 noundef %20) #11
  br label %if.then15

if.end21.i:                                       ; preds = %if.end15.i
  %sig_size.i = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i, i32 0, i32 4
  %21 = ptrtoint ptr %sig_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sig_size.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %sub.i = add nsw i32 %call10, -256
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub.i)
  %cmp22.i = icmp ugt i32 %23, %sub.i
  br i1 %cmp22.i, label %if.then24.i, label %if.end16

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.35) #11
  br label %if.then15

if.then15:                                        ; preds = %if.then24.i, %if.then18.i, %if.then12.i, %if.then7.i, %if.then3.i, %if.then.i42
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %desc_ret to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i, ptr %desc_ret, align 4
  %25 = ptrtoint ptr %desc_size_ret to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call10, ptr %desc_size_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then12, %if.end8.i.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -90, %if.then2 ], [ %call10, %if.then12 ], [ 0, %if.end16 ], [ -22, %if.then15 ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_file_open(ptr noundef %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  %desc.i = alloca ptr, align 4
  %desc_size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsverity_file_open.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsverity_file_open, %return)) #8
          to label %if.then8 [label %return], !srcloc !84

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsverity_file_open.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.25, i32 noundef %5) #8
  br label %return

if.end10:                                         ; preds = %if.end
  %i_verity_info.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 53
  %6 = ptrtoint ptr %i_verity_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %i_verity_info.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i) #8
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc.i, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_size.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.ensure_verity_info.exit_crit_edge

if.end10.ensure_verity_info.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %ensure_verity_info.exit

if.end.i:                                         ; preds = %if.end10
  %call1.i = call i32 @fsverity_get_descriptor(ptr noundef %inode, ptr noundef nonnull %desc.i, ptr noundef nonnull %desc_size.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.ensure_verity_info.exit_crit_edge

if.end.i.ensure_verity_info.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ensure_verity_info.exit

if.end4.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc.i, align 4
  %call5.i = tail call ptr @fsverity_create_info(ptr noundef %inode, ptr noundef %10, i32 undef) #8
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call5.i to i32
  br label %out_free_desc.i

if.end9.i:                                        ; preds = %if.end4.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_verity_info.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %12 = ptrtoint ptr %call5.i to i32
  tail call void @llvm.prefetch.p0(ptr %i_verity_info.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end9.i
  %13 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %i_verity_info.i.i, i32 0, i32 %12) #8, !srcloc !86
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult1.i.i.i, 0
  br i1 %cmp.not.i.i, label %__cmpxchg.exit.i.i.out_free_desc.i_crit_edge, label %if.then.i.i

__cmpxchg.exit.i.i.out_free_desc.i_crit_edge:     ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_desc.i

if.then.i.i:                                      ; preds = %__cmpxchg.exit.i.i
  %tobool.not.i13.i.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i13.i.i, label %if.then.i.i.fsverity_free_info.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.fsverity_free_info.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsverity_free_info.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %hashstate.i.i.i = getelementptr inbounds %struct.merkle_tree_params, ptr %call5.i, i32 0, i32 1
  %14 = ptrtoint ptr %hashstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hashstate.i.i.i, align 4
  tail call void @kfree(ptr noundef %15) #8
  %16 = load ptr, ptr @fsverity_info_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %call5.i) #8
  br label %fsverity_free_info.exit.i.i

fsverity_free_info.exit.i.i:                      ; preds = %if.end.i.i.i, %if.then.i.i.fsverity_free_info.exit.i.i_crit_edge
  %17 = ptrtoint ptr %i_verity_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %i_verity_info.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %out_free_desc.i

out_free_desc.i:                                  ; preds = %fsverity_free_info.exit.i.i, %__cmpxchg.exit.i.i.out_free_desc.i_crit_edge, %if.then7.i
  %err.0.i = phi i32 [ %11, %if.then7.i ], [ 0, %__cmpxchg.exit.i.i.out_free_desc.i_crit_edge ], [ 0, %fsverity_free_info.exit.i.i ]
  tail call void @kfree(ptr noundef %10) #8
  br label %ensure_verity_info.exit

ensure_verity_info.exit:                          ; preds = %out_free_desc.i, %if.end.i.ensure_verity_info.exit_crit_edge, %if.end10.ensure_verity_info.exit_crit_edge
  %retval.0.i14 = phi i32 [ %err.0.i, %out_free_desc.i ], [ 0, %if.end10.ensure_verity_info.exit_crit_edge ], [ %call1.i, %if.end.i.ensure_verity_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_size.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #8
  br label %return

return:                                           ; preds = %ensure_verity_info.exit, %if.then8, %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i14, %ensure_verity_info.exit ], [ 0, %entry.return_crit_edge ], [ -1, %if.then8 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_prepare_setattr(ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr, align 8
  %and1 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %do.body

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsverity_prepare_setattr.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsverity_prepare_setattr, %return)) #8
          to label %if.then8 [label %return], !srcloc !84

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsverity_prepare_setattr.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.28, i32 noundef %9) #8
  br label %return

return:                                           ; preds = %if.then8, %do.body, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %if.then8 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsverity_cleanup_inode(ptr nocapture noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_verity_info = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 53
  %0 = ptrtoint ptr %i_verity_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_verity_info, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fsverity_free_info.exit_crit_edge, label %if.end.i

entry.fsverity_free_info.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsverity_free_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hashstate.i = getelementptr inbounds %struct.merkle_tree_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hashstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hashstate.i, align 4
  tail call void @kfree(ptr noundef %3) #8
  %4 = load ptr, ptr @fsverity_info_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef nonnull %1) #8
  br label %fsverity_free_info.exit

fsverity_free_info.exit:                          ; preds = %if.end.i, %entry.fsverity_free_info.exit_crit_edge
  %5 = ptrtoint ptr %i_verity_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %i_verity_info, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_init_info_cache() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.29, i32 noundef 248, i32 noundef 8, i32 noundef 131072, i32 noundef 176, i32 noundef 64, ptr noundef null) #8
  store ptr %call, ptr @fsverity_info_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fsverity_exit_info_cache() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fsverity_info_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  store ptr null, ptr @fsverity_info_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_hash_buffer(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/verity/open.c", i32 53, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/verity/open.c", i32 58, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/verity/open.c", i32 66, i32 6}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/verity/open.c", i32 71, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/verity/open.c", i32 80, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug206, !11, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/verity/open.c", i32 93, i32 2}
!18 = !{ptr @fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug207, !17, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/verity/open.c", i32 96, i32 4}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/verity/open.c", i32 112, i32 3}
!24 = !{ptr @fsverity_init_merkle_tree_params.__UNIQUE_ID_ddebug208, !23, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/verity/open.c", i32 166, i32 3}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/verity/open.c", i32 177, i32 3}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/verity/open.c", i32 180, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @fsverity_create_info.__UNIQUE_ID_ddebug209, !31, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!34 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/verity/open.c", i32 275, i32 3}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/verity/open.c", i32 280, i32 3}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/verity/open.c", i32 289, i32 3}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/verity/open.c", i32 351, i32 3}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fsverity_file_open.__UNIQUE_ID_ddebug210, !42, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!45 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__ksymtab_fsverity_file_open, !47, !"__ksymtab_fsverity_file_open", i1 false, i1 false}
!47 = !{!"../fs/verity/open.c", i32 358, i32 1}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/verity/open.c", i32 373, i32 3}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @fsverity_prepare_setattr.__UNIQUE_ID_ddebug211, !49, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!52 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__ksymtab_fsverity_prepare_setattr, !54, !"__ksymtab_fsverity_prepare_setattr", i1 false, i1 false}
!54 = !{!"../fs/verity/open.c", i32 379, i32 1}
!55 = !{ptr @__ksymtab_fsverity_cleanup_inode, !56, !"__ksymtab_fsverity_cleanup_inode", i1 false, i1 false}
!56 = !{!"../fs/verity/open.c", i32 392, i32 1}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/verity/open.c", i32 396, i32 25}
!59 = !{ptr @fsverity_info_cachep, !60, !"fsverity_info_cachep", i1 false, i1 false}
!60 = !{!"../fs/verity/open.c", i32 12, i32 27}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/verity/open.c", i32 226, i32 3}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/verity/open.c", i32 232, i32 3}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/verity/open.c", i32 238, i32 3}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/verity/open.c", i32 243, i32 3}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/verity/open.c", i32 248, i32 3}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/verity/open.c", i32 255, i32 3}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i32 0, i32 33}
!83 = !{!"branch_weights", i32 -102759400, i32 4193255}
!84 = !{i64 2148502899, i64 2148502904, i64 2148502917, i64 2148502961, i64 2148502995, i64 2148503016}
!85 = !{i64 2152998259}
!86 = !{i64 1187793, i64 1187814, i64 1187837, i64 1187856, i64 1187875}
!87 = !{i64 2152574063}
!88 = !{!"auto-init"}
