; ModuleID = '/llk/IR_all_yes/fs/erofs/decompressor_lzma.c_pt.bc'
source_filename = "../fs/erofs/decompressor_lzma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.z_erofs_lzma = type { ptr, ptr, %struct.xz_buf, [4096 x i8] }
%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.z_erofs_lzma_cfgs = type <{ i32, i16, [8 x i8] }>
%struct.z_erofs_decompress_req = type { ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, i8 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }

@__param_str_lzma_streams = internal constant [19 x i8] c"erofs.lzma_streams\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@z_erofs_lzma_nstrms = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_lzma_streams = internal constant %struct.kernel_param { ptr @__param_str_lzma_streams, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.69 { ptr @z_erofs_lzma_nstrms } }, section "__param", align 4
@__UNIQUE_ID_lzma_streamstype287 = internal constant [33 x i8] c"erofs.parmtype=lzma_streams:uint\00", section ".modinfo", align 1
@z_erofs_lzma_avail_strms = internal global { i32, [28 x i8] } zeroinitializer, align 32
@z_erofs_lzma_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@z_erofs_lzma_head = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@z_erofs_load_lzma_config.lzma_resize_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @z_erofs_load_lzma_config.lzma_resize_mutex, i64 52), ptr getelementptr (i8, ptr @z_erofs_load_lzma_config.lzma_resize_mutex, i64 52) }, ptr @z_erofs_load_lzma_config.lzma_resize_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lzma_resize_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lzma_resize_mutex\00", [46 x i8] zeroinitializer }, align 32
@__func__.z_erofs_load_lzma_config = private unnamed_addr constant [25 x i8] c"z_erofs_load_lzma_config\00", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid lzma cfgs, size=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"unidentified lzma format %x, please check kernel version\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported lzma dictionary size %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"EXPERIMENTAL MicroLZMA in use. Use at your own risk!\0A\00", [42 x i8] zeroinitializer }, align 32
@z_erofs_lzma_max_dictsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/erofs/decompressor_lzma.c\00", [35 x i8] zeroinitializer }, align 32
@z_erofs_lzma_wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @z_erofs_lzma_wq, i64 44), ptr getelementptr (i8, ptr @z_erofs_lzma_wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__func__.z_erofs_lzma_decompress = private unnamed_addr constant [24 x i8] c"z_erofs_lzma_decompress\00", align 1
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"decompressed buf out of bound\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"compressed buf out of bound\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to decompress %d in[%u] out[%u]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"z_erofs_lzma_lock\00", [46 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"z_erofs_lzma_wq.lock\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"z_erofs_lzma_nstrms\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 16, i32 21 }
@___asan_gen_.24 = private unnamed_addr constant [25 x i8] c"z_erofs_lzma_avail_strms\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 16, i32 42 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"z_erofs_lzma_lock\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"z_erofs_lzma_head\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 17, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"lzma_resize_mutex\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 78, i32 9 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 84, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 88, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 94, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 99, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"z_erofs_lzma_max_dictsize\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 15, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 118, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"z_erofs_lzma_wq\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 211, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 226, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 270, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 14, i32 8 }
@___asan_gen_.76 = private constant [32 x i8] c"../fs/erofs/decompressor_lzma.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 18, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 44, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_lzma_streamstype287, ptr @__param_lzma_streams, ptr @z_erofs_lzma_nstrms, ptr @z_erofs_lzma_avail_strms, ptr @z_erofs_lzma_lock, ptr @z_erofs_lzma_head, ptr @z_erofs_load_lzma_config.lzma_resize_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @z_erofs_lzma_max_dictsize, ptr @.str.6, ptr @z_erofs_lzma_wq, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_lzma_nstrms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_lzma_avail_strms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_lzma_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_lzma_head to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_load_lzma_config.lzma_resize_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_lzma_max_dictsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_lzma_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @z_erofs_lzma_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @z_erofs_lzma_avail_strms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not24 = icmp eq i32 %0, 0
  br i1 %tobool.not24, label %entry.while.end15_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end15_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end15

while.cond8.while.cond.loopexit_crit_edge:        ; preds = %if.end14
  %1 = load i32, ptr @z_erofs_lzma_avail_strms, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.cond8.while.cond.loopexit_crit_edge.while.end15_crit_edge, label %while.cond8.while.cond.loopexit_crit_edge.while.body_crit_edge

while.cond8.while.cond.loopexit_crit_edge.while.body_crit_edge: ; preds = %while.cond8.while.cond.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond8.while.cond.loopexit_crit_edge.while.end15_crit_edge: ; preds = %while.cond8.while.cond.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end15

while.body:                                       ; preds = %while.cond8.while.cond.loopexit_crit_edge.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %2 = load ptr, ptr @z_erofs_lzma_head, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor_lzma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !51
  unreachable

if.end:                                           ; preds = %while.body
  store ptr null, ptr @z_erofs_lzma_head, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  br label %while.body10

while.body10:                                     ; preds = %if.end14.while.body10_crit_edge, %if.end
  %strm.023 = phi ptr [ %2, %if.end ], [ %4, %if.end14.while.body10_crit_edge ]
  %3 = ptrtoint ptr %strm.023 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %strm.023, align 4
  %state = getelementptr inbounds %struct.z_erofs_lzma, ptr %strm.023, i32 0, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %while.body10.if.end14_crit_edge, label %if.then12

while.body10.if.end14_crit_edge:                  ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xz_dec_microlzma_end(ptr noundef nonnull %6) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %while.body10.if.end14_crit_edge
  tail call void @kfree(ptr noundef nonnull %strm.023) #5
  %7 = load i32, ptr @z_erofs_lzma_avail_strms, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr @z_erofs_lzma_avail_strms, align 4
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %while.cond8.while.cond.loopexit_crit_edge, label %if.end14.while.body10_crit_edge

if.end14.while.body10_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body10

while.end15:                                      ; preds = %while.cond8.while.cond.loopexit_crit_edge.while.end15_crit_edge, %entry.while.end15_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_microlzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @z_erofs_lzma_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @z_erofs_lzma_nstrms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end.i.i, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %1) #5
  store i32 %call4.i.i, ptr @z_erofs_lzma_nstrms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp10.not = icmp eq i32 %call4.i.i, 0
  br i1 %cmp10.not, label %if.end.i.i.cleanup6_crit_edge, label %if.end.i.i.for.body.preheader_crit_edge

if.end.i.i.for.body.preheader_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

if.end.i.i.cleanup6_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

for.body.preheader:                               ; preds = %if.end.i.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.body.preheader
  %i.011 = phi i32 [ %inc5, %if.end4.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4128) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @z_erofs_lzma_exit()
  br label %cleanup6

if.end4:                                          ; preds = %for.body
  tail call void @_raw_spin_lock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %3 = load ptr, ptr @z_erofs_lzma_head, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i, align 8
  store ptr %call7.i.i, ptr @z_erofs_lzma_head, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %5 = load i32, ptr @z_erofs_lzma_avail_strms, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @z_erofs_lzma_avail_strms, align 4
  %inc5 = add nuw i32 %i.011, 1
  %6 = load i32, ptr @z_erofs_lzma_nstrms, align 4
  %cmp = icmp ult i32 %inc5, %6
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %if.end4.cleanup6_crit_edge

if.end4.cleanup6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup6:                                         ; preds = %if.end4.cleanup6_crit_edge, %if.then3, %if.end.i.i.cleanup6_crit_edge
  %retval.2 = phi i32 [ -12, %if.then3 ], [ 0, %if.end.i.i.cleanup6_crit_edge ], [ 0, %if.end4.cleanup6_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @z_erofs_load_lzma_config(ptr noundef %sb, ptr nocapture noundef readnone %dsb, ptr noundef readonly %lzma, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lzma, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %size)
  %cmp = icmp ult i32 %size, 14
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.z_erofs_load_lzma_config, ptr noundef nonnull @.str.2, i32 noundef %size) #5
  br label %cleanup82

if.end:                                           ; preds = %entry
  %format = getelementptr inbounds %struct.z_erofs_lzma_cfgs, ptr %lzma, i32 0, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %format, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.z_erofs_load_lzma_config, ptr noundef nonnull @.str.3, i32 noundef %conv) #5
  br label %cleanup82

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %lzma to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %lzma, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = add i32 %5, -8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8384513, i32 %6)
  %7 = icmp ult i32 %6, -8384513
  br i1 %7, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.z_erofs_load_lzma_config, ptr noundef nonnull @.str.4, i32 noundef %5) #5
  br label %cleanup82

if.end12:                                         ; preds = %if.end4
  tail call void (ptr, ptr, ptr, ...) @_erofs_info(ptr noundef %sb, ptr noundef nonnull @__func__.z_erofs_load_lzma_config, ptr noundef nonnull @.str.5) #5
  tail call void @mutex_lock_nested(ptr noundef nonnull @z_erofs_load_lzma_config.lzma_resize_mutex, i32 noundef 0) #5
  %8 = load i32, ptr @z_erofs_lzma_max_dictsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp13.not = icmp ult i32 %8, %5
  br i1 %cmp13.not, label %for.cond.preheader, label %if.then15

for.cond.preheader:                               ; preds = %if.end12
  %9 = load i32, ptr @z_erofs_lzma_avail_strms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17123.not = icmp eq i32 %9, 0
  br i1 %cmp17123.not, label %for.cond.preheader.for.end67_crit_edge, label %for.cond.preheader.again.preheader_crit_edge

for.cond.preheader.again.preheader_crit_edge:     ; preds = %for.cond.preheader
  br label %again.preheader

for.cond.preheader.for.end67_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end67

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @z_erofs_load_lzma_config.lzma_resize_mutex) #5
  br label %cleanup82

again.preheader:                                  ; preds = %for.end47.again.preheader_crit_edge, %for.cond.preheader.again.preheader_crit_edge
  %i.0125 = phi i32 [ %inc, %for.end47.again.preheader_crit_edge ], [ 0, %for.cond.preheader.again.preheader_crit_edge ]
  %head.0124 = phi ptr [ %.lcssa, %for.end47.again.preheader_crit_edge ], [ null, %for.cond.preheader.again.preheader_crit_edge ]
  call void @_raw_spin_lock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %10 = load ptr, ptr @z_erofs_lzma_head, align 4
  %tobool19.not122 = icmp eq ptr %10, null
  br i1 %tobool19.not122, label %again.preheader.if.then20_crit_edge, label %again.preheader.if.end42_crit_edge

again.preheader.if.end42_crit_edge:               ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

again.preheader.if.then20_crit_edge:              ; preds = %again.preheader
  br label %if.then20

for.cond52.preheader:                             ; preds = %for.end47
  %tobool53.not127 = icmp eq ptr %.lcssa, null
  br i1 %tobool53.not127, label %for.cond52.preheader.for.end67_crit_edge, label %for.cond52.preheader.for.body54_crit_edge

for.cond52.preheader.for.body54_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body54

for.cond52.preheader.for.end67_crit_edge:         ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end67

if.then20:                                        ; preds = %do.end41.if.then20_crit_edge, %again.preheader.if.then20_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 119) #5
  %11 = load volatile ptr, ptr @z_erofs_lzma_head, align 4
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %if.end30, label %if.then20.do.end41_crit_edge

if.then20.do.end41_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41

if.end30:                                         ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %call120 = call i32 @prepare_to_wait_event(ptr noundef nonnull @z_erofs_lzma_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %13 = load volatile ptr, ptr @z_erofs_lzma_head, align 4
  %tobool36.not121 = icmp eq ptr %13, null
  br i1 %tobool36.not121, label %if.end30.cleanup_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  call void @schedule() #5
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @z_erofs_lzma_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %14 = load volatile ptr, ptr @z_erofs_lzma_head, align 4
  %tobool36.not = icmp eq ptr %14, null
  br i1 %tobool36.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end30.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @z_erofs_lzma_wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %do.end41

do.end41:                                         ; preds = %for.end, %if.then20.do.end41_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %15 = load ptr, ptr @z_erofs_lzma_head, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %do.end41.if.then20_crit_edge, label %do.end41.if.end42_crit_edge

do.end41.if.end42_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end41.if.then20_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.end42:                                         ; preds = %do.end41.if.end42_crit_edge, %again.preheader.if.end42_crit_edge
  %.lcssa = phi ptr [ %10, %again.preheader.if.end42_crit_edge ], [ %15, %do.end41.if.end42_crit_edge ]
  store ptr null, ptr @z_erofs_lzma_head, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  br label %for.cond43

for.cond43:                                       ; preds = %for.cond43.for.cond43_crit_edge, %if.end42
  %last.0 = phi ptr [ %.lcssa, %if.end42 ], [ %17, %for.cond43.for.cond43_crit_edge ]
  %i.1 = phi i32 [ %i.0125, %if.end42 ], [ %inc, %for.cond43.for.cond43_crit_edge ]
  %16 = ptrtoint ptr %last.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %last.0, align 4
  %tobool44.not = icmp eq ptr %17, null
  %inc = add i32 %i.1, 1
  br i1 %tobool44.not, label %for.end47, label %for.cond43.for.cond43_crit_edge

for.cond43.for.cond43_crit_edge:                  ; preds = %for.cond43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond43

for.end47:                                        ; preds = %for.cond43
  %18 = ptrtoint ptr %last.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %head.0124, ptr %last.0, align 4
  %19 = load i32, ptr @z_erofs_lzma_avail_strms, align 4
  %cmp17 = icmp ult i32 %inc, %19
  br i1 %cmp17, label %for.end47.again.preheader_crit_edge, label %for.cond52.preheader

for.end47.again.preheader_crit_edge:              ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %again.preheader

for.body54:                                       ; preds = %if.end58.for.body54_crit_edge, %for.cond52.preheader.for.body54_crit_edge
  %strm.0129 = phi ptr [ %24, %if.end58.for.body54_crit_edge ], [ %.lcssa, %for.cond52.preheader.for.body54_crit_edge ]
  %err.0128 = phi i32 [ %spec.select, %if.end58.for.body54_crit_edge ], [ 0, %for.cond52.preheader.for.body54_crit_edge ]
  %state = getelementptr inbounds %struct.z_erofs_lzma, ptr %strm.0129, i32 0, i32 1
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %tobool55.not = icmp eq ptr %21, null
  br i1 %tobool55.not, label %for.body54.if.end58_crit_edge, label %if.then56

for.body54.if.end58_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then56:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #7
  call void @xz_dec_microlzma_end(ptr noundef nonnull %21) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %for.body54.if.end58_crit_edge
  %call59 = call ptr @xz_dec_microlzma_alloc(i32 noundef 1, i32 noundef %5) #5
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call59, ptr %state, align 4
  %tobool62.not = icmp eq ptr %call59, null
  %spec.select = select i1 %tobool62.not, i32 -12, i32 %err.0128
  %23 = ptrtoint ptr %strm.0129 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %strm.0129, align 4
  %tobool53.not = icmp eq ptr %24, null
  br i1 %tobool53.not, label %if.end58.for.end67_crit_edge, label %if.end58.for.body54_crit_edge

if.end58.for.body54_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body54

if.end58.for.end67_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end67

for.end67:                                        ; preds = %if.end58.for.end67_crit_edge, %for.cond52.preheader.for.end67_crit_edge, %for.cond.preheader.for.end67_crit_edge
  %head.0.lcssa134 = phi ptr [ null, %for.cond52.preheader.for.end67_crit_edge ], [ null, %for.cond.preheader.for.end67_crit_edge ], [ %.lcssa, %if.end58.for.end67_crit_edge ]
  %err.0.lcssa = phi i32 [ 0, %for.cond52.preheader.for.end67_crit_edge ], [ 0, %for.cond.preheader.for.end67_crit_edge ], [ %spec.select, %if.end58.for.end67_crit_edge ]
  call void @_raw_spin_lock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %25 = load ptr, ptr @z_erofs_lzma_head, align 4
  %tobool69.not = icmp eq ptr %25, null
  br i1 %tobool69.not, label %do.end81, label %do.body73, !prof !52

do.body73:                                        ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor_lzma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #5, !srcloc !53
  unreachable

do.end81:                                         ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %head.0.lcssa134, ptr @z_erofs_lzma_head, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  store i32 %5, ptr @z_erofs_lzma_max_dictsize, align 4
  call void @mutex_unlock(ptr noundef nonnull @z_erofs_load_lzma_config.lzma_resize_mutex) #5
  br label %cleanup82

cleanup82:                                        ; preds = %do.end81, %if.then15, %if.then11, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %if.then11 ], [ 0, %if.then15 ], [ %err.0.lcssa, %do.end81 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_info(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_microlzma_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @z_erofs_lzma_decompress(ptr noundef %rq, ptr noundef %pagepool) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pageofs_out = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 4
  %0 = ptrtoint ptr %pageofs_out to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pageofs_out, align 2
  %conv = zext i16 %1 to i32
  %outputsize = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 6
  %2 = ptrtoint ptr %outputsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outputsize, align 4
  %add = add nuw nsw i32 %conv, 4095
  %add1 = add i32 %add, %3
  %shr = lshr i32 %add1, 12
  %inputsize = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 5
  %4 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inputsize, align 4
  %add2 = add i32 %5, 4095
  %shr4 = lshr i32 %add2, 12
  %in = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 1
  %6 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 44) #5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %shr.i.i = lshr i32 %11, 30
  %12 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %13 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i.not.i = icmp eq i32 %13, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %9) #5
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %9) #5
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %pageofs_in = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 3
  %14 = ptrtoint ptr %pageofs_in to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pageofs_in, align 4
  %conv5 = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %conv5
  %16 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inputsize, align 4
  %sub = sub nsw i32 4096, %conv5
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %sub)
  %call10 = tail call i32 @z_erofs_fixup_insize(ptr noundef %rq, ptr noundef %add.ptr, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %again.preheader, label %if.then

again.preheader:                                  ; preds = %kmap.exit
  call void @_raw_spin_lock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %19 = load ptr, ptr @z_erofs_lzma_head, align 4
  %tobool12.not544 = icmp eq ptr %19, null
  br i1 %tobool12.not544, label %again.preheader.if.then13_crit_edge, label %again.preheader.if.end36_crit_edge

again.preheader.if.end36_crit_edge:               ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

again.preheader.if.then13_crit_edge:              ; preds = %again.preheader
  br label %if.then13

if.then:                                          ; preds = %kmap.exit
  %20 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #5
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %shr.i.i437 = lshr i32 %25, 30
  %26 = zext i32 %shr.i.i437 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i437, label %if.then.cleanup291_crit_edge [
    i32 2, label %if.then.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i439
  ]

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.cleanup291_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup291

is_highmem_idx.exit.i439:                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %27 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp2.i.not.i438 = icmp eq i32 %27, 2
  br i1 %cmp2.i.not.i438, label %is_highmem_idx.exit.i439.if.end.i_crit_edge, label %is_highmem_idx.exit.i439.cleanup291_crit_edge

is_highmem_idx.exit.i439.cleanup291_crit_edge:    ; preds = %is_highmem_idx.exit.i439
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup291

is_highmem_idx.exit.i439.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i439
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i439.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %23) #5
  br label %cleanup291

if.then13:                                        ; preds = %do.end35.if.then13_crit_edge, %again.preheader.if.then13_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 181) #5
  %28 = load volatile ptr, ptr @z_erofs_lzma_head, align 4
  %tobool22.not = icmp eq ptr %28, null
  br i1 %tobool22.not, label %if.end24, label %if.then13.do.end35_crit_edge

if.then13.do.end35_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35

if.end24:                                         ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %29 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %call25542 = call i32 @prepare_to_wait_event(ptr noundef nonnull @z_erofs_lzma_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %30 = load volatile ptr, ptr @z_erofs_lzma_head, align 4
  %tobool30.not543 = icmp eq ptr %30, null
  br i1 %tobool30.not543, label %if.end24.cleanup_crit_edge, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end24.cleanup_crit_edge
  call void @schedule() #5
  %call25 = call i32 @prepare_to_wait_event(ptr noundef nonnull @z_erofs_lzma_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %31 = load volatile ptr, ptr @z_erofs_lzma_head, align 4
  %tobool30.not = icmp eq ptr %31, null
  br i1 %tobool30.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end24.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @z_erofs_lzma_wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %do.end35

do.end35:                                         ; preds = %for.end, %if.then13.do.end35_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %32 = load ptr, ptr @z_erofs_lzma_head, align 4
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %do.end35.if.then13_crit_edge, label %do.end35.if.end36_crit_edge

do.end35.if.end36_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

do.end35.if.then13_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.end36:                                         ; preds = %do.end35.if.end36_crit_edge, %again.preheader.if.end36_crit_edge
  %.lcssa = phi ptr [ %19, %again.preheader.if.end36_crit_edge ], [ %32, %do.end35.if.end36_crit_edge ]
  %33 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.lcssa, align 4
  store ptr %34, ptr @z_erofs_lzma_head, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %35 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inputsize, align 4
  %37 = ptrtoint ptr %outputsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %outputsize, align 4
  %state = getelementptr inbounds %struct.z_erofs_lzma, ptr %.lcssa, i32 0, i32 1
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state, align 4
  %partial_decoding = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 9
  %41 = ptrtoint ptr %partial_decoding to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %partial_decoding, align 1, !range !54
  %43 = xor i8 %42, 1
  %44 = zext i8 %43 to i32
  call void @xz_dec_microlzma_reset(ptr noundef %40, i32 noundef %36, i32 noundef %38, i32 noundef %44) #5
  %45 = ptrtoint ptr %pageofs_out to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pageofs_out, align 2
  %conv41 = zext i16 %46 to i32
  %47 = ptrtoint ptr %pageofs_in to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %pageofs_in, align 4
  %conv43 = zext i16 %48 to i32
  %add.ptr44 = getelementptr i8, ptr %addr.0.i, i32 %conv43
  %buf = getelementptr inbounds %struct.z_erofs_lzma, ptr %.lcssa, i32 0, i32 2
  %49 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr44, ptr %buf, align 4
  %in_pos = getelementptr inbounds %struct.z_erofs_lzma, ptr %.lcssa, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %in_pos, align 4
  %51 = load i16, ptr %pageofs_in, align 4
  %conv48 = zext i16 %51 to i32
  %sub49 = sub nsw i32 4096, %conv48
  %52 = call i32 @llvm.umin.i32(i32 %36, i32 %sub49)
  %in_size = getelementptr inbounds %struct.z_erofs_lzma, ptr %.lcssa, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %in_size, align 4
  %sub60 = sub i32 %36, %52
  %out = getelementptr inbounds %struct.z_erofs_lzma, ptr %.lcssa, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %out, align 4
  %out_pos = getelementptr inbounds %struct.z_erofs_lzma, ptr %.lcssa, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %out_pos to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %out_pos, align 4
  %out_size = getelementptr inbounds %struct.z_erofs_lzma, ptr %.lcssa, i32 0, i32 2, i32 5
  %56 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %out_size, align 4
  %out76 = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 2
  %bounce = getelementptr inbounds %struct.z_erofs_lzma, ptr %.lcssa, i32 0, i32 3
  br label %for.cond64

for.cond64:                                       ; preds = %do.end256.for.cond64_crit_edge, %if.end36
  %bounced.0.off0 = phi i1 [ false, %if.end36 ], [ %bounced.2.off0, %do.end256.for.cond64_crit_edge ]
  %no.0 = phi i32 [ -1, %if.end36 ], [ %no.1490, %do.end256.for.cond64_crit_edge ]
  %ni.0 = phi i32 [ 0, %if.end36 ], [ %ni.1492, %do.end256.for.cond64_crit_edge ]
  %pageofs.0 = phi i32 [ %conv41, %if.end36 ], [ %pageofs.1494, %do.end256.for.cond64_crit_edge ]
  %outlen.0 = phi i32 [ %38, %if.end36 ], [ %outlen.1496, %do.end256.for.cond64_crit_edge ]
  %inlen.0 = phi i32 [ %sub60, %if.end36 ], [ %inlen.1499, %do.end256.for.cond64_crit_edge ]
  %57 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %out_pos, align 4
  %59 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %out_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp69 = icmp eq i32 %58, %60
  br i1 %cmp69, label %if.then71, label %if.else

if.then71:                                        ; preds = %for.cond64
  %61 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %out, align 4
  %tobool74.not = icmp eq ptr %62, null
  br i1 %tobool74.not, label %if.then71.if.end79_crit_edge, label %if.then75

if.then71.if.end79_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then75:                                        ; preds = %if.then71
  %63 = ptrtoint ptr %out76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %out76, align 4
  %arrayidx = getelementptr ptr, ptr %64, i32 %no.0
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #5
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %shr.i.i440 = lshr i32 %68, 30
  %69 = zext i32 %shr.i.i440 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i440, label %if.then75.kunmap.exit444_crit_edge [
    i32 2, label %if.then75.if.end.i443_crit_edge
    i32 3, label %is_highmem_idx.exit.i442
  ]

if.then75.if.end.i443_crit_edge:                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i443

if.then75.kunmap.exit444_crit_edge:               ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit444

is_highmem_idx.exit.i442:                         ; preds = %if.then75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %70 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp2.i.not.i441 = icmp eq i32 %70, 2
  br i1 %cmp2.i.not.i441, label %is_highmem_idx.exit.i442.if.end.i443_crit_edge, label %is_highmem_idx.exit.i442.kunmap.exit444_crit_edge

is_highmem_idx.exit.i442.kunmap.exit444_crit_edge: ; preds = %is_highmem_idx.exit.i442
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit444

is_highmem_idx.exit.i442.if.end.i443_crit_edge:   ; preds = %is_highmem_idx.exit.i442
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i443

if.end.i443:                                      ; preds = %is_highmem_idx.exit.i442.if.end.i443_crit_edge, %if.then75.if.end.i443_crit_edge
  call void @kunmap_high(ptr noundef %66) #5
  br label %kunmap.exit444

kunmap.exit444:                                   ; preds = %if.end.i443, %is_highmem_idx.exit.i442.kunmap.exit444_crit_edge, %if.then75.kunmap.exit444_crit_edge
  %71 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %out, align 4
  br label %if.end79

if.end79:                                         ; preds = %kunmap.exit444, %if.then71.if.end79_crit_edge
  %inc = add i32 %no.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %shr)
  %cmp80.not = icmp uge i32 %inc, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outlen.0)
  %tobool82.not = icmp eq i32 %outlen.0, 0
  %or.cond = select i1 %cmp80.not, i1 true, i1 %tobool82.not
  br i1 %or.cond, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rq, align 4
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %73, ptr noundef nonnull @__func__.z_erofs_lzma_decompress, ptr noundef nonnull @.str.7) #5
  br label %for.end273

if.end84:                                         ; preds = %if.end79
  %74 = ptrtoint ptr %out_pos to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %out_pos, align 4
  %sub87 = sub i32 4096, %pageofs.0
  %75 = call i32 @llvm.umin.i32(i32 %outlen.0, i32 %sub87)
  %76 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %out_size, align 4
  %sub99 = sub i32 %outlen.0, %75
  %77 = ptrtoint ptr %out76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %out76, align 4
  %arrayidx101 = getelementptr ptr, ptr %78, i32 %inc
  %79 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx101, align 4
  %tobool102.not = icmp eq ptr %80, null
  br i1 %tobool102.not, label %if.end84.if.end148_crit_edge, label %if.then103

if.end84.if.end148_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

if.then103:                                       ; preds = %if.end84
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 44) #5
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %shr.i.i445 = lshr i32 %82, 30
  %83 = zext i32 %shr.i.i445 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i445, label %if.then103.if.then.i449_crit_edge [
    i32 2, label %if.then103.if.else.i451_crit_edge
    i32 3, label %is_highmem_idx.exit.i447
  ]

if.then103.if.else.i451_crit_edge:                ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i451

if.then103.if.then.i449_crit_edge:                ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i449

is_highmem_idx.exit.i447:                         ; preds = %if.then103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %84 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp2.i.not.i446 = icmp eq i32 %84, 2
  br i1 %cmp2.i.not.i446, label %is_highmem_idx.exit.i447.if.else.i451_crit_edge, label %is_highmem_idx.exit.i447.if.then.i449_crit_edge

is_highmem_idx.exit.i447.if.then.i449_crit_edge:  ; preds = %is_highmem_idx.exit.i447
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i449

is_highmem_idx.exit.i447.if.else.i451_crit_edge:  ; preds = %is_highmem_idx.exit.i447
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i451

if.then.i449:                                     ; preds = %is_highmem_idx.exit.i447.if.then.i449_crit_edge, %if.then103.if.then.i449_crit_edge
  %call5.i448 = call ptr @page_address(ptr noundef nonnull %80) #5
  br label %kmap.exit454

if.else.i451:                                     ; preds = %is_highmem_idx.exit.i447.if.else.i451_crit_edge, %if.then103.if.else.i451_crit_edge
  %call6.i450 = call ptr @kmap_high(ptr noundef nonnull %80) #5
  br label %kmap.exit454

kmap.exit454:                                     ; preds = %if.else.i451, %if.then.i449
  %addr.0.i452 = phi ptr [ %call6.i450, %if.else.i451 ], [ %call5.i448, %if.then.i449 ]
  %add.ptr107 = getelementptr i8, ptr %addr.0.i452, i32 %pageofs.0
  %85 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr107, ptr %out, align 4
  br i1 %bounced.0.off0, label %kmap.exit454.if.end165_crit_edge, label %kmap.exit454.land.lhs.true_crit_edge

kmap.exit454.land.lhs.true_crit_edge:             ; preds = %kmap.exit454
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

kmap.exit454.if.end165_crit_edge:                 ; preds = %kmap.exit454
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end165

if.else:                                          ; preds = %for.cond64
  %86 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %in_pos, align 4
  %88 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp115 = icmp eq i32 %87, %89
  br i1 %cmp115, label %if.then117, label %if.else.if.end148_crit_edge

if.else.if.end148_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

if.then117:                                       ; preds = %if.else
  %90 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %in, align 4
  %arrayidx119 = getelementptr ptr, ptr %91, i32 %ni.0
  %92 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx119, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #5
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %shr.i.i455 = lshr i32 %95, 30
  %96 = zext i32 %shr.i.i455 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr.i.i455, label %if.then117.kunmap.exit459_crit_edge [
    i32 2, label %if.then117.if.end.i458_crit_edge
    i32 3, label %is_highmem_idx.exit.i457
  ]

if.then117.if.end.i458_crit_edge:                 ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i458

if.then117.kunmap.exit459_crit_edge:              ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit459

is_highmem_idx.exit.i457:                         ; preds = %if.then117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %97 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp2.i.not.i456 = icmp eq i32 %97, 2
  br i1 %cmp2.i.not.i456, label %is_highmem_idx.exit.i457.if.end.i458_crit_edge, label %is_highmem_idx.exit.i457.kunmap.exit459_crit_edge

is_highmem_idx.exit.i457.kunmap.exit459_crit_edge: ; preds = %is_highmem_idx.exit.i457
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit459

is_highmem_idx.exit.i457.if.end.i458_crit_edge:   ; preds = %is_highmem_idx.exit.i457
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i458

if.end.i458:                                      ; preds = %is_highmem_idx.exit.i457.if.end.i458_crit_edge, %if.then117.if.end.i458_crit_edge
  call void @kunmap_high(ptr noundef %93) #5
  br label %kunmap.exit459

kunmap.exit459:                                   ; preds = %if.end.i458, %is_highmem_idx.exit.i457.kunmap.exit459_crit_edge, %if.then117.kunmap.exit459_crit_edge
  %inc120 = add i32 %ni.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc120, i32 %shr4)
  %cmp121.not = icmp uge i32 %inc120, %shr4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen.0)
  %tobool124.not = icmp eq i32 %inlen.0, 0
  %or.cond435 = select i1 %cmp121.not, i1 true, i1 %tobool124.not
  br i1 %or.cond435, label %if.then125, label %if.end127

if.then125:                                       ; preds = %kunmap.exit459
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rq, align 4
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %99, ptr noundef nonnull @__func__.z_erofs_lzma_decompress, ptr noundef nonnull @.str.8) #5
  br label %for.end273

if.end127:                                        ; preds = %kunmap.exit459
  %100 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %in_pos, align 4
  %101 = call i32 @llvm.umin.i32(i32 %inlen.0, i32 4096)
  %102 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %in_size, align 4
  %sub141 = sub i32 %inlen.0, %101
  %103 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %in, align 4
  %arrayidx143 = getelementptr ptr, ptr %104, i32 %inc120
  %105 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx143, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 44) #5
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %shr.i.i460 = lshr i32 %108, 30
  %109 = zext i32 %shr.i.i460 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i.i460, label %if.end127.if.then.i464_crit_edge [
    i32 2, label %if.end127.if.else.i466_crit_edge
    i32 3, label %is_highmem_idx.exit.i462
  ]

if.end127.if.else.i466_crit_edge:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i466

if.end127.if.then.i464_crit_edge:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i464

is_highmem_idx.exit.i462:                         ; preds = %if.end127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %110 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %110)
  %cmp2.i.not.i461 = icmp eq i32 %110, 2
  br i1 %cmp2.i.not.i461, label %is_highmem_idx.exit.i462.if.else.i466_crit_edge, label %is_highmem_idx.exit.i462.if.then.i464_crit_edge

is_highmem_idx.exit.i462.if.then.i464_crit_edge:  ; preds = %is_highmem_idx.exit.i462
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i464

is_highmem_idx.exit.i462.if.else.i466_crit_edge:  ; preds = %is_highmem_idx.exit.i462
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i466

if.then.i464:                                     ; preds = %is_highmem_idx.exit.i462.if.then.i464_crit_edge, %if.end127.if.then.i464_crit_edge
  %call5.i463 = call ptr @page_address(ptr noundef %106) #5
  br label %if.end148.thread

if.else.i466:                                     ; preds = %is_highmem_idx.exit.i462.if.else.i466_crit_edge, %if.end127.if.else.i466_crit_edge
  %call6.i465 = call ptr @kmap_high(ptr noundef %106) #5
  br label %if.end148.thread

if.end148.thread:                                 ; preds = %if.else.i466, %if.then.i464
  %addr.0.i467 = phi ptr [ %call6.i465, %if.else.i466 ], [ %call5.i463, %if.then.i464 ]
  %111 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %addr.0.i467, ptr %buf, align 4
  br label %land.lhs.true

if.end148:                                        ; preds = %if.else.if.end148_crit_edge, %if.end84.if.end148_crit_edge
  %no.1 = phi i32 [ %no.0, %if.else.if.end148_crit_edge ], [ %inc, %if.end84.if.end148_crit_edge ]
  %pageofs.1 = phi i32 [ %pageofs.0, %if.else.if.end148_crit_edge ], [ 0, %if.end84.if.end148_crit_edge ]
  %outlen.1 = phi i32 [ %outlen.0, %if.else.if.end148_crit_edge ], [ %sub99, %if.end84.if.end148_crit_edge ]
  br i1 %bounced.0.off0, label %if.end148.if.end165_crit_edge, label %if.end148.land.lhs.true_crit_edge

if.end148.land.lhs.true_crit_edge:                ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end148.if.end165_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end165

land.lhs.true:                                    ; preds = %if.end148.land.lhs.true_crit_edge, %if.end148.thread, %kmap.exit454.land.lhs.true_crit_edge
  %inlen.1498 = phi i32 [ %sub141, %if.end148.thread ], [ %inlen.0, %if.end148.land.lhs.true_crit_edge ], [ %inlen.0, %kmap.exit454.land.lhs.true_crit_edge ]
  %outlen.1495 = phi i32 [ %outlen.0, %if.end148.thread ], [ %outlen.1, %if.end148.land.lhs.true_crit_edge ], [ %sub99, %kmap.exit454.land.lhs.true_crit_edge ]
  %pageofs.1493 = phi i32 [ %pageofs.0, %if.end148.thread ], [ %pageofs.1, %if.end148.land.lhs.true_crit_edge ], [ 0, %kmap.exit454.land.lhs.true_crit_edge ]
  %ni.1491 = phi i32 [ %inc120, %if.end148.thread ], [ %ni.0, %if.end148.land.lhs.true_crit_edge ], [ %ni.0, %kmap.exit454.land.lhs.true_crit_edge ]
  %no.1489 = phi i32 [ %no.0, %if.end148.thread ], [ %no.1, %if.end148.land.lhs.true_crit_edge ], [ %inc, %kmap.exit454.land.lhs.true_crit_edge ]
  %112 = ptrtoint ptr %out76 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %out76, align 4
  %arrayidx151 = getelementptr ptr, ptr %113, i32 %no.1489
  %114 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx151, align 4
  %116 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %in, align 4
  %arrayidx153 = getelementptr ptr, ptr %117, i32 %ni.1491
  %118 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx153, align 4
  %cmp154 = icmp eq ptr %115, %119
  br i1 %cmp154, label %if.then156, label %land.lhs.true.if.end165_crit_edge

land.lhs.true.if.end165_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end165

if.then156:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %buf, align 4
  %122 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %in_size, align 4
  %124 = call ptr @memcpy(ptr %bounce, ptr %121, i32 %123)
  store ptr %bounce, ptr %buf, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then156, %land.lhs.true.if.end165_crit_edge, %if.end148.if.end165_crit_edge, %kmap.exit454.if.end165_crit_edge
  %inlen.1499 = phi i32 [ %inlen.0, %if.end148.if.end165_crit_edge ], [ %inlen.1498, %if.then156 ], [ %inlen.1498, %land.lhs.true.if.end165_crit_edge ], [ %inlen.0, %kmap.exit454.if.end165_crit_edge ]
  %outlen.1496 = phi i32 [ %outlen.1, %if.end148.if.end165_crit_edge ], [ %outlen.1495, %if.then156 ], [ %outlen.1495, %land.lhs.true.if.end165_crit_edge ], [ %sub99, %kmap.exit454.if.end165_crit_edge ]
  %pageofs.1494 = phi i32 [ %pageofs.1, %if.end148.if.end165_crit_edge ], [ %pageofs.1493, %if.then156 ], [ %pageofs.1493, %land.lhs.true.if.end165_crit_edge ], [ 0, %kmap.exit454.if.end165_crit_edge ]
  %ni.1492 = phi i32 [ %ni.0, %if.end148.if.end165_crit_edge ], [ %ni.1491, %if.then156 ], [ %ni.1491, %land.lhs.true.if.end165_crit_edge ], [ %ni.0, %kmap.exit454.if.end165_crit_edge ]
  %no.1490 = phi i32 [ %no.1, %if.end148.if.end165_crit_edge ], [ %no.1489, %if.then156 ], [ %no.1489, %land.lhs.true.if.end165_crit_edge ], [ %inc, %kmap.exit454.if.end165_crit_edge ]
  %bounced.2.off0 = phi i1 [ true, %if.end148.if.end165_crit_edge ], [ true, %if.then156 ], [ false, %land.lhs.true.if.end165_crit_edge ], [ true, %kmap.exit454.if.end165_crit_edge ]
  %j.0545 = add i32 %ni.1492, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0545, i32 %shr4)
  %cmp168546 = icmp ult i32 %j.0545, %shr4
  br i1 %cmp168546, label %if.end165.for.body_crit_edge, label %if.end165.for.end207_crit_edge

if.end165.for.end207_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end207

if.end165.for.body_crit_edge:                     ; preds = %if.end165
  br label %for.body

for.body:                                         ; preds = %cleanup203.for.body_crit_edge, %if.end165.for.body_crit_edge
  %j.0547 = phi i32 [ %j.0, %cleanup203.for.body_crit_edge ], [ %j.0545, %if.end165.for.body_crit_edge ]
  %125 = ptrtoint ptr %out76 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %out76, align 4
  %arrayidx171 = getelementptr ptr, ptr %126, i32 %no.1490
  %127 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx171, align 4
  %129 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %in, align 4
  %arrayidx173 = getelementptr ptr, ptr %130, i32 %j.0547
  %131 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx173, align 4
  %cmp174.not = icmp eq ptr %128, %132
  br i1 %cmp174.not, label %do.body178, label %for.body.cleanup203_crit_edge

for.body.cleanup203_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup203

do.body178:                                       ; preds = %for.body
  %133 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rq, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %134, i32 0, i32 33
  %135 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s_fs_info, align 16
  %mapping.i = getelementptr inbounds %struct.page, ptr %128, i32 0, i32 1, i32 0, i32 1
  %137 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mapping.i, align 4
  %managed_cache.i = getelementptr inbounds %struct.erofs_sb_info, ptr %136, i32 0, i32 6
  %139 = ptrtoint ptr %managed_cache.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %managed_cache.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 9
  %141 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i_mapping.i, align 8
  %cmp.i = icmp eq ptr %138, %142
  br i1 %cmp.i, label %do.body189, label %do.end197, !prof !55

do.body189:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor_lzma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 256, 0\0A.popsection", ""() #5, !srcloc !56
  unreachable

do.end197:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #7
  %call198 = call ptr @erofs_allocpage(ptr noundef %pagepool, i32 noundef 36032) #5
  %private1.i = getelementptr inbounds %struct.page, ptr %call198, i32 0, i32 1, i32 0, i32 3
  %143 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -4, ptr %private1.i, align 4
  %144 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %in, align 4
  %arrayidx200 = getelementptr ptr, ptr %145, i32 %j.0547
  %146 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx200, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %148 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %148, 512
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %147, i32 noundef %or.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %149 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %149, 512
  %call.i14.i = call ptr @__kmap_local_page_prot(ptr noundef %call198, i32 noundef %or.i13.i) #5
  call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #5
  call void @kunmap_local_indexed(ptr noundef %call.i14.i) #5
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #5
  %150 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %in, align 4
  %arrayidx202 = getelementptr ptr, ptr %151, i32 %j.0547
  %152 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call198, ptr %arrayidx202, align 4
  br label %cleanup203

cleanup203:                                       ; preds = %do.end197, %for.body.cleanup203_crit_edge
  %j.0 = add i32 %j.0547, 1
  %exitcond.not = icmp eq i32 %j.0, %shr4
  br i1 %exitcond.not, label %cleanup203.for.end207_crit_edge, label %cleanup203.for.body_crit_edge

cleanup203.for.body_crit_edge:                    ; preds = %cleanup203
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup203.for.end207_crit_edge:                  ; preds = %cleanup203
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end207

for.end207:                                       ; preds = %cleanup203.for.end207_crit_edge, %if.end165.for.end207_crit_edge
  %153 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %state, align 4
  %call210 = call i32 @xz_dec_microlzma_run(ptr noundef %154, ptr noundef %buf) #5
  %155 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %out_pos, align 4
  %157 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %out_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %158)
  %cmp216 = icmp ugt i32 %156, %158
  br i1 %cmp216, label %do.body225, label %do.body234, !prof !55

do.body225:                                       ; preds = %for.end207
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor_lzma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 264, 0\0A.popsection", ""() #5, !srcloc !57
  unreachable

do.body234:                                       ; preds = %for.end207
  %159 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %in_pos, align 4
  %161 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %162)
  %cmp239 = icmp ugt i32 %160, %162
  br i1 %cmp239, label %do.body248, label %do.end256, !prof !55

do.body248:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor_lzma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 265, 0\0A.popsection", ""() #5, !srcloc !58
  unreachable

do.end256:                                        ; preds = %do.body234
  %163 = zext i32 %call210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call210, label %do.end256.if.end265_crit_edge [
    i32 0, label %do.end256.for.cond64_crit_edge
    i32 1, label %land.lhs.true262
  ]

do.end256.for.cond64_crit_edge:                   ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond64

do.end256.if.end265_crit_edge:                    ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end265

land.lhs.true262:                                 ; preds = %do.end256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outlen.1496)
  %tobool263.not = icmp eq i32 %outlen.1496, 0
  br i1 %tobool263.not, label %land.lhs.true262.for.end273_crit_edge, label %land.lhs.true262.if.end265_crit_edge

land.lhs.true262.if.end265_crit_edge:             ; preds = %land.lhs.true262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end265

land.lhs.true262.for.end273_crit_edge:            ; preds = %land.lhs.true262
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end273

if.end265:                                        ; preds = %land.lhs.true262.if.end265_crit_edge, %do.end256.if.end265_crit_edge
  %164 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rq, align 4
  %166 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %inputsize, align 4
  %168 = ptrtoint ptr %outputsize to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %outputsize, align 4
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %165, ptr noundef nonnull @__func__.z_erofs_lzma_decompress, ptr noundef nonnull @.str.9, i32 noundef %call210, i32 noundef %167, i32 noundef %169) #5
  br label %for.end273

for.end273:                                       ; preds = %if.end265, %land.lhs.true262.for.end273_crit_edge, %if.then125, %if.then83
  %no.2.ph = phi i32 [ %no.1490, %land.lhs.true262.for.end273_crit_edge ], [ %no.0, %if.then125 ], [ %no.1490, %if.end265 ], [ %inc, %if.then83 ]
  %ni.2.ph = phi i32 [ %ni.1492, %land.lhs.true262.for.end273_crit_edge ], [ %inc120, %if.then125 ], [ %ni.1492, %if.end265 ], [ %ni.0, %if.then83 ]
  %err.1.ph = phi i32 [ 0, %land.lhs.true262.for.end273_crit_edge ], [ -117, %if.then125 ], [ -117, %if.end265 ], [ -117, %if.then83 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %no.2.ph, i32 %shr)
  %cmp274 = icmp ult i32 %no.2.ph, %shr
  br i1 %cmp274, label %land.lhs.true276, label %for.end273.if.end283_crit_edge

for.end273.if.end283_crit_edge:                   ; preds = %for.end273
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end283

land.lhs.true276:                                 ; preds = %for.end273
  %170 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %out, align 4
  %tobool279.not = icmp eq ptr %171, null
  br i1 %tobool279.not, label %land.lhs.true276.if.end283_crit_edge, label %if.then280

land.lhs.true276.if.end283_crit_edge:             ; preds = %land.lhs.true276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end283

if.then280:                                       ; preds = %land.lhs.true276
  %172 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %in, align 4
  %arrayidx282 = getelementptr ptr, ptr %173, i32 %no.2.ph
  %174 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx282, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #5
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %shr.i.i470 = lshr i32 %177, 30
  %178 = zext i32 %shr.i.i470 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %shr.i.i470, label %if.then280.if.end283_crit_edge [
    i32 2, label %if.then280.if.end.i473_crit_edge
    i32 3, label %is_highmem_idx.exit.i472
  ]

if.then280.if.end.i473_crit_edge:                 ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i473

if.then280.if.end283_crit_edge:                   ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end283

is_highmem_idx.exit.i472:                         ; preds = %if.then280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %179 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %179)
  %cmp2.i.not.i471 = icmp eq i32 %179, 2
  br i1 %cmp2.i.not.i471, label %is_highmem_idx.exit.i472.if.end.i473_crit_edge, label %is_highmem_idx.exit.i472.if.end283_crit_edge

is_highmem_idx.exit.i472.if.end283_crit_edge:     ; preds = %is_highmem_idx.exit.i472
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end283

is_highmem_idx.exit.i472.if.end.i473_crit_edge:   ; preds = %is_highmem_idx.exit.i472
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i473

if.end.i473:                                      ; preds = %is_highmem_idx.exit.i472.if.end.i473_crit_edge, %if.then280.if.end.i473_crit_edge
  call void @kunmap_high(ptr noundef %175) #5
  br label %if.end283

if.end283:                                        ; preds = %if.end.i473, %is_highmem_idx.exit.i472.if.end283_crit_edge, %if.then280.if.end283_crit_edge, %land.lhs.true276.if.end283_crit_edge, %for.end273.if.end283_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %ni.2.ph, i32 %shr4)
  %cmp284 = icmp ult i32 %ni.2.ph, %shr4
  br i1 %cmp284, label %if.then286, label %if.end283.if.end289_crit_edge

if.end283.if.end289_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end289

if.then286:                                       ; preds = %if.end283
  %180 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %in, align 4
  %arrayidx288 = getelementptr ptr, ptr %181, i32 %ni.2.ph
  %182 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx288, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #5
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  %shr.i.i475 = lshr i32 %185, 30
  %186 = zext i32 %shr.i.i475 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr.i.i475, label %if.then286.if.end289_crit_edge [
    i32 2, label %if.then286.if.end.i478_crit_edge
    i32 3, label %is_highmem_idx.exit.i477
  ]

if.then286.if.end.i478_crit_edge:                 ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i478

if.then286.if.end289_crit_edge:                   ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end289

is_highmem_idx.exit.i477:                         ; preds = %if.then286
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %187 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %187)
  %cmp2.i.not.i476 = icmp eq i32 %187, 2
  br i1 %cmp2.i.not.i476, label %is_highmem_idx.exit.i477.if.end.i478_crit_edge, label %is_highmem_idx.exit.i477.if.end289_crit_edge

is_highmem_idx.exit.i477.if.end289_crit_edge:     ; preds = %is_highmem_idx.exit.i477
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end289

is_highmem_idx.exit.i477.if.end.i478_crit_edge:   ; preds = %is_highmem_idx.exit.i477
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i478

if.end.i478:                                      ; preds = %is_highmem_idx.exit.i477.if.end.i478_crit_edge, %if.then286.if.end.i478_crit_edge
  call void @kunmap_high(ptr noundef %183) #5
  br label %if.end289

if.end289:                                        ; preds = %if.end.i478, %is_highmem_idx.exit.i477.if.end289_crit_edge, %if.then286.if.end289_crit_edge, %if.end283.if.end289_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  %188 = load ptr, ptr @z_erofs_lzma_head, align 4
  %189 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %188, ptr %.lcssa, align 4
  store ptr %.lcssa, ptr @z_erofs_lzma_head, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @z_erofs_lzma_lock) #5
  call void @__wake_up(ptr noundef nonnull @z_erofs_lzma_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %cleanup291

cleanup291:                                       ; preds = %if.end289, %if.end.i, %is_highmem_idx.exit.i439.cleanup291_crit_edge, %if.then.cleanup291_crit_edge
  %retval.0 = phi i32 [ %err.1.ph, %if.end289 ], [ %call10, %if.then.cleanup291_crit_edge ], [ %call10, %is_highmem_idx.exit.i439.cleanup291_crit_edge ], [ %call10, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @z_erofs_fixup_insize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_microlzma_reset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_allocpage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_microlzma_run(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__param_lzma_streams, !1, !"__param_lzma_streams", i1 false, i1 false}
!1 = !{!"../fs/erofs/decompressor_lzma.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_lzma_streamstype287, !1, !"__UNIQUE_ID_lzma_streamstype287", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/erofs/decompressor_lzma.c", i32 78, i32 9}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @z_erofs_load_lzma_config.lzma_resize_mutex, !4, !"lzma_resize_mutex", i1 false, i1 false}
!7 = !{ptr @__func__.z_erofs_load_lzma_config, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/erofs/decompressor_lzma.c", i32 84, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/erofs/decompressor_lzma.c", i32 88, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/erofs/decompressor_lzma.c", i32 94, i32 3}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/erofs/decompressor_lzma.c", i32 99, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/erofs/decompressor_lzma.c", i32 118, i32 4}
!18 = !{ptr @__func__.z_erofs_lzma_decompress, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/erofs/decompressor_lzma.c", i32 211, i32 5}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/erofs/decompressor_lzma.c", i32 226, i32 5}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/erofs/decompressor_lzma.c", i32 270, i32 4}
!25 = !{ptr @z_erofs_lzma_max_dictsize, !26, !"z_erofs_lzma_max_dictsize", i1 false, i1 false}
!26 = !{!"../fs/erofs/decompressor_lzma.c", i32 15, i32 21}
!27 = !{ptr @z_erofs_lzma_nstrms, !28, !"z_erofs_lzma_nstrms", i1 false, i1 false}
!28 = !{!"../fs/erofs/decompressor_lzma.c", i32 16, i32 21}
!29 = !{ptr @z_erofs_lzma_avail_strms, !30, !"z_erofs_lzma_avail_strms", i1 false, i1 false}
!30 = !{!"../fs/erofs/decompressor_lzma.c", i32 16, i32 42}
!31 = !{ptr @z_erofs_lzma_head, !32, !"z_erofs_lzma_head", i1 false, i1 false}
!32 = !{!"../fs/erofs/decompressor_lzma.c", i32 17, i32 29}
!33 = !{ptr @__param_str_lzma_streams, !1, !"__param_str_lzma_streams", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/erofs/decompressor_lzma.c", i32 14, i32 8}
!36 = !{ptr @z_erofs_lzma_lock, !35, !"z_erofs_lzma_lock", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/erofs/decompressor_lzma.c", i32 18, i32 8}
!39 = !{ptr @z_erofs_lzma_wq, !38, !"z_erofs_lzma_wq", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2154491464, i64 2154491956, i64 2154491501, i64 2154491557, i64 2154491591, i64 2154491615, i64 2154491656, i64 2154491677, i64 2154491705, i64 2154491739}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2154503654, i64 2154504147, i64 2154503691, i64 2154503747, i64 2154503781, i64 2154503805, i64 2154503846, i64 2154503867, i64 2154503895, i64 2154503929}
!54 = !{i8 0, i8 2}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2154527078, i64 2154527571, i64 2154527115, i64 2154527171, i64 2154527205, i64 2154527229, i64 2154527270, i64 2154527291, i64 2154527319, i64 2154527353}
!57 = !{i64 2154528976, i64 2154529469, i64 2154529013, i64 2154529069, i64 2154529103, i64 2154529127, i64 2154529168, i64 2154529189, i64 2154529217, i64 2154529251}
!58 = !{i64 2154530638, i64 2154531131, i64 2154530675, i64 2154530731, i64 2154530765, i64 2154530789, i64 2154530830, i64 2154530851, i64 2154530879, i64 2154530913}
