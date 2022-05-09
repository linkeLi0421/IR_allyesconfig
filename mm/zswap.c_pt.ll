; ModuleID = '/llk/IR_all_yes/mm/zswap.c_pt.bc'
source_filename = "../mm/zswap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.zpool_ops = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.frontswap_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.zswap_pool = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.hlist_node, [128 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.zswap_tree = type { %struct.rb_root, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.zswap_entry = type { %struct.rb_node, i32, i32, i32, ptr, %union.anon.87 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.87 = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_acomp_ctx = type { ptr, ptr, %struct.crypto_wait, ptr, ptr }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.acomp_req = type { %struct.crypto_async_request, ptr, ptr, i32, i32, i32, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_acomp = type { ptr, ptr, ptr, i32, [112 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_enabled = internal constant [14 x i8] c"zswap.enabled\00", align 1
@zswap_enabled_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @zswap_enabled_param_set, ptr @param_get_bool, ptr null }, [16 x i8] zeroinitializer }, align 32
@zswap_enabled = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enabled = internal constant %struct.kernel_param { ptr @__param_str_enabled, ptr null, ptr @zswap_enabled_param_ops, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @zswap_enabled } }, section "__param", align 4
@__param_str_compressor = internal constant [17 x i8] c"zswap.compressor\00", align 1
@zswap_compressor_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @zswap_compressor_param_set, ptr @param_get_charp, ptr @param_free_charp }, [16 x i8] zeroinitializer }, align 32
@zswap_compressor = internal global { ptr, [28 x i8] } { ptr @.str.45, [28 x i8] zeroinitializer }, align 32
@__param_compressor = internal constant %struct.kernel_param { ptr @__param_str_compressor, ptr null, ptr @zswap_compressor_param_ops, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @zswap_compressor } }, section "__param", align 4
@__param_str_zpool = internal constant [12 x i8] c"zswap.zpool\00", align 1
@zswap_zpool_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @zswap_zpool_param_set, ptr @param_get_charp, ptr @param_free_charp }, [16 x i8] zeroinitializer }, align 32
@zswap_zpool_type = internal global { ptr, [28 x i8] } { ptr @.str.46, [28 x i8] zeroinitializer }, align 32
@__param_zpool = internal constant %struct.kernel_param { ptr @__param_str_zpool, ptr null, ptr @zswap_zpool_param_ops, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @zswap_zpool_type } }, section "__param", align 4
@__param_str_max_pool_percent = internal constant [23 x i8] c"zswap.max_pool_percent\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@zswap_max_pool_percent = internal global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@__param_max_pool_percent = internal constant %struct.kernel_param { ptr @__param_str_max_pool_percent, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @zswap_max_pool_percent } }, section "__param", align 4
@__UNIQUE_ID_max_pool_percenttype290 = internal constant [37 x i8] c"zswap.parmtype=max_pool_percent:uint\00", section ".modinfo", align 1
@__param_str_accept_threshold_percent = internal constant [31 x i8] c"zswap.accept_threshold_percent\00", align 1
@zswap_accept_thr_percent = internal global { i32, [28 x i8] } { i32 90, [28 x i8] zeroinitializer }, align 32
@__param_accept_threshold_percent = internal constant %struct.kernel_param { ptr @__param_str_accept_threshold_percent, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @zswap_accept_thr_percent } }, section "__param", align 4
@__UNIQUE_ID_accept_threshold_percenttype291 = internal constant [45 x i8] c"zswap.parmtype=accept_threshold_percent:uint\00", section ".modinfo", align 1
@__param_str_same_filled_pages_enabled = internal constant [32 x i8] c"zswap.same_filled_pages_enabled\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@zswap_same_filled_pages_enabled = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_same_filled_pages_enabled = internal constant %struct.kernel_param { ptr @__param_str_same_filled_pages_enabled, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @zswap_same_filled_pages_enabled } }, section "__param", align 4
@__UNIQUE_ID_same_filled_pages_enabledtype292 = internal constant [46 x i8] c"zswap.parmtype=same_filled_pages_enabled:bool\00", section ".modinfo", align 1
@__initcall__kmod_zswap__309_1501_init_zswap7 = internal global ptr @init_zswap, section ".initcall7.init", align 4
@__UNIQUE_ID_file310 = internal constant [20 x i8] c"zswap.file=mm/zswap\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [18 x i8] c"zswap.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author312 = internal constant [54 x i8] c"zswap.author=Seth Jennings <sjennings@variantweb.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [50 x i8] c"zswap.description=Compressed cache for swap pages\00", section ".modinfo", align 1
@__pcpu_unique_zswap_dstmem = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@zswap_dstmem = weak dso_local global ptr null, section ".data..percpu", align 4
@__pcpu_unique_zswap_mutex = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@zswap_mutex = weak dso_local global ptr null, section ".data..percpu", align 4
@zswap_init_failed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@zswap_enabled_param_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013zswap: can't enable, initialization failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zswap_enabled_param_set\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mm/zswap.c\00", [21 x i8] zeroinitializer }, align 32
@zswap_enabled_param_set._entry_ptr = internal global ptr @zswap_enabled_param_set._entry, section ".printk_index", align 4
@zswap_has_pool = internal global { i1, [31 x i8] } zeroinitializer, align 32
@zswap_init_started = internal global { i1, [31 x i8] } zeroinitializer, align 32
@zswap_enabled_param_set._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013zswap: can't enable, no pool configured\0A\00", [53 x i8] zeroinitializer }, align 32
@zswap_enabled_param_set._entry_ptr.5 = internal global ptr @zswap_enabled_param_set._entry.3, section ".printk_index", align 4
@__zswap_param_set._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 761, ptr null, ptr null }, align 1
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013zswap: can't set param, initialization failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__zswap_param_set\00", [46 x i8] zeroinitializer }, align 32
@__zswap_param_set._entry_ptr = internal global ptr @__zswap_param_set._entry, section ".printk_index", align 4
@__zswap_param_set._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 777, ptr null, ptr null }, align 1
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013zswap: zpool %s not available\0A\00", [63 x i8] zeroinitializer }, align 32
@__zswap_param_set._entry_ptr.10 = internal global ptr @__zswap_param_set._entry.8, section ".printk_index", align 4
@__zswap_param_set._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 783, ptr null, ptr null }, align 1
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013zswap: compressor %s not available\0A\00", [58 x i8] zeroinitializer }, align 32
@__zswap_param_set._entry_ptr.13 = internal global ptr @__zswap_param_set._entry.11, section ".printk_index", align 4
@zswap_pools_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__zswap_param_set.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.7, ptr @.str.2, ptr @.str.15, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"zswap\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s pool %s/%s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zswap: %s pool %s/%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"using existing\00", [17 x i8] zeroinitializer }, align 32
@zswap_pools = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @zswap_pools, ptr @zswap_pools }, [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zswap_pools_lock\00", [47 x i8] zeroinitializer }, align 32
@zswap_pool_find_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__zswap_pool_current.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: no page storage pool!\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.__zswap_pool_current = private unnamed_addr constant [21 x i8] c"__zswap_pool_current\00", align 1
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zswap%x\00", [24 x i8] zeroinitializer }, align 32
@zswap_pools_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@zswap_zpool_ops = internal constant { %struct.zpool_ops, [28 x i8] } { %struct.zpool_ops { ptr @zswap_writeback_entry }, [28 x i8] zeroinitializer }, align 32
@zswap_pool_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013zswap: %s zpool not available\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zswap_pool_create\00", [46 x i8] zeroinitializer }, align 32
@zswap_pool_create._entry_ptr = internal global ptr @zswap_pool_create._entry, section ".printk_index", align 4
@zswap_pool_create.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"using %s zpool\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zswap: using %s zpool\0A\00", [41 x i8] zeroinitializer }, align 32
@zswap_pool_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013zswap: percpu alloc failed\0A\00", [34 x i8] zeroinitializer }, align 32
@zswap_pool_create._entry_ptr.29 = internal global ptr @zswap_pool_create._entry.27, section ".printk_index", align 4
@zswap_pool_create.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.24, ptr @.str.2, ptr @.str.30, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using %s compressor\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zswap: using %s compressor\0A\00", [36 x i8] zeroinitializer }, align 32
@zswap_pool_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&pool->shrink_work)\00", [58 x i8] zeroinitializer }, align 32
@zswap_pool_create.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.24, ptr @.str.2, ptr @.str.15, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"created\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zswap_trees = internal global { [30 x ptr], [40 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@zswap_written_back_pages = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@zswap_same_filled_pages = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@zswap_stored_pages = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@zswap_entry_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@zswap_update_total_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@zswap_pool_total_size = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@zswap_reject_reclaim_fail = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__zswap_pool_empty.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&pool->release_work)\00", [57 x i8] zeroinitializer }, align 32
@zswap_pool_destroy.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.43, ptr @.str.2, ptr @.str.15, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zswap_pool_destroy\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"destroying\00", [21 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zbud\00", [27 x i8] zeroinitializer }, align 32
@init_zswap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013zswap: entry cache creation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_zswap\00", [21 x i8] zeroinitializer }, align 32
@init_zswap._entry_ptr = internal global ptr @init_zswap._entry, section ".printk_index", align 4
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm/zswap:prepare\00", [47 x i8] zeroinitializer }, align 32
@init_zswap._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.2, i32 1452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013zswap: dstmem alloc failed\0A\00", [34 x i8] zeroinitializer }, align 32
@init_zswap._entry_ptr.52 = internal global ptr @init_zswap._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mm/zswap_pool:prepare\00", [42 x i8] zeroinitializer }, align 32
@init_zswap._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.48, ptr @.str.2, i32 1466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016zswap: loaded using pool %s/%s\0A\00", [62 x i8] zeroinitializer }, align 32
@init_zswap._entry_ptr.56 = internal global ptr @init_zswap._entry.54, section ".printk_index", align 4
@init_zswap._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.48, ptr @.str.2, i32 1470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013zswap: pool creation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@init_zswap._entry_ptr.59 = internal global ptr @init_zswap._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zswap-shrink\00", [19 x i8] zeroinitializer }, align 32
@shrink_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@zswap_frontswap_ops = internal constant { %struct.frontswap_ops, [44 x i8] } { %struct.frontswap_ops { ptr @zswap_frontswap_init, ptr @zswap_frontswap_store, ptr @zswap_frontswap_load, ptr @zswap_frontswap_invalidate_page, ptr @zswap_frontswap_invalidate_area }, [44 x i8] zeroinitializer }, align 32
@init_zswap._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.48, ptr @.str.2, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014zswap: debugfs initialization failed\0A\00", [56 x i8] zeroinitializer }, align 32
@init_zswap._entry_ptr.64 = internal global ptr @init_zswap._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zswap_entry\00", [20 x i8] zeroinitializer }, align 32
@zswap_dstmem_prepare.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mutex\00", [26 x i8] zeroinitializer }, align 32
@zswap_cpu_comp_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013zswap: could not alloc crypto acomp %s : %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zswap_cpu_comp_prepare\00", [41 x i8] zeroinitializer }, align 32
@zswap_cpu_comp_prepare._entry_ptr = internal global ptr @zswap_cpu_comp_prepare._entry, section ".printk_index", align 4
@zswap_cpu_comp_prepare._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013zswap: could not alloc crypto acomp_request %s\0A\00", [46 x i8] zeroinitializer }, align 32
@zswap_cpu_comp_prepare._entry_ptr.71 = internal global ptr @zswap_cpu_comp_prepare._entry.69, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__zswap_pool_create_fallback._entry = internal constant %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 659, ptr null, ptr null }, align 1
@.str.73 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013zswap: compressor %s not available, using default %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__zswap_pool_create_fallback\00", [35 x i8] zeroinitializer }, align 32
@__zswap_pool_create_fallback._entry_ptr = internal global ptr @__zswap_pool_create_fallback._entry, section ".printk_index", align 4
@__zswap_pool_create_fallback._entry.75 = internal constant %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 666, ptr null, ptr null }, align 1
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013zswap: default compressor %s not available\0A\00", [50 x i8] zeroinitializer }, align 32
@__zswap_pool_create_fallback._entry_ptr.77 = internal global ptr @__zswap_pool_create_fallback._entry.75, section ".printk_index", align 4
@__zswap_pool_create_fallback._entry.78 = internal constant %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.2, i32 675, ptr null, ptr null }, align 1
@.str.79 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013zswap: zpool %s not available, using default %s\0A\00", [45 x i8] zeroinitializer }, align 32
@__zswap_pool_create_fallback._entry_ptr.80 = internal global ptr @__zswap_pool_create_fallback._entry.78, section ".printk_index", align 4
@__zswap_pool_create_fallback._entry.81 = internal constant %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str.2, i32 682, ptr null, ptr null }, align 1
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013zswap: default zpool %s not available\0A\00", [55 x i8] zeroinitializer }, align 32
@__zswap_pool_create_fallback._entry_ptr.83 = internal global ptr @__zswap_pool_create_fallback._entry.81, section ".printk_index", align 4
@zswap_frontswap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013zswap: alloc failed, zswap disabled for swap type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zswap_frontswap_init\00", [43 x i8] zeroinitializer }, align 32
@zswap_frontswap_init._entry_ptr = internal global ptr @zswap_frontswap_init._entry, section ".printk_index", align 4
@zswap_frontswap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tree->lock\00", [20 x i8] zeroinitializer }, align 32
@zswap_pool_limit_hit = internal global { i64, [24 x i8] } zeroinitializer, align 32
@zswap_pool_reached_full = internal global { i1, [31 x i8] } zeroinitializer, align 32
@zswap_reject_kmemcache_fail = internal global { i64, [24 x i8] } zeroinitializer, align 32
@zswap_reject_compress_poor = internal global { i64, [24 x i8] } zeroinitializer, align 32
@zswap_reject_alloc_fail = internal global { i64, [24 x i8] } zeroinitializer, align 32
@zswap_duplicate_entry = internal global { i64, [24 x i8] } zeroinitializer, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@zswap_pool_last_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@zswap_pool_last_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.zswap_pool_last_get = private unnamed_addr constant [20 x i8] c"zswap_pool_last_get\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@zswap_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pool_limit_hit\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reject_reclaim_fail\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reject_alloc_fail\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reject_kmemcache_fail\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reject_compress_poor\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"written_back_pages\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"duplicate_entry\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pool_total_size\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stored_pages\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"same_filled_pages\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"zswap_enabled_param_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 86, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"zswap_enabled\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 83, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"zswap_compressor_param_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 96, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"zswap_compressor\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 93, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"zswap_zpool_param_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 107, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"zswap_zpool_type\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 105, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"zswap_max_pool_percent\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 115, i32 21 }
@___asan_gen_.122 = private unnamed_addr constant [25 x i8] c"zswap_accept_thr_percent\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 119, i32 21 }
@___asan_gen_.125 = private unnamed_addr constant [32 x i8] c"zswap_same_filled_pages_enabled\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 124, i32 13 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"zswap_init_failed\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 864, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"zswap_has_pool\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"zswap_init_started\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 868, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 761, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 777, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 783, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"zswap_pools_lock\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 796, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [12 x i8] c"zswap_pools\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 200, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 202, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 561, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 508, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 597, i32 21 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 608, i32 21 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"zswap_pools_count\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 204, i32 17 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"zswap_zpool_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 227, i32 31 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 612, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 615, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 621, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 629, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 636, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 638, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [12 x i8] c"zswap_trees\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 197, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant [25 x i8] c"zswap_written_back_pages\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 59, i32 12 }
@___asan_gen_.243 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 717, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 260, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 466, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant [24 x i8] c"zswap_same_filled_pages\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 47, i32 17 }
@___asan_gen_.257 = private unnamed_addr constant [19 x i8] c"zswap_stored_pages\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 45, i32 17 }
@___asan_gen_.260 = private unnamed_addr constant [18 x i8] c"zswap_entry_cache\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 262, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant [22 x i8] c"zswap_pool_total_size\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 43, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 695, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 723, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [26 x i8] c"zswap_reject_reclaim_fail\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 61, i32 12 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 737, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 695, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 93, i32 33 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 105, i32 33 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1445, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1449, i32 53 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1452, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1457, i32 11 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1465, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1470, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1474, i32 14 }
@___asan_gen_.332 = private unnamed_addr constant [10 x i8] c"shrink_wq\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 72, i32 33 }
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c"zswap_frontswap_ops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1381, i32 35 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1482, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 266, i32 22 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 423, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 454, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 462, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 87, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 658, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 665, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 674, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 681, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1372, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1377, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [21 x i8] c"zswap_pool_limit_hit\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 57, i32 12 }
@___asan_gen_.407 = private unnamed_addr constant [24 x i8] c"zswap_pool_reached_full\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [28 x i8] c"zswap_reject_kmemcache_fail\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 67, i32 12 }
@___asan_gen_.411 = private unnamed_addr constant [27 x i8] c"zswap_reject_compress_poor\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 63, i32 12 }
@___asan_gen_.414 = private unnamed_addr constant [24 x i8] c"zswap_reject_alloc_fail\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 65, i32 12 }
@___asan_gen_.417 = private unnamed_addr constant [22 x i8] c"zswap_duplicate_entry\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 69, i32 12 }
@___asan_gen_.420 = private unnamed_addr constant [19 x i8] c"zswap_debugfs_root\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1395, i32 23 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1404, i32 21 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1406, i32 21 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1408, i32 21 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1410, i32 21 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1412, i32 21 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1414, i32 21 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1416, i32 21 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1418, i32 21 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1420, i32 26 }
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.451 = private constant [14 x i8] c"../mm/zswap.c\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1422, i32 26 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_accept_threshold_percenttype291, ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__UNIQUE_ID_max_pool_percenttype290, ptr @__UNIQUE_ID_same_filled_pages_enabledtype292, ptr @__initcall__kmod_zswap__309_1501_init_zswap7, ptr @__param_accept_threshold_percent, ptr @__param_compressor, ptr @__param_enabled, ptr @__param_max_pool_percent, ptr @__param_same_filled_pages_enabled, ptr @__param_zpool, ptr @__zswap_param_set._entry, ptr @__zswap_param_set._entry.11, ptr @__zswap_param_set._entry.8, ptr @__zswap_param_set._entry_ptr, ptr @__zswap_param_set._entry_ptr.10, ptr @__zswap_param_set._entry_ptr.13, ptr @__zswap_pool_create_fallback._entry, ptr @__zswap_pool_create_fallback._entry.75, ptr @__zswap_pool_create_fallback._entry.78, ptr @__zswap_pool_create_fallback._entry.81, ptr @__zswap_pool_create_fallback._entry_ptr, ptr @__zswap_pool_create_fallback._entry_ptr.77, ptr @__zswap_pool_create_fallback._entry_ptr.80, ptr @__zswap_pool_create_fallback._entry_ptr.83, ptr @init_zswap._entry, ptr @init_zswap._entry.50, ptr @init_zswap._entry.54, ptr @init_zswap._entry.57, ptr @init_zswap._entry.62, ptr @init_zswap._entry_ptr, ptr @init_zswap._entry_ptr.52, ptr @init_zswap._entry_ptr.56, ptr @init_zswap._entry_ptr.59, ptr @init_zswap._entry_ptr.64, ptr @zswap_cpu_comp_prepare._entry, ptr @zswap_cpu_comp_prepare._entry.69, ptr @zswap_cpu_comp_prepare._entry_ptr, ptr @zswap_cpu_comp_prepare._entry_ptr.71, ptr @zswap_enabled_param_set._entry, ptr @zswap_enabled_param_set._entry.3, ptr @zswap_enabled_param_set._entry_ptr, ptr @zswap_enabled_param_set._entry_ptr.5, ptr @zswap_frontswap_init._entry, ptr @zswap_frontswap_init._entry_ptr, ptr @zswap_pool_create._entry, ptr @zswap_pool_create._entry.27, ptr @zswap_pool_create._entry_ptr, ptr @zswap_pool_create._entry_ptr.29, ptr @zswap_enabled_param_ops, ptr @zswap_enabled, ptr @zswap_compressor_param_ops, ptr @zswap_compressor, ptr @zswap_zpool_param_ops, ptr @zswap_zpool_type, ptr @zswap_max_pool_percent, ptr @zswap_accept_thr_percent, ptr @zswap_same_filled_pages_enabled, ptr @zswap_init_failed, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @zswap_has_pool, ptr @zswap_init_started, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @zswap_pools_lock, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @zswap_pools, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @zswap_pools_count, ptr @zswap_zpool_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @zswap_pool_create.__key, ptr @.str.32, ptr @.str.33, ptr @zswap_trees, ptr @zswap_written_back_pages, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @zswap_same_filled_pages, ptr @zswap_stored_pages, ptr @zswap_entry_cache, ptr @zswap_pool_total_size, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @zswap_reject_reclaim_fail, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @shrink_wq, ptr @zswap_frontswap_ops, ptr @.str.63, ptr @.str.65, ptr @zswap_dstmem_prepare.__key, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @init_completion.__key, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @zswap_frontswap_init.__key, ptr @.str.86, ptr @zswap_pool_limit_hit, ptr @zswap_pool_reached_full, ptr @zswap_reject_kmemcache_fail, ptr @zswap_reject_compress_poor, ptr @zswap_reject_alloc_fail, ptr @zswap_duplicate_entry, ptr @zswap_debugfs_root, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_enabled_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_compressor_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_compressor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_zpool_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_zpool_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_max_pool_percent to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_accept_thr_percent to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_same_filled_pages_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_init_failed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_enabled_param_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_has_pool to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_init_started to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_enabled_param_set._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_pools_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_pools to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_pools_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_zpool_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_pool_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_pool_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_pool_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_trees to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_written_back_pages to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_same_filled_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_stored_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_entry_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_pool_total_size to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_reject_reclaim_fail to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_zswap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_zswap._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_zswap._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_zswap._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shrink_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_frontswap_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_zswap._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_dstmem_prepare.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_cpu_comp_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_cpu_comp_prepare._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_frontswap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_frontswap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_pool_limit_hit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_pool_reached_full to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_reject_kmemcache_fail to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_reject_compress_poor to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_reject_alloc_fail to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_duplicate_entry to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zswap_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_zswap() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @zswap_init_started, align 1
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.65, i32 noundef 32, i32 noundef 4, i32 noundef 0, ptr noundef null) #12
  store ptr %call.i, ptr @zswap_entry_cache, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  br label %cache_fail

if.end:                                           ; preds = %entry
  %call.i58 = tail call i32 @__cpuhp_setup_state(i32 noundef 64, ptr noundef nonnull @.str.49, i1 noundef zeroext true, ptr noundef nonnull @zswap_dstmem_prepare, ptr noundef nonnull @zswap_dstmem_dead, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool3.not = icmp eq i32 %call.i58, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #15
  br label %dstmem_fail

if.end10:                                         ; preds = %if.end
  %call.i59 = tail call i32 @__cpuhp_setup_state(i32 noundef 65, ptr noundef nonnull @.str.53, i1 noundef zeroext false, ptr noundef nonnull @zswap_cpu_comp_prepare, ptr noundef nonnull @zswap_cpu_comp_dead, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool12.not = icmp eq i32 %call.i59, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.hp_fail_crit_edge

if.end10.hp_fail_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %hp_fail

if.end14:                                         ; preds = %if.end10
  %call15 = tail call fastcc ptr @__zswap_pool_create_fallback() #16
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end26, label %do.end20

do.end20:                                         ; preds = %if.end14
  %tfm_name = getelementptr inbounds %struct.zswap_pool, ptr %call15, i32 0, i32 7
  %0 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call15, align 4
  %call22 = tail call ptr @zpool_get_type(ptr noundef %1) #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %tfm_name, ptr noundef %call22) #15
  %list = getelementptr inbounds %struct.zswap_pool, ptr %call15, i32 0, i32 3
  %2 = load ptr, ptr @zswap_pools, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @zswap_pools, ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end20.list_add.exit_crit_edge

do.end20.list_add.exit_crit_edge:                 ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.zswap_pool, ptr %call15, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @zswap_pools, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @zswap_pools, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end20.list_add.exit_crit_edge
  store i1 true, ptr @zswap_has_pool, align 1
  br label %if.end29

do.end26:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #15
  store i8 0, ptr @zswap_enabled, align 1
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %list_add.exit
  %call30 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.60, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.61) #12
  store ptr %call30, ptr @shrink_wq, align 4
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.fallback_fail_crit_edge, label %if.end33

if.end29.fallback_fail_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %fallback_fail

if.end33:                                         ; preds = %if.end29
  %call34 = tail call i32 @frontswap_register_ops(ptr noundef nonnull @zswap_frontswap_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %destroy_wq

if.end37:                                         ; preds = %if.end33
  %call38 = tail call fastcc i32 @zswap_debugfs_init() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %do.end43

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #15
  br label %cleanup

destroy_wq:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load ptr, ptr @shrink_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %6) #12
  br label %fallback_fail

fallback_fail:                                    ; preds = %destroy_wq, %if.end29.fallback_fail_crit_edge
  br i1 %tobool16.not, label %fallback_fail.hp_fail_crit_edge, label %if.then48

fallback_fail.hp_fail_crit_edge:                  ; preds = %fallback_fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %hp_fail

if.then48:                                        ; preds = %fallback_fail
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @zswap_pool_destroy(ptr noundef nonnull %call15)
  br label %hp_fail

hp_fail:                                          ; preds = %if.then48, %fallback_fail.hp_fail_crit_edge, %if.end10.hp_fail_crit_edge
  tail call void @__cpuhp_remove_state(i32 noundef 64, i1 noundef zeroext true) #12
  br label %dstmem_fail

dstmem_fail:                                      ; preds = %hp_fail, %do.end7
  %7 = load ptr, ptr @zswap_entry_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #12
  br label %cache_fail

cache_fail:                                       ; preds = %dstmem_fail, %do.end
  store i1 true, ptr @zswap_init_failed, align 1
  store i8 0, ptr @zswap_enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %cache_fail, %do.end43, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %cache_fail ], [ 0, %do.end43 ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_enabled_param_set(ptr noundef %val, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b12 = load i1, ptr @zswap_init_failed, align 1
  br i1 %.b12, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %return

if.end:                                           ; preds = %entry
  %.b1013 = load i1, ptr @zswap_has_pool, align 1
  br i1 %.b1013, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %.b1114 = load i1, ptr @zswap_init_started, align 1
  br i1 %.b1114, label %do.end5, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.end5:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  br label %return

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @param_set_bool(ptr noundef %val, ptr noundef %kp) #12
  br label %return

return:                                           ; preds = %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call9, %if.end8 ], [ -19, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_bool(ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_bool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_compressor_param_set(ptr noundef %val, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @zswap_zpool_type, align 4
  %call = tail call fastcc i32 @__zswap_param_set(ptr noundef %val, ptr noundef %kp, ptr noundef %0, ptr noundef null)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_charp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @param_free_charp(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__zswap_param_set(ptr noundef %val, ptr noundef %kp, ptr noundef %type, ptr noundef %compressor) unnamed_addr #1 align 64 {
entry:
  %__next.i.i183 = alloca ptr, align 4
  %agg.tmp.sroa.0.i.i184 = alloca i32, align 4
  %__next.i.i = alloca ptr, align 4
  %agg.tmp.sroa.0.i.i177 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @strim(ptr noundef %val) #12
  %.b171 = load i1, ptr @zswap_init_failed, align 1
  br i1 %.b171, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %call.i, ptr noundef %4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %.b169172 = load i1, ptr @zswap_has_pool, align 1
  br i1 %.b169172, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %.b170173 = load i1, ptr @zswap_init_started, align 1
  br i1 %.b170173, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @param_set_charp(ptr noundef %call.i, ptr noundef %kp) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %tobool11.not = icmp eq ptr %type, null
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %call13 = tail call zeroext i1 @zpool_has_pool(ptr noundef %call.i) #12
  br i1 %call13, label %if.then12.if.end55_crit_edge, label %do.end17

if.then12.if.end55_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

do.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %call.i) #15
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %tobool21.not = icmp eq ptr %compressor, null
  br i1 %tobool21.not, label %if.then22, label %do.end40

if.then22:                                        ; preds = %if.else
  %call.i175 = tail call i32 @crypto_has_alg(ptr noundef %call.i, i32 noundef 10, i32 noundef 14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool24.not = icmp eq i32 %call.i175, 0
  br i1 %tobool24.not, label %do.end28, label %if.then22.if.end55_crit_edge

if.then22.if.end55_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %call.i) #15
  br label %cleanup

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 788, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end55:                                         ; preds = %if.then22.if.end55_crit_edge, %if.then12.if.end55_crit_edge
  %compressor.addr.0 = phi ptr [ %compressor, %if.then12.if.end55_crit_edge ], [ %call.i, %if.then22.if.end55_crit_edge ]
  %type.addr.0 = phi ptr [ %call.i, %if.then12.if.end55_crit_edge ], [ %type, %if.then22.if.end55_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @zswap_pools_lock) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @zswap_pools_lock, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body10.i, !prof !298

do.body4.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 559, 0\0A.popsection", ""() #12, !srcloc !299
  unreachable

do.body10.i:                                      ; preds = %if.end55
  %call11.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i, label %do.body10.i.do.end20.i_crit_edge

do.body10.i.do.end20.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i

land.lhs.true.i:                                  ; preds = %do.body10.i
  %call13.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.do.end20.i_crit_edge, label %land.lhs.true15.i

land.lhs.true.i.do.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %.b51.i = load i1, ptr @zswap_pool_find_get.__warned, align 1
  br i1 %.b51.i, label %land.lhs.true15.i.do.end20.i_crit_edge, label %if.then17.i

land.lhs.true15.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @zswap_pool_find_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 561, ptr noundef nonnull @.str.19) #12
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %land.lhs.true15.i.do.end20.i_crit_edge, %land.lhs.true.i.do.end20.i_crit_edge, %do.body10.i.do.end20.i_crit_edge
  %.pn52.i = load volatile ptr, ptr @zswap_pools, align 4
  %cmp.not54.i = icmp eq ptr %.pn52.i, @zswap_pools
  br i1 %cmp.not54.i, label %do.end20.i.if.end109_crit_edge, label %do.end20.i.for.body.i_crit_edge

do.end20.i.for.body.i_crit_edge:                  ; preds = %do.end20.i
  br label %for.body.i

do.end20.i.if.end109_crit_edge:                   ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end20.i.for.body.i_crit_edge
  %.pn55.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn52.i, %do.end20.i.for.body.i_crit_edge ]
  %pool.056.i = getelementptr i8, ptr %.pn55.i, i32 -12
  %tfm_name.i = getelementptr i8, ptr %.pn55.i, i32 104
  %call25.i = tail call i32 @strcmp(ptr noundef %tfm_name.i, ptr noundef %compressor.addr.0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end28.i:                                       ; preds = %for.body.i
  %6 = ptrtoint ptr %pool.056.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool.056.i, align 4
  %call29.i = tail call ptr @zpool_get_type(ptr noundef %7) #12
  %call30.i = tail call i32 @strcmp(ptr noundef %call29.i, ptr noundef %type.addr.0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end28.i.for.inc.i_crit_edge

if.end28.i.for.inc.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end33.i:                                       ; preds = %if.end28.i
  %call34.i = tail call fastcc i32 @zswap_pool_get(ptr noundef %pool.056.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.for.inc.i_crit_edge, label %zswap_pool_find_get.exit

if.end33.i.for.inc.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end33.i.for.inc.i_crit_edge, %if.end28.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn55.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load volatile ptr, ptr %.pn55.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @zswap_pools
  br i1 %cmp.not.i, label %for.inc.i.if.end109_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end109_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

zswap_pool_find_get.exit:                         ; preds = %if.end33.i
  %tobool57.not = icmp eq ptr %pool.056.i, null
  br i1 %tobool57.not, label %zswap_pool_find_get.exit.if.end109_crit_edge, label %do.body59

zswap_pool_find_get.exit.if.end109_crit_edge:     ; preds = %zswap_pool_find_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

do.body59:                                        ; preds = %zswap_pool_find_get.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__zswap_param_set.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__zswap_param_set, %if.then69)) #12
          to label %do.end73 [label %if.then69], !srcloc !300

if.then69:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %pool.056.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pool.056.i, align 4
  %call70 = tail call ptr @zpool_get_type(ptr noundef %10) #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__zswap_param_set.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %tfm_name.i, ptr noundef %call70) #12
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i177)
  %agg.tmp.sroa.0.0.copyload.i.i178 = load volatile i32, ptr @zswap_pools_lock, align 4
  %11 = ptrtoint ptr %agg.tmp.sroa.0.i.i177 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i178, ptr %agg.tmp.sroa.0.i.i177, align 4
  %lock.sroa.0.0.extract.shift.i.i.i179 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i178, 16
  %conv.i.i.i180 = and i32 %agg.tmp.sroa.0.0.copyload.i.i178, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i180, i32 %lock.sroa.0.0.extract.shift.i.i.i179)
  %cmp.i.i.not.i181 = icmp eq i32 %conv.i.i.i180, %lock.sroa.0.0.extract.shift.i.i.i179
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i177)
  br i1 %cmp.i.i.not.i181, label %do.body4.i182, label %do.end7.i, !prof !298

do.body4.i182:                                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #12, !srcloc !301
  unreachable

do.end7.i:                                        ; preds = %do.end73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i.i)
  %12 = load volatile ptr, ptr @zswap_pools, align 4
  %13 = ptrtoint ptr %__next.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__next.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, @zswap_pools
  br i1 %cmp.not.i.i, label %cond.end.thread.i.i, label %cond.end.i.i, !prof !298

cond.end.thread.i.i:                              ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i)
  br label %land.rhs.i.i

cond.end.i.i:                                     ; preds = %do.end7.i
  %14 = ptrtoint ptr %__next.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %__next.i.i.0.__next.i.i.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.60.i.i = load volatile ptr, ptr %__next.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %__next.i.i.0.__next.i.i.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.60.i.i, i32 -12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i)
  %tobool8.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool8.not.i.i, label %cond.end.i.i.land.rhs.i.i_crit_edge, label %zswap_pool_current.exit

cond.end.i.i.land.rhs.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %cond.end.i.i.land.rhs.i.i_crit_edge, %cond.end.thread.i.i
  %.b64.i.i = load i1, ptr @zswap_has_pool, align 1
  br i1 %.b64.i.i, label %land.rhs15.i.i, label %land.rhs.i.i.if.end97_crit_edge

land.rhs.i.i.if.end97_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

land.rhs15.i.i:                                   ; preds = %land.rhs.i.i
  %.b6365.i.i = load i1, ptr @__zswap_pool_current.__already_done, align 1
  br i1 %.b6365.i.i, label %land.rhs15.i.i.if.end97_crit_edge, label %if.then.i.i, !prof !302

land.rhs15.i.i.if.end97_crit_edge:                ; preds = %land.rhs15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then.i.i:                                      ; preds = %land.rhs15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__zswap_pool_current.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 509, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.__zswap_pool_current) #12
  br label %if.end97

zswap_pool_current.exit:                          ; preds = %cond.end.i.i
  %cmp = icmp eq ptr %.pn55.i, %__next.i.i.0.__next.i.i.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.60.i.i
  br i1 %cmp, label %do.end91, label %zswap_pool_current.exit.if.end97_crit_edge, !prof !298

zswap_pool_current.exit.if.end97_crit_edge:       ; preds = %zswap_pool_current.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

do.end91:                                         ; preds = %zswap_pool_current.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 797, i32 noundef 9, ptr noundef null) #12
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %zswap_pool_current.exit.if.end97_crit_edge, %if.then.i.i, %land.rhs15.i.i.if.end97_crit_edge, %land.rhs.i.i.if.end97_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn55.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end97.if.end109.thread_crit_edge

if.end97.if.end109.thread_crit_edge:              ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109.thread

if.end.i.i:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn55.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn55.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn55.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %if.end109.thread

if.end109.thread:                                 ; preds = %if.end.i.i, %if.end97.if.end109.thread_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn55.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @zswap_pools_lock) #12
  br label %if.end114

if.end109:                                        ; preds = %zswap_pool_find_get.exit.if.end109_crit_edge, %for.inc.i.if.end109_crit_edge, %do.end20.i.if.end109_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @zswap_pools_lock) #12
  %call108 = tail call fastcc ptr @zswap_pool_create(ptr noundef %type.addr.0, ptr noundef %compressor.addr.0)
  %tobool110.not = icmp eq ptr %call108, null
  br i1 %tobool110.not, label %if.end124, label %if.end109.if.end114_crit_edge

if.end109.if.end114_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.end114:                                        ; preds = %if.end109.if.end114_crit_edge, %if.end109.thread
  %pool.0214 = phi ptr [ %pool.056.i, %if.end109.thread ], [ %call108, %if.end109.if.end114_crit_edge ]
  %call112 = tail call i32 @param_set_charp(ptr noundef %call.i, ptr noundef %kp) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @zswap_pools_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool115.not = icmp eq i32 %call112, 0
  br i1 %tobool115.not, label %if.then116, label %if.then121

if.then116:                                       ; preds = %if.end114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i184)
  %agg.tmp.sroa.0.0.copyload.i.i185 = load volatile i32, ptr @zswap_pools_lock, align 4
  %22 = ptrtoint ptr %agg.tmp.sroa.0.i.i184 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i185, ptr %agg.tmp.sroa.0.i.i184, align 4
  %lock.sroa.0.0.extract.shift.i.i.i186 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i185, 16
  %conv.i.i.i187 = and i32 %agg.tmp.sroa.0.0.copyload.i.i185, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i187, i32 %lock.sroa.0.0.extract.shift.i.i.i186)
  %cmp.i.i.not.i188 = icmp eq i32 %conv.i.i.i187, %lock.sroa.0.0.extract.shift.i.i.i186
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i184)
  br i1 %cmp.i.i.not.i188, label %do.body4.i189, label %do.end7.i191, !prof !298

do.body4.i189:                                    ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #12, !srcloc !301
  unreachable

do.end7.i191:                                     ; preds = %if.then116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i.i183)
  %23 = load volatile ptr, ptr @zswap_pools, align 4
  %24 = ptrtoint ptr %__next.i.i183 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %__next.i.i183, align 4
  %cmp.not.i.i190 = icmp eq ptr %23, @zswap_pools
  br i1 %cmp.not.i.i190, label %cond.end.thread.i.i192, label %cond.end.i.i196, !prof !298

cond.end.thread.i.i192:                           ; preds = %do.end7.i191
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i183)
  br label %land.rhs.i.i198

cond.end.i.i196:                                  ; preds = %do.end7.i191
  %25 = ptrtoint ptr %__next.i.i183 to i32
  call void @__asan_load4_noabort(i32 %25)
  %__next.i.i183.0.__next.i.i183.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.60.i.i193 = load volatile ptr, ptr %__next.i.i183, align 4
  %add.ptr.i.i194 = getelementptr i8, ptr %__next.i.i183.0.__next.i.i183.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.60.i.i193, i32 -12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i183)
  %tobool8.not.i.i195 = icmp eq ptr %add.ptr.i.i194, null
  br i1 %tobool8.not.i.i195, label %cond.end.i.i196.land.rhs.i.i198_crit_edge, label %cond.end.i.i196.zswap_pool_current.exit203_crit_edge

cond.end.i.i196.zswap_pool_current.exit203_crit_edge: ; preds = %cond.end.i.i196
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_current.exit203

cond.end.i.i196.land.rhs.i.i198_crit_edge:        ; preds = %cond.end.i.i196
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i198

land.rhs.i.i198:                                  ; preds = %cond.end.i.i196.land.rhs.i.i198_crit_edge, %cond.end.thread.i.i192
  %.b64.i.i197 = load i1, ptr @zswap_has_pool, align 1
  br i1 %.b64.i.i197, label %land.rhs15.i.i200, label %land.rhs.i.i198.zswap_pool_current.exit203_crit_edge

land.rhs.i.i198.zswap_pool_current.exit203_crit_edge: ; preds = %land.rhs.i.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_current.exit203

land.rhs15.i.i200:                                ; preds = %land.rhs.i.i198
  %.b6365.i.i199 = load i1, ptr @__zswap_pool_current.__already_done, align 1
  br i1 %.b6365.i.i199, label %land.rhs15.i.i200.zswap_pool_current.exit203_crit_edge, label %if.then.i.i201, !prof !302

land.rhs15.i.i200.zswap_pool_current.exit203_crit_edge: ; preds = %land.rhs15.i.i200
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_current.exit203

if.then.i.i201:                                   ; preds = %land.rhs15.i.i200
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__zswap_pool_current.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 509, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.__zswap_pool_current) #12
  br label %zswap_pool_current.exit203

zswap_pool_current.exit203:                       ; preds = %if.then.i.i201, %land.rhs15.i.i200.zswap_pool_current.exit203_crit_edge, %land.rhs.i.i198.zswap_pool_current.exit203_crit_edge, %cond.end.i.i196.zswap_pool_current.exit203_crit_edge
  %cond69.i.i202 = phi ptr [ %add.ptr.i.i194, %cond.end.i.i196.zswap_pool_current.exit203_crit_edge ], [ null, %land.rhs.i.i198.zswap_pool_current.exit203_crit_edge ], [ null, %if.then.i.i201 ], [ null, %land.rhs15.i.i200.zswap_pool_current.exit203_crit_edge ]
  %list118 = getelementptr inbounds %struct.zswap_pool, ptr %pool.0214, i32 0, i32 3
  %26 = load ptr, ptr @zswap_pools, align 4
  %call.i.i204 = tail call zeroext i1 @__list_add_valid(ptr noundef %list118, ptr noundef nonnull @zswap_pools, ptr noundef %26) #12
  br i1 %call.i.i204, label %if.end.i.i205, label %zswap_pool_current.exit203.if.end130_crit_edge

zswap_pool_current.exit203.if.end130_crit_edge:   ; preds = %zswap_pool_current.exit203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.end.i.i205:                                    ; preds = %zswap_pool_current.exit203
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %list118 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %list118, align 4
  %prev2.i.i = getelementptr inbounds %struct.zswap_pool, ptr %pool.0214, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @zswap_pools, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !303
  store volatile ptr %list118, ptr @zswap_pools, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list118, ptr %prev37.i.i, align 4
  br label %if.end130

if.then121:                                       ; preds = %if.end114
  %list122 = getelementptr inbounds %struct.zswap_pool, ptr %pool.0214, i32 0, i32 3
  %30 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @zswap_pools, i32 0, i32 1), align 4
  %call.i.i206 = tail call zeroext i1 @__list_add_valid(ptr noundef %list122, ptr noundef %30, ptr noundef nonnull @zswap_pools) #12
  br i1 %call.i.i206, label %if.end.i.i208, label %if.then121.if.end130.thread249_crit_edge

if.then121.if.end130.thread249_crit_edge:         ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.thread249

if.end.i.i208:                                    ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %list122 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @zswap_pools, ptr %list122, align 4
  %prev2.i.i207 = getelementptr inbounds %struct.zswap_pool, ptr %pool.0214, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev2.i.i207 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %prev2.i.i207, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !303
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list122, ptr %30, align 4
  store ptr %list122, ptr getelementptr inbounds (%struct.list_head, ptr @zswap_pools, i32 0, i32 1), align 4
  br label %if.end130.thread249

if.end124:                                        ; preds = %if.end109
  tail call void @_raw_spin_lock(ptr noundef nonnull @zswap_pools_lock) #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @zswap_pools_lock) #12
  %.b168174 = load i1, ptr @zswap_has_pool, align 1
  br i1 %.b168174, label %if.end124.cleanup_crit_edge, label %if.then128

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  %call129 = tail call i32 @param_set_charp(ptr noundef %call.i, ptr noundef %kp) #12
  br label %cleanup

if.end130.thread249:                              ; preds = %if.end.i.i208, %if.then121.if.end130.thread249_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @zswap_pools_lock) #12
  br label %if.then132

if.end130:                                        ; preds = %if.end.i.i205, %zswap_pool_current.exit203.if.end130_crit_edge
  store i1 true, ptr @zswap_has_pool, align 1
  tail call void @_raw_spin_unlock(ptr noundef nonnull @zswap_pools_lock) #12
  %tobool131.not = icmp eq ptr %cond69.i.i202, null
  br i1 %tobool131.not, label %if.end130.cleanup_crit_edge, label %if.end130.if.then132_crit_edge

if.end130.if.then132_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then132

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then132:                                       ; preds = %if.end130.if.then132_crit_edge, %if.end130.thread249
  %put_pool.0.ph254 = phi ptr [ %pool.0214, %if.end130.thread249 ], [ %cond69.i.i202, %if.end130.if.then132_crit_edge ]
  tail call fastcc void @zswap_pool_put(ptr noundef nonnull %put_pool.0.ph254)
  br label %cleanup

cleanup:                                          ; preds = %if.then132, %if.end130.cleanup_crit_edge, %if.then128, %if.end124.cleanup_crit_edge, %do.end40, %do.end28, %do.end17, %if.then8, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end40 ], [ -2, %do.end28 ], [ -2, %do.end17 ], [ %call9, %if.then8 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call112, %if.then132 ], [ 0, %if.end130.cleanup_crit_edge ], [ %call129, %if.then128 ], [ -22, %if.end124.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_charp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zpool_has_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zpool_get_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @zswap_pool_create(ptr noundef %type, ptr noundef %compressor) unnamed_addr #1 align 64 {
entry:
  %name = alloca [38 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %name) #12
  %0 = call ptr @memset(ptr %name, i32 255, i32 38)
  %.b135 = load i1, ptr @zswap_has_pool, align 1
  br i1 %.b135, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %strcmpload = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %tobool1.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_load1_noabort(i32 %2)
  %strcmpload136 = load i8, ptr %compressor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload136)
  %tobool4.not = icmp eq i8 %strcmpload136, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 244) #19
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @zswap_pools_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr nonnull @zswap_pools_count, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @zswap_pools_count, ptr nonnull @zswap_pools_count, i32 1, ptr nonnull elementtype(i32) @zswap_pools_count) #12, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !306
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 38, ptr noundef nonnull @.str.22, i32 noundef %asmresult.i.i.i.i)
  %call15 = call ptr @zpool_create_pool(ptr noundef %type, ptr noundef nonnull %name, i32 noundef 75776, ptr noundef nonnull @zswap_zpool_ops) #12
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %call7.i.i, align 8
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end, label %do.body21

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %type) #15
  br label %error

do.body21:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zswap_pool_create.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zswap_pool_create, %if.then27)) #12
          to label %do.end32 [label %if.then27], !srcloc !300

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %call29 = call ptr @zpool_get_type(ptr noundef %7) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zswap_pool_create.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.26, ptr noundef %call29) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body21
  %tfm_name = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 7
  %call34 = call i32 @strscpy(ptr noundef %tfm_name, ptr noundef %compressor, i32 noundef 128) #12
  %call35 = call noalias ptr @__alloc_percpu(i32 noundef 76, i32 noundef 4) #20
  %acomp_ctx = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %acomp_ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call35, ptr %acomp_ctx, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end41, label %if.end44

do.end41:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  br label %error

if.end44:                                         ; preds = %do.end32
  %node = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 6
  %call.i = call i32 @__cpuhp_state_add_instance(i32 noundef 65, ptr noundef %node, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool46.not = icmp eq i32 %call.i, 0
  br i1 %tobool46.not, label %do.body49, label %if.end44.error_crit_edge

if.end44.error_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

do.body49:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zswap_pool_create.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zswap_pool_create, %if.then61)) #12
          to label %do.end66 [label %if.then61], !srcloc !300

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zswap_pool_create.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.31, ptr noundef %tfm_name) #12
  br label %do.end66

do.end66:                                         ; preds = %if.then61, %do.body49
  %kref = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  %9 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %kref, align 8
  %list = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 8
  %shrink_work = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 5
  call void @__init_work(ptr noundef %shrink_work, i32 noundef 0) #12
  %12 = ptrtoint ptr %shrink_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %shrink_work, align 8
  %lockdep_map = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 5, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.32, ptr noundef nonnull @zswap_pool_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry71 = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %entry71 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry71, ptr %entry71, align 4
  %prev.i143 = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i143 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry71, ptr %prev.i143, align 8
  %func = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @shrink_worker, ptr %func, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zswap_pool_create.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zswap_pool_create, %if.then87)) #12
          to label %cleanup [label %if.then87], !srcloc !300

if.then87:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %call91 = call ptr @zpool_get_type(ptr noundef %17) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zswap_pool_create.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.33, ptr noundef %tfm_name, ptr noundef %call91) #12
  br label %cleanup

error:                                            ; preds = %if.end44.error_crit_edge, %do.end41, %do.end
  %acomp_ctx95 = getelementptr inbounds %struct.zswap_pool, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %acomp_ctx95 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %acomp_ctx95, align 4
  %tobool96.not = icmp eq ptr %19, null
  br i1 %tobool96.not, label %error.if.end99_crit_edge, label %if.then97

error.if.end99_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then97:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  call void @free_percpu(ptr noundef nonnull %19) #12
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %error.if.end99_crit_edge
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %tobool101.not = icmp eq ptr %21, null
  br i1 %tobool101.not, label %if.end99.if.end104_crit_edge, label %if.then102

if.end99.if.end104_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  call void @zpool_destroy_pool(ptr noundef nonnull %21) #12
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end99.if.end104_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.then87, %do.end66, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end104 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ %call7.i.i, %if.then87 ], [ %call7.i.i, %do.end66 ]
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %name) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zswap_pool_put(ptr noundef %pool) unnamed_addr #1 align 64 {
entry:
  %__next.i.i.i.i = alloca ptr, align 4
  %agg.tmp.sroa.0.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.zswap_pool, ptr %pool, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !307
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !308
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !302

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !309
  tail call void @_raw_spin_lock(ptr noundef nonnull @zswap_pools_lock) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load volatile i32, ptr @zswap_pools_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, ptr %agg.tmp.sroa.0.i.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 16
  %conv.i.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.i)
  %cmp.i.i.not.i.i.i = icmp eq i32 %conv.i.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  br i1 %cmp.i.i.not.i.i.i, label %do.body4.i.i.i, label %do.end7.i.i.i, !prof !298

do.body4.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #12, !srcloc !301
  unreachable

do.end7.i.i.i:                                    ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i.i.i.i)
  %2 = load volatile ptr, ptr @zswap_pools, align 4
  %3 = ptrtoint ptr %__next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %__next.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %2, @zswap_pools
  br i1 %cmp.not.i.i.i.i, label %cond.end.thread.i.i.i.i, label %cond.end.i.i.i.i, !prof !298

cond.end.thread.i.i.i.i:                          ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i.i.i)
  br label %land.rhs.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %do.end7.i.i.i
  %4 = ptrtoint ptr %__next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %__next.i.i.i.i.0.__next.i.i.i.i.0.__next.i.i.i.0.__next.i.i.i.0.__next.i.i.0.__next.i.i.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.60.i.i.i.i = load volatile ptr, ptr %__next.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %__next.i.i.i.i.0.__next.i.i.i.i.0.__next.i.i.i.0.__next.i.i.i.0.__next.i.i.0.__next.i.i.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.60.i.i.i.i, i32 -12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool8.not.i.i.i.i, label %cond.end.i.i.i.i.land.rhs.i.i.i.i_crit_edge, label %cond.end.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge

cond.end.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge: ; preds = %cond.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_current.exit.i.i

cond.end.i.i.i.i.land.rhs.i.i.i.i_crit_edge:      ; preds = %cond.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %cond.end.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %cond.end.thread.i.i.i.i
  %.b64.i.i.i.i = load i1, ptr @zswap_has_pool, align 1
  br i1 %.b64.i.i.i.i, label %land.rhs15.i.i.i.i, label %land.rhs.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge

land.rhs.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_current.exit.i.i

land.rhs15.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %.b6365.i.i.i.i = load i1, ptr @__zswap_pool_current.__already_done, align 1
  br i1 %.b6365.i.i.i.i, label %land.rhs15.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !302

land.rhs15.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge: ; preds = %land.rhs15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_current.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__zswap_pool_current.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 509, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.__zswap_pool_current) #12
  br label %zswap_pool_current.exit.i.i

zswap_pool_current.exit.i.i:                      ; preds = %if.then.i.i.i.i, %land.rhs15.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge, %land.rhs.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge, %cond.end.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge
  %cond69.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %cond.end.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge ], [ null, %land.rhs.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge ], [ null, %if.then.i.i.i.i ], [ null, %land.rhs15.i.i.i.i.zswap_pool_current.exit.i.i_crit_edge ]
  %cmp.i.i = icmp eq ptr %cond69.i.i.i.i, %pool
  br i1 %cmp.i.i, label %do.end.i.i, label %zswap_pool_current.exit.i.i.if.end.i.i_crit_edge, !prof !298

zswap_pool_current.exit.i.i.if.end.i.i_crit_edge: ; preds = %zswap_pool_current.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %zswap_pool_current.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 733, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %zswap_pool_current.exit.i.i.if.end.i.i_crit_edge
  %list.i.i = getelementptr %struct.zswap_pool, ptr %pool, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.__zswap_pool_empty.exit.i_crit_edge

if.end.i.i.__zswap_pool_empty.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__zswap_pool_empty.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr %struct.zswap_pool, ptr %pool, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i.i, align 4
  %7 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__zswap_pool_empty.exit.i

__zswap_pool_empty.exit.i:                        ; preds = %if.end.i.i.i.i, %if.end.i.i.__zswap_pool_empty.exit.i_crit_edge
  %prev.i.i.i = getelementptr %struct.zswap_pool, ptr %pool, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %release_work.i.i = getelementptr %struct.zswap_pool, ptr %pool, i32 0, i32 4
  tail call void @__init_work(ptr noundef %release_work.i.i, i32 noundef 0) #12
  %12 = ptrtoint ptr %release_work.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %release_work.i.i, align 4
  %lockdep_map.i.i = getelementptr %struct.zswap_pool, ptr %pool, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @__zswap_pool_empty.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry24.i.i = getelementptr %struct.zswap_pool, ptr %pool, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %entry24.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry24.i.i, ptr %entry24.i.i, align 4
  %prev.i38.i.i = getelementptr %struct.zswap_pool, ptr %pool, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry24.i.i, ptr %prev.i38.i.i, align 4
  %func.i.i = getelementptr %struct.zswap_pool, ptr %pool, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @__zswap_pool_release, ptr %func.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i39.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %release_work.i.i) #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @zswap_pools_lock) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %__zswap_pool_empty.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zswap_pool_get(ptr noundef %pool) unnamed_addr #1 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.zswap_pool, ptr %pool, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #12
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %2 = phi i32 [ %1, %if.end ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !302

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !302

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #12
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %conv.i = zext i1 %tobool12.i.i.i.i to i32
  br label %return

return:                                           ; preds = %kref_get_unless_zero.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv.i, %kref_get_unless_zero.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zpool_create_pool(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shrink_worker(ptr noundef %w) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -64
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @zpool_shrink(ptr noundef %1, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load i64, ptr @zswap_reject_reclaim_fail, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr @zswap_reject_reclaim_fail, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @zswap_pool_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zpool_destroy_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_writeback_entry(ptr noundef %pool, i32 noundef %handle) #1 align 64 {
entry:
  %page_was_allocated.i = alloca i8, align 1
  %input = alloca %struct.scatterlist, align 4
  %output = alloca %struct.scatterlist, align 4
  %wbc = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %input) #12
  %0 = call ptr @memset(ptr %input, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %output) #12
  %1 = getelementptr inbounds %struct.scatterlist, ptr %output, i32 0, i32 1
  %2 = getelementptr inbounds %struct.scatterlist, ptr %output, i32 0, i32 2
  %3 = call ptr @memset(ptr %output, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc) #12
  %4 = call ptr @memset(ptr %wbc, i32 0, i32 64)
  %call = tail call zeroext i1 @zpool_can_sleep_mapped(ptr noundef %pool) #12
  br i1 %call, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 4096) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %tmp.0 = phi ptr [ null, %entry.if.end4_crit_edge ], [ %call7.i, %if.then.if.end4_crit_edge ]
  %call5 = tail call ptr @zpool_map_handle(ptr noundef %pool, i32 noundef %handle, i32 noundef 1) #12
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %swpentry.sroa.0.0.copyload = load i32, ptr %call5, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %swpentry.sroa.0.0.copyload, 0
  %shr.i = lshr i32 %swpentry.sroa.0.0.copyload, 26
  %arrayidx = getelementptr [30 x ptr], ptr @zswap_trees, i32 0, i32 %shr.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %and.i = and i32 %swpentry.sroa.0.0.copyload, 67108863
  %lock = getelementptr inbounds %struct.zswap_tree, ptr %8, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.015.i.i = load ptr, ptr %8, align 4
  %tobool.not16.i.i = icmp eq ptr %node.015.i.i, null
  br i1 %tobool.not16.i.i, label %if.end4.if.then12_crit_edge, label %if.end4.while.body.i.i_crit_edge

if.end4.while.body.i.i_crit_edge:                 ; preds = %if.end4
  br label %while.body.i.i

if.end4.if.then12_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

while.body.i.i:                                   ; preds = %if.end7.i.i.while.body.i.i_crit_edge, %if.end4.while.body.i.i_crit_edge
  %node.017.i.i = phi ptr [ %node.0.i.i, %if.end7.i.i.while.body.i.i_crit_edge ], [ %node.015.i.i, %if.end4.while.body.i.i_crit_edge ]
  %offset2.i.i = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and.i)
  %cmp.i.i = icmp ugt i32 %11, %and.i
  br i1 %cmp.i.i, label %if.then.i.i165, label %if.else.i.i

if.then.i.i165:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i, i32 0, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and.i)
  %cmp4.i.i = icmp ult i32 %11, %and.i
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end14

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i, i32 0, i32 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i165
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i165 ], [ %rb_right.i.i, %if.then5.i.i ]
  %12 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i166 = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i166, label %if.end7.i.i.if.then12_crit_edge, label %if.end7.i.i.while.body.i.i_crit_edge

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.end7.i.i.if.then12_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then12:                                        ; preds = %if.end7.i.i.if.then12_crit_edge, %if.end4.if.then12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @zpool_unmap_handle(ptr noundef %pool, i32 noundef %handle) #12
  tail call void @kfree(ptr noundef %tmp.0) #12
  br label %cleanup

if.end14:                                         ; preds = %if.else.i.i
  %offset2.i.i.le = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 1
  %refcount.i.i = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %refcount.i.i, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr %refcount.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %15 = ptrtoint ptr %offset2.i.i.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset2.i.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %16)
  %cmp.not = icmp eq i32 %and.i, %16
  br i1 %cmp.not, label %do.end26, label %do.body20, !prof !302

do.body20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 968, 0\0A.popsection", ""() #12, !srcloc !311
  unreachable

do.end26:                                         ; preds = %if.end14
  %add.ptr = getelementptr i8, ptr %call5, i32 4
  %call27 = tail call zeroext i1 @zpool_can_sleep_mapped(ptr noundef %pool) #12
  br i1 %call27, label %do.end26.if.end29_crit_edge, label %if.then28

do.end26.if.end29_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  %length = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  %19 = call ptr @memcpy(ptr %tmp.0, ptr %add.ptr, i32 %18)
  tail call void @zpool_unmap_handle(ptr noundef %pool, i32 noundef %handle) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %do.end26.if.end29_crit_edge
  %src.0 = phi ptr [ %add.ptr, %do.end26.if.end29_crit_edge ], [ %tmp.0, %if.then28 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page_was_allocated.i) #12
  %20 = ptrtoint ptr %page_was_allocated.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %page_was_allocated.i, align 1, !annotation !312
  %call.i = call ptr @__read_swap_cache_async([1 x i32] %.fca.0.insert, i32 noundef 3264, ptr noundef null, i32 noundef 0, ptr noundef nonnull %page_was_allocated.i) #12
  %21 = ptrtoint ptr %page_was_allocated.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %page_was_allocated.i, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i168 = icmp eq i8 %22, 0
  %tobool4.not.i = icmp eq ptr %call.i, null
  %..i = select i1 %tobool4.not.i, i32 2, i32 1
  %retval.0.i = select i1 %tobool.not.i168, i32 %..i, i32 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page_was_allocated.i) #12
  %23 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %if.end29.sw.epilog_crit_edge [
    i32 2, label %if.end29.fail_crit_edge
    i32 1, label %sw.bb32
    i32 0, label %do.body34
  ]

if.end29.fail_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end29
  %24 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i169 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i169)
  %tobool.not.i.i170 = icmp eq i32 %and.i.i169, 0
  br i1 %tobool.not.i.i170, label %if.end.i.i173, label %if.then.i.i172, !prof !302

if.then.i.i172:                                   ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i171 = add i32 %26, -1
  br label %_compound_head.exit.i175

if.end.i.i173:                                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i175

_compound_head.exit.i175:                         ; preds = %if.end.i.i173, %if.then.i.i172
  %retval.0.i.i174 = phi i32 [ %sub.i.i171, %if.then.i.i172 ], [ %27, %if.end.i.i173 ]
  %28 = inttoptr i32 %retval.0.i.i174 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %29 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !298

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i175
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.34) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !314
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i175
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !315
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %31 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !316
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@zswap_writeback_entry, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !300

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %28, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.fail_crit_edge

folio_put_testzero.exit.i.i.fail_crit_edge:       ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %28) #12
  br label %fail

do.body34:                                        ; preds = %if.end29
  %pool38 = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %pool38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pool38, align 4
  %acomp_ctx39 = getelementptr inbounds %struct.zswap_pool, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %acomp_ctx39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %acomp_ctx39, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i176 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i176 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu, align 4
  %arrayidx42 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx42, align 4
  %add = add i32 %42, %36
  %43 = inttoptr i32 %add to ptr
  %mutex = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mutex, align 4
  call void @mutex_lock_nested(ptr noundef %45, i32 noundef 0) #12
  %length43 = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %length43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length43, align 4
  call void @sg_init_one(ptr noundef nonnull %input, ptr noundef %src.0, i32 noundef %47) #12
  call void @sg_init_table(ptr noundef nonnull %output, i32 noundef 1) #12
  %48 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %output, align 4
  %50 = ptrtoint ptr %call.i to i32
  %and2.i.i = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i177 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i177, label %do.body11.i.i, label %do.body5.i.i, !prof !302

do.body5.i.i:                                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !318
  unreachable

do.body11.i.i:                                    ; preds = %do.body34
  %and.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !302

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !319
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i178 = and i32 %49, 3
  %or.i.i = or i32 %and.i.i178, %50
  %51 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i.i, ptr %output, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %1, align 4
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4096, ptr %2, align 4
  %req = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %43, i32 0, i32 1
  %54 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req, align 4
  %56 = ptrtoint ptr %length43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length43, align 4
  %src1.i = getelementptr inbounds %struct.acomp_req, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %input, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.acomp_req, ptr %55, i32 0, i32 2
  %59 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %output, ptr %dst2.i, align 4
  %slen3.i = getelementptr inbounds %struct.acomp_req, ptr %55, i32 0, i32 3
  %60 = ptrtoint ptr %slen3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %slen3.i, align 32
  %dlen4.i = getelementptr inbounds %struct.acomp_req, ptr %55, i32 0, i32 4
  %61 = ptrtoint ptr %dlen4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4096, ptr %dlen4.i, align 4
  %62 = load ptr, ptr %req, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %64, i32 12
  %65 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %__crt_alg.i, align 4
  %slen1.i = getelementptr inbounds %struct.acomp_req, ptr %62, i32 0, i32 3
  %67 = ptrtoint ptr %slen1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %slen1.i, align 32
  call void @crypto_stats_get(ptr noundef %66) #12
  %decompress.i = getelementptr i8, ptr %64, i32 -124
  %69 = ptrtoint ptr %decompress.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %decompress.i, align 4
  %call2.i = call i32 %70(ptr noundef %62) #12
  call void @crypto_stats_decompress(i32 noundef %68, i32 noundef %call2.i, ptr noundef %66) #12
  %71 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call2.i, label %sg_set_page.exit.crypto_wait_req.exit_crit_edge [
    i32 -115, label %sg_set_page.exit.sw.bb.i_crit_edge
    i32 -16, label %sg_set_page.exit.sw.bb.i_crit_edge245
  ]

sg_set_page.exit.sw.bb.i_crit_edge245:            ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sg_set_page.exit.sw.bb.i_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sg_set_page.exit.crypto_wait_req.exit_crit_edge:  ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %sg_set_page.exit.sw.bb.i_crit_edge, %sg_set_page.exit.sw.bb.i_crit_edge245
  %wait = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %43, i32 0, i32 2
  call void @wait_for_completion(ptr noundef %wait) #12
  %72 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %43, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %sg_set_page.exit.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call2.i, %sg_set_page.exit.crypto_wait_req.exit_crit_edge ], [ %74, %sw.bb.i ]
  %75 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %req, align 4
  %dlen49 = getelementptr inbounds %struct.acomp_req, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %dlen49 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dlen49, align 4
  %79 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mutex, align 4
  call void @mutex_unlock(ptr noundef %80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool52.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool52.not, label %do.body69, label %do.body60, !prof !302

do.body60:                                        ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1003, 0\0A.popsection", ""() #12, !srcloc !320
  unreachable

do.body69:                                        ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %78)
  %cmp70.not = icmp eq i32 %78, 4096
  br i1 %cmp70.not, label %do.end86, label %do.body78, !prof !302

do.body78:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1004, 0\0A.popsection", ""() #12, !srcloc !321
  unreachable

do.end86:                                         ; preds = %do.body69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !322
  %81 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  %and.i.i.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !302

if.then.i.i.i:                                    ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.35) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !323
  unreachable

SetPageUptodate.exit:                             ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 2, ptr noundef %call.i) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %SetPageUptodate.exit, %if.end29.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -1, %if.end29.sw.epilog_crit_edge ], [ 0, %SetPageUptodate.exit ]
  %84 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  %and.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !302

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.37) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 466, 0\0A.popsection", ""() #12, !srcloc !324
  unreachable

do.body7.i:                                       ; preds = %sw.epilog
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %84, align 4
  %and.i31.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !302

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %88, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %89, %if.end.i.i ]
  %90 = inttoptr i32 %retval.0.i.i to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp.i.not.i = icmp eq i32 %92, -1
  %93 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %84, align 4
  %and.i32.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !298

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !302

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i = add i32 %94, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %95, %if.end.i36.i ]
  %96 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %96, ptr noundef nonnull @.str.38) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 466, 0\0A.popsection", ""() #12, !srcloc !325
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !302

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i = add i32 %94, -1
  br label %SetPageReclaim.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %call.i to i32
  br label %SetPageReclaim.exit

SetPageReclaim.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %97, %if.end.i43.i ]
  %98 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 18, ptr noundef %98) #12
  %call87 = call i32 @__swap_writepage(ptr noundef %call.i, ptr noundef nonnull %wbc, ptr noundef nonnull @end_swap_bio_write) #12
  %99 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %84, align 4
  %and.i.i179 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i179)
  %tobool.not.i.i180 = icmp eq i32 %and.i.i179, 0
  br i1 %tobool.not.i.i180, label %if.end.i.i183, label %if.then.i.i182, !prof !302

if.then.i.i182:                                   ; preds = %SetPageReclaim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i181 = add i32 %100, -1
  br label %_compound_head.exit.i188

if.end.i.i183:                                    ; preds = %SetPageReclaim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i188

_compound_head.exit.i188:                         ; preds = %if.end.i.i183, %if.then.i.i182
  %retval.0.i.i184 = phi i32 [ %sub.i.i181, %if.then.i.i182 ], [ %101, %if.end.i.i183 ]
  %102 = inttoptr i32 %retval.0.i.i184 to ptr
  %_refcount.i.i.i.i.i185 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 3
  %call.i.i.i.i.i.i.i186 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i185, i32 noundef 4) #12
  %103 = ptrtoint ptr %_refcount.i.i.i.i.i185 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %_refcount.i.i.i.i.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i.i.i.i187 = icmp eq i32 %104, 0
  br i1 %cmp.i.i.i.i187, label %if.then.i.i.i.i189, label %do.end5.i.i.i.i193, !prof !298

if.then.i.i.i.i189:                               ; preds = %_compound_head.exit.i188
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %102, ptr noundef nonnull @.str.34) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !314
  unreachable

do.end5.i.i.i.i193:                               ; preds = %_compound_head.exit.i188
  %call.i.i.i10.i.i.i.i190 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i185, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !315
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i185, i32 1, i32 3, i32 1) #12
  %105 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i185, ptr %_refcount.i.i.i.i.i185, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i185) #12, !srcloc !316
  %asmresult.i.i.i.i.i.i.i.i.i.i191 = extractvalue { i32, i32 } %105, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i191)
  %cmp.i.i.i.i.i.i.i192 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i191, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@zswap_writeback_entry, %if.then.i.i.i.i.i195)) #12
          to label %folio_put_testzero.exit.i.i196 [label %if.then.i.i.i.i.i195], !srcloc !300

if.then.i.i.i.i.i195:                             ; preds = %do.end5.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i194 = zext i1 %cmp.i.i.i.i.i.i.i192 to i32
  call void @__page_ref_mod_and_test(ptr noundef %102, i32 noundef -1, i32 noundef %conv.i.i.i.i.i194) #12
  br label %folio_put_testzero.exit.i.i196

folio_put_testzero.exit.i.i196:                   ; preds = %if.then.i.i.i.i.i195, %do.end5.i.i.i.i193
  br i1 %cmp.i.i.i.i.i.i.i192, label %if.then.i4.i197, label %folio_put_testzero.exit.i.i196.put_page.exit198_crit_edge

folio_put_testzero.exit.i.i196.put_page.exit198_crit_edge: ; preds = %folio_put_testzero.exit.i.i196
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit198

if.then.i4.i197:                                  ; preds = %folio_put_testzero.exit.i.i196
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %102) #12
  br label %put_page.exit198

put_page.exit198:                                 ; preds = %if.then.i4.i197, %folio_put_testzero.exit.i.i196.put_page.exit198_crit_edge
  %106 = load i64, ptr @zswap_written_back_pages, align 8
  %inc = add i64 %106, 1
  store i64 %inc, ptr @zswap_written_back_pages, align 8
  call void @_raw_spin_lock(ptr noundef %lock) #12
  %107 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %refcount.i.i, align 4
  %dec.i = add i32 %108, -1
  store i32 %dec.i, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 0
  br i1 %cmp.i, label %do.body4.i, label %do.end9.i, !prof !298

do.body4.i:                                       ; preds = %put_page.exit198
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #12, !srcloc !326
  unreachable

do.end9.i:                                        ; preds = %put_page.exit198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp10.i = icmp eq i32 %dec.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %do.end9.i.zswap_entry_put.exit_crit_edge

do.end9.i.zswap_entry_put.exit_crit_edge:         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_entry_put.exit

if.then11.i:                                      ; preds = %do.end9.i
  %109 = ptrtoint ptr %node.017.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %node.017.i.i, align 4
  %111 = ptrtoint ptr %node.017.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %111)
  %cmp.i.i199 = icmp eq i32 %110, %111
  br i1 %cmp.i.i199, label %if.then11.i.zswap_rb_erase.exit.i_crit_edge, label %if.then.i.i200

if.then11.i.zswap_rb_erase.exit.i_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_erase.exit.i

if.then.i.i200:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @rb_erase(ptr noundef nonnull %node.017.i.i, ptr noundef %8) #12
  %112 = ptrtoint ptr %node.017.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %node.017.i.i, align 4
  br label %zswap_rb_erase.exit.i

zswap_rb_erase.exit.i:                            ; preds = %if.then.i.i200, %if.then11.i.zswap_rb_erase.exit.i_crit_edge
  call fastcc void @zswap_free_entry(ptr noundef nonnull %node.017.i.i) #12
  br label %zswap_entry_put.exit

zswap_entry_put.exit:                             ; preds = %zswap_rb_erase.exit.i, %do.end9.i.zswap_entry_put.exit_crit_edge
  %113 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %113)
  %node.015.i = load ptr, ptr %8, align 4
  %tobool.not16.i = icmp eq ptr %node.015.i, null
  br i1 %tobool.not16.i, label %zswap_entry_put.exit.zswap_rb_search.exit_crit_edge, label %zswap_entry_put.exit.while.body.i_crit_edge

zswap_entry_put.exit.while.body.i_crit_edge:      ; preds = %zswap_entry_put.exit
  br label %while.body.i

zswap_entry_put.exit.zswap_rb_search.exit_crit_edge: ; preds = %zswap_entry_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_search.exit

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %zswap_entry_put.exit.while.body.i_crit_edge
  %node.017.i = phi ptr [ %node.0.i, %if.end7.i.while.body.i_crit_edge ], [ %node.015.i, %zswap_entry_put.exit.while.body.i_crit_edge ]
  %offset2.i = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i, i32 0, i32 1
  %114 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %offset2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %and.i)
  %cmp.i201 = icmp ugt i32 %115, %and.i
  br i1 %cmp.i201, label %if.then.i202, label %if.else.i

if.then.i202:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %and.i)
  %cmp4.i = icmp ult i32 %115, %and.i
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i.zswap_rb_search.exit_crit_edge

if.else.i.zswap_rb_search.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_search.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i202
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i202 ], [ %rb_right.i, %if.then5.i ]
  %116 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i203 = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i203, label %if.end7.i.zswap_rb_search.exit_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end7.i.zswap_rb_search.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_search.exit

zswap_rb_search.exit:                             ; preds = %if.end7.i.zswap_rb_search.exit_crit_edge, %if.else.i.zswap_rb_search.exit_crit_edge, %zswap_entry_put.exit.zswap_rb_search.exit_crit_edge
  %node.0.lcssa.i = phi ptr [ null, %zswap_entry_put.exit.zswap_rb_search.exit_crit_edge ], [ %node.017.i, %if.else.i.zswap_rb_search.exit_crit_edge ], [ null, %if.end7.i.zswap_rb_search.exit_crit_edge ]
  %cmp91 = icmp eq ptr %node.017.i.i, %node.0.lcssa.i
  br i1 %cmp91, label %if.then92, label %zswap_rb_search.exit.end_crit_edge

zswap_rb_search.exit.end_crit_edge:               ; preds = %zswap_rb_search.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.then92:                                        ; preds = %zswap_rb_search.exit
  %117 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %refcount.i.i, align 4
  %dec.i205 = add i32 %118, -1
  store i32 %dec.i205, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i205)
  %cmp.i206 = icmp slt i32 %dec.i205, 0
  br i1 %cmp.i206, label %do.body4.i207, label %do.end9.i209, !prof !298

do.body4.i207:                                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #12, !srcloc !326
  unreachable

do.end9.i209:                                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i205)
  %cmp10.i208 = icmp eq i32 %dec.i205, 0
  br i1 %cmp10.i208, label %if.then11.i211, label %do.end9.i209.end_crit_edge

do.end9.i209.end_crit_edge:                       ; preds = %do.end9.i209
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.then11.i211:                                   ; preds = %do.end9.i209
  %119 = ptrtoint ptr %node.017.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %node.017.i.i, align 4
  %121 = ptrtoint ptr %node.017.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %121)
  %cmp.i.i210 = icmp eq i32 %120, %121
  br i1 %cmp.i.i210, label %if.then11.i211.zswap_rb_erase.exit.i213_crit_edge, label %if.then.i.i212

if.then11.i211.zswap_rb_erase.exit.i213_crit_edge: ; preds = %if.then11.i211
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_erase.exit.i213

if.then.i.i212:                                   ; preds = %if.then11.i211
  call void @__sanitizer_cov_trace_pc() #14
  call void @rb_erase(ptr noundef %node.017.i.i, ptr noundef %8) #12
  %122 = ptrtoint ptr %node.017.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %node.017.i.i, align 4
  br label %zswap_rb_erase.exit.i213

zswap_rb_erase.exit.i213:                         ; preds = %if.then.i.i212, %if.then11.i211.zswap_rb_erase.exit.i213_crit_edge
  call fastcc void @zswap_free_entry(ptr noundef %node.017.i.i) #12
  br label %end

fail:                                             ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.fail_crit_edge, %if.end29.fail_crit_edge
  %ret.1 = phi i32 [ -12, %if.end29.fail_crit_edge ], [ -17, %folio_put_testzero.exit.i.i.fail_crit_edge ], [ -17, %if.then.i4.i ]
  call void @_raw_spin_lock(ptr noundef %lock) #12
  %123 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %refcount.i.i, align 4
  %dec.i216 = add i32 %124, -1
  store i32 %dec.i216, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i216)
  %cmp.i217 = icmp slt i32 %dec.i216, 0
  br i1 %cmp.i217, label %do.body4.i218, label %do.end9.i220, !prof !298

do.body4.i218:                                    ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #12, !srcloc !326
  unreachable

do.end9.i220:                                     ; preds = %fail
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i216)
  %cmp10.i219 = icmp eq i32 %dec.i216, 0
  br i1 %cmp10.i219, label %if.then11.i222, label %do.end9.i220.end_crit_edge

do.end9.i220.end_crit_edge:                       ; preds = %do.end9.i220
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.then11.i222:                                   ; preds = %do.end9.i220
  %125 = ptrtoint ptr %node.017.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %node.017.i.i, align 4
  %127 = ptrtoint ptr %node.017.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %127)
  %cmp.i.i221 = icmp eq i32 %126, %127
  br i1 %cmp.i.i221, label %if.then11.i222.zswap_rb_erase.exit.i224_crit_edge, label %if.then.i.i223

if.then11.i222.zswap_rb_erase.exit.i224_crit_edge: ; preds = %if.then11.i222
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_erase.exit.i224

if.then.i.i223:                                   ; preds = %if.then11.i222
  call void @__sanitizer_cov_trace_pc() #14
  call void @rb_erase(ptr noundef nonnull %node.017.i.i, ptr noundef %8) #12
  %128 = ptrtoint ptr %node.017.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %node.017.i.i, align 4
  br label %zswap_rb_erase.exit.i224

zswap_rb_erase.exit.i224:                         ; preds = %if.then.i.i223, %if.then11.i222.zswap_rb_erase.exit.i224_crit_edge
  call fastcc void @zswap_free_entry(ptr noundef nonnull %node.017.i.i) #12
  br label %end

end:                                              ; preds = %zswap_rb_erase.exit.i224, %do.end9.i220.end_crit_edge, %zswap_rb_erase.exit.i213, %do.end9.i209.end_crit_edge, %zswap_rb_search.exit.end_crit_edge
  %ret.2 = phi i32 [ %ret.0, %zswap_rb_erase.exit.i213 ], [ %ret.0, %do.end9.i209.end_crit_edge ], [ %ret.0, %zswap_rb_search.exit.end_crit_edge ], [ %ret.1, %do.end9.i220.end_crit_edge ], [ %ret.1, %zswap_rb_erase.exit.i224 ]
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  %call97 = call zeroext i1 @zpool_can_sleep_mapped(ptr noundef %pool) #12
  br i1 %call97, label %if.then98, label %if.else

if.then98:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #14
  call void @zpool_unmap_handle(ptr noundef %pool, i32 noundef %handle) #12
  br label %cleanup

if.else:                                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %tmp.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then98, %if.then12, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then12 ], [ -12, %if.then.cleanup_crit_edge ], [ %ret.2, %if.else ], [ %ret.2, %if.then98 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %output) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %input) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zpool_can_sleep_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zpool_map_handle(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zpool_unmap_handle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__swap_writepage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_swap_bio_write(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__read_swap_cache_async([1 x i32], i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_decompress(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zswap_free_entry(ptr noundef %entry1) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.zswap_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @zswap_same_filled_pages, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @zswap_same_filled_pages, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @zswap_same_filled_pages, ptr nonnull @zswap_same_filled_pages, i32 1, ptr nonnull elementtype(i32) @zswap_same_filled_pages) #12, !srcloc !327
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pool = getelementptr inbounds %struct.zswap_entry, ptr %entry1, i32 0, i32 4
  %3 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pool, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.zswap_entry, ptr %entry1, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void @zpool_free(ptr noundef %6, i32 noundef %9) #12
  %10 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pool, align 4
  tail call fastcc void @zswap_pool_put(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr @zswap_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef %entry1) #12
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @zswap_stored_pages, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @zswap_stored_pages, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @zswap_stored_pages, ptr nonnull @zswap_stored_pages, i32 1, ptr nonnull elementtype(i32) @zswap_stored_pages) #12, !srcloc !327
  tail call fastcc void @zswap_update_total_size()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zpool_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zswap_update_total_size() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !328
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @zswap_update_total_size.__warned, align 1
  br i1 %.b21, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @zswap_update_total_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 251, ptr noundef nonnull @.str.19) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn31 = load volatile ptr, ptr @zswap_pools, align 4
  %cmp.not32 = icmp eq ptr %.pn31, @zswap_pools
  br i1 %cmp.not32, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn31, %do.end.for.body_crit_edge ]
  %total.033 = phi i64 [ %add, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %pool.0 = getelementptr i8, ptr %.pn34, i32 -12
  %4 = ptrtoint ptr %pool.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool.0, align 4
  %call9 = tail call i64 @zpool_get_total_size(ptr noundef %5) #12
  %add = add i64 %call9, %total.033
  %6 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load volatile ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, @zswap_pools
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %total.0.lcssa = phi i64 [ 0, %do.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i22, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %for.end
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !329
  %7 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i29 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  store i64 %total.0.lcssa, ptr @zswap_pool_total_size, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @zpool_get_total_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zpool_shrink(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__zswap_pool_release(ptr noundef %work) #1 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @synchronize_rcu() #12
  %kref = getelementptr i8, ptr %work, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #12
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !302

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !302

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #12
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %11 = phi i32 [ %8, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.end_crit_edge, label %do.end, !prof !302

kref_get_unless_zero.exit.if.end_crit_edge:       ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 719, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %kref_get_unless_zero.exit.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  call fastcc void @zswap_pool_destroy(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zswap_pool_destroy(ptr noundef %pool) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zswap_pool_destroy.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zswap_pool_destroy, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tfm_name = getelementptr inbounds %struct.zswap_pool, ptr %pool, i32 0, i32 7
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  %call3 = tail call ptr @zpool_get_type(ptr noundef %1) #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zswap_pool_destroy.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.44, ptr noundef %tfm_name, ptr noundef %call3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %node = getelementptr inbounds %struct.zswap_pool, ptr %pool, i32 0, i32 6
  %call.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 65, ptr noundef %node, i1 noundef zeroext true) #12
  %acomp_ctx = getelementptr inbounds %struct.zswap_pool, ptr %pool, i32 0, i32 1
  %2 = ptrtoint ptr %acomp_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acomp_ctx, align 4
  tail call void @free_percpu(ptr noundef %3) #12
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  tail call void @zpool_destroy_pool(ptr noundef %5) #12
  tail call void @kfree(ptr noundef %pool) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_zpool_param_set(ptr noundef %val, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @zswap_compressor, align 4
  %call = tail call fastcc i32 @__zswap_param_set(ptr noundef %val, ptr noundef %kp, ptr noundef null, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_dstmem_prepare(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8192) #19
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 92) #19
  %tobool2.not = icmp eq ptr %call.i.i26, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call.i.i) #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mutex_init(ptr noundef nonnull %call.i.i26, ptr noundef nonnull @.str.66, ptr noundef nonnull @zswap_dstmem_prepare.__key) #12
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @zswap_dstmem to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %4, align 4
  %6 = load i32, ptr %arrayidx, align 4
  %add17 = add i32 %6, ptrtoint (ptr @zswap_mutex to i32)
  %7 = inttoptr i32 %add17 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i26, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_dstmem_dead(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @zswap_mutex to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %4) #12
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add10 = add i32 %6, ptrtoint (ptr @zswap_mutex to i32)
  %7 = inttoptr i32 %add10 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %7, align 4
  %9 = load i32, ptr %arrayidx, align 4
  %add19 = add i32 %9, ptrtoint (ptr @zswap_dstmem to i32)
  %10 = inttoptr i32 %add19 to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %12) #12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add28 = add i32 %14, ptrtoint (ptr @zswap_dstmem to i32)
  %15 = inttoptr i32 %add28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_cpu_comp_prepare(i32 noundef %cpu, ptr noundef %node) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %acomp_ctx2 = getelementptr i8, ptr %node, i32 -104
  %0 = ptrtoint ptr %acomp_ctx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acomp_ctx2, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %tfm_name = getelementptr i8, ptr %node, i32 8
  %call = tail call ptr @crypto_alloc_acomp_node(ptr noundef %tfm_name, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %tfm_name, i32 noundef %6) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %5, align 4
  %call16 = tail call ptr @acomp_request_alloc(ptr noundef %call) #12
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %do.end20, label %if.end26

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %tfm_name) #15
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_acomp, ptr %9, i32 0, i32 5
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %base.i.i) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %req27 = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %req27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %req27, align 4
  %wait = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %5, i32 0, i32 2, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_completion.__key) #12
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call16, i32 0, i32 1
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call16, i32 0, i32 2
  %13 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %wait, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %call16, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1024, ptr %flags.i, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add37 = add i32 %16, ptrtoint (ptr @zswap_mutex to i32)
  %17 = inttoptr i32 %add37 to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %mutex = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %mutex to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %mutex, align 4
  %21 = load i32, ptr %arrayidx, align 4
  %add46 = add i32 %21, ptrtoint (ptr @zswap_dstmem to i32)
  %22 = inttoptr i32 %add46 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dstmem = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %dstmem to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dstmem, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end20, %do.end7
  %retval.0 = phi i32 [ %6, %do.end7 ], [ 0, %if.end26 ], [ -12, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_cpu_comp_dead(i32 noundef %cpu, ptr nocapture noundef readonly %node) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %acomp_ctx2 = getelementptr i8, ptr %node, i32 -104
  %0 = ptrtoint ptr %acomp_ctx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acomp_ctx2, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not.i = icmp eq i32 %add, 0
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  %req = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %tobool.not.i16 = icmp eq ptr %7, null
  %cmp.i17 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i18 = or i1 %tobool.not.i16, %cmp.i17
  br i1 %spec.select.i18, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @acomp_request_free(ptr noundef nonnull %7) #12
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %tobool.not.i19 = icmp eq ptr %9, null
  %cmp.i20 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i21 = or i1 %tobool.not.i19, %cmp.i20
  br i1 %spec.select.i21, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i = getelementptr inbounds %struct.crypto_acomp, ptr %9, i32 0, i32 5
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %9, ptr noundef %base.i.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__zswap_pool_create_fallback() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @zswap_compressor, align 4
  %call.i = tail call i32 @crypto_has_alg(ptr noundef %0, i32 noundef 10, i32 noundef 14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @zswap_compressor, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.45) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end12_crit_edge, label %if.end

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.end:                                           ; preds = %land.lhs.true
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %1, ptr noundef nonnull @.str.45) #15
  tail call void @param_free_charp(ptr noundef nonnull @zswap_compressor) #12
  store ptr @.str.45, ptr @zswap_compressor, align 4
  %call.i49 = tail call i32 @crypto_has_alg(ptr noundef nonnull @.str.45, i32 noundef 10, i32 noundef 14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool6.not = icmp eq i32 %call.i49, 0
  br i1 %tobool6.not, label %if.end.do.end12_crit_edge, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

do.end12:                                         ; preds = %if.end.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge
  %2 = load ptr, ptr @zswap_compressor, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %2) #15
  tail call void @param_free_charp(ptr noundef nonnull @zswap_compressor) #12
  store ptr @.str.21, ptr @zswap_compressor, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %has_comp.0.in51 = phi i1 [ true, %do.end12 ], [ false, %if.end.if.end15_crit_edge ], [ false, %entry.if.end15_crit_edge ]
  %3 = load ptr, ptr @zswap_zpool_type, align 4
  %call16 = tail call zeroext i1 @zpool_has_pool(ptr noundef %3) #12
  br i1 %call16, label %if.end15.if.end38_crit_edge, label %land.lhs.true19

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true19:                                  ; preds = %if.end15
  %4 = load ptr, ptr @zswap_zpool_type, align 4
  %call20 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(5) @.str.46) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.if.end38.thread_crit_edge, label %if.end30

land.lhs.true19.if.end38.thread_crit_edge:        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread

if.end30:                                         ; preds = %land.lhs.true19
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %4, ptr noundef nonnull @.str.46) #15
  tail call void @param_free_charp(ptr noundef nonnull @zswap_zpool_type) #12
  store ptr @.str.46, ptr @zswap_zpool_type, align 4
  %call28 = tail call zeroext i1 @zpool_has_pool(ptr noundef nonnull @.str.46) #12
  br i1 %call28, label %if.end30.if.end38_crit_edge, label %if.end30.if.end38.thread_crit_edge

if.end30.if.end38.thread_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end38.thread:                                  ; preds = %if.end30.if.end38.thread_crit_edge, %land.lhs.true19.if.end38.thread_crit_edge
  %5 = load ptr, ptr @zswap_zpool_type, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %5) #15
  tail call void @param_free_charp(ptr noundef nonnull @zswap_zpool_type) #12
  store ptr @.str.21, ptr @zswap_zpool_type, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end30.if.end38_crit_edge, %if.end15.if.end38_crit_edge
  br i1 %has_comp.0.in51, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load ptr, ptr @zswap_zpool_type, align 4
  %7 = load ptr, ptr @zswap_compressor, align 4
  %call43 = tail call fastcc ptr @zswap_pool_create(ptr noundef %6, ptr noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.end38.thread
  %retval.0 = phi ptr [ %call43, %if.end42 ], [ null, %if.end38.cleanup_crit_edge ], [ null, %if.end38.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frontswap_register_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zswap_debugfs_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @debugfs_initialized() #12
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.14, ptr noundef null) #12
  store ptr %call1, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.87, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef nonnull @zswap_pool_limit_hit) #12
  %0 = load ptr, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.88, i16 noundef zeroext 292, ptr noundef %0, ptr noundef nonnull @zswap_reject_reclaim_fail) #12
  %1 = load ptr, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.89, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @zswap_reject_alloc_fail) #12
  %2 = load ptr, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.90, i16 noundef zeroext 292, ptr noundef %2, ptr noundef nonnull @zswap_reject_kmemcache_fail) #12
  %3 = load ptr, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.91, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @zswap_reject_compress_poor) #12
  %4 = load ptr, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.92, i16 noundef zeroext 292, ptr noundef %4, ptr noundef nonnull @zswap_written_back_pages) #12
  %5 = load ptr, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.93, i16 noundef zeroext 292, ptr noundef %5, ptr noundef nonnull @zswap_duplicate_entry) #12
  %6 = load ptr, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.94, i16 noundef zeroext 292, ptr noundef %6, ptr noundef nonnull @zswap_pool_total_size) #12
  %7 = load ptr, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.95, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull @zswap_stored_pages) #12
  %8 = load ptr, ptr @zswap_debugfs_root, align 4
  tail call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.96, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull @zswap_same_filled_pages) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_acomp_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @acomp_request_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @acomp_request_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zswap_frontswap_init(i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %type) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i.i, align 8
  %lock = getelementptr inbounds %struct.zswap_tree, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.86, ptr noundef nonnull @zswap_frontswap_init.__key, i16 noundef signext 3) #12
  %arrayidx = getelementptr [30 x ptr], ptr @zswap_trees, i32 0, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_frontswap_store(i32 noundef %type, i32 noundef %offset, ptr noundef %page) #1 align 64 {
entry:
  %__next.i.i = alloca ptr, align 4
  %input = alloca %struct.scatterlist, align 4
  %output = alloca %struct.scatterlist, align 4
  %handle = alloca i32, align 4
  %zhdr.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [30 x ptr], ptr @zswap_trees, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %input) #12
  %2 = getelementptr inbounds %struct.scatterlist, ptr %input, i32 0, i32 1
  %3 = getelementptr inbounds %struct.scatterlist, ptr %input, i32 0, i32 2
  %4 = call ptr @memset(ptr %input, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %output) #12
  %5 = call ptr @memset(ptr %output, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #12
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %handle, align 4, !annotation !312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zhdr.sroa.0)
  %shl.i = shl i32 %type, 26
  %and.i = and i32 %offset, 67108863
  %or.i = or i32 %and.i, %shl.i
  %7 = ptrtoint ptr %zhdr.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %zhdr.sroa.0, align 4
  %8 = load i8, ptr @zswap_enabled, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  %tobool4.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %9 = load volatile i32, ptr @_totalram_pages, align 4
  %10 = load i32, ptr @zswap_max_pool_percent, align 4
  %mul.i = mul i32 %10, %9
  %div.i = udiv i32 %mul.i, 100
  %conv.i = zext i32 %div.i to i64
  %11 = load i64, ptr @zswap_pool_total_size, align 8
  %sub.i = add i64 %11, 4095
  %div13.i = lshr i64 %sub.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %div13.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %div13.i, %conv.i
  br i1 %cmp.i, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end6
  %12 = load i64, ptr @zswap_pool_limit_hit, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr @zswap_pool_limit_hit, align 8
  store i1 true, ptr @zswap_pool_reached_full, align 1
  %13 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !328
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i173 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i173, label %if.then8.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then8.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then8
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then8.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.for.cond.i.preheader_crit_edge

rcu_read_lock.exit.i.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b7276.i = load i1, ptr @zswap_pool_last_get.__warned, align 1
  br i1 %.b7276.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @zswap_pool_last_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 542, ptr noundef nonnull @.str.19) #12
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %rcu_read_lock.exit.i.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %last.0.i = phi ptr [ %pool.0.i, %for.cond.i.for.cond.i_crit_edge ], [ null, %for.cond.i.preheader ]
  %.pn.in.i = phi ptr [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ], [ @zswap_pools, %for.cond.i.preheader ]
  %17 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @zswap_pools
  %pool.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  br i1 %cmp.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %tobool17.not.i = icmp eq ptr %last.0.i, null
  br i1 %tobool17.not.i, label %land.rhs.i, label %for.end.i.if.end54.i_crit_edge

for.end.i.if.end54.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

land.rhs.i:                                       ; preds = %for.end.i
  %.b74.i = load i1, ptr @zswap_has_pool, align 1
  br i1 %.b74.i, label %land.rhs21.i, label %land.rhs.i.if.end54.i_crit_edge

land.rhs.i.if.end54.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

land.rhs21.i:                                     ; preds = %land.rhs.i
  %.b7375.i = load i1, ptr @zswap_pool_last_get.__already_done, align 1
  br i1 %.b7375.i, label %land.rhs21.i.if.end54.i_crit_edge, label %if.then28.i, !prof !302

land.rhs21.i.if.end54.i_crit_edge:                ; preds = %land.rhs21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

if.then28.i:                                      ; preds = %land.rhs21.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @zswap_pool_last_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 545, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.zswap_pool_last_get) #12
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then28.i, %land.rhs21.i.if.end54.i_crit_edge, %land.rhs.i.if.end54.i_crit_edge, %for.end.i.if.end54.i_crit_edge
  %call62.i = tail call fastcc i32 @zswap_pool_get(ptr noundef %last.0.i) #12
  %call.i78.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i78.i, label %if.end54.i.zswap_pool_last_get.exit_crit_edge, label %land.lhs.true.i81.i

if.end54.i.zswap_pool_last_get.exit_crit_edge:    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_last_get.exit

land.lhs.true.i81.i:                              ; preds = %if.end54.i
  %call1.i79.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79.i)
  %tobool.not.i80.i = icmp eq i32 %call1.i79.i, 0
  br i1 %tobool.not.i80.i, label %land.lhs.true.i81.i.zswap_pool_last_get.exit_crit_edge, label %land.lhs.true2.i83.i

land.lhs.true.i81.i.zswap_pool_last_get.exit_crit_edge: ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_last_get.exit

land.lhs.true2.i83.i:                             ; preds = %land.lhs.true.i81.i
  %.b4.i82.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82.i, label %land.lhs.true2.i83.i.zswap_pool_last_get.exit_crit_edge, label %if.then.i84.i

land.lhs.true2.i83.i.zswap_pool_last_get.exit_crit_edge: ; preds = %land.lhs.true2.i83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_last_get.exit

if.then.i84.i:                                    ; preds = %land.lhs.true2.i83.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #12
  br label %zswap_pool_last_get.exit

zswap_pool_last_get.exit:                         ; preds = %if.then.i84.i, %land.lhs.true2.i83.i.zswap_pool_last_get.exit_crit_edge, %land.lhs.true.i81.i.zswap_pool_last_get.exit_crit_edge, %if.end54.i.zswap_pool_last_get.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !329
  %18 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i85.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i85.i to ptr
  %preempt_count.i.i.i.i86.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i86.i, align 4
  %sub.i.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i86.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool10.not = select i1 %tobool63.not.i, i1 true, i1 %tobool17.not.i
  br i1 %tobool10.not, label %zswap_pool_last_get.exit.cleanup_crit_edge, label %if.then11

zswap_pool_last_get.exit.cleanup_crit_edge:       ; preds = %zswap_pool_last_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %zswap_pool_last_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %22 = load ptr, ptr @shrink_wq, align 4
  %shrink_work = getelementptr inbounds %struct.zswap_pool, ptr %last.0.i, i32 0, i32 5
  %call.i174 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %shrink_work) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %.b171 = load i1, ptr @zswap_pool_reached_full, align 1
  br i1 %.b171, label %if.then16, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then16:                                        ; preds = %if.end14
  %call.i.i.i.i175 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %23 = load volatile i32, ptr @_totalram_pages, align 4
  %24 = load i32, ptr @zswap_accept_thr_percent, align 4
  %mul.i176 = mul i32 %24, %23
  %div.i177 = udiv i32 %mul.i176, 100
  %25 = load i32, ptr @zswap_max_pool_percent, align 4
  %mul1.i = mul i32 %div.i177, %25
  %div2.i = udiv i32 %mul1.i, 100
  %conv.i178 = zext i32 %div2.i to i64
  %26 = load i64, ptr @zswap_pool_total_size, align 8
  %sub.i179 = add i64 %26, 4095
  %div35.i = lshr i64 %sub.i179, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %div35.i, i64 %conv.i178)
  %cmp.i180 = icmp ult i64 %div35.i, %conv.i178
  br i1 %cmp.i180, label %if.else, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  store i1 false, ptr @zswap_pool_reached_full, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end14.if.end20_crit_edge
  %27 = load ptr, ptr @zswap_entry_cache, align 4
  %call.i181 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %27, i32 noundef 3264) #12
  %tobool.not.i182 = icmp eq ptr %call.i181, null
  br i1 %tobool.not.i182, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %28 = load i64, ptr @zswap_reject_kmemcache_fail, align 8
  %inc24 = add i64 %28, 1
  store i64 %inc24, ptr @zswap_reject_kmemcache_fail, align 8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %refcount.i = getelementptr inbounds %struct.zswap_entry, ptr %call.i181, i32 0, i32 2
  %29 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %refcount.i, align 8
  %30 = ptrtoint ptr %call.i181 to i32
  %31 = ptrtoint ptr %call.i181 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call.i181, align 8
  %32 = load i8, ptr @zswap_same_filled_pages_enabled, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool26.not = icmp eq i8 %32, 0
  br i1 %tobool26.not, label %if.end25.if.end43_crit_edge, label %if.then27

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then27:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %33 = load i32, ptr @pgprot_kernel, align 4
  %or.i183 = or i32 %33, 512
  %34 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %37, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !330
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i1.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 213
  %42 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %43, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !331
  %call.i.i184 = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i183) #12
  %44 = ptrtoint ptr %call.i.i184 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call.i.i184, align 4
  br label %for.body.i

for.cond.i185:                                    ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %pos.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %do.end, label %for.cond.i185.for.body.i_crit_edge

for.cond.i185.for.body.i_crit_edge:               ; preds = %for.cond.i185
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i185.for.body.i_crit_edge, %if.then27
  %pos.09.i = phi i32 [ 1, %if.then27 ], [ %inc.i, %for.cond.i185.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %call.i.i184, i32 %pos.09.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp2.not.i = icmp eq i32 %47, %45
  br i1 %cmp2.not.i, label %for.cond.i185, label %do.end40

do.end:                                           ; preds = %for.cond.i185
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i184) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
  %48 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i1.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 213
  %52 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %53, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !333
  %54 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %offset35 = getelementptr inbounds %struct.zswap_entry, ptr %call.i181, i32 0, i32 1
  %58 = ptrtoint ptr %offset35 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %offset, ptr %offset35, align 4
  %length = getelementptr inbounds %struct.zswap_entry, ptr %call.i181, i32 0, i32 3
  %59 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %length, align 4
  %60 = getelementptr inbounds %struct.zswap_entry, ptr %call.i181, i32 0, i32 5
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %45, ptr %60, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @zswap_same_filled_pages, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @zswap_same_filled_pages, i32 1, i32 3, i32 1) #12
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @zswap_same_filled_pages, ptr nonnull @zswap_same_filled_pages, i32 1, ptr nonnull elementtype(i32) @zswap_same_filled_pages) #12, !srcloc !334
  br label %insert_entry

do.end40:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i184) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
  %63 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i1.i187 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i1.i187 to ptr
  %task.i.i.i188 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i.i.i188, align 8
  %pagefault_disabled.i.i.i189 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 213
  %67 = ptrtoint ptr %pagefault_disabled.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pagefault_disabled.i.i.i189, align 8
  %dec.i.i.i190 = add i32 %68, -1
  store i32 %dec.i.i.i190, ptr %pagefault_disabled.i.i.i189, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !333
  %69 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i191 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i191 to ptr
  %preempt_count.i.i.i192 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i192, align 4
  %sub.i.i193 = add i32 %72, -1
  store volatile i32 %sub.i.i193, ptr %preempt_count.i.i.i192, align 4
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end25.if.end43_crit_edge
  %73 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i.i194 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i.i194 to ptr
  %preempt_count.i.i.i.i.i195 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i.i195, align 4
  %add.i.i.i.i196 = add i32 %76, 1
  store volatile i32 %add.i.i.i.i196, ptr %preempt_count.i.i.i.i.i195, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !328
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i197 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i197, label %if.end43.rcu_read_lock.exit.i204_crit_edge, label %land.lhs.true.i.i200

if.end43.rcu_read_lock.exit.i204_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i204

land.lhs.true.i.i200:                             ; preds = %if.end43
  %call1.i.i198 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i198)
  %tobool.not.i.i199 = icmp eq i32 %call1.i.i198, 0
  br i1 %tobool.not.i.i199, label %land.lhs.true.i.i200.rcu_read_lock.exit.i204_crit_edge, label %land.lhs.true2.i.i202

land.lhs.true.i.i200.rcu_read_lock.exit.i204_crit_edge: ; preds = %land.lhs.true.i.i200
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i204

land.lhs.true2.i.i202:                            ; preds = %land.lhs.true.i.i200
  %.b4.i.i201 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i201, label %land.lhs.true2.i.i202.rcu_read_lock.exit.i204_crit_edge, label %if.then.i.i203

land.lhs.true2.i.i202.rcu_read_lock.exit.i204_crit_edge: ; preds = %land.lhs.true2.i.i202
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i204

if.then.i.i203:                                   ; preds = %land.lhs.true2.i.i202
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #12
  br label %rcu_read_lock.exit.i204

rcu_read_lock.exit.i204:                          ; preds = %if.then.i.i203, %land.lhs.true2.i.i202.rcu_read_lock.exit.i204_crit_edge, %land.lhs.true.i.i200.rcu_read_lock.exit.i204_crit_edge, %if.end43.rcu_read_lock.exit.i204_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i.i)
  %77 = load volatile ptr, ptr @zswap_pools, align 4
  %78 = ptrtoint ptr %__next.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %__next.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %77, @zswap_pools
  br i1 %cmp.not.i.i, label %cond.end.thread.i.i, label %cond.end.i.i, !prof !298

cond.end.thread.i.i:                              ; preds = %rcu_read_lock.exit.i204
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i)
  br label %land.rhs.i.i

cond.end.i.i:                                     ; preds = %rcu_read_lock.exit.i204
  %79 = ptrtoint ptr %__next.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %__next.i.i.0.__next.i.i.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.60.i.i = load volatile ptr, ptr %__next.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %__next.i.i.0.__next.i.i.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.60.i.i, i32 -12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i)
  %tobool8.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool8.not.i.i, label %cond.end.i.i.land.rhs.i.i_crit_edge, label %cond.end.i.i.__zswap_pool_current.exit.i_crit_edge

cond.end.i.i.__zswap_pool_current.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__zswap_pool_current.exit.i

cond.end.i.i.land.rhs.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %cond.end.i.i.land.rhs.i.i_crit_edge, %cond.end.thread.i.i
  %.b64.i.i = load i1, ptr @zswap_has_pool, align 1
  br i1 %.b64.i.i, label %land.rhs15.i.i, label %land.rhs.i.i.__zswap_pool_current.exit.i_crit_edge

land.rhs.i.i.__zswap_pool_current.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__zswap_pool_current.exit.i

land.rhs15.i.i:                                   ; preds = %land.rhs.i.i
  %.b6365.i.i = load i1, ptr @__zswap_pool_current.__already_done, align 1
  br i1 %.b6365.i.i, label %land.rhs15.i.i.__zswap_pool_current.exit.i_crit_edge, label %if.then.i3.i, !prof !302

land.rhs15.i.i.__zswap_pool_current.exit.i_crit_edge: ; preds = %land.rhs15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__zswap_pool_current.exit.i

if.then.i3.i:                                     ; preds = %land.rhs15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__zswap_pool_current.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 509, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.__zswap_pool_current) #12
  br label %__zswap_pool_current.exit.i

__zswap_pool_current.exit.i:                      ; preds = %if.then.i3.i, %land.rhs15.i.i.__zswap_pool_current.exit.i_crit_edge, %land.rhs.i.i.__zswap_pool_current.exit.i_crit_edge, %cond.end.i.i.__zswap_pool_current.exit.i_crit_edge
  %cond69.i.i = phi ptr [ %add.ptr.i.i, %cond.end.i.i.__zswap_pool_current.exit.i_crit_edge ], [ null, %land.rhs.i.i.__zswap_pool_current.exit.i_crit_edge ], [ null, %if.then.i3.i ], [ null, %land.rhs15.i.i.__zswap_pool_current.exit.i_crit_edge ]
  %call1.i205 = tail call fastcc i32 @zswap_pool_get(ptr noundef %cond69.i.i) #12
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i, label %__zswap_pool_current.exit.i.zswap_pool_current_get.exit_crit_edge, label %land.lhs.true.i7.i

__zswap_pool_current.exit.i.zswap_pool_current_get.exit_crit_edge: ; preds = %__zswap_pool_current.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_current_get.exit

land.lhs.true.i7.i:                               ; preds = %__zswap_pool_current.exit.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.zswap_pool_current_get.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.zswap_pool_current_get.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_current_get.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.zswap_pool_current_get.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.zswap_pool_current_get.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_pool_current_get.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #12
  br label %zswap_pool_current_get.exit

zswap_pool_current_get.exit:                      ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.zswap_pool_current_get.exit_crit_edge, %land.lhs.true.i7.i.zswap_pool_current_get.exit_crit_edge, %__zswap_pool_current.exit.i.zswap_pool_current_get.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i205)
  %tobool.not.i206 = icmp eq i32 %call1.i205, 0
  %spec.select.i207 = select i1 %tobool.not.i206, ptr null, ptr %cond69.i.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !329
  %80 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i11.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i208 = add i32 %83, -1
  store volatile i32 %sub.i.i.i.i208, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %pool45 = getelementptr inbounds %struct.zswap_entry, ptr %call.i181, i32 0, i32 4
  %84 = ptrtoint ptr %pool45 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %spec.select.i207, ptr %pool45, align 8
  %tobool47.not = icmp eq ptr %spec.select.i207, null
  br i1 %tobool47.not, label %zswap_pool_current_get.exit.freepage_crit_edge, label %do.body50

zswap_pool_current_get.exit.freepage_crit_edge:   ; preds = %zswap_pool_current_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %freepage

do.body50:                                        ; preds = %zswap_pool_current_get.exit
  %acomp_ctx54 = getelementptr inbounds %struct.zswap_pool, ptr %spec.select.i207, i32 0, i32 1
  %85 = ptrtoint ptr %acomp_ctx54 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %acomp_ctx54, align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i209 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i209 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cpu, align 4
  %arrayidx57 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx57, align 4
  %add = add i32 %93, %87
  %94 = inttoptr i32 %add to ptr
  %mutex = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %96, i32 noundef 0) #12
  %dstmem = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %94, i32 0, i32 3
  %97 = ptrtoint ptr %dstmem to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dstmem, align 4
  call void @sg_init_table(ptr noundef nonnull %input, i32 noundef 1) #12
  %99 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %input, align 4
  %101 = ptrtoint ptr %page to i32
  %and2.i.i = and i32 %101, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i210 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i210, label %do.body11.i.i, label %do.body5.i.i, !prof !302

do.body5.i.i:                                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !318
  unreachable

do.body11.i.i:                                    ; preds = %do.body50
  %and.i.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !302

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !319
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %100, 3
  %or.i.i = or i32 %and.i.i, %101
  %102 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i.i, ptr %input, align 4
  %103 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %2, align 4
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4096, ptr %3, align 4
  call void @sg_init_one(ptr noundef nonnull %output, ptr noundef %98, i32 noundef 8192) #12
  %req = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %94, i32 0, i32 1
  %105 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %req, align 4
  %src1.i = getelementptr inbounds %struct.acomp_req, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %input, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.acomp_req, ptr %106, i32 0, i32 2
  %108 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %output, ptr %dst2.i, align 4
  %slen3.i = getelementptr inbounds %struct.acomp_req, ptr %106, i32 0, i32 3
  %109 = ptrtoint ptr %slen3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4096, ptr %slen3.i, align 32
  %dlen4.i = getelementptr inbounds %struct.acomp_req, ptr %106, i32 0, i32 4
  %110 = ptrtoint ptr %dlen4.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 4096, ptr %dlen4.i, align 4
  %111 = load ptr, ptr %req, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tfm.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %113, i32 -128
  %__crt_alg.i = getelementptr i8, ptr %113, i32 12
  %114 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %__crt_alg.i, align 4
  %slen1.i = getelementptr inbounds %struct.acomp_req, ptr %111, i32 0, i32 3
  %116 = ptrtoint ptr %slen1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %slen1.i, align 32
  call void @crypto_stats_get(ptr noundef %115) #12
  %118 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = call i32 %119(ptr noundef %111) #12
  call void @crypto_stats_compress(i32 noundef %117, i32 noundef %call2.i, ptr noundef %115) #12
  %120 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call2.i, label %sg_set_page.exit.crypto_wait_req.exit_crit_edge [
    i32 -115, label %sg_set_page.exit.sw.bb.i_crit_edge
    i32 -16, label %sg_set_page.exit.sw.bb.i_crit_edge241
  ]

sg_set_page.exit.sw.bb.i_crit_edge241:            ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sg_set_page.exit.sw.bb.i_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sg_set_page.exit.crypto_wait_req.exit_crit_edge:  ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %sg_set_page.exit.sw.bb.i_crit_edge, %sg_set_page.exit.sw.bb.i_crit_edge241
  %wait = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %94, i32 0, i32 2
  call void @wait_for_completion(ptr noundef %wait) #12
  %121 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %94, i32 0, i32 2, i32 1
  %122 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %sg_set_page.exit.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call2.i, %sg_set_page.exit.crypto_wait_req.exit_crit_edge ], [ %123, %sw.bb.i ]
  %124 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %req, align 4
  %dlen62 = getelementptr inbounds %struct.acomp_req, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %dlen62 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dlen62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool63.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool63.not, label %if.end65, label %crypto_wait_req.exit.put_dstmem_crit_edge

crypto_wait_req.exit.put_dstmem_crit_edge:        ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_dstmem

if.end65:                                         ; preds = %crypto_wait_req.exit
  %128 = ptrtoint ptr %pool45 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pool45, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %call67 = call zeroext i1 @zpool_evictable(ptr noundef %131) #12
  %cond = select i1 %call67, i32 4, i32 0
  %132 = ptrtoint ptr %pool45 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pool45, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %call70 = call zeroext i1 @zpool_malloc_support_movable(ptr noundef %135) #12
  %spec.select = select i1 %call70, i32 75786, i32 75776
  %136 = ptrtoint ptr %pool45 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pool45, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %add75 = add i32 %cond, %127
  %call76 = call i32 @zpool_malloc(ptr noundef %139, i32 noundef %add75, i32 noundef %spec.select, ptr noundef nonnull %handle) #12
  %140 = zext i32 %call76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call76, label %if.then81 [
    i32 -28, label %if.end65.put_dstmem.sink.split_crit_edge
    i32 0, label %if.end83
  ]

if.end65.put_dstmem.sink.split_crit_edge:         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_dstmem.sink.split

if.then81:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_dstmem.sink.split

if.end83:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %pool45 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pool45, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %145 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %handle, align 4
  %call86 = call ptr @zpool_map_handle(ptr noundef %144, i32 noundef %146, i32 noundef 2) #12
  %147 = call ptr @memcpy(ptr %call86, ptr %zhdr.sroa.0, i32 %cond)
  %add.ptr = getelementptr i8, ptr %call86, i32 %cond
  %148 = call ptr @memcpy(ptr %add.ptr, ptr %98, i32 %127)
  %149 = ptrtoint ptr %pool45 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pool45, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %153 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %handle, align 4
  call void @zpool_unmap_handle(ptr noundef %152, i32 noundef %154) #12
  %155 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mutex, align 4
  call void @mutex_unlock(ptr noundef %156) #12
  %offset90 = getelementptr inbounds %struct.zswap_entry, ptr %call.i181, i32 0, i32 1
  %157 = ptrtoint ptr %offset90 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %offset, ptr %offset90, align 4
  %158 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %handle, align 4
  %160 = getelementptr inbounds %struct.zswap_entry, ptr %call.i181, i32 0, i32 5
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %159, ptr %160, align 4
  %length91 = getelementptr inbounds %struct.zswap_entry, ptr %call.i181, i32 0, i32 3
  %162 = ptrtoint ptr %length91 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %127, ptr %length91, align 4
  br label %insert_entry

insert_entry:                                     ; preds = %if.end83, %do.end
  %lock = getelementptr inbounds %struct.zswap_tree, ptr %1, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #12
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %tobool.not28.i234 = icmp eq ptr %164, null
  br i1 %tobool.not28.i234, label %insert_entry.do.end101.critedge_crit_edge, label %while.body.lr.ph.i.lr.ph

insert_entry.do.end101.critedge_crit_edge:        ; preds = %insert_entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101.critedge

while.body.lr.ph.i.lr.ph:                         ; preds = %insert_entry
  %offset2.i = getelementptr inbounds %struct.zswap_entry, ptr %call.i181, i32 0, i32 1
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %zswap_entry_put.exit.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.i.lr.ph
  %165 = phi ptr [ %164, %while.body.lr.ph.i.lr.ph ], [ %184, %zswap_entry_put.exit.while.body.lr.ph.i_crit_edge ]
  %166 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %offset2.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %168 = phi ptr [ %165, %while.body.lr.ph.i ], [ %172, %if.end8.i.while.body.i_crit_edge ]
  %offset.i = getelementptr inbounds %struct.zswap_entry, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %167)
  %cmp.i212 = icmp ugt i32 %170, %167
  br i1 %cmp.i212, label %if.then.i213, label %if.else.i

if.then.i213:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %168, i32 0, i32 2
  br label %if.end8.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %167)
  %cmp5.i = icmp ult i32 %170, %167
  br i1 %cmp5.i, label %if.then6.i, label %if.then95

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %168, i32 0, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i213
  %link.1.i = phi ptr [ %rb_left.i, %if.then.i213 ], [ %rb_right.i, %if.then6.i ]
  %171 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i214 = icmp eq ptr %172, null
  br i1 %tobool.not.i214, label %while.cond.while.end_crit_edge.i, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le.i = ptrtoint ptr %168 to i32
  br label %do.end101.critedge

if.then95:                                        ; preds = %if.else.i
  %173 = load i64, ptr @zswap_duplicate_entry, align 8
  %inc96 = add i64 %173, 1
  store i64 %inc96, ptr @zswap_duplicate_entry, align 8
  %174 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %168, align 4
  %176 = ptrtoint ptr %168 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %176)
  %cmp.i216 = icmp eq i32 %175, %176
  br i1 %cmp.i216, label %if.then95.zswap_rb_erase.exit_crit_edge, label %if.then.i217

if.then95.zswap_rb_erase.exit_crit_edge:          ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_erase.exit

if.then.i217:                                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  call void @rb_erase(ptr noundef nonnull %168, ptr noundef %1) #12
  %177 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %168, align 4
  br label %zswap_rb_erase.exit

zswap_rb_erase.exit:                              ; preds = %if.then.i217, %if.then95.zswap_rb_erase.exit_crit_edge
  %refcount2.i = getelementptr inbounds %struct.zswap_entry, ptr %168, i32 0, i32 2
  %178 = ptrtoint ptr %refcount2.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %refcount2.i, align 4
  %dec.i = add i32 %179, -1
  store i32 %dec.i, ptr %refcount2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i219 = icmp slt i32 %dec.i, 0
  br i1 %cmp.i219, label %do.body4.i, label %do.end9.i, !prof !298

do.body4.i:                                       ; preds = %zswap_rb_erase.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #12, !srcloc !326
  unreachable

do.end9.i:                                        ; preds = %zswap_rb_erase.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp10.i = icmp eq i32 %dec.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %do.end9.i.zswap_entry_put.exit_crit_edge

do.end9.i.zswap_entry_put.exit_crit_edge:         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_entry_put.exit

if.then11.i:                                      ; preds = %do.end9.i
  %180 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %176)
  %cmp.i.i = icmp eq i32 %181, %176
  br i1 %cmp.i.i, label %if.then11.i.zswap_rb_erase.exit.i_crit_edge, label %if.then.i.i220

if.then11.i.zswap_rb_erase.exit.i_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_erase.exit.i

if.then.i.i220:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @rb_erase(ptr noundef nonnull %168, ptr noundef %1) #12
  %182 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %176, ptr %168, align 4
  br label %zswap_rb_erase.exit.i

zswap_rb_erase.exit.i:                            ; preds = %if.then.i.i220, %if.then11.i.zswap_rb_erase.exit.i_crit_edge
  call fastcc void @zswap_free_entry(ptr noundef nonnull %168) #12
  br label %zswap_entry_put.exit

zswap_entry_put.exit:                             ; preds = %zswap_rb_erase.exit.i, %do.end9.i.zswap_entry_put.exit_crit_edge
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 4
  %tobool.not28.i = icmp eq ptr %184, null
  br i1 %tobool.not28.i, label %zswap_entry_put.exit.do.end101.critedge_crit_edge, label %zswap_entry_put.exit.while.body.lr.ph.i_crit_edge

zswap_entry_put.exit.while.body.lr.ph.i_crit_edge: ; preds = %zswap_entry_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph.i

zswap_entry_put.exit.do.end101.critedge_crit_edge: ; preds = %zswap_entry_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101.critedge

do.end101.critedge:                               ; preds = %zswap_entry_put.exit.do.end101.critedge_crit_edge, %while.cond.while.end_crit_edge.i, %insert_entry.do.end101.critedge_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %insert_entry.do.end101.critedge_crit_edge ], [ 0, %zswap_entry_put.exit.do.end101.critedge_crit_edge ]
  %link.0.lcssa.i = phi ptr [ %link.1.i, %while.cond.while.end_crit_edge.i ], [ %1, %insert_entry.do.end101.critedge_crit_edge ], [ %1, %zswap_entry_put.exit.do.end101.critedge_crit_edge ]
  %185 = ptrtoint ptr %call.i181 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %parent.0.lcssa.i, ptr %call.i181, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i181, i32 0, i32 1
  %186 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i181, i32 0, i32 2
  %187 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %rb_left.i.i, align 8
  %188 = ptrtoint ptr %link.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call.i181, ptr %link.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call.i181, ptr noundef %1) #12
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  %call.i.i172 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @zswap_stored_pages, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @zswap_stored_pages, i32 1, i32 3, i32 1) #12
  %189 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @zswap_stored_pages, ptr nonnull @zswap_stored_pages, i32 1, ptr nonnull elementtype(i32) @zswap_stored_pages) #12, !srcloc !334
  call fastcc void @zswap_update_total_size()
  br label %cleanup

put_dstmem.sink.split:                            ; preds = %if.then81, %if.end65.put_dstmem.sink.split_crit_edge
  %zswap_reject_alloc_fail.sink237 = phi ptr [ @zswap_reject_alloc_fail, %if.then81 ], [ @zswap_reject_compress_poor, %if.end65.put_dstmem.sink.split_crit_edge ]
  %190 = ptrtoint ptr %zswap_reject_alloc_fail.sink237 to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %zswap_reject_alloc_fail.sink237, align 8
  %inc82 = add i64 %191, 1
  store i64 %inc82, ptr %zswap_reject_alloc_fail.sink237, align 8
  br label %put_dstmem

put_dstmem:                                       ; preds = %put_dstmem.sink.split, %crypto_wait_req.exit.put_dstmem_crit_edge
  %ret.0 = phi i32 [ -22, %crypto_wait_req.exit.put_dstmem_crit_edge ], [ %call76, %put_dstmem.sink.split ]
  %192 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mutex, align 4
  call void @mutex_unlock(ptr noundef %193) #12
  %194 = ptrtoint ptr %pool45 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pool45, align 8
  call fastcc void @zswap_pool_put(ptr noundef %195)
  br label %freepage

freepage:                                         ; preds = %put_dstmem, %zswap_pool_current_get.exit.freepage_crit_edge
  %ret.1 = phi i32 [ %ret.0, %put_dstmem ], [ -22, %zswap_pool_current_get.exit.freepage_crit_edge ]
  %196 = load ptr, ptr @zswap_entry_cache, align 4
  call void @kmem_cache_free(ptr noundef %196, ptr noundef nonnull %call.i181) #12
  br label %cleanup

cleanup:                                          ; preds = %freepage, %do.end101.critedge, %if.then23, %if.then16.cleanup_crit_edge, %if.then11, %zswap_pool_last_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end101.critedge ], [ %ret.1, %freepage ], [ -12, %if.then23 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.then11 ], [ -12, %zswap_pool_last_get.exit.cleanup_crit_edge ], [ -12, %if.then16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zhdr.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %output) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %input) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zswap_frontswap_load(i32 noundef %type, i32 noundef %offset, ptr noundef %page) #1 align 64 {
entry:
  %input = alloca %struct.scatterlist, align 4
  %output = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [30 x ptr], ptr @zswap_trees, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %input) #12
  %2 = call ptr @memset(ptr %input, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %output) #12
  %3 = getelementptr inbounds %struct.scatterlist, ptr %output, i32 0, i32 1
  %4 = getelementptr inbounds %struct.scatterlist, ptr %output, i32 0, i32 2
  %lock = getelementptr inbounds %struct.zswap_tree, ptr %1, i32 0, i32 1
  %5 = call ptr @memset(ptr %output, i32 255, i32 20)
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.015.i.i = load ptr, ptr %1, align 4
  %tobool.not16.i.i = icmp eq ptr %node.015.i.i, null
  br i1 %tobool.not16.i.i, label %entry.if.then_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

while.body.i.i:                                   ; preds = %if.end7.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %node.017.i.i = phi ptr [ %node.0.i.i, %if.end7.i.i.while.body.i.i_crit_edge ], [ %node.015.i.i, %entry.while.body.i.i_crit_edge ]
  %offset2.i.i = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %offset)
  %cmp.i.i118 = icmp ugt i32 %8, %offset
  br i1 %cmp.i.i118, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i, i32 0, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %offset)
  %cmp4.i.i = icmp ult i32 %8, %offset
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i, i32 0, i32 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then5.i.i ]
  %9 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i119 = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i119, label %if.end7.i.i.if.then_crit_edge, label %if.end7.i.i.while.body.i.i_crit_edge

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.end7.i.i.if.then_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %if.end7.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i
  %refcount.i.i = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcount.i.i, align 4
  %inc.i.i = add i32 %11, 1
  store i32 %inc.i.i, ptr %refcount.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %length = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %14 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %14, 512
  %15 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !330
  %19 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i1.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !331
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #12
  %25 = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %call.i.i.i = tail call ptr @__memset32(ptr noundef %call.i.i, i32 noundef %27, i32 noundef 4096) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
  %28 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i1.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !333
  %34 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %freeentry

if.end10:                                         ; preds = %if.end
  %pool = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pool, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call11 = tail call zeroext i1 @zpool_can_sleep_mapped(ptr noundef %41) #12
  br i1 %call11, label %if.end10.if.end18_crit_edge, label %if.end8.i

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end8.i:                                        ; preds = %if.end10
  %42 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 2592) #20
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.end8.i.freeentry_crit_edge, label %if.end8.i.if.end18_crit_edge

if.end8.i.if.end18_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end8.i.freeentry_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %freeentry

if.end18:                                         ; preds = %if.end8.i.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %tmp.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end10.if.end18_crit_edge ], [ %call9.i, %if.end8.i.if.end18_crit_edge ]
  %44 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pool, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %call21 = tail call ptr @zpool_map_handle(ptr noundef %47, i32 noundef %50, i32 noundef 1) #12
  %51 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pool, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call24 = tail call zeroext i1 @zpool_evictable(ptr noundef %54) #12
  %spec.select.idx = select i1 %call24, i32 4, i32 0
  %spec.select = getelementptr i8, ptr %call21, i32 %spec.select.idx
  %55 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pool, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call29 = tail call zeroext i1 @zpool_can_sleep_mapped(ptr noundef %58) #12
  br i1 %call29, label %if.end18.do.body35_crit_edge, label %if.then30

if.end18.do.body35_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then30:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length, align 4
  %61 = call ptr @memcpy(ptr %tmp.0, ptr %spec.select, i32 %60)
  %62 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pool, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %66 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %48, align 4
  tail call void @zpool_unmap_handle(ptr noundef %65, i32 noundef %67) #12
  br label %do.body35

do.body35:                                        ; preds = %if.then30, %if.end18.do.body35_crit_edge
  %src.1 = phi ptr [ %spec.select, %if.end18.do.body35_crit_edge ], [ %tmp.0, %if.then30 ]
  %68 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pool, align 4
  %acomp_ctx40 = getelementptr inbounds %struct.zswap_pool, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %acomp_ctx40 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %acomp_ctx40, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu, align 4
  %arrayidx43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx43, align 4
  %add = add i32 %78, %72
  %79 = inttoptr i32 %add to ptr
  %mutex = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %81, i32 noundef 0) #12
  %82 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %length, align 4
  call void @sg_init_one(ptr noundef nonnull %input, ptr noundef %src.1, i32 noundef %83) #12
  call void @sg_init_table(ptr noundef nonnull %output, i32 noundef 1) #12
  %84 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %output, align 4
  %86 = ptrtoint ptr %page to i32
  %and2.i.i = and i32 %86, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i122 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i122, label %do.body11.i.i, label %do.body5.i.i, !prof !302

do.body5.i.i:                                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !318
  unreachable

do.body11.i.i:                                    ; preds = %do.body35
  %and.i.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !302

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !319
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %85, 3
  %or.i.i = or i32 %and.i.i, %86
  %87 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i.i, ptr %output, align 4
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %3, align 4
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4096, ptr %4, align 4
  %req = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %79, i32 0, i32 1
  %90 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %req, align 4
  %92 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %length, align 4
  %src1.i = getelementptr inbounds %struct.acomp_req, ptr %91, i32 0, i32 1
  %94 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %input, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.acomp_req, ptr %91, i32 0, i32 2
  %95 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %output, ptr %dst2.i, align 4
  %slen3.i = getelementptr inbounds %struct.acomp_req, ptr %91, i32 0, i32 3
  %96 = ptrtoint ptr %slen3.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %93, ptr %slen3.i, align 32
  %dlen4.i = getelementptr inbounds %struct.acomp_req, ptr %91, i32 0, i32 4
  %97 = ptrtoint ptr %dlen4.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4096, ptr %dlen4.i, align 4
  %98 = load ptr, ptr %req, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %100, i32 12
  %101 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %__crt_alg.i, align 4
  %slen1.i = getelementptr inbounds %struct.acomp_req, ptr %98, i32 0, i32 3
  %103 = ptrtoint ptr %slen1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %slen1.i, align 32
  call void @crypto_stats_get(ptr noundef %102) #12
  %decompress.i = getelementptr i8, ptr %100, i32 -124
  %105 = ptrtoint ptr %decompress.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %decompress.i, align 4
  %call2.i = call i32 %106(ptr noundef %98) #12
  call void @crypto_stats_decompress(i32 noundef %104, i32 noundef %call2.i, ptr noundef %102) #12
  %107 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call2.i, label %sg_set_page.exit.crypto_wait_req.exit_crit_edge [
    i32 -115, label %sg_set_page.exit.sw.bb.i_crit_edge
    i32 -16, label %sg_set_page.exit.sw.bb.i_crit_edge139
  ]

sg_set_page.exit.sw.bb.i_crit_edge139:            ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sg_set_page.exit.sw.bb.i_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sg_set_page.exit.crypto_wait_req.exit_crit_edge:  ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %sg_set_page.exit.sw.bb.i_crit_edge, %sg_set_page.exit.sw.bb.i_crit_edge139
  %wait = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %79, i32 0, i32 2
  call void @wait_for_completion(ptr noundef %wait) #12
  %108 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_acomp_ctx, ptr %79, i32 0, i32 2, i32 1
  %109 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %sg_set_page.exit.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call2.i, %sg_set_page.exit.crypto_wait_req.exit_crit_edge ], [ %110, %sw.bb.i ]
  %111 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mutex, align 4
  call void @mutex_unlock(ptr noundef %112) #12
  %113 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pool, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %call52 = call zeroext i1 @zpool_can_sleep_mapped(ptr noundef %116) #12
  br i1 %call52, label %if.then53, label %if.else

if.then53:                                        ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pool, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %121 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %48, align 4
  call void @zpool_unmap_handle(ptr noundef %120, i32 noundef %122) #12
  br label %do.body57

if.else:                                          ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %tmp.0) #12
  br label %do.body57

do.body57:                                        ; preds = %if.else, %if.then53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool58.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool58.not, label %do.body57.freeentry_crit_edge, label %do.body62, !prof !302

do.body57.freeentry_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  br label %freeentry

do.body62:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1313, 0\0A.popsection", ""() #12, !srcloc !335
  unreachable

freeentry:                                        ; preds = %do.body57.freeentry_crit_edge, %if.end8.i.freeentry_crit_edge, %if.then5
  %ret.0 = phi i32 [ 0, %do.body57.freeentry_crit_edge ], [ 0, %if.then5 ], [ -12, %if.end8.i.freeentry_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %lock) #12
  %123 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %refcount.i.i, align 4
  %dec.i = add i32 %124, -1
  store i32 %dec.i, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i124 = icmp slt i32 %dec.i, 0
  br i1 %cmp.i124, label %do.body4.i, label %do.end9.i, !prof !298

do.body4.i:                                       ; preds = %freeentry
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #12, !srcloc !326
  unreachable

do.end9.i:                                        ; preds = %freeentry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp10.i = icmp eq i32 %dec.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %do.end9.i.zswap_entry_put.exit_crit_edge

do.end9.i.zswap_entry_put.exit_crit_edge:         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_entry_put.exit

if.then11.i:                                      ; preds = %do.end9.i
  %125 = ptrtoint ptr %node.017.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %node.017.i.i, align 4
  %127 = ptrtoint ptr %node.017.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %127)
  %cmp.i.i125 = icmp eq i32 %126, %127
  br i1 %cmp.i.i125, label %if.then11.i.zswap_rb_erase.exit.i_crit_edge, label %if.then.i.i126

if.then11.i.zswap_rb_erase.exit.i_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_erase.exit.i

if.then.i.i126:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @rb_erase(ptr noundef nonnull %node.017.i.i, ptr noundef %1) #12
  %128 = ptrtoint ptr %node.017.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %node.017.i.i, align 4
  br label %zswap_rb_erase.exit.i

zswap_rb_erase.exit.i:                            ; preds = %if.then.i.i126, %if.then11.i.zswap_rb_erase.exit.i_crit_edge
  call fastcc void @zswap_free_entry(ptr noundef nonnull %node.017.i.i) #12
  br label %zswap_entry_put.exit

zswap_entry_put.exit:                             ; preds = %zswap_rb_erase.exit.i, %do.end9.i.zswap_entry_put.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %zswap_entry_put.exit, %if.then
  %retval.0 = phi i32 [ %ret.0, %zswap_entry_put.exit ], [ -1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %output) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %input) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zswap_frontswap_invalidate_page(i32 noundef %type, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [30 x ptr], ptr @zswap_trees, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.zswap_tree, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.015.i = load ptr, ptr %1, align 4
  %tobool.not16.i = icmp eq ptr %node.015.i, null
  br i1 %tobool.not16.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %node.017.i = phi ptr [ %node.0.i, %if.end7.i.while.body.i_crit_edge ], [ %node.015.i, %entry.while.body.i_crit_edge ]
  %offset2.i = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i, i32 0, i32 1
  %3 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %offset)
  %cmp.i = icmp ugt i32 %4, %offset
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %offset)
  %cmp4.i = icmp ult i32 %4, %offset
  br i1 %cmp4.i, label %if.then5.i, label %if.end

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %5 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  %6 = ptrtoint ptr %node.017.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node.017.i, align 4
  %8 = ptrtoint ptr %node.017.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp.i13 = icmp eq i32 %7, %8
  br i1 %cmp.i13, label %if.end.zswap_rb_erase.exit_crit_edge, label %if.then.i14

if.end.zswap_rb_erase.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_erase.exit

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rb_erase(ptr noundef nonnull %node.017.i, ptr noundef %1) #12
  %9 = ptrtoint ptr %node.017.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %node.017.i, align 4
  br label %zswap_rb_erase.exit

zswap_rb_erase.exit:                              ; preds = %if.then.i14, %if.end.zswap_rb_erase.exit_crit_edge
  %refcount2.i = getelementptr inbounds %struct.zswap_entry, ptr %node.017.i, i32 0, i32 2
  %10 = ptrtoint ptr %refcount2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcount2.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %refcount2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i15 = icmp slt i32 %dec.i, 0
  br i1 %cmp.i15, label %do.body4.i, label %do.end9.i, !prof !298

do.body4.i:                                       ; preds = %zswap_rb_erase.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zswap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #12, !srcloc !326
  unreachable

do.end9.i:                                        ; preds = %zswap_rb_erase.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp10.i = icmp eq i32 %dec.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %do.end9.i.cleanup_crit_edge

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11.i:                                      ; preds = %do.end9.i
  %12 = ptrtoint ptr %node.017.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node.017.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %8)
  %cmp.i.i = icmp eq i32 %13, %8
  br i1 %cmp.i.i, label %if.then11.i.zswap_rb_erase.exit.i_crit_edge, label %if.then.i.i

if.then11.i.zswap_rb_erase.exit.i_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zswap_rb_erase.exit.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rb_erase(ptr noundef nonnull %node.017.i, ptr noundef %1) #12
  %14 = ptrtoint ptr %node.017.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %node.017.i, align 4
  br label %zswap_rb_erase.exit.i

zswap_rb_erase.exit.i:                            ; preds = %if.then.i.i, %if.then11.i.zswap_rb_erase.exit.i_crit_edge
  tail call fastcc void @zswap_free_entry(ptr noundef nonnull %node.017.i) #12
  br label %cleanup

cleanup:                                          ; preds = %zswap_rb_erase.exit.i, %do.end9.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zswap_frontswap_invalidate_area(i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [30 x ptr], ptr @zswap_trees, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.zswap_tree, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %call = tail call ptr @rb_first_postorder(ptr noundef nonnull %1) #12
  %tobool4.not34 = icmp eq ptr %call, null
  br i1 %tobool4.not34, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %entry1.035 = phi ptr [ %call6, %land.rhs.land.rhs_crit_edge ], [ %call, %if.end.land.rhs_crit_edge ]
  %call6 = tail call ptr @rb_next_postorder(ptr noundef nonnull %entry1.035) #12
  tail call fastcc void @zswap_free_entry(ptr noundef nonnull %entry1.035)
  %tobool4.not = icmp eq ptr %call6, null
  br i1 %tobool4.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %if.end.for.end_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zpool_evictable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zpool_malloc_support_movable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zpool_malloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_compress(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_atomic_t(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { nobuiltin }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !114, !116, !118, !120, !122, !124, !125, !127, !129, !131, !133, !135, !137, !138, !139, !141, !142, !144, !146, !148, !150, !151, !153, !154, !155, !157, !159, !160, !162, !164, !166, !167, !169, !170, !172, !173, !175, !177, !178, !179, !180, !182, !184, !185, !186, !188, !190, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !205, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !241, !243, !244, !245, !246, !248, !249, !251, !253, !255, !257, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286}
!llvm.named.register.sp = !{!288}
!llvm.module.flags = !{!289, !290, !291, !292, !293, !294, !295, !296}
!llvm.ident = !{!297}

!0 = !{ptr @__param_enabled, !1, !"__param_enabled", i1 false, i1 false}
!1 = !{!"../mm/zswap.c", i32 90, i32 1}
!2 = !{ptr @__param_compressor, !3, !"__param_compressor", i1 false, i1 false}
!3 = !{!"../mm/zswap.c", i32 101, i32 1}
!4 = !{ptr @__param_zpool, !5, !"__param_zpool", i1 false, i1 false}
!5 = !{!"../mm/zswap.c", i32 112, i32 1}
!6 = !{ptr @__param_max_pool_percent, !7, !"__param_max_pool_percent", i1 false, i1 false}
!7 = !{!"../mm/zswap.c", i32 116, i32 1}
!8 = !{ptr @__UNIQUE_ID_max_pool_percenttype290, !7, !"__UNIQUE_ID_max_pool_percenttype290", i1 false, i1 false}
!9 = !{ptr @__param_accept_threshold_percent, !10, !"__param_accept_threshold_percent", i1 false, i1 false}
!10 = !{!"../mm/zswap.c", i32 120, i32 1}
!11 = !{ptr @__UNIQUE_ID_accept_threshold_percenttype291, !10, !"__UNIQUE_ID_accept_threshold_percenttype291", i1 false, i1 false}
!12 = !{ptr @__param_same_filled_pages_enabled, !13, !"__param_same_filled_pages_enabled", i1 false, i1 false}
!13 = !{!"../mm/zswap.c", i32 125, i32 1}
!14 = !{ptr @__UNIQUE_ID_same_filled_pages_enabledtype292, !13, !"__UNIQUE_ID_same_filled_pages_enabledtype292", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_zswap__309_1501_init_zswap7, !16, !"__initcall__kmod_zswap__309_1501_init_zswap7", i1 false, i1 false}
!16 = !{!"../mm/zswap.c", i32 1501, i32 1}
!17 = !{ptr @__UNIQUE_ID_file310, !18, !"__UNIQUE_ID_file310", i1 false, i1 false}
!18 = !{!"../mm/zswap.c", i32 1503, i32 1}
!19 = !{ptr @__UNIQUE_ID_license311, !18, !"__UNIQUE_ID_license311", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_author312, !21, !"__UNIQUE_ID_author312", i1 false, i1 false}
!21 = !{!"../mm/zswap.c", i32 1504, i32 1}
!22 = !{ptr @__UNIQUE_ID_description313, !23, !"__UNIQUE_ID_description313", i1 false, i1 false}
!23 = !{!"../mm/zswap.c", i32 1505, i32 1}
!24 = !{ptr @__pcpu_unique_zswap_dstmem, !25, !"__pcpu_unique_zswap_dstmem", i1 false, i1 false}
!25 = !{!"../mm/zswap.c", i32 400, i32 8}
!26 = !{ptr @zswap_dstmem, !25, !"zswap_dstmem", i1 false, i1 false}
!27 = !{ptr @__pcpu_unique_zswap_mutex, !28, !"__pcpu_unique_zswap_mutex", i1 false, i1 false}
!28 = !{!"../mm/zswap.c", i32 406, i32 8}
!29 = !{ptr @zswap_mutex, !28, !"zswap_mutex", i1 false, i1 false}
!30 = !{ptr @__param_str_enabled, !1, !"__param_str_enabled", i1 false, i1 false}
!31 = !{ptr @zswap_enabled_param_ops, !32, !"zswap_enabled_param_ops", i1 false, i1 false}
!32 = !{!"../mm/zswap.c", i32 86, i32 38}
!33 = !{ptr @.str, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../mm/zswap.c", i32 864, i32 3}
!35 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @zswap_enabled_param_set._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @zswap_enabled_param_set._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../mm/zswap.c", i32 868, i32 3}
!41 = !{ptr @zswap_enabled_param_set._entry.3, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @zswap_enabled_param_set._entry_ptr.5, !40, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"zswap_init_failed", i1 false, i1 false}
!44 = !{!"../mm/zswap.c", i32 210, i32 13}
!45 = distinct !{null, !46, !"zswap_has_pool", i1 false, i1 false}
!46 = !{!"../mm/zswap.c", i32 213, i32 13}
!47 = distinct !{null, !48, !"zswap_init_started", i1 false, i1 false}
!48 = !{!"../mm/zswap.c", i32 207, i32 13}
!49 = !{ptr @zswap_enabled, !50, !"zswap_enabled", i1 false, i1 false}
!50 = !{!"../mm/zswap.c", i32 83, i32 13}
!51 = !{ptr @__param_str_compressor, !3, !"__param_str_compressor", i1 false, i1 false}
!52 = !{ptr @zswap_compressor_param_ops, !53, !"zswap_compressor_param_ops", i1 false, i1 false}
!53 = !{!"../mm/zswap.c", i32 96, i32 38}
!54 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../mm/zswap.c", i32 761, i32 3}
!56 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__zswap_param_set._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @__zswap_param_set._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../mm/zswap.c", i32 777, i32 4}
!61 = !{ptr @__zswap_param_set._entry.8, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @__zswap_param_set._entry_ptr.10, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../mm/zswap.c", i32 783, i32 4}
!65 = !{ptr @__zswap_param_set._entry.11, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @__zswap_param_set._entry_ptr.13, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../mm/zswap.c", i32 796, i32 3}
!69 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @__zswap_param_set.__UNIQUE_ID_ddebug305, !68, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!71 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../mm/zswap.c", i32 202, i32 8}
!75 = !{ptr @zswap_pools_lock, !74, !"zswap_pools_lock", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../mm/zswap.c", i32 561, i32 2}
!78 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../mm/zswap.c", i32 508, i32 2}
!81 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__func__.__zswap_pool_current, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../mm/zswap.c", i32 597, i32 21}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../mm/zswap.c", i32 608, i32 21}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../mm/zswap.c", i32 612, i32 3}
!89 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @zswap_pool_create._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @zswap_pool_create._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../mm/zswap.c", i32 615, i32 2}
!94 = !{ptr @zswap_pool_create.__UNIQUE_ID_ddebug301, !93, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!95 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../mm/zswap.c", i32 621, i32 3}
!98 = !{ptr @zswap_pool_create._entry.27, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @zswap_pool_create._entry_ptr.29, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../mm/zswap.c", i32 629, i32 2}
!102 = !{ptr @zswap_pool_create.__UNIQUE_ID_ddebug302, !101, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!103 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @zswap_pool_create.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../mm/zswap.c", i32 636, i32 2}
!106 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @zswap_pool_create.__UNIQUE_ID_ddebug303, !108, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!108 = !{!"../mm/zswap.c", i32 638, i32 2}
!109 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @zswap_pools_count, !111, !"zswap_pools_count", i1 false, i1 false}
!111 = !{!"../mm/zswap.c", i32 204, i32 17}
!112 = !{ptr @zswap_zpool_ops, !113, !"zswap_zpool_ops", i1 false, i1 false}
!113 = !{!"../mm/zswap.c", i32 227, i32 31}
!114 = !{ptr @zswap_trees, !115, !"zswap_trees", i1 false, i1 false}
!115 = !{!"../mm/zswap.c", i32 197, i32 27}
!116 = !{ptr @.str.34, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/mm.h", i32 717, i32 2}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/page-flags.h", i32 466, i32 1}
!124 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @zswap_written_back_pages, !126, !"zswap_written_back_pages", i1 false, i1 false}
!126 = !{!"../mm/zswap.c", i32 59, i32 12}
!127 = !{ptr @zswap_same_filled_pages, !128, !"zswap_same_filled_pages", i1 false, i1 false}
!128 = !{!"../mm/zswap.c", i32 47, i32 17}
!129 = !{ptr @zswap_entry_cache, !130, !"zswap_entry_cache", i1 false, i1 false}
!130 = !{!"../mm/zswap.c", i32 262, i32 27}
!131 = !{ptr @zswap_stored_pages, !132, !"zswap_stored_pages", i1 false, i1 false}
!132 = !{!"../mm/zswap.c", i32 45, i32 17}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../mm/zswap.c", i32 251, i32 2}
!135 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!136 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!137 = !{ptr @.str.39, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!141 = !{ptr @.str.41, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @zswap_pool_total_size, !143, !"zswap_pool_total_size", i1 false, i1 false}
!143 = !{!"../mm/zswap.c", i32 43, i32 12}
!144 = !{ptr @zswap_reject_reclaim_fail, !145, !"zswap_reject_reclaim_fail", i1 false, i1 false}
!145 = !{!"../mm/zswap.c", i32 61, i32 12}
!146 = !{ptr @zswap_pools, !147, !"zswap_pools", i1 false, i1 false}
!147 = !{!"../mm/zswap.c", i32 200, i32 8}
!148 = !{ptr @__zswap_pool_empty.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../mm/zswap.c", i32 737, i32 2}
!150 = !{ptr @.str.42, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.43, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../mm/zswap.c", i32 695, i32 2}
!153 = !{ptr @zswap_pool_destroy.__UNIQUE_ID_ddebug304, !152, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!154 = !{ptr @.str.44, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.45, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../mm/zswap.c", i32 93, i32 33}
!157 = !{ptr @zswap_compressor, !158, !"zswap_compressor", i1 false, i1 false}
!158 = !{!"../mm/zswap.c", i32 93, i32 14}
!159 = !{ptr @__param_str_zpool, !5, !"__param_str_zpool", i1 false, i1 false}
!160 = !{ptr @zswap_zpool_param_ops, !161, !"zswap_zpool_param_ops", i1 false, i1 false}
!161 = !{!"../mm/zswap.c", i32 107, i32 38}
!162 = !{ptr @.str.46, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../mm/zswap.c", i32 105, i32 33}
!164 = !{ptr @zswap_zpool_type, !165, !"zswap_zpool_type", i1 false, i1 false}
!165 = !{!"../mm/zswap.c", i32 105, i32 14}
!166 = !{ptr @__param_str_max_pool_percent, !7, !"__param_str_max_pool_percent", i1 false, i1 false}
!167 = !{ptr @zswap_max_pool_percent, !168, !"zswap_max_pool_percent", i1 false, i1 false}
!168 = !{!"../mm/zswap.c", i32 115, i32 21}
!169 = !{ptr @__param_str_accept_threshold_percent, !10, !"__param_str_accept_threshold_percent", i1 false, i1 false}
!170 = !{ptr @zswap_accept_thr_percent, !171, !"zswap_accept_thr_percent", i1 false, i1 false}
!171 = !{!"../mm/zswap.c", i32 119, i32 21}
!172 = !{ptr @__param_str_same_filled_pages_enabled, !13, !"__param_str_same_filled_pages_enabled", i1 false, i1 false}
!173 = !{ptr @zswap_same_filled_pages_enabled, !174, !"zswap_same_filled_pages_enabled", i1 false, i1 false}
!174 = !{!"../mm/zswap.c", i32 124, i32 13}
!175 = !{ptr @.str.47, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../mm/zswap.c", i32 1445, i32 3}
!177 = !{ptr @.str.48, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @init_zswap._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @init_zswap._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.49, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../mm/zswap.c", i32 1449, i32 53}
!182 = !{ptr @.str.51, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../mm/zswap.c", i32 1452, i32 3}
!184 = !{ptr @init_zswap._entry.50, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @init_zswap._entry_ptr.52, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.53, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../mm/zswap.c", i32 1457, i32 11}
!188 = !{ptr @.str.55, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../mm/zswap.c", i32 1465, i32 3}
!190 = !{ptr @init_zswap._entry.54, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @init_zswap._entry_ptr.56, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.58, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../mm/zswap.c", i32 1470, i32 3}
!194 = !{ptr @init_zswap._entry.57, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @init_zswap._entry_ptr.59, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.60, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../mm/zswap.c", i32 1474, i32 14}
!198 = !{ptr @.str.61, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.63, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../mm/zswap.c", i32 1482, i32 3}
!201 = !{ptr @init_zswap._entry.62, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @init_zswap._entry_ptr.64, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.65, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../mm/zswap.c", i32 266, i32 22}
!205 = !{ptr @zswap_dstmem_prepare.__key, !206, !"__key", i1 false, i1 false}
!206 = !{!"../mm/zswap.c", i32 423, i32 2}
!207 = !{ptr @.str.66, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.67, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../mm/zswap.c", i32 454, i32 3}
!210 = !{ptr @.str.68, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @zswap_cpu_comp_prepare._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @zswap_cpu_comp_prepare._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.70, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../mm/zswap.c", i32 462, i32 3}
!215 = !{ptr @zswap_cpu_comp_prepare._entry.69, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @zswap_cpu_comp_prepare._entry_ptr.71, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @init_completion.__key, !218, !"__key", i1 false, i1 false}
!218 = !{!"../include/linux/completion.h", i32 87, i32 2}
!219 = !{ptr @.str.72, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.73, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../mm/zswap.c", i32 658, i32 3}
!222 = !{ptr @.str.74, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @__zswap_pool_create_fallback._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @__zswap_pool_create_fallback._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.76, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../mm/zswap.c", i32 665, i32 3}
!227 = !{ptr @__zswap_pool_create_fallback._entry.75, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @__zswap_pool_create_fallback._entry_ptr.77, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.79, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../mm/zswap.c", i32 674, i32 3}
!231 = !{ptr @__zswap_pool_create_fallback._entry.78, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @__zswap_pool_create_fallback._entry_ptr.80, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.82, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../mm/zswap.c", i32 681, i32 3}
!235 = !{ptr @__zswap_pool_create_fallback._entry.81, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @__zswap_pool_create_fallback._entry_ptr.83, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @shrink_wq, !238, !"shrink_wq", i1 false, i1 false}
!238 = !{!"../mm/zswap.c", i32 72, i32 33}
!239 = !{ptr @zswap_frontswap_ops, !240, !"zswap_frontswap_ops", i1 false, i1 false}
!240 = !{!"../mm/zswap.c", i32 1381, i32 35}
!241 = !{ptr @.str.84, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../mm/zswap.c", i32 1372, i32 3}
!243 = !{ptr @.str.85, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @zswap_frontswap_init._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @zswap_frontswap_init._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @zswap_frontswap_init.__key, !247, !"__key", i1 false, i1 false}
!247 = !{!"../mm/zswap.c", i32 1377, i32 2}
!248 = !{ptr @.str.86, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @zswap_pool_limit_hit, !250, !"zswap_pool_limit_hit", i1 false, i1 false}
!250 = !{!"../mm/zswap.c", i32 57, i32 12}
!251 = distinct !{null, !252, !"zswap_pool_reached_full", i1 false, i1 false}
!252 = !{!"../mm/zswap.c", i32 74, i32 13}
!253 = distinct !{null, !254, !"__warned", i1 false, i1 false}
!254 = !{!"../mm/zswap.c", i32 542, i32 2}
!255 = distinct !{null, !256, !"__already_done", i1 false, i1 false}
!256 = !{!"../mm/zswap.c", i32 544, i32 2}
!257 = !{ptr @__func__.zswap_pool_last_get, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @zswap_reject_kmemcache_fail, !259, !"zswap_reject_kmemcache_fail", i1 false, i1 false}
!259 = !{!"../mm/zswap.c", i32 67, i32 12}
!260 = !{ptr @zswap_reject_compress_poor, !261, !"zswap_reject_compress_poor", i1 false, i1 false}
!261 = !{!"../mm/zswap.c", i32 63, i32 12}
!262 = !{ptr @zswap_reject_alloc_fail, !263, !"zswap_reject_alloc_fail", i1 false, i1 false}
!263 = !{!"../mm/zswap.c", i32 65, i32 12}
!264 = !{ptr @zswap_duplicate_entry, !265, !"zswap_duplicate_entry", i1 false, i1 false}
!265 = !{!"../mm/zswap.c", i32 69, i32 12}
!266 = !{ptr @.str.87, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../mm/zswap.c", i32 1404, i32 21}
!268 = !{ptr @.str.88, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../mm/zswap.c", i32 1406, i32 21}
!270 = !{ptr @.str.89, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../mm/zswap.c", i32 1408, i32 21}
!272 = !{ptr @.str.90, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../mm/zswap.c", i32 1410, i32 21}
!274 = !{ptr @.str.91, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../mm/zswap.c", i32 1412, i32 21}
!276 = !{ptr @.str.92, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../mm/zswap.c", i32 1414, i32 21}
!278 = !{ptr @.str.93, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../mm/zswap.c", i32 1416, i32 21}
!280 = !{ptr @.str.94, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../mm/zswap.c", i32 1418, i32 21}
!282 = !{ptr @.str.95, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../mm/zswap.c", i32 1420, i32 26}
!284 = !{ptr @.str.96, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../mm/zswap.c", i32 1422, i32 26}
!286 = !{ptr @zswap_debugfs_root, !287, !"zswap_debugfs_root", i1 false, i1 false}
!287 = !{!"../mm/zswap.c", i32 1395, i32 23}
!288 = !{!"sp"}
!289 = !{i32 1, !"wchar_size", i32 2}
!290 = !{i32 1, !"min_enum_size", i32 4}
!291 = !{i32 8, !"branch-target-enforcement", i32 0}
!292 = !{i32 8, !"sign-return-address", i32 0}
!293 = !{i32 8, !"sign-return-address-all", i32 0}
!294 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!295 = !{i32 7, !"uwtable", i32 1}
!296 = !{i32 7, !"frame-pointer", i32 2}
!297 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!298 = !{!"branch_weights", i32 1, i32 2000}
!299 = !{i64 2155097370, i64 2155097845, i64 2155097407, i64 2155097463, i64 2155097497, i64 2155097521, i64 2155097562, i64 2155097583, i64 2155097611, i64 2155097645}
!300 = !{i64 2148991315, i64 2148991320, i64 2148991333, i64 2148991377, i64 2148991411, i64 2148991432}
!301 = !{i64 2155058477, i64 2155058952, i64 2155058514, i64 2155058570, i64 2155058604, i64 2155058628, i64 2155058669, i64 2155058690, i64 2155058718, i64 2155058752}
!302 = !{!"branch_weights", i32 2000, i32 1}
!303 = !{i64 2151726740}
!304 = !{i64 2148463373}
!305 = !{i64 2148378658, i64 2148378690, i64 2148378719, i64 2148378753, i64 2148378784, i64 2148378807}
!306 = !{i64 2148463602}
!307 = !{i64 2148467493}
!308 = !{i64 2148381933, i64 2148381965, i64 2148381994, i64 2148382028, i64 2148382059, i64 2148382082}
!309 = !{i64 2149343607}
!310 = !{i64 862471, i64 862495, i64 862516, i64 862533, i64 862550}
!311 = !{i64 2155178088, i64 2155178563, i64 2155178125, i64 2155178181, i64 2155178215, i64 2155178239, i64 2155178280, i64 2155178301, i64 2155178329, i64 2155178363}
!312 = !{!"auto-init"}
!313 = !{i8 0, i8 2}
!314 = !{i64 2153624293, i64 2153624776, i64 2153624330, i64 2153624386, i64 2153624420, i64 2153624444, i64 2153624485, i64 2153624506, i64 2153624534, i64 2153624568}
!315 = !{i64 2148466414}
!316 = !{i64 2148381123, i64 2148381155, i64 2148381184, i64 2148381218, i64 2148381249, i64 2148381272}
!317 = !{i64 2148466643}
!318 = !{i64 2154907083, i64 2154907575, i64 2154907120, i64 2154907176, i64 2154907210, i64 2154907234, i64 2154907275, i64 2154907296, i64 2154907324, i64 2154907358}
!319 = !{i64 2154912754, i64 2154913246, i64 2154912791, i64 2154912847, i64 2154912881, i64 2154912905, i64 2154912946, i64 2154912967, i64 2154912995, i64 2154913029}
!320 = !{i64 2155180751, i64 2155181227, i64 2155180788, i64 2155180844, i64 2155180878, i64 2155180902, i64 2155180943, i64 2155180964, i64 2155180992, i64 2155181026}
!321 = !{i64 2155182393, i64 2155182869, i64 2155182430, i64 2155182486, i64 2155182520, i64 2155182544, i64 2155182585, i64 2155182606, i64 2155182634, i64 2155182668}
!322 = !{i64 2150954917}
!323 = !{i64 2150199893, i64 2150200384, i64 2150199930, i64 2150199986, i64 2150200020, i64 2150200044, i64 2150200085, i64 2150200106, i64 2150200134, i64 2150200168}
!324 = !{i64 2150779101, i64 2150779274, i64 2150779289, i64 2150779341, i64 2150779400, i64 2150779424, i64 2150779465, i64 2150779486, i64 2150779514, i64 2150779546}
!325 = !{i64 2150779976, i64 2150780149, i64 2150780164, i64 2150780216, i64 2150780275, i64 2150780299, i64 2150780340, i64 2150780361, i64 2150780389, i64 2150780421}
!326 = !{i64 2155017813, i64 2155022349, i64 2155017850, i64 2155017906, i64 2155017940, i64 2155017964, i64 2155018005, i64 2155018026, i64 2155018054, i64 2155018088}
!327 = !{i64 2148380403, i64 2148380429, i64 2148380458, i64 2148380492, i64 2148380523, i64 2148380546}
!328 = !{i64 2149394097}
!329 = !{i64 2149394363}
!330 = !{i64 2154036883}
!331 = !{i64 2152735484}
!332 = !{i64 2152735691}
!333 = !{i64 2154043715}
!334 = !{i64 2148377938, i64 2148377964, i64 2148377993, i64 2148378027, i64 2148378058, i64 2148378081}
!335 = !{i64 2155192079, i64 2155192555, i64 2155192116, i64 2155192172, i64 2155192206, i64 2155192230, i64 2155192271, i64 2155192292, i64 2155192320, i64 2155192354}
