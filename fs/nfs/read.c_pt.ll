; ModuleID = '/llk/IR_all_yes/fs/nfs/read.c_pt.bc'
source_filename = "../fs/nfs/read.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs_pageio_init_read\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_pageio_init_read\09\09\09\09"
module asm "\09.long\09__crc_nfs_pageio_init_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pageio_init_read:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pageio_init_read\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pageio_init_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs_pageio_reset_read_mds\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_pageio_reset_read_mds\09\09\09\09"
module asm "\09.long\09__crc_nfs_pageio_reset_read_mds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pageio_reset_read_mds:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pageio_reset_read_mds\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pageio_reset_read_mds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfs_pageio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_rw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfs_pgio_completion_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%struct.atomic_t = type { i32 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.144, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.145, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.146, ptr, %struct.address_space, %struct.list_head, %union.anon.147, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.144 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.145 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.146 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.147 = type { ptr }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.124 }
%union.anon.124 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
%struct.nfs_readdesc = type { %struct.nfs_pageio_descriptor, ptr }
%struct.page = type { i32, %union.anon.9, %union.anon.120, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.120 = type { %struct.atomic_t }
%struct.anon.164 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.nfs_iostats = type { [8 x i64], [5 x i64], [27 x i32], [44 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.126, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.126 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.130, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.130 = type { %struct.anon.132 }
%struct.anon.132 = type { i64 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.135 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.133, i32 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, [12 x i8] }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.137 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.142, %struct.list_head, %struct.list_head, %union.anon.143 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.142 = type { %struct.list_head }
%union.anon.143 = type { %struct.hlist_node }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }

@nfs_pgio_rw_ops = external dso_local constant %struct.nfs_pageio_ops, align 4
@nfs_rw_read_ops = internal constant { %struct.nfs_rw_ops, [44 x i8] } { %struct.nfs_rw_ops { ptr @nfs_readhdr_alloc, ptr @nfs_readhdr_free, ptr @nfs_readpage_done, ptr @nfs_readpage_result, ptr @nfs_initiate_read }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_nfs_pageio_init_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pageio_init_read = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pageio_init_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pageio_init_read to i32), ptr @__kstrtab_nfs_pageio_init_read, ptr @__kstrtabns_nfs_pageio_init_read }, section "___ksymtab_gpl+nfs_pageio_init_read", align 4
@nfs_pageio_reset_read_mds.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/nfs/read.c\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_nfs_pageio_reset_read_mds = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pageio_reset_read_mds = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pageio_reset_read_mds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pageio_reset_read_mds to i32), ptr @__kstrtab_nfs_pageio_reset_read_mds, ptr @__kstrtabns_nfs_pageio_reset_read_mds }, section "___ksymtab_gpl+nfs_pageio_reset_read_mds", align 4
@nfs_async_read_completion_ops = internal constant { %struct.nfs_pgio_completion_ops, [16 x i8] } { %struct.nfs_pgio_completion_ops { ptr @nfs_async_read_error, ptr null, ptr @nfs_read_completion, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfs_read_data\00", [18 x i8] zeroinitializer }, align 32
@nfs_rdata_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__tracepoint_nfs_aop_readpage = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfs/nfstrace.h\00", [46 x i8] zeroinitializer }, align 32
@trace_nfs_aop_readpage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_readpage_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFS: read done (%s/%llu %d@%lld)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs_readpage_release\00", [43 x i8] zeroinitializer }, align 32
@nfs_readpage_release._entry_ptr = internal global ptr @nfs_readpage_release._entry, section ".printk_index", align 4
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@nfs_pageio_complete_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_nfs_aop_readpage_done = external dso_local global %struct.tracepoint, align 4
@trace_nfs_aop_readpage_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs_aop_readahead = external dso_local global %struct.tracepoint, align 4
@trace_nfs_aop_readahead.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs_aop_readahead_done = external dso_local global %struct.tracepoint, align 4
@trace_nfs_aop_readahead_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs_readpage_done = external dso_local global %struct.tracepoint, align 4
@trace_nfs_readpage_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs_readpage_short = external dso_local global %struct.tracepoint, align 4
@trace_nfs_readpage_short.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs_initiate_read = external dso_local global %struct.tracepoint, align 4
@trace_nfs_initiate_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 4294967174, i64 4294967180, i64 4294967266, i64 4294967268, i64 4294967269, i64 4294967283, i64 4294967284, i64 4294967289, i64 4294967291]
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"nfs_rw_read_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 452, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 104, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [30 x i8] c"nfs_async_read_completion_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 217, i32 45 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 437, i32 39 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"nfs_rdata_cachep\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 36, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 260, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"../fs/nfs/nfstrace.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 816, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 108, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private constant [17 x i8] c"../fs/nfs/read.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 116, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 416, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 452, i32 1 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_nfs_pageio_init_read, ptr @__ksymtab_nfs_pageio_reset_read_mds, ptr @nfs_readpage_release._entry, ptr @nfs_readpage_release._entry_ptr, ptr @nfs_rw_read_ops, ptr @.str, ptr @nfs_async_read_completion_ops, ptr @.str.1, ptr @nfs_rdata_cachep, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_rw_read_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_async_read_completion_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_rdata_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_readpage_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_pageio_init_read(ptr noundef %pgio, ptr noundef %inode, i1 noundef zeroext %force_mds, ptr noundef %compl_ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %pnfs_curr_ld = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %pnfs_curr_ld to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnfs_curr_ld, align 4
  %tobool.not = icmp eq ptr %5, null
  %brmerge = or i1 %tobool.not, %force_mds
  br i1 %brmerge, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pg_read_ops = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %pg_read_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pg_read_ops, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pg_ops.0 = phi ptr [ %7, %if.then ], [ @nfs_pgio_rw_ops, %entry.if.end_crit_edge ]
  %rsize = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rsize, align 4
  tail call void @nfs_pageio_init(ptr noundef %pgio, ptr noundef %inode, ptr noundef %pg_ops.0, ptr noundef %compl_ops, ptr noundef nonnull @nfs_rw_read_ops, i32 noundef %9, i32 noundef 0) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_pageio_reset_read_mds(ptr noundef %pgio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_ops = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 1
  %0 = ptrtoint ptr %pg_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pg_cleanup = getelementptr inbounds %struct.nfs_pageio_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pg_cleanup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pg_cleanup, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %pgio) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %pg_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nfs_pgio_rw_ops, ptr %pg_ops, align 4
  %pg_mirror_count = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 11
  %5 = ptrtoint ptr %pg_mirror_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pg_mirror_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b53 = load i1, ptr @nfs_pageio_reset_read_mds.__already_done, align 1
  br i1 %.b53, label %land.rhs.if.end35_crit_edge, label %if.then13, !prof !67

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfs_pageio_reset_read_mds.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then13, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %pg_mirrors = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 12
  %7 = ptrtoint ptr %pg_mirrors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pg_mirrors, align 4
  %9 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pgio, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %rsize = getelementptr inbounds %struct.nfs_server, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rsize, align 4
  %pg_bsize = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %pg_bsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pg_bsize, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_readpage(ptr noundef readonly %file, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.nfs_readdesc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %desc) #10
  %0 = call ptr @memset(ptr %desc, i32 255, i32 96)
  %1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !67

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %3, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %4, %if.end.i.i ]
  %5 = inttoptr i32 %retval.0.i.i to ptr
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !67

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i3.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i3.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i3.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapcache.exit.i.i, label %if.then.i.i.i.i, !prof !67

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_swapcache.exit.i.i:                    ; preds = %land.rhs.i.i.i
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %5, align 4
  %16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapcache.exit.i.i.if.end.i3.i_crit_edge, label %if.then.i2.i, !prof !67

folio_test_swapcache.exit.i.i.if.end.i3.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i3.i

if.then.i2.i:                                     ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call ptr @swapcache_mapping(ptr noundef %5) #10
  br label %page_file_mapping.exit

if.end.i3.i:                                      ; preds = %folio_test_swapcache.exit.i.i.if.end.i3.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i3.i_crit_edge
  %mapping.i.i = getelementptr inbounds %struct.anon.164, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mapping.i.i, align 4
  br label %page_file_mapping.exit

page_file_mapping.exit:                           ; preds = %if.end.i3.i, %if.then.i2.i
  %retval.0.i4.i = phi ptr [ %call2.i.i, %if.then.i2.i ], [ %18, %if.end.i3.i ]
  %19 = ptrtoint ptr %retval.0.i4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retval.0.i4.i, align 4
  tail call fastcc void @trace_nfs_aop_readpage(ptr noundef %20, ptr noundef %page)
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %io_stats.i.i = getelementptr inbounds %struct.nfs_server, ptr %24, i32 0, i32 6
  %26 = ptrtoint ptr %io_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_stats.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.nfs_iostats, ptr %27, i32 0, i32 2, i32 8
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i.i, align 4
  %arrayidx13.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx13.i.i, align 4
  %add.i.i = add i32 %34, %28
  %35 = inttoptr i32 %add.i.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add14.i.i = add i32 %37, 1
  store i32 %add14.i.i, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i107 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i107, label %if.then.i.i108, label %page_file_mapping.exit.nfs_inc_stats.exit_crit_edge, !prof !71

page_file_mapping.exit.nfs_inc_stats.exit_crit_edge: ; preds = %page_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_inc_stats.exit

if.then.i.i108:                                   ; preds = %page_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %nfs_inc_stats.exit

nfs_inc_stats.exit:                               ; preds = %if.then.i.i108, %page_file_mapping.exit.nfs_inc_stats.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #10, !srcloc !72
  %call1 = tail call i32 @nfs_wb_page(ptr noundef %20, ptr noundef %page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %nfs_inc_stats.exit.out_unlock_crit_edge

nfs_inc_stats.exit.out_unlock_crit_edge:          ; preds = %nfs_inc_stats.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %nfs_inc_stats.exit
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %1, align 4
  %and.i.i109 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i109)
  %tobool.not.i.i110 = icmp eq i32 %and.i.i109, 0
  br i1 %tobool.not.i.i110, label %if.end.i.i113, label %if.then.i.i112, !prof !67

if.then.i.i112:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i111 = add i32 %40, -1
  br label %_compound_head.exit.i116

if.end.i.i113:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i116

_compound_head.exit.i116:                         ; preds = %if.end.i.i113, %if.then.i.i112
  %retval.0.i.i114 = phi i32 [ %sub.i.i111, %if.then.i.i112 ], [ %41, %if.end.i.i113 ]
  %42 = inttoptr i32 %retval.0.i.i114 to ptr
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i.i.i115 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i115)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i115, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !67

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i116
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i116
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %48 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i, label %if.end5, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  br label %out_unlock

if.end5:                                          ; preds = %folio_flags.exit.i.i
  %flags.i = getelementptr i8, ptr %20, i32 -308
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags.i, align 4
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool7.not = icmp eq i32 %51, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_unlock_crit_edge

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end9:                                          ; preds = %if.end5
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end9
  %call11 = tail call ptr @nfs_find_open_context(ptr noundef %20, ptr noundef null, i32 noundef 1) #10
  %ctx = getelementptr inbounds %struct.nfs_readdesc, ptr %desc, i32 0, i32 1
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call11, ptr %ctx, align 4
  %cmp13 = icmp eq ptr %call11, null
  br i1 %cmp13, label %if.then10.out_unlock_crit_edge, label %if.then10.if.end19_crit_edge

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then10.out_unlock_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %53 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %private_data.i, align 4
  %call17 = tail call ptr @get_nfs_open_context(ptr noundef %54) #10
  %ctx18 = getelementptr inbounds %struct.nfs_readdesc, ptr %desc, i32 0, i32 1
  %55 = ptrtoint ptr %ctx18 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call17, ptr %ctx18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then10.if.end19_crit_edge
  %ctx20 = getelementptr inbounds %struct.nfs_readdesc, ptr %desc, i32 0, i32 1
  %56 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx20, align 4
  %error = getelementptr inbounds %struct.nfs_open_context, ptr %57, i32 0, i32 8
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %error, i32 1, i32 3, i32 1) #10
  %58 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %error) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %59 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i118 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i.i.i118, align 16
  %pnfs_curr_ld.i = getelementptr inbounds %struct.nfs_server, ptr %62, i32 0, i32 46
  %63 = ptrtoint ptr %pnfs_curr_ld.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pnfs_curr_ld.i, align 4
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %if.end19.nfs_pageio_init_read.exit_crit_edge, label %if.then.i

if.end19.nfs_pageio_init_read.exit_crit_edge:     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_pageio_init_read.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %pg_read_ops.i = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %64, i32 0, i32 15
  %65 = ptrtoint ptr %pg_read_ops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pg_read_ops.i, align 4
  br label %nfs_pageio_init_read.exit

nfs_pageio_init_read.exit:                        ; preds = %if.then.i, %if.end19.nfs_pageio_init_read.exit_crit_edge
  %pg_ops.0.i = phi ptr [ %66, %if.then.i ], [ @nfs_pgio_rw_ops, %if.end19.nfs_pageio_init_read.exit_crit_edge ]
  %rsize.i = getelementptr inbounds %struct.nfs_server, ptr %62, i32 0, i32 11
  %67 = ptrtoint ptr %rsize.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rsize.i, align 4
  call void @nfs_pageio_init(ptr noundef nonnull %desc, ptr noundef %20, ptr noundef %pg_ops.0.i, ptr noundef nonnull @nfs_async_read_completion_ops, ptr noundef nonnull @nfs_rw_read_ops, i32 noundef %68, i32 noundef 0) #10
  %call36 = call i32 @readpage_async_filler(ptr noundef nonnull %desc, ptr noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %nfs_pageio_init_read.exit.out_crit_edge

nfs_pageio_init_read.exit.out_crit_edge:          ; preds = %nfs_pageio_init_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end39:                                         ; preds = %nfs_pageio_init_read.exit
  call fastcc void @nfs_pageio_complete_read(ptr noundef nonnull %desc)
  %pg_error = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %desc, i32 0, i32 4
  %69 = ptrtoint ptr %pg_error to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pg_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %tobool45.not = icmp sgt i32 %70, -1
  br i1 %tobool45.not, label %if.then46, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then46:                                        ; preds = %if.end39
  %call47 = call fastcc i32 @wait_on_page_locked_killable(ptr noundef %page)
  %call48 = call fastcc i32 @PageUptodate(ptr noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool50.not = icmp eq i32 %call47, 0
  %or.cond = select i1 %tobool49.not, i1 %tobool50.not, i1 false
  br i1 %or.cond, label %if.then51, label %if.then46.out_crit_edge

if.then46.out_crit_edge:                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then51:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx20, align 4
  %error54 = getelementptr inbounds %struct.nfs_open_context, ptr %72, i32 0, i32 8
  %call.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %error54, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  call void @llvm.prefetch.p0(ptr %error54, i32 1, i32 3, i32 1) #10
  %73 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %error54) #10, !srcloc !75
  %asmresult.i119 = extractvalue { i32, i32 } %73, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  br label %out

out:                                              ; preds = %if.then51, %if.then46.out_crit_edge, %if.end39.out_crit_edge, %nfs_pageio_init_read.exit.out_crit_edge
  %ret.0 = phi i32 [ %call36, %nfs_pageio_init_read.exit.out_crit_edge ], [ %70, %if.end39.out_crit_edge ], [ %call47, %if.then46.out_crit_edge ], [ %asmresult.i119, %if.then51 ]
  %74 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx20, align 4
  call void @put_nfs_open_context(ptr noundef %75) #10
  call fastcc void @trace_nfs_aop_readpage_done(ptr noundef %20, ptr noundef %page, i32 noundef %ret.0)
  br label %cleanup

out_unlock:                                       ; preds = %if.then10.out_unlock_crit_edge, %if.end5.out_unlock_crit_edge, %PageUptodate.exit, %nfs_inc_stats.exit.out_unlock_crit_edge
  %ret.1 = phi i32 [ %call1, %nfs_inc_stats.exit.out_unlock_crit_edge ], [ 0, %PageUptodate.exit ], [ -116, %if.end5.out_unlock_crit_edge ], [ -9, %if.then10.out_unlock_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #10
  tail call fastcc void @trace_nfs_aop_readpage_done(ptr noundef %20, ptr noundef %page, i32 noundef %ret.1)
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %out
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_aop_readpage(ptr noundef %inode, ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readpage, i32 0, i32 1), ptr blockaddress(@trace_nfs_aop_readpage, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %call42 = tail call i32 @__traceiter_nfs_aop_readpage(ptr noundef null, ptr noundef %inode, ptr noundef %page) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readpage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readpage, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_aop_readpage.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nfs_aop_readpage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 849, ptr noundef nonnull @.str.5) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
declare dso_local i32 @nfs_wb_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PageUptodate(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !67

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !67

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge, label %do.end.i

folio_flags.exit.i.folio_test_uptodate.exit_crit_edge: ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_test_uptodate.exit

do.end.i:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %.lobit = lshr exact i32 %10, 2
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_find_open_context(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @readpage_async_filler(ptr noundef %data, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !67

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !67

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i3.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i3.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i3.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapcache.exit.i.i, label %if.then.i.i.i.i, !prof !67

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_swapcache.exit.i.i:                    ; preds = %land.rhs.i.i.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapcache.exit.i.i.if.end.i3.i_crit_edge, label %if.then.i2.i, !prof !67

folio_test_swapcache.exit.i.i.if.end.i3.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i3.i

if.then.i2.i:                                     ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call ptr @swapcache_mapping(ptr noundef %4) #10
  br label %page_file_mapping.exit

if.end.i3.i:                                      ; preds = %folio_test_swapcache.exit.i.i.if.end.i3.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i3.i_crit_edge
  %mapping.i.i = getelementptr inbounds %struct.anon.164, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping.i.i, align 4
  br label %page_file_mapping.exit

page_file_mapping.exit:                           ; preds = %if.end.i3.i, %if.then.i2.i
  %retval.0.i4.i = phi ptr [ %call2.i.i, %if.then.i2.i ], [ %17, %if.end.i3.i ]
  %18 = ptrtoint ptr %retval.0.i4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %retval.0.i4.i, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %rsize2 = getelementptr inbounds %struct.nfs_server, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %rsize2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rsize2, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !67

if.then.i.i.i:                                    ; preds = %page_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %27, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %page_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %28, %if.end.i.i.i ]
  %29 = inttoptr i32 %retval.0.i.i.i to ptr
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i.i.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i, label %if.then.i.i.i.i.i.i, !prof !67

if.then.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_swapbacked.exit.i.i.i.i:               ; preds = %_compound_head.exit.i.i
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %35 = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge, label %land.rhs.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i3.i.i

land.rhs.i.i.i.i:                                 ; preds = %folio_test_swapbacked.exit.i.i.i.i
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %30, align 4
  %and.i.i.i.i.i.i63 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i63)
  %tobool.not.i.i.i.i.i64 = icmp eq i32 %and.i.i.i.i.i.i63, 0
  br i1 %tobool.not.i.i.i.i.i64, label %folio_test_swapcache.exit.i.i.i, label %if.then.i.i.i.i.i65, !prof !67

if.then.i.i.i.i.i65:                              ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_swapcache.exit.i.i.i:                  ; preds = %land.rhs.i.i.i.i
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %29, align 4
  %40 = and i32 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i.i66 = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i.i.i66, label %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, label %if.then.i2.i.i, !prof !67

folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i3.i.i

if.then.i2.i.i:                                   ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i.i = tail call ptr @swapcache_mapping(ptr noundef %29) #10
  br label %page_file_mapping.exit.i

if.end.i3.i.i:                                    ; preds = %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge
  %mapping.i.i.i = getelementptr inbounds %struct.anon.164, ptr %29, i32 0, i32 2
  %41 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mapping.i.i.i, align 4
  br label %page_file_mapping.exit.i

page_file_mapping.exit.i:                         ; preds = %if.end.i3.i.i, %if.then.i2.i.i
  %retval.0.i4.i.i = phi ptr [ %call2.i.i.i, %if.then.i2.i.i ], [ %42, %if.end.i3.i.i ]
  %43 = ptrtoint ptr %retval.0.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %retval.0.i4.i.i, align 4
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %page_file_mapping.exit.i
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %and.i.i.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i20.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i20.i, label %if.then.i.i21.i, label %do.body24.critedge.i.i.i

if.then.i.i21.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %46 = tail call ptr @llvm.returnaddress(i32 0) #10
  %47 = ptrtoint ptr %46 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %47) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %47) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = tail call ptr @llvm.returnaddress(i32 0) #10
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %49) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %49) #10
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i21.i
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i.i.i67 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i67)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i67, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !71

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #10, !srcloc !72
  %51 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !85
  %53 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i68 = and i32 %54, 1
  %tobool.not.i.i69 = icmp eq i32 %and.i.i68, 0
  br i1 %tobool.not.i.i69, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %52, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %54, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  %55 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %i_size18.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  %57 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %58, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %i_size_read.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

i_size_read.exit.i:                               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %cmp.i = icmp sgt i64 %56, 0
  br i1 %cmp.i, label %if.then.i, label %i_size_read.exit.i.if.then_crit_edge

i_size_read.exit.i.if.then_crit_edge:             ; preds = %i_size_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.i:                                        ; preds = %i_size_read.exit.i
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %0, align 4
  %and.i.i.i22.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i22.i)
  %tobool.not.i.i.i.i70 = icmp eq i32 %and.i.i.i22.i, 0
  br i1 %tobool.not.i.i.i.i70, label %if.end.i.i.i.i, label %if.then.i.i.i.i71, !prof !67

if.then.i.i.i.i71:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i = add i32 %60, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i71
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i71 ], [ %61, %if.end.i.i.i.i ]
  %62 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %63 = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %and.i.i.i.i.i.i23.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i23.i)
  %tobool.not.i.i.i.i.i24.i = icmp eq i32 %and.i.i.i.i.i.i23.i, 0
  br i1 %tobool.not.i.i.i.i.i24.i, label %folio_test_swapbacked.exit.i.i.i27.i, label %if.then.i.i.i.i.i25.i, !prof !67

if.then.i.i.i.i.i25.i:                            ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_swapbacked.exit.i.i.i27.i:             ; preds = %_compound_head.exit.i.i.i
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %62, align 4
  %68 = and i32 %67, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.not.i.i.i26.i = icmp eq i32 %68, 0
  br i1 %tobool.i.not.i.i.i26.i, label %folio_test_swapbacked.exit.i.i.i27.i.if.end.i.i74_crit_edge, label %land.rhs.i.i.i30.i

folio_test_swapbacked.exit.i.i.i27.i.if.end.i.i74_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i74

land.rhs.i.i.i30.i:                               ; preds = %folio_test_swapbacked.exit.i.i.i27.i
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %63, align 4
  %and.i.i.i.i.i28.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i28.i)
  %tobool.not.i.i.i.i29.i = icmp eq i32 %and.i.i.i.i.i28.i, 0
  br i1 %tobool.not.i.i.i.i29.i, label %PageSwapCache.exit.i.i, label %if.then.i.i.i.i31.i, !prof !67

if.then.i.i.i.i31.i:                              ; preds = %land.rhs.i.i.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

PageSwapCache.exit.i.i:                           ; preds = %land.rhs.i.i.i30.i
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %62, align 4
  %73 = and i32 %72, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.i.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool.i.i.not.i.i, label %PageSwapCache.exit.i.i.if.end.i.i74_crit_edge, label %if.then.i.i73, !prof !67

PageSwapCache.exit.i.i.if.end.i.i74_crit_edge:    ; preds = %PageSwapCache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i74

if.then.i.i73:                                    ; preds = %PageSwapCache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i72 = tail call i32 @__page_file_index(ptr noundef %page) #10
  br label %page_index.exit.i

if.end.i.i74:                                     ; preds = %PageSwapCache.exit.i.i.if.end.i.i74_crit_edge, %folio_test_swapbacked.exit.i.i.i27.i.if.end.i.i74_crit_edge
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %74 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %index.i.i, align 4
  br label %page_index.exit.i

page_index.exit.i:                                ; preds = %if.end.i.i74, %if.then.i.i73
  %retval.0.i.i75 = phi i32 [ %call2.i.i72, %if.then.i.i73 ], [ %75, %if.end.i.i74 ]
  %sub.i = add nsw i64 %56, -1
  %76 = lshr i64 %sub.i, 12
  %conv.i = trunc i64 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i75, i32 %conv.i)
  %cmp3.i = icmp ult i32 %retval.0.i.i75, %conv.i
  br i1 %cmp3.i, label %page_index.exit.i.if.end_crit_edge, label %if.end.i

page_index.exit.i.if.end_crit_edge:               ; preds = %page_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %page_index.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i75, i32 %conv.i)
  %cmp6.i = icmp eq i32 %retval.0.i.i75, %conv.i
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = trunc i64 %sub.i to i32
  %78 = and i32 %77, 4095
  %conv10.i = add nuw nsw i32 %78, 1
  br label %if.end

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %i_size_read.exit.i.if.then_crit_edge
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i.i76 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i76)
  %tobool.not.i.i.i.i77 = icmp eq i32 %and.i.i.i.i.i76, 0
  br i1 %tobool.not.i.i.i.i77, label %nfs_return_empty_page.exit, label %if.then.i.i.i.i78, !prof !67

if.then.i.i.i.i78:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

nfs_return_empty_page.exit:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #10
  tail call void @unlock_page(ptr noundef %page) #10
  br label %cleanup

if.end:                                           ; preds = %if.then8.i, %page_index.exit.i.if.end_crit_edge
  %retval.1.i = phi i32 [ 4096, %page_index.exit.i.if.end_crit_edge ], [ %conv10.i, %if.then8.i ]
  %sub = add i32 %25, -1
  %add = add i32 %sub, %retval.1.i
  %neg = sub i32 0, %25
  %and = and i32 %add, %neg
  %81 = tail call i32 @llvm.umin.i32(i32 %and, i32 4096)
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %82 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mapping, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 10
  %88 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_flags, align 4
  %and8 = and i32 %89, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

lor.lhs.false:                                    ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 4
  %90 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %i_flags, align 4
  %and11 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then13:                                        ; preds = %lor.lhs.false
  %fscache.i = getelementptr i8, ptr %85, i32 -8
  %92 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fscache.i, align 8
  %tobool.not.i = icmp eq ptr %93, null
  br i1 %tobool.not.i, label %if.then13.if.end20_crit_edge, label %nfs_readpage_from_fscache.exit

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

nfs_readpage_from_fscache.exit:                   ; preds = %if.then13
  %call1.i = tail call i32 @__nfs_readpage_from_fscache(ptr noundef %85, ptr noundef %page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp17 = icmp eq i32 %call1.i, 0
  br i1 %cmp17, label %nfs_readpage_from_fscache.exit.out_unlock_crit_edge, label %nfs_readpage_from_fscache.exit.if.end20_crit_edge

nfs_readpage_from_fscache.exit.if.end20_crit_edge: ; preds = %nfs_readpage_from_fscache.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

nfs_readpage_from_fscache.exit.out_unlock_crit_edge: ; preds = %nfs_readpage_from_fscache.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end20:                                         ; preds = %nfs_readpage_from_fscache.exit.if.end20_crit_edge, %if.then13.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %ctx = getelementptr inbounds %struct.nfs_readdesc, ptr %data, i32 0, i32 1
  %94 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctx, align 4
  %call21 = tail call ptr @nfs_create_request(ptr noundef %95, ptr noundef %page, i32 noundef 0, i32 noundef %81) #10
  %cmp.i80 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %out_error, label %if.end24

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %retval.1.i)
  %cmp25 = icmp ult i32 %retval.1.i, 4096
  br i1 %cmp25, label %if.then26, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %retval.1.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %call28 = tail call i32 @nfs_pageio_add_request(ptr noundef %data, ptr noundef %call21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  %96 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %call21, align 4
  %cmp.i.not.i = icmp eq ptr %97, %call21
  br i1 %cmp.i.not.i, label %if.then30.nfs_list_remove_request.exit_crit_edge, label %if.end.i81

if.then30.nfs_list_remove_request.exit_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_list_remove_request.exit

if.end.i81:                                       ; preds = %if.then30
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call21) #10
  br i1 %call.i.i.i, label %if.end.i.i.i82, label %if.end.i81.list_del_init.exit.i_crit_edge

if.end.i81.list_del_init.exit.i_crit_edge:        ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i82:                                   ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call21, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i.i, align 4
  %100 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev1.i.i.i.i, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %99, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i82, %if.end.i81.list_del_init.exit.i_crit_edge
  %104 = ptrtoint ptr %call21 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %call21, ptr %call21, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %call21, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call21, ptr %prev.i3.i.i, align 4
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %list_del_init.exit.i, %if.then30.nfs_list_remove_request.exit_crit_edge
  %pg_error = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %data, i32 0, i32 4
  %106 = ptrtoint ptr %pg_error to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pg_error, align 4
  tail call fastcc void @nfs_readpage_release(ptr noundef %call21, i32 noundef %107)
  br label %cleanup

out_error:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %call21 to i32
  br label %out_unlock

out_unlock:                                       ; preds = %out_error, %nfs_readpage_from_fscache.exit.out_unlock_crit_edge
  %error.0 = phi i32 [ %108, %out_error ], [ 0, %nfs_readpage_from_fscache.exit.out_unlock_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %nfs_list_remove_request.exit, %if.end27.cleanup_crit_edge, %nfs_return_empty_page.exit
  %retval.0 = phi i32 [ 0, %nfs_return_empty_page.exit ], [ 0, %if.end27.cleanup_crit_edge ], [ %error.0, %out_unlock ], [ %107, %nfs_list_remove_request.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_pageio_complete_read(ptr noundef %pgio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfs_pageio_complete(ptr noundef %pgio) #10
  %pg_mirror_count = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 11
  %0 = ptrtoint ptr %pg_mirror_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pg_mirror_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b45 = load i1, ptr @nfs_pageio_complete_read.__already_done, align 1
  br i1 %.b45, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !67

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfs_pageio_complete_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %pg_mirrors = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 12
  %2 = ptrtoint ptr %pg_mirrors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pg_mirrors, align 4
  %pg_bytes_written = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pg_bytes_written to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pg_bytes_written, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgio, align 4
  %read_io = getelementptr i8, ptr %7, i32 -16
  %8 = ptrtoint ptr %read_io to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %read_io, align 8
  %add = add i64 %9, %conv
  store i64 %add, ptr %read_io, align 8
  %10 = load i32, ptr %pg_bytes_written, align 4
  %sub = add i32 %10, 4095
  %shr = lshr i32 %sub, 12
  %11 = load ptr, ptr %pgio, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %conv6.i.i46 = zext i32 %shr to i64
  %io_stats.i.i = getelementptr inbounds %struct.nfs_server, ptr %15, i32 0, i32 6
  %17 = ptrtoint ptr %io_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_stats.i.i, align 8
  %arrayidx.i.i = getelementptr [8 x i64], ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i, align 4
  %arrayidx14.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14.i.i, align 4
  %add.i.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %26, align 8
  %add15.i.i = add i64 %28, %conv6.i.i46
  store i64 %add15.i.i, ptr %26, align 8
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end27.nfs_add_stats.exit_crit_edge, !prof !71

if.end27.nfs_add_stats.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_add_stats.exit

if.then.i.i:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %nfs_add_stats.exit

nfs_add_stats.exit:                               ; preds = %if.then.i.i, %if.end27.nfs_add_stats.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #10, !srcloc !72
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_on_page_locked_killable(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !67

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_locked.exit.i, label %if.then.i.i.i, !prof !67

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_locked.exit.i:                         ; preds = %_compound_head.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %and1.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %folio_test_locked.exit.i.folio_wait_locked_killable.exit_crit_edge, label %if.end.i2

folio_test_locked.exit.i.folio_wait_locked_killable.exit_crit_edge: ; preds = %folio_test_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_wait_locked_killable.exit

if.end.i2:                                        ; preds = %folio_test_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @folio_wait_bit_killable(ptr noundef %4, i32 noundef 0) #10
  br label %folio_wait_locked_killable.exit

folio_wait_locked_killable.exit:                  ; preds = %if.end.i2, %folio_test_locked.exit.i.folio_wait_locked_killable.exit_crit_edge
  %retval.0.i3 = phi i32 [ %call1.i, %if.end.i2 ], [ 0, %folio_test_locked.exit.i.folio_wait_locked_killable.exit_crit_edge ]
  ret i32 %retval.0.i3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_aop_readpage_done(ptr noundef %inode, ptr noundef %page, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readpage_done, i32 0, i32 1), ptr blockaddress(@trace_nfs_aop_readpage_done, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %call42 = tail call i32 @__traceiter_nfs_aop_readpage_done(ptr noundef null, ptr noundef %inode, ptr noundef %page, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readpage_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readpage_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_aop_readpage_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nfs_aop_readpage_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 887, ptr noundef nonnull @.str.5) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_readpages(ptr noundef readonly %file, ptr noundef %mapping, ptr noundef %pages, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.nfs_readdesc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %desc) #10
  %0 = call ptr @memset(ptr %desc, i32 255, i32 96)
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -4
  tail call fastcc void @trace_nfs_aop_readahead(ptr noundef %2, ptr noundef %add.ptr, i32 noundef %nr_pages)
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %io_stats.i.i = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 6
  %10 = ptrtoint ptr %io_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_stats.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.nfs_iostats, ptr %11, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx13.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13.i.i, align 4
  %add.i.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add14.i.i = add i32 %21, 1
  store i32 %add14.i.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.nfs_inc_stats.exit_crit_edge, !prof !71

entry.nfs_inc_stats.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_inc_stats.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %nfs_inc_stats.exit

nfs_inc_stats.exit:                               ; preds = %if.then.i.i, %entry.nfs_inc_stats.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #10, !srcloc !72
  %flags.i = getelementptr i8, ptr %2, i32 -308
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.end, label %nfs_inc_stats.exit.out_crit_edge

nfs_inc_stats.exit.out_crit_edge:                 ; preds = %nfs_inc_stats.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %nfs_inc_stats.exit
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call2 = tail call ptr @nfs_find_open_context(ptr noundef %2, ptr noundef null, i32 noundef 1) #10
  %ctx = getelementptr inbounds %struct.nfs_readdesc, ptr %desc, i32 0, i32 1
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call2, ptr %ctx, align 4
  %cmp4 = icmp eq ptr %call2, null
  br i1 %cmp4, label %if.then1.out_crit_edge, label %if.then1.if.end10_crit_edge

if.then1.if.end10_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then1.out_crit_edge:                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %27 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data.i, align 4
  %call8 = tail call ptr @get_nfs_open_context(ptr noundef %28) #10
  %ctx9 = getelementptr inbounds %struct.nfs_readdesc, ptr %desc, i32 0, i32 1
  %29 = ptrtoint ptr %ctx9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8, ptr %ctx9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then1.if.end10_crit_edge
  %30 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i25 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i.i25, align 16
  %pnfs_curr_ld.i = getelementptr inbounds %struct.nfs_server, ptr %33, i32 0, i32 46
  %34 = ptrtoint ptr %pnfs_curr_ld.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pnfs_curr_ld.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end10.nfs_pageio_init_read.exit_crit_edge, label %if.then.i

if.end10.nfs_pageio_init_read.exit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_pageio_init_read.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %pg_read_ops.i = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %pg_read_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pg_read_ops.i, align 4
  br label %nfs_pageio_init_read.exit

nfs_pageio_init_read.exit:                        ; preds = %if.then.i, %if.end10.nfs_pageio_init_read.exit_crit_edge
  %pg_ops.0.i = phi ptr [ %37, %if.then.i ], [ @nfs_pgio_rw_ops, %if.end10.nfs_pageio_init_read.exit_crit_edge ]
  %rsize.i = getelementptr inbounds %struct.nfs_server, ptr %33, i32 0, i32 11
  %38 = ptrtoint ptr %rsize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rsize.i, align 4
  call void @nfs_pageio_init(ptr noundef nonnull %desc, ptr noundef %2, ptr noundef %pg_ops.0.i, ptr noundef nonnull @nfs_async_read_completion_ops, ptr noundef nonnull @nfs_rw_read_ops, i32 noundef %39, i32 noundef 0) #10
  %call11 = call i32 @read_cache_pages(ptr noundef %mapping, ptr noundef %pages, ptr noundef nonnull @readpage_async_filler, ptr noundef nonnull %desc) #10
  call fastcc void @nfs_pageio_complete_read(ptr noundef nonnull %desc)
  %ctx13 = getelementptr inbounds %struct.nfs_readdesc, ptr %desc, i32 0, i32 1
  %40 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx13, align 4
  call void @put_nfs_open_context(ptr noundef %41) #10
  br label %out

out:                                              ; preds = %nfs_pageio_init_read.exit, %if.then1.out_crit_edge, %nfs_inc_stats.exit.out_crit_edge
  %ret.0 = phi i32 [ -116, %nfs_inc_stats.exit.out_crit_edge ], [ -9, %if.then1.out_crit_edge ], [ %call11, %nfs_pageio_init_read.exit ]
  call fastcc void @trace_nfs_aop_readahead_done(ptr noundef %2, i32 noundef %nr_pages, i32 noundef %ret.0)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %desc) #10
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_aop_readahead(ptr noundef %inode, ptr noundef %page, i32 noundef %nr_pages) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readahead, i32 0, i32 1), ptr blockaddress(@trace_nfs_aop_readahead, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %call42 = tail call i32 @__traceiter_nfs_aop_readahead(ptr noundef null, ptr noundef %inode, ptr noundef %page, i32 noundef %nr_pages) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readahead, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readahead, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_aop_readahead.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nfs_aop_readahead.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 925, ptr noundef nonnull @.str.5) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
declare dso_local i32 @read_cache_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_aop_readahead_done(ptr noundef %inode, i32 noundef %nr_pages, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readahead_done, i32 0, i32 1), ptr blockaddress(@trace_nfs_aop_readahead_done, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %call42 = tail call i32 @__traceiter_nfs_aop_readahead_done(ptr noundef null, ptr noundef %inode, i32 noundef %nr_pages, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readahead_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readahead_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_aop_readahead_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nfs_aop_readahead_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 964, ptr noundef nonnull @.str.5) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_init_readpagecache() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 648, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call, ptr @nfs_rdata_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_destroy_readpagecache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nfs_rdata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_aop_readpage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_async_read_error(ptr noundef %head, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.not4 = icmp eq ptr %1, %head
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %nfs_list_remove_request.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %14, %nfs_list_remove_request.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 4
  %cmp.i.not.i = icmp eq ptr %4, %2
  br i1 %cmp.i.not.i, label %while.body.nfs_list_remove_request.exit_crit_edge, label %if.end.i

while.body.nfs_list_remove_request.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_list_remove_request.exit

if.end.i:                                         ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %prev.i3.i.i, align 4
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %list_del_init.exit.i, %while.body.nfs_list_remove_request.exit_crit_edge
  tail call fastcc void @nfs_readpage_release(ptr noundef %2, i32 noundef %error)
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %14, %head
  br i1 %cmp.i.not, label %nfs_list_remove_request.exit.while.end_crit_edge, label %nfs_list_remove_request.exit.while.body_crit_edge

nfs_list_remove_request.exit.while.body_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

nfs_list_remove_request.exit.while.end_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %nfs_list_remove_request.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_read_completion(ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.cond.preheader:                             ; preds = %entry
  %pages = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 2
  %3 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pages, align 4
  %cmp.i.not127 = icmp eq ptr %4, %pages
  br i1 %cmp.i.not127, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %good_bytes = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 16
  %error55 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %nfs_list_remove_request.exit.while.body_crit_edge, %while.body.lr.ph
  %5 = phi ptr [ %4, %while.body.lr.ph ], [ %51, %nfs_list_remove_request.exit.while.body_crit_edge ]
  %bytes.0128 = phi i32 [ 0, %while.body.lr.ph ], [ %add46, %nfs_list_remove_request.exit.while.body_crit_edge ]
  %wb_page = getelementptr inbounds %struct.nfs_page, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wb_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wb_page, align 4
  %wb_pgbase = getelementptr inbounds %struct.nfs_page, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %wb_pgbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wb_pgbase, align 4
  %wb_bytes = getelementptr inbounds %struct.nfs_page, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %wb_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wb_bytes, align 4
  %add = add i32 %11, %9
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %while.body.if.end44_crit_edge, label %if.then9

while.body.if.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then9:                                         ; preds = %while.body
  %15 = ptrtoint ptr %good_bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %good_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %bytes.0128)
  %cmp = icmp ult i32 %16, %bytes.0128
  br i1 %cmp, label %if.then9.if.end44.sink.split_crit_edge, label %if.else

if.then9.if.end44.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.sink.split

if.else:                                          ; preds = %if.then9
  %sub = sub i32 %16, %bytes.0128
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %11)
  %cmp13 = icmp ult i32 %sub, %11
  br i1 %cmp13, label %if.then14, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then14:                                        ; preds = %if.else
  %add17 = add i32 %sub, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %9)
  %cmp19 = icmp ult i32 %add17, %9
  br i1 %cmp19, label %do.end, label %if.then14.if.end44.sink.split_crit_edge, !prof !71

if.then14.if.end44.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.sink.split

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #10
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %do.end, %if.then14.if.end44.sink.split_crit_edge, %if.then9.if.end44.sink.split_crit_edge
  %.sink = phi i32 [ %9, %if.then9.if.end44.sink.split_crit_edge ], [ %add17, %do.end ], [ %add17, %if.then14.if.end44.sink.split_crit_edge ]
  tail call void @zero_user_segments(ptr noundef %7, i32 noundef %.sink, i32 noundef %add, i32 noundef 0, i32 noundef 0) #10
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else.if.end44_crit_edge, %while.body.if.end44_crit_edge
  %17 = ptrtoint ptr %wb_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wb_bytes, align 4
  %add46 = add i32 %18, %bytes.0128
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %and1.i116 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i116)
  %tobool49.not = icmp eq i32 %and1.i116, 0
  br i1 %tobool49.not, label %if.else78, label %if.then50

if.then50:                                        ; preds = %if.end44
  %21 = ptrtoint ptr %good_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %good_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %22)
  %cmp52.not = icmp ugt i32 %add46, %22
  br i1 %cmp52.not, label %if.else54, label %if.then53

if.then53:                                        ; preds = %if.then50
  %call.i117 = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %5, i32 noundef 8) #10
  br i1 %call.i117, label %if.then.i, label %if.then53.if.end79_crit_edge

if.then53.if.end79_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then.i:                                        ; preds = %if.then53
  %23 = ptrtoint ptr %wb_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wb_page, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i, !prof !67

if.then.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %24) #10
  br label %if.end79

if.else54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %error55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error55, align 4
  %wb_lock_context.i = getelementptr inbounds %struct.nfs_page, ptr %5, i32 0, i32 2
  %30 = ptrtoint ptr %wb_lock_context.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wb_lock_context.i, align 4
  %open_context.i = getelementptr inbounds %struct.nfs_lock_context, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %open_context.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %open_context.i, align 4
  %error57 = getelementptr inbounds %struct.nfs_open_context, ptr %33, i32 0, i32 8
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error57, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %error57, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %29, ptr %error57) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  br label %if.end79

if.else78:                                        ; preds = %if.end44
  %call.i118 = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %5, i32 noundef 8) #10
  br i1 %call.i118, label %if.then.i122, label %if.else78.if.end79_crit_edge

if.else78.if.end79_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then.i122:                                     ; preds = %if.else78
  %35 = ptrtoint ptr %wb_page to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wb_page, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i.i.i.i120 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i120)
  %tobool.not.i.i.i.i121 = icmp eq i32 %and.i.i.i.i.i120, 0
  br i1 %tobool.not.i.i.i.i121, label %SetPageUptodate.exit.i124, label %if.then.i.i.i.i123, !prof !67

if.then.i.i.i.i123:                               ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

SetPageUptodate.exit.i124:                        ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %36) #10
  br label %if.end79

if.end79:                                         ; preds = %SetPageUptodate.exit.i124, %if.else78.if.end79_crit_edge, %if.else54, %SetPageUptodate.exit.i, %if.then53.if.end79_crit_edge
  %error.0 = phi i32 [ %29, %if.else54 ], [ 0, %if.then53.if.end79_crit_edge ], [ 0, %SetPageUptodate.exit.i ], [ 0, %if.else78.if.end79_crit_edge ], [ 0, %SetPageUptodate.exit.i124 ]
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %5, align 4
  %cmp.i.not.i = icmp eq ptr %41, %5
  br i1 %cmp.i.not.i, label %if.end79.nfs_list_remove_request.exit_crit_edge, label %if.end.i

if.end79.nfs_list_remove_request.exit_crit_edge:  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_list_remove_request.exit

if.end.i:                                         ; preds = %if.end79
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %5, ptr %prev.i3.i.i, align 4
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %list_del_init.exit.i, %if.end79.nfs_list_remove_request.exit_crit_edge
  tail call fastcc void @nfs_readpage_release(ptr noundef %5, i32 noundef %error.0)
  %50 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %pages, align 4
  %cmp.i.not = icmp eq ptr %51, %pages
  br i1 %cmp.i.not, label %nfs_list_remove_request.exit.out_crit_edge, label %nfs_list_remove_request.exit.while.body_crit_edge

nfs_list_remove_request.exit.while.body_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

nfs_list_remove_request.exit.out_crit_edge:       ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %nfs_list_remove_request.exit.out_crit_edge, %while.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %release = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 9
  %52 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %release, align 4
  tail call void %53(ptr noundef %hdr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_readpage_release(ptr noundef %req, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wb_lock_context.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %wb_lock_context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wb_lock_context.i, align 4
  %open_context.i = getelementptr inbounds %struct.nfs_lock_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %open_context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open_context.i, align 4
  %dentry = getelementptr inbounds %struct.nfs_open_context, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %wb_page = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %wb_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wb_page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !67

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 39
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -448
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.i.i, align 8
  %wb_bytes = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 6
  %15 = ptrtoint ptr %wb_bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wb_bytes, align 4
  %wb_index.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %17 = ptrtoint ptr %wb_index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wb_index.i, align 4
  %conv.i = zext i32 %18 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %19 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wb_offset.i, align 4
  %conv1.i = zext i32 %20 to i64
  %add.i = add nuw nsw i64 %shl.i, %conv1.i
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %s_id, i64 noundef %14, i32 noundef %16, i64 noundef %add.i) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %21 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %error, label %do.end9.if.end12_crit_edge [
    i32 -5, label %do.end9.if.then11_crit_edge
    i32 -122, label %do.end9.if.then11_crit_edge79
    i32 -116, label %do.end9.if.then11_crit_edge80
    i32 -30, label %do.end9.if.then11_crit_edge81
    i32 -28, label %do.end9.if.then11_crit_edge82
    i32 -27, label %do.end9.if.then11_crit_edge83
    i32 -13, label %do.end9.if.then11_crit_edge84
    i32 -12, label %do.end9.if.then11_crit_edge85
    i32 -7, label %do.end9.if.then11_crit_edge86
  ]

do.end9.if.then11_crit_edge86:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end9.if.then11_crit_edge85:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end9.if.then11_crit_edge84:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end9.if.then11_crit_edge83:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end9.if.then11_crit_edge82:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end9.if.then11_crit_edge81:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end9.if.then11_crit_edge80:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end9.if.then11_crit_edge79:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end9.if.then11_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end9.if.end12_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %do.end9.if.then11_crit_edge, %do.end9.if.then11_crit_edge79, %do.end9.if.then11_crit_edge80, %do.end9.if.then11_crit_edge81, %do.end9.if.then11_crit_edge82, %do.end9.if.then11_crit_edge83, %do.end9.if.then11_crit_edge84, %do.end9.if.then11_crit_edge85, %do.end9.if.then11_crit_edge86
  %22 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !67

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !97
  unreachable

do.body7.i:                                       ; preds = %if.then11
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %22, align 4
  %and.i31.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !67

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %26, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %27, %if.end.i.i ]
  %28 = inttoptr i32 %retval.0.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i.not.i = icmp eq i32 %30, -1
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %22, align 4
  %and.i32.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !67

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %32, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %33, %if.end.i36.i ]
  %34 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !67

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %32, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %9 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %35, %if.end.i43.i ]
  %36 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %36) #10
  br label %if.end12

if.end12:                                         ; preds = %SetPageError.exit, %do.end9.if.end12_crit_edge
  %call13 = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %req, i32 noundef 7) #10
  br i1 %call13, label %if.then14, label %if.end12.if.end28_crit_edge

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then14:                                        ; preds = %if.end12
  %37 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i57 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i57)
  %tobool.not.i.i58 = icmp eq i32 %and.i.i57, 0
  br i1 %tobool.not.i.i58, label %if.end.i.i61, label %if.then.i.i60, !prof !67

if.then.i.i60:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i59 = add i32 %39, -1
  br label %_compound_head.exit.i63

if.end.i.i61:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i63

_compound_head.exit.i63:                          ; preds = %if.end.i.i61, %if.then.i.i60
  %retval.0.i.i62 = phi i32 [ %sub.i.i59, %if.then.i.i60 ], [ %40, %if.end.i.i61 ]
  %41 = inttoptr i32 %retval.0.i.i62 to ptr
  %42 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i.i.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !67

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i63
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %41, align 4
  %47 = and i32 %46, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i3.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i3.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i3.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %42, align 4
  %and.i.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapcache.exit.i.i, label %if.then.i.i.i.i, !prof !67

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_test_swapcache.exit.i.i:                    ; preds = %land.rhs.i.i.i
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %41, align 4
  %52 = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapcache.exit.i.i.if.end.i3.i_crit_edge, label %if.then.i2.i, !prof !67

folio_test_swapcache.exit.i.i.if.end.i3.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i3.i

if.then.i2.i:                                     ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call ptr @swapcache_mapping(ptr noundef %41) #10
  br label %page_file_mapping.exit

if.end.i3.i:                                      ; preds = %folio_test_swapcache.exit.i.i.if.end.i3.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i3.i_crit_edge
  %mapping.i.i = getelementptr inbounds %struct.anon.164, ptr %41, i32 0, i32 2
  %53 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mapping.i.i, align 4
  br label %page_file_mapping.exit

page_file_mapping.exit:                           ; preds = %if.end.i3.i, %if.then.i2.i
  %retval.0.i4.i = phi ptr [ %call2.i.i, %if.then.i2.i ], [ %54, %if.end.i3.i ]
  %55 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %37, align 4
  %and.i.i64 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %tobool.not.i.i65, label %if.end.i.i68, label %if.then.i.i67, !prof !67

if.then.i.i67:                                    ; preds = %page_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i66 = add i32 %56, -1
  br label %_compound_head.exit.i70

if.end.i.i68:                                     ; preds = %page_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i70

_compound_head.exit.i70:                          ; preds = %if.end.i.i68, %if.then.i.i67
  %retval.0.i.i69 = phi i32 [ %sub.i.i66, %if.then.i.i67 ], [ %57, %if.end.i.i68 ]
  %58 = inttoptr i32 %retval.0.i.i69 to ptr
  %59 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !67

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i70
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %58, align 4
  %64 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.not.i = icmp eq i32 %64, 0
  br i1 %tobool.i.not.i, label %if.else, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  %fscache.i = getelementptr i8, ptr %7, i32 -8
  %65 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fscache.i, align 8
  %tobool.not.i71 = icmp eq ptr %66, null
  br i1 %tobool.not.i71, label %PageUptodate.exit.if.end27_crit_edge, label %if.then.i72

PageUptodate.exit.if.end27_crit_edge:             ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then.i72:                                      ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__nfs_readpage_to_fscache(ptr noundef %7, ptr noundef %9) #10
  br label %if.end27

if.else:                                          ; preds = %folio_flags.exit.i.i
  %67 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %37, align 4
  %and.i.i44 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool.not.i.i45 = icmp eq i32 %and.i.i44, 0
  br i1 %tobool.not.i.i45, label %if.end.i.i48, label %if.then.i.i47, !prof !67

if.then.i.i47:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i46 = add i32 %68, -1
  br label %_compound_head.exit.i51

if.end.i.i48:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i51

_compound_head.exit.i51:                          ; preds = %if.end.i.i48, %if.then.i.i47
  %retval.0.i.i49 = phi i32 [ %sub.i.i46, %if.then.i.i47 ], [ %69, %if.end.i.i48 ]
  %70 = inttoptr i32 %retval.0.i.i49 to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.not.i50 = icmp eq i32 %72, -1
  %73 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %37, align 4
  %and.i16.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i50, label %if.then.i52, label %do.end10.i, !prof !71

if.then.i52:                                      ; preds = %_compound_head.exit.i51
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !67

if.then.i19.i:                                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %74, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %75, %if.end.i20.i ]
  %76 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i51
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !67

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %74, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %9 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %77, %if.end.i27.i ]
  %78 = inttoptr i32 %retval.0.i28.i to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %81 = and i32 %80, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool20.not = icmp eq i32 %81, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %PageError.exit.if.end27_crit_edge

PageError.exit.if.end27_crit_edge:                ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true21:                                  ; preds = %PageError.exit
  %82 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp.i.not.i53 = icmp eq i32 %83, -1
  br i1 %cmp.i.not.i53, label %if.then.i54, label %PagePrivate.exit, !prof !71

if.then.i54:                                      ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.11) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

PagePrivate.exit:                                 ; preds = %land.lhs.true21
  %84 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %9, align 4
  %86 = and i32 %85, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool23.not = icmp eq i32 %86, 0
  br i1 %tobool23.not, label %if.then24, label %PagePrivate.exit.if.end27_crit_edge

PagePrivate.exit.if.end27_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 @generic_error_remove_page(ptr noundef %retval.0.i4.i, ptr noundef %9) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %PagePrivate.exit.if.end27_crit_edge, %PageError.exit.if.end27_crit_edge, %if.then.i72, %PageUptodate.exit.if.end27_crit_edge
  tail call void @unlock_page(ptr noundef %9) #10
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end12.if.end28_crit_edge
  tail call void @nfs_release_request(ptr noundef %req) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nfs_readpage_to_fscache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_create_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_pageio_add_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfs_readpage_from_fscache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_wait_bit_killable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_aop_readpage_done(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_aop_readahead(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_aop_readahead_done(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @nfs_readhdr_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nfs_rdata_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rw_mode = getelementptr inbounds %struct.nfs_pgio_header, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %rw_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %rw_mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_readhdr_free(ptr noundef %rhdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nfs_rdata_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %rhdr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_readpage_done(ptr noundef %task, ptr noundef %hdr, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rpc_ops.i, align 4
  %read_done = getelementptr inbounds %struct.nfs_rpc_ops, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %read_done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_done, align 4
  %call1 = tail call i32 %9(ptr noundef %task, ptr noundef %hdr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 2
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %count, align 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i15 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i15, align 16
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %17 = shl i64 %11, 32
  %conv6.i.i = ashr exact i64 %17, 32
  %io_stats.i.i = getelementptr inbounds %struct.nfs_server, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %io_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_stats.i.i, align 8
  %arrayidx.i.i = getelementptr [8 x i64], ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i.i, align 4
  %arrayidx14.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14.i.i, align 4
  %add.i.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %27, align 8
  %add15.i.i = add i64 %29, %conv6.i.i
  store i64 %add15.i.i, ptr %27, align 8
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.nfs_add_stats.exit_crit_edge, !prof !71

if.end.nfs_add_stats.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_add_stats.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %nfs_add_stats.exit

nfs_add_stats.exit:                               ; preds = %if.then.i.i, %if.end.nfs_add_stats.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #10, !srcloc !72
  tail call fastcc void @trace_nfs_readpage_done(ptr noundef %task, ptr noundef %hdr)
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %31 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %32)
  %cmp2 = icmp eq i32 %32, -116
  br i1 %cmp2, label %if.then4, label %nfs_add_stats.exit.cleanup_crit_edge

nfs_add_stats.exit.cleanup_crit_edge:             ; preds = %nfs_add_stats.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %nfs_add_stats.exit
  tail call void @nfs_set_inode_stale(ptr noundef %inode) #10
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #10
  %cache_validity.i = getelementptr i8, ptr %inode, i32 -304
  %33 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cache_validity.i, align 8
  %or.i = or i32 %34, 824
  store i32 %or.i, ptr %cache_validity.i, align 8
  %35 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %inode, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %37)
  %cmp.i = icmp eq i16 %37, 16384
  br i1 %cmp.i, label %if.then.i, label %if.then4.nfs_mark_for_revalidate.exit_crit_edge

if.then4.nfs_mark_for_revalidate.exit_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_mark_for_revalidate.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %or3.i = or i32 %34, 826
  %38 = ptrtoint ptr %cache_validity.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or3.i, ptr %cache_validity.i, align 8
  br label %nfs_mark_for_revalidate.exit

nfs_mark_for_revalidate.exit:                     ; preds = %if.then.i, %if.then4.nfs_mark_for_revalidate.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %nfs_mark_for_revalidate.exit, %nfs_add_stats.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_readpage_result(ptr noundef %task, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %eof = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %eof to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eof, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %offset = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 2
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %count, align 8
  %add = add i64 %5, %3
  %io_start = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 7
  %6 = ptrtoint ptr %io_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %io_start, align 8
  %sub = sub i64 %add, %7
  %conv = trunc i64 %sub to i32
  %good_bytes = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 16
  %8 = ptrtoint ptr %good_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %good_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp ugt i32 %9, %conv
  br i1 %cmp, label %if.then3, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %good_bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %good_bytes, align 8
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  br label %if.end15

if.else:                                          ; preds = %entry
  %count7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 2
  %11 = ptrtoint ptr %count7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %count7, align 8
  %count9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %13 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count9, align 8
  %conv10 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv10)
  %cmp11 = icmp ult i64 %12, %conv10
  br i1 %cmp11, label %if.then13, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.else
  %15 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdr, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %io_stats.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 6
  %22 = ptrtoint ptr %io_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_stats.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.nfs_iostats, ptr %23, i32 0, i32 2, i32 22
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx13.i.i.i, align 4
  %add.i.i.i = add i32 %30, %24
  %31 = inttoptr i32 %add.i.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add14.i.i.i = add i32 %33, 1
  store i32 %add14.i.i.i, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then13.nfs_inc_stats.exit.i_crit_edge, !prof !71

if.then13.nfs_inc_stats.exit.i_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_inc_stats.exit.i

if.then.i.i.i:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %nfs_inc_stats.exit.i

nfs_inc_stats.exit.i:                             ; preds = %if.then.i.i.i, %if.then13.nfs_inc_stats.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #10, !srcloc !72
  tail call fastcc void @trace_nfs_readpage_short(ptr noundef %task, ptr noundef %hdr) #10
  %35 = ptrtoint ptr %count7 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %count7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp.i = icmp eq i64 %36, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %nfs_inc_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %37 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %offset.i, align 8
  tail call void @nfs_set_pgio_error(ptr noundef %hdr, i32 noundef -5, i64 noundef %38) #10
  br label %if.end15

if.end.i:                                         ; preds = %nfs_inc_stats.exit.i
  %tk_ops.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 12
  %39 = ptrtoint ptr %tk_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tk_ops.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pnfs_error.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 14
  %41 = ptrtoint ptr %pnfs_error.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -11, ptr %pnfs_error.i, align 8
  br label %if.end15

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mds_offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 24
  %42 = ptrtoint ptr %mds_offset.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %mds_offset.i, align 8
  %add.i = add i64 %43, %36
  store i64 %add.i, ptr %mds_offset.i, align 8
  %offset5.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %44 = ptrtoint ptr %offset5.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %offset5.i, align 8
  %add6.i = add i64 %45, %36
  store i64 %add6.i, ptr %offset5.i, align 8
  %pgbase.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 7
  %46 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pgbase.i, align 4
  %48 = trunc i64 %36 to i32
  %conv9.i = add i32 %47, %48
  store i32 %conv9.i, ptr %pgbase.i, align 4
  %49 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count9, align 8
  %conv13.i = sub i32 %50, %48
  store i32 %conv13.i, ptr %count9, align 8
  %51 = ptrtoint ptr %count7 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %count7, align 8
  %52 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %eof, align 4
  %call.i = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #10
  br label %if.end15

if.end15:                                         ; preds = %if.end2.i, %if.then1.i, %if.then.i, %if.else.if.end15_crit_edge, %if.then3, %if.then.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_initiate_read(ptr noundef %hdr, ptr noundef %msg, ptr nocapture noundef readonly %rpc_ops, ptr nocapture noundef %task_setup_data, i32 noundef %how) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdr, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i16 0, i16 66
  %flags = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %or = or i16 %cond, %5
  store i16 %or, ptr %flags, align 4
  %read_setup = getelementptr inbounds %struct.nfs_rpc_ops, ptr %rpc_ops, i32 0, i32 35
  %6 = ptrtoint ptr %read_setup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_setup, align 4
  tail call void %7(ptr noundef %hdr, ptr noundef %msg) #10
  tail call fastcc void @trace_nfs_initiate_read(ptr noundef %hdr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_readpage_done(ptr noundef %task, ptr noundef %hdr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_readpage_done, i32 0, i32 1), ptr blockaddress(@trace_nfs_readpage_done, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %call42 = tail call i32 @__traceiter_nfs_readpage_done(ptr noundef null, ptr noundef %task, ptr noundef %hdr) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_readpage_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_readpage_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_readpage_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nfs_readpage_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1049, ptr noundef nonnull @.str.5) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
declare dso_local void @nfs_set_inode_stale(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_readpage_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_readpage_short(ptr noundef %task, ptr noundef %hdr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_readpage_short, i32 0, i32 1), ptr blockaddress(@trace_nfs_readpage_short, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %call42 = tail call i32 @__traceiter_nfs_readpage_short(ptr noundef null, ptr noundef %task, ptr noundef %hdr) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_readpage_short, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_readpage_short, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_readpage_short.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nfs_readpage_short.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1096, ptr noundef nonnull @.str.5) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
declare dso_local void @nfs_set_pgio_error(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_readpage_short(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_initiate_read(ptr noundef %hdr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_initiate_read, i32 0, i32 1), ptr blockaddress(@trace_nfs_initiate_read, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %call42 = tail call i32 @__traceiter_nfs_initiate_read(ptr noundef null, ptr noundef %hdr) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_initiate_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_initiate_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_initiate_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nfs_initiate_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1002, ptr noundef nonnull @.str.5) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
declare dso_local i32 @__traceiter_nfs_initiate_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !27, !28, !29, !30, !32, !33, !35, !37, !39, !40, !42, !43, !45, !46, !48, !50, !51, !53, !54, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__ksymtab_nfs_pageio_init_read, !1, !"__ksymtab_nfs_pageio_init_read", i1 false, i1 false}
!1 = !{!"../fs/nfs/read.c", i32 75, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/nfs/read.c", i32 104, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_nfs_pageio_reset_read_mds, !6, !"__ksymtab_nfs_pageio_reset_read_mds", i1 false, i1 false}
!6 = !{!"../fs/nfs/read.c", i32 109, i32 1}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nfs/read.c", i32 437, i32 39}
!9 = !{ptr @nfs_rdata_cachep, !10, !"nfs_rdata_cachep", i1 false, i1 false}
!10 = !{!"../fs/nfs/read.c", i32 36, i32 27}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/nfs/nfstrace.h", i32 816, i32 1}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nfs_async_read_completion_ops, !24, !"nfs_async_read_completion_ops", i1 false, i1 false}
!24 = !{!"../fs/nfs/read.c", i32 217, i32 45}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nfs/read.c", i32 116, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nfs_readpage_release._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nfs_readpage_release._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/nfs/read.c", i32 85, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/nfs/nfstrace.h", i32 851, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/nfs/nfstrace.h", i32 889, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/nfs/nfstrace.h", i32 927, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = !{ptr @nfs_rw_read_ops, !47, !"nfs_rw_read_ops", i1 false, i1 false}
!47 = !{!"../fs/nfs/read.c", i32 452, i32 32}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/nfs/nfstrace.h", i32 1004, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/nfs/nfstrace.h", i32 1051, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../fs/nfs/nfstrace.h", i32 966, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2150263536, i64 2150264027, i64 2150263573, i64 2150263629, i64 2150263663, i64 2150263687, i64 2150263728, i64 2150263749, i64 2150263777, i64 2150263811}
!69 = !{i64 603040, i64 603101}
!70 = !{i64 605772}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 606057}
!73 = !{i64 2151013428}
!74 = !{i64 2159182354}
!75 = !{i64 716530, i64 716547, i64 716571, i64 716597, i64 716615}
!76 = !{i64 2159182697}
!77 = !{i64 2159183524}
!78 = !{i64 2159183867}
!79 = !{i64 2148764406, i64 2148764411, i64 2148764424, i64 2148764468, i64 2148764502, i64 2148764523}
!80 = !{i64 2158845920}
!81 = !{i64 2158846137}
!82 = !{i64 2150076081}
!83 = !{i64 2150077117}
!84 = !{i64 2153065564}
!85 = !{i64 2153065406}
!86 = !{i64 2153065734}
!87 = !{i64 2149910050}
!88 = !{i64 2151014499}
!89 = !{i64 2158867014}
!90 = !{i64 2158867251}
!91 = !{i64 2158884470}
!92 = !{i64 2158884709}
!93 = !{i64 2158901819}
!94 = !{i64 2158902066}
!95 = !{i64 2159176959}
!96 = !{i64 2159177306}
!97 = !{i64 2150329187, i64 2150329360, i64 2150329375, i64 2150329427, i64 2150329486, i64 2150329510, i64 2150329551, i64 2150329572, i64 2150329600, i64 2150329632}
!98 = !{i64 2150330062, i64 2150330235, i64 2150330250, i64 2150330302, i64 2150330361, i64 2150330385, i64 2150330426, i64 2150330447, i64 2150330475, i64 2150330507}
!99 = !{i64 2150320629, i64 2150321120, i64 2150320666, i64 2150320722, i64 2150320756, i64 2150320780, i64 2150320821, i64 2150320842, i64 2150320870, i64 2150320904}
!100 = !{i64 2150726303, i64 2150726794, i64 2150726340, i64 2150726396, i64 2150726430, i64 2150726454, i64 2150726495, i64 2150726516, i64 2150726544, i64 2150726578}
!101 = !{i64 2158939576}
!102 = !{i64 2158939791}
!103 = !{i64 2158956593}
!104 = !{i64 2158956810}
!105 = !{i64 2158918648}
!106 = !{i64 2158918851}
