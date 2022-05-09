; ModuleID = '/llk/IR_all_yes/fs/f2fs/compress.c_pt.bc'
source_filename = "../fs/f2fs/compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.56 }
%union.anon.56 = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.f2fs_compress_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.75 = type { %struct.atomic_t }
%struct.compress_io_ctx = type { i32, ptr, ptr, i32, %struct.atomic_t }
%struct.compress_ctx = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.kprojid_t = type { i32 }
%struct.decompress_io_ctx = type { i32, ptr, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.refcount_struct, i8, i8, ptr, ptr, %struct.work_struct }
%struct.compress_data = type { i32, i32, [4 x i32], [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.88 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.dnode_of_data = type { ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i32 }
%struct.f2fs_node = type { %union.anon.89, %struct.node_footer }
%union.anon.89 = type { %struct.f2fs_inode }
%struct.f2fs_inode = type { i16, i8, i8, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %union.anon.90, i32, i32, i32, i32, [255 x i8], i8, %struct.f2fs_extent, %union.anon.91, [5 x i32] }
%union.anon.90 = type { i32 }
%struct.f2fs_extent = type { i32, i32, i32 }
%union.anon.91 = type { [923 x i32] }
%struct.node_footer = type <{ i32, i32, i32, i64, i32 }>
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.30, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.30 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.f2fs_io_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, i8, i32, i8, i8, i8, i32, i8, i32, ptr, ptr, ptr, i8 }
%struct.node_info = type { i32, i32, i32, i8, i8 }
%struct.f2fs_checkpoint = type { i64, i64, i64, i32, i32, i32, [8 x i32], [8 x i16], [8 x i32], [8 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [16 x i8], [0 x i8] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.f2fs_sm_info = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.f2fs_nm_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.xarray, %struct.xarray, %struct.rw_semaphore, %struct.list_head, %struct.spinlock, [3 x i32], i32, %struct.xarray, %struct.list_head, [2 x i32], %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
%struct.anon.81 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }

@f2fs_cops = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @f2fs_lzo_ops, ptr @f2fs_lz4_ops, ptr @f2fs_zstd_ops, ptr @f2fs_lzorle_ops], [16 x i8] zeroinitializer }, align 32
@__param_str_num_compress_pages = internal constant [24 x i8] c"f2fs.num_compress_pages\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_compress_pages = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_num_compress_pages = internal constant %struct.kernel_param { ptr @__param_str_num_compress_pages, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.56 { ptr @num_compress_pages } }, section "__param", align 4
@__UNIQUE_ID_num_compress_pagestype441 = internal constant [38 x i8] c"f2fs.parmtype=num_compress_pages:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_compress_pages442 = internal constant [82 x i8] c"f2fs.parm=num_compress_pages:Number of intermediate compress pages to preallocate\00", section ".modinfo", align 1
@compress_page_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f2fs_decompress_cluster._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_decompress_cluster = private unnamed_addr constant [24 x i8] c"f2fs_decompress_cluster\00", align 1
@f2fs_decompress_cluster._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.f2fs_decompress_cluster, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%sF2FS-fs (%s): checksum invalid, nid = %lu, %x vs %x\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/f2fs/compress.c\00", [45 x i8] zeroinitializer }, align 32
@f2fs_decompress_cluster._entry_ptr = internal global ptr @f2fs_decompress_cluster._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[*|C|*|*]\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[C|*|C|*]\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[C|N|N|V]\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014access invalid cluster, ino:%lu, nid:%u, ofs_in_node:%u, reason:%s\00", [59 x i8] zeroinitializer }, align 32
@cic_entry_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dic_entry_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f2fs_decompress_end_io.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dic->verity_work)\00", [59 x i8] zeroinitializer }, align 32
@f2fs_compress_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f2fs_invalidate_page, ptr @f2fs_release_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"f2fs_page_array_entry-%u:%u\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmalloc = private unnamed_addr constant [13 x i8] c"f2fs_kmalloc\00", align 1
@f2fs_kmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.f2fs_kmalloc, ptr @.str.13, i32 3219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._entry_ptr = internal global ptr @f2fs_kmalloc._entry, section ".printk_index", align 4
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@f2fs_lzo_ops = internal constant { %struct.f2fs_compress_ops, [40 x i8] } { %struct.f2fs_compress_ops { ptr @lzo_init_compress_ctx, ptr @lzo_destroy_compress_ctx, ptr @lzo_compress_pages, ptr null, ptr null, ptr @lzo_decompress_pages }, [40 x i8] zeroinitializer }, align 32
@f2fs_lz4_ops = internal constant { %struct.f2fs_compress_ops, [40 x i8] } { %struct.f2fs_compress_ops { ptr @lz4_init_compress_ctx, ptr @lz4_destroy_compress_ctx, ptr @lz4_compress_pages, ptr null, ptr null, ptr @lz4_decompress_pages }, [40 x i8] zeroinitializer }, align 32
@f2fs_zstd_ops = internal constant { %struct.f2fs_compress_ops, [40 x i8] } { %struct.f2fs_compress_ops { ptr @zstd_init_compress_ctx, ptr @zstd_destroy_compress_ctx, ptr @zstd_compress_pages, ptr @zstd_init_decompress_ctx, ptr @zstd_destroy_decompress_ctx, ptr @zstd_decompress_pages }, [40 x i8] zeroinitializer }, align 32
@f2fs_lzorle_ops = internal constant { %struct.f2fs_compress_ops, [40 x i8] } { %struct.f2fs_compress_ops { ptr @lzo_init_compress_ctx, ptr @lzo_destroy_compress_ctx, ptr @lzorle_compress_pages, ptr null, ptr null, ptr @lzo_decompress_pages }, [40 x i8] zeroinitializer }, align 32
@f2fs_kvmalloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_kvmalloc = private unnamed_addr constant [14 x i8] c"f2fs_kvmalloc\00", align 1
@f2fs_kvmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.f2fs_kvmalloc, ptr @.str.13, i32 3236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_kvmalloc._entry_ptr = internal global ptr @f2fs_kvmalloc._entry, section ".printk_index", align 4
@lzo_compress_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.lzo_compress_pages = private unnamed_addr constant [19 x i8] c"lzo_compress_pages\00", align 1
@lzo_compress_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.lzo_compress_pages, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%sF2FS-fs (%s): lzo compress failed, ret:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@lzo_compress_pages._entry_ptr = internal global ptr @lzo_compress_pages._entry, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lzo_decompress_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.lzo_decompress_pages = private unnamed_addr constant [21 x i8] c"lzo_decompress_pages\00", align 1
@lzo_decompress_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.lzo_decompress_pages, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%sF2FS-fs (%s): lzo decompress failed, ret:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@lzo_decompress_pages._entry_ptr = internal global ptr @lzo_decompress_pages._entry, section ".printk_index", align 4
@lzo_decompress_pages._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lzo_decompress_pages._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.lzo_decompress_pages, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%sF2FS-fs (%s): lzo invalid rlen:%zu, expected:%lu\0A\00", [44 x i8] zeroinitializer }, align 32
@lzo_decompress_pages._entry_ptr.20 = internal global ptr @lzo_decompress_pages._entry.18, section ".printk_index", align 4
@lz4_decompress_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.lz4_decompress_pages = private unnamed_addr constant [21 x i8] c"lz4_decompress_pages\00", align 1
@lz4_decompress_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.lz4_decompress_pages, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%sF2FS-fs (%s): lz4 decompress failed, ret:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@lz4_decompress_pages._entry_ptr = internal global ptr @lz4_decompress_pages._entry, section ".printk_index", align 4
@lz4_decompress_pages._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lz4_decompress_pages._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.lz4_decompress_pages, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%sF2FS-fs (%s): lz4 invalid rlen:%zu, expected:%lu\0A\00", [44 x i8] zeroinitializer }, align 32
@lz4_decompress_pages._entry_ptr.25 = internal global ptr @lz4_decompress_pages._entry.23, section ".printk_index", align 4
@zstd_init_compress_ctx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.zstd_init_compress_ctx = private unnamed_addr constant [23 x i8] c"zstd_init_compress_ctx\00", align 1
@zstd_init_compress_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.zstd_init_compress_ctx, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%sF2FS-fs (%s): %s zstd_init_cstream failed\0A\00", [51 x i8] zeroinitializer }, align 32
@zstd_init_compress_ctx._entry_ptr = internal global ptr @zstd_init_compress_ctx._entry, section ".printk_index", align 4
@zstd_compress_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.zstd_compress_pages = private unnamed_addr constant [20 x i8] c"zstd_compress_pages\00", align 1
@zstd_compress_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.zstd_compress_pages, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%sF2FS-fs (%s): %s zstd_compress_stream failed, ret: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@zstd_compress_pages._entry_ptr = internal global ptr @zstd_compress_pages._entry, section ".printk_index", align 4
@zstd_compress_pages._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@zstd_compress_pages._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.zstd_compress_pages, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%sF2FS-fs (%s): %s zstd_end_stream returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@zstd_compress_pages._entry_ptr.31 = internal global ptr @zstd_compress_pages._entry.29, section ".printk_index", align 4
@zstd_init_decompress_ctx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.zstd_init_decompress_ctx = private unnamed_addr constant [25 x i8] c"zstd_init_decompress_ctx\00", align 1
@zstd_init_decompress_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.zstd_init_decompress_ctx, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%sF2FS-fs (%s): %s zstd_init_dstream failed\0A\00", [51 x i8] zeroinitializer }, align 32
@zstd_init_decompress_ctx._entry_ptr = internal global ptr @zstd_init_decompress_ctx._entry, section ".printk_index", align 4
@zstd_decompress_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.zstd_decompress_pages = private unnamed_addr constant [22 x i8] c"zstd_decompress_pages\00", align 1
@zstd_decompress_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.zstd_decompress_pages, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%sF2FS-fs (%s): %s zstd_decompress_stream failed, ret: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@zstd_decompress_pages._entry_ptr = internal global ptr @zstd_decompress_pages._entry, section ".printk_index", align 4
@zstd_decompress_pages._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@zstd_decompress_pages._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.zstd_decompress_pages, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%sF2FS-fs (%s): %s ZSTD invalid rlen:%zu, expected:%lu\0A\00", [40 x i8] zeroinitializer }, align 32
@zstd_decompress_pages._entry_ptr.37 = internal global ptr @zstd_decompress_pages._entry.35, section ".printk_index", align 4
@lzorle_compress_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.lzorle_compress_pages = private unnamed_addr constant [22 x i8] c"lzorle_compress_pages\00", align 1
@lzorle_compress_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.lzorle_compress_pages, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%sF2FS-fs (%s): lzo-rle compress failed, ret:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@lzorle_compress_pages._entry_ptr = internal global ptr @lzorle_compress_pages._entry, section ".printk_index", align 4
@__tracepoint_f2fs_decompress_pages_start = external dso_local global %struct.tracepoint, align 4
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/f2fs.h\00", [36 x i8] zeroinitializer }, align 32
@trace_f2fs_decompress_pages_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_decompress_pages_end = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_decompress_pages_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_compress_pages_start = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_compress_pages_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_f2fs_compress_pages_end = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_compress_pages_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@f2fs_trylock_op._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_trylock_op = private unnamed_addr constant [16 x i8] c"f2fs_trylock_op\00", align 1
@f2fs_trylock_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.f2fs_trylock_op, ptr @.str.13, i32 2103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_trylock_op._entry_ptr = internal global ptr @f2fs_trylock_op._entry, section ".printk_index", align 4
@.str.45 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmem_cache_alloc = private unnamed_addr constant [22 x i8] c"f2fs_kmem_cache_alloc\00", align 1
@f2fs_kmem_cache_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.f2fs_kmem_cache_alloc, ptr @.str.13, i32 2650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._entry_ptr = internal global ptr @f2fs_kmem_cache_alloc._entry, section ".printk_index", align 4
@.str.46 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@f2fs_pagecache_get_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_pagecache_get_page = private unnamed_addr constant [24 x i8] c"f2fs_pagecache_get_page\00", align 1
@f2fs_pagecache_get_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.f2fs_pagecache_get_page, ptr @.str.13, i32 2587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_pagecache_get_page._entry_ptr = internal global ptr @f2fs_pagecache_get_page._entry, section ".printk_index", align 4
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f2fs_cic_entry\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f2fs_dic_entry\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 524288, i64 4294967285]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"f2fs_cops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 532, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"num_compress_pages\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 563, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"compress_page_pool\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 562, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 804, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 926, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 936, i32 13 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 947, i32 14 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 954, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"cic_entry_slab\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 23, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"dic_entry_slab\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 24, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1707, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"f2fs_compress_aops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1751, i32 39 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1914, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 452, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 3219, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"f2fs_lzo_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 230, i32 39 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"f2fs_lz4_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 327, i32 39 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"f2fs_zstd_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 497, i32 39 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"f2fs_lzorle_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 523, i32 39 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 3236, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 200, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 214, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 220, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 311, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 317, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 360, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 400, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 408, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 442, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 479, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 486, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 516, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [31 x i8] c"../include/trace/events/f2fs.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1811, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 108, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 717, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 260, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 2103, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 420, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 2650, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1160, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 416, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 2587, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 788, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1933, i32 42 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.311 = private constant [22 x i8] c"../fs/f2fs/compress.c\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1947, i32 42 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_num_compress_pages442, ptr @__UNIQUE_ID_num_compress_pagestype441, ptr @__param_num_compress_pages, ptr @f2fs_decompress_cluster._entry, ptr @f2fs_decompress_cluster._entry_ptr, ptr @f2fs_kmalloc._entry, ptr @f2fs_kmalloc._entry_ptr, ptr @f2fs_kmem_cache_alloc._entry, ptr @f2fs_kmem_cache_alloc._entry_ptr, ptr @f2fs_kvmalloc._entry, ptr @f2fs_kvmalloc._entry_ptr, ptr @f2fs_pagecache_get_page._entry, ptr @f2fs_pagecache_get_page._entry_ptr, ptr @f2fs_trylock_op._entry, ptr @f2fs_trylock_op._entry_ptr, ptr @lz4_decompress_pages._entry, ptr @lz4_decompress_pages._entry.23, ptr @lz4_decompress_pages._entry_ptr, ptr @lz4_decompress_pages._entry_ptr.25, ptr @lzo_compress_pages._entry, ptr @lzo_compress_pages._entry_ptr, ptr @lzo_decompress_pages._entry, ptr @lzo_decompress_pages._entry.18, ptr @lzo_decompress_pages._entry_ptr, ptr @lzo_decompress_pages._entry_ptr.20, ptr @lzorle_compress_pages._entry, ptr @lzorle_compress_pages._entry_ptr, ptr @zstd_compress_pages._entry, ptr @zstd_compress_pages._entry.29, ptr @zstd_compress_pages._entry_ptr, ptr @zstd_compress_pages._entry_ptr.31, ptr @zstd_decompress_pages._entry, ptr @zstd_decompress_pages._entry.35, ptr @zstd_decompress_pages._entry_ptr, ptr @zstd_decompress_pages._entry_ptr.37, ptr @zstd_init_compress_ctx._entry, ptr @zstd_init_compress_ctx._entry_ptr, ptr @zstd_init_decompress_ctx._entry, ptr @zstd_init_decompress_ctx._entry_ptr, ptr @f2fs_cops, ptr @num_compress_pages, ptr @compress_page_pool, ptr @f2fs_decompress_cluster._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cic_entry_slab, ptr @dic_entry_slab, ptr @f2fs_decompress_end_io.__key, ptr @.str.9, ptr @f2fs_compress_aops, ptr @.str.10, ptr @.str.11, ptr @f2fs_kmalloc._rs, ptr @.str.12, ptr @.str.13, ptr @f2fs_lzo_ops, ptr @f2fs_lz4_ops, ptr @f2fs_zstd_ops, ptr @f2fs_lzorle_ops, ptr @f2fs_kvmalloc._rs, ptr @lzo_compress_pages._rs, ptr @.str.14, ptr @.str.15, ptr @lzo_decompress_pages._rs, ptr @.str.16, ptr @lzo_decompress_pages._rs.17, ptr @.str.19, ptr @lz4_decompress_pages._rs, ptr @.str.21, ptr @lz4_decompress_pages._rs.22, ptr @.str.24, ptr @zstd_init_compress_ctx._rs, ptr @.str.26, ptr @zstd_compress_pages._rs, ptr @.str.27, ptr @zstd_compress_pages._rs.28, ptr @.str.30, ptr @zstd_init_decompress_ctx._rs, ptr @.str.32, ptr @zstd_decompress_pages._rs, ptr @.str.33, ptr @zstd_decompress_pages._rs.34, ptr @.str.36, ptr @lzorle_compress_pages._rs, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @f2fs_trylock_op._rs, ptr @.str.45, ptr @f2fs_kmem_cache_alloc._rs, ptr @.str.46, ptr @.str.47, ptr @f2fs_pagecache_get_page._rs, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_cops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_compress_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compress_page_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_decompress_cluster._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_decompress_cluster._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cic_entry_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dic_entry_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_decompress_end_io.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_compress_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_lzo_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_lz4_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_zstd_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_lzorle_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kvmalloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kvmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_compress_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_compress_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_decompress_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_decompress_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_decompress_pages._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzo_decompress_pages._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz4_decompress_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz4_decompress_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz4_decompress_pages._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz4_decompress_pages._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_init_compress_ctx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_init_compress_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_compress_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_compress_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_compress_pages._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_compress_pages._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_init_decompress_ctx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_init_decompress_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_decompress_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_decompress_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_decompress_pages._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_decompress_pages._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzorle_compress_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzorle_compress_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_trylock_op._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_trylock_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_pagecache_get_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_pagecache_get_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_is_compressed_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !195

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.11) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !196
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %PagePrivate.exit.return_crit_edge, label %if.end

PagePrivate.exit.return_crit_edge:                ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i.i = icmp eq i32 %8, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !195

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.11) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !196
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end3
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %page, align 4
  %11 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %PagePrivate.exit.i.do.body_crit_edge, label %land.lhs.true.i

PagePrivate.exit.i.do.body_crit_edge:             ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true.i:                                  ; preds = %PagePrivate.exit.i
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %private, align 4
  %and1.i.i19 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i19)
  %tobool2.not.i = icmp eq i32 %and1.i.i19, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.body_crit_edge, label %page_private_nonpointer.exit

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

page_private_nonpointer.exit:                     ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %private, align 4
  %and1.i8.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i8.i)
  %tobool5.i.not = icmp eq i32 %and1.i8.i, 0
  br i1 %tobool5.i.not, label %page_private_nonpointer.exit.do.body_crit_edge, label %page_private_nonpointer.exit.return_crit_edge

page_private_nonpointer.exit.return_crit_edge:    ; preds = %page_private_nonpointer.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

page_private_nonpointer.exit.do.body_crit_edge:   ; preds = %page_private_nonpointer.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %page_private_nonpointer.exit.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %PagePrivate.exit.i.do.body_crit_edge
  %16 = inttoptr i32 %6 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -168640512, i32 %18)
  %cmp.not = icmp eq i32 %18, -168640512
  br i1 %cmp.not, label %do.body.return_crit_edge, label %do.body11, !prof !197

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 85, 0\0A.popsection", ""() #16, !srcloc !198
  unreachable

return:                                           ; preds = %do.body.return_crit_edge, %page_private_nonpointer.exit.return_crit_edge, %if.end.return_crit_edge, %PagePrivate.exit.return_crit_edge
  %retval.0 = phi i1 [ false, %PagePrivate.exit.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %page_private_nonpointer.exit.return_crit_edge ], [ true, %do.body.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @f2fs_compress_control_page(ptr nocapture noundef readonly %page) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %rpages = getelementptr inbounds %struct.compress_io_ctx, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rpages, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_compress_ctx(ptr nocapture noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  %0 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpages, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc, align 4
  %cluster_size = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %4 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cluster_size, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mul.i = shl i32 %5, 2
  %page_array_slab_size.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %9, i32 0, i32 140
  %10 = ptrtoint ptr %page_array_slab_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_array_slab_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %11)
  %cmp.not.i = icmp ugt i32 %mul.i, %11
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !195

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %9, i32 0, i32 139
  %12 = ptrtoint ptr %page_array_slab.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page_array_slab.i, align 4
  %call3.i = tail call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %13, ptr noundef %9) #16
  br label %page_array_alloc.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = tail call fastcc ptr @f2fs_kzalloc(ptr noundef %9, i32 noundef %mul.i) #16
  br label %page_array_alloc.exit

page_array_alloc.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call3.i, %if.then.i ], [ %call4.i, %if.end.i ]
  %14 = ptrtoint ptr %rpages to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %rpages, align 4
  %tobool3.not = icmp eq ptr %retval.0.i, null
  %cond = select i1 %tobool3.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %page_array_alloc.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond, %page_array_alloc.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_compress_ctx(ptr nocapture noundef %cc, i1 noundef zeroext %reuse) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %rpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  %2 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpages, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.page_array_free.exit_crit_edge, label %if.end.i

entry.page_array_free.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %page_array_free.exit

if.end.i:                                         ; preds = %entry
  %cluster_size = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %8 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cluster_size, align 4
  %mul.i = shl i32 %9, 2
  %page_array_slab_size.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 140
  %10 = ptrtoint ptr %page_array_slab_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_array_slab_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %11)
  %cmp.not.i = icmp ugt i32 %mul.i, %11
  br i1 %cmp.not.i, label %if.else.i, label %if.then3.i, !prof !195

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 139
  %12 = ptrtoint ptr %page_array_slab.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page_array_slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %3) #16
  br label %page_array_free.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %3) #16
  br label %page_array_free.exit

page_array_free.exit:                             ; preds = %if.else.i, %if.then3.i, %entry.page_array_free.exit_crit_edge
  %14 = ptrtoint ptr %rpages to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rpages, align 4
  %nr_rpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 5
  %15 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %nr_rpages, align 4
  %nr_cpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 7
  %16 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %nr_cpages, align 4
  %valid_nr_cpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 8
  %17 = ptrtoint ptr %valid_nr_cpages to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %valid_nr_cpages, align 4
  br i1 %reuse, label %page_array_free.exit.if.end_crit_edge, label %if.then

page_array_free.exit.if.end_crit_edge:            ; preds = %page_array_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %page_array_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  %cluster_idx = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 1
  %18 = ptrtoint ptr %cluster_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %cluster_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %page_array_free.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @page_array_free(ptr nocapture noundef readonly %inode, ptr noundef %pages, i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %tobool.not = icmp eq ptr %pages, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %nr, 2
  %page_array_slab_size = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 140
  %4 = ptrtoint ptr %page_array_slab_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_array_slab_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %5)
  %cmp.not = icmp ugt i32 %mul, %5
  br i1 %cmp.not, label %if.else, label %if.then3, !prof !195

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 139
  %6 = ptrtoint ptr %page_array_slab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page_array_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef nonnull %pages) #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %pages) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_compress_ctx_add_page(ptr nocapture noundef %cc, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %nr_rpages.i.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 5
  %2 = ptrtoint ptr %nr_rpages.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_rpages.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  %cluster_idx.i.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 1
  %4 = ptrtoint ptr %cluster_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cluster_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i3.i = icmp eq i32 %5, -1
  br i1 %cmp.i3.i, label %if.end.i.if.end_crit_edge, label %f2fs_cluster_can_merge_page.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

f2fs_cluster_can_merge_page.exit:                 ; preds = %if.end.i
  %log_cluster_size.i.i.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 3
  %6 = ptrtoint ptr %log_cluster_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %log_cluster_size.i.i.i, align 4
  %shr.i.i.i = lshr i32 %1, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr.i.i.i)
  %cmp2.i.i = icmp eq i32 %5, %shr.i.i.i
  br i1 %cmp2.i.i, label %f2fs_cluster_can_merge_page.exit.if.end_crit_edge, label %do.body1

f2fs_cluster_can_merge_page.exit.if.end_crit_edge: ; preds = %f2fs_cluster_can_merge_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body1:                                         ; preds = %f2fs_cluster_can_merge_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #16, !srcloc !199
  unreachable

if.end:                                           ; preds = %f2fs_cluster_can_merge_page.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cluster_size.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %8 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cluster_size.i, align 4
  %sub.i = add i32 %9, -1
  %and.i = and i32 %sub.i, %1
  %rpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  %10 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rpages, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %and.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %page, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %nr_rpages.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_rpages.i.i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %nr_rpages.i.i, align 4
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %log_cluster_size.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 3
  %17 = ptrtoint ptr %log_cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %log_cluster_size.i, align 4
  %shr.i = lshr i32 %16, %18
  %cluster_idx = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 1
  %19 = ptrtoint ptr %cluster_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i, ptr %cluster_idx, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @f2fs_cluster_can_merge_page(ptr nocapture noundef readonly %cc, i32 noundef %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rpages.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 5
  %0 = ptrtoint ptr %nr_rpages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %cluster_idx.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 1
  %2 = ptrtoint ptr %cluster_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cluster_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i3 = icmp eq i32 %3, -1
  br i1 %cmp.i3, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %log_cluster_size.i.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 3
  %4 = ptrtoint ptr %log_cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %log_cluster_size.i.i, align 4
  %shr.i.i = lshr i32 %index, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shr.i.i)
  %cmp2.i = icmp eq i32 %3, %shr.i.i
  br label %return

return:                                           ; preds = %if.end.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %cmp2.i, %if.end.i ], [ true, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @f2fs_is_compress_backend_ready(ptr noundef %inode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp.i = icmp eq i16 %2, -32768
  br i1 %cmp.i, label %f2fs_compressed_file.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

f2fs_compressed_file.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i.i, align 4
  br label %return

return:                                           ; preds = %f2fs_compressed_file.exit, %entry.return_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_compress_mempool() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_compress_pages, align 4
  %call.i = tail call ptr @mempool_create(i32 noundef %0, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #16
  store ptr %call.i, ptr @compress_page_pool, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_compress_mempool() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @compress_page_pool, align 4
  tail call void @mempool_destroy(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_decompress_cluster(ptr noundef %dic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_compress_algorithm = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %i_compress_algorithm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_compress_algorithm, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @f2fs_cops, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cluster_idx = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 2
  %10 = ptrtoint ptr %cluster_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cluster_idx, align 4
  %cluster_size = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 3
  %12 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cluster_size, align 4
  tail call fastcc void @trace_f2fs_decompress_pages_start(ptr noundef %1, i32 noundef %11, i32 noundef %13, i8 noundef zeroext %7)
  %failed = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 16
  %14 = ptrtoint ptr %failed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %failed, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end, label %entry.out_end_io_crit_edge

entry.out_end_io_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_end_io

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inode, align 4
  %18 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cluster_size, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mul.i = shl i32 %19, 2
  %page_array_slab_size.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %23, i32 0, i32 140
  %24 = ptrtoint ptr %page_array_slab_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %page_array_slab_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %25)
  %cmp.not.i = icmp ugt i32 %mul.i, %25
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !195

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %23, i32 0, i32 139
  %26 = ptrtoint ptr %page_array_slab.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page_array_slab.i, align 4
  %call3.i = tail call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %27, ptr noundef %23) #16
  br label %page_array_alloc.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = tail call fastcc ptr @f2fs_kzalloc(ptr noundef %23, i32 noundef %mul.i) #16
  br label %page_array_alloc.exit

page_array_alloc.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call3.i, %if.then.i ], [ %call4.i, %if.end.i ]
  %tpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 9
  %28 = ptrtoint ptr %tpages to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i, ptr %tpages, align 4
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %page_array_alloc.exit.out_end_io_crit_edge, label %for.cond.preheader

page_array_alloc.exit.out_end_io_crit_edge:       ; preds = %page_array_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_end_io

for.cond.preheader:                               ; preds = %page_array_alloc.exit
  %29 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cluster_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp185.not = icmp eq i32 %30, 0
  br i1 %cmp185.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %31 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rpages, align 4
  %arrayidx13 = getelementptr ptr, ptr %32, i32 %i.0186
  %33 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %34, null
  br i1 %tobool14.not, label %if.end20, label %if.then15

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %tpages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tpages, align 4
  %arrayidx19 = getelementptr ptr, ptr %36, i32 %i.0186
  %37 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %arrayidx19, align 4
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %call21 = tail call fastcc ptr @f2fs_compress_alloc_page()
  %38 = ptrtoint ptr %tpages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tpages, align 4
  %arrayidx23 = getelementptr ptr, ptr %39, i32 %i.0186
  %40 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call21, ptr %arrayidx23, align 4
  %41 = load ptr, ptr %tpages, align 4
  %arrayidx25 = getelementptr ptr, ptr %41, i32 %i.0186
  %42 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %43, null
  br i1 %tobool26.not, label %if.end20.out_end_io_crit_edge, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end20.out_end_io_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_end_io

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %if.then15
  %inc = add nuw i32 %i.0186, 1
  %44 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cluster_size, align 4
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %init_decompress_ctx = getelementptr inbounds %struct.f2fs_compress_ops, ptr %9, i32 0, i32 3
  %46 = ptrtoint ptr %init_decompress_ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_decompress_ctx, align 4
  %tobool29.not = icmp eq ptr %47, null
  br i1 %tobool29.not, label %for.end.if.end36_crit_edge, label %if.then30

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then30:                                        ; preds = %for.end
  %call32 = tail call i32 %47(ptr noundef %dic) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then30.if.end36_crit_edge, label %if.then30.out_end_io_crit_edge

if.then30.out_end_io_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_end_io

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %for.end.if.end36_crit_edge
  %48 = ptrtoint ptr %tpages to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tpages, align 4
  %50 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cluster_size, align 4
  %call.i = tail call ptr @vm_map_ram(ptr noundef %49, i32 noundef %51, i32 noundef -1) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i162, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.end.i162:                                      ; preds = %if.end36
  tail call void @vm_unmap_aliases() #16
  %call.1.i = tail call ptr @vm_map_ram(ptr noundef %49, i32 noundef %51, i32 noundef -1) #16
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i162.if.end43_crit_edge

if.end.i162.if.end43_crit_edge:                   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.end.1.i:                                       ; preds = %if.end.i162
  tail call void @vm_unmap_aliases() #16
  %call.2.i = tail call ptr @vm_map_ram(ptr noundef %49, i32 noundef %51, i32 noundef -1) #16
  %tobool.not.2.i = icmp eq ptr %call.2.i, null
  br i1 %tobool.not.2.i, label %f2fs_vmap.exit, label %if.end.1.i.if.end43_crit_edge

if.end.1.i.if.end43_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

f2fs_vmap.exit:                                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @vm_unmap_aliases() #16
  %rbuf = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 10
  %52 = ptrtoint ptr %rbuf to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %rbuf, align 4
  br label %out_destroy_decompress_ctx

if.end43:                                         ; preds = %if.end.1.i.if.end43_crit_edge, %if.end.i162.if.end43_crit_edge, %if.end36.if.end43_crit_edge
  %buf.1.i.ph = phi ptr [ %call.2.i, %if.end.1.i.if.end43_crit_edge ], [ %call.1.i, %if.end.i162.if.end43_crit_edge ], [ %call.i, %if.end36.if.end43_crit_edge ]
  %rbuf177 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 10
  %53 = ptrtoint ptr %rbuf177 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.1.i.ph, ptr %rbuf177, align 4
  %cpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 7
  %54 = ptrtoint ptr %cpages to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cpages, align 4
  %nr_cpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 8
  %56 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_cpages, align 4
  %call.i163 = tail call ptr @vm_map_ram(ptr noundef %55, i32 noundef %57, i32 noundef -1) #16
  %tobool.not.i164 = icmp eq ptr %call.i163, null
  br i1 %tobool.not.i164, label %if.end.i167, label %if.end43.if.end48_crit_edge

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.end.i167:                                      ; preds = %if.end43
  tail call void @vm_unmap_aliases() #16
  %call.1.i165 = tail call ptr @vm_map_ram(ptr noundef %55, i32 noundef %57, i32 noundef -1) #16
  %tobool.not.1.i166 = icmp eq ptr %call.1.i165, null
  br i1 %tobool.not.1.i166, label %if.end.1.i170, label %if.end.i167.if.end48_crit_edge

if.end.i167.if.end48_crit_edge:                   ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.end.1.i170:                                    ; preds = %if.end.i167
  tail call void @vm_unmap_aliases() #16
  %call.2.i168 = tail call ptr @vm_map_ram(ptr noundef %55, i32 noundef %57, i32 noundef -1) #16
  %tobool.not.2.i169 = icmp eq ptr %call.2.i168, null
  br i1 %tobool.not.2.i169, label %f2fs_vmap.exit173, label %if.end.1.i170.if.end48_crit_edge

if.end.1.i170.if.end48_crit_edge:                 ; preds = %if.end.1.i170
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

f2fs_vmap.exit173:                                ; preds = %if.end.1.i170
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @vm_unmap_aliases() #16
  %cbuf = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 11
  %58 = ptrtoint ptr %cbuf to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %cbuf, align 4
  br label %out_vunmap_rbuf

if.end48:                                         ; preds = %if.end.1.i170.if.end48_crit_edge, %if.end.i167.if.end48_crit_edge, %if.end43.if.end48_crit_edge
  %buf.1.i172.ph = phi ptr [ %call.2.i168, %if.end.1.i170.if.end48_crit_edge ], [ %call.1.i165, %if.end.i167.if.end48_crit_edge ], [ %call.i163, %if.end43.if.end48_crit_edge ]
  %cbuf181 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 11
  %59 = ptrtoint ptr %cbuf181 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf.1.i172.ph, ptr %cbuf181, align 4
  %60 = ptrtoint ptr %buf.1.i172.ph to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf.1.i172.ph, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %clen50 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 13
  %63 = ptrtoint ptr %clen50 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %clen50, align 4
  %log_cluster_size = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 4
  %64 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %log_cluster_size, align 4
  %shl = shl i32 4096, %65
  %rlen = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 12
  %66 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl, ptr %rlen, align 4
  %67 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_cpages, align 4
  %mul = shl i32 %68, 12
  %sub = add i32 %mul, -24
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %sub)
  %cmp53 = icmp ugt i32 %62, %sub
  br i1 %cmp53, label %if.end48.out_vunmap_cbuf_crit_edge, label %if.end55

if.end48.out_vunmap_cbuf_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_vunmap_cbuf

if.end55:                                         ; preds = %if.end48
  %decompress_pages = getelementptr inbounds %struct.f2fs_compress_ops, ptr %9, i32 0, i32 5
  %69 = ptrtoint ptr %decompress_pages to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %decompress_pages, align 4
  %call56 = tail call i32 %70(ptr noundef %dic) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true, label %if.end55.out_vunmap_cbuf_crit_edge

if.end55.out_vunmap_cbuf_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_vunmap_cbuf

land.lhs.true:                                    ; preds = %if.end55
  %i_compress_flag = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 38
  %71 = ptrtoint ptr %i_compress_flag to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %i_compress_flag, align 8
  %73 = and i16 %72, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool58.not = icmp eq i16 %73, 0
  br i1 %tobool58.not, label %land.lhs.true.out_vunmap_cbuf_crit_edge, label %if.then59

land.lhs.true.out_vunmap_cbuf_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_vunmap_cbuf

if.then59:                                        ; preds = %land.lhs.true
  %74 = ptrtoint ptr %cbuf181 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cbuf181, align 4
  %chksum = getelementptr inbounds %struct.compress_data, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %chksum to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chksum, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %cdata = getelementptr inbounds %struct.compress_data, ptr %75, i32 0, i32 3
  %79 = ptrtoint ptr %clen50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %clen50, align 4
  %call63 = tail call fastcc i32 @f2fs_crc32(ptr noundef %5, ptr noundef %cdata, i32 noundef %80)
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %call63)
  %cmp64.not = icmp eq i32 %78, %call63
  br i1 %cmp64.not, label %if.then59.out_vunmap_cbuf_crit_edge, label %if.then66

if.then59.out_vunmap_cbuf_crit_edge:              ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_vunmap_cbuf

if.then66:                                        ; preds = %if.then59
  %81 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %inode, align 4
  %arrayidx.i.i = getelementptr %struct.f2fs_inode_info, ptr %82, i32 0, i32 8, i32 1
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool69.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool69.not, label %if.then70, label %if.then66.if.end79_crit_edge

if.then66.if.end79_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

if.then70:                                        ; preds = %if.then66
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %82, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 32, ptr noundef %flags.i) #16
  %call72 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_decompress_cluster._rs, ptr noundef nonnull @__func__.f2fs_decompress_cluster) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then70.if.end79_crit_edge, label %do.end

if.then70.if.end79_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

do.end:                                           ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %5, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 39
  %87 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %inode, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %88, i32 0, i32 11
  %89 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %i_ino, align 8
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef %s_id, i32 noundef %90, i32 noundef %78, i32 noundef %call63) #19
  br label %if.end79

if.end79:                                         ; preds = %do.end, %if.then70.if.end79_crit_edge, %if.then66.if.end79_crit_edge
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #16
  br label %out_vunmap_cbuf

out_vunmap_cbuf:                                  ; preds = %if.end79, %if.then59.out_vunmap_cbuf_crit_edge, %land.lhs.true.out_vunmap_cbuf_crit_edge, %if.end55.out_vunmap_cbuf_crit_edge, %if.end48.out_vunmap_cbuf_crit_edge
  %ret.0 = phi i32 [ %call56, %if.end55.out_vunmap_cbuf_crit_edge ], [ 0, %land.lhs.true.out_vunmap_cbuf_crit_edge ], [ -117, %if.end48.out_vunmap_cbuf_crit_edge ], [ 0, %if.end79 ], [ 0, %if.then59.out_vunmap_cbuf_crit_edge ]
  %91 = ptrtoint ptr %cbuf181 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cbuf181, align 4
  %93 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr_cpages, align 4
  tail call void @vm_unmap_ram(ptr noundef %92, i32 noundef %94) #16
  br label %out_vunmap_rbuf

out_vunmap_rbuf:                                  ; preds = %out_vunmap_cbuf, %f2fs_vmap.exit173
  %ret.1 = phi i32 [ %ret.0, %out_vunmap_cbuf ], [ -12, %f2fs_vmap.exit173 ]
  %95 = ptrtoint ptr %rbuf177 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rbuf177, align 4
  %97 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cluster_size, align 4
  tail call void @vm_unmap_ram(ptr noundef %96, i32 noundef %98) #16
  br label %out_destroy_decompress_ctx

out_destroy_decompress_ctx:                       ; preds = %out_vunmap_rbuf, %f2fs_vmap.exit
  %ret.2 = phi i32 [ %ret.1, %out_vunmap_rbuf ], [ -12, %f2fs_vmap.exit ]
  %destroy_decompress_ctx = getelementptr inbounds %struct.f2fs_compress_ops, ptr %9, i32 0, i32 4
  %99 = ptrtoint ptr %destroy_decompress_ctx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %destroy_decompress_ctx, align 4
  %tobool86.not = icmp eq ptr %100, null
  br i1 %tobool86.not, label %out_destroy_decompress_ctx.out_end_io_crit_edge, label %if.then87

out_destroy_decompress_ctx.out_end_io_crit_edge:  ; preds = %out_destroy_decompress_ctx
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_end_io

if.then87:                                        ; preds = %out_destroy_decompress_ctx
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %100(ptr noundef %dic) #16
  br label %out_end_io

out_end_io:                                       ; preds = %if.then87, %out_destroy_decompress_ctx.out_end_io_crit_edge, %if.then30.out_end_io_crit_edge, %if.end20.out_end_io_crit_edge, %page_array_alloc.exit.out_end_io_crit_edge, %entry.out_end_io_crit_edge
  %ret.3 = phi i32 [ %call32, %if.then30.out_end_io_crit_edge ], [ %ret.2, %if.then87 ], [ %ret.2, %out_destroy_decompress_ctx.out_end_io_crit_edge ], [ -5, %entry.out_end_io_crit_edge ], [ -12, %page_array_alloc.exit.out_end_io_crit_edge ], [ -12, %if.end20.out_end_io_crit_edge ]
  %101 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %inode, align 4
  %103 = ptrtoint ptr %cluster_idx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cluster_idx, align 4
  %clen92 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 13
  %105 = ptrtoint ptr %clen92 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %clen92, align 4
  tail call fastcc void @trace_f2fs_decompress_pages_end(ptr noundef %102, i32 noundef %104, i32 noundef %106, i32 noundef %ret.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool93 = icmp ne i32 %ret.3, 0
  br i1 %tobool93, label %out_end_io.if.else.i_crit_edge, label %land.lhs.true.i

out_end_io.if.else.i_crit_edge:                   ; preds = %out_end_io
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %out_end_io
  %need_verity.i = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 17
  %107 = ptrtoint ptr %need_verity.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %need_verity.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool1.not.i = icmp eq i8 %108, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %verity_work.i = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20
  tail call void @__init_work(ptr noundef %verity_work.i, i32 noundef 0) #16
  %109 = ptrtoint ptr %verity_work.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -64, ptr %verity_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @f2fs_decompress_end_io.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry5.i = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20, i32 1
  %110 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20, i32 1, i32 1
  %111 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20, i32 2
  %112 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @f2fs_verify_cluster, ptr %func.i, align 4
  tail call void @fsverity_enqueue_verify_work(ptr noundef %verity_work.i) #16
  br label %f2fs_decompress_end_io.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %out_end_io.if.else.i_crit_edge
  tail call fastcc void @__f2fs_decompress_end_io(ptr noundef %dic, i1 noundef zeroext %tobool93) #16
  br label %f2fs_decompress_end_io.exit

f2fs_decompress_end_io.exit:                      ; preds = %if.else.i, %do.body.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_decompress_pages_start(ptr noundef %inode, i32 noundef %cluster_idx, i32 noundef %cluster_size, i8 noundef zeroext %algtype) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_decompress_pages_start, i32 0, i32 1), ptr blockaddress(@trace_f2fs_decompress_pages_start, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !202
  %call42 = tail call i32 @__traceiter_f2fs_decompress_pages_start(ptr noundef null, ptr noundef %inode, i32 noundef %cluster_idx, i32 noundef %cluster_size, i8 noundef zeroext %algtype) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !203
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_decompress_pages_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_decompress_pages_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_decompress_pages_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_f2fs_decompress_pages_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 1817, ptr noundef nonnull @.str.40) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !205
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_compress_alloc_page() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @compress_page_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef 3136) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.49, i32 noundef 788) #16
  %1 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %3, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %4, %if.end.i.i ]
  %5 = inttoptr i32 %retval.0.i.i to ptr
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !197

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.43) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #16
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and.i.i4.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #16
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #16, !srcloc !207
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !208
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %5) #16
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  ret ptr %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f2fs_crc32(ptr nocapture noundef readonly %sbi, ptr noundef %address, i32 noundef %length) unnamed_addr #6 align 64 {
entry:
  %desc.i = alloca %struct.anon.88, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #16
  %0 = getelementptr inbounds %struct.anon.88, ptr %desc.i, i32 0, i32 1
  %s_chksum_driver.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 129
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %2 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_chksum_driver.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !197

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #16, !srcloc !209
  unreachable

do.end7.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %desc.i, align 8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -218816496, ptr %0, align 8
  %call10.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef %address, i32 noundef %length) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool12.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool12.not.i, label %__f2fs_crc32.exit, label %do.body20.i, !prof !197

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #16, !srcloc !210
  unreachable

__f2fs_crc32.exit:                                ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #16
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_ram(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_decompress_pages_end(ptr noundef %inode, i32 noundef %cluster_idx, i32 noundef %compressed_size, i32 noundef %ret) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_decompress_pages_end, i32 0, i32 1), ptr blockaddress(@trace_f2fs_decompress_pages_end, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !211
  %call42 = tail call i32 @__traceiter_f2fs_decompress_pages_end(ptr noundef null, ptr noundef %inode, i32 noundef %cluster_idx, i32 noundef %compressed_size, i32 noundef %ret) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_decompress_pages_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_decompress_pages_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_decompress_pages_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_f2fs_decompress_pages_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 1833, ptr noundef nonnull @.str.40) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !205
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_decompress_end_io(ptr noundef %dic, i1 noundef zeroext %failed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %failed, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %need_verity = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 17
  %0 = ptrtoint ptr %need_verity to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %need_verity, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %verity_work = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20
  tail call void @__init_work(ptr noundef %verity_work, i32 noundef 0) #16
  %2 = ptrtoint ptr %verity_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %verity_work, align 4
  %lockdep_map = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @f2fs_decompress_end_io.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry5 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 20, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @f2fs_verify_cluster, ptr %func, align 4
  tail call void @fsverity_enqueue_verify_work(ptr noundef %verity_work) #16
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call fastcc void @__f2fs_decompress_end_io(ptr noundef %dic, i1 noundef zeroext %failed)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_end_read_compressed_page(ptr noundef %page, i1 noundef zeroext %failed, i32 noundef %blkaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %inode = getelementptr inbounds %struct.decompress_io_ctx, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %8, i32 0, i32 69, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #16, !srcloc !213
  br i1 %failed, label %do.body2, label %if.else

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %failed3 = getelementptr inbounds %struct.decompress_io_ctx, ptr %2, i32 0, i32 16
  %10 = ptrtoint ptr %failed3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 1, ptr %failed3, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blkaddr)
  %tobool8.not = icmp eq i32 %blkaddr, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inode, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  tail call void @f2fs_cache_compressed_page(ptr noundef %8, ptr noundef %page, i32 noundef %14, i32 noundef %blkaddr)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge, %do.body2
  %remaining_pages = getelementptr inbounds %struct.decompress_io_ctx, ptr %2, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining_pages, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %remaining_pages, i32 1, i32 3, i32 1) #16
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining_pages, ptr %remaining_pages, i32 1, ptr elementtype(i32) %remaining_pages) #16, !srcloc !215
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @f2fs_decompress_cluster(ptr noundef %2)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_cache_compressed_page(ptr noundef %sbi, ptr noundef %page, i32 noundef %ino, i32 noundef %blkaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %blkaddr, i32 noundef 8) #16
  br i1 %call, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call zeroext i1 @f2fs_available_free_memory(ptr noundef %sbi, i32 noundef 7) #16
  br i1 %call3, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %compress_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 144
  %2 = ptrtoint ptr %compress_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compress_inode.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping.i, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %5, i32 noundef %blkaddr, i32 noundef 0, i32 noundef 0) #16
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end10, label %if.end.i

if.end.i:                                         ; preds = %if.end5
  %6 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i17.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !197

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i = add i32 %8, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %9, %if.end.i.i21.i ]
  %10 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !195

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.42) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !217
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #16, !srcloc !215
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_cache_compressed_page, %if.then.i.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !201

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %10) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 8256, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %tobool12.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %compress_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %compress_inode.i, align 4
  %i_mapping.i43 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %i_mapping.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping.i43, align 8
  %call16 = tail call i32 @add_to_page_cache_lru(ptr noundef nonnull %call38.i.i.i, ptr noundef %17, i32 noundef %blkaddr, i32 noundef 3136) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @f2fs_put_page(ptr noundef nonnull %call38.i.i.i, i32 noundef 0)
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  tail call fastcc void @set_page_private_data(ptr noundef nonnull %call38.i.i.i, i32 noundef %ino)
  %call20 = tail call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %blkaddr, i32 noundef 8) #16
  br i1 %call20, label %if.end22, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end22:                                         ; preds = %if.end19
  %call23 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #16
  %call24 = tail call ptr @page_address(ptr noundef %page) #16
  %18 = call ptr @memcpy(ptr %call23, ptr %call24, i32 4096)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !218
  %19 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !197

if.then.i.i.i:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.43) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call38.i.i.i) #16
  br label %out

out:                                              ; preds = %SetPageUptodate.exit, %if.end19.out_crit_edge
  tail call fastcc void @f2fs_put_page(ptr noundef nonnull %call38.i.i.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then18, %if.end10.cleanup_crit_edge, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @f2fs_cluster_is_empty(ptr nocapture noundef readonly %cc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 5
  %0 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_all_cluster_page_loaded(ptr nocapture noundef readonly %cc, ptr nocapture noundef readonly %pvec, i32 noundef %index, i32 noundef %nr_pages) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 %nr_pages, %index
  %cluster_size = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %0 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cluster_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1)
  %cmp = icmp ult i32 %sub, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %index1 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp319 = icmp ugt i32 %1, 1
  br i1 %cmp319, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %add = add i32 %i.020, %index
  %arrayidx5 = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %add
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %index6 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index6, align 4
  %add7 = add i32 %i.020, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add7)
  %cmp8.not = icmp eq i32 %9, %add7
  %cmp8.not.not = xor i1 %cmp8.not, true
  %inc = add nuw i32 %i.020, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %exitcond.not = icmp eq i32 %inc, %1
  %or.cond = select i1 %cmp8.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %cmp8.not, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_sanity_check_cluster(ptr nocapture noundef readonly %dn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %i_cluster_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_cluster_size, align 4
  %data_blkaddr = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 9
  %8 = ptrtoint ptr %data_blkaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_blkaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %cmp = icmp eq i32 %9, -2
  br i1 %cmp, label %if.end, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

if.end:                                           ; preds = %entry
  %ofs_in_node = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 4
  %10 = ptrtoint ptr %ofs_in_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ofs_in_node, align 4
  %rem = urem i32 %11, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp656 = icmp ugt i32 %7, 1
  br i1 %cmp656, label %for.body.lr.ph, label %for.cond.preheader.cleanup27_crit_edge

for.cond.preheader.cleanup27_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %node_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %cluster_end.057 = phi i32 [ 0, %for.body.lr.ph ], [ %cluster_end.2.ph, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dn, align 4
  %14 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node_page, align 4
  %16 = ptrtoint ptr %ofs_in_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ofs_in_node, align 4
  %add = add i32 %17, %i.058
  %call.i.i.i = tail call ptr @page_address(ptr noundef %15) #16
  %footer.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %footer.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %footer.i.i, align 1
  %ino.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %ino.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i.i = icmp eq i32 %19, %21
  %call.i.i = tail call ptr @page_address(ptr noundef %15) #16
  br i1 %cmp.i.i, label %if.then.i, label %for.body.data_blkaddr.exit_crit_edge

for.body.data_blkaddr.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit

if.then.i:                                        ; preds = %for.body
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %i_inline.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i_inline.i.i, align 1
  %24 = and i8 %23, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %if.then3.i.data_blkaddr.exit_crit_edge, label %cond.true.i.i

if.then3.i.data_blkaddr.exit_crit_edge:           ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit

cond.true.i.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %25, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #16
  %29 = lshr i16 %28, 2
  %div.i.i = zext i16 %29 to i32
  br label %data_blkaddr.exit

if.else.i:                                        ; preds = %if.then.i
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %13, i32 0, i32 8
  %30 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i.i.i, align 4
  %32 = and i32 %31, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool6.not.i = icmp eq i32 %32, 0
  br i1 %tobool6.not.i, label %if.else.i.data_blkaddr.exit_crit_edge, label %if.then7.i

if.else.i.data_blkaddr.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %13, i32 0, i32 29
  %33 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %34, 2
  br label %data_blkaddr.exit

data_blkaddr.exit:                                ; preds = %if.then7.i, %if.else.i.data_blkaddr.exit_crit_edge, %cond.true.i.i, %if.then3.i.data_blkaddr.exit_crit_edge, %for.body.data_blkaddr.exit_crit_edge
  %base.0.i = phi i32 [ %div1.i.i, %if.then7.i ], [ 0, %if.else.i.data_blkaddr.exit_crit_edge ], [ 0, %for.body.data_blkaddr.exit_crit_edge ], [ %div.i.i, %cond.true.i.i ], [ 0, %if.then3.i.data_blkaddr.exit_crit_edge ]
  %footer.i16.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %footer.i16.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %footer.i16.i, align 1
  %ino.i17.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %ino.i17.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %ino.i17.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.i18.i = icmp eq i32 %36, %38
  %39 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %cond.i19.i = select i1 %cmp.i18.i, ptr %39, ptr %call.i.i
  %add.i = add i32 %add, %base.0.i
  %arrayidx.i = getelementptr i32, ptr %cond.i19.i, i32 %add.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #16
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %if.end20 [
    i32 -2, label %data_blkaddr.exit.out_crit_edge
    i32 -1, label %data_blkaddr.exit.if.then16_crit_edge
    i32 0, label %data_blkaddr.exit.if.then16_crit_edge60
  ]

data_blkaddr.exit.if.then16_crit_edge60:          ; preds = %data_blkaddr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

data_blkaddr.exit.if.then16_crit_edge:            ; preds = %data_blkaddr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

data_blkaddr.exit.out_crit_edge:                  ; preds = %data_blkaddr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then16:                                        ; preds = %data_blkaddr.exit.if.then16_crit_edge, %data_blkaddr.exit.if.then16_crit_edge60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cluster_end.057)
  %tobool17.not = icmp eq i32 %cluster_end.057, 0
  %spec.select = select i1 %tobool17.not, i32 %i.058, i32 %cluster_end.057
  br label %for.inc

if.end20:                                         ; preds = %data_blkaddr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cluster_end.057)
  %tobool21.not = icmp eq i32 %cluster_end.057, 0
  br i1 %tobool21.not, label %if.end20.for.inc_crit_edge, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %if.then16
  %cluster_end.2.ph = phi i32 [ %spec.select, %if.then16 ], [ 0, %if.end20.for.inc_crit_edge ]
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.cleanup27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

out:                                              ; preds = %if.end20.out_crit_edge, %data_blkaddr.exit.out_crit_edge, %if.end.out_crit_edge
  %reason.2 = phi ptr [ @.str.5, %if.end.out_crit_edge ], [ @.str.7, %if.end20.out_crit_edge ], [ @.str.6, %data_blkaddr.exit.out_crit_edge ]
  %44 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dn, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_ino, align 8
  %nid = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 3
  %48 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nid, align 4
  %50 = ptrtoint ptr %ofs_in_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ofs_in_node, align 4
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %47, i32 noundef %49, i32 noundef %51, ptr noundef nonnull %reason.2) #16
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #16
  br label %cleanup27

cleanup27:                                        ; preds = %out, %for.inc.cleanup27_crit_edge, %for.cond.preheader.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.0 = phi i1 [ true, %out ], [ false, %entry.cleanup27_crit_edge ], [ false, %for.cond.preheader.cleanup27_crit_edge ], [ false, %for.inc.cleanup27_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_is_compressed_cluster(ptr noundef %inode, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_log_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 36
  %0 = ptrtoint ptr %i_log_cluster_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_log_cluster_size, align 1
  %conv = zext i8 %1 to i32
  %shr = lshr i32 %index, %conv
  %call1 = tail call fastcc i32 @__f2fs_cluster_blocks(ptr noundef %inode, i32 noundef %shr, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__f2fs_cluster_blocks(ptr noundef %inode, i32 noundef %cluster_idx, i1 noundef zeroext %compr) unnamed_addr #0 align 64 {
entry:
  %dn = alloca %struct.dnode_of_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dn) #16
  %0 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 4
  %4 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 9
  %i_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 39
  %5 = ptrtoint ptr %i_cluster_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_cluster_size, align 4
  %i_log_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 36
  %7 = ptrtoint ptr %i_log_cluster_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i_log_cluster_size, align 1
  %conv = zext i8 %8 to i32
  %shl = shl i32 %cluster_idx, %conv
  %9 = call ptr @memset(ptr %3, i32 0, i32 12)
  %10 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %inode, ptr %dn, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %2, align 4
  %call2 = call i32 @f2fs_get_dnode_of_data(ptr noundef nonnull %dn, i32 noundef %shl, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call2)
  %cmp = icmp eq i32 %call2, -2
  %spec.store.select = select i1 %cmp, i32 0, i32 %call2
  br label %fail

if.end5:                                          ; preds = %entry
  %call6 = call zeroext i1 @f2fs_sanity_check_cluster(ptr noundef nonnull %dn)
  br i1 %call6, label %if.end5.fail_crit_edge, label %if.end8

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end8:                                          ; preds = %if.end5
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %15)
  %cmp9 = icmp eq i32 %15, -2
  br i1 %cmp9, label %for.cond.preheader, label %if.end8.fail_crit_edge

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

for.cond.preheader:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1262 = icmp ugt i32 %6, 1
  br i1 %cmp1262, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.064 = phi i32 [ %inc27, %if.end26.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %ret.063 = phi i32 [ %ret.1, %if.end26.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dn, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %add = add i32 %21, %i.064
  %call.i.i.i = call ptr @page_address(ptr noundef %19) #16
  %footer.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %footer.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %footer.i.i, align 1
  %ino.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %ino.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i.i = icmp eq i32 %23, %25
  %call.i.i = call ptr @page_address(ptr noundef %19) #16
  br i1 %cmp.i.i, label %if.then.i, label %for.body.data_blkaddr.exit_crit_edge

for.body.data_blkaddr.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit

if.then.i:                                        ; preds = %for.body
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %i_inline.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i_inline.i.i, align 1
  %28 = and i8 %27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i, label %if.then3.i.data_blkaddr.exit_crit_edge, label %cond.true.i.i

if.then3.i.data_blkaddr.exit_crit_edge:           ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit

cond.true.i.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  %29 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %29, align 1
  %32 = call i16 @llvm.bswap.i16(i16 %31) #16
  %33 = lshr i16 %32, 2
  %div.i.i = zext i16 %33 to i32
  br label %data_blkaddr.exit

if.else.i:                                        ; preds = %if.then.i
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %17, i32 0, i32 8
  %34 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i.i.i, align 4
  %36 = and i32 %35, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool6.not.i = icmp eq i32 %36, 0
  br i1 %tobool6.not.i, label %if.else.i.data_blkaddr.exit_crit_edge, label %if.then7.i

if.else.i.data_blkaddr.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %17, i32 0, i32 29
  %37 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %38, 2
  br label %data_blkaddr.exit

data_blkaddr.exit:                                ; preds = %if.then7.i, %if.else.i.data_blkaddr.exit_crit_edge, %cond.true.i.i, %if.then3.i.data_blkaddr.exit_crit_edge, %for.body.data_blkaddr.exit_crit_edge
  %base.0.i = phi i32 [ %div1.i.i, %if.then7.i ], [ 0, %if.else.i.data_blkaddr.exit_crit_edge ], [ 0, %for.body.data_blkaddr.exit_crit_edge ], [ %div.i.i, %cond.true.i.i ], [ 0, %if.then3.i.data_blkaddr.exit_crit_edge ]
  %footer.i16.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %footer.i16.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %footer.i16.i, align 1
  %ino.i17.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %ino.i17.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %ino.i17.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp.i18.i = icmp eq i32 %40, %42
  %43 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %cond.i19.i = select i1 %cmp.i18.i, ptr %43, ptr %call.i.i
  %add.i = add i32 %add, %base.0.i
  %arrayidx.i = getelementptr i32, ptr %cond.i19.i, i32 %add.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  br i1 %compr, label %if.then17, label %if.else

if.then17:                                        ; preds = %data_blkaddr.exit
  %46 = call i32 @llvm.bswap.i32(i32 %45) #16
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %46, label %48 [
    i32 -1, label %if.then17.if.end26_crit_edge
    i32 0, label %if.then17.if.end26_crit_edge65
    i32 -2, label %if.then17.if.end26_crit_edge66
  ]

if.then17.if.end26_crit_edge66:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then17.if.end26_crit_edge65:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

48:                                               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  %inc60 = add i32 %ret.063, 1
  br label %if.end26

if.else:                                          ; preds = %data_blkaddr.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp21.not = icmp ne i32 %45, 0
  %inc24 = zext i1 %cmp21.not to i32
  %spec.select58 = add i32 %ret.063, %inc24
  br label %if.end26

if.end26:                                         ; preds = %if.else, %48, %if.then17.if.end26_crit_edge, %if.then17.if.end26_crit_edge65, %if.then17.if.end26_crit_edge66
  %ret.1 = phi i32 [ %spec.select58, %if.else ], [ %inc60, %48 ], [ %ret.063, %if.then17.if.end26_crit_edge ], [ %ret.063, %if.then17.if.end26_crit_edge65 ], [ %ret.063, %if.then17.if.end26_crit_edge66 ]
  %inc27 = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc27, %6
  br i1 %exitcond.not, label %if.end26.do.body_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %if.end26.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %ret.0.lcssa = phi i32 [ 1, %for.cond.preheader.do.body_crit_edge ], [ %ret.1, %if.end26.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.lcssa, i32 %6)
  %cmp29.not = icmp eq i32 %ret.0.lcssa, %6
  %or.cond = select i1 %compr, i1 true, i1 %cmp29.not
  br i1 %or.cond, label %do.body.fail_crit_edge, label %land.rhs

do.body.fail_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

land.rhs:                                         ; preds = %do.body
  %arrayidx.i.i = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i.i, align 4
  %51 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool32.not = icmp eq i32 %51, 0
  br i1 %tobool32.not, label %do.body37, label %land.rhs.fail_crit_edge, !prof !195

land.rhs.fail_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

do.body37:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1002, 0\0A.popsection", ""() #16, !srcloc !219
  unreachable

fail:                                             ; preds = %land.rhs.fail_crit_edge, %do.body.fail_crit_edge, %if.end8.fail_crit_edge, %if.end5.fail_crit_edge, %if.then
  %ret.2 = phi i32 [ %spec.store.select, %if.then ], [ 0, %if.end8.fail_crit_edge ], [ -117, %if.end5.fail_crit_edge ], [ %ret.0.lcssa, %do.body.fail_crit_edge ], [ %ret.0.lcssa, %land.rhs.fail_crit_edge ]
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %dn)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn) #16
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_prepare_compress_overwrite(ptr noundef %inode, ptr nocapture noundef writeonly %pagep, i32 noundef %index, ptr nocapture noundef writeonly %fsdata) local_unnamed_addr #0 align 64 {
entry:
  %last_block_in_bio.i = alloca i64, align 8
  %bio.i = alloca ptr, align 4
  %cc = alloca %struct.compress_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cc) #16
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %inode, ptr %cc, align 4
  %cluster_idx = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 1
  %i_log_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 36
  %1 = ptrtoint ptr %i_log_cluster_size to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %i_log_cluster_size, align 1
  %conv = zext i8 %2 to i32
  %shr = lshr i32 %index, %conv
  %3 = ptrtoint ptr %cluster_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr, ptr %cluster_idx, align 4
  %cluster_size = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %i_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 39
  %4 = ptrtoint ptr %i_cluster_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_cluster_size, align 4
  %6 = ptrtoint ptr %cluster_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cluster_size, align 4
  %log_cluster_size = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 3
  %7 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %log_cluster_size, align 4
  %rpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  %nr_rpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 5
  %nr_cpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 7
  %valid_nr_cpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = call ptr @memset(ptr %rpages, i32 0, i32 44)
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last_block_in_bio.i) #16
  %15 = ptrtoint ptr %last_block_in_bio.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %last_block_in_bio.i, align 8, !annotation !220
  %shl.i.i = shl i32 %shr, %conv
  %shr.i319.i = lshr i32 %shl.i.i, %conv
  %call1.i320.i = tail call fastcc i32 @__f2fs_cluster_blocks(ptr noundef %inode, i32 noundef %shr.i319.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i320.i)
  %cmp321.i = icmp slt i32 %call1.i320.i, 1
  br i1 %cmp321.i, label %entry.prepare_compress_overwrite.exit_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.prepare_compress_overwrite.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %prepare_compress_overwrite.exit

if.end.i:                                         ; preds = %f2fs_destroy_compress_ctx.exit232.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %16 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rpages, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.f2fs_init_compress_ctx.exit.i_crit_edge

if.end.i.f2fs_init_compress_ctx.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_init_compress_ctx.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cc, align 4
  %20 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cluster_size, align 4
  %i_sb.i.i.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %mul.i.i.i = shl i32 %21, 2
  %page_array_slab_size.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %25, i32 0, i32 140
  %26 = ptrtoint ptr %page_array_slab_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page_array_slab_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %27)
  %cmp.not.i.i.i = icmp ugt i32 %mul.i.i.i, %27
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !195

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %25, i32 0, i32 139
  %28 = ptrtoint ptr %page_array_slab.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page_array_slab.i.i.i, align 4
  %call3.i.i.i = call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %29, ptr noundef %25) #16
  br label %page_array_alloc.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i.i.i = call fastcc ptr @f2fs_kzalloc(ptr noundef %25, i32 noundef %mul.i.i.i) #16
  br label %page_array_alloc.exit.i.i

page_array_alloc.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %call3.i.i.i, %if.then.i.i.i ], [ %call4.i.i.i, %if.end.i.i.i ]
  %30 = ptrtoint ptr %rpages to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i.i.i, ptr %rpages, align 4
  %tobool3.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool3.not.i.i, label %page_array_alloc.exit.i.i.prepare_compress_overwrite.exit_crit_edge, label %page_array_alloc.exit.i.i.f2fs_init_compress_ctx.exit.i_crit_edge

page_array_alloc.exit.i.i.f2fs_init_compress_ctx.exit.i_crit_edge: ; preds = %page_array_alloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_init_compress_ctx.exit.i

page_array_alloc.exit.i.i.prepare_compress_overwrite.exit_crit_edge: ; preds = %page_array_alloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prepare_compress_overwrite.exit

f2fs_init_compress_ctx.exit.i:                    ; preds = %page_array_alloc.exit.i.i.f2fs_init_compress_ctx.exit.i_crit_edge, %if.end.i.f2fs_init_compress_ctx.exit.i_crit_edge
  %31 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cluster_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp8308.not.i = icmp eq i32 %32, 0
  br i1 %cmp8308.not.i, label %f2fs_init_compress_ctx.exit.i.for.end.i_crit_edge, label %f2fs_init_compress_ctx.exit.i.for.body.i_crit_edge

f2fs_init_compress_ctx.exit.i.for.body.i_crit_edge: ; preds = %f2fs_init_compress_ctx.exit.i
  br label %for.body.i

f2fs_init_compress_ctx.exit.i.for.end.i_crit_edge: ; preds = %f2fs_init_compress_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %f2fs_init_compress_ctx.exit.i.for.body.i_crit_edge
  %i.0309.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %f2fs_init_compress_ctx.exit.i.for.body.i_crit_edge ]
  %add.i = add i32 %i.0309.i, %shl.i.i
  %call9.i = call fastcc ptr @f2fs_pagecache_get_page(ptr noundef %14, i32 noundef %add.i, i32 noundef 14) #16
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %unlock_pages.i, label %if.end12.i

if.end12.i:                                       ; preds = %for.body.i
  %33 = getelementptr inbounds %struct.page, ptr %call9.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i135.i, label %if.then.i.i134.i, !prof !197

if.then.i.i134.i:                                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = add i32 %35, -1
  br label %_compound_head.exit.i.i

if.end.i.i135.i:                                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %call9.i to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i135.i, %if.then.i.i134.i
  %retval.0.i.i136.i = phi i32 [ %sub.i.i.i, %if.then.i.i134.i ], [ %36, %if.end.i.i135.i ]
  %37 = inttoptr i32 %retval.0.i.i136.i to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i, !prof !197

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = inttoptr i32 %retval.0.i.i136.i to ptr
  call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.43) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %37, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i.i, label %if.else.i, label %PageUptodate.exit.i

PageUptodate.exit.i:                              ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !221
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call9.i, i32 noundef 1) #16
  br label %for.inc.i

if.else.i:                                        ; preds = %folio_flags.exit.i.i.i
  %index.i.i = getelementptr inbounds %struct.page, ptr %call9.i, i32 0, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i.i, align 4
  %47 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_rpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i.i.i = icmp eq i32 %48, 0
  br i1 %cmp.i.i.i.i, label %if.else.i.f2fs_compress_ctx_add_page.exit.i_crit_edge, label %if.end.i.i137.i

if.else.i.f2fs_compress_ctx_add_page.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_ctx_add_page.exit.i

if.end.i.i137.i:                                  ; preds = %if.else.i
  %49 = ptrtoint ptr %cluster_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cluster_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp.i3.i.i.i = icmp eq i32 %50, -1
  br i1 %cmp.i3.i.i.i, label %if.end.i.i137.i.f2fs_compress_ctx_add_page.exit.i_crit_edge, label %f2fs_cluster_can_merge_page.exit.i.i

if.end.i.i137.i.f2fs_compress_ctx_add_page.exit.i_crit_edge: ; preds = %if.end.i.i137.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_ctx_add_page.exit.i

f2fs_cluster_can_merge_page.exit.i.i:             ; preds = %if.end.i.i137.i
  %51 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %log_cluster_size, align 4
  %shr.i.i.i.i.i = lshr i32 %46, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %shr.i.i.i.i.i)
  %cmp2.i.i.i.i = icmp eq i32 %50, %shr.i.i.i.i.i
  br i1 %cmp2.i.i.i.i, label %f2fs_cluster_can_merge_page.exit.i.i.f2fs_compress_ctx_add_page.exit.i_crit_edge, label %do.body1.i.i

f2fs_cluster_can_merge_page.exit.i.i.f2fs_compress_ctx_add_page.exit.i_crit_edge: ; preds = %f2fs_cluster_can_merge_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_ctx_add_page.exit.i

do.body1.i.i:                                     ; preds = %f2fs_cluster_can_merge_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #16, !srcloc !199
  unreachable

f2fs_compress_ctx_add_page.exit.i:                ; preds = %f2fs_cluster_can_merge_page.exit.i.i.f2fs_compress_ctx_add_page.exit.i_crit_edge, %if.end.i.i137.i.f2fs_compress_ctx_add_page.exit.i_crit_edge, %if.else.i.f2fs_compress_ctx_add_page.exit.i_crit_edge
  %53 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cluster_size, align 4
  %sub.i.i138.i = add i32 %54, -1
  %and.i.i139.i = and i32 %sub.i.i138.i, %46
  %55 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rpages, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %56, i32 %and.i.i139.i
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i, ptr %arrayidx.i.i, align 4
  %58 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_rpages, align 4
  %inc.i.i = add i32 %59, 1
  store i32 %inc.i.i, ptr %nr_rpages, align 4
  %60 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index.i.i, align 4
  %62 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %log_cluster_size, align 4
  %shr.i.i.i = lshr i32 %61, %63
  %64 = ptrtoint ptr %cluster_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shr.i.i.i, ptr %cluster_idx, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %f2fs_compress_ctx_add_page.exit.i, %PageUptodate.exit.i
  %inc.i = add nuw i32 %i.0309.i, 1
  %65 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cluster_size, align 4
  %cmp8.i = icmp ult i32 %inc.i, %66
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %f2fs_init_compress_ctx.exit.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %f2fs_init_compress_ctx.exit.i.for.end.i_crit_edge ], [ %66, %for.inc.i.for.end.i_crit_edge ]
  %67 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_rpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i.i = icmp eq i32 %68, 0
  br i1 %cmp.i.i, label %for.end.i.if.end31.i_crit_edge, label %if.then18.i

for.end.i.if.end31.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then18.i:                                      ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bio.i) #16
  %69 = ptrtoint ptr %bio.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %bio.i, align 4
  %call20.i = call i32 @f2fs_read_multi_pages(ptr noundef nonnull %cc, ptr noundef nonnull %bio.i, i32 noundef %.lcssa.i, ptr noundef nonnull %last_block_in_bio.i, i1 noundef zeroext false, i1 noundef zeroext true) #16
  %70 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cluster_size, align 4
  call fastcc void @f2fs_drop_rpages(ptr noundef nonnull %cc, i32 noundef %71, i1 noundef zeroext false) #16
  %72 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cc, align 4
  %74 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rpages, align 4
  %i_sb.i.i.i145.i = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 8
  %76 = ptrtoint ptr %i_sb.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb.i.i.i145.i, align 4
  %s_fs_info.i.i.i.i146.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 33
  %78 = ptrtoint ptr %s_fs_info.i.i.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i.i.i.i146.i, align 16
  %tobool.not.i.i147.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i147.i, label %if.then18.i.f2fs_destroy_compress_ctx.exit.i_crit_edge, label %if.end.i.i152.i

if.then18.i.f2fs_destroy_compress_ctx.exit.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_destroy_compress_ctx.exit.i

if.end.i.i152.i:                                  ; preds = %if.then18.i
  %80 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cluster_size, align 4
  %mul.i.i149.i = shl i32 %81, 2
  %page_array_slab_size.i.i150.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %79, i32 0, i32 140
  %82 = ptrtoint ptr %page_array_slab_size.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %page_array_slab_size.i.i150.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i149.i, i32 %83)
  %cmp.not.i.i151.i = icmp ugt i32 %mul.i.i149.i, %83
  br i1 %cmp.not.i.i151.i, label %if.else.i.i.i, label %if.then3.i.i.i, !prof !195

if.then3.i.i.i:                                   ; preds = %if.end.i.i152.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i.i153.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %79, i32 0, i32 139
  %84 = ptrtoint ptr %page_array_slab.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %page_array_slab.i.i153.i, align 4
  call void @kmem_cache_free(ptr noundef %85, ptr noundef nonnull %75) #16
  br label %f2fs_destroy_compress_ctx.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i.i152.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %75) #16
  br label %f2fs_destroy_compress_ctx.exit.i

f2fs_destroy_compress_ctx.exit.i:                 ; preds = %if.else.i.i.i, %if.then3.i.i.i, %if.then18.i.f2fs_destroy_compress_ctx.exit.i_crit_edge
  %86 = ptrtoint ptr %rpages to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %rpages, align 4
  %87 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %nr_rpages, align 4
  %88 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %nr_cpages, align 4
  %89 = ptrtoint ptr %valid_nr_cpages to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %valid_nr_cpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %f2fs_destroy_compress_ctx.exit.i.cleanup.thread.i_crit_edge

f2fs_destroy_compress_ctx.exit.i.cleanup.thread.i_crit_edge: ; preds = %f2fs_destroy_compress_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i

if.end23.i:                                       ; preds = %f2fs_destroy_compress_ctx.exit.i
  %90 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bio.i, align 4
  %tobool24.not.i = icmp eq ptr %91, null
  br i1 %tobool24.not.i, label %if.end23.i.if.end26.i_crit_edge, label %if.then25.i

if.end23.i.if.end26.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @f2fs_submit_bio(ptr noundef %12, ptr noundef nonnull %91, i32 noundef 0) #16
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end26.i_crit_edge
  %92 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rpages, align 4
  %tobool.not.i157.i = icmp eq ptr %93, null
  br i1 %tobool.not.i157.i, label %if.end.i164.i, label %if.end26.i.cleanup.i_crit_edge

if.end26.i.cleanup.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end.i164.i:                                    ; preds = %if.end26.i
  %94 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cc, align 4
  %96 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cluster_size, align 4
  %i_sb.i.i.i159.i = getelementptr inbounds %struct.inode, ptr %95, i32 0, i32 8
  %98 = ptrtoint ptr %i_sb.i.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_sb.i.i.i159.i, align 4
  %s_fs_info.i.i.i.i160.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 33
  %100 = ptrtoint ptr %s_fs_info.i.i.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_fs_info.i.i.i.i160.i, align 16
  %mul.i.i161.i = shl i32 %97, 2
  %page_array_slab_size.i.i162.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %101, i32 0, i32 140
  %102 = ptrtoint ptr %page_array_slab_size.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %page_array_slab_size.i.i162.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i161.i, i32 %103)
  %cmp.not.i.i163.i = icmp ugt i32 %mul.i.i161.i, %103
  br i1 %cmp.not.i.i163.i, label %if.end.i.i169.i, label %if.then.i.i167.i, !prof !195

if.then.i.i167.i:                                 ; preds = %if.end.i164.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i.i165.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %101, i32 0, i32 139
  %104 = ptrtoint ptr %page_array_slab.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %page_array_slab.i.i165.i, align 4
  %call3.i.i166.i = call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %105, ptr noundef %101) #16
  br label %page_array_alloc.exit.i173.i

if.end.i.i169.i:                                  ; preds = %if.end.i164.i
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i.i168.i = call fastcc ptr @f2fs_kzalloc(ptr noundef %101, i32 noundef %mul.i.i161.i) #16
  br label %page_array_alloc.exit.i173.i

page_array_alloc.exit.i173.i:                     ; preds = %if.end.i.i169.i, %if.then.i.i167.i
  %retval.0.i.i170.i = phi ptr [ %call3.i.i166.i, %if.then.i.i167.i ], [ %call4.i.i168.i, %if.end.i.i169.i ]
  %106 = ptrtoint ptr %rpages to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %retval.0.i.i170.i, ptr %rpages, align 4
  %tobool3.not.i171.i = icmp eq ptr %retval.0.i.i170.i, null
  br i1 %tobool3.not.i171.i, label %page_array_alloc.exit.i173.i.cleanup.thread.i_crit_edge, label %page_array_alloc.exit.i173.i.cleanup.i_crit_edge

page_array_alloc.exit.i173.i.cleanup.i_crit_edge: ; preds = %page_array_alloc.exit.i173.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

page_array_alloc.exit.i173.i.cleanup.thread.i_crit_edge: ; preds = %page_array_alloc.exit.i173.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %page_array_alloc.exit.i173.i.cleanup.thread.i_crit_edge, %f2fs_destroy_compress_ctx.exit.i.cleanup.thread.i_crit_edge
  %ret.0.ph.i = phi i32 [ -12, %page_array_alloc.exit.i173.i.cleanup.thread.i_crit_edge ], [ %call20.i, %f2fs_destroy_compress_ctx.exit.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bio.i) #16
  br label %prepare_compress_overwrite.exit

cleanup.i:                                        ; preds = %page_array_alloc.exit.i173.i.cleanup.i_crit_edge, %if.end26.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bio.i) #16
  br label %if.end31.i

if.end31.i:                                       ; preds = %cleanup.i, %for.end.i.if.end31.i_crit_edge
  %107 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cluster_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp34311.not.i = icmp eq i32 %108, 0
  br i1 %cmp34311.not.i, label %if.end31.i.if.then69.i_crit_edge, label %if.end31.i.do.body.i_crit_edge

if.end31.i.do.body.i_crit_edge:                   ; preds = %if.end31.i
  br label %do.body.i

if.end31.i.if.then69.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then69.i

do.body.i:                                        ; preds = %PageUptodate.exit212.i.do.body.i_crit_edge, %if.end31.i.do.body.i_crit_edge
  %i.1312.i = phi i32 [ %inc58.i, %PageUptodate.exit212.i.do.body.i_crit_edge ], [ 0, %if.end31.i.do.body.i_crit_edge ]
  %109 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rpages, align 4
  %arrayidx.i = getelementptr ptr, ptr %110, i32 %i.1312.i
  %111 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i, align 4
  %tobool36.not.i = icmp eq ptr %112, null
  br i1 %tobool36.not.i, label %do.end46.i, label %do.body40.i, !prof !197

do.body40.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1108, 0\0A.popsection", ""() #16, !srcloc !222
  unreachable

do.end46.i:                                       ; preds = %do.body.i
  %add47.i = add i32 %i.1312.i, %shl.i.i
  %call.i.i = call ptr @pagecache_get_page(ptr noundef %14, i32 noundef %add47.i, i32 noundef 2, i32 noundef 0) #16
  %tobool49.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool49.not.i, label %do.end46.i.release_and_retry.i_crit_edge, label %if.end51.i

do.end46.i.release_and_retry.i_crit_edge:         ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_and_retry.i

if.end51.i:                                       ; preds = %do.end46.i
  call void @f2fs_wait_on_page_writeback(ptr noundef nonnull %call.i.i, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #16
  %index.i176.i = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1, i32 0, i32 2
  %113 = ptrtoint ptr %index.i176.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %index.i176.i, align 4
  %115 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nr_rpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i.i.i178.i = icmp eq i32 %116, 0
  br i1 %cmp.i.i.i178.i, label %if.end51.i.f2fs_compress_ctx_add_page.exit197.i_crit_edge, label %if.end.i.i181.i

if.end51.i.f2fs_compress_ctx_add_page.exit197.i_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_ctx_add_page.exit197.i

if.end.i.i181.i:                                  ; preds = %if.end51.i
  %117 = ptrtoint ptr %cluster_idx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cluster_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %cmp.i3.i.i180.i = icmp eq i32 %118, -1
  br i1 %cmp.i3.i.i180.i, label %if.end.i.i181.i.f2fs_compress_ctx_add_page.exit197.i_crit_edge, label %f2fs_cluster_can_merge_page.exit.i185.i

if.end.i.i181.i.f2fs_compress_ctx_add_page.exit197.i_crit_edge: ; preds = %if.end.i.i181.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_ctx_add_page.exit197.i

f2fs_cluster_can_merge_page.exit.i185.i:          ; preds = %if.end.i.i181.i
  %119 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %log_cluster_size, align 4
  %shr.i.i.i.i183.i = lshr i32 %114, %120
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %shr.i.i.i.i183.i)
  %cmp2.i.i.i184.i = icmp eq i32 %118, %shr.i.i.i.i183.i
  br i1 %cmp2.i.i.i184.i, label %f2fs_cluster_can_merge_page.exit.i185.i.f2fs_compress_ctx_add_page.exit197.i_crit_edge, label %do.body1.i186.i

f2fs_cluster_can_merge_page.exit.i185.i.f2fs_compress_ctx_add_page.exit197.i_crit_edge: ; preds = %f2fs_cluster_can_merge_page.exit.i185.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_ctx_add_page.exit197.i

do.body1.i186.i:                                  ; preds = %f2fs_cluster_can_merge_page.exit.i185.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #16, !srcloc !199
  unreachable

f2fs_compress_ctx_add_page.exit197.i:             ; preds = %f2fs_cluster_can_merge_page.exit.i185.i.f2fs_compress_ctx_add_page.exit197.i_crit_edge, %if.end.i.i181.i.f2fs_compress_ctx_add_page.exit197.i_crit_edge, %if.end51.i.f2fs_compress_ctx_add_page.exit197.i_crit_edge
  %121 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cluster_size, align 4
  %sub.i.i188.i = add i32 %122, -1
  %and.i.i189.i = and i32 %sub.i.i188.i, %114
  %123 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rpages, align 4
  %arrayidx.i191.i = getelementptr ptr, ptr %124, i32 %and.i.i189.i
  %125 = ptrtoint ptr %arrayidx.i191.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i.i, ptr %arrayidx.i191.i, align 4
  %126 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nr_rpages, align 4
  %inc.i192.i = add i32 %127, 1
  store i32 %inc.i192.i, ptr %nr_rpages, align 4
  %128 = ptrtoint ptr %index.i176.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %index.i176.i, align 4
  %130 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %log_cluster_size, align 4
  %shr.i.i194.i = lshr i32 %129, %131
  %132 = ptrtoint ptr %cluster_idx to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %shr.i.i194.i, ptr %cluster_idx, align 4
  %133 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %133, align 4
  %and.i.i198.i = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i198.i)
  %tobool.not.i.i199.i = icmp eq i32 %and.i.i198.i, 0
  br i1 %tobool.not.i.i199.i, label %if.end.i.i202.i, label %if.then.i.i201.i, !prof !197

if.then.i.i201.i:                                 ; preds = %f2fs_compress_ctx_add_page.exit197.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i200.i = add i32 %135, -1
  br label %_compound_head.exit.i206.i

if.end.i.i202.i:                                  ; preds = %f2fs_compress_ctx_add_page.exit197.i
  call void @__sanitizer_cov_trace_pc() #18
  %136 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i206.i

_compound_head.exit.i206.i:                       ; preds = %if.end.i.i202.i, %if.then.i.i201.i
  %retval.0.i.i203.i = phi i32 [ %sub.i.i200.i, %if.then.i.i201.i ], [ %136, %if.end.i.i202.i ]
  %137 = inttoptr i32 %retval.0.i.i203.i to ptr
  %138 = getelementptr inbounds %struct.page, ptr %137, i32 0, i32 1
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %138, align 4
  %and.i.i.i.i204.i = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i204.i)
  %tobool.not.i.i.i205.i = icmp eq i32 %and.i.i.i.i204.i, 0
  br i1 %tobool.not.i.i.i205.i, label %folio_flags.exit.i.i209.i, label %if.then.i.i.i207.i, !prof !197

if.then.i.i.i207.i:                               ; preds = %_compound_head.exit.i206.i
  call void @__sanitizer_cov_trace_pc() #18
  %141 = inttoptr i32 %retval.0.i.i203.i to ptr
  call void @dump_page(ptr noundef %141, ptr noundef nonnull @.str.43) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

folio_flags.exit.i.i209.i:                        ; preds = %_compound_head.exit.i206.i
  %142 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %137, align 4
  %144 = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.i.not.i208.i = icmp eq i32 %144, 0
  br i1 %tobool.i.not.i208.i, label %folio_flags.exit.i.i209.i.release_and_retry.i_crit_edge, label %PageUptodate.exit212.i

folio_flags.exit.i.i209.i.release_and_retry.i_crit_edge: ; preds = %folio_flags.exit.i.i209.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_and_retry.i

PageUptodate.exit212.i:                           ; preds = %folio_flags.exit.i.i209.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !221
  %inc58.i = add nuw i32 %i.1312.i, 1
  %145 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cluster_size, align 4
  %cmp34.i = icmp ult i32 %inc58.i, %146
  br i1 %cmp34.i, label %PageUptodate.exit212.i.do.body.i_crit_edge, label %PageUptodate.exit212.i.if.then69.i_crit_edge

PageUptodate.exit212.i.if.then69.i_crit_edge:     ; preds = %PageUptodate.exit212.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then69.i

PageUptodate.exit212.i.do.body.i_crit_edge:       ; preds = %PageUptodate.exit212.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

release_and_retry.i:                              ; preds = %folio_flags.exit.i.i209.i.release_and_retry.i_crit_edge, %do.end46.i.release_and_retry.i_crit_edge
  %147 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cluster_size, align 4
  call fastcc void @f2fs_drop_rpages(ptr noundef nonnull %cc, i32 noundef %148, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %i.1312.i)
  %cmp14.i.i.i = icmp ult i32 %i.1312.i, 2147483647
  br i1 %cmp14.i.i.i, label %release_and_retry.i.for.body.i.i.i_crit_edge, label %release_and_retry.i.f2fs_unlock_rpages.exit.i_crit_edge

release_and_retry.i.f2fs_unlock_rpages.exit.i_crit_edge: ; preds = %release_and_retry.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_unlock_rpages.exit.i

release_and_retry.i.for.body.i.i.i_crit_edge:     ; preds = %release_and_retry.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %release_and_retry.i.for.body.i.i.i_crit_edge
  %i.015.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %release_and_retry.i.for.body.i.i.i_crit_edge ]
  %149 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rpages, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %150, i32 %i.015.i.i.i
  %151 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i214.i = icmp eq ptr %152, null
  br i1 %tobool.not.i.i214.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i215.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

if.end.i.i215.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @unlock_page(ptr noundef nonnull %152) #16
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i215.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.015.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %i.015.i.i.i, %i.1312.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.f2fs_unlock_rpages.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.inc.i.i.i.f2fs_unlock_rpages.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_unlock_rpages.exit.i

f2fs_unlock_rpages.exit.i:                        ; preds = %for.inc.i.i.i.f2fs_unlock_rpages.exit.i_crit_edge, %release_and_retry.i.f2fs_unlock_rpages.exit.i_crit_edge
  %153 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cc, align 4
  %155 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rpages, align 4
  %i_sb.i.i.i217.i = getelementptr inbounds %struct.inode, ptr %154, i32 0, i32 8
  %157 = ptrtoint ptr %i_sb.i.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %i_sb.i.i.i217.i, align 4
  %s_fs_info.i.i.i.i218.i = getelementptr inbounds %struct.super_block, ptr %158, i32 0, i32 33
  %159 = ptrtoint ptr %s_fs_info.i.i.i.i218.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %s_fs_info.i.i.i.i218.i, align 16
  %tobool.not.i.i219.i = icmp eq ptr %156, null
  br i1 %tobool.not.i.i219.i, label %f2fs_unlock_rpages.exit.i.f2fs_destroy_compress_ctx.exit232.i_crit_edge, label %if.end.i.i224.i

f2fs_unlock_rpages.exit.i.f2fs_destroy_compress_ctx.exit232.i_crit_edge: ; preds = %f2fs_unlock_rpages.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_destroy_compress_ctx.exit232.i

if.end.i.i224.i:                                  ; preds = %f2fs_unlock_rpages.exit.i
  %161 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cluster_size, align 4
  %mul.i.i221.i = shl i32 %162, 2
  %page_array_slab_size.i.i222.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %160, i32 0, i32 140
  %163 = ptrtoint ptr %page_array_slab_size.i.i222.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %page_array_slab_size.i.i222.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i221.i, i32 %164)
  %cmp.not.i.i223.i = icmp ugt i32 %mul.i.i221.i, %164
  br i1 %cmp.not.i.i223.i, label %if.else.i.i227.i, label %if.then3.i.i226.i, !prof !195

if.then3.i.i226.i:                                ; preds = %if.end.i.i224.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i.i225.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %160, i32 0, i32 139
  %165 = ptrtoint ptr %page_array_slab.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %page_array_slab.i.i225.i, align 4
  call void @kmem_cache_free(ptr noundef %166, ptr noundef nonnull %156) #16
  br label %f2fs_destroy_compress_ctx.exit232.i

if.else.i.i227.i:                                 ; preds = %if.end.i.i224.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %156) #16
  br label %f2fs_destroy_compress_ctx.exit232.i

f2fs_destroy_compress_ctx.exit232.i:              ; preds = %if.else.i.i227.i, %if.then3.i.i226.i, %f2fs_unlock_rpages.exit.i.f2fs_destroy_compress_ctx.exit232.i_crit_edge
  %167 = ptrtoint ptr %rpages to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %rpages, align 4
  %168 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %nr_rpages, align 4
  %169 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %nr_cpages, align 4
  %170 = ptrtoint ptr %valid_nr_cpages to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %valid_nr_cpages, align 4
  %171 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cc, align 4
  %i_log_cluster_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %172, i32 0, i32 36
  %173 = ptrtoint ptr %i_log_cluster_size.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %i_log_cluster_size.i.i, align 1
  %conv.i.i = zext i8 %174 to i32
  %shr.i.i = lshr i32 %shl.i.i, %conv.i.i
  %call1.i.i = call fastcc i32 @__f2fs_cluster_blocks(ptr noundef %172, i32 noundef %shr.i.i, i1 noundef zeroext false) #16
  %cmp.i = icmp slt i32 %call1.i.i, 1
  br i1 %cmp.i, label %f2fs_destroy_compress_ctx.exit232.i.prepare_compress_overwrite.exit_crit_edge, label %f2fs_destroy_compress_ctx.exit232.i.if.end.i_crit_edge

f2fs_destroy_compress_ctx.exit232.i.if.end.i_crit_edge: ; preds = %f2fs_destroy_compress_ctx.exit232.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

f2fs_destroy_compress_ctx.exit232.i.prepare_compress_overwrite.exit_crit_edge: ; preds = %f2fs_destroy_compress_ctx.exit232.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prepare_compress_overwrite.exit

if.then69.i:                                      ; preds = %PageUptodate.exit212.i.if.then69.i_crit_edge, %if.end31.i.if.then69.i_crit_edge
  %175 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rpages, align 4
  %177 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %176, ptr %fsdata, align 4
  %178 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %cluster_size, align 4
  %sub.i.i = add i32 %179, -1
  %and.i.i = and i32 %sub.i.i, %index
  %arrayidx73.i = getelementptr ptr, ptr %176, i32 %and.i.i
  %180 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx73.i, align 4
  %182 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %pagep, align 4
  br label %prepare_compress_overwrite.exit

unlock_pages.i:                                   ; preds = %for.body.i
  %183 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %cluster_size, align 4
  call fastcc void @f2fs_drop_rpages(ptr noundef nonnull %cc, i32 noundef %184, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0309.i)
  %cmp14.i.i235.i = icmp sgt i32 %i.0309.i, 0
  br i1 %cmp14.i.i235.i, label %unlock_pages.i.for.body.i.i241.i_crit_edge, label %unlock_pages.i.f2fs_unlock_rpages.exit246.i_crit_edge

unlock_pages.i.f2fs_unlock_rpages.exit246.i_crit_edge: ; preds = %unlock_pages.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_unlock_rpages.exit246.i

unlock_pages.i.for.body.i.i241.i_crit_edge:       ; preds = %unlock_pages.i
  br label %for.body.i.i241.i

for.body.i.i241.i:                                ; preds = %for.inc.i.i245.i.for.body.i.i241.i_crit_edge, %unlock_pages.i.for.body.i.i241.i_crit_edge
  %i.015.i.i238.i = phi i32 [ %inc.i.i243.i, %for.inc.i.i245.i.for.body.i.i241.i_crit_edge ], [ 0, %unlock_pages.i.for.body.i.i241.i_crit_edge ]
  %185 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rpages, align 4
  %arrayidx.i.i239.i = getelementptr ptr, ptr %186, i32 %i.015.i.i238.i
  %187 = ptrtoint ptr %arrayidx.i.i239.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i.i239.i, align 4
  %tobool.not.i.i240.i = icmp eq ptr %188, null
  br i1 %tobool.not.i.i240.i, label %for.body.i.i241.i.for.inc.i.i245.i_crit_edge, label %if.end.i.i242.i

for.body.i.i241.i.for.inc.i.i245.i_crit_edge:     ; preds = %for.body.i.i241.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i245.i

if.end.i.i242.i:                                  ; preds = %for.body.i.i241.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @unlock_page(ptr noundef nonnull %188) #16
  br label %for.inc.i.i245.i

for.inc.i.i245.i:                                 ; preds = %if.end.i.i242.i, %for.body.i.i241.i.for.inc.i.i245.i_crit_edge
  %inc.i.i243.i = add nuw nsw i32 %i.015.i.i238.i, 1
  %exitcond.not.i.i244.i = icmp eq i32 %inc.i.i243.i, %i.0309.i
  br i1 %exitcond.not.i.i244.i, label %for.inc.i.i245.i.f2fs_unlock_rpages.exit246.i_crit_edge, label %for.inc.i.i245.i.for.body.i.i241.i_crit_edge

for.inc.i.i245.i.for.body.i.i241.i_crit_edge:     ; preds = %for.inc.i.i245.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i241.i

for.inc.i.i245.i.f2fs_unlock_rpages.exit246.i_crit_edge: ; preds = %for.inc.i.i245.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_unlock_rpages.exit246.i

f2fs_unlock_rpages.exit246.i:                     ; preds = %for.inc.i.i245.i.f2fs_unlock_rpages.exit246.i_crit_edge, %unlock_pages.i.f2fs_unlock_rpages.exit246.i_crit_edge
  %189 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cc, align 4
  %191 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rpages, align 4
  %i_sb.i.i.i248.i = getelementptr inbounds %struct.inode, ptr %190, i32 0, i32 8
  %193 = ptrtoint ptr %i_sb.i.i.i248.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %i_sb.i.i.i248.i, align 4
  %s_fs_info.i.i.i.i249.i = getelementptr inbounds %struct.super_block, ptr %194, i32 0, i32 33
  %195 = ptrtoint ptr %s_fs_info.i.i.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %s_fs_info.i.i.i.i249.i, align 16
  %tobool.not.i.i250.i = icmp eq ptr %192, null
  br i1 %tobool.not.i.i250.i, label %f2fs_unlock_rpages.exit246.i.prepare_compress_overwrite.exit_crit_edge, label %if.end.i.i255.i

f2fs_unlock_rpages.exit246.i.prepare_compress_overwrite.exit_crit_edge: ; preds = %f2fs_unlock_rpages.exit246.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prepare_compress_overwrite.exit

if.end.i.i255.i:                                  ; preds = %f2fs_unlock_rpages.exit246.i
  %197 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %cluster_size, align 4
  %mul.i.i252.i = shl i32 %198, 2
  %page_array_slab_size.i.i253.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %196, i32 0, i32 140
  %199 = ptrtoint ptr %page_array_slab_size.i.i253.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %page_array_slab_size.i.i253.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i252.i, i32 %200)
  %cmp.not.i.i254.i = icmp ugt i32 %mul.i.i252.i, %200
  br i1 %cmp.not.i.i254.i, label %if.else.i.i258.i, label %if.then3.i.i257.i, !prof !195

if.then3.i.i257.i:                                ; preds = %if.end.i.i255.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i.i256.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %196, i32 0, i32 139
  %201 = ptrtoint ptr %page_array_slab.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %page_array_slab.i.i256.i, align 4
  call void @kmem_cache_free(ptr noundef %202, ptr noundef nonnull %192) #16
  br label %prepare_compress_overwrite.exit

if.else.i.i258.i:                                 ; preds = %if.end.i.i255.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %192) #16
  br label %prepare_compress_overwrite.exit

prepare_compress_overwrite.exit:                  ; preds = %if.else.i.i258.i, %if.then3.i.i257.i, %f2fs_unlock_rpages.exit246.i.prepare_compress_overwrite.exit_crit_edge, %if.then69.i, %f2fs_destroy_compress_ctx.exit232.i.prepare_compress_overwrite.exit_crit_edge, %cleanup.thread.i, %page_array_alloc.exit.i.i.prepare_compress_overwrite.exit_crit_edge, %entry.prepare_compress_overwrite.exit_crit_edge
  %retval.0.i = phi i32 [ %179, %if.then69.i ], [ %ret.0.ph.i, %cleanup.thread.i ], [ %call1.i320.i, %entry.prepare_compress_overwrite.exit_crit_edge ], [ -12, %if.else.i.i258.i ], [ -12, %if.then3.i.i257.i ], [ -12, %f2fs_unlock_rpages.exit246.i.prepare_compress_overwrite.exit_crit_edge ], [ -12, %page_array_alloc.exit.i.i.prepare_compress_overwrite.exit_crit_edge ], [ %call1.i.i, %f2fs_destroy_compress_ctx.exit232.i.prepare_compress_overwrite.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last_block_in_bio.i) #16
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cc) #16
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_compress_write_end(ptr noundef %inode, ptr noundef %fsdata, i32 noundef %index, i32 noundef %copied) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 39
  %0 = ptrtoint ptr %i_cluster_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_cluster_size, align 4
  %2 = ptrtoint ptr %fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsdata, align 4
  %index4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied)
  %tobool.not = icmp eq i32 %copied, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not.i = icmp eq i32 %1, 0
  br i1 %cmp8.not.i, label %if.end.thread, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %index)
  %cmp34 = icmp eq i32 %5, %index
  br label %f2fs_put_rpages_wbc.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %fsdata, i32 %i.09.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %7) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not, label %if.end.thread37, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end.thread37:                                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %index)
  %cmp38 = icmp eq i32 %5, %index
  br label %for.body.lr.ph.i11

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %index)
  %cmp = icmp eq i32 %5, %index
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15.not.i = icmp eq i32 %1, 0
  br i1 %cmp15.not.i, label %if.end.f2fs_put_rpages_wbc.exit_crit_edge, label %if.end.for.body.lr.ph.i11_crit_edge

if.end.for.body.lr.ph.i11_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.lr.ph.i11

if.end.f2fs_put_rpages_wbc.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_rpages_wbc.exit

for.body.lr.ph.i11:                               ; preds = %if.end.for.body.lr.ph.i11_crit_edge, %if.end.thread37
  %cmp40 = phi i1 [ %cmp38, %if.end.thread37 ], [ %cmp, %if.end.for.body.lr.ph.i11_crit_edge ]
  %umax = call i32 @llvm.umax.i32(i32 %1, i32 1)
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.inc.i17.for.body.i14_crit_edge, %for.body.lr.ph.i11
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i11 ], [ %inc.i15, %for.inc.i17.for.body.i14_crit_edge ]
  %arrayidx.i12 = getelementptr ptr, ptr %fsdata, i32 %i.016.i
  %8 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i12, align 4
  %tobool.not.i13 = icmp eq ptr %9, null
  br i1 %tobool.not.i13, label %for.body.i14.for.inc.i17_crit_edge, label %if.end.i

for.body.i14.for.inc.i17_crit_edge:               ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i17

if.end.i:                                         ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @f2fs_put_page(ptr noundef nonnull %9, i32 noundef 1) #16
  br label %for.inc.i17

for.inc.i17:                                      ; preds = %if.end.i, %for.body.i14.for.inc.i17_crit_edge
  %inc.i15 = add nuw i32 %i.016.i, 1
  %exitcond41.not = icmp eq i32 %inc.i15, %umax
  br i1 %exitcond41.not, label %for.inc.i17.f2fs_put_rpages_wbc.exit_crit_edge, label %for.inc.i17.for.body.i14_crit_edge

for.inc.i17.for.body.i14_crit_edge:               ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14

for.inc.i17.f2fs_put_rpages_wbc.exit_crit_edge:   ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_rpages_wbc.exit

f2fs_put_rpages_wbc.exit:                         ; preds = %for.inc.i17.f2fs_put_rpages_wbc.exit_crit_edge, %if.end.f2fs_put_rpages_wbc.exit_crit_edge, %if.end.thread
  %cmp36 = phi i1 [ %cmp34, %if.end.thread ], [ %cmp, %if.end.f2fs_put_rpages_wbc.exit_crit_edge ], [ %cmp40, %for.inc.i17.f2fs_put_rpages_wbc.exit_crit_edge ]
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %fsdata, null
  br i1 %tobool.not.i.i, label %f2fs_put_rpages_wbc.exit.f2fs_destroy_compress_ctx.exit_crit_edge, label %if.end.i.i

f2fs_put_rpages_wbc.exit.f2fs_destroy_compress_ctx.exit_crit_edge: ; preds = %f2fs_put_rpages_wbc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_destroy_compress_ctx.exit

if.end.i.i:                                       ; preds = %f2fs_put_rpages_wbc.exit
  %mul.i.i = shl i32 %1, 2
  %page_array_slab_size.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %13, i32 0, i32 140
  %14 = ptrtoint ptr %page_array_slab_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_array_slab_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %15)
  %cmp.not.i.i = icmp ugt i32 %mul.i.i, %15
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then3.i.i, !prof !195

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %13, i32 0, i32 139
  %16 = ptrtoint ptr %page_array_slab.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %page_array_slab.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %fsdata) #16
  br label %f2fs_destroy_compress_ctx.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %fsdata) #16
  br label %f2fs_destroy_compress_ctx.exit

f2fs_destroy_compress_ctx.exit:                   ; preds = %if.else.i.i, %if.then3.i.i, %f2fs_put_rpages_wbc.exit.f2fs_destroy_compress_ctx.exit_crit_edge
  ret i1 %cmp36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_truncate_partial_cluster(ptr noundef %inode, i64 noundef %from, i1 noundef zeroext %lock) local_unnamed_addr #0 align 64 {
entry:
  %fsdata = alloca ptr, align 4
  %pagep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsdata) #16
  %0 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fsdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pagep) #16
  %i_log_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 36
  %1 = ptrtoint ptr %i_log_cluster_size to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %i_log_cluster_size, align 1
  %conv = zext i8 %2 to i32
  %add = add nuw nsw i32 %conv, 12
  %sh_prom = zext i32 %add to i64
  %shr = lshr i64 %from, %sh_prom
  %sh_prom1 = zext i8 %2 to i64
  %shl = shl i64 %shr, %sh_prom1
  %conv2 = trunc i64 %shl to i32
  %shr.i = lshr i32 %conv2, %conv
  %call1.i = tail call fastcc i32 @__f2fs_cluster_blocks(ptr noundef %inode, i32 noundef %shr.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup44

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 @f2fs_do_truncate_blocks(ptr noundef %inode, i64 noundef %from, i1 noundef zeroext %lock) #16
  br label %cleanup44

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @f2fs_prepare_compress_overwrite(ptr noundef %inode, ptr noundef nonnull %pagep, i32 noundef %conv2, ptr noundef nonnull %fsdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %do.body15, label %do.end21, !prof !195

do.body15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1200, 0\0A.popsection", ""() #16, !srcloc !223
  unreachable

do.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp22 = icmp slt i32 %call9, 1
  br i1 %cmp22, label %do.end21.cleanup44_crit_edge, label %if.then28

do.end21.cleanup44_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup44

if.then28:                                        ; preds = %do.end21
  %3 = ptrtoint ptr %fsdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fsdata, align 4
  %i_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 39
  %5 = ptrtoint ptr %i_cluster_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_cluster_size, align 4
  %i.075 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.075)
  %cmp3076 = icmp sgt i32 %i.075, -1
  br i1 %cmp3076, label %if.then28.for.body_crit_edge, label %if.then28.for.end_crit_edge

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.then28.for.body_crit_edge:                     ; preds = %if.then28
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.then28.for.body_crit_edge
  %i.077 = phi i32 [ %i.0, %cleanup.for.body_crit_edge ], [ %i.075, %if.then28.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.077
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %index = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %shl32 = shl i32 %10, 12
  %conv33 = zext i32 %shl32 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv33, i64 %from)
  %cmp34.not = icmp ult i64 %conv33, %from
  br i1 %cmp34.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %11 = trunc i64 %from to i32
  %conv40 = sub i32 %11, %shl32
  tail call void @zero_user_segments(ptr noundef %8, i32 noundef %conv40, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #16
  br label %for.end

cleanup:                                          ; preds = %for.body
  tail call void @zero_user_segments(ptr noundef %8, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #16
  %i.0 = add i32 %i.077, -1
  %cmp30 = icmp sgt i32 %i.0, -1
  br i1 %cmp30, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.thread, %if.then28.for.end_crit_edge
  %call42 = tail call zeroext i1 @f2fs_compress_write_end(ptr noundef %inode, ptr noundef %4, i32 noundef %conv2, i32 noundef 1)
  br label %cleanup44

cleanup44:                                        ; preds = %for.end, %do.end21.cleanup44_crit_edge, %if.then5, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call7, %if.then5 ], [ %call1.i, %entry.cleanup44_crit_edge ], [ %call9, %do.end21.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagep) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_do_truncate_blocks(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_compress_write_end_io(ptr nocapture noundef readonly %bio, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private, align 4
  %4 = inttoptr i32 %3 to ptr
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %5 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !197

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %inode = getelementptr inbounds %struct.compress_io_ctx, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_mapping, align 8
  tail call fastcc void @mapping_set_error(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %page, null
  br i1 %tobool.not.i, label %if.end.f2fs_compress_free_page.exit_crit_edge, label %if.end.i

if.end.f2fs_compress_free_page.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_free_page.exit

if.end.i:                                         ; preds = %if.end
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !197

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = add i32 %13, -1
  br label %detach_page_private.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit.i

detach_page_private.exit.i:                       ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %14, %if.end.i.i.i ]
  %15 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call fastcc void @folio_detach_private(ptr noundef %15) #16
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mapping.i, align 4
  tail call void @unlock_page(ptr noundef nonnull %page) #16
  %17 = load ptr, ptr @compress_page_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %page, ptr noundef %17) #16
  br label %f2fs_compress_free_page.exit

f2fs_compress_free_page.exit:                     ; preds = %detach_page_private.exit.i, %if.end.f2fs_compress_free_page.exit_crit_edge
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #16
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #16, !srcloc !213
  %pending_pages = getelementptr inbounds %struct.compress_io_ctx, ptr %4, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_pages, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %pending_pages, i32 1, i32 3, i32 1) #16
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_pages, ptr %pending_pages, i32 1, ptr elementtype(i32) %pending_pages) #16, !srcloc !215
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool3.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %f2fs_compress_free_page.exit.cleanup_crit_edge

f2fs_compress_free_page.exit.cleanup_crit_edge:   ; preds = %f2fs_compress_free_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %f2fs_compress_free_page.exit
  %nr_rpages = getelementptr inbounds %struct.compress_io_ctx, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_rpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp61.not = icmp eq i32 %21, 0
  br i1 %cmp61.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rpages = getelementptr inbounds %struct.compress_io_ctx, ptr %4, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end27.for.body_crit_edge ]
  %22 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rpages, align 4
  %arrayidx = getelementptr ptr, ptr %23, i32 %i.062
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %do.end, label %for.body.if.end27_crit_edge, !prof !195

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1444, i32 noundef 9, ptr noundef null) #16
  br label %if.end27

if.end27:                                         ; preds = %do.end, %for.body.if.end27_crit_edge
  %26 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rpages, align 4
  %arrayidx35 = getelementptr ptr, ptr %27, i32 %i.062
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx35, align 4
  tail call fastcc void @clear_page_private_gcing(ptr noundef %29)
  %30 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rpages, align 4
  %arrayidx37 = getelementptr ptr, ptr %31, i32 %i.062
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx37, align 4
  tail call void @end_page_writeback(ptr noundef %33) #16
  %inc = add nuw i32 %i.062, 1
  %34 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_rpages, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %if.end27.for.body_crit_edge, label %for.end.loopexit

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo = shl i32 %35, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %inode38 = getelementptr inbounds %struct.compress_io_ctx, ptr %4, i32 0, i32 1
  %36 = ptrtoint ptr %inode38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %inode38, align 4
  %rpages39 = getelementptr inbounds %struct.compress_io_ctx, ptr %4, i32 0, i32 2
  %38 = ptrtoint ptr %rpages39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rpages39, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 8
  %40 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %tobool.not.i59 = icmp eq ptr %39, null
  br i1 %tobool.not.i59, label %for.end.page_array_free.exit_crit_edge, label %if.end.i60

for.end.page_array_free.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %page_array_free.exit

if.end.i60:                                       ; preds = %for.end
  %page_array_slab_size.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %43, i32 0, i32 140
  %44 = ptrtoint ptr %page_array_slab_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %page_array_slab_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %45)
  %cmp.not.i = icmp ugt i32 %.lcssa, %45
  br i1 %cmp.not.i, label %if.else.i, label %if.then3.i, !prof !195

if.then3.i:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %43, i32 0, i32 139
  %46 = ptrtoint ptr %page_array_slab.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %page_array_slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %47, ptr noundef nonnull %39) #16
  br label %page_array_free.exit

if.else.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %39) #16
  br label %page_array_free.exit

page_array_free.exit:                             ; preds = %if.else.i, %if.then3.i, %for.end.page_array_free.exit_crit_edge
  %48 = load ptr, ptr @cic_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %48, ptr noundef %4) #16
  br label %cleanup

cleanup:                                          ; preds = %page_array_free.exit, %f2fs_compress_free_page.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mapping_set_error(ptr noundef %mapping) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__filemap_set_wb_err(ptr noundef %mapping, i32 noundef -5) #16
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %entry.if.else_crit_edge, label %if.then5

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_wb_err = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 50
  %call = tail call i32 @errseq_set(ptr noundef %s_wb_err, i32 noundef -5) #16
  br label %if.else

if.else:                                          ; preds = %if.then5, %entry.if.else_crit_edge
  %flags9 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags9) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_page_private_gcing(ptr noundef %page) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %private) #16
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %private, align 4
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !195

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.11) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !196
  unreachable

PagePrivate.exit:                                 ; preds = %if.then
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %PagePrivate.exit.if.end3_crit_edge, label %if.then2

PagePrivate.exit.if.end3_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %PagePrivate.exit
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i9 = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i9, label %if.then.i10, label %ClearPagePrivate.exit, !prof !195

if.then.i10:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.11) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !224
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.then2
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #16
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !195

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.42) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !217
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !215
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@clear_page_private_gcing, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !201

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end3_crit_edge

folio_put_testzero.exit.i.i.if.end3_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %14) #16
  br label %if.end3

if.end3:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end3_crit_edge, %PagePrivate.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_write_multi_pages(ptr noundef %cc, ptr nocapture noundef %submitted, ptr noundef %wbc, i32 noundef %io_type) local_unnamed_addr #0 align 64 {
entry:
  %_submitted.i = alloca i32, align 4
  %fio.i = alloca %struct.f2fs_io_info, align 4
  %dn.i = alloca %struct.dnode_of_data, align 4
  %ni.i = alloca %struct.node_info, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %submitted to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %submitted, align 4
  %1 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cc, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %compress_mode1.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %6, i32 0, i32 73, i32 25
  %7 = ptrtoint ptr %compress_mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %compress_mode1.i.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %2, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %11)
  %cmp.i.i.i = icmp eq i16 %11, -32768
  br i1 %cmp.i.i.i, label %f2fs_compressed_file.exit.i.i, label %entry.do.body31_crit_edge

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31

f2fs_compressed_file.exit.i.i:                    ; preds = %entry
  %flags.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %2, i32 0, i32 8
  %12 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not.i.i = icmp sgt i32 %13, -1
  br i1 %tobool.not.i.i, label %f2fs_compressed_file.exit.i.i.do.body31_crit_edge, label %if.end.i.i

f2fs_compressed_file.exit.i.i.do.body31_crit_edge: ; preds = %f2fs_compressed_file.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31

if.end.i.i:                                       ; preds = %f2fs_compressed_file.exit.i.i
  %14 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %8, label %if.end.i.i.do.body31_crit_edge [
    i32 0, label %if.end.i.i.if.end.i_crit_edge
    i32 1, label %land.lhs.true.i.i
  ]

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i.i.do.body31_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.f2fs_inode_info, ptr %2, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.body31_crit_edge, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i.i.do.body31_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31

if.end.i:                                         ; preds = %land.lhs.true.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %18 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %20 = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %if.end4.i, label %if.end.i.do.body31_crit_edge

if.end.i.do.body31_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31

if.end4.i:                                        ; preds = %if.end.i
  %cluster_size.i.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %21 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cluster_size.i.i, align 4
  %nr_rpages.i.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 5
  %23 = ptrtoint ptr %nr_rpages.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_rpages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i.i = icmp eq i32 %22, %24
  br i1 %cmp.i.i, label %if.end7.i, label %if.end4.i.do.body31_crit_edge

if.end4.i.do.body31_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31

if.end7.i:                                        ; preds = %if.end4.i
  %ckpt.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %6, i32 0, i32 15
  %25 = ptrtoint ptr %ckpt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ckpt.i.i.i.i, align 4
  %ckpt_flags1.i.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %ckpt_flags1.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %ckpt_flags1.i.i.i.i, align 1
  %29 = and i32 %28, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.i.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.i.i.not.i, label %if.end13.i, label %if.end7.i.do.body31_crit_edge, !prof !197

if.end7.i.do.body31_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31

if.end13.i:                                       ; preds = %if.end7.i
  %i_size_seqcount.i.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 23
  %dep_map.c48.i.i.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 23, i32 1
  %i_size18.i.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %while.end.i.i.i.do.body.i.i.i_crit_edge, %if.end13.i
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !225
  %and.i.i.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %do.body24.critedge.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  %31 = tail call ptr @llvm.returnaddress(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %32) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %32) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body24.i.i.i.i

do.body24.critedge.i.i.i.i:                       ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %33 = tail call ptr @llvm.returnaddress(i32 0) #16
  %34 = ptrtoint ptr %33 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %34) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %34) #16
  br label %do.body24.i.i.i.i

do.body24.i.i.i.i:                                ; preds = %do.body24.critedge.i.i.i.i, %if.then.i.i.i.i
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !226
  %and.i.i.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then36.i.i.i.i, label %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge, !prof !195

do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %seqcount_lockdep_reader_access.exit.i.i.i

if.then36.i.i.i.i:                                ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %seqcount_lockdep_reader_access.exit.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i:        ; preds = %if.then36.i.i.i.i, %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #16, !srcloc !227
  %36 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %i_size_seqcount.i.i.i, align 4
  %and29.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i.i)
  %tobool.not30.i.i.i = icmp eq i32 %and29.i.i.i, 0
  br i1 %tobool.not30.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.while.end.i.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  br label %do.end.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.while.end.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !228
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !229
  %38 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %i_size_seqcount.i.i.i, align 4
  %and.i.i.i = and i32 %39, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.while.end.i.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i.i

do.end.i.i.i.while.end.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %do.end.i.i.i.while.end.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.while.end.i.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %37, %seqcount_lockdep_reader_access.exit.i.i.i.while.end.i.i.i_crit_edge ], [ %39, %do.end.i.i.i.while.end.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !230
  %40 = ptrtoint ptr %i_size18.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_size18.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !231
  %42 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %i_size_seqcount.i.i.i, align 4
  %cmp.i.i.not.i.i.i = icmp eq i32 %43, %.lcssa.i.i.i
  br i1 %cmp.i.i.not.i.i.i, label %i_size_read.exit.i.i, label %while.end.i.i.i.do.body.i.i.i_crit_edge

while.end.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

i_size_read.exit.i.i:                             ; preds = %while.end.i.i.i
  %sub.i.i = add i64 %41, 4095
  %div.i.i = sdiv i64 %sub.i.i, 4096
  %conv.i.i = trunc i64 %div.i.i to i32
  %44 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cluster_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp25.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp25.not.i.i, label %i_size_read.exit.i.i.if.then_crit_edge, label %for.body.lr.ph.i.i

i_size_read.exit.i.i.if.then_crit_edge:           ; preds = %i_size_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.body.lr.ph.i.i:                               ; preds = %i_size_read.exit.i.i
  %rpages.i.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  %46 = ptrtoint ptr %rpages.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rpages.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %do.end10.i.i
  %inc.i.i = add nuw i32 %i.026.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %45)
  %cmp.i22.i = icmp ult i32 %inc.i.i, %45
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %45
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cluster_may_compress.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.cond.i.i.cluster_may_compress.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cluster_may_compress.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %cmp27.i.i = phi i1 [ true, %for.body.lr.ph.i.i ], [ %cmp.i22.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %i.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %47, i32 %i.026.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i23.i = icmp eq ptr %49, null
  br i1 %tobool.not.i23.i, label %do.body5.i.i, label %do.end10.i.i, !prof !195

do.body5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #16, !srcloc !232
  unreachable

do.end10.i.i:                                     ; preds = %for.body.i.i
  %index.i.i = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv.i.i)
  %cmp11.not.i.i = icmp ult i32 %51, %conv.i.i
  br i1 %cmp11.not.i.i, label %for.cond.i.i, label %do.end10.i.i.cluster_may_compress.exit_crit_edge

do.end10.i.i.cluster_may_compress.exit_crit_edge: ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cluster_may_compress.exit

cluster_may_compress.exit:                        ; preds = %do.end10.i.i.cluster_may_compress.exit_crit_edge, %for.cond.i.i.cluster_may_compress.exit_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp27.i.i, %do.end10.i.i.cluster_may_compress.exit_crit_edge ], [ %cmp.i22.i, %for.cond.i.i.cluster_may_compress.exit_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %cluster_may_compress.exit.do.body31_crit_edge, label %cluster_may_compress.exit.if.then_crit_edge

cluster_may_compress.exit.if.then_crit_edge:      ; preds = %cluster_may_compress.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

cluster_may_compress.exit.do.body31_crit_edge:    ; preds = %cluster_may_compress.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body31

if.then:                                          ; preds = %cluster_may_compress.exit.if.then_crit_edge, %i_size_read.exit.i.i.if.then_crit_edge
  %52 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cc, align 4
  %i_compress_algorithm.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %53, i32 0, i32 35
  %54 = ptrtoint ptr %i_compress_algorithm.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %i_compress_algorithm.i, align 4
  %idxprom.i = zext i8 %55 to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr @f2fs_cops, i32 0, i32 %idxprom.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %cluster_idx.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 1
  %58 = ptrtoint ptr %cluster_idx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cluster_idx.i, align 4
  %60 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cluster_size.i.i, align 4
  tail call fastcc void @trace_f2fs_compress_pages_start(ptr noundef %53, i32 noundef %59, i32 noundef %61, i8 noundef zeroext %55) #16
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %57, align 4
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %if.then.if.end7.i74_crit_edge, label %if.then.i

if.then.if.end7.i74_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i74

if.then.i:                                        ; preds = %if.then
  %call4.i = tail call i32 %63(ptr noundef %cc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end7.i74_crit_edge, label %if.then.i.f2fs_compress_pages.exit_crit_edge

if.then.i.f2fs_compress_pages.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_pages.exit

if.then.i.if.end7.i74_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i74

if.end7.i74:                                      ; preds = %if.then.i.if.end7.i74_crit_edge, %if.then.if.end7.i74_crit_edge
  %clen.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %64 = ptrtoint ptr %clen.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clen.i, align 4
  %sub.i = add i32 %65, 4119
  %div250.i = lshr i32 %sub.i, 12
  %nr_cpages.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 7
  %66 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div250.i, ptr %nr_cpages.i, align 4
  %valid_nr_cpages.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 8
  %67 = ptrtoint ptr %valid_nr_cpages.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div250.i, ptr %valid_nr_cpages.i, align 4
  %68 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cc, align 4
  %i_sb.i.i.i72 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %i_sb.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i.i.i72, align 4
  %s_fs_info.i.i.i.i73 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 33
  %72 = ptrtoint ptr %s_fs_info.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i.i.i73, align 16
  %mul.i.i = shl nuw nsw i32 %div250.i, 2
  %page_array_slab_size.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %73, i32 0, i32 140
  %74 = ptrtoint ptr %page_array_slab_size.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %page_array_slab_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %75)
  %cmp.not.i.i = icmp ugt i32 %mul.i.i, %75
  br i1 %cmp.not.i.i, label %if.end.i.i75, label %if.then.i.i, !prof !195

if.then.i.i:                                      ; preds = %if.end7.i74
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %73, i32 0, i32 139
  %76 = ptrtoint ptr %page_array_slab.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %page_array_slab.i.i, align 4
  %call3.i.i = tail call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %77, ptr noundef %73) #16
  br label %page_array_alloc.exit.i

if.end.i.i75:                                     ; preds = %if.end7.i74
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i.i = tail call fastcc ptr @f2fs_kzalloc(ptr noundef %73, i32 noundef %mul.i.i) #16
  br label %page_array_alloc.exit.i

page_array_alloc.exit.i:                          ; preds = %if.end.i.i75, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call3.i.i, %if.then.i.i ], [ %call4.i.i, %if.end.i.i75 ]
  %cpages.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 6
  %78 = ptrtoint ptr %cpages.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %retval.0.i.i, ptr %cpages.i, align 4
  %tobool14.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool14.not.i, label %page_array_alloc.exit.i.destroy_compress_ctx136.i_crit_edge, label %for.cond.preheader.i

page_array_alloc.exit.i.destroy_compress_ctx136.i_crit_edge: ; preds = %page_array_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_compress_ctx136.i

for.cond.preheader.i:                             ; preds = %page_array_alloc.exit.i
  %79 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nr_cpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp296.not.i = icmp eq i32 %80, 0
  br i1 %cmp296.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0297.i, 1
  %81 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_cpages.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %82
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0297.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call18.i = tail call fastcc ptr @f2fs_compress_alloc_page() #16
  %83 = ptrtoint ptr %cpages.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cpages.i, align 4
  %arrayidx20.i = getelementptr ptr, ptr %84, i32 %i.0297.i
  %85 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call18.i, ptr %arrayidx20.i, align 4
  %86 = load ptr, ptr %cpages.i, align 4
  %arrayidx22.i = getelementptr ptr, ptr %86, i32 %i.0297.i
  %87 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx22.i, align 4
  %tobool23.not.i = icmp eq ptr %88, null
  br i1 %tobool23.not.i, label %for.body.i.out_free_cpages.i_crit_edge, label %for.cond.i

for.body.i.out_free_cpages.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_cpages.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %rpages.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  %89 = ptrtoint ptr %rpages.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rpages.i, align 4
  %91 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cluster_size.i.i, align 4
  %call.i.i = tail call ptr @vm_map_ram(ptr noundef %90, i32 noundef %92, i32 noundef -1) #16
  %tobool.not.i.i76 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i76, label %if.end.i252.i, label %for.end.i.if.end31.i_crit_edge

for.end.i.if.end31.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.end.i252.i:                                    ; preds = %for.end.i
  tail call void @vm_unmap_aliases() #16
  %call.1.i.i = tail call ptr @vm_map_ram(ptr noundef %90, i32 noundef %92, i32 noundef -1) #16
  %tobool.not.1.i.i = icmp eq ptr %call.1.i.i, null
  br i1 %tobool.not.1.i.i, label %if.end.1.i.i, label %if.end.i252.i.if.end31.i_crit_edge

if.end.i252.i.if.end31.i_crit_edge:               ; preds = %if.end.i252.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.end.1.i.i:                                     ; preds = %if.end.i252.i
  tail call void @vm_unmap_aliases() #16
  %call.2.i.i = tail call ptr @vm_map_ram(ptr noundef %90, i32 noundef %92, i32 noundef -1) #16
  %tobool.not.2.i.i = icmp eq ptr %call.2.i.i, null
  br i1 %tobool.not.2.i.i, label %f2fs_vmap.exit.i, label %if.end.1.i.i.if.end31.i_crit_edge

if.end.1.i.i.if.end31.i_crit_edge:                ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

f2fs_vmap.exit.i:                                 ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @vm_unmap_aliases() #16
  %rbuf.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 9
  %93 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %rbuf.i, align 4
  br label %out_free_cpages.i

if.end31.i:                                       ; preds = %if.end.1.i.i.if.end31.i_crit_edge, %if.end.i252.i.if.end31.i_crit_edge, %for.end.i.if.end31.i_crit_edge
  %buf.1.i.ph.i = phi ptr [ %call.2.i.i, %if.end.1.i.i.if.end31.i_crit_edge ], [ %call.1.i.i, %if.end.i252.i.if.end31.i_crit_edge ], [ %call.i.i, %for.end.i.if.end31.i_crit_edge ]
  %rbuf286.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 9
  %94 = ptrtoint ptr %rbuf286.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf.1.i.ph.i, ptr %rbuf286.i, align 4
  %95 = ptrtoint ptr %cpages.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cpages.i, align 4
  %97 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr_cpages.i, align 4
  %call.i253.i = tail call ptr @vm_map_ram(ptr noundef %96, i32 noundef %98, i32 noundef -1) #16
  %tobool.not.i254.i = icmp eq ptr %call.i253.i, null
  br i1 %tobool.not.i254.i, label %if.end.i257.i, label %if.end31.i.if.end38.i_crit_edge

if.end31.i.if.end38.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i

if.end.i257.i:                                    ; preds = %if.end31.i
  tail call void @vm_unmap_aliases() #16
  %call.1.i255.i = tail call ptr @vm_map_ram(ptr noundef %96, i32 noundef %98, i32 noundef -1) #16
  %tobool.not.1.i256.i = icmp eq ptr %call.1.i255.i, null
  br i1 %tobool.not.1.i256.i, label %if.end.1.i260.i, label %if.end.i257.i.if.end38.i_crit_edge

if.end.i257.i.if.end38.i_crit_edge:               ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i

if.end.1.i260.i:                                  ; preds = %if.end.i257.i
  tail call void @vm_unmap_aliases() #16
  %call.2.i258.i = tail call ptr @vm_map_ram(ptr noundef %96, i32 noundef %98, i32 noundef -1) #16
  %tobool.not.2.i259.i = icmp eq ptr %call.2.i258.i, null
  br i1 %tobool.not.2.i259.i, label %f2fs_vmap.exit263.i, label %if.end.1.i260.i.if.end38.i_crit_edge

if.end.1.i260.i.if.end38.i_crit_edge:             ; preds = %if.end.1.i260.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i

f2fs_vmap.exit263.i:                              ; preds = %if.end.1.i260.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @vm_unmap_aliases() #16
  %cbuf.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 10
  %99 = ptrtoint ptr %cbuf.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %cbuf.i, align 4
  br label %out_vunmap_rbuf.i

if.end38.i:                                       ; preds = %if.end.1.i260.i.if.end38.i_crit_edge, %if.end.i257.i.if.end38.i_crit_edge, %if.end31.i.if.end38.i_crit_edge
  %buf.1.i262.ph.i = phi ptr [ %call.2.i258.i, %if.end.1.i260.i.if.end38.i_crit_edge ], [ %call.1.i255.i, %if.end.i257.i.if.end38.i_crit_edge ], [ %call.i253.i, %if.end31.i.if.end38.i_crit_edge ]
  %cbuf292.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 10
  %100 = ptrtoint ptr %cbuf292.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %buf.1.i262.ph.i, ptr %cbuf292.i, align 4
  %compress_pages.i = getelementptr inbounds %struct.f2fs_compress_ops, ptr %57, i32 0, i32 2
  %101 = ptrtoint ptr %compress_pages.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %compress_pages.i, align 4
  %call39.i = tail call i32 %102(ptr noundef %cc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end38.i.out_vunmap_cbuf.i_crit_edge

if.end38.i.out_vunmap_cbuf.i_crit_edge:           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_vunmap_cbuf.i

if.end42.i:                                       ; preds = %if.end38.i
  %103 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cluster_size.i.i, align 4
  %sub44.i = shl i32 %104, 12
  %sub45.i = add i32 %sub44.i, -4120
  %105 = ptrtoint ptr %clen.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %clen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %sub45.i)
  %cmp47.i = icmp ugt i32 %106, %sub45.i
  br i1 %cmp47.i, label %if.end42.i.out_vunmap_cbuf.i_crit_edge, label %if.end49.i

if.end42.i.out_vunmap_cbuf.i_crit_edge:           ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_vunmap_cbuf.i

if.end49.i:                                       ; preds = %if.end42.i
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #16
  %108 = ptrtoint ptr %cbuf292.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cbuf292.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %107, ptr %109, align 4
  %i_compress_flag.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %53, i32 0, i32 38
  %111 = ptrtoint ptr %i_compress_flag.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %i_compress_flag.i, align 8
  %113 = and i16 %112, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool53.not.i = icmp eq i16 %113, 0
  br i1 %tobool53.not.i, label %if.end49.i.if.end60.i_crit_edge, label %if.then54.i

if.end49.i.if.end60.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

if.then54.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #18
  %114 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cc, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %117, i32 0, i32 33
  %118 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %120 = ptrtoint ptr %cbuf292.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cbuf292.i, align 4
  %cdata.i = getelementptr inbounds %struct.compress_data, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %clen.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %clen.i, align 4
  %call59.i = tail call fastcc i32 @f2fs_crc32(ptr noundef %119, ptr noundef %cdata.i, i32 noundef %123) #16
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then54.i, %if.end49.i.if.end60.i_crit_edge
  %chksum.0.i = phi i32 [ %call59.i, %if.then54.i ], [ 0, %if.end49.i.if.end60.i_crit_edge ]
  %124 = tail call i32 @llvm.bswap.i32(i32 %chksum.0.i) #16
  %125 = ptrtoint ptr %cbuf292.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cbuf292.i, align 4
  %chksum62.i = getelementptr inbounds %struct.compress_data, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %chksum62.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %124, ptr %chksum62.i, align 4
  %128 = load ptr, ptr %cbuf292.i, align 4
  %arrayidx68.i = getelementptr %struct.compress_data, ptr %128, i32 0, i32 2, i32 0
  %129 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %arrayidx68.i, align 4
  %130 = load ptr, ptr %cbuf292.i, align 4
  %arrayidx68.1.i = getelementptr %struct.compress_data, ptr %130, i32 0, i32 2, i32 1
  %131 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %arrayidx68.1.i, align 4
  %132 = load ptr, ptr %cbuf292.i, align 4
  %arrayidx68.2.i = getelementptr %struct.compress_data, ptr %132, i32 0, i32 2, i32 2
  %133 = ptrtoint ptr %arrayidx68.2.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %arrayidx68.2.i, align 4
  %134 = load ptr, ptr %cbuf292.i, align 4
  %arrayidx68.3.i = getelementptr %struct.compress_data, ptr %134, i32 0, i32 2, i32 3
  %135 = ptrtoint ptr %arrayidx68.3.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %arrayidx68.3.i, align 4
  %136 = ptrtoint ptr %clen.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %clen.i, align 4
  %sub75.i = add i32 %137, 4119
  %div76251.i = lshr i32 %sub75.i, 12
  %138 = load ptr, ptr %cbuf292.i, align 4
  %arrayidx80.i = getelementptr %struct.compress_data, ptr %138, i32 0, i32 3, i32 %137
  %mul81.i = and i32 %sub75.i, -4096
  %add73.neg.i = sub i32 -24, %137
  %sub84.i = add i32 %add73.neg.i, %mul81.i
  %139 = call ptr @memset(ptr %arrayidx80.i, i32 0, i32 %sub84.i)
  %140 = load ptr, ptr %cbuf292.i, align 4
  %141 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %nr_cpages.i, align 4
  tail call void @vm_unmap_ram(ptr noundef %140, i32 noundef %142) #16
  %143 = ptrtoint ptr %rbuf286.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rbuf286.i, align 4
  %145 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cluster_size.i.i, align 4
  tail call void @vm_unmap_ram(ptr noundef %144, i32 noundef %146) #16
  %147 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %nr_cpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp91299.not.i = icmp eq i32 %148, 0
  br i1 %cmp91299.not.i, label %if.end60.i.for.end104.i_crit_edge, label %if.end60.i.for.body93.i_crit_edge

if.end60.i.for.body93.i_crit_edge:                ; preds = %if.end60.i
  br label %for.body93.i

if.end60.i.for.end104.i_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end104.i

for.body93.i:                                     ; preds = %for.inc102.i.for.body93.i_crit_edge, %if.end60.i.for.body93.i_crit_edge
  %i.2300.i = phi i32 [ %inc103.i, %for.inc102.i.for.body93.i_crit_edge ], [ 0, %if.end60.i.for.body93.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2300.i, i32 %div76251.i)
  %cmp94.i = icmp ult i32 %i.2300.i, %div76251.i
  br i1 %cmp94.i, label %for.body93.i.for.inc102.i_crit_edge, label %if.end97.i

for.body93.i.for.inc102.i_crit_edge:              ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc102.i

if.end97.i:                                       ; preds = %for.body93.i
  %149 = ptrtoint ptr %cpages.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cpages.i, align 4
  %arrayidx99.i = getelementptr ptr, ptr %150, i32 %i.2300.i
  %151 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx99.i, align 4
  %tobool.not.i264.i = icmp eq ptr %152, null
  br i1 %tobool.not.i264.i, label %if.end97.i.f2fs_compress_free_page.exit.i_crit_edge, label %if.end.i265.i

if.end97.i.f2fs_compress_free_page.exit.i_crit_edge: ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_free_page.exit.i

if.end.i265.i:                                    ; preds = %if.end97.i
  %153 = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 1
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %153, align 4
  %and.i.i.i.i = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i77 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i77, label %if.end.i.i.i.i, label %if.then.i.i.i.i78, !prof !197

if.then.i.i.i.i78:                                ; preds = %if.end.i265.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i.i = add i32 %155, -1
  br label %detach_page_private.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i265.i
  call void @__sanitizer_cov_trace_pc() #18
  %156 = ptrtoint ptr %152 to i32
  br label %detach_page_private.exit.i.i

detach_page_private.exit.i.i:                     ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i78
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i78 ], [ %156, %if.end.i.i.i.i ]
  %157 = inttoptr i32 %retval.0.i.i.i.i to ptr
  tail call fastcc void @folio_detach_private(ptr noundef %157) #16
  %mapping.i.i = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 1, i32 0, i32 1
  %158 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %mapping.i.i, align 4
  tail call void @unlock_page(ptr noundef nonnull %152) #16
  %159 = load ptr, ptr @compress_page_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %152, ptr noundef %159) #16
  br label %f2fs_compress_free_page.exit.i

f2fs_compress_free_page.exit.i:                   ; preds = %detach_page_private.exit.i.i, %if.end97.i.f2fs_compress_free_page.exit.i_crit_edge
  %160 = ptrtoint ptr %cpages.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cpages.i, align 4
  %arrayidx101.i = getelementptr ptr, ptr %161, i32 %i.2300.i
  %162 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %arrayidx101.i, align 4
  br label %for.inc102.i

for.inc102.i:                                     ; preds = %f2fs_compress_free_page.exit.i, %for.body93.i.for.inc102.i_crit_edge
  %inc103.i = add nuw i32 %i.2300.i, 1
  %163 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %nr_cpages.i, align 4
  %cmp91.i = icmp ult i32 %inc103.i, %164
  br i1 %cmp91.i, label %for.inc102.i.for.body93.i_crit_edge, label %for.inc102.i.for.end104.i_crit_edge

for.inc102.i.for.end104.i_crit_edge:              ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end104.i

for.inc102.i.for.body93.i_crit_edge:              ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body93.i

for.end104.i:                                     ; preds = %for.inc102.i.for.end104.i_crit_edge, %if.end60.i.for.end104.i_crit_edge
  %destroy_compress_ctx.i = getelementptr inbounds %struct.f2fs_compress_ops, ptr %57, i32 0, i32 1
  %165 = ptrtoint ptr %destroy_compress_ctx.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %destroy_compress_ctx.i, align 4
  %tobool105.not.i = icmp eq ptr %166, null
  br i1 %tobool105.not.i, label %for.end104.i.f2fs_compress_pages.exit.thread_crit_edge, label %if.then106.i

for.end104.i.f2fs_compress_pages.exit.thread_crit_edge: ; preds = %for.end104.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_pages.exit.thread

if.then106.i:                                     ; preds = %for.end104.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %166(ptr noundef %cc) #16
  br label %f2fs_compress_pages.exit.thread

f2fs_compress_pages.exit.thread:                  ; preds = %if.then106.i, %for.end104.i.f2fs_compress_pages.exit.thread_crit_edge
  %167 = ptrtoint ptr %valid_nr_cpages.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %div76251.i, ptr %valid_nr_cpages.i, align 4
  %168 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cc, align 4
  %170 = ptrtoint ptr %cluster_idx.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cluster_idx.i, align 4
  %172 = ptrtoint ptr %clen.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %clen.i, align 4
  tail call fastcc void @trace_f2fs_compress_pages_end(ptr noundef %169, i32 noundef %171, i32 noundef %173, i32 noundef 0) #16
  br label %if.end10

out_vunmap_cbuf.i:                                ; preds = %if.end42.i.out_vunmap_cbuf.i_crit_edge, %if.end38.i.out_vunmap_cbuf.i_crit_edge
  %ret.0.i = phi i32 [ %call39.i, %if.end38.i.out_vunmap_cbuf.i_crit_edge ], [ -11, %if.end42.i.out_vunmap_cbuf.i_crit_edge ]
  %174 = ptrtoint ptr %cbuf292.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cbuf292.i, align 4
  %176 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nr_cpages.i, align 4
  tail call void @vm_unmap_ram(ptr noundef %175, i32 noundef %177) #16
  br label %out_vunmap_rbuf.i

out_vunmap_rbuf.i:                                ; preds = %out_vunmap_cbuf.i, %f2fs_vmap.exit263.i
  %ret.1.i = phi i32 [ %ret.0.i, %out_vunmap_cbuf.i ], [ -12, %f2fs_vmap.exit263.i ]
  %178 = ptrtoint ptr %rbuf286.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rbuf286.i, align 4
  %180 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cluster_size.i.i, align 4
  tail call void @vm_unmap_ram(ptr noundef %179, i32 noundef %181) #16
  br label %out_free_cpages.i

out_free_cpages.i:                                ; preds = %out_vunmap_rbuf.i, %f2fs_vmap.exit.i, %for.body.i.out_free_cpages.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %out_vunmap_rbuf.i ], [ -12, %f2fs_vmap.exit.i ], [ -12, %for.body.i.out_free_cpages.i_crit_edge ]
  %182 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nr_cpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp119302.not.i = icmp eq i32 %183, 0
  br i1 %cmp119302.not.i, label %out_free_cpages.i.for.end131.i_crit_edge, label %out_free_cpages.i.for.body121.i_crit_edge

out_free_cpages.i.for.body121.i_crit_edge:        ; preds = %out_free_cpages.i
  br label %for.body121.i

out_free_cpages.i.for.end131.i_crit_edge:         ; preds = %out_free_cpages.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end131.i

for.body121.i:                                    ; preds = %for.inc129.i.for.body121.i_crit_edge, %out_free_cpages.i.for.body121.i_crit_edge
  %i.3303.i = phi i32 [ %inc130.i, %for.inc129.i.for.body121.i_crit_edge ], [ 0, %out_free_cpages.i.for.body121.i_crit_edge ]
  %184 = ptrtoint ptr %cpages.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cpages.i, align 4
  %arrayidx123.i = getelementptr ptr, ptr %185, i32 %i.3303.i
  %186 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx123.i, align 4
  %tobool124.not.i = icmp eq ptr %187, null
  br i1 %tobool124.not.i, label %for.body121.i.for.inc129.i_crit_edge, label %if.end.i269.i

for.body121.i.for.inc129.i_crit_edge:             ; preds = %for.body121.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc129.i

if.end.i269.i:                                    ; preds = %for.body121.i
  %188 = getelementptr inbounds %struct.page, ptr %187, i32 0, i32 1
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %188, align 4
  %and.i.i.i267.i = and i32 %190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i267.i)
  %tobool.not.i.i.i268.i = icmp eq i32 %and.i.i.i267.i, 0
  br i1 %tobool.not.i.i.i268.i, label %if.end.i.i.i272.i, label %if.then.i.i.i271.i, !prof !197

if.then.i.i.i271.i:                               ; preds = %if.end.i269.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i270.i = add i32 %190, -1
  br label %f2fs_compress_free_page.exit276.i

if.end.i.i.i272.i:                                ; preds = %if.end.i269.i
  call void @__sanitizer_cov_trace_pc() #18
  %191 = ptrtoint ptr %187 to i32
  br label %f2fs_compress_free_page.exit276.i

f2fs_compress_free_page.exit276.i:                ; preds = %if.end.i.i.i272.i, %if.then.i.i.i271.i
  %retval.0.i.i.i273.i = phi i32 [ %sub.i.i.i270.i, %if.then.i.i.i271.i ], [ %191, %if.end.i.i.i272.i ]
  %192 = inttoptr i32 %retval.0.i.i.i273.i to ptr
  tail call fastcc void @folio_detach_private(ptr noundef %192) #16
  %mapping.i274.i = getelementptr inbounds %struct.page, ptr %187, i32 0, i32 1, i32 0, i32 1
  %193 = ptrtoint ptr %mapping.i274.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %mapping.i274.i, align 4
  tail call void @unlock_page(ptr noundef nonnull %187) #16
  %194 = load ptr, ptr @compress_page_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %187, ptr noundef %194) #16
  br label %for.inc129.i

for.inc129.i:                                     ; preds = %f2fs_compress_free_page.exit276.i, %for.body121.i.for.inc129.i_crit_edge
  %inc130.i = add nuw i32 %i.3303.i, 1
  %195 = ptrtoint ptr %nr_cpages.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %nr_cpages.i, align 4
  %cmp119.i = icmp ult i32 %inc130.i, %196
  br i1 %cmp119.i, label %for.inc129.i.for.body121.i_crit_edge, label %for.end131.loopexit.i

for.inc129.i.for.body121.i_crit_edge:             ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body121.i

for.end131.loopexit.i:                            ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo.i = shl i32 %196, 2
  br label %for.end131.i

for.end131.i:                                     ; preds = %for.end131.loopexit.i, %out_free_cpages.i.for.end131.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %out_free_cpages.i.for.end131.i_crit_edge ], [ %phi.bo.i, %for.end131.loopexit.i ]
  %197 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cc, align 4
  %199 = ptrtoint ptr %cpages.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cpages.i, align 4
  %i_sb.i.i277.i = getelementptr inbounds %struct.inode, ptr %198, i32 0, i32 8
  %201 = ptrtoint ptr %i_sb.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %i_sb.i.i277.i, align 4
  %s_fs_info.i.i.i278.i = getelementptr inbounds %struct.super_block, ptr %202, i32 0, i32 33
  %203 = ptrtoint ptr %s_fs_info.i.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %s_fs_info.i.i.i278.i, align 16
  %tobool.not.i279.i = icmp eq ptr %200, null
  br i1 %tobool.not.i279.i, label %for.end131.i.page_array_free.exit.i_crit_edge, label %if.end.i283.i

for.end131.i.page_array_free.exit.i_crit_edge:    ; preds = %for.end131.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %page_array_free.exit.i

if.end.i283.i:                                    ; preds = %for.end131.i
  %page_array_slab_size.i281.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %204, i32 0, i32 140
  %205 = ptrtoint ptr %page_array_slab_size.i281.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %page_array_slab_size.i281.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %206)
  %cmp.not.i282.i = icmp ugt i32 %.lcssa.i, %206
  br i1 %cmp.not.i282.i, label %if.else.i.i, label %if.then3.i.i, !prof !195

if.then3.i.i:                                     ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i284.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %204, i32 0, i32 139
  %207 = ptrtoint ptr %page_array_slab.i284.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %page_array_slab.i284.i, align 4
  tail call void @kmem_cache_free(ptr noundef %208, ptr noundef nonnull %200) #16
  br label %page_array_free.exit.i

if.else.i.i:                                      ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %200) #16
  br label %page_array_free.exit.i

page_array_free.exit.i:                           ; preds = %if.else.i.i, %if.then3.i.i, %for.end131.i.page_array_free.exit.i_crit_edge
  %209 = ptrtoint ptr %cpages.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %cpages.i, align 4
  br label %destroy_compress_ctx136.i

destroy_compress_ctx136.i:                        ; preds = %page_array_free.exit.i, %page_array_alloc.exit.i.destroy_compress_ctx136.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %page_array_free.exit.i ], [ -12, %page_array_alloc.exit.i.destroy_compress_ctx136.i_crit_edge ]
  %destroy_compress_ctx137.i = getelementptr inbounds %struct.f2fs_compress_ops, ptr %57, i32 0, i32 1
  %210 = ptrtoint ptr %destroy_compress_ctx137.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %destroy_compress_ctx137.i, align 4
  %tobool138.not.i = icmp eq ptr %211, null
  br i1 %tobool138.not.i, label %destroy_compress_ctx136.i.f2fs_compress_pages.exit_crit_edge, label %if.then139.i

destroy_compress_ctx136.i.f2fs_compress_pages.exit_crit_edge: ; preds = %destroy_compress_ctx136.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_pages.exit

if.then139.i:                                     ; preds = %destroy_compress_ctx136.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %211(ptr noundef %cc) #16
  br label %f2fs_compress_pages.exit

f2fs_compress_pages.exit:                         ; preds = %if.then139.i, %destroy_compress_ctx136.i.f2fs_compress_pages.exit_crit_edge, %if.then.i.f2fs_compress_pages.exit_crit_edge
  %ret.4.i = phi i32 [ %call4.i, %if.then.i.f2fs_compress_pages.exit_crit_edge ], [ %ret.3.i, %if.then139.i ], [ %ret.3.i, %destroy_compress_ctx136.i.f2fs_compress_pages.exit_crit_edge ]
  %212 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cc, align 4
  %214 = ptrtoint ptr %cluster_idx.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %cluster_idx.i, align 4
  %clen144.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %216 = ptrtoint ptr %clen144.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %clen144.i, align 4
  tail call fastcc void @trace_f2fs_compress_pages_end(ptr noundef %213, i32 noundef %215, i32 noundef %217, i32 noundef %ret.4.i) #16
  %218 = zext i32 %ret.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %ret.4.i, label %if.then9 [
    i32 -11, label %do.body
    i32 0, label %f2fs_compress_pages.exit.if.end10_crit_edge
  ]

f2fs_compress_pages.exit.if.end10_crit_edge:      ; preds = %f2fs_compress_pages.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

do.body:                                          ; preds = %f2fs_compress_pages.exit
  call void @__sanitizer_cov_trace_pc() #18
  %219 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cc, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %220, i32 0, i32 8
  %221 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %222, i32 0, i32 33
  %223 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %220, i32 0, i32 39
  %225 = ptrtoint ptr %i_cluster_size to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %i_cluster_size, align 4
  %227 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %cluster_size.i.i, align 4
  %sub = sub i32 %226, %228
  %conv = zext i32 %228 to i64
  %compr_written_block = getelementptr inbounds %struct.f2fs_sb_info, ptr %224, i32 0, i32 141
  %229 = ptrtoint ptr %compr_written_block to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %compr_written_block, align 8
  %add = add i64 %230, %conv
  store i64 %add, ptr %compr_written_block, align 8
  %conv7 = sext i32 %sub to i64
  %compr_saved_block = getelementptr inbounds %struct.f2fs_sb_info, ptr %224, i32 0, i32 142
  %231 = ptrtoint ptr %compr_saved_block to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %compr_saved_block, align 8
  %add8 = add i64 %232, %conv7
  store i64 %add8, ptr %compr_saved_block, align 8
  br label %do.body31

if.then9:                                         ; preds = %f2fs_compress_pages.exit
  %233 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %cluster_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %cmp15.not.i = icmp eq i32 %234, 0
  br i1 %cmp15.not.i, label %if.then9.destroy_out_crit_edge, label %for.body.lr.ph.i

if.then9.destroy_out_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_out

for.body.lr.ph.i:                                 ; preds = %if.then9
  %rpages.i81 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  br label %for.body.i84

for.body.i84:                                     ; preds = %for.inc.i.for.body.i84_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i86, %for.inc.i.for.body.i84_crit_edge ]
  %235 = ptrtoint ptr %rpages.i81 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %rpages.i81, align 4
  %arrayidx.i82 = getelementptr ptr, ptr %236, i32 %i.016.i
  %237 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx.i82, align 4
  %tobool.not.i83 = icmp eq ptr %238, null
  br i1 %tobool.not.i83, label %for.body.i84.for.inc.i_crit_edge, label %if.end.i85

for.body.i84.for.inc.i_crit_edge:                 ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i85:                                       ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef nonnull %238) #16
  %239 = ptrtoint ptr %rpages.i81 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %rpages.i81, align 4
  %arrayidx7.i = getelementptr ptr, ptr %240, i32 %i.016.i
  %241 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx7.i, align 4
  tail call fastcc void @f2fs_put_page(ptr noundef %242, i32 noundef 1) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i85, %for.body.i84.for.inc.i_crit_edge
  %inc.i86 = add nuw i32 %i.016.i, 1
  %243 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %cluster_size.i.i, align 4
  %cmp.i87 = icmp ult i32 %inc.i86, %244
  br i1 %cmp.i87, label %for.inc.i.for.body.i84_crit_edge, label %for.inc.i.destroy_out_crit_edge

for.inc.i.destroy_out_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_out

for.inc.i.for.body.i84_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i84

if.end10:                                         ; preds = %f2fs_compress_pages.exit.if.end10_crit_edge, %f2fs_compress_pages.exit.thread
  %245 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %cc, align 4
  %i_sb.i.i89 = getelementptr inbounds %struct.inode, ptr %246, i32 0, i32 8
  %247 = ptrtoint ptr %i_sb.i.i89 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %i_sb.i.i89, align 4
  %s_fs_info.i.i.i90 = getelementptr inbounds %struct.super_block, ptr %248, i32 0, i32 33
  %249 = ptrtoint ptr %s_fs_info.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %s_fs_info.i.i.i90, align 16
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %fio.i) #16
  %251 = getelementptr inbounds i8, ptr %fio.i, i32 4
  %252 = call ptr @memset(ptr %251, i32 255, i32 88)
  %253 = ptrtoint ptr %fio.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %250, ptr %fio.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %246, i32 0, i32 11
  %254 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %i_ino.i, align 8
  %256 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %251, align 4
  %type.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 2
  %257 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %type.i, align 4
  %temp.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 3
  %258 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 0, ptr %temp.i, align 4
  %op.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 4
  %259 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 1, ptr %op.i, align 4
  %op_flags.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 5
  %punt_to_cgroup.i.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %260 = ptrtoint ptr %punt_to_cgroup.i.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %bf.load.i.i = load i16, ptr %punt_to_cgroup.i.i, align 4
  %261 = and i16 %bf.load.i.i, 128
  %262 = zext i16 %261 to i32
  %263 = shl nuw nsw i32 %262, 15
  %sync_mode.i.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %264 = ptrtoint ptr %sync_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %sync_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %265)
  %cmp.i.i91 = icmp eq i32 %265, 1
  %266 = or i32 %263, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i.i)
  %267 = icmp ult i16 %bf.load.i.i, 16384
  %268 = or i32 %263, 1048576
  %spec.select.i.i = select i1 %267, i32 %263, i32 %268
  %flags.0.i.i = select i1 %cmp.i.i91, i32 %266, i32 %spec.select.i.i
  %269 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %flags.0.i.i, ptr %op_flags.i, align 4
  %new_blkaddr.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 6
  %270 = ptrtoint ptr %new_blkaddr.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %new_blkaddr.i, align 4
  %old_blkaddr.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 7
  %page.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 8
  %encrypted_page.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 9
  %compressed_page.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 10
  %need_lock.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 13
  %compr_blocks.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 17
  %271 = ptrtoint ptr %compr_blocks.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %compr_blocks.i, align 4
  %encrypted.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 18
  %i_flags.i.i.i = getelementptr inbounds %struct.inode, ptr %246, i32 0, i32 4
  %272 = call ptr @memset(ptr %page.i, i32 0, i32 21)
  %273 = call ptr @memset(ptr %need_lock.i, i32 0, i32 7)
  %274 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %i_flags.i.i.i, align 4
  %and.i.i.i92 = and i32 %275, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i92)
  %tobool.not.i.i.i93 = icmp eq i32 %and.i.i.i92, 0
  br i1 %tobool.not.i.i.i93, label %if.end10.fscrypt_inode_uses_fs_layer_crypto.exit.i_crit_edge, label %fscrypt_needs_contents_encryption.exit.i.i

if.end10.fscrypt_inode_uses_fs_layer_crypto.exit.i_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %fscrypt_inode_uses_fs_layer_crypto.exit.i

fscrypt_needs_contents_encryption.exit.i.i:       ; preds = %if.end10
  %276 = ptrtoint ptr %246 to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %246, align 8
  %278 = and i16 %277, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %278)
  %cmp.i.i.i94 = icmp eq i16 %278, -32768
  br i1 %cmp.i.i.i94, label %land.rhs.i.i, label %fscrypt_needs_contents_encryption.exit.i.i.fscrypt_inode_uses_fs_layer_crypto.exit.i_crit_edge

fscrypt_needs_contents_encryption.exit.i.i.fscrypt_inode_uses_fs_layer_crypto.exit.i_crit_edge: ; preds = %fscrypt_needs_contents_encryption.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fscrypt_inode_uses_fs_layer_crypto.exit.i

land.rhs.i.i:                                     ; preds = %fscrypt_needs_contents_encryption.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i.i = tail call zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef %246) #16
  %lnot.i.i = xor i1 %call1.i.i, true
  br label %fscrypt_inode_uses_fs_layer_crypto.exit.i

fscrypt_inode_uses_fs_layer_crypto.exit.i:        ; preds = %land.rhs.i.i, %fscrypt_needs_contents_encryption.exit.i.i.fscrypt_inode_uses_fs_layer_crypto.exit.i_crit_edge, %if.end10.fscrypt_inode_uses_fs_layer_crypto.exit.i_crit_edge
  %279 = phi i1 [ false, %fscrypt_needs_contents_encryption.exit.i.i.fscrypt_inode_uses_fs_layer_crypto.exit.i_crit_edge ], [ %lnot.i.i, %land.rhs.i.i ], [ false, %if.end10.fscrypt_inode_uses_fs_layer_crypto.exit.i_crit_edge ]
  %frombool.i = zext i1 %279 to i8
  %280 = ptrtoint ptr %encrypted.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %frombool.i, ptr %encrypted.i, align 4
  %io_type9.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 19
  %281 = ptrtoint ptr %io_type9.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %io_type, ptr %io_type9.i, align 4
  %io_wbc.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 20
  %282 = ptrtoint ptr %io_wbc.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %wbc, ptr %io_wbc.i, align 4
  %bio.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 21
  %283 = ptrtoint ptr %bio.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr null, ptr %bio.i, align 4
  %last_block.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 22
  %284 = ptrtoint ptr %last_block.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %last_block.i, align 4
  %version.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i, i32 0, i32 23
  %285 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 0, ptr %version.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dn.i) #16
  %286 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i, i32 0, i32 1
  %287 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i, i32 0, i32 2
  %288 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i, i32 0, i32 3
  %289 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i, i32 0, i32 4
  %290 = call ptr @memset(ptr %dn.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ni.i) #16
  %291 = call ptr @memset(ptr %ni.i, i32 255, i32 16)
  %292 = ptrtoint ptr %cluster_idx.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %cluster_idx.i, align 4
  %log_cluster_size.i.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 3
  %294 = ptrtoint ptr %log_cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %log_cluster_size.i.i, align 4
  %shl.i.i = shl i32 %293, %295
  %296 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %cluster_size.i.i, align 4
  %sub.i96 = add i32 %297, -1
  %ckpt.i.i.i.i97 = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 15
  %298 = ptrtoint ptr %ckpt.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ckpt.i.i.i.i97, align 4
  %ckpt_flags1.i.i.i.i98 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %299, i32 0, i32 10
  %300 = ptrtoint ptr %ckpt_flags1.i.i.i.i98 to i32
  call void @__asan_loadN_noabort(i32 %300, i32 4)
  %301 = load i32, ptr %ckpt_flags1.i.i.i.i98, align 1
  %302 = and i32 %301, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool.i.i.i.not.i99 = icmp eq i32 %302, 0
  br i1 %tobool.i.i.i.not.i99, label %if.end.i102, label %if.then.i101, !prof !197

if.then.i101:                                     ; preds = %fscrypt_inode_uses_fs_layer_crypto.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %rpages.i100 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  %303 = ptrtoint ptr %rpages.i100 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %rpages.i100, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %304, align 4
  %mapping.i = getelementptr inbounds %struct.page, ptr %306, i32 0, i32 1, i32 0, i32 1
  %307 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %mapping.i, align 4
  tail call fastcc void @mapping_set_error(ptr noundef %308) #16
  br label %out_free.i

if.end.i102:                                      ; preds = %fscrypt_inode_uses_fs_layer_crypto.exit.i
  %309 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %i_flags.i.i.i, align 4
  %and.i = and i32 %310, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #18
  %node_write.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 21
  tail call void @down_read(ptr noundef %node_write.i) #16
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i102
  %fault_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 73, i32 7
  %inject_rate.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 73, i32 7, i32 1
  %311 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool.not.i.i400.i = icmp eq i32 %312, 0
  br i1 %tobool.not.i.i400.i, label %if.else.i.f2fs_trylock_op.exit.i_crit_edge, label %if.end.i.i.i

if.else.i.f2fs_trylock_op.exit.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_trylock_op.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  %inject_type.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 73, i32 7, i32 2
  %313 = ptrtoint ptr %inject_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %inject_type.i.i.i, align 4
  %and.i.i401.i = and i32 %314, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i401.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i401.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.f2fs_trylock_op.exit.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.f2fs_trylock_op.exit.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_trylock_op.exit.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i.i, i32 1, i32 3, i32 1) #16
  %315 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i.i, ptr %fault_info.i.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i.i) #16, !srcloc !233
  %call.i.i14.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i.i, i32 noundef 4) #16
  %316 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load volatile i32, ptr %fault_info.i.i.i, align 4
  %318 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %317, i32 %319)
  %cmp.not.i.i.i = icmp ult i32 %317, %319
  br i1 %cmp.not.i.i.i, label %if.end3.i.i.i.f2fs_trylock_op.exit.i_crit_edge, label %if.then.i.i104

if.end3.i.i.i.f2fs_trylock_op.exit.i_crit_edge:   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_trylock_op.exit.i

if.then.i.i104:                                   ; preds = %if.end3.i.i.i
  %call.i.i15.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #16
  %320 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store volatile i32 0, ptr %fault_info.i.i.i, align 4
  %call1.i402.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_trylock_op._rs, ptr noundef nonnull @__func__.f2fs_trylock_op) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i402.i)
  %tobool.not.i.i103 = icmp eq i32 %call1.i402.i, 0
  br i1 %tobool.not.i.i103, label %if.then.i.i104.out_free.i_crit_edge, label %do.end.i.i

if.then.i.i104.out_free.i_crit_edge:              ; preds = %if.then.i.i104
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free.i

do.end.i.i:                                       ; preds = %if.then.i.i104
  call void @__sanitizer_cov_trace_pc() #18
  %321 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %250, align 8
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %322, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 17) to i32))
  %323 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 17), align 4
  %324 = tail call ptr @llvm.returnaddress(i32 0) #16
  %call3.i.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef %s_id.i.i, ptr noundef %323, ptr noundef nonnull @__func__.f2fs_trylock_op, ptr noundef %324) #19
  br label %out_free.i

f2fs_trylock_op.exit.i:                           ; preds = %if.end3.i.i.i.f2fs_trylock_op.exit.i_crit_edge, %if.end.i.i.i.f2fs_trylock_op.exit.i_crit_edge, %if.else.i.f2fs_trylock_op.exit.i_crit_edge
  %cp_rwsem.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 20
  %call5.i.i = tail call i32 @down_read_trylock(ptr noundef %cp_rwsem.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool16.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool16.not.i, label %f2fs_trylock_op.exit.i.out_free.i_crit_edge, label %f2fs_trylock_op.exit.i.if.end19.i_crit_edge

f2fs_trylock_op.exit.i.if.end19.i_crit_edge:      ; preds = %f2fs_trylock_op.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

f2fs_trylock_op.exit.i.out_free.i_crit_edge:      ; preds = %f2fs_trylock_op.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free.i

if.end19.i:                                       ; preds = %f2fs_trylock_op.exit.i.if.end19.i_crit_edge, %if.then14.i
  %325 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %cc, align 4
  %327 = call ptr @memset(ptr %289, i32 0, i32 12)
  %328 = ptrtoint ptr %dn.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %326, ptr %dn.i, align 4
  %329 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr null, ptr %286, align 4
  %330 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr null, ptr %287, align 4
  %331 = ptrtoint ptr %288 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 0, ptr %288, align 4
  %call21.i = call i32 @f2fs_get_dnode_of_data(ptr noundef nonnull %dn.i, i32 noundef %shl.i.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %for.cond.preheader.i106, label %if.end19.i.out_unlock_op.i_crit_edge

if.end19.i.out_unlock_op.i_crit_edge:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock_op.i

for.cond.preheader.i106:                          ; preds = %if.end19.i
  %332 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %cluster_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp482.not.i = icmp eq i32 %333, 0
  br i1 %cmp482.not.i, label %for.cond.preheader.i106.for.end.i116_crit_edge, label %for.cond.preheader.i106.for.body.i110_crit_edge

for.cond.preheader.i106.for.body.i110_crit_edge:  ; preds = %for.cond.preheader.i106
  br label %for.body.i110

for.cond.preheader.i106.for.end.i116_crit_edge:   ; preds = %for.cond.preheader.i106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i116

for.cond.i109:                                    ; preds = %data_blkaddr.exit.i
  %inc.i107 = add nuw i32 %i.0483.i, 1
  %334 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %cluster_size.i.i, align 4
  %cmp.i108 = icmp ult i32 %inc.i107, %335
  br i1 %cmp.i108, label %for.cond.i109.for.body.i110_crit_edge, label %for.cond.i109.for.end.i116_crit_edge

for.cond.i109.for.end.i116_crit_edge:             ; preds = %for.cond.i109
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i116

for.cond.i109.for.body.i110_crit_edge:            ; preds = %for.cond.i109
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i110

for.body.i110:                                    ; preds = %for.cond.i109.for.body.i110_crit_edge, %for.cond.preheader.i106.for.body.i110_crit_edge
  %i.0483.i = phi i32 [ %inc.i107, %for.cond.i109.for.body.i110_crit_edge ], [ 0, %for.cond.preheader.i106.for.body.i110_crit_edge ]
  %336 = ptrtoint ptr %dn.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %dn.i, align 4
  %338 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %287, align 4
  %340 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %289, align 4
  %add.i = add i32 %341, %i.0483.i
  %call.i.i.i.i = call ptr @page_address(ptr noundef %339) #16
  %footer.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i, i32 0, i32 1
  %342 = ptrtoint ptr %footer.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %342, i32 4)
  %343 = load i32, ptr %footer.i.i.i, align 1
  %ino.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %344 = ptrtoint ptr %ino.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %344, i32 4)
  %345 = load i32, ptr %ino.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %343, i32 %345)
  %cmp.i.i403.i = icmp eq i32 %343, %345
  %call.i.i404.i = call ptr @page_address(ptr noundef %339) #16
  br i1 %cmp.i.i403.i, label %if.then.i405.i, label %for.body.i110.data_blkaddr.exit.i_crit_edge

for.body.i110.data_blkaddr.exit.i_crit_edge:      ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit.i

if.then.i405.i:                                   ; preds = %for.body.i110
  %tobool2.not.i.i = icmp eq ptr %337, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i111, label %if.else.i.i114

if.then3.i.i111:                                  ; preds = %if.then.i405.i
  %i_inline.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i404.i, i32 0, i32 2
  %346 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %i_inline.i.i.i, align 1
  %348 = and i8 %347, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %348)
  %tobool.not.i.i406.i = icmp eq i8 %348, 0
  br i1 %tobool.not.i.i406.i, label %if.then3.i.i111.data_blkaddr.exit.i_crit_edge, label %cond.true.i.i.i

if.then3.i.i111.data_blkaddr.exit.i_crit_edge:    ; preds = %if.then3.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit.i

cond.true.i.i.i:                                  ; preds = %if.then3.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  %349 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i404.i, i32 0, i32 23
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_loadN_noabort(i32 %350, i32 2)
  %351 = load i16, ptr %349, align 1
  %352 = call i16 @llvm.bswap.i16(i16 %351) #16
  %353 = lshr i16 %352, 2
  %div.i.i.i = zext i16 %353 to i32
  br label %data_blkaddr.exit.i

if.else.i.i114:                                   ; preds = %if.then.i405.i
  %flags.i.i.i.i112 = getelementptr inbounds %struct.f2fs_inode_info, ptr %337, i32 0, i32 8
  %354 = ptrtoint ptr %flags.i.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load volatile i32, ptr %flags.i.i.i.i112, align 4
  %356 = and i32 %355, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %tobool6.not.i.i113 = icmp eq i32 %356, 0
  br i1 %tobool6.not.i.i113, label %if.else.i.i114.data_blkaddr.exit.i_crit_edge, label %if.then7.i.i

if.else.i.i114.data_blkaddr.exit.i_crit_edge:     ; preds = %if.else.i.i114
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit.i

if.then7.i.i:                                     ; preds = %if.else.i.i114
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %337, i32 0, i32 29
  %357 = ptrtoint ptr %i_extra_isize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %i_extra_isize.i.i.i, align 4
  %div1.i.i.i = lshr i32 %358, 2
  br label %data_blkaddr.exit.i

data_blkaddr.exit.i:                              ; preds = %if.then7.i.i, %if.else.i.i114.data_blkaddr.exit.i_crit_edge, %cond.true.i.i.i, %if.then3.i.i111.data_blkaddr.exit.i_crit_edge, %for.body.i110.data_blkaddr.exit.i_crit_edge
  %base.0.i.i = phi i32 [ %div1.i.i.i, %if.then7.i.i ], [ 0, %if.else.i.i114.data_blkaddr.exit.i_crit_edge ], [ 0, %for.body.i110.data_blkaddr.exit.i_crit_edge ], [ %div.i.i.i, %cond.true.i.i.i ], [ 0, %if.then3.i.i111.data_blkaddr.exit.i_crit_edge ]
  %footer.i16.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i404.i, i32 0, i32 1
  %359 = ptrtoint ptr %footer.i16.i.i to i32
  call void @__asan_loadN_noabort(i32 %359, i32 4)
  %360 = load i32, ptr %footer.i16.i.i, align 1
  %ino.i17.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i404.i, i32 0, i32 1, i32 1
  %361 = ptrtoint ptr %ino.i17.i.i to i32
  call void @__asan_loadN_noabort(i32 %361, i32 4)
  %362 = load i32, ptr %ino.i17.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %360, i32 %362)
  %cmp.i18.i.i = icmp eq i32 %360, %362
  %363 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i404.i, i32 0, i32 23
  %cond.i19.i.i = select i1 %cmp.i18.i.i, ptr %363, ptr %call.i.i404.i
  %add.i.i = add i32 %add.i, %base.0.i.i
  %arrayidx.i.i115 = getelementptr i32, ptr %cond.i19.i.i, i32 %add.i.i
  %364 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx.i.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %cmp28.i = icmp eq i32 %365, 0
  br i1 %cmp28.i, label %data_blkaddr.exit.i.out_put_dnode.i_crit_edge, label %for.cond.i109

data_blkaddr.exit.i.out_put_dnode.i_crit_edge:    ; preds = %data_blkaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_dnode.i

for.end.i116:                                     ; preds = %for.cond.i109.for.end.i116_crit_edge, %for.cond.preheader.i106.for.end.i116_crit_edge
  %rpages31.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  %366 = ptrtoint ptr %rpages31.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %rpages31.i, align 4
  %arrayidx32.i = getelementptr ptr, ptr %367, i32 %sub.i96
  %368 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx32.i, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %369, i32 0, i32 1, i32 0, i32 2
  %370 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %index.i, align 4
  %add33.i = add i32 %371, 1
  %conv.i = zext i32 %add33.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %372 = ptrtoint ptr %fio.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %fio.i, align 4
  %374 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %288, align 4
  %call35.i = call i32 @f2fs_get_node_info(ptr noundef %373, i32 noundef %375, ptr noundef nonnull %ni.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i117, label %for.end.i116.out_put_dnode.i_crit_edge

for.end.i116.out_put_dnode.i_crit_edge:           ; preds = %for.end.i116
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_dnode.i

if.end38.i117:                                    ; preds = %for.end.i116
  %version39.i = getelementptr inbounds %struct.node_info, ptr %ni.i, i32 0, i32 3
  %376 = ptrtoint ptr %version39.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %version39.i, align 4
  %378 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %377, ptr %version.i, align 4
  %379 = load ptr, ptr @cic_entry_slab, align 4
  %call41.i = call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %379, ptr noundef %250) #16
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %if.end38.i117.out_put_dnode.i_crit_edge, label %if.end44.i

if.end38.i117.out_put_dnode.i_crit_edge:          ; preds = %if.end38.i117
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_dnode.i

if.end44.i:                                       ; preds = %if.end38.i117
  %380 = ptrtoint ptr %call41.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 -168640512, ptr %call41.i, align 4
  %inode45.i = getelementptr inbounds %struct.compress_io_ctx, ptr %call41.i, i32 0, i32 1
  %381 = ptrtoint ptr %inode45.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %246, ptr %inode45.i, align 4
  %pending_pages.i = getelementptr inbounds %struct.compress_io_ctx, ptr %call41.i, i32 0, i32 4
  %valid_nr_cpages.i118 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 8
  %382 = ptrtoint ptr %valid_nr_cpages.i118 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %valid_nr_cpages.i118, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_pages.i, i32 noundef 4) #16
  %384 = ptrtoint ptr %pending_pages.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store volatile i32 %383, ptr %pending_pages.i, align 4
  %385 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %cc, align 4
  %387 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %cluster_size.i.i, align 4
  %i_sb.i.i.i119 = getelementptr inbounds %struct.inode, ptr %386, i32 0, i32 8
  %389 = ptrtoint ptr %i_sb.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %i_sb.i.i.i119, align 4
  %s_fs_info.i.i.i.i120 = getelementptr inbounds %struct.super_block, ptr %390, i32 0, i32 33
  %391 = ptrtoint ptr %s_fs_info.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %s_fs_info.i.i.i.i120, align 16
  %mul.i.i121 = shl i32 %388, 2
  %page_array_slab_size.i.i122 = getelementptr inbounds %struct.f2fs_sb_info, ptr %392, i32 0, i32 140
  %393 = ptrtoint ptr %page_array_slab_size.i.i122 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %page_array_slab_size.i.i122, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i121, i32 %394)
  %cmp.not.i.i123 = icmp ugt i32 %mul.i.i121, %394
  br i1 %cmp.not.i.i123, label %if.end.i.i126, label %if.then.i408.i, !prof !195

if.then.i408.i:                                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i.i124 = getelementptr inbounds %struct.f2fs_sb_info, ptr %392, i32 0, i32 139
  %395 = ptrtoint ptr %page_array_slab.i.i124 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %page_array_slab.i.i124, align 4
  %call3.i407.i = call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %396, ptr noundef %392) #16
  br label %page_array_alloc.exit.i127

if.end.i.i126:                                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i.i125 = call fastcc ptr @f2fs_kzalloc(ptr noundef %392, i32 noundef %mul.i.i121) #16
  br label %page_array_alloc.exit.i127

page_array_alloc.exit.i127:                       ; preds = %if.end.i.i126, %if.then.i408.i
  %retval.0.i409.i = phi ptr [ %call3.i407.i, %if.then.i408.i ], [ %call4.i.i125, %if.end.i.i126 ]
  %rpages49.i = getelementptr inbounds %struct.compress_io_ctx, ptr %call41.i, i32 0, i32 2
  %397 = ptrtoint ptr %rpages49.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %retval.0.i409.i, ptr %rpages49.i, align 4
  %tobool51.not.i = icmp eq ptr %retval.0.i409.i, null
  br i1 %tobool51.not.i, label %page_array_alloc.exit.i127.out_put_cic.i_crit_edge, label %if.end53.i

page_array_alloc.exit.i127.out_put_cic.i_crit_edge: ; preds = %page_array_alloc.exit.i127
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_cic.i

if.end53.i:                                       ; preds = %page_array_alloc.exit.i127
  %398 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %cluster_size.i.i, align 4
  %nr_rpages.i = getelementptr inbounds %struct.compress_io_ctx, ptr %call41.i, i32 0, i32 3
  %400 = ptrtoint ptr %nr_rpages.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %399, ptr %nr_rpages.i, align 4
  %401 = ptrtoint ptr %valid_nr_cpages.i118 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %valid_nr_cpages.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %402)
  %cmp57484.not.i = icmp eq i32 %402, 0
  br i1 %cmp57484.not.i, label %if.end53.i.for.end93.i_crit_edge, label %for.body59.lr.ph.i

if.end53.i.for.end93.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end93.i

for.body59.lr.ph.i:                               ; preds = %if.end53.i
  %cpages.i128 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 6
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %246, i32 0, i32 9
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.inc91.i.for.body59.i_crit_edge, %for.body59.lr.ph.i
  %i.1485.i = phi i32 [ 0, %for.body59.lr.ph.i ], [ %add62.i, %for.inc91.i.for.body59.i_crit_edge ]
  %403 = ptrtoint ptr %cpages.i128 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %cpages.i128, align 4
  %arrayidx60.i = getelementptr ptr, ptr %404, i32 %i.1485.i
  %405 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %arrayidx60.i, align 4
  %407 = ptrtoint ptr %rpages31.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %rpages31.i, align 4
  %add62.i = add nuw i32 %i.1485.i, 1
  %arrayidx63.i = getelementptr ptr, ptr %408, i32 %add62.i
  %409 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %arrayidx63.i, align 4
  %index64.i = getelementptr inbounds %struct.page, ptr %410, i32 0, i32 1, i32 0, i32 2
  %411 = ptrtoint ptr %index64.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %index64.i, align 4
  call fastcc void @attach_page_private(ptr noundef %406, ptr noundef nonnull %call41.i) #16
  %index1.i.i = getelementptr inbounds %struct.page, ptr %406, i32 0, i32 1, i32 0, i32 2
  %413 = ptrtoint ptr %index1.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %412, ptr %index1.i.i, align 4
  %414 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %i_mapping.i.i, align 8
  %mapping.i.i129 = getelementptr inbounds %struct.page, ptr %406, i32 0, i32 1, i32 0, i32 1
  %416 = ptrtoint ptr %mapping.i.i129 to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr %415, ptr %mapping.i.i129, align 4
  %417 = ptrtoint ptr %cpages.i128 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %cpages.i128, align 4
  %arrayidx66.i = getelementptr ptr, ptr %418, i32 %i.1485.i
  %419 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %arrayidx66.i, align 4
  %421 = ptrtoint ptr %compressed_page.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %420, ptr %compressed_page.i, align 4
  %422 = ptrtoint ptr %dn.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dn.i, align 4
  %424 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %287, align 4
  %426 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %289, align 4
  %call.i.i.i410.i = call ptr @page_address(ptr noundef %425) #16
  %footer.i.i411.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i410.i, i32 0, i32 1
  %428 = ptrtoint ptr %footer.i.i411.i to i32
  call void @__asan_loadN_noabort(i32 %428, i32 4)
  %429 = load i32, ptr %footer.i.i411.i, align 1
  %ino.i.i412.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i410.i, i32 0, i32 1, i32 1
  %430 = ptrtoint ptr %ino.i.i412.i to i32
  call void @__asan_loadN_noabort(i32 %430, i32 4)
  %431 = load i32, ptr %ino.i.i412.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %429, i32 %431)
  %cmp.i.i413.i = icmp eq i32 %429, %431
  %call.i.i414.i = call ptr @page_address(ptr noundef %425) #16
  br i1 %cmp.i.i413.i, label %if.then.i416.i, label %for.body59.i.data_blkaddr.exit435.i_crit_edge

for.body59.i.data_blkaddr.exit435.i_crit_edge:    ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit435.i

if.then.i416.i:                                   ; preds = %for.body59.i
  %tobool2.not.i415.i = icmp eq ptr %423, null
  br i1 %tobool2.not.i415.i, label %if.then3.i419.i, label %if.else.i424.i

if.then3.i419.i:                                  ; preds = %if.then.i416.i
  %i_inline.i.i417.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i414.i, i32 0, i32 2
  %432 = ptrtoint ptr %i_inline.i.i417.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %i_inline.i.i417.i, align 1
  %434 = and i8 %433, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %434)
  %tobool.not.i.i418.i = icmp eq i8 %434, 0
  br i1 %tobool.not.i.i418.i, label %if.then3.i419.i.data_blkaddr.exit435.i_crit_edge, label %cond.true.i.i421.i

if.then3.i419.i.data_blkaddr.exit435.i_crit_edge: ; preds = %if.then3.i419.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit435.i

cond.true.i.i421.i:                               ; preds = %if.then3.i419.i
  call void @__sanitizer_cov_trace_pc() #18
  %435 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i414.i, i32 0, i32 23
  %436 = ptrtoint ptr %435 to i32
  call void @__asan_loadN_noabort(i32 %436, i32 2)
  %437 = load i16, ptr %435, align 1
  %438 = call i16 @llvm.bswap.i16(i16 %437) #16
  %439 = lshr i16 %438, 2
  %div.i.i420.i = zext i16 %439 to i32
  br label %data_blkaddr.exit435.i

if.else.i424.i:                                   ; preds = %if.then.i416.i
  %flags.i.i.i422.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %423, i32 0, i32 8
  %440 = ptrtoint ptr %flags.i.i.i422.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load volatile i32, ptr %flags.i.i.i422.i, align 4
  %442 = and i32 %441, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %tobool6.not.i423.i = icmp eq i32 %442, 0
  br i1 %tobool6.not.i423.i, label %if.else.i424.i.data_blkaddr.exit435.i_crit_edge, label %if.then7.i427.i

if.else.i424.i.data_blkaddr.exit435.i_crit_edge:  ; preds = %if.else.i424.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit435.i

if.then7.i427.i:                                  ; preds = %if.else.i424.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i425.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %423, i32 0, i32 29
  %443 = ptrtoint ptr %i_extra_isize.i.i425.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %i_extra_isize.i.i425.i, align 4
  %div1.i.i426.i = lshr i32 %444, 2
  br label %data_blkaddr.exit435.i

data_blkaddr.exit435.i:                           ; preds = %if.then7.i427.i, %if.else.i424.i.data_blkaddr.exit435.i_crit_edge, %cond.true.i.i421.i, %if.then3.i419.i.data_blkaddr.exit435.i_crit_edge, %for.body59.i.data_blkaddr.exit435.i_crit_edge
  %base.0.i428.i = phi i32 [ %div1.i.i426.i, %if.then7.i427.i ], [ 0, %if.else.i424.i.data_blkaddr.exit435.i_crit_edge ], [ 0, %for.body59.i.data_blkaddr.exit435.i_crit_edge ], [ %div.i.i420.i, %cond.true.i.i421.i ], [ 0, %if.then3.i419.i.data_blkaddr.exit435.i_crit_edge ]
  %footer.i16.i429.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i414.i, i32 0, i32 1
  %445 = ptrtoint ptr %footer.i16.i429.i to i32
  call void @__asan_loadN_noabort(i32 %445, i32 4)
  %446 = load i32, ptr %footer.i16.i429.i, align 1
  %ino.i17.i430.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i414.i, i32 0, i32 1, i32 1
  %447 = ptrtoint ptr %ino.i17.i430.i to i32
  call void @__asan_loadN_noabort(i32 %447, i32 4)
  %448 = load i32, ptr %ino.i17.i430.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %446, i32 %448)
  %cmp.i18.i431.i = icmp eq i32 %446, %448
  %449 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i414.i, i32 0, i32 23
  %cond.i19.i432.i = select i1 %cmp.i18.i431.i, ptr %449, ptr %call.i.i414.i
  %add72.i = add i32 %427, %add62.i
  %add.i433.i = add i32 %add72.i, %base.0.i428.i
  %arrayidx.i434.i = getelementptr i32, ptr %cond.i19.i432.i, i32 %add.i433.i
  %450 = ptrtoint ptr %arrayidx.i434.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx.i434.i, align 4
  %452 = call i32 @llvm.bswap.i32(i32 %451) #16
  %453 = ptrtoint ptr %old_blkaddr.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 %452, ptr %old_blkaddr.i, align 4
  call void @f2fs_wait_on_block_writeback(ptr noundef %246, i32 noundef %452) #16
  %454 = ptrtoint ptr %encrypted.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %encrypted.i, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %tobool77.not.i = icmp eq i8 %455, 0
  br i1 %tobool77.not.i, label %data_blkaddr.exit435.i.for.inc91.i_crit_edge, label %if.then78.i

data_blkaddr.exit435.i.for.inc91.i_crit_edge:     ; preds = %data_blkaddr.exit435.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc91.i

if.then78.i:                                      ; preds = %data_blkaddr.exit435.i
  %456 = ptrtoint ptr %rpages31.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %rpages31.i, align 4
  %arrayidx81.i = getelementptr ptr, ptr %457, i32 %add62.i
  %458 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %arrayidx81.i, align 4
  %460 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %459, ptr %page.i, align 4
  %call83.i = call i32 @f2fs_encrypt_one_page(ptr noundef nonnull %fio.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.end86.i, label %out_destroy_crypt.i

if.end86.i:                                       ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #18
  %461 = ptrtoint ptr %encrypted_page.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %encrypted_page.i, align 4
  %463 = ptrtoint ptr %cpages.i128 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cpages.i128, align 4
  %arrayidx89.i = getelementptr ptr, ptr %464, i32 %i.1485.i
  %465 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %462, ptr %arrayidx89.i, align 4
  br label %for.inc91.i

for.inc91.i:                                      ; preds = %if.end86.i, %data_blkaddr.exit435.i.for.inc91.i_crit_edge
  %466 = ptrtoint ptr %valid_nr_cpages.i118 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %valid_nr_cpages.i118, align 4
  %cmp57.i = icmp ult i32 %add62.i, %467
  br i1 %cmp57.i, label %for.inc91.i.for.body59.i_crit_edge, label %for.inc91.i.for.end93.i_crit_edge

for.inc91.i.for.end93.i_crit_edge:                ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end93.i

for.inc91.i.for.body59.i_crit_edge:               ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body59.i

for.end93.i:                                      ; preds = %for.inc91.i.for.end93.i_crit_edge, %if.end53.i.for.end93.i_crit_edge
  call fastcc void @set_cluster_writeback(ptr noundef %cc) #16
  %468 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %cluster_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %469)
  %cmp96486.not.i = icmp eq i32 %469, 0
  br i1 %cmp96486.not.i, label %for.end93.i.for.end184.i_crit_edge, label %for.end93.i.for.body98.i_crit_edge

for.end93.i.for.body98.i_crit_edge:               ; preds = %for.end93.i
  br label %for.body98.i

for.end93.i.for.end184.i_crit_edge:               ; preds = %for.end93.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end184.i

for.cond106.preheader.i:                          ; preds = %for.body98.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %478)
  %cmp108488.not.i = icmp eq i32 %478, 0
  br i1 %cmp108488.not.i, label %for.cond106.preheader.i.for.end184.i_crit_edge, label %for.body110.lr.ph.i

for.cond106.preheader.i.for.end184.i_crit_edge:   ; preds = %for.cond106.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end184.i

for.body110.lr.ph.i:                              ; preds = %for.cond106.preheader.i
  %cpages164.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 6
  br label %for.body110.i

for.body98.i:                                     ; preds = %for.body98.i.for.body98.i_crit_edge, %for.end93.i.for.body98.i_crit_edge
  %i.2487.i = phi i32 [ %inc104.i, %for.body98.i.for.body98.i_crit_edge ], [ 0, %for.end93.i.for.body98.i_crit_edge ]
  %470 = ptrtoint ptr %rpages31.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %rpages31.i, align 4
  %arrayidx100.i = getelementptr ptr, ptr %471, i32 %i.2487.i
  %472 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %arrayidx100.i, align 4
  %474 = ptrtoint ptr %rpages49.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %rpages49.i, align 4
  %arrayidx102.i = getelementptr ptr, ptr %475, i32 %i.2487.i
  %476 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %473, ptr %arrayidx102.i, align 4
  %inc104.i = add nuw i32 %i.2487.i, 1
  %477 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %cluster_size.i.i, align 4
  %cmp96.i = icmp ult i32 %inc104.i, %478
  br i1 %cmp96.i, label %for.body98.i.for.body98.i_crit_edge, label %for.cond106.preheader.i

for.body98.i.for.body98.i_crit_edge:              ; preds = %for.body98.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body98.i

for.body110.i:                                    ; preds = %inode_dec_dirty_pages.exit.i.for.body110.i_crit_edge, %for.body110.lr.ph.i
  %i.3489.i = phi i32 [ 0, %for.body110.lr.ph.i ], [ %inc181.i, %inode_dec_dirty_pages.exit.i.for.body110.i_crit_edge ]
  %479 = ptrtoint ptr %dn.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %dn.i, align 4
  %481 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %287, align 4
  %483 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %289, align 4
  %call.i.i.i.i437.i = call ptr @page_address(ptr noundef %482) #16
  %footer.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i437.i, i32 0, i32 1
  %485 = ptrtoint ptr %footer.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %485, i32 4)
  %486 = load i32, ptr %footer.i.i.i.i, align 1
  %ino.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i437.i, i32 0, i32 1, i32 1
  %487 = ptrtoint ptr %ino.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %487, i32 4)
  %488 = load i32, ptr %ino.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %486, i32 %488)
  %cmp.i.i.i.i = icmp eq i32 %486, %488
  %call.i.i.i438.i = call ptr @page_address(ptr noundef %482) #16
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %for.body110.i.f2fs_data_blkaddr.exit.i_crit_edge

for.body110.i.f2fs_data_blkaddr.exit.i_crit_edge: ; preds = %for.body110.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_data_blkaddr.exit.i

if.then.i.i.i:                                    ; preds = %for.body110.i
  %tobool2.not.i.i.i = icmp eq ptr %480, null
  br i1 %tobool2.not.i.i.i, label %if.then3.i.i.i, label %if.else.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i.i
  %i_inline.i.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i438.i, i32 0, i32 2
  %489 = ptrtoint ptr %i_inline.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %i_inline.i.i.i.i, align 1
  %491 = and i8 %490, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %491)
  %tobool.not.i.i.i.i130 = icmp eq i8 %491, 0
  br i1 %tobool.not.i.i.i.i130, label %if.then3.i.i.i.f2fs_data_blkaddr.exit.i_crit_edge, label %cond.true.i.i.i.i

if.then3.i.i.i.f2fs_data_blkaddr.exit.i_crit_edge: ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_data_blkaddr.exit.i

cond.true.i.i.i.i:                                ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %492 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i438.i, i32 0, i32 23
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_loadN_noabort(i32 %493, i32 2)
  %494 = load i16, ptr %492, align 1
  %495 = call i16 @llvm.bswap.i16(i16 %494) #16
  %496 = lshr i16 %495, 2
  %div.i.i.i.i = zext i16 %496 to i32
  br label %f2fs_data_blkaddr.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  %flags.i.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %480, i32 0, i32 8
  %497 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load volatile i32, ptr %flags.i.i.i.i.i, align 4
  %499 = and i32 %498, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %499)
  %tobool6.not.i.i.i = icmp eq i32 %499, 0
  br i1 %tobool6.not.i.i.i, label %if.else.i.i.i.f2fs_data_blkaddr.exit.i_crit_edge, label %if.then7.i.i.i

if.else.i.i.i.f2fs_data_blkaddr.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_data_blkaddr.exit.i

if.then7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %480, i32 0, i32 29
  %500 = ptrtoint ptr %i_extra_isize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %i_extra_isize.i.i.i.i, align 4
  %div1.i.i.i.i = lshr i32 %501, 2
  br label %f2fs_data_blkaddr.exit.i

f2fs_data_blkaddr.exit.i:                         ; preds = %if.then7.i.i.i, %if.else.i.i.i.f2fs_data_blkaddr.exit.i_crit_edge, %cond.true.i.i.i.i, %if.then3.i.i.i.f2fs_data_blkaddr.exit.i_crit_edge, %for.body110.i.f2fs_data_blkaddr.exit.i_crit_edge
  %base.0.i.i.i = phi i32 [ %div1.i.i.i.i, %if.then7.i.i.i ], [ 0, %if.else.i.i.i.f2fs_data_blkaddr.exit.i_crit_edge ], [ 0, %for.body110.i.f2fs_data_blkaddr.exit.i_crit_edge ], [ %div.i.i.i.i, %cond.true.i.i.i.i ], [ 0, %if.then3.i.i.i.f2fs_data_blkaddr.exit.i_crit_edge ]
  %footer.i16.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i438.i, i32 0, i32 1
  %502 = ptrtoint ptr %footer.i16.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %502, i32 4)
  %503 = load i32, ptr %footer.i16.i.i.i, align 1
  %ino.i17.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i438.i, i32 0, i32 1, i32 1
  %504 = ptrtoint ptr %ino.i17.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %504, i32 4)
  %505 = load i32, ptr %ino.i17.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %503, i32 %505)
  %cmp.i18.i.i.i = icmp eq i32 %503, %505
  %506 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i438.i, i32 0, i32 23
  %cond.i19.i.i.i = select i1 %cmp.i18.i.i.i, ptr %506, ptr %call.i.i.i438.i
  %add.i.i.i = add i32 %base.0.i.i.i, %484
  %arrayidx.i.i.i = getelementptr i32, ptr %cond.i19.i.i.i, i32 %add.i.i.i
  %507 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %arrayidx.i.i.i, align 4
  %509 = call i32 @llvm.bswap.i32(i32 %508) #16
  %510 = ptrtoint ptr %rpages31.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %rpages31.i, align 4
  %arrayidx113.i = getelementptr ptr, ptr %511, i32 %i.3489.i
  %512 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %arrayidx113.i, align 4
  %514 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store ptr %513, ptr %page.i, align 4
  %515 = ptrtoint ptr %old_blkaddr.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 %509, ptr %old_blkaddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3489.i)
  %cmp116.i = icmp eq i32 %i.3489.i, 0
  br i1 %cmp116.i, label %if.then118.i, label %if.end128.i

if.then118.i:                                     ; preds = %f2fs_data_blkaddr.exit.i
  %516 = zext i32 %509 to i64
  call void @__sanitizer_cov_trace_switch(i64 %516, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %509, label %if.then126.i [
    i32 -2, label %if.end124.thread.i
    i32 -1, label %if.then118.i.if.end127.i_crit_edge
    i32 0, label %if.then118.i.if.end127.i_crit_edge370
  ]

if.then118.i.if.end127.i_crit_edge370:            ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127.i

if.then118.i.if.end127.i_crit_edge:               ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127.i

if.end124.thread.i:                               ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #18
  %517 = ptrtoint ptr %compr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %compr_blocks.i, align 4
  %inc123.i = add i32 %518, 1
  store i32 %inc123.i, ptr %compr_blocks.i, align 4
  br label %if.end127.i

if.then126.i:                                     ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @f2fs_invalidate_blocks(ptr noundef %250, i32 noundef %509) #16
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then126.i, %if.end124.thread.i, %if.then118.i.if.end127.i_crit_edge, %if.then118.i.if.end127.i_crit_edge370
  call void @f2fs_update_data_blkaddr(ptr noundef nonnull %dn.i, i32 noundef -2) #16
  br label %unlock_continue.i

if.end128.i:                                      ; preds = %f2fs_data_blkaddr.exit.i
  %519 = ptrtoint ptr %compr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %compr_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %520)
  %tobool130.not.i = icmp eq i32 %520, 0
  br i1 %tobool130.not.i, label %if.end128.i.if.end136.i_crit_edge, label %land.lhs.true.i

if.end128.i.if.end136.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136.i

land.lhs.true.i:                                  ; preds = %if.end128.i
  %521 = zext i32 %509 to i64
  call void @__sanitizer_cov_trace_switch(i64 %521, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %509, label %if.then133.i [
    i32 -1, label %land.lhs.true.i.if.end136.i_crit_edge
    i32 0, label %land.lhs.true.i.if.end136.i_crit_edge371
    i32 -2, label %land.lhs.true.i.if.end136.i_crit_edge372
  ]

land.lhs.true.i.if.end136.i_crit_edge372:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136.i

land.lhs.true.i.if.end136.i_crit_edge371:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136.i

land.lhs.true.i.if.end136.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136.i

if.then133.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %inc135.i = add i32 %520, 1
  %522 = ptrtoint ptr %compr_blocks.i to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 %inc135.i, ptr %compr_blocks.i, align 4
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then133.i, %land.lhs.true.i.if.end136.i_crit_edge, %land.lhs.true.i.if.end136.i_crit_edge371, %land.lhs.true.i.if.end136.i_crit_edge372, %if.end128.i.if.end136.i_crit_edge
  %523 = ptrtoint ptr %valid_nr_cpages.i118 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %valid_nr_cpages.i118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3489.i, i32 %524)
  %cmp138.i = icmp ugt i32 %i.3489.i, %524
  br i1 %cmp138.i, label %if.then140.i, label %do.body.i

if.then140.i:                                     ; preds = %if.end136.i
  %525 = zext i32 %509 to i64
  call void @__sanitizer_cov_trace_switch(i64 %525, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %509, label %if.then142.i [
    i32 -1, label %if.then140.i.unlock_continue.i_crit_edge
    i32 0, label %if.then140.i.unlock_continue.i_crit_edge373
    i32 -2, label %if.then140.i.unlock_continue.i_crit_edge374
  ]

if.then140.i.unlock_continue.i_crit_edge374:      ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock_continue.i

if.then140.i.unlock_continue.i_crit_edge373:      ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock_continue.i

if.then140.i.unlock_continue.i_crit_edge:         ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock_continue.i

if.then142.i:                                     ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @f2fs_invalidate_blocks(ptr noundef %250, i32 noundef %509) #16
  call void @f2fs_update_data_blkaddr(ptr noundef nonnull %dn.i, i32 noundef -1) #16
  br label %unlock_continue.i

do.body.i:                                        ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %508)
  %cmp145.i = icmp eq i32 %508, 0
  br i1 %cmp145.i, label %do.body154.i, label %do.end160.i, !prof !195

do.body154.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1361, 0\0A.popsection", ""() #16, !srcloc !234
  unreachable

do.end160.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %526 = ptrtoint ptr %encrypted.i to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %encrypted.i, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %527)
  %tobool162.not.i = icmp eq i8 %527, 0
  %528 = ptrtoint ptr %cpages164.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %cpages164.i, align 4
  %sub170.i = add i32 %i.3489.i, -1
  %arrayidx171.i = getelementptr ptr, ptr %529, i32 %sub170.i
  %530 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %arrayidx171.i, align 4
  %compressed_page.encrypted_page.i = select i1 %tobool162.not.i, ptr %compressed_page.i, ptr %encrypted_page.i
  %532 = ptrtoint ptr %compressed_page.encrypted_page.i to i32
  call void @__asan_store4_noabort(i32 %532)
  store ptr %531, ptr %compressed_page.encrypted_page.i, align 4
  store ptr null, ptr %arrayidx171.i, align 4
  call void @f2fs_outplace_write_data(ptr noundef nonnull %dn.i, ptr noundef nonnull %fio.i) #16
  %533 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %submitted, align 4
  %inc177.i = add i32 %534, 1
  store i32 %inc177.i, ptr %submitted, align 4
  br label %unlock_continue.i

unlock_continue.i:                                ; preds = %do.end160.i, %if.then142.i, %if.then140.i.unlock_continue.i_crit_edge, %if.then140.i.unlock_continue.i_crit_edge373, %if.then140.i.unlock_continue.i_crit_edge374, %if.end127.i
  %535 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %cc, align 4
  %537 = ptrtoint ptr %536 to i32
  call void @__asan_load2_noabort(i32 %537)
  %538 = load i16, ptr %536, align 8
  %539 = and i16 %538, -4096
  %540 = zext i16 %539 to i64
  call void @__sanitizer_cov_trace_switch(i64 %540, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %539, label %unlock_continue.i.inode_dec_dirty_pages.exit.i_crit_edge [
    i16 16384, label %unlock_continue.i.if.end.i453.i_crit_edge
    i16 -32768, label %unlock_continue.i.if.end.i453.i_crit_edge375
    i16 -24576, label %unlock_continue.i.if.end.i453.i_crit_edge376
  ]

unlock_continue.i.if.end.i453.i_crit_edge376:     ; preds = %unlock_continue.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i453.i

unlock_continue.i.if.end.i453.i_crit_edge375:     ; preds = %unlock_continue.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i453.i

unlock_continue.i.if.end.i453.i_crit_edge:        ; preds = %unlock_continue.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i453.i

unlock_continue.i.inode_dec_dirty_pages.exit.i_crit_edge: ; preds = %unlock_continue.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_dec_dirty_pages.exit.i

if.end.i453.i:                                    ; preds = %unlock_continue.i.if.end.i453.i_crit_edge, %unlock_continue.i.if.end.i453.i_crit_edge375, %unlock_continue.i.if.end.i453.i_crit_edge376
  %dirty_pages.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %536, i32 0, i32 10
  %call.i.i.i447.i = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_pages.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %dirty_pages.i.i, i32 1, i32 3, i32 1) #16
  %541 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_pages.i.i, ptr %dirty_pages.i.i, i32 1, ptr elementtype(i32) %dirty_pages.i.i) #16, !srcloc !213
  %i_sb.i.i448.i = getelementptr inbounds %struct.inode, ptr %536, i32 0, i32 8
  %542 = ptrtoint ptr %i_sb.i.i448.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %i_sb.i.i448.i, align 4
  %s_fs_info.i.i.i449.i = getelementptr inbounds %struct.super_block, ptr %543, i32 0, i32 33
  %544 = ptrtoint ptr %s_fs_info.i.i.i449.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %s_fs_info.i.i.i449.i, align 16
  %546 = ptrtoint ptr %536 to i32
  call void @__asan_load2_noabort(i32 %546)
  %547 = load i16, ptr %536, align 8
  %548 = and i16 %547, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %548)
  %cmp17.i.i = icmp ne i16 %548, 16384
  %cond.i.i = zext i1 %cmp17.i.i to i32
  %arrayidx.i.i450.i = getelementptr %struct.f2fs_sb_info, ptr %545, i32 0, i32 69, i32 %cond.i.i
  %call.i.i.i.i451.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i450.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i450.i, i32 1, i32 3, i32 1) #16
  %549 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i450.i, ptr %arrayidx.i.i450.i, i32 1, ptr elementtype(i32) %arrayidx.i.i450.i) #16, !srcloc !213
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %536, i32 0, i32 4
  %550 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %i_flags.i.i, align 4
  %and19.i.i = and i32 %551, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool.not.i452.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool.not.i452.i, label %if.end.i453.i.inode_dec_dirty_pages.exit.i_crit_edge, label %if.then20.i.i

if.end.i453.i.inode_dec_dirty_pages.exit.i_crit_edge: ; preds = %if.end.i453.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_dec_dirty_pages.exit.i

if.then20.i.i:                                    ; preds = %if.end.i453.i
  call void @__sanitizer_cov_trace_pc() #18
  %552 = ptrtoint ptr %i_sb.i.i448.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %i_sb.i.i448.i, align 4
  %s_fs_info.i.i31.i.i = getelementptr inbounds %struct.super_block, ptr %553, i32 0, i32 33
  %554 = ptrtoint ptr %s_fs_info.i.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %s_fs_info.i.i31.i.i, align 16
  %arrayidx.i32.i.i = getelementptr %struct.f2fs_sb_info, ptr %555, i32 0, i32 69, i32 2
  %call.i.i.i33.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i32.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %arrayidx.i32.i.i, i32 1, i32 3, i32 1) #16
  %556 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i32.i.i, ptr %arrayidx.i32.i.i, i32 1, ptr elementtype(i32) %arrayidx.i32.i.i) #16, !srcloc !213
  br label %inode_dec_dirty_pages.exit.i

inode_dec_dirty_pages.exit.i:                     ; preds = %if.then20.i.i, %if.end.i453.i.inode_dec_dirty_pages.exit.i_crit_edge, %unlock_continue.i.inode_dec_dirty_pages.exit.i_crit_edge
  %557 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %page.i, align 4
  call void @unlock_page(ptr noundef %558) #16
  %inc181.i = add nuw i32 %i.3489.i, 1
  %559 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %289, align 4
  %inc183.i = add i32 %560, 1
  store i32 %inc183.i, ptr %289, align 4
  %561 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %cluster_size.i.i, align 4
  %cmp108.i = icmp ult i32 %inc181.i, %562
  br i1 %cmp108.i, label %inode_dec_dirty_pages.exit.i.for.body110.i_crit_edge, label %inode_dec_dirty_pages.exit.i.for.end184.i_crit_edge

inode_dec_dirty_pages.exit.i.for.end184.i_crit_edge: ; preds = %inode_dec_dirty_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end184.i

inode_dec_dirty_pages.exit.i.for.body110.i_crit_edge: ; preds = %inode_dec_dirty_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body110.i

for.end184.i:                                     ; preds = %inode_dec_dirty_pages.exit.i.for.end184.i_crit_edge, %for.cond106.preheader.i.for.end184.i_crit_edge, %for.end93.i.for.end184.i_crit_edge
  %563 = ptrtoint ptr %compr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %compr_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %564)
  %tobool186.not.i = icmp eq i32 %564, 0
  br i1 %tobool186.not.i, label %for.end184.i.if.end191.i_crit_edge, label %if.then187.i

for.end184.i.if.end191.i_crit_edge:               ; preds = %for.end184.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end191.i

if.then187.i:                                     ; preds = %for.end184.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub189.i = add i32 %564, -1
  %conv190.i = sext i32 %sub189.i to i64
  call fastcc void @f2fs_i_compr_blocks_update(ptr noundef %246, i64 noundef %conv190.i, i1 noundef zeroext false) #16
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.then187.i, %for.end184.i.if.end191.i_crit_edge
  %565 = ptrtoint ptr %valid_nr_cpages.i118 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %valid_nr_cpages.i118, align 4
  %conv193.i = zext i32 %566 to i64
  call fastcc void @f2fs_i_compr_blocks_update(ptr noundef %246, i64 noundef %conv193.i, i1 noundef zeroext true) #16
  %567 = ptrtoint ptr %i_sb.i.i89 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %i_sb.i.i89, align 4
  %s_fs_info.i.i455.i = getelementptr inbounds %struct.super_block, ptr %568, i32 0, i32 33
  %569 = ptrtoint ptr %s_fs_info.i.i455.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %s_fs_info.i.i455.i, align 16
  %i_cluster_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %246, i32 0, i32 39
  %571 = ptrtoint ptr %i_cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %i_cluster_size.i, align 4
  %573 = ptrtoint ptr %valid_nr_cpages.i118 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %valid_nr_cpages.i118, align 4
  %sub199.i = sub i32 %572, %574
  %conv201.i = zext i32 %574 to i64
  %compr_written_block.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %570, i32 0, i32 141
  %575 = ptrtoint ptr %compr_written_block.i to i32
  call void @__asan_load8_noabort(i32 %575)
  %576 = load i64, ptr %compr_written_block.i, align 8
  %add202.i = add i64 %576, %conv201.i
  store i64 %add202.i, ptr %compr_written_block.i, align 8
  %conv203.i = sext i32 %sub199.i to i64
  %compr_saved_block.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %570, i32 0, i32 142
  %577 = ptrtoint ptr %compr_saved_block.i to i32
  call void @__asan_load8_noabort(i32 %577)
  %578 = load i64, ptr %compr_saved_block.i, align 8
  %add204.i = add i64 %578, %conv203.i
  store i64 %add204.i, ptr %compr_saved_block.i, align 8
  %579 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %cc, align 4
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %580, i32 0, i32 8
  call void @_set_bit(i32 noundef 12, ptr noundef %flags.i.i) #16
  %581 = ptrtoint ptr %cluster_idx.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %cluster_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %582)
  %cmp208.i = icmp eq i32 %582, 0
  br i1 %cmp208.i, label %if.then210.i, label %if.end191.i.if.end211.i_crit_edge

if.end191.i.if.end211.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end211.i

if.then210.i:                                     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #18
  %flags.i456.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %246, i32 0, i32 8
  call void @_set_bit(i32 noundef 18, ptr noundef %flags.i456.i) #16
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.then210.i, %if.end191.i.if.end211.i_crit_edge
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %dn.i) #16
  %583 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %i_flags.i.i.i, align 4
  %and213.i = and i32 %584, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213.i)
  %tobool214.not.i = icmp eq i32 %and213.i, 0
  %cp_rwsem.i457.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 20
  %node_write216.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 21
  %cp_rwsem.i457.sink.i = select i1 %tobool214.not.i, ptr %cp_rwsem.i457.i, ptr %node_write216.i
  call void @up_read(ptr noundef %cp_rwsem.i457.sink.i) #16
  %i_size_lock.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %246, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %i_size_lock.i) #16
  %last_disk_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %246, i32 0, i32 16
  %585 = ptrtoint ptr %last_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %585)
  %586 = load i64, ptr %last_disk_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %586, i64 %shl.i)
  %cmp219.i = icmp slt i64 %586, %shl.i
  br i1 %cmp219.i, label %if.then221.i, label %if.end211.i.f2fs_write_compressed_pages.exit.thread_crit_edge

if.end211.i.f2fs_write_compressed_pages.exit.thread_crit_edge: ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_write_compressed_pages.exit.thread

if.then221.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #18
  %587 = ptrtoint ptr %last_disk_size.i to i32
  call void @__asan_store8_noabort(i32 %587)
  store i64 %shl.i, ptr %last_disk_size.i, align 8
  br label %f2fs_write_compressed_pages.exit.thread

f2fs_write_compressed_pages.exit.thread:          ; preds = %if.then221.i, %if.end211.i.f2fs_write_compressed_pages.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_size_lock.i) #16
  %588 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %cluster_size.i.i, align 4
  call fastcc void @f2fs_drop_rpages(ptr noundef %cc, i32 noundef %589, i1 noundef zeroext false) #16
  %590 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %cc, align 4
  %cpages226.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 6
  %592 = ptrtoint ptr %cpages226.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %cpages226.i, align 4
  %nr_cpages.i131 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 7
  %594 = ptrtoint ptr %nr_cpages.i131 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %nr_cpages.i131, align 4
  call fastcc void @page_array_free(ptr noundef %591, ptr noundef %593, i32 noundef %595) #16
  %596 = ptrtoint ptr %cpages226.i to i32
  call void @__asan_store4_noabort(i32 %596)
  store ptr null, ptr %cpages226.i, align 4
  call void @f2fs_destroy_compress_ctx(ptr noundef %cc, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni.i) #16
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn.i) #16
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %fio.i) #16
  br label %cleanup

out_destroy_crypt.i:                              ; preds = %if.then78.i
  %597 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %cc, align 4
  %599 = ptrtoint ptr %rpages49.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %rpages49.i, align 4
  %601 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %cluster_size.i.i, align 4
  call fastcc void @page_array_free(ptr noundef %598, ptr noundef %600, i32 noundef %602) #16
  %i.4492.i = add i32 %i.1485.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.4492.i)
  %cmp232493.i = icmp sgt i32 %i.4492.i, -1
  br i1 %cmp232493.i, label %out_destroy_crypt.i.for.body234.i_crit_edge, label %out_destroy_crypt.i.out_put_cic.i_crit_edge

out_destroy_crypt.i.out_put_cic.i_crit_edge:      ; preds = %out_destroy_crypt.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_cic.i

out_destroy_crypt.i.for.body234.i_crit_edge:      ; preds = %out_destroy_crypt.i
  br label %for.body234.i

for.body234.i:                                    ; preds = %fscrypt_finalize_bounce_page.exit.i.for.body234.i_crit_edge, %out_destroy_crypt.i.for.body234.i_crit_edge
  %i.4494.i = phi i32 [ %i.4.i, %fscrypt_finalize_bounce_page.exit.i.for.body234.i_crit_edge ], [ %i.4492.i, %out_destroy_crypt.i.for.body234.i_crit_edge ]
  %603 = ptrtoint ptr %cpages.i128 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %cpages.i128, align 4
  %arrayidx236.i = getelementptr ptr, ptr %604, i32 %i.4494.i
  %605 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %arrayidx236.i, align 4
  %mapping.i.i.i = getelementptr inbounds %struct.page, ptr %606, i32 0, i32 1, i32 0, i32 1
  %607 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %mapping.i.i.i, align 4
  %cmp.i.i458.i = icmp eq ptr %608, null
  br i1 %cmp.i.i458.i, label %if.then.i459.i, label %for.body234.i.fscrypt_finalize_bounce_page.exit.i_crit_edge

for.body234.i.fscrypt_finalize_bounce_page.exit.i_crit_edge: ; preds = %for.body234.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fscrypt_finalize_bounce_page.exit.i

if.then.i459.i:                                   ; preds = %for.body234.i
  call void @__sanitizer_cov_trace_pc() #18
  %private.i.i.i = getelementptr inbounds %struct.page, ptr %606, i32 0, i32 1, i32 0, i32 3
  %609 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %private.i.i.i, align 4
  %611 = inttoptr i32 %610 to ptr
  %612 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_store4_noabort(i32 %612)
  store ptr %611, ptr %arrayidx236.i, align 4
  call void @fscrypt_free_bounce_page(ptr noundef %606) #16
  br label %fscrypt_finalize_bounce_page.exit.i

fscrypt_finalize_bounce_page.exit.i:              ; preds = %if.then.i459.i, %for.body234.i.fscrypt_finalize_bounce_page.exit.i_crit_edge
  %i.4.i = add i32 %i.4494.i, -1
  %cmp232.i = icmp sgt i32 %i.4.i, -1
  br i1 %cmp232.i, label %fscrypt_finalize_bounce_page.exit.i.for.body234.i_crit_edge, label %fscrypt_finalize_bounce_page.exit.i.out_put_cic.i_crit_edge

fscrypt_finalize_bounce_page.exit.i.out_put_cic.i_crit_edge: ; preds = %fscrypt_finalize_bounce_page.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_cic.i

fscrypt_finalize_bounce_page.exit.i.for.body234.i_crit_edge: ; preds = %fscrypt_finalize_bounce_page.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body234.i

out_put_cic.i:                                    ; preds = %fscrypt_finalize_bounce_page.exit.i.out_put_cic.i_crit_edge, %out_destroy_crypt.i.out_put_cic.i_crit_edge, %page_array_alloc.exit.i127.out_put_cic.i_crit_edge
  %613 = load ptr, ptr @cic_entry_slab, align 4
  call void @kmem_cache_free(ptr noundef %613, ptr noundef nonnull %call41.i) #16
  br label %out_put_dnode.i

out_put_dnode.i:                                  ; preds = %out_put_cic.i, %if.end38.i117.out_put_dnode.i_crit_edge, %for.end.i116.out_put_dnode.i_crit_edge, %data_blkaddr.exit.i.out_put_dnode.i_crit_edge
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %dn.i) #16
  br label %out_unlock_op.i

out_unlock_op.i:                                  ; preds = %out_put_dnode.i, %if.end19.i.out_unlock_op.i_crit_edge
  %614 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %i_flags.i.i.i, align 4
  %and241.i = and i32 %615, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241.i)
  %tobool242.not.i = icmp eq i32 %and241.i, 0
  br i1 %tobool242.not.i, label %if.else245.i, label %if.then243.i

if.then243.i:                                     ; preds = %out_unlock_op.i
  call void @__sanitizer_cov_trace_pc() #18
  %node_write244.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 21
  call void @up_read(ptr noundef %node_write244.i) #16
  br label %out_free.i

if.else245.i:                                     ; preds = %out_unlock_op.i
  call void @__sanitizer_cov_trace_pc() #18
  %cp_rwsem.i461.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %250, i32 0, i32 20
  call void @up_read(ptr noundef %cp_rwsem.i461.i) #16
  br label %out_free.i

out_free.i:                                       ; preds = %if.else245.i, %if.then243.i, %f2fs_trylock_op.exit.i.out_free.i_crit_edge, %do.end.i.i, %if.then.i.i104.out_free.i_crit_edge, %if.then.i101
  %valid_nr_cpages248.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 8
  %616 = ptrtoint ptr %valid_nr_cpages248.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %valid_nr_cpages248.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %617)
  %cmp249495.not.i = icmp eq i32 %617, 0
  br i1 %cmp249495.not.i, label %out_free.i.for.end258.i_crit_edge, label %for.body251.lr.ph.i

out_free.i.for.end258.i_crit_edge:                ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end258.i

for.body251.lr.ph.i:                              ; preds = %out_free.i
  %cpages252.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 6
  br label %for.body251.i

for.body251.i:                                    ; preds = %f2fs_compress_free_page.exit.i138.for.body251.i_crit_edge, %for.body251.lr.ph.i
  %i.5496.i = phi i32 [ 0, %for.body251.lr.ph.i ], [ %inc257.i, %f2fs_compress_free_page.exit.i138.for.body251.i_crit_edge ]
  %618 = ptrtoint ptr %cpages252.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %cpages252.i, align 4
  %arrayidx253.i = getelementptr ptr, ptr %619, i32 %i.5496.i
  %620 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %arrayidx253.i, align 4
  %tobool.not.i462.i = icmp eq ptr %621, null
  br i1 %tobool.not.i462.i, label %for.body251.i.f2fs_compress_free_page.exit.i138_crit_edge, label %if.end.i464.i

for.body251.i.f2fs_compress_free_page.exit.i138_crit_edge: ; preds = %for.body251.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compress_free_page.exit.i138

if.end.i464.i:                                    ; preds = %for.body251.i
  %622 = getelementptr inbounds %struct.page, ptr %621, i32 0, i32 1
  %623 = ptrtoint ptr %622 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load volatile i32, ptr %622, align 4
  %and.i.i.i.i132 = and i32 %624, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i132)
  %tobool.not.i.i.i463.i = icmp eq i32 %and.i.i.i.i132, 0
  br i1 %tobool.not.i.i.i463.i, label %if.end.i.i.i.i135, label %if.then.i.i.i.i134, !prof !197

if.then.i.i.i.i134:                               ; preds = %if.end.i464.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i.i133 = add i32 %624, -1
  br label %detach_page_private.exit.i.i137

if.end.i.i.i.i135:                                ; preds = %if.end.i464.i
  call void @__sanitizer_cov_trace_pc() #18
  %625 = ptrtoint ptr %621 to i32
  br label %detach_page_private.exit.i.i137

detach_page_private.exit.i.i137:                  ; preds = %if.end.i.i.i.i135, %if.then.i.i.i.i134
  %retval.0.i.i.i.i136 = phi i32 [ %sub.i.i.i.i133, %if.then.i.i.i.i134 ], [ %625, %if.end.i.i.i.i135 ]
  %626 = inttoptr i32 %retval.0.i.i.i.i136 to ptr
  call fastcc void @folio_detach_private(ptr noundef %626) #16
  %mapping.i465.i = getelementptr inbounds %struct.page, ptr %621, i32 0, i32 1, i32 0, i32 1
  %627 = ptrtoint ptr %mapping.i465.i to i32
  call void @__asan_store4_noabort(i32 %627)
  store ptr null, ptr %mapping.i465.i, align 4
  call void @unlock_page(ptr noundef nonnull %621) #16
  %628 = load ptr, ptr @compress_page_pool, align 4
  call void @mempool_free(ptr noundef nonnull %621, ptr noundef %628) #16
  br label %f2fs_compress_free_page.exit.i138

f2fs_compress_free_page.exit.i138:                ; preds = %detach_page_private.exit.i.i137, %for.body251.i.f2fs_compress_free_page.exit.i138_crit_edge
  %629 = ptrtoint ptr %cpages252.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %cpages252.i, align 4
  %arrayidx255.i = getelementptr ptr, ptr %630, i32 %i.5496.i
  %631 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_store4_noabort(i32 %631)
  store ptr null, ptr %arrayidx255.i, align 4
  %inc257.i = add nuw i32 %i.5496.i, 1
  %632 = ptrtoint ptr %valid_nr_cpages248.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %valid_nr_cpages248.i, align 4
  %cmp249.i = icmp ult i32 %inc257.i, %633
  br i1 %cmp249.i, label %f2fs_compress_free_page.exit.i138.for.body251.i_crit_edge, label %f2fs_compress_free_page.exit.i138.for.end258.i_crit_edge

f2fs_compress_free_page.exit.i138.for.end258.i_crit_edge: ; preds = %f2fs_compress_free_page.exit.i138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end258.i

f2fs_compress_free_page.exit.i138.for.body251.i_crit_edge: ; preds = %f2fs_compress_free_page.exit.i138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body251.i

for.end258.i:                                     ; preds = %f2fs_compress_free_page.exit.i138.for.end258.i_crit_edge, %out_free.i.for.end258.i_crit_edge
  %634 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %cc, align 4
  %cpages260.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 6
  %636 = ptrtoint ptr %cpages260.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %cpages260.i, align 4
  %i_sb.i.i466.i = getelementptr inbounds %struct.inode, ptr %635, i32 0, i32 8
  %638 = ptrtoint ptr %i_sb.i.i466.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %i_sb.i.i466.i, align 4
  %s_fs_info.i.i.i467.i = getelementptr inbounds %struct.super_block, ptr %639, i32 0, i32 33
  %640 = ptrtoint ptr %s_fs_info.i.i.i467.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %s_fs_info.i.i.i467.i, align 16
  %tobool.not.i468.i = icmp eq ptr %637, null
  br i1 %tobool.not.i468.i, label %for.end258.i.f2fs_write_compressed_pages.exit_crit_edge, label %if.end.i472.i

for.end258.i.f2fs_write_compressed_pages.exit_crit_edge: ; preds = %for.end258.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_write_compressed_pages.exit

if.end.i472.i:                                    ; preds = %for.end258.i
  %nr_cpages261.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 7
  %642 = ptrtoint ptr %nr_cpages261.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %nr_cpages261.i, align 4
  %mul.i469.i = shl i32 %643, 2
  %page_array_slab_size.i470.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %641, i32 0, i32 140
  %644 = ptrtoint ptr %page_array_slab_size.i470.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %page_array_slab_size.i470.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i469.i, i32 %645)
  %cmp.not.i471.i = icmp ugt i32 %mul.i469.i, %645
  br i1 %cmp.not.i471.i, label %if.else.i475.i, label %if.then3.i474.i, !prof !195

if.then3.i474.i:                                  ; preds = %if.end.i472.i
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i473.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %641, i32 0, i32 139
  %646 = ptrtoint ptr %page_array_slab.i473.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %page_array_slab.i473.i, align 4
  call void @kmem_cache_free(ptr noundef %647, ptr noundef nonnull %637) #16
  br label %f2fs_write_compressed_pages.exit

if.else.i475.i:                                   ; preds = %if.end.i472.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %637) #16
  br label %f2fs_write_compressed_pages.exit

f2fs_write_compressed_pages.exit:                 ; preds = %if.else.i475.i, %if.then3.i474.i, %for.end258.i.f2fs_write_compressed_pages.exit_crit_edge
  %648 = ptrtoint ptr %cpages260.i to i32
  call void @__asan_store4_noabort(i32 %648)
  store ptr null, ptr %cpages260.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni.i) #16
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn.i) #16
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %fio.i) #16
  br label %do.body31

do.body31:                                        ; preds = %f2fs_write_compressed_pages.exit, %do.body, %cluster_may_compress.exit.do.body31_crit_edge, %if.end7.i.do.body31_crit_edge, %if.end4.i.do.body31_crit_edge, %if.end.i.do.body31_crit_edge, %land.lhs.true.i.i.do.body31_crit_edge, %if.end.i.i.do.body31_crit_edge, %f2fs_compressed_file.exit.i.i.do.body31_crit_edge, %entry.do.body31_crit_edge
  %649 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %submitted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %650)
  %tobool32.not = icmp eq i32 %650, 0
  br i1 %tobool32.not, label %do.end48, label %do.body40, !prof !197

do.body40:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1549, 0\0A.popsection", ""() #16, !srcloc !235
  unreachable

do.end48:                                         ; preds = %do.body31
  %651 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %cc, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %652, i32 0, i32 9
  %653 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %i_mapping.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_submitted.i) #16
  %655 = ptrtoint ptr %_submitted.i to i32
  call void @__asan_store4_noabort(i32 %655)
  store i32 -1, ptr %_submitted.i, align 4, !annotation !220
  %cluster_idx.i.i141 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 1
  %656 = ptrtoint ptr %cluster_idx.i.i141 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %cluster_idx.i.i141, align 4
  %call.i.i142 = call fastcc i32 @__f2fs_cluster_blocks(ptr noundef %652, i32 noundef %657, i1 noundef zeroext true) #16
  %cluster_size.i143 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %658 = ptrtoint ptr %cluster_size.i143 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %cluster_size.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %659)
  %cmp137.not.i = icmp eq i32 %659, 0
  br i1 %cmp137.not.i, label %do.end48.for.end.i153_crit_edge, label %for.body.lr.ph.i145

do.end48.for.end.i153_crit_edge:                  ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i153

for.body.lr.ph.i145:                              ; preds = %do.end48
  %rpages.i144 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  br label %for.body.i148

for.body.i148:                                    ; preds = %for.inc.i152.for.body.i148_crit_edge, %for.body.lr.ph.i145
  %i.0138.i = phi i32 [ 0, %for.body.lr.ph.i145 ], [ %inc.i150, %for.inc.i152.for.body.i148_crit_edge ]
  %660 = ptrtoint ptr %rpages.i144 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %rpages.i144, align 4
  %arrayidx.i146 = getelementptr ptr, ptr %661, i32 %i.0138.i
  %662 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %arrayidx.i146, align 4
  %tobool.not.i147 = icmp eq ptr %663, null
  br i1 %tobool.not.i147, label %for.body.i148.for.inc.i152_crit_edge, label %if.end.i149

for.body.i148.for.inc.i152_crit_edge:             ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i152

if.end.i149:                                      ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef nonnull %663) #16
  %664 = ptrtoint ptr %rpages.i144 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %rpages.i144, align 4
  %arrayidx5.i = getelementptr ptr, ptr %665, i32 %i.0138.i
  %666 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %arrayidx5.i, align 4
  call void @unlock_page(ptr noundef %667) #16
  br label %for.inc.i152

for.inc.i152:                                     ; preds = %if.end.i149, %for.body.i148.for.inc.i152_crit_edge
  %inc.i150 = add nuw i32 %i.0138.i, 1
  %668 = ptrtoint ptr %cluster_size.i143 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %cluster_size.i143, align 4
  %cmp.i151 = icmp ult i32 %inc.i150, %669
  br i1 %cmp.i151, label %for.inc.i152.for.body.i148_crit_edge, label %for.inc.i152.for.end.i153_crit_edge

for.inc.i152.for.end.i153_crit_edge:              ; preds = %for.inc.i152
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i153

for.inc.i152.for.body.i148_crit_edge:             ; preds = %for.inc.i152
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i148

for.end.i153:                                     ; preds = %for.inc.i152.for.end.i153_crit_edge, %do.end48.for.end.i153_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp6.i = icmp slt i32 %call.i.i142, 0
  br i1 %cmp6.i, label %for.end.i153.f2fs_write_raw_pages.exit_crit_edge, label %for.cond9.preheader.i

for.end.i153.f2fs_write_raw_pages.exit_crit_edge: ; preds = %for.end.i153
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_write_raw_pages.exit

for.cond9.preheader.i:                            ; preds = %for.end.i153
  %670 = ptrtoint ptr %cluster_size.i143 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %cluster_size.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %671)
  %cmp11140.not.i = icmp eq i32 %671, 0
  br i1 %cmp11140.not.i, label %for.cond9.preheader.i.for.end62.i_crit_edge, label %for.body12.lr.ph.i

for.cond9.preheader.i.for.end62.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end62.i

for.body12.lr.ph.i:                               ; preds = %for.cond9.preheader.i
  %rpages13.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc60.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %i.1141.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc61.i, %for.inc60.i.for.body12.i_crit_edge ]
  %672 = ptrtoint ptr %rpages13.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %rpages13.i, align 4
  %arrayidx14.i = getelementptr ptr, ptr %673, i32 %i.1141.i
  %674 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %675, null
  br i1 %tobool15.not.i, label %for.body12.i.for.inc60.i_crit_edge, label %for.body12.i.retry_write.i_crit_edge

for.body12.i.retry_write.i_crit_edge:             ; preds = %for.body12.i
  br label %retry_write.i

for.body12.i.for.inc60.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc60.i

retry_write.i:                                    ; preds = %if.end53.i167, %for.body12.i.retry_write.i_crit_edge
  %676 = ptrtoint ptr %rpages13.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %rpages13.i, align 4
  %arrayidx19.i = getelementptr ptr, ptr %677, i32 %i.1141.i
  %678 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %arrayidx19.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.49, i32 noundef 788) #16
  %680 = getelementptr inbounds %struct.page, ptr %679, i32 0, i32 1
  %681 = ptrtoint ptr %680 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load volatile i32, ptr %680, align 4
  %and.i.i104.i = and i32 %682, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104.i)
  %tobool.not.i.i105.i = icmp eq i32 %and.i.i104.i, 0
  br i1 %tobool.not.i.i105.i, label %if.end.i.i108.i, label %if.then.i.i107.i, !prof !197

if.then.i.i107.i:                                 ; preds = %retry_write.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i106.i = add i32 %682, -1
  br label %_compound_head.exit.i110.i

if.end.i.i108.i:                                  ; preds = %retry_write.i
  call void @__sanitizer_cov_trace_pc() #18
  %683 = ptrtoint ptr %679 to i32
  br label %_compound_head.exit.i110.i

_compound_head.exit.i110.i:                       ; preds = %if.end.i.i108.i, %if.then.i.i107.i
  %retval.0.i.i109.i = phi i32 [ %sub.i.i106.i, %if.then.i.i107.i ], [ %683, %if.end.i.i108.i ]
  %684 = inttoptr i32 %retval.0.i.i109.i to ptr
  %685 = getelementptr inbounds %struct.page, ptr %684, i32 0, i32 1
  %686 = ptrtoint ptr %685 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load volatile i32, ptr %685, align 4
  %and.i.i.i.i.i154 = and i32 %687, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i154)
  %tobool.not.i.i.i.i155 = icmp eq i32 %and.i.i.i.i.i154, 0
  br i1 %tobool.not.i.i.i.i155, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i156, !prof !197

if.then.i.i.i.i156:                               ; preds = %_compound_head.exit.i110.i
  call void @__sanitizer_cov_trace_pc() #18
  %688 = inttoptr i32 %retval.0.i.i109.i to ptr
  call void @dump_page(ptr noundef %688, ptr noundef nonnull @.str.43) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i110.i
  %call.i.i.i.i.i157 = call zeroext i1 @__kasan_check_write(ptr noundef %684, i32 noundef 4) #16
  %689 = ptrtoint ptr %684 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load volatile i32, ptr %684, align 4
  %and.i.i4.i.i.i = and i32 %690, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i.i.if.then.i111.i_crit_edge

folio_flags.exit.i.i.i.if.then.i111.i_crit_edge:  ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i111.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i.i
  call void @llvm.prefetch.p0(ptr %684, i32 1, i32 3, i32 1) #16
  %691 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %684, ptr %684, i32 1, ptr elementtype(i32) %684) #16, !srcloc !207
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %691, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !208
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge, label %folio_trylock.exit.i.i.if.then.i111.i_crit_edge

folio_trylock.exit.i.i.if.then.i111.i_crit_edge:  ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i111.i

folio_trylock.exit.i.i.lock_page.exit.i_crit_edge: ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lock_page.exit.i

if.then.i111.i:                                   ; preds = %folio_trylock.exit.i.i.if.then.i111.i_crit_edge, %folio_flags.exit.i.i.i.if.then.i111.i_crit_edge
  call void @__folio_lock(ptr noundef %684) #16
  br label %lock_page.exit.i

lock_page.exit.i:                                 ; preds = %if.then.i111.i, %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge
  %692 = ptrtoint ptr %rpages13.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %rpages13.i, align 4
  %arrayidx21.i = getelementptr ptr, ptr %693, i32 %i.1141.i
  %694 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %arrayidx21.i, align 4
  %mapping22.i = getelementptr inbounds %struct.page, ptr %695, i32 0, i32 1, i32 0, i32 1
  %696 = ptrtoint ptr %mapping22.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %mapping22.i, align 4
  %cmp23.not.i = icmp eq ptr %697, %654
  br i1 %cmp23.not.i, label %if.end27.i, label %lock_page.exit.i.continue_unlock.i_crit_edge

lock_page.exit.i.continue_unlock.i_crit_edge:     ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %continue_unlock.i

continue_unlock.i:                                ; preds = %if.end33.i.continue_unlock.i_crit_edge, %PageDirty.exit.i.continue_unlock.i_crit_edge, %lock_page.exit.i.continue_unlock.i_crit_edge
  %698 = ptrtoint ptr %rpages13.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %rpages13.i, align 4
  %arrayidx26.i = getelementptr ptr, ptr %699, i32 %i.1141.i
  %700 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %arrayidx26.i, align 4
  call void @unlock_page(ptr noundef %701) #16
  br label %for.inc60.i

if.end27.i:                                       ; preds = %lock_page.exit.i
  %702 = getelementptr inbounds %struct.page, ptr %695, i32 0, i32 1
  %703 = ptrtoint ptr %702 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load volatile i32, ptr %702, align 4
  %and.i.i.i158 = and i32 %704, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i158)
  %tobool.not.i.i.i159 = icmp eq i32 %and.i.i.i158, 0
  br i1 %tobool.not.i.i.i159, label %if.end.i.i.i161, label %if.then.i.i.i160, !prof !197

if.then.i.i.i160:                                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = add i32 %704, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i161:                                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %705 = ptrtoint ptr %695 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i161, %if.then.i.i.i160
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i160 ], [ %705, %if.end.i.i.i161 ]
  %706 = inttoptr i32 %retval.0.i.i.i to ptr
  %707 = ptrtoint ptr %706 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load volatile i32, ptr %706, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %708)
  %cmp.i.not.i.i = icmp eq i32 %708, -1
  %709 = ptrtoint ptr %702 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load volatile i32, ptr %702, align 4
  %and.i13.i.i = and i32 %710, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i162, label %do.end8.i.i, !prof !195

if.then.i.i162:                                   ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i17.i.i, label %if.then.i16.i.i, !prof !197

if.then.i16.i.i:                                  ; preds = %if.then.i.i162
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i15.i.i = add i32 %710, -1
  br label %_compound_head.exit19.i.i

if.end.i17.i.i:                                   ; preds = %if.then.i.i162
  call void @__sanitizer_cov_trace_pc() #18
  %711 = ptrtoint ptr %695 to i32
  br label %_compound_head.exit19.i.i

_compound_head.exit19.i.i:                        ; preds = %if.end.i17.i.i, %if.then.i16.i.i
  %retval.0.i18.i.i = phi i32 [ %sub.i15.i.i, %if.then.i16.i.i ], [ %711, %if.end.i17.i.i ]
  %712 = inttoptr i32 %retval.0.i18.i.i to ptr
  call void @dump_page(ptr noundef %712, ptr noundef nonnull @.str.45) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #16, !srcloc !236
  unreachable

do.end8.i.i:                                      ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i24.i.i, label %if.then.i23.i.i, !prof !197

if.then.i23.i.i:                                  ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i22.i.i = add i32 %710, -1
  br label %PageDirty.exit.i

if.end.i24.i.i:                                   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %713 = ptrtoint ptr %695 to i32
  br label %PageDirty.exit.i

PageDirty.exit.i:                                 ; preds = %if.end.i24.i.i, %if.then.i23.i.i
  %retval.0.i25.i.i = phi i32 [ %sub.i22.i.i, %if.then.i23.i.i ], [ %713, %if.end.i24.i.i ]
  %714 = inttoptr i32 %retval.0.i25.i.i to ptr
  %715 = ptrtoint ptr %714 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load volatile i32, ptr %714, align 4
  %717 = and i32 %716, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %717)
  %tobool31.not.i = icmp eq i32 %717, 0
  br i1 %tobool31.not.i, label %PageDirty.exit.i.continue_unlock.i_crit_edge, label %if.end33.i

PageDirty.exit.i.continue_unlock.i_crit_edge:     ; preds = %PageDirty.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %continue_unlock.i

if.end33.i:                                       ; preds = %PageDirty.exit.i
  %call36.i = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %695) #16
  br i1 %call36.i, label %if.end38.i164, label %if.end33.i.continue_unlock.i_crit_edge

if.end33.i.continue_unlock.i_crit_edge:           ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %continue_unlock.i

if.end38.i164:                                    ; preds = %if.end33.i
  %718 = ptrtoint ptr %rpages13.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %rpages13.i, align 4
  %arrayidx40.i = getelementptr ptr, ptr %719, i32 %i.1141.i
  %720 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %arrayidx40.i, align 4
  %call41.i163 = call i32 @f2fs_write_single_data_page(ptr noundef %721, ptr noundef nonnull %_submitted.i, ptr noundef null, ptr noundef null, ptr noundef %wbc, i32 noundef %io_type, i32 noundef %call.i.i142, i1 noundef zeroext false) #16
  %722 = zext i32 %call41.i163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %722, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call41.i163, label %if.end38.i164.f2fs_write_raw_pages.exit_crit_edge [
    i32 0, label %if.end59.i
    i32 524288, label %if.then45.i
    i32 -11, label %if.then49.i
  ]

if.end38.i164.f2fs_write_raw_pages.exit_crit_edge: ; preds = %if.end38.i164
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_write_raw_pages.exit

if.then45.i:                                      ; preds = %if.end38.i164
  call void @__sanitizer_cov_trace_pc() #18
  %723 = ptrtoint ptr %rpages13.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %rpages13.i, align 4
  %arrayidx47.i = getelementptr ptr, ptr %724, i32 %i.1141.i
  %725 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %arrayidx47.i, align 4
  call void @unlock_page(ptr noundef %726) #16
  br label %f2fs_write_raw_pages.exit

if.then49.i:                                      ; preds = %if.end38.i164
  %727 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %cc, align 4
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %728, i32 0, i32 4
  %729 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %i_flags.i, align 4
  %and.i165 = and i32 %730, 32
  %tobool51.not.i166 = icmp eq i32 %and.i165, 0
  br i1 %tobool51.not.i166, label %if.end53.i167, label %if.then49.i.f2fs_write_raw_pages.exit_crit_edge

if.then49.i.f2fs_write_raw_pages.exit_crit_edge:  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_write_raw_pages.exit

if.end53.i167:                                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1508, i32 noundef 0) #16
  %call.i112.i = call i32 @__cond_resched() #16
  %call56.i = call i32 @congestion_wait(i32 noundef 0, i32 noundef 2) #16
  br label %retry_write.i

if.end59.i:                                       ; preds = %if.end38.i164
  call void @__sanitizer_cov_trace_pc() #18
  %731 = ptrtoint ptr %_submitted.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load i32, ptr %_submitted.i, align 4
  %733 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %submitted, align 4
  %add.i168 = add i32 %734, %732
  store i32 %add.i168, ptr %submitted, align 4
  br label %for.inc60.i

for.inc60.i:                                      ; preds = %if.end59.i, %continue_unlock.i, %for.body12.i.for.inc60.i_crit_edge
  %inc61.i = add nuw i32 %i.1141.i, 1
  %735 = ptrtoint ptr %cluster_size.i143 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %cluster_size.i143, align 4
  %cmp11.i = icmp ult i32 %inc61.i, %736
  br i1 %cmp11.i, label %for.inc60.i.for.body12.i_crit_edge, label %for.inc60.i.for.end62.i_crit_edge

for.inc60.i.for.end62.i_crit_edge:                ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end62.i

for.inc60.i.for.body12.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i

for.end62.i:                                      ; preds = %for.inc60.i.for.end62.i_crit_edge, %for.cond9.preheader.i.for.end62.i_crit_edge
  %737 = ptrtoint ptr %654 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %654, align 4
  %i_sb.i.i.i169 = getelementptr inbounds %struct.inode, ptr %738, i32 0, i32 8
  %739 = ptrtoint ptr %i_sb.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %i_sb.i.i.i169, align 4
  %s_fs_info.i.i.i.i170 = getelementptr inbounds %struct.super_block, ptr %740, i32 0, i32 33
  %741 = ptrtoint ptr %s_fs_info.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %s_fs_info.i.i.i.i170, align 16
  call void @f2fs_balance_fs(ptr noundef %742, i1 noundef zeroext true) #16
  br label %f2fs_write_raw_pages.exit

f2fs_write_raw_pages.exit:                        ; preds = %for.end62.i, %if.then49.i.f2fs_write_raw_pages.exit_crit_edge, %if.then45.i, %if.end38.i164.f2fs_write_raw_pages.exit_crit_edge, %for.end.i153.f2fs_write_raw_pages.exit_crit_edge
  %retval.0.i171 = phi i32 [ 0, %for.end62.i ], [ %call.i.i142, %for.end.i153.f2fs_write_raw_pages.exit_crit_edge ], [ 0, %if.then45.i ], [ 0, %if.then49.i.f2fs_write_raw_pages.exit_crit_edge ], [ %call41.i163, %if.end38.i164.f2fs_write_raw_pages.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_submitted.i) #16
  %743 = ptrtoint ptr %cluster_size.i143 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %cluster_size.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %744)
  %cmp15.not.i173 = icmp eq i32 %744, 0
  br i1 %cmp15.not.i173, label %f2fs_write_raw_pages.exit.destroy_out_crit_edge, label %for.body.lr.ph.i175

f2fs_write_raw_pages.exit.destroy_out_crit_edge:  ; preds = %f2fs_write_raw_pages.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_out

for.body.lr.ph.i175:                              ; preds = %f2fs_write_raw_pages.exit
  %rpages.i174 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  br label %for.body.i179

for.body.i179:                                    ; preds = %for.inc.i184.for.body.i179_crit_edge, %for.body.lr.ph.i175
  %i.016.i176 = phi i32 [ 0, %for.body.lr.ph.i175 ], [ %inc.i182, %for.inc.i184.for.body.i179_crit_edge ]
  %745 = ptrtoint ptr %rpages.i174 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %rpages.i174, align 4
  %arrayidx.i177 = getelementptr ptr, ptr %746, i32 %i.016.i176
  %747 = ptrtoint ptr %arrayidx.i177 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %arrayidx.i177, align 4
  %tobool.not.i178 = icmp eq ptr %748, null
  br i1 %tobool.not.i178, label %for.body.i179.for.inc.i184_crit_edge, label %if.end.i207

for.body.i179.for.inc.i184_crit_edge:             ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i184

if.end.i207:                                      ; preds = %for.body.i179
  %749 = getelementptr inbounds %struct.page, ptr %748, i32 0, i32 1
  %750 = ptrtoint ptr %749 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load volatile i32, ptr %749, align 4
  %and.i.i17.i = and i32 %751, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !197

if.then.i.i20.i:                                  ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i = add i32 %751, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #18
  %752 = ptrtoint ptr %748 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %752, %if.end.i.i21.i ]
  %753 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %753, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  %754 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %755)
  %cmp.i.i.i.i.i = icmp eq i32 %755, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !195

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  %756 = inttoptr i32 %retval.0.i.i22.i to ptr
  call void @dump_page(ptr noundef %756, ptr noundef nonnull @.str.42) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !217
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !214
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %757 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #16, !srcloc !215
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %757, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_write_multi_pages, %if.then.i.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !201

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %753, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.for.inc.i184_crit_edge

folio_put_testzero.exit.i.i.i.for.inc.i184_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i184

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__put_page(ptr noundef %753) #16
  br label %for.inc.i184

for.inc.i184:                                     ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.for.inc.i184_crit_edge, %for.body.i179.for.inc.i184_crit_edge
  %inc.i182 = add nuw i32 %i.016.i176, 1
  %758 = ptrtoint ptr %cluster_size.i143 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %cluster_size.i143, align 4
  %cmp.i183 = icmp ult i32 %inc.i182, %759
  br i1 %cmp.i183, label %for.inc.i184.for.body.i179_crit_edge, label %for.inc.i184.destroy_out_crit_edge

for.inc.i184.destroy_out_crit_edge:               ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_out

for.inc.i184.for.body.i179_crit_edge:             ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i179

destroy_out:                                      ; preds = %for.inc.i184.destroy_out_crit_edge, %f2fs_write_raw_pages.exit.destroy_out_crit_edge, %for.inc.i.destroy_out_crit_edge, %if.then9.destroy_out_crit_edge
  %err.0 = phi i32 [ %ret.4.i, %if.then9.destroy_out_crit_edge ], [ %retval.0.i171, %f2fs_write_raw_pages.exit.destroy_out_crit_edge ], [ %retval.0.i171, %for.inc.i184.destroy_out_crit_edge ], [ %ret.4.i, %for.inc.i.destroy_out_crit_edge ]
  %760 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %cc, align 4
  %rpages.i187 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  %762 = ptrtoint ptr %rpages.i187 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %rpages.i187, align 4
  %i_sb.i.i.i188 = getelementptr inbounds %struct.inode, ptr %761, i32 0, i32 8
  %764 = ptrtoint ptr %i_sb.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %i_sb.i.i.i188, align 4
  %s_fs_info.i.i.i.i189 = getelementptr inbounds %struct.super_block, ptr %765, i32 0, i32 33
  %766 = ptrtoint ptr %s_fs_info.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %s_fs_info.i.i.i.i189, align 16
  %tobool.not.i.i190 = icmp eq ptr %763, null
  br i1 %tobool.not.i.i190, label %destroy_out.f2fs_destroy_compress_ctx.exit_crit_edge, label %if.end.i.i195

destroy_out.f2fs_destroy_compress_ctx.exit_crit_edge: ; preds = %destroy_out
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_destroy_compress_ctx.exit

if.end.i.i195:                                    ; preds = %destroy_out
  %cluster_size.i191 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %768 = ptrtoint ptr %cluster_size.i191 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %cluster_size.i191, align 4
  %mul.i.i192 = shl i32 %769, 2
  %page_array_slab_size.i.i193 = getelementptr inbounds %struct.f2fs_sb_info, ptr %767, i32 0, i32 140
  %770 = ptrtoint ptr %page_array_slab_size.i.i193 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %page_array_slab_size.i.i193, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i192, i32 %771)
  %cmp.not.i.i194 = icmp ugt i32 %mul.i.i192, %771
  br i1 %cmp.not.i.i194, label %if.else.i.i198, label %if.then3.i.i197, !prof !195

if.then3.i.i197:                                  ; preds = %if.end.i.i195
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i.i196 = getelementptr inbounds %struct.f2fs_sb_info, ptr %767, i32 0, i32 139
  %772 = ptrtoint ptr %page_array_slab.i.i196 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %page_array_slab.i.i196, align 4
  call void @kmem_cache_free(ptr noundef %773, ptr noundef nonnull %763) #16
  br label %f2fs_destroy_compress_ctx.exit

if.else.i.i198:                                   ; preds = %if.end.i.i195
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %763) #16
  br label %f2fs_destroy_compress_ctx.exit

f2fs_destroy_compress_ctx.exit:                   ; preds = %if.else.i.i198, %if.then3.i.i197, %destroy_out.f2fs_destroy_compress_ctx.exit_crit_edge
  %774 = ptrtoint ptr %rpages.i187 to i32
  call void @__asan_store4_noabort(i32 %774)
  store ptr null, ptr %rpages.i187, align 4
  %nr_rpages.i199 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 5
  %775 = ptrtoint ptr %nr_rpages.i199 to i32
  call void @__asan_store4_noabort(i32 %775)
  store i32 0, ptr %nr_rpages.i199, align 4
  %nr_cpages.i200 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 7
  %776 = ptrtoint ptr %nr_cpages.i200 to i32
  call void @__asan_store4_noabort(i32 %776)
  store i32 0, ptr %nr_cpages.i200, align 4
  %valid_nr_cpages.i201 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 8
  %777 = ptrtoint ptr %valid_nr_cpages.i201 to i32
  call void @__asan_store4_noabort(i32 %777)
  store i32 0, ptr %valid_nr_cpages.i201, align 4
  %cluster_idx.i203 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 1
  %778 = ptrtoint ptr %cluster_idx.i203 to i32
  call void @__asan_store4_noabort(i32 %778)
  store i32 -1, ptr %cluster_idx.i203, align 4
  br label %cleanup

cleanup:                                          ; preds = %f2fs_destroy_compress_ctx.exit, %f2fs_write_compressed_pages.exit.thread
  %retval.0 = phi i32 [ %err.0, %f2fs_destroy_compress_ctx.exit ], [ 0, %f2fs_write_compressed_pages.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_alloc_dic(ptr nocapture noundef readonly %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_idx.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 1
  %0 = ptrtoint ptr %cluster_idx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cluster_idx.i, align 4
  %log_cluster_size.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 3
  %2 = ptrtoint ptr %log_cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %log_cluster_size.i, align 4
  %shl.i = shl i32 %1, %3
  %4 = load ptr, ptr @dic_entry_slab, align 4
  %5 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cc, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2 = tail call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %4, ptr noundef %10)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %if.end

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cc, align 4
  %cluster_size = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %13 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cluster_size, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mul.i = shl i32 %14, 2
  %page_array_slab_size.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %18, i32 0, i32 140
  %19 = ptrtoint ptr %page_array_slab_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_array_slab_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %20)
  %cmp.not.i = icmp ugt i32 %mul.i, %20
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !195

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %18, i32 0, i32 139
  %21 = ptrtoint ptr %page_array_slab.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page_array_slab.i, align 4
  %call3.i = tail call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %22, ptr noundef %18) #16
  br label %page_array_alloc.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = tail call fastcc ptr @f2fs_kzalloc(ptr noundef %18, i32 noundef %mul.i) #16
  br label %page_array_alloc.exit

page_array_alloc.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call3.i, %if.then.i ], [ %call4.i, %if.end.i ]
  %rpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 5
  %23 = ptrtoint ptr %rpages to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i, ptr %rpages, align 4
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %page_array_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  %24 = load ptr, ptr @dic_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef nonnull %call2) #16
  br label %cleanup49

if.end10:                                         ; preds = %page_array_alloc.exit
  %25 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -168640512, ptr %call2, align 4
  %26 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cc, align 4
  %inode12 = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 1
  %28 = ptrtoint ptr %inode12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %inode12, align 4
  %remaining_pages = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 14
  %nr_cpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 7
  %29 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_cpages, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining_pages, i32 noundef 4) #16
  %31 = ptrtoint ptr %remaining_pages to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %30, ptr %remaining_pages, align 4
  %32 = ptrtoint ptr %cluster_idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cluster_idx.i, align 4
  %cluster_idx13 = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 2
  %34 = ptrtoint ptr %cluster_idx13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %cluster_idx13, align 4
  %35 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cluster_size, align 4
  %cluster_size15 = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 3
  %37 = ptrtoint ptr %cluster_size15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cluster_size15, align 4
  %38 = ptrtoint ptr %log_cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %log_cluster_size.i, align 4
  %log_cluster_size16 = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 4
  %40 = ptrtoint ptr %log_cluster_size16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %log_cluster_size16, align 4
  %41 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_cpages, align 4
  %nr_cpages18 = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 8
  %43 = ptrtoint ptr %nr_cpages18 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %nr_cpages18, align 4
  %refcnt = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #16
  %44 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %refcnt, align 4
  %failed = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 16
  %45 = ptrtoint ptr %failed to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %failed, align 4
  %46 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cc, align 4
  %i_verity_info.i.i.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 53
  %48 = ptrtoint ptr %i_verity_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %i_verity_info.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !237
  %cmp.i.not.i = icmp eq ptr %49, null
  br i1 %cmp.i.not.i, label %if.end10.f2fs_need_verity.exit_crit_edge, label %land.rhs.i

if.end10.f2fs_need_verity.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_need_verity.exit

land.rhs.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = zext i32 %shl.i to i64
  %i_size.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 14
  %50 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %51, 4095
  %div.i = sdiv i64 %sub.i, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %div.i, i64 %conv.i)
  %cmp.i = icmp sgt i64 %div.i, %conv.i
  br label %f2fs_need_verity.exit

f2fs_need_verity.exit:                            ; preds = %land.rhs.i, %if.end10.f2fs_need_verity.exit_crit_edge
  %52 = phi i1 [ false, %if.end10.f2fs_need_verity.exit_crit_edge ], [ %cmp.i, %land.rhs.i ]
  %need_verity = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 17
  %frombool = zext i1 %52 to i8
  %53 = ptrtoint ptr %need_verity to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %frombool, ptr %need_verity, align 1
  %54 = ptrtoint ptr %cluster_size15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cluster_size15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp113.not = icmp eq i32 %55, 0
  br i1 %cmp113.not, label %f2fs_need_verity.exit.for.end_crit_edge, label %for.body.lr.ph

f2fs_need_verity.exit.for.end_crit_edge:          ; preds = %f2fs_need_verity.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %f2fs_need_verity.exit
  %rpages22 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %56 = ptrtoint ptr %rpages22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rpages22, align 4
  %arrayidx = getelementptr ptr, ptr %57, i32 %i.0114
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %60 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rpages, align 4
  %arrayidx24 = getelementptr ptr, ptr %61, i32 %i.0114
  %62 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %arrayidx24, align 4
  %inc = add nuw i32 %i.0114, 1
  %63 = ptrtoint ptr %cluster_size15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cluster_size15, align 4
  %cmp = icmp ult i32 %inc, %64
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %f2fs_need_verity.exit.for.end_crit_edge
  %65 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cluster_size, align 4
  %nr_rpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 6
  %67 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %nr_rpages, align 4
  %68 = ptrtoint ptr %inode12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %inode12, align 4
  %70 = ptrtoint ptr %nr_cpages18 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_cpages18, align 4
  %i_sb.i.i100 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %72 = ptrtoint ptr %i_sb.i.i100 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb.i.i100, align 4
  %s_fs_info.i.i.i101 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 33
  %74 = ptrtoint ptr %s_fs_info.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i.i.i101, align 16
  %mul.i102 = shl i32 %71, 2
  %page_array_slab_size.i103 = getelementptr inbounds %struct.f2fs_sb_info, ptr %75, i32 0, i32 140
  %76 = ptrtoint ptr %page_array_slab_size.i103 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %page_array_slab_size.i103, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i102, i32 %77)
  %cmp.not.i104 = icmp ugt i32 %mul.i102, %77
  br i1 %cmp.not.i104, label %if.end.i109, label %if.then.i107, !prof !195

if.then.i107:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i105 = getelementptr inbounds %struct.f2fs_sb_info, ptr %75, i32 0, i32 139
  %78 = ptrtoint ptr %page_array_slab.i105 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %page_array_slab.i105, align 4
  %call3.i106 = tail call fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %79, ptr noundef %75) #16
  br label %page_array_alloc.exit111

if.end.i109:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i108 = tail call fastcc ptr @f2fs_kzalloc(ptr noundef %75, i32 noundef %mul.i102) #16
  br label %page_array_alloc.exit111

page_array_alloc.exit111:                         ; preds = %if.end.i109, %if.then.i107
  %retval.0.i110 = phi ptr [ %call3.i106, %if.then.i107 ], [ %call4.i108, %if.end.i109 ]
  %cpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %call2, i32 0, i32 7
  %80 = ptrtoint ptr %cpages to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %retval.0.i110, ptr %cpages, align 4
  %tobool30.not = icmp eq ptr %retval.0.i110, null
  br i1 %tobool30.not, label %page_array_alloc.exit111.out_free_crit_edge, label %for.cond33.preheader

page_array_alloc.exit111.out_free_crit_edge:      ; preds = %page_array_alloc.exit111
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

for.cond33.preheader:                             ; preds = %page_array_alloc.exit111
  %81 = ptrtoint ptr %nr_cpages18 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_cpages18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp35115.not = icmp eq i32 %82, 0
  br i1 %cmp35115.not, label %for.cond33.preheader.cleanup49_crit_edge, label %for.cond33.preheader.for.body36_crit_edge

for.cond33.preheader.for.body36_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body36

for.cond33.preheader.cleanup49_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

for.body36:                                       ; preds = %for.inc45.for.body36_crit_edge, %for.cond33.preheader.for.body36_crit_edge
  %i.1116 = phi i32 [ %add, %for.inc45.for.body36_crit_edge ], [ 0, %for.cond33.preheader.for.body36_crit_edge ]
  %call37 = tail call fastcc ptr @f2fs_compress_alloc_page()
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %for.body36.out_free_crit_edge, label %for.inc45

for.body36.out_free_crit_edge:                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

for.inc45:                                        ; preds = %for.body36
  %83 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cc, align 4
  %add = add nuw i32 %i.1116, 1
  %add42 = add i32 %add, %shl.i
  tail call fastcc void @attach_page_private(ptr noundef nonnull %call37, ptr noundef nonnull %call2) #16
  %index1.i = getelementptr inbounds %struct.page, ptr %call37, i32 0, i32 1, i32 0, i32 2
  %85 = ptrtoint ptr %index1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add42, ptr %index1.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %84, i32 0, i32 9
  %86 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_mapping.i, align 8
  %mapping.i = getelementptr inbounds %struct.page, ptr %call37, i32 0, i32 1, i32 0, i32 1
  %88 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %mapping.i, align 4
  %89 = ptrtoint ptr %cpages to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cpages, align 4
  %arrayidx44 = getelementptr ptr, ptr %90, i32 %i.1116
  %91 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call37, ptr %arrayidx44, align 4
  %92 = ptrtoint ptr %nr_cpages18 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nr_cpages18, align 4
  %cmp35 = icmp ult i32 %add, %93
  br i1 %cmp35, label %for.inc45.for.body36_crit_edge, label %for.inc45.cleanup49_crit_edge

for.inc45.cleanup49_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

for.inc45.for.body36_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body36

out_free:                                         ; preds = %for.body36.out_free_crit_edge, %page_array_alloc.exit111.out_free_crit_edge
  tail call fastcc void @f2fs_free_dic(ptr noundef nonnull %call2)
  br label %cleanup49

cleanup49:                                        ; preds = %out_free, %for.inc45.cleanup49_crit_edge, %for.cond33.preheader.cleanup49_crit_edge, %if.then8, %entry.cleanup49_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %out_free ], [ inttoptr (i32 -12 to ptr), %if.then8 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup49_crit_edge ], [ %call2, %for.cond33.preheader.cleanup49_crit_edge ], [ %call2, %for.inc45.cleanup49_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_kmem_cache_alloc(ptr noundef %cachep, ptr noundef %sbi) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %0 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end8_crit_edge, label %if.end.i

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end.i:                                         ; preds = %entry
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %2 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end8_crit_edge, label %if.end3.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #16, !srcloc !233
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #16
  %5 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %fault_info.i, align 4
  %7 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i = icmp ult i32 %6, %8
  br i1 %cmp.not.i, label %if.end3.i.if.end8_crit_edge, label %if.then2

if.end3.i.if.end8_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then2:                                         ; preds = %if.end3.i
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  %9 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmem_cache_alloc._rs, ptr noundef nonnull @__func__.f2fs_kmem_cache_alloc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.return_crit_edge, label %do.end

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sbi, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 15) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 15), align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0)
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef %s_id, ptr noundef %12, ptr noundef nonnull @__func__.f2fs_kmem_cache_alloc, ptr noundef %13) #19
  br label %return

if.end8:                                          ; preds = %if.end3.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %cachep, i32 noundef 3392) #16
  br label %return

return:                                           ; preds = %if.end8, %do.end, %if.then2.return_crit_edge
  %retval.0 = phi ptr [ %call9, %if.end8 ], [ null, %do.end ], [ null, %if.then2.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_free_dic(ptr noundef %dic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 9
  %0 = ptrtoint ptr %tpages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpages, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %for.cond.preheader

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

for.cond.preheader:                               ; preds = %entry
  %cluster_size = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 3
  %2 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cluster_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp99.not = icmp eq i32 %3, 0
  br i1 %cmp99.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rpages, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.0100
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %tpages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tpages, align 4
  %arrayidx4 = getelementptr ptr, ptr %9, i32 %i.0100
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.end.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i:                                         ; preds = %if.end
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !197

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = add i32 %14, -1
  br label %f2fs_compress_free_page.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %11 to i32
  br label %f2fs_compress_free_page.exit

f2fs_compress_free_page.exit:                     ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %15, %if.end.i.i.i ]
  %16 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call fastcc void @folio_detach_private(ptr noundef %16) #16
  %mapping.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %mapping.i, align 4
  tail call void @unlock_page(ptr noundef nonnull %11) #16
  %18 = load ptr, ptr @compress_page_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %11, ptr noundef %18) #16
  br label %for.inc

for.inc:                                          ; preds = %f2fs_compress_free_page.exit, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0100, 1
  %19 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cluster_size, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo = shl i32 %20, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa98 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %inode = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %21 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %inode, align 4
  %23 = ptrtoint ptr %tpages to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tpages, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %tobool.not.i63 = icmp eq ptr %24, null
  br i1 %tobool.not.i63, label %for.end.if.end12_crit_edge, label %if.end.i64

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end.i64:                                       ; preds = %for.end
  %page_array_slab_size.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %28, i32 0, i32 140
  %29 = ptrtoint ptr %page_array_slab_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %page_array_slab_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa98, i32 %30)
  %cmp.not.i = icmp ugt i32 %.lcssa98, %30
  br i1 %cmp.not.i, label %if.else.i, label %if.then3.i, !prof !195

if.then3.i:                                       ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %28, i32 0, i32 139
  %31 = ptrtoint ptr %page_array_slab.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %page_array_slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef nonnull %24) #16
  br label %if.end12

if.else.i:                                        ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %24) #16
  br label %if.end12

if.end12:                                         ; preds = %if.else.i, %if.then3.i, %for.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %cpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 7
  %33 = ptrtoint ptr %cpages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpages, align 4
  %tobool13.not = icmp eq ptr %34, null
  br i1 %tobool13.not, label %if.end12.if.end31_crit_edge, label %for.cond15.preheader

if.end12.if.end31_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

for.cond15.preheader:                             ; preds = %if.end12
  %nr_cpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 8
  %35 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_cpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp16101.not = icmp eq i32 %36, 0
  br i1 %cmp16101.not, label %for.cond15.preheader.for.end27_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.for.end27_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end27

for.body17:                                       ; preds = %for.inc25.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %i.1102 = phi i32 [ %inc26, %for.inc25.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %37 = ptrtoint ptr %cpages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cpages, align 4
  %arrayidx19 = getelementptr ptr, ptr %38, i32 %i.1102
  %39 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %40, null
  br i1 %tobool20.not, label %for.body17.for.inc25_crit_edge, label %if.end.i68

for.body17.for.inc25_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc25

if.end.i68:                                       ; preds = %for.body17
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i.i66 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i66)
  %tobool.not.i.i.i67 = icmp eq i32 %and.i.i.i66, 0
  br i1 %tobool.not.i.i.i67, label %if.end.i.i.i71, label %if.then.i.i.i70, !prof !197

if.then.i.i.i70:                                  ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i69 = add i32 %43, -1
  br label %f2fs_compress_free_page.exit75

if.end.i.i.i71:                                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %40 to i32
  br label %f2fs_compress_free_page.exit75

f2fs_compress_free_page.exit75:                   ; preds = %if.end.i.i.i71, %if.then.i.i.i70
  %retval.0.i.i.i72 = phi i32 [ %sub.i.i.i69, %if.then.i.i.i70 ], [ %44, %if.end.i.i.i71 ]
  %45 = inttoptr i32 %retval.0.i.i.i72 to ptr
  tail call fastcc void @folio_detach_private(ptr noundef %45) #16
  %mapping.i73 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %mapping.i73 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %mapping.i73, align 4
  tail call void @unlock_page(ptr noundef nonnull %40) #16
  %47 = load ptr, ptr @compress_page_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %40, ptr noundef %47) #16
  br label %for.inc25

for.inc25:                                        ; preds = %f2fs_compress_free_page.exit75, %for.body17.for.inc25_crit_edge
  %inc26 = add nuw i32 %i.1102, 1
  %48 = ptrtoint ptr %nr_cpages to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_cpages, align 4
  %cmp16 = icmp ult i32 %inc26, %49
  br i1 %cmp16, label %for.inc25.for.body17_crit_edge, label %for.end27.loopexit

for.inc25.for.body17_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17

for.end27.loopexit:                               ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo106 = shl i32 %49, 2
  br label %for.end27

for.end27:                                        ; preds = %for.end27.loopexit, %for.cond15.preheader.for.end27_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond15.preheader.for.end27_crit_edge ], [ %phi.bo106, %for.end27.loopexit ]
  %inode28 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %50 = ptrtoint ptr %inode28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %inode28, align 4
  %52 = ptrtoint ptr %cpages to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cpages, align 4
  %i_sb.i.i76 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 8
  %54 = ptrtoint ptr %i_sb.i.i76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i.i76, align 4
  %s_fs_info.i.i.i77 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %s_fs_info.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i.i.i77, align 16
  %tobool.not.i78 = icmp eq ptr %53, null
  br i1 %tobool.not.i78, label %for.end27.if.end31_crit_edge, label %if.end.i82

for.end27.if.end31_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.end.i82:                                       ; preds = %for.end27
  %page_array_slab_size.i80 = getelementptr inbounds %struct.f2fs_sb_info, ptr %57, i32 0, i32 140
  %58 = ptrtoint ptr %page_array_slab_size.i80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %page_array_slab_size.i80, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %59)
  %cmp.not.i81 = icmp ugt i32 %.lcssa, %59
  br i1 %cmp.not.i81, label %if.else.i85, label %if.then3.i84, !prof !195

if.then3.i84:                                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i83 = getelementptr inbounds %struct.f2fs_sb_info, ptr %57, i32 0, i32 139
  %60 = ptrtoint ptr %page_array_slab.i83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %page_array_slab.i83, align 4
  tail call void @kmem_cache_free(ptr noundef %61, ptr noundef nonnull %53) #16
  br label %if.end31

if.else.i85:                                      ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %53) #16
  br label %if.end31

if.end31:                                         ; preds = %if.else.i85, %if.then3.i84, %for.end27.if.end31_crit_edge, %if.end12.if.end31_crit_edge
  %inode32 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %62 = ptrtoint ptr %inode32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %inode32, align 4
  %rpages33 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 5
  %64 = ptrtoint ptr %rpages33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rpages33, align 4
  %i_sb.i.i87 = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 8
  %66 = ptrtoint ptr %i_sb.i.i87 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb.i.i87, align 4
  %s_fs_info.i.i.i88 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 33
  %68 = ptrtoint ptr %s_fs_info.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i.i.i88, align 16
  %tobool.not.i89 = icmp eq ptr %65, null
  br i1 %tobool.not.i89, label %if.end31.page_array_free.exit97_crit_edge, label %if.end.i93

if.end31.page_array_free.exit97_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %page_array_free.exit97

if.end.i93:                                       ; preds = %if.end31
  %nr_rpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 6
  %70 = ptrtoint ptr %nr_rpages to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_rpages, align 4
  %mul.i90 = shl i32 %71, 2
  %page_array_slab_size.i91 = getelementptr inbounds %struct.f2fs_sb_info, ptr %69, i32 0, i32 140
  %72 = ptrtoint ptr %page_array_slab_size.i91 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %page_array_slab_size.i91, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i90, i32 %73)
  %cmp.not.i92 = icmp ugt i32 %mul.i90, %73
  br i1 %cmp.not.i92, label %if.else.i96, label %if.then3.i95, !prof !195

if.then3.i95:                                     ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #18
  %page_array_slab.i94 = getelementptr inbounds %struct.f2fs_sb_info, ptr %69, i32 0, i32 139
  %74 = ptrtoint ptr %page_array_slab.i94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %page_array_slab.i94, align 4
  tail call void @kmem_cache_free(ptr noundef %75, ptr noundef nonnull %65) #16
  br label %page_array_free.exit97

if.else.i96:                                      ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %65) #16
  br label %page_array_free.exit97

page_array_free.exit97:                           ; preds = %if.else.i96, %if.then3.i95, %if.end31.page_array_free.exit97_crit_edge
  %76 = load ptr, ptr @dic_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %76, ptr noundef %dic) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f2fs_verify_cluster(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_size = getelementptr i8, ptr %work, i32 -64
  %0 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cluster_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rpages = getelementptr i8, ptr %work, i32 -56
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpages, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call = tail call zeroext i1 @fsverity_verify_page(ptr noundef nonnull %5) #16
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !197

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef nonnull %5, ptr noundef nonnull @.str.47) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #16, !srcloc !238
  unreachable

do.body7.i:                                       ; preds = %if.then
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %6, align 4
  %and.i31.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %6, align 4
  %and.i32.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !195

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !197

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i34.i = add i32 %16, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %17, %if.end.i36.i ]
  %18 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.45) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #16, !srcloc !239
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !197

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i41.i = add i32 %16, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %5 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %19, %if.end.i43.i ]
  %20 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %20) #16
  br label %if.end

if.end:                                           ; preds = %SetPageError.exit, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.010, 1
  %21 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cluster_size, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -76
  tail call fastcc void @__f2fs_decompress_end_io(ptr noundef %add.ptr, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsverity_enqueue_verify_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__f2fs_decompress_end_io(ptr noundef %dic, i1 noundef zeroext %failed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_size = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 3
  %0 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cluster_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp63.not = icmp eq i32 %1, 0
  br i1 %cmp63.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rpages = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpages, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.064
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %for.body
  br i1 %failed, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, -1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %6, align 4
  %and.i16.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !195

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !197

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i18.i = add i32 %14, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %15, %if.end.i20.i ]
  %16 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.45) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #16, !srcloc !240
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !197

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i25.i = add i32 %14, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %5 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %17, %if.end.i27.i ]
  %18 = inttoptr i32 %retval.0.i28.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not = icmp eq i32 %21, 0
  br i1 %tobool2.not, label %if.else, label %PageError.exit.if.then3_crit_edge

PageError.exit.if.then3_crit_edge:                ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.then3:                                         ; preds = %PageError.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %22 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i14 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14)
  %tobool.not.i = icmp eq i32 %and.i.i14, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i15, !prof !197

if.then.i15:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef nonnull %5, ptr noundef nonnull @.str.47) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #16, !srcloc !241
  unreachable

do.body7.i:                                       ; preds = %if.then3
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %22, align 4
  %and.i31.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i16 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i19, label %if.then.i.i18, !prof !197

if.then.i.i18:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i17 = add i32 %26, -1
  br label %_compound_head.exit.i22

if.end.i.i19:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i22

_compound_head.exit.i22:                          ; preds = %if.end.i.i19, %if.then.i.i18
  %retval.0.i.i20 = phi i32 [ %sub.i.i17, %if.then.i.i18 ], [ %27, %if.end.i.i19 ]
  %28 = inttoptr i32 %retval.0.i.i20 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i.not.i21 = icmp eq i32 %30, -1
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %22, align 4
  %and.i32.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i21, label %if.then17.i, label %do.end24.i, !prof !195

if.then17.i:                                      ; preds = %_compound_head.exit.i22
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !197

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i34.i = add i32 %32, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %33, %if.end.i36.i ]
  %34 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.45) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #16, !srcloc !242
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i22
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !197

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i41.i = add i32 %32, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %5 to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %35, %if.end.i43.i ]
  %36 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %36) #16
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %22, align 4
  %and.i.i23 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i23)
  %tobool.not.i24 = icmp eq i32 %and.i.i23, 0
  br i1 %tobool.not.i24, label %do.body7.i28, label %if.then.i25, !prof !197

if.then.i25:                                      ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef nonnull %5, ptr noundef nonnull @.str.47) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #16, !srcloc !243
  unreachable

do.body7.i28:                                     ; preds = %ClearPageUptodate.exit
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %22, align 4
  %and.i31.i26 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i26)
  %tobool.not.i.i27 = icmp eq i32 %and.i31.i26, 0
  br i1 %tobool.not.i.i27, label %if.end.i.i31, label %if.then.i.i30, !prof !197

if.then.i.i30:                                    ; preds = %do.body7.i28
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i29 = add i32 %40, -1
  br label %_compound_head.exit.i36

if.end.i.i31:                                     ; preds = %do.body7.i28
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i36

_compound_head.exit.i36:                          ; preds = %if.end.i.i31, %if.then.i.i30
  %retval.0.i.i32 = phi i32 [ %sub.i.i29, %if.then.i.i30 ], [ %41, %if.end.i.i31 ]
  %42 = inttoptr i32 %retval.0.i.i32 to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i.not.i33 = icmp eq i32 %44, -1
  %45 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %22, align 4
  %and.i32.i34 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i34)
  %tobool.not.i33.i35 = icmp eq i32 %and.i32.i34, 0
  br i1 %cmp.i.not.i33, label %if.then17.i37, label %do.end24.i43, !prof !195

if.then17.i37:                                    ; preds = %_compound_head.exit.i36
  br i1 %tobool.not.i33.i35, label %if.end.i36.i40, label %if.then.i35.i39, !prof !197

if.then.i35.i39:                                  ; preds = %if.then17.i37
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i34.i38 = add i32 %46, -1
  br label %_compound_head.exit38.i42

if.end.i36.i40:                                   ; preds = %if.then17.i37
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit38.i42

_compound_head.exit38.i42:                        ; preds = %if.end.i36.i40, %if.then.i35.i39
  %retval.0.i37.i41 = phi i32 [ %sub.i34.i38, %if.then.i35.i39 ], [ %47, %if.end.i36.i40 ]
  %48 = inttoptr i32 %retval.0.i37.i41 to ptr
  tail call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.45) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #16, !srcloc !244
  unreachable

do.end24.i43:                                     ; preds = %_compound_head.exit.i36
  br i1 %tobool.not.i33.i35, label %if.end.i43.i46, label %if.then.i42.i45, !prof !197

if.then.i42.i45:                                  ; preds = %do.end24.i43
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i41.i44 = add i32 %46, -1
  br label %ClearPageError.exit

if.end.i43.i46:                                   ; preds = %do.end24.i43
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %5 to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i46, %if.then.i42.i45
  %retval.0.i44.i47 = phi i32 [ %sub.i41.i44, %if.then.i42.i45 ], [ %49, %if.end.i43.i46 ]
  %50 = inttoptr i32 %retval.0.i44.i47 to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %50) #16
  br label %if.end4

if.else:                                          ; preds = %PageError.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !218
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !197

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef nonnull %5, ptr noundef nonnull @.str.43) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

SetPageUptodate.exit:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %5) #16
  br label %if.end4

if.end4:                                          ; preds = %SetPageUptodate.exit, %ClearPageError.exit
  tail call void @unlock_page(ptr noundef nonnull %5) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.064, 1
  %53 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cluster_size, align 4
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %refcnt.i = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !246
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i48, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.f2fs_put_dic.exit_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.f2fs_put_dic.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_dic.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %f2fs_put_dic.exit

if.then.i48:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !247
  tail call fastcc void @f2fs_free_dic(ptr noundef %dic) #16
  br label %f2fs_put_dic.exit

f2fs_put_dic.exit:                                ; preds = %if.then.i48, %if.then10.i.i.i.i, %if.end5.i.i.i.i.f2fs_put_dic.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_put_page_dic(ptr nocapture noundef readonly %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %refcnt.i = getelementptr inbounds %struct.decompress_io_ctx, ptr %2, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !246
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.f2fs_put_dic.exit_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.f2fs_put_dic.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_dic.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %f2fs_put_dic.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !247
  tail call fastcc void @f2fs_free_dic(ptr noundef %2) #16
  br label %f2fs_put_dic.exit

f2fs_put_dic.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.f2fs_put_dic.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_cluster_blocks_are_contiguous(ptr nocapture noundef readonly %dn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %node_page.i = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %2 = ptrtoint ptr %node_page.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node_page.i, align 4
  %ofs_in_node.i = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 4
  %4 = ptrtoint ptr %ofs_in_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ofs_in_node.i, align 4
  %call.i.i.i.i = tail call ptr @page_address(ptr noundef %3) #16
  %footer.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %footer.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %footer.i.i.i, align 1
  %ino.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %ino.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ino.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.i.i = icmp eq i32 %7, %9
  %call.i.i.i = tail call ptr @page_address(ptr noundef %3) #16
  br i1 %cmp.i.i.i, label %if.then.i.i, label %entry.f2fs_data_blkaddr.exit_crit_edge

entry.f2fs_data_blkaddr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_data_blkaddr.exit

if.then.i.i:                                      ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  %i_inline.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_inline.i.i.i, align 1
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i.i, label %if.then3.i.i.f2fs_data_blkaddr.exit_crit_edge, label %cond.true.i.i.i

if.then3.i.i.f2fs_data_blkaddr.exit_crit_edge:    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_data_blkaddr.exit

cond.true.i.i.i:                                  ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i, i32 0, i32 23
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %13, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #16
  %17 = lshr i16 %16, 2
  %div.i.i.i = zext i16 %17 to i32
  br label %f2fs_data_blkaddr.exit

if.else.i.i:                                      ; preds = %if.then.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %20 = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool6.not.i.i, label %if.else.i.i.f2fs_data_blkaddr.exit_crit_edge, label %if.then7.i.i

if.else.i.i.f2fs_data_blkaddr.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_data_blkaddr.exit

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 29
  %21 = ptrtoint ptr %i_extra_isize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_extra_isize.i.i.i, align 4
  %div1.i.i.i = lshr i32 %22, 2
  br label %f2fs_data_blkaddr.exit

f2fs_data_blkaddr.exit:                           ; preds = %if.then7.i.i, %if.else.i.i.f2fs_data_blkaddr.exit_crit_edge, %cond.true.i.i.i, %if.then3.i.i.f2fs_data_blkaddr.exit_crit_edge, %entry.f2fs_data_blkaddr.exit_crit_edge
  %base.0.i.i = phi i32 [ %div1.i.i.i, %if.then7.i.i ], [ 0, %if.else.i.i.f2fs_data_blkaddr.exit_crit_edge ], [ 0, %entry.f2fs_data_blkaddr.exit_crit_edge ], [ %div.i.i.i, %cond.true.i.i.i ], [ 0, %if.then3.i.i.f2fs_data_blkaddr.exit_crit_edge ]
  %footer.i16.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %footer.i16.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %footer.i16.i.i, align 1
  %ino.i17.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %ino.i17.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %ino.i17.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i18.i.i = icmp eq i32 %24, %26
  %27 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i, i32 0, i32 23
  %cond.i19.i.i = select i1 %cmp.i18.i.i, ptr %27, ptr %call.i.i.i
  %add.i.i = add i32 %base.0.i.i, %5
  %arrayidx.i.i = getelementptr i32, ptr %cond.i19.i.i, i32 %add.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %29)
  %cmp = icmp eq i32 %29, -16777217
  %cond.neg84 = sext i1 %cmp to i32
  %cond = zext i1 %cmp to i32
  %30 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dn, align 4
  %32 = ptrtoint ptr %node_page.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %node_page.i, align 4
  %34 = ptrtoint ptr %ofs_in_node.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ofs_in_node.i, align 4
  %add = add i32 %35, %cond
  %call.i.i.i41 = tail call ptr @page_address(ptr noundef %33) #16
  %footer.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i41, i32 0, i32 1
  %36 = ptrtoint ptr %footer.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %footer.i.i, align 1
  %ino.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i41, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %ino.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.i.i = icmp eq i32 %37, %39
  %call.i.i = tail call ptr @page_address(ptr noundef %33) #16
  br i1 %cmp.i.i, label %if.then.i, label %f2fs_data_blkaddr.exit.data_blkaddr.exit_crit_edge

f2fs_data_blkaddr.exit.data_blkaddr.exit_crit_edge: ; preds = %f2fs_data_blkaddr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit

if.then.i:                                        ; preds = %f2fs_data_blkaddr.exit
  %tobool2.not.i = icmp eq ptr %31, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %i_inline.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i_inline.i.i, align 1
  %42 = and i8 %41, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i, label %if.then3.i.data_blkaddr.exit_crit_edge, label %cond.true.i.i

if.then3.i.data_blkaddr.exit_crit_edge:           ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit

cond.true.i.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  %43 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %43, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #16
  %47 = lshr i16 %46, 2
  %div.i.i = zext i16 %47 to i32
  br label %data_blkaddr.exit

if.else.i:                                        ; preds = %if.then.i
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %31, i32 0, i32 8
  %48 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i.i.i, align 4
  %50 = and i32 %49, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool6.not.i = icmp eq i32 %50, 0
  br i1 %tobool6.not.i, label %if.else.i.data_blkaddr.exit_crit_edge, label %if.then7.i

if.else.i.data_blkaddr.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %31, i32 0, i32 29
  %51 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %52, 2
  br label %data_blkaddr.exit

data_blkaddr.exit:                                ; preds = %if.then7.i, %if.else.i.data_blkaddr.exit_crit_edge, %cond.true.i.i, %if.then3.i.data_blkaddr.exit_crit_edge, %f2fs_data_blkaddr.exit.data_blkaddr.exit_crit_edge
  %base.0.i = phi i32 [ %div1.i.i, %if.then7.i ], [ 0, %if.else.i.data_blkaddr.exit_crit_edge ], [ 0, %f2fs_data_blkaddr.exit.data_blkaddr.exit_crit_edge ], [ %div.i.i, %cond.true.i.i ], [ 0, %if.then3.i.data_blkaddr.exit_crit_edge ]
  %add2 = select i1 %cmp, i32 2, i32 1
  %53 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dn, align 4
  %i_cluster_size76 = getelementptr inbounds %struct.f2fs_inode_info, ptr %54, i32 0, i32 39
  %55 = ptrtoint ptr %i_cluster_size76 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_cluster_size76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %56)
  %cmp577 = icmp ult i32 %add2, %56
  br i1 %cmp577, label %for.body.lr.ph, label %data_blkaddr.exit.for.end_crit_edge

data_blkaddr.exit.for.end_crit_edge:              ; preds = %data_blkaddr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %data_blkaddr.exit
  %footer.i16.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %footer.i16.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %footer.i16.i, align 1
  %ino.i17.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %ino.i17.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %ino.i17.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.i18.i = icmp eq i32 %58, %60
  %61 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %cond.i19.i = select i1 %cmp.i18.i, ptr %61, ptr %call.i.i
  %add.i = add i32 %add, %base.0.i
  %arrayidx.i = getelementptr i32, ptr %cond.i19.i, i32 %add.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #16
  %add1269 = add i32 %64, %cond.neg84
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %65 = phi ptr [ %54, %for.body.lr.ph ], [ %98, %for.inc.for.body_crit_edge ]
  %i.078 = phi i32 [ %add2, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %66 = ptrtoint ptr %node_page.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %node_page.i, align 4
  %68 = ptrtoint ptr %ofs_in_node.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ofs_in_node.i, align 4
  %add9 = add i32 %69, %i.078
  %call.i.i.i42 = tail call ptr @page_address(ptr noundef %67) #16
  %footer.i.i43 = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i42, i32 0, i32 1
  %70 = ptrtoint ptr %footer.i.i43 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %footer.i.i43, align 1
  %ino.i.i44 = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i42, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %ino.i.i44 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %ino.i.i44, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.i.i45 = icmp eq i32 %71, %73
  %call.i.i46 = tail call ptr @page_address(ptr noundef %67) #16
  br i1 %cmp.i.i45, label %if.then.i48, label %for.body.data_blkaddr.exit67_crit_edge

for.body.data_blkaddr.exit67_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit67

if.then.i48:                                      ; preds = %for.body
  %tobool2.not.i47 = icmp eq ptr %65, null
  br i1 %tobool2.not.i47, label %if.then3.i51, label %if.else.i56

if.then3.i51:                                     ; preds = %if.then.i48
  %i_inline.i.i49 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i46, i32 0, i32 2
  %74 = ptrtoint ptr %i_inline.i.i49 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i_inline.i.i49, align 1
  %76 = and i8 %75, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i.i50 = icmp eq i8 %76, 0
  br i1 %tobool.not.i.i50, label %if.then3.i51.data_blkaddr.exit67_crit_edge, label %cond.true.i.i53

if.then3.i51.data_blkaddr.exit67_crit_edge:       ; preds = %if.then3.i51
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit67

cond.true.i.i53:                                  ; preds = %if.then3.i51
  call void @__sanitizer_cov_trace_pc() #18
  %77 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i46, i32 0, i32 23
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %77, align 1
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #16
  %81 = lshr i16 %80, 2
  %div.i.i52 = zext i16 %81 to i32
  br label %data_blkaddr.exit67

if.else.i56:                                      ; preds = %if.then.i48
  %flags.i.i.i54 = getelementptr inbounds %struct.f2fs_inode_info, ptr %65, i32 0, i32 8
  %82 = ptrtoint ptr %flags.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags.i.i.i54, align 4
  %84 = and i32 %83, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool6.not.i55 = icmp eq i32 %84, 0
  br i1 %tobool6.not.i55, label %if.else.i56.data_blkaddr.exit67_crit_edge, label %if.then7.i59

if.else.i56.data_blkaddr.exit67_crit_edge:        ; preds = %if.else.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit67

if.then7.i59:                                     ; preds = %if.else.i56
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i57 = getelementptr inbounds %struct.f2fs_inode_info, ptr %65, i32 0, i32 29
  %85 = ptrtoint ptr %i_extra_isize.i.i57 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %i_extra_isize.i.i57, align 4
  %div1.i.i58 = lshr i32 %86, 2
  br label %data_blkaddr.exit67

data_blkaddr.exit67:                              ; preds = %if.then7.i59, %if.else.i56.data_blkaddr.exit67_crit_edge, %cond.true.i.i53, %if.then3.i51.data_blkaddr.exit67_crit_edge, %for.body.data_blkaddr.exit67_crit_edge
  %base.0.i60 = phi i32 [ %div1.i.i58, %if.then7.i59 ], [ 0, %if.else.i56.data_blkaddr.exit67_crit_edge ], [ 0, %for.body.data_blkaddr.exit67_crit_edge ], [ %div.i.i52, %cond.true.i.i53 ], [ 0, %if.then3.i51.data_blkaddr.exit67_crit_edge ]
  %footer.i16.i61 = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i46, i32 0, i32 1
  %87 = ptrtoint ptr %footer.i16.i61 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %footer.i16.i61, align 1
  %ino.i17.i62 = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i46, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %ino.i17.i62 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %ino.i17.i62, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp.i18.i63 = icmp eq i32 %88, %90
  %91 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i46, i32 0, i32 23
  %cond.i19.i64 = select i1 %cmp.i18.i63, ptr %91, ptr %call.i.i46
  %add.i65 = add i32 %add9, %base.0.i60
  %arrayidx.i66 = getelementptr i32, ptr %cond.i19.i64, i32 %add.i65
  %92 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i66, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #16
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %94, label %96 [
    i32 -1, label %data_blkaddr.exit67.for.end_crit_edge
    i32 0, label %data_blkaddr.exit67.for.end_crit_edge85
    i32 -2, label %data_blkaddr.exit67.for.end_crit_edge86
  ]

data_blkaddr.exit67.for.end_crit_edge86:          ; preds = %data_blkaddr.exit67
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

data_blkaddr.exit67.for.end_crit_edge85:          ; preds = %data_blkaddr.exit67
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

data_blkaddr.exit67.for.end_crit_edge:            ; preds = %data_blkaddr.exit67
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

96:                                               ; preds = %data_blkaddr.exit67
  %sub70 = add i32 %add1269, %i.078
  call void @__sanitizer_cov_trace_cmp4(i32 %sub70, i32 %94)
  %cmp15.not71 = icmp eq i32 %sub70, %94
  br i1 %cmp15.not71, label %for.inc, label %.cleanup21_crit_edge

.cleanup21_crit_edge:                             ; preds = %96
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup21

for.inc:                                          ; preds = %96
  %inc = add nuw i32 %i.078, 1
  %97 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dn, align 4
  %i_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %98, i32 0, i32 39
  %99 = ptrtoint ptr %i_cluster_size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %i_cluster_size, align 4
  %cmp5 = icmp ult i32 %inc, %100
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %data_blkaddr.exit67.for.end_crit_edge, %data_blkaddr.exit67.for.end_crit_edge85, %data_blkaddr.exit67.for.end_crit_edge86, %data_blkaddr.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %add2, %data_blkaddr.exit.for.end_crit_edge ], [ %i.078, %data_blkaddr.exit67.for.end_crit_edge ], [ %i.078, %data_blkaddr.exit67.for.end_crit_edge85 ], [ %i.078, %data_blkaddr.exit67.for.end_crit_edge86 ], [ %inc, %for.inc.for.end_crit_edge ]
  %cond20 = add i32 %i.0.lcssa, %cond.neg84
  br label %cleanup21

cleanup21:                                        ; preds = %for.end, %.cleanup21_crit_edge
  %retval.2 = phi i32 [ %cond20, %for.end ], [ 0, %.cleanup21_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_invalidate_page(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_release_page(ptr noundef, i32 noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @COMPRESS_MAPPING(ptr nocapture noundef readonly %sbi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %compress_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 144
  %0 = ptrtoint ptr %compress_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compress_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_invalidate_compress_page(ptr nocapture noundef readonly %sbi, i32 noundef %blkaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %compress_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 144
  %0 = ptrtoint ptr %compress_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compress_inode, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping.i, align 8
  %call1 = tail call i32 @invalidate_mapping_pages(ptr noundef %3, i32 noundef %blkaddr, i32 noundef %blkaddr) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_available_free_memory(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_page(ptr noundef %page, i32 noundef %unlock) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unlock)
  %tobool1.not = icmp eq i32 %unlock, 0
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

do.body:                                          ; preds = %if.end
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !195

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !197

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.45) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #16, !srcloc !248
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !197

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not, label %do.body8, label %do.end12, !prof !195

do.body8:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2610, 0\0A.popsection", ""() #16, !srcloc !249
  unreachable

do.end12:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unlock_page(ptr noundef nonnull %page) #16
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %if.end.if.end13_crit_edge
  %15 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i17 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.not.i.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.not.i.i18, label %if.end.i.i21, label %if.then.i.i20, !prof !197

if.then.i.i20:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19 = add i32 %17, -1
  br label %_compound_head.exit.i23

if.end.i.i21:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i23

_compound_head.exit.i23:                          ; preds = %if.end.i.i21, %if.then.i.i20
  %retval.0.i.i22 = phi i32 [ %sub.i.i19, %if.then.i.i20 ], [ %18, %if.end.i.i21 ]
  %19 = inttoptr i32 %retval.0.i.i22 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !195

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.42) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !217
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !215
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_page, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !201

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %19) #16
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_page_cache_lru(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_page_private_data(ptr noundef %page, i32 noundef %data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !195

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.11) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !196
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %PagePrivate.exit.if.end_crit_edge

PagePrivate.exit.if.end_crit_edge:                ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %PagePrivate.exit
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  %10 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %11, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !195

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.46) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #16, !srcloc !250
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #16, !srcloc !233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@set_page_private_data, %if.then.i.i.i.i)) #16
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !201

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__page_ref_mod(ptr noundef %9, i32 noundef 1) #16
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i7 = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i7, label %if.then.i8, label %SetPagePrivate.exit, !prof !195

if.then.i8:                                       ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.11) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !251
  unreachable

SetPagePrivate.exit:                              ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 13, ptr noundef %page) #16
  %private1.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %private1.i, align 4
  br label %if.end

if.end:                                           ; preds = %SetPagePrivate.exit, %PagePrivate.exit.if.end_crit_edge
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %private) #16
  %shl = shl i32 %data, 6
  %16 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private, align 4
  %or = or i32 %17, %shl
  store i32 %or, ptr %private, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_load_compressed_page(ptr noundef %sbi, ptr noundef %page, i32 noundef %blkaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %compress_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 144
  %2 = ptrtoint ptr %compress_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compress_inode.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping.i, align 8
  %call1 = tail call fastcc ptr @f2fs_pagecache_get_page(ptr noundef %5, i32 noundef %blkaddr, i32 noundef 34)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %6 = getelementptr inbounds %struct.page, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %call1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !197

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.43) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.if.end9_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.if.end9_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !221
  %compress_page_hit = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 147
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compress_page_hit, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %compress_page_hit, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %compress_page_hit, ptr %compress_page_hit, i32 1, ptr elementtype(i32) %compress_page_hit) #16, !srcloc !233
  %call7 = tail call ptr @page_address(ptr noundef %page) #16
  %call8 = tail call ptr @page_address(ptr noundef nonnull %call1) #16
  %18 = call ptr @memcpy(ptr %call7, ptr %call8, i32 4096)
  br label %if.end9

if.end9:                                          ; preds = %PageUptodate.exit, %folio_flags.exit.i.i.if.end9_crit_edge
  %19 = xor i1 %tobool.i.not.i, true
  tail call fastcc void @f2fs_put_page(ptr noundef nonnull %call1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %19, %if.end9 ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef %fgp_flags) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 1
  %6 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.if.end6_crit_edge, label %if.end.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end.i:                                         ; preds = %entry
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 2
  %8 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6_crit_edge, label %if.end3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #16, !srcloc !233
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fault_info.i, align 4
  %13 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp ult i32 %12, %14
  br i1 %cmp.not.i, label %if.end3.i.if.end6_crit_edge, label %if.then

if.end3.i.if.end6_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %if.end3.i
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  %15 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_pagecache_get_page._rs, ptr noundef nonnull @__func__.f2fs_pagecache_get_page) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping, align 4
  %i_sb.i.i1 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i.i1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i1, align 4
  %s_fs_info.i.i.i2 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i2, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 3) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 3), align 4
  %25 = tail call ptr @llvm.returnaddress(i32 0)
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef %s_id, ptr noundef %24, ptr noundef nonnull @__func__.f2fs_pagecache_get_page, ptr noundef %25) #19
  br label %return

if.end6:                                          ; preds = %if.end3.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef %fgp_flags, i32 noundef 3136) #16
  br label %return

return:                                           ; preds = %if.end6, %do.end, %if.then.return_crit_edge
  %retval.0 = phi ptr [ %call7, %if.end6 ], [ null, %do.end ], [ null, %if.then.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_invalidate_compress_pages(ptr nocapture noundef readonly %sbi, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %pvec = alloca %struct.pagevec, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %compress_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 144
  %0 = ptrtoint ptr %compress_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compress_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #16
  %4 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #16
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %index, align 4
  %sm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %6 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm_info.i, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %cond.false7, label %cond.true5

cond.true5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %seg0_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %seg0_blkaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seg0_blkaddr, align 4
  %segment_count = getelementptr inbounds %struct.f2fs_sm_info, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %segment_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %segment_count, align 4
  br label %cond.end10

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %12 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %raw_super.i, align 8
  %segment0_blkaddr = getelementptr inbounds %struct.f2fs_super_block, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %segment0_blkaddr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %segment0_blkaddr, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %segment_count9 = getelementptr inbounds %struct.f2fs_super_block, ptr %13, i32 0, i32 12
  %17 = ptrtoint ptr %segment_count9 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %segment_count9, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false7, %cond.true5
  %cond73 = phi i32 [ %9, %cond.true5 ], [ %16, %cond.false7 ]
  %cond11 = phi i32 [ %11, %cond.true5 ], [ %19, %cond.false7 ]
  %log_blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %20 = ptrtoint ptr %log_blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %log_blocks_per_seg, align 8
  %shl = shl i32 %cond11, %21
  %add = add i32 %shl, %cond73
  %nrpages = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not = icmp eq i32 %23, 0
  br i1 %tobool12.not, label %cond.end10.cleanup36_crit_edge, label %if.end

cond.end10.cleanup36_crit_edge:                   ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup36

if.end:                                           ; preds = %cond.end10
  %24 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %25 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %sub = add i32 %add, -1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %call13 = call i32 @pagevec_lookup_range(ptr noundef nonnull %pvec, ptr noundef %3, ptr noundef nonnull %index, i32 noundef %sub) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body.cleanup36_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup36_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup36

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.081 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.081
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %index17 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %index17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add)
  %cmp18 = icmp ugt i32 %29, %add
  br i1 %cmp18, label %for.body.for.end_crit_edge, label %if.end20

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end20:                                         ; preds = %for.body
  call void @__might_sleep(ptr noundef nonnull @.str.49, i32 noundef 788) #16
  %30 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %32, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %27 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %33, %if.end.i.i ]
  %34 = inttoptr i32 %retval.0.i.i to ptr
  %35 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !197

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %38 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.43) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %34, i32 noundef 4) #16
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %34, align 4
  %and.i.i4.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %34, i32 1, i32 3, i32 1) #16
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #16, !srcloc !207
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !208
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  call void @__folio_lock(ptr noundef %34) #16
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping21 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %mapping21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mapping21, align 4
  %cmp22.not = icmp eq ptr %43, %3
  br i1 %cmp22.not, label %if.end24, label %lock_page.exit.for.inc_crit_edge

lock_page.exit.for.inc_crit_edge:                 ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end24:                                         ; preds = %lock_page.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i)
  %private.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %private.i, align 4
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %data.i, align 4
  %data.i.0.data.i.0.data.0.data.0..i = load volatile i32, ptr %data.i, align 4
  %and1.i.i = and i32 %data.i.0.data.i.0.data.0.data.0..i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  %shr.i = lshr i32 %data.i.0.data.i.0.data.0.data.0..i, 6
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shr.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %ino)
  %cmp26.not = icmp eq i32 %spec.select.i, %ino
  br i1 %cmp26.not, label %if.end28, label %if.end24.for.inc_crit_edge

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %call29 = call i32 @generic_error_remove_page(ptr noundef %3, ptr noundef %27) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %if.end24.for.inc_crit_edge, %lock_page.exit.for.inc_crit_edge
  call void @unlock_page(ptr noundef %27) #16
  %inc = add nuw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %call13
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %47 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i70 = icmp eq i8 %48, 0
  br i1 %tobool.not.i70, label %for.end.do.cond_crit_edge, label %if.then.i71

for.end.do.cond_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

if.then.i71:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__pagevec_release(ptr noundef nonnull %pvec) #16
  br label %do.cond

do.cond:                                          ; preds = %if.then.i71, %for.end.do.cond_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1877, i32 noundef 0) #16
  %call.i = call i32 @__cond_resched() #16
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index, align 4
  %cmp35 = icmp ult i32 %50, %add
  br i1 %cmp35, label %do.cond.do.body_crit_edge, label %do.cond.cleanup36_crit_edge

do.cond.cleanup36_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup36

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

cleanup36:                                        ; preds = %do.cond.cleanup36_crit_edge, %do.body.cleanup36_crit_edge, %cond.end10.cleanup36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_compress_inode(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi, align 8
  %nm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 9
  %4 = ptrtoint ptr %nm_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nm_info.i, align 8
  %max_nid = getelementptr inbounds %struct.f2fs_nm_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %max_nid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_nid, align 4
  %call1 = tail call ptr @f2fs_iget(ptr noundef %3, i32 noundef %7) #16
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %compress_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 144
  %9 = ptrtoint ptr %compress_inode to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %compress_inode, align 4
  %compress_percent = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 145
  %10 = ptrtoint ptr %compress_percent to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 20, ptr %compress_percent, align 8
  %compress_watermark = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 146
  %11 = ptrtoint ptr %compress_watermark to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %compress_watermark, align 4
  %compress_page_hit = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 147
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compress_page_hit, i32 noundef 4) #16
  %12 = ptrtoint ptr %compress_page_hit to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %compress_page_hit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then3 ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_iget(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_compress_inode(ptr nocapture noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %compress_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 144
  %0 = ptrtoint ptr %compress_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compress_inode, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iput(ptr noundef nonnull %1) #16
  %2 = ptrtoint ptr %compress_inode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %compress_inode, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_page_array_cache(ptr nocapture noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  %slab_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dev, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %slab_name) #16
  %shr = lshr i32 %5, 20
  %and = and i32 %5, 1048575
  %6 = call ptr @memset(ptr %slab_name, i32 255, i32 32)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %slab_name, ptr noundef nonnull @.str.10, i32 noundef %shr, i32 noundef %and)
  %compress_log_size = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 20
  %7 = ptrtoint ptr %compress_log_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %compress_log_size, align 1
  %conv = zext i8 %8 to i32
  %shl = shl i32 4, %conv
  %page_array_slab_size = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 140
  %9 = ptrtoint ptr %page_array_slab_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %page_array_slab_size, align 8
  %call.i = call ptr @kmem_cache_create(ptr noundef nonnull %slab_name, i32 noundef %shl, i32 noundef 0, i32 noundef 131072, ptr noundef null) #16
  %page_array_slab = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 139
  %10 = ptrtoint ptr %page_array_slab to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %page_array_slab, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %slab_name) #16
  ret i32 %.
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_page_array_cache(ptr nocapture noundef readonly %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %page_array_slab = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 139
  %0 = ptrtoint ptr %page_array_slab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page_array_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_compress_cache() local_unnamed_addr #11 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.50, i32 noundef 20, i32 noundef 0, i32 noundef 131072, ptr noundef null) #16
  store ptr %call.i.i, ptr @cic_entry_slab, align 4
  %tobool.not.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i6 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.51, i32 noundef 120, i32 noundef 0, i32 noundef 131072, ptr noundef null) #16
  store ptr %call.i.i6, ptr @dic_entry_slab, align 4
  %tobool.not.i7.not = icmp eq ptr %call.i.i6, null
  br i1 %tobool.not.i7.not, label %free_cic, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

free_cic:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %0 = load ptr, ptr @cic_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #16
  br label %cleanup

cleanup:                                          ; preds = %free_cic, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %free_cic ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_compress_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dic_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #16
  %1 = load ptr, ptr @cic_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_kzalloc(ptr noundef %sbi, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %fault_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %0 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %entry.if.end8.i.i_crit_edge, label %if.end.i1.i

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.end.i1.i:                                      ; preds = %entry
  %inject_type.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %2 = ptrtoint ptr %inject_type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inject_type.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i1.i.if.end8.i.i_crit_edge, label %if.end3.i.i

if.end.i1.i.if.end8.i.i_crit_edge:                ; preds = %if.end.i1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.end3.i.i:                                      ; preds = %if.end.i1.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i, ptr %fault_info.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i) #16, !srcloc !233
  %call.i.i14.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i, i32 noundef 4) #16
  %5 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %fault_info.i.i, align 4
  %7 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i.i = icmp ult i32 %6, %8
  br i1 %cmp.not.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge, label %if.then.i

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.then.i:                                        ; preds = %if.end3.i.i
  %call.i.i15.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #16
  %9 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %fault_info.i.i, align 4
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmalloc._rs, ptr noundef nonnull @__func__.f2fs_kmalloc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.f2fs_kmalloc.exit_crit_edge, label %do.end.i

if.then.i.f2fs_kmalloc.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_kmalloc.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sbi, align 8
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_fault_name to i32))
  %12 = load ptr, ptr @f2fs_fault_name, align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0) #16
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef %s_id.i, ptr noundef %12, ptr noundef nonnull @__func__.f2fs_kmalloc, ptr noundef %13) #19
  br label %f2fs_kmalloc.exit

if.end8.i.i:                                      ; preds = %if.end3.i.i.if.end8.i.i_crit_edge, %if.end.i1.i.if.end8.i.i_crit_edge, %entry.if.end8.i.i_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3392) #20
  br label %f2fs_kmalloc.exit

f2fs_kmalloc.exit:                                ; preds = %if.end8.i.i, %do.end.i, %if.then.i.f2fs_kmalloc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ null, %if.then.i.f2fs_kmalloc.exit_crit_edge ], [ %call9.i.i, %if.end8.i.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lzo_init_compress_ctx(ptr nocapture noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1 = tail call fastcc ptr @f2fs_kvmalloc(ptr noundef %5, i32 noundef 16384)
  %private = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %6 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %private, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %log_cluster_size = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 3
  %7 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %log_cluster_size, align 4
  %shl = shl i32 4096, %8
  %div13 = lshr exact i32 %shl, 4
  %add = add i32 %div13, %shl
  %add7 = or i32 %add, 69
  %clen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %9 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add7, ptr %clen, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lzo_destroy_compress_ctx(ptr nocapture noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @kvfree(ptr noundef %1) #16
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lzo_compress_pages(ptr noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rbuf = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 9
  %0 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbuf, align 4
  %rlen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 11
  %2 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rlen, align 4
  %cbuf = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 10
  %4 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cbuf, align 4
  %cdata = getelementptr inbounds %struct.compress_data, ptr %5, i32 0, i32 3
  %clen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %private = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %call = tail call i32 @lzo1x_1_compress(ptr noundef %1, i32 noundef %3, ptr noundef %cdata, ptr noundef %clen, ptr noundef %7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @lzo_compress_pages._rs, ptr noundef nonnull @__func__.lzo_compress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 39
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %s_id, i32 noundef %call) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lzo_decompress_pages(ptr noundef %dic) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cbuf = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 11
  %0 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cbuf, align 4
  %cdata = getelementptr inbounds %struct.compress_data, ptr %1, i32 0, i32 3
  %clen = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 13
  %2 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clen, align 4
  %rbuf = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 10
  %4 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rbuf, align 4
  %rlen = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 12
  %call = tail call i32 @lzo1x_decompress_safe(ptr noundef %cdata, i32 noundef %3, ptr noundef %5, ptr noundef %rlen) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @lzo_decompress_pages._rs, ptr noundef nonnull @__func__.lzo_decompress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %inode = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 39
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %s_id, i32 noundef %call) #19
  br label %cleanup

if.end6:                                          ; preds = %entry
  %14 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rlen, align 4
  %log_cluster_size = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 4
  %16 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %log_cluster_size, align 4
  %shl = shl i32 4096, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %shl)
  %cmp8.not = icmp eq i32 %15, %shl
  br i1 %cmp8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @lzo_decompress_pages._rs.17, ptr noundef nonnull @__func__.lzo_decompress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %do.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %inode17 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %18 = ptrtoint ptr %inode17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode17, align 4
  %i_sb.i38 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i38, align 4
  %s_fs_info.i.i39 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i39, align 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %s_id20 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rlen, align 4
  %28 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %log_cluster_size, align 4
  %shl24 = shl i32 4096, %29
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15, ptr noundef %s_id20, i32 noundef %27, i32 noundef %shl24) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then.cleanup_crit_edge ], [ -5, %do.end15 ], [ -5, %if.then9.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_kvmalloc(ptr noundef %sbi, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %0 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end4_crit_edge, label %if.end.i

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end.i:                                         ; preds = %entry
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %2 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4_crit_edge, label %if.end3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #16, !srcloc !233
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #16
  %5 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %fault_info.i, align 4
  %7 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i = icmp ult i32 %6, %8
  br i1 %cmp.not.i, label %if.end3.i.if.end4_crit_edge, label %if.then

if.end3.i.if.end4_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %if.end3.i
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  %9 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kvmalloc._rs, ptr noundef nonnull @__func__.f2fs_kvmalloc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sbi, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 1), align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0)
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef %s_id, ptr noundef %12, ptr noundef nonnull @__func__.f2fs_kvmalloc, ptr noundef %13) #19
  br label %return

if.end4:                                          ; preds = %if.end3.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %size, i32 noundef 3136, i32 noundef -1) #20
  br label %return

return:                                           ; preds = %if.end4, %do.end, %if.then.return_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end4 ], [ null, %do.end ], [ null, %if.then.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_1_compress(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_decompress_safe(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_init_compress_ctx(ptr nocapture noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %i_compress_flag = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %i_compress_flag to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_compress_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %tobool.not = icmp ult i16 %3, 256
  %spec.select = select i1 %tobool.not, i32 16416, i32 262192
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %call3 = tail call fastcc ptr @f2fs_kvmalloc(ptr noundef %7, i32 noundef %spec.select)
  %private = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %private, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rlen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 11
  %9 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rlen, align 4
  %sub8 = add i32 %10, -4120
  %clen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %11 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub8, ptr %clen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lz4_destroy_compress_ctx(ptr nocapture noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @kvfree(ptr noundef %1) #16
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_compress_pages(ptr nocapture noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %i_compress_flag.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %i_compress_flag.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_compress_flag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %tobool.not.i = icmp ult i16 %3, 256
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = lshr i16 %3, 8
  %rbuf.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 9
  %5 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rbuf.i, align 4
  %cbuf.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 10
  %7 = ptrtoint ptr %cbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbuf.i, align 4
  %cdata.i = getelementptr inbounds %struct.compress_data, ptr %8, i32 0, i32 3
  %rlen.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 11
  %9 = ptrtoint ptr %rlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rlen.i, align 4
  %clen.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %11 = ptrtoint ptr %clen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clen.i, align 4
  %conv2.i = zext i16 %4 to i32
  %private.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i, align 4
  %call3.i = tail call i32 @LZ4_compress_HC(ptr noundef %6, ptr noundef %cdata.i, i32 noundef %10, i32 noundef %12, i32 noundef %conv2.i, ptr noundef %14) #16
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rbuf4.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 9
  %15 = ptrtoint ptr %rbuf4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rbuf4.i, align 4
  %cbuf5.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 10
  %17 = ptrtoint ptr %cbuf5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cbuf5.i, align 4
  %cdata6.i = getelementptr inbounds %struct.compress_data, ptr %18, i32 0, i32 3
  %rlen8.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 11
  %19 = ptrtoint ptr %rlen8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rlen8.i, align 4
  %clen9.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %21 = ptrtoint ptr %clen9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clen9.i, align 4
  %private10.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %23 = ptrtoint ptr %private10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private10.i, align 4
  %call11.i = tail call i32 @LZ4_compress_default(ptr noundef %16, ptr noundef %cdata6.i, i32 noundef %20, i32 noundef %22, ptr noundef %24) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %len.0.i = phi i32 [ %call3.i, %if.then.i ], [ %call11.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool12.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool12.not.i, label %if.end.i.lz4hc_compress_pages.exit_crit_edge, label %if.end14.i

if.end.i.lz4hc_compress_pages.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lz4hc_compress_pages.exit

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %clen15.i = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %25 = ptrtoint ptr %clen15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %len.0.i, ptr %clen15.i, align 4
  br label %lz4hc_compress_pages.exit

lz4hc_compress_pages.exit:                        ; preds = %if.end14.i, %if.end.i.lz4hc_compress_pages.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end14.i ], [ -11, %if.end.i.lz4hc_compress_pages.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_decompress_pages(ptr nocapture noundef readonly %dic) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cbuf = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 11
  %0 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cbuf, align 4
  %cdata = getelementptr inbounds %struct.compress_data, ptr %1, i32 0, i32 3
  %rbuf = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 10
  %2 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rbuf, align 4
  %clen = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 13
  %4 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clen, align 4
  %rlen = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 12
  %6 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rlen, align 4
  %call = tail call i32 @LZ4_decompress_safe(ptr noundef %cdata, ptr noundef %3, i32 noundef %5, i32 noundef %7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @lz4_decompress_pages._rs, ptr noundef nonnull @__func__.lz4_decompress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %inode = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 39
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.15, ptr noundef %s_id, i32 noundef %call) #19
  br label %cleanup

if.end6:                                          ; preds = %entry
  %log_cluster_size = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 4
  %16 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %log_cluster_size, align 4
  %shl = shl i32 4096, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %shl)
  %cmp7.not = icmp eq i32 %call, %shl
  br i1 %cmp7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @lz4_decompress_pages._rs.22, ptr noundef nonnull @__func__.lz4_decompress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %do.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %inode16 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %18 = ptrtoint ptr %inode16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode16, align 4
  %i_sb.i37 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i37, align 4
  %s_fs_info.i.i38 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i38, align 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %s_id19 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rlen, align 4
  %28 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %log_cluster_size, align 4
  %shl23 = shl i32 4096, %29
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.15, ptr noundef %s_id19, i32 noundef %27, i32 noundef %shl23) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.then8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then.cleanup_crit_edge ], [ -5, %do.end14 ], [ -5, %if.then8.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_compress_HC(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_compress_default(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_decompress_safe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_init_compress_ctx(ptr nocapture noundef %cc) #0 align 64 {
entry:
  %params = alloca %struct.ZSTD_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #16
  %0 = call ptr @memset(ptr %params, i32 255, i32 40)
  %rlen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 11
  %1 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rlen, align 4
  %conv2 = zext i32 %2 to i64
  call void @zstd_get_params(ptr nonnull sret(%struct.ZSTD_parameters) align 4 %params, i32 noundef 1, i64 noundef %conv2) #16
  %call3 = call i32 @zstd_cstream_workspace_bound(ptr noundef nonnull %params) #16
  %3 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cc, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %call6 = call fastcc ptr @f2fs_kvmalloc(ptr noundef %8, i32 noundef %call3)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = call ptr @zstd_init_cstream(ptr noundef nonnull %params, i64 noundef 0, ptr noundef nonnull %call6, i32 noundef %call3) #16
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.end9
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @zstd_init_compress_ctx._rs, ptr noundef nonnull @__func__.zstd_init_compress_ctx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end20_crit_edge, label %do.end

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cc, align 4
  %i_sb.i40 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i40, align 4
  %s_fs_info.i.i41 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i41, align 16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 39
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.15, ptr noundef %s_id, ptr noundef nonnull @__func__.zstd_init_compress_ctx) #19
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then12.if.end20_crit_edge
  call void @kvfree(ptr noundef nonnull %call6) #16
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %private = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %17 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6, ptr %private, align 4
  %private2 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 14
  %18 = ptrtoint ptr %private2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %private2, align 4
  %19 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rlen, align 4
  %sub23 = add i32 %20, -4120
  %clen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %21 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub23, ptr %clen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -5, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zstd_destroy_compress_ctx(ptr nocapture noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @kvfree(ptr noundef %1) #16
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private, align 4
  %private2 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 14
  %3 = ptrtoint ptr %private2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %private2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_compress_pages(ptr nocapture noundef %cc) #0 align 64 {
entry:
  %inbuf = alloca %struct.ZSTD_inBuffer_s, align 4
  %outbuf = alloca %struct.ZSTD_outBuffer_s, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private2 = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 14
  %0 = ptrtoint ptr %private2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #16
  %2 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %inbuf, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %inbuf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %outbuf) #16
  %4 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %outbuf, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %outbuf, i32 0, i32 2
  %rlen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 11
  %6 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rlen, align 4
  %sub1 = add i32 %7, -4120
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %rbuf = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 9
  %9 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rbuf, align 4
  %11 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %inbuf, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %2, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %5, align 4
  %cbuf = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 10
  %14 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cbuf, align 4
  %cdata = getelementptr inbounds %struct.compress_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cdata, ptr %outbuf, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub1, ptr %4, align 4
  %call = call i32 @zstd_compress_stream(ptr noundef %1, ptr noundef nonnull %outbuf, ptr noundef nonnull %inbuf) #16
  %call4 = call i32 @zstd_is_error(i32 noundef %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call i32 @___ratelimit(ptr noundef nonnull @zstd_compress_pages._rs, ptr noundef nonnull @__func__.zstd_compress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cc, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 39
  %call10 = call i32 @zstd_get_error_code(i32 noundef %call) #16
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, ptr noundef %s_id, ptr noundef nonnull @__func__.zstd_compress_pages, i32 noundef %call10) #19
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call13 = call i32 @zstd_end_stream(ptr noundef %1, ptr noundef nonnull %outbuf) #16
  %call14 = call i32 @zstd_is_error(i32 noundef %call13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end32, label %if.then16

if.then16:                                        ; preds = %if.end12
  %call17 = call i32 @___ratelimit(ptr noundef nonnull @zstd_compress_pages._rs.28, ptr noundef nonnull @__func__.zstd_compress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %do.end22

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cc, align 4
  %i_sb.i54 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i54, align 4
  %s_fs_info.i.i55 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i55, align 16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %s_id27 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 39
  %call29 = call i32 @zstd_get_error_code(i32 noundef %call13) #16
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.15, ptr noundef %s_id27, ptr noundef nonnull @__func__.zstd_compress_pages, i32 noundef %call29) #19
  br label %cleanup

if.end32:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool33.not = icmp eq i32 %call13, 0
  br i1 %tobool33.not, label %if.end35, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %5, align 4
  %clen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %36 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %clen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end32.cleanup_crit_edge, %do.end22, %if.then16.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -5, %do.end ], [ -5, %if.then.cleanup_crit_edge ], [ -5, %do.end22 ], [ -5, %if.then16.cleanup_crit_edge ], [ -11, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %outbuf) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_init_decompress_ctx(ptr nocapture noundef %dic) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %log_cluster_size = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 4
  %0 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %log_cluster_size, align 4
  %shl = shl i32 4096, %1
  %call = tail call i32 @zstd_dstream_workspace_bound(i32 noundef %shl) #16
  %inode = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2 = tail call fastcc ptr @f2fs_kvmalloc(ptr noundef %7, i32 noundef %call)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @zstd_init_dstream(i32 noundef %shl, ptr noundef nonnull %call2, i32 noundef %call) #16
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @zstd_init_decompress_ctx._rs, ptr noundef nonnull @__func__.zstd_init_decompress_ctx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end12_crit_edge, label %do.end

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inode, align 4
  %i_sb.i27 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i27, align 4
  %s_fs_info.i.i28 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i28, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 39
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.15, ptr noundef %s_id, ptr noundef nonnull @__func__.zstd_init_decompress_ctx) #19
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then5.if.end12_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call2) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %private = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 18
  %16 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2, ptr %private, align 4
  %private2 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 19
  %17 = ptrtoint ptr %private2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3, ptr %private2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -5, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zstd_destroy_decompress_ctx(ptr nocapture noundef %dic) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 18
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @kvfree(ptr noundef %1) #16
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private, align 4
  %private2 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 19
  %3 = ptrtoint ptr %private2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %private2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_decompress_pages(ptr nocapture noundef readonly %dic) #0 align 64 {
entry:
  %inbuf = alloca %struct.ZSTD_inBuffer_s, align 4
  %outbuf = alloca %struct.ZSTD_outBuffer_s, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private2 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 19
  %0 = ptrtoint ptr %private2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #16
  %2 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %inbuf, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %inbuf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %outbuf) #16
  %4 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %outbuf, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %outbuf, i32 0, i32 2
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %3, align 4
  %cbuf = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 11
  %7 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbuf, align 4
  %cdata = getelementptr inbounds %struct.compress_data, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cdata, ptr %inbuf, align 4
  %clen = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 13
  %10 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clen, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %2, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %5, align 4
  %rbuf = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 10
  %14 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rbuf, align 4
  %16 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %outbuf, align 4
  %rlen = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 12
  %17 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rlen, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %4, align 4
  %call = call i32 @zstd_decompress_stream(ptr noundef %1, ptr noundef nonnull %outbuf, ptr noundef nonnull %inbuf) #16
  %call3 = call i32 @zstd_is_error(i32 noundef %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @zstd_decompress_pages._rs, ptr noundef nonnull @__func__.zstd_decompress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %inode = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i, align 16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 39
  %call9 = call i32 @zstd_get_error_code(i32 noundef %call) #16
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.15, ptr noundef %s_id, ptr noundef nonnull @__func__.zstd_decompress_pages, i32 noundef %call9) #19
  br label %cleanup

if.end11:                                         ; preds = %entry
  %28 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rlen, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not = icmp eq i32 %29, %31
  br i1 %cmp.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @zstd_decompress_pages._rs.34, ptr noundef nonnull @__func__.zstd_decompress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.cleanup_crit_edge, label %do.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %inode22 = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 1
  %32 = ptrtoint ptr %inode22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %inode22, align 4
  %i_sb.i44 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i44, align 4
  %s_fs_info.i.i45 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info.i.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i.i45, align 16
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %s_id25 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 39
  %40 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rlen, align 4
  %log_cluster_size = getelementptr inbounds %struct.decompress_io_ctx, ptr %dic, i32 0, i32 4
  %42 = ptrtoint ptr %log_cluster_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %log_cluster_size, align 4
  %shl = shl i32 4096, %43
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.15, ptr noundef %s_id25, ptr noundef nonnull @__func__.zstd_decompress_pages, i32 noundef %41, i32 noundef %shl) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.then14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then.cleanup_crit_edge ], [ -5, %do.end20 ], [ -5, %if.then14.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %outbuf) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zstd_get_params(ptr sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_cstream_workspace_bound(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_cstream(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_compress_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_is_error(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_get_error_code(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_end_stream(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_dstream_workspace_bound(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_dstream(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lzorle_compress_pages(ptr noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rbuf = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 9
  %0 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbuf, align 4
  %rlen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 11
  %2 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rlen, align 4
  %cbuf = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 10
  %4 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cbuf, align 4
  %cdata = getelementptr inbounds %struct.compress_data, ptr %5, i32 0, i32 3
  %clen = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 12
  %private = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 13
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %call = tail call i32 @lzorle1x_1_compress(ptr noundef %1, i32 noundef %3, ptr noundef %cdata, ptr noundef %clen, ptr noundef %7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @lzorle_compress_pages._rs, ptr noundef nonnull @__func__.lzorle_compress_pages) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 39
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.15, ptr noundef %s_id, i32 noundef %call) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzorle1x_1_compress(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_decompress_pages_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_map_ram(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_aliases() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_decompress_pages_end(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_dnode_of_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_dnode(ptr nocapture noundef %dn) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %node_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %0 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @f2fs_put_page(ptr noundef nonnull %1, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inode_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %2 = ptrtoint ptr %inode_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode_page, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node_page, align 4
  %cmp.not = icmp eq ptr %5, %3
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %if.end.i

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end.i:                                         ; preds = %land.lhs.true
  %6 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i17.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !197

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i = add i32 %8, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %9, %if.end.i.i21.i ]
  %10 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !195

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.42) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !217
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #16, !srcloc !215
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_dnode, %if.then.i.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !201

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end7_crit_edge

folio_put_testzero.exit.i.i.i.if.end7_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %10) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %node_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %node_page, align 4
  %15 = ptrtoint ptr %inode_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %inode_page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_read_multi_pages(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_submit_bio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_page_writeback(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_drop_rpages(ptr nocapture noundef readonly %cc, i32 noundef %len, i1 noundef zeroext %unlock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp14 = icmp sgt i32 %len, 0
  br i1 %cmp14, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpages, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.015
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  br i1 %unlock, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unlock_page(ptr noundef nonnull %3) #16
  br label %for.inc

if.else:                                          ; preds = %if.end
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !195

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.42) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !217
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !215
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_drop_rpages, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !201

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %8) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %if.then2, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_detach_private(ptr noundef %folio) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %private.i = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 4
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !197

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.43) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

folio_test_private.exit:                          ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.cleanup_crit_edge, label %if.end

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i.i1, 0
  br i1 %tobool.not.i.i2, label %folio_clear_private.exit, label %if.then.i.i3, !prof !197

if.then.i.i3:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.43) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #16
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  %9 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !195

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.42) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !217
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #16
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #16, !srcloc !215
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !201

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #16
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %folio) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_compress_pages_start(ptr noundef %inode, i32 noundef %cluster_idx, i32 noundef %cluster_size, i8 noundef zeroext %algtype) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_compress_pages_start, i32 0, i32 1), ptr blockaddress(@trace_f2fs_compress_pages_start, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !252
  %call42 = tail call i32 @__traceiter_f2fs_compress_pages_start(ptr noundef null, ptr noundef %inode, i32 noundef %cluster_idx, i32 noundef %cluster_size, i8 noundef zeroext %algtype) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !253
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_compress_pages_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_compress_pages_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_compress_pages_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_f2fs_compress_pages_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 1809, ptr noundef nonnull @.str.40) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !205
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_compress_pages_end(ptr noundef %inode, i32 noundef %cluster_idx, i32 noundef %compressed_size, i32 noundef %ret) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_compress_pages_end, i32 0, i32 1), ptr blockaddress(@trace_f2fs_compress_pages_end, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !254
  %call42 = tail call i32 @__traceiter_f2fs_compress_pages_end(ptr noundef null, ptr noundef %inode, i32 noundef %cluster_idx, i32 noundef %compressed_size, i32 noundef %ret) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !255
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_compress_pages_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_compress_pages_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_compress_pages_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_f2fs_compress_pages_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 1825, ptr noundef nonnull @.str.40) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !205
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #16
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_compress_pages_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_compress_pages_end(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_node_info(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_block_writeback(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_encrypt_one_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_cluster_writeback(ptr nocapture noundef readonly %cc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_size = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 2
  %0 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cluster_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rpages = getelementptr inbounds %struct.compress_ctx, ptr %cc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %rpages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpages, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call zeroext i1 @set_page_writeback(ptr noundef nonnull %5) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.09, 1
  %6 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cluster_size, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_invalidate_blocks(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_data_blkaddr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_outplace_write_data(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_i_compr_blocks_update(ptr noundef %inode, i64 noundef %blocks, i1 noundef zeroext %add) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %i_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 39
  %0 = ptrtoint ptr %i_cluster_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_cluster_size, align 4
  %2 = trunc i64 %blocks to i32
  %conv1 = sub i32 %1, %2
  %i_compr_blocks7 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 34
  br i1 %add, label %if.then6.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_compr_blocks7, i32 noundef 4) #16
  %3 = ptrtoint ptr %i_compr_blocks7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_compr_blocks7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then6.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_compr_blocks7, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_compr_blocks7, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_compr_blocks7, ptr %i_compr_blocks7, i32 %conv1, ptr elementtype(i32) %i_compr_blocks7) #16, !srcloc !233
  %conv8 = sext i32 %conv1 to i64
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %compr_blocks = getelementptr inbounds %struct.f2fs_sb_info, ptr %9, i32 0, i32 103
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_blocks, i32 noundef 8) #16
  tail call void @generic_atomic64_add(i64 noundef %conv8, ptr noundef %compr_blocks) #16
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_compr_blocks7, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_compr_blocks7, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_compr_blocks7, ptr %i_compr_blocks7, i32 %conv1, ptr elementtype(i32) %i_compr_blocks7) #16, !srcloc !213
  %conv11 = sext i32 %conv1 to i64
  %i_sb.i30 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i30, align 4
  %s_fs_info.i.i31 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i31, align 16
  %compr_blocks13 = getelementptr inbounds %struct.f2fs_sb_info, ptr %14, i32 0, i32 103
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_blocks13, i32 noundef 8) #16
  tail call void @generic_atomic64_sub(i64 noundef %conv11, ptr noundef %compr_blocks13) #16
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6.critedge
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_free_bounce_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_write_single_data_page(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @congestion_wait(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_balance_fs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @attach_page_private(ptr noundef %page, ptr noundef %data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !197

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !195

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.46) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #16, !srcloc !250
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #16, !srcloc !233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@attach_page_private, %if.then.i.i.i.i)) #16
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !201

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #16
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.81, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %private.i, align 4
  %9 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !197

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.43) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !206
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fsverity_verify_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !80, !81, !83, !84, !85, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !122, !124, !126, !127, !128, !129, !130, !131, !133, !135, !136, !137, !138, !140, !141, !143, !144, !146, !148, !150, !152, !153, !155, !156, !158, !159, !160, !161, !163, !165, !166, !167, !168, !170, !172, !174, !176, !177, !178, !179, !181, !183}
!llvm.named.register.sp = !{!185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @__param_num_compress_pages, !1, !"__param_num_compress_pages", i1 false, i1 false}
!1 = !{!"../fs/f2fs/compress.c", i32 564, i32 1}
!2 = !{ptr @__UNIQUE_ID_num_compress_pagestype441, !1, !"__UNIQUE_ID_num_compress_pagestype441", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_num_compress_pages442, !4, !"__UNIQUE_ID_num_compress_pages442", i1 false, i1 false}
!4 = !{!"../fs/f2fs/compress.c", i32 565, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/f2fs/compress.c", i32 804, i32 5}
!7 = !{ptr @f2fs_decompress_cluster._rs, !6, !"_rs", i1 false, i1 false}
!8 = !{ptr @__func__.f2fs_decompress_cluster, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @f2fs_decompress_cluster._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @f2fs_decompress_cluster._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/f2fs/compress.c", i32 919, i32 17}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/f2fs/compress.c", i32 926, i32 12}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/f2fs/compress.c", i32 936, i32 13}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/f2fs/compress.c", i32 947, i32 14}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/f2fs/compress.c", i32 954, i32 2}
!24 = !{ptr @f2fs_decompress_end_io.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../fs/f2fs/compress.c", i32 1707, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @f2fs_compress_aops, !28, !"f2fs_compress_aops", i1 false, i1 false}
!28 = !{!"../fs/f2fs/compress.c", i32 1751, i32 39}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/f2fs/compress.c", i32 1914, i32 21}
!31 = !{ptr @cic_entry_slab, !32, !"cic_entry_slab", i1 false, i1 false}
!32 = !{!"../fs/f2fs/compress.c", i32 23, i32 27}
!33 = !{ptr @dic_entry_slab, !34, !"dic_entry_slab", i1 false, i1 false}
!34 = !{!"../fs/f2fs/compress.c", i32 24, i32 27}
!35 = !{ptr @compress_page_pool, !36, !"compress_page_pool", i1 false, i1 false}
!36 = !{!"../fs/f2fs/compress.c", i32 562, i32 19}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!39 = !{ptr @f2fs_kmalloc._rs, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../fs/f2fs/f2fs.h", i32 3219, i32 3}
!41 = !{ptr @__func__.f2fs_kmalloc, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @f2fs_kmalloc._entry, !40, !"_entry", i1 false, i1 false}
!45 = !{ptr @f2fs_kmalloc._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @f2fs_cops, !47, !"f2fs_cops", i1 false, i1 false}
!47 = !{!"../fs/f2fs/compress.c", i32 532, i32 40}
!48 = !{ptr @f2fs_lzo_ops, !49, !"f2fs_lzo_ops", i1 false, i1 false}
!49 = !{!"../fs/f2fs/compress.c", i32 230, i32 39}
!50 = !{ptr @f2fs_kvmalloc._rs, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../fs/f2fs/f2fs.h", i32 3236, i32 3}
!52 = !{ptr @__func__.f2fs_kvmalloc, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @f2fs_kvmalloc._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @f2fs_kvmalloc._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @lzo_compress_pages._rs, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../fs/f2fs/compress.c", i32 200, i32 3}
!57 = !{ptr @__func__.lzo_compress_pages, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @lzo_compress_pages._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @lzo_compress_pages._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @lzo_decompress_pages._rs, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../fs/f2fs/compress.c", i32 214, i32 3}
!64 = !{ptr @__func__.lzo_decompress_pages, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @lzo_decompress_pages._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @lzo_decompress_pages._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @lzo_decompress_pages._rs.17, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../fs/f2fs/compress.c", i32 220, i32 3}
!70 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @lzo_decompress_pages._entry.18, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @lzo_decompress_pages._entry_ptr.20, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @f2fs_lz4_ops, !74, !"f2fs_lz4_ops", i1 false, i1 false}
!74 = !{!"../fs/f2fs/compress.c", i32 327, i32 39}
!75 = !{ptr @lz4_decompress_pages._rs, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../fs/f2fs/compress.c", i32 311, i32 3}
!77 = !{ptr @__func__.lz4_decompress_pages, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @lz4_decompress_pages._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @lz4_decompress_pages._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @lz4_decompress_pages._rs.22, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../fs/f2fs/compress.c", i32 317, i32 3}
!83 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @lz4_decompress_pages._entry.23, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @lz4_decompress_pages._entry_ptr.25, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @f2fs_zstd_ops, !87, !"f2fs_zstd_ops", i1 false, i1 false}
!87 = !{!"../fs/f2fs/compress.c", i32 497, i32 39}
!88 = !{ptr @zstd_init_compress_ctx._rs, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../fs/f2fs/compress.c", i32 360, i32 3}
!90 = !{ptr @__func__.zstd_init_compress_ctx, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @zstd_init_compress_ctx._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @zstd_init_compress_ctx._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @zstd_compress_pages._rs, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../fs/f2fs/compress.c", i32 400, i32 3}
!96 = !{ptr @__func__.zstd_compress_pages, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @zstd_compress_pages._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @zstd_compress_pages._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @zstd_compress_pages._rs.28, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../fs/f2fs/compress.c", i32 408, i32 3}
!102 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @zstd_compress_pages._entry.29, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @zstd_compress_pages._entry_ptr.31, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @zstd_init_decompress_ctx._rs, !106, !"_rs", i1 false, i1 false}
!106 = !{!"../fs/f2fs/compress.c", i32 442, i32 3}
!107 = !{ptr @__func__.zstd_init_decompress_ctx, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @zstd_init_decompress_ctx._entry, !106, !"_entry", i1 false, i1 false}
!110 = !{ptr @zstd_init_decompress_ctx._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @zstd_decompress_pages._rs, !112, !"_rs", i1 false, i1 false}
!112 = !{!"../fs/f2fs/compress.c", i32 479, i32 3}
!113 = !{ptr @__func__.zstd_decompress_pages, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @zstd_decompress_pages._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @zstd_decompress_pages._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @zstd_decompress_pages._rs.34, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../fs/f2fs/compress.c", i32 486, i32 3}
!119 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @zstd_decompress_pages._entry.35, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @zstd_decompress_pages._entry_ptr.37, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @f2fs_lzorle_ops, !123, !"f2fs_lzorle_ops", i1 false, i1 false}
!123 = !{!"../fs/f2fs/compress.c", i32 523, i32 39}
!124 = !{ptr @lzorle_compress_pages._rs, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../fs/f2fs/compress.c", i32 516, i32 3}
!126 = !{ptr @__func__.lzorle_compress_pages, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @lzorle_compress_pages._entry, !125, !"_entry", i1 false, i1 false}
!129 = !{ptr @lzorle_compress_pages._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @__param_str_num_compress_pages, !1, !"__param_str_num_compress_pages", i1 false, i1 false}
!131 = !{ptr @num_compress_pages, !132, !"num_compress_pages", i1 false, i1 false}
!132 = !{!"../fs/f2fs/compress.c", i32 563, i32 12}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/trace/events/f2fs.h", i32 1811, i32 1}
!135 = !{ptr @.str.39, !134, !"<string literal>", i1 false, i1 false}
!136 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!137 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!140 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../include/trace/events/f2fs.h", i32 1827, i32 1}
!143 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!144 = !{ptr @.str.42, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/linux/mm.h", i32 717, i32 2}
!146 = !{ptr @.str.43, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!148 = distinct !{null, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../include/trace/events/f2fs.h", i32 1803, i32 1}
!152 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../include/trace/events/f2fs.h", i32 1819, i32 1}
!155 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!156 = !{ptr @f2fs_trylock_op._rs, !157, !"_rs", i1 false, i1 false}
!157 = !{!"../fs/f2fs/f2fs.h", i32 2103, i32 3}
!158 = !{ptr @__func__.f2fs_trylock_op, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @f2fs_trylock_op._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @f2fs_trylock_op._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.45, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!163 = !{ptr @f2fs_kmem_cache_alloc._rs, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../fs/f2fs/f2fs.h", i32 2650, i32 3}
!165 = !{ptr @__func__.f2fs_kmem_cache_alloc, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @f2fs_kmem_cache_alloc._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @f2fs_kmem_cache_alloc._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.46, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!170 = !{ptr @.str.47, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!174 = !{ptr @f2fs_pagecache_get_page._rs, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../fs/f2fs/f2fs.h", i32 2587, i32 3}
!176 = !{ptr @__func__.f2fs_pagecache_get_page, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @f2fs_pagecache_get_page._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @f2fs_pagecache_get_page._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.49, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!181 = !{ptr @.str.50, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/f2fs/compress.c", i32 1933, i32 42}
!183 = !{ptr @.str.51, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/f2fs/compress.c", i32 1947, i32 42}
!185 = !{!"sp"}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i64 2151064555, i64 2151065046, i64 2151064592, i64 2151064648, i64 2151064682, i64 2151064706, i64 2151064747, i64 2151064768, i64 2151064796, i64 2151064830}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{i64 2157060704, i64 2157061186, i64 2157060741, i64 2157060797, i64 2157060831, i64 2157060855, i64 2157060896, i64 2157060917, i64 2157060945, i64 2157060979}
!199 = !{i64 2157062351, i64 2157062834, i64 2157062388, i64 2157062444, i64 2157062478, i64 2157062502, i64 2157062543, i64 2157062564, i64 2157062592, i64 2157062626}
!200 = !{i8 0, i8 2}
!201 = !{i64 2148521702, i64 2148521707, i64 2148521720, i64 2148521764, i64 2148521798, i64 2148521819}
!202 = !{i64 2156931639}
!203 = !{i64 2156931938}
!204 = !{i64 2149518109}
!205 = !{i64 2149519145}
!206 = !{i64 2150605849, i64 2150606340, i64 2150605886, i64 2150605942, i64 2150605976, i64 2150606000, i64 2150606041, i64 2150606062, i64 2150606090, i64 2150606124}
!207 = !{i64 2148705962, i64 2148705994, i64 2148706023, i64 2148706057, i64 2148706088, i64 2148706111}
!208 = !{i64 2148795067}
!209 = !{i64 2155408970, i64 2155409450, i64 2155409007, i64 2155409063, i64 2155409097, i64 2155409121, i64 2155409162, i64 2155409183, i64 2155409211, i64 2155409245}
!210 = !{i64 2155410520, i64 2155411000, i64 2155410557, i64 2155410613, i64 2155410647, i64 2155410671, i64 2155410712, i64 2155410733, i64 2155410761, i64 2155410795}
!211 = !{i64 2156972960}
!212 = !{i64 2156973253}
!213 = !{i64 2148699569, i64 2148699595, i64 2148699624, i64 2148699658, i64 2148699689, i64 2148699712}
!214 = !{i64 2148785580}
!215 = !{i64 2148700289, i64 2148700321, i64 2148700350, i64 2148700384, i64 2148700415, i64 2148700438}
!216 = !{i64 2148785809}
!217 = !{i64 2153214381, i64 2153214864, i64 2153214418, i64 2153214474, i64 2153214508, i64 2153214532, i64 2153214573, i64 2153214594, i64 2153214622, i64 2153214656}
!218 = !{i64 2151356812}
!219 = !{i64 2157111320, i64 2157111804, i64 2157111357, i64 2157111413, i64 2157111447, i64 2157111471, i64 2157111512, i64 2157111533, i64 2157111561, i64 2157111595}
!220 = !{!"auto-init"}
!221 = !{i64 2151355741}
!222 = !{i64 2157113224, i64 2157113708, i64 2157113261, i64 2157113317, i64 2157113351, i64 2157113375, i64 2157113416, i64 2157113437, i64 2157113465, i64 2157113499}
!223 = !{i64 2157114936, i64 2157115420, i64 2157114973, i64 2157115029, i64 2157115063, i64 2157115087, i64 2157115128, i64 2157115149, i64 2157115177, i64 2157115211}
!224 = !{i64 2151074385, i64 2151074558, i64 2151074573, i64 2151074625, i64 2151074684, i64 2151074708, i64 2151074749, i64 2151074770, i64 2151074798, i64 2151074830}
!225 = !{i64 1101784, i64 1101845}
!226 = !{i64 1104516}
!227 = !{i64 1104801}
!228 = !{i64 2152539935}
!229 = !{i64 2152539777}
!230 = !{i64 2152540105}
!231 = !{i64 2150125919}
!232 = !{i64 2157109210, i64 2157109693, i64 2157109247, i64 2157109303, i64 2157109337, i64 2157109361, i64 2157109402, i64 2157109423, i64 2157109451, i64 2157109485}
!233 = !{i64 2148697104, i64 2148697130, i64 2148697159, i64 2148697193, i64 2148697224, i64 2148697247}
!234 = !{i64 2157121225, i64 2157121709, i64 2157121262, i64 2157121318, i64 2157121352, i64 2157121376, i64 2157121417, i64 2157121438, i64 2157121466, i64 2157121500}
!235 = !{i64 2157125885, i64 2157126369, i64 2157125922, i64 2157125978, i64 2157126012, i64 2157126036, i64 2157126077, i64 2157126098, i64 2157126126, i64 2157126160}
!236 = !{i64 2150715758, i64 2150716249, i64 2150715795, i64 2150715851, i64 2150715885, i64 2150715909, i64 2150715950, i64 2150715971, i64 2150715999, i64 2150716033}
!237 = !{i64 2155381595}
!238 = !{i64 2150667439, i64 2150667612, i64 2150667627, i64 2150667679, i64 2150667738, i64 2150667762, i64 2150667803, i64 2150667824, i64 2150667852, i64 2150667884}
!239 = !{i64 2150668314, i64 2150668487, i64 2150668502, i64 2150668554, i64 2150668613, i64 2150668637, i64 2150668678, i64 2150668699, i64 2150668727, i64 2150668759}
!240 = !{i64 2150658881, i64 2150659372, i64 2150658918, i64 2150658974, i64 2150659008, i64 2150659032, i64 2150659073, i64 2150659094, i64 2150659122, i64 2150659156}
!241 = !{i64 2151364725, i64 2151364898, i64 2151364913, i64 2151364965, i64 2151365024, i64 2151365048, i64 2151365089, i64 2151365110, i64 2151365138, i64 2151365170}
!242 = !{i64 2151365600, i64 2151365773, i64 2151365788, i64 2151365840, i64 2151365899, i64 2151365923, i64 2151365964, i64 2151365985, i64 2151366013, i64 2151366045}
!243 = !{i64 2150676241, i64 2150676414, i64 2150676429, i64 2150676481, i64 2150676540, i64 2150676564, i64 2150676605, i64 2150676626, i64 2150676654, i64 2150676686}
!244 = !{i64 2150677116, i64 2150677289, i64 2150677304, i64 2150677356, i64 2150677415, i64 2150677439, i64 2150677480, i64 2150677501, i64 2150677529, i64 2150677561}
!245 = !{i64 2148786659}
!246 = !{i64 2148701099, i64 2148701131, i64 2148701160, i64 2148701194, i64 2148701225, i64 2148701248}
!247 = !{i64 2150407748}
!248 = !{i64 2150613282, i64 2150613773, i64 2150613319, i64 2150613375, i64 2150613409, i64 2150613433, i64 2150613474, i64 2150613495, i64 2150613523, i64 2150613557}
!249 = !{i64 2155454618, i64 2155455098, i64 2155454655, i64 2155454711, i64 2155454745, i64 2155454769, i64 2155454810, i64 2155454831, i64 2155454859, i64 2155454893}
!250 = !{i64 2153238354, i64 2153238838, i64 2153238391, i64 2153238447, i64 2153238481, i64 2153238505, i64 2153238546, i64 2153238567, i64 2153238595, i64 2153238629}
!251 = !{i64 2151069806, i64 2151069979, i64 2151069994, i64 2151070046, i64 2151070105, i64 2151070129, i64 2151070170, i64 2151070191, i64 2151070219, i64 2151070251}
!252 = !{i64 2156912732}
!253 = !{i64 2156913027}
!254 = !{i64 2156950353}
!255 = !{i64 2156950642}
