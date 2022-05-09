; ModuleID = '/llk/IR_all_yes/drivers/dma/dmatest.c_pt.bc'
source_filename = "../drivers/dma/dmatest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.dmatest_info = type { %struct.dmatest_params, %struct.list_head, i32, i32, %struct.mutex, i8 }
%struct.dmatest_params = type { i32, [20 x i8], [32 x i8], i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dmatest_chan = type { %struct.list_head, ptr, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dmatest_thread = type { %struct.list_head, ptr, ptr, ptr, %struct.dmatest_data, %struct.dmatest_data, i32, %struct.wait_queue_head, %struct.dmatest_done, i8, i8 }
%struct.dmatest_data = type { ptr, ptr, i32, i32 }
%struct.dmatest_done = type { i8, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dmaengine_unmap_data = type { i16, i8, i8, i8, ptr, %struct.kref, i32, [0 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__param_str_test_buf_size = internal constant [22 x i8] c"dmatest.test_buf_size\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@test_buf_size = internal global { i32, [28 x i8] } { i32 16384, [28 x i8] zeroinitializer }, align 32
@__param_test_buf_size = internal constant %struct.kernel_param { ptr @__param_str_test_buf_size, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @test_buf_size } }, section "__param", align 4
@__UNIQUE_ID_test_buf_sizetype232 = internal constant [36 x i8] c"dmatest.parmtype=test_buf_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_test_buf_size233 = internal constant [58 x i8] c"dmatest.parm=test_buf_size:Size of the memcpy test buffer\00", section ".modinfo", align 1
@__param_str_device = internal constant [15 x i8] c"dmatest.device\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_device = internal constant %struct.kparam_string { i32 32, ptr @test_device }, align 4
@__param_device = internal constant %struct.kernel_param { ptr @__param_str_device, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @__param_string_device } }, section "__param", align 4
@__UNIQUE_ID_devicetype234 = internal constant [31 x i8] c"dmatest.parmtype=device:string\00", section ".modinfo", align 1
@__UNIQUE_ID_device235 = internal constant [68 x i8] c"dmatest.parm=device:Bus ID of the DMA Engine to test (default: any)\00", section ".modinfo", align 1
@__param_str_threads_per_chan = internal constant [25 x i8] c"dmatest.threads_per_chan\00", align 1
@threads_per_chan = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_threads_per_chan = internal constant %struct.kernel_param { ptr @__param_str_threads_per_chan, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @threads_per_chan } }, section "__param", align 4
@__UNIQUE_ID_threads_per_chantype236 = internal constant [39 x i8] c"dmatest.parmtype=threads_per_chan:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_threads_per_chan237 = internal constant [82 x i8] c"dmatest.parm=threads_per_chan:Number of threads to start per channel (default: 1)\00", section ".modinfo", align 1
@__param_str_max_channels = internal constant [21 x i8] c"dmatest.max_channels\00", align 1
@max_channels = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_channels = internal constant %struct.kernel_param { ptr @__param_str_max_channels, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @max_channels } }, section "__param", align 4
@__UNIQUE_ID_max_channelstype238 = internal constant [35 x i8] c"dmatest.parmtype=max_channels:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_channels239 = internal constant [75 x i8] c"dmatest.parm=max_channels:Maximum number of channels to use (default: all)\00", section ".modinfo", align 1
@__param_str_iterations = internal constant [19 x i8] c"dmatest.iterations\00", align 1
@iterations = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_iterations = internal constant %struct.kernel_param { ptr @__param_str_iterations, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @iterations } }, section "__param", align 4
@__UNIQUE_ID_iterationstype240 = internal constant [33 x i8] c"dmatest.parmtype=iterations:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_iterations241 = internal constant [76 x i8] c"dmatest.parm=iterations:Iterations before stopping test (default: infinite)\00", section ".modinfo", align 1
@__param_str_dmatest = internal constant [16 x i8] c"dmatest.dmatest\00", align 1
@dmatest = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dmatest = internal constant %struct.kernel_param { ptr @__param_str_dmatest, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @dmatest } }, section "__param", align 4
@__UNIQUE_ID_dmatesttype242 = internal constant [30 x i8] c"dmatest.parmtype=dmatest:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dmatest243 = internal constant [60 x i8] c"dmatest.parm=dmatest:dmatest 0-memcpy 1-memset (default: 0)\00", section ".modinfo", align 1
@__param_str_xor_sources = internal constant [20 x i8] c"dmatest.xor_sources\00", align 1
@xor_sources = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_xor_sources = internal constant %struct.kernel_param { ptr @__param_str_xor_sources, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @xor_sources } }, section "__param", align 4
@__UNIQUE_ID_xor_sourcestype244 = internal constant [34 x i8] c"dmatest.parmtype=xor_sources:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_xor_sources245 = internal constant [67 x i8] c"dmatest.parm=xor_sources:Number of xor source buffers (default: 3)\00", section ".modinfo", align 1
@__param_str_pq_sources = internal constant [19 x i8] c"dmatest.pq_sources\00", align 1
@pq_sources = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_pq_sources = internal constant %struct.kernel_param { ptr @__param_str_pq_sources, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @pq_sources } }, section "__param", align 4
@__UNIQUE_ID_pq_sourcestype246 = internal constant [33 x i8] c"dmatest.parmtype=pq_sources:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pq_sources247 = internal constant [66 x i8] c"dmatest.parm=pq_sources:Number of p+q source buffers (default: 3)\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [16 x i8] c"dmatest.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } { i32 3000, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype248 = internal constant [29 x i8] c"dmatest.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout249 = internal constant [92 x i8] c"dmatest.parm=timeout:Transfer Timeout in msec (default: 3000), Pass -1 for infinite timeout\00", section ".modinfo", align 1
@__param_str_noverify = internal constant [17 x i8] c"dmatest.noverify\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@noverify = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_noverify = internal constant %struct.kernel_param { ptr @__param_str_noverify, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @noverify } }, section "__param", align 4
@__UNIQUE_ID_noverifytype250 = internal constant [31 x i8] c"dmatest.parmtype=noverify:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noverify251 = internal constant [66 x i8] c"dmatest.parm=noverify:Disable data verification (default: verify)\00", section ".modinfo", align 1
@__param_str_norandom = internal constant [17 x i8] c"dmatest.norandom\00", align 1
@norandom = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_norandom = internal constant %struct.kernel_param { ptr @__param_str_norandom, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @norandom } }, section "__param", align 4
@__UNIQUE_ID_norandomtype252 = internal constant [31 x i8] c"dmatest.parmtype=norandom:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_norandom253 = internal constant [68 x i8] c"dmatest.parm=norandom:Disable random offset setup (default: random)\00", section ".modinfo", align 1
@__param_str_verbose = internal constant [16 x i8] c"dmatest.verbose\00", align 1
@verbose = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype254 = internal constant [30 x i8] c"dmatest.parmtype=verbose:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose255 = internal constant [69 x i8] c"dmatest.parm=verbose:Enable \22success\22 result messages (default: off)\00", section ".modinfo", align 1
@__param_str_alignment = internal constant [18 x i8] c"dmatest.alignment\00", align 1
@alignment = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_alignment = internal constant %struct.kernel_param { ptr @__param_str_alignment, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @alignment } }, section "__param", align 4
@__UNIQUE_ID_alignmenttype256 = internal constant [31 x i8] c"dmatest.parmtype=alignment:int\00", section ".modinfo", align 1
@__UNIQUE_ID_alignment257 = internal constant [101 x i8] c"dmatest.parm=alignment:Custom data address alignment taken as 2^(alignment) (default: not used (-1))\00", section ".modinfo", align 1
@__param_str_transfer_size = internal constant [22 x i8] c"dmatest.transfer_size\00", align 1
@transfer_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_transfer_size = internal constant %struct.kernel_param { ptr @__param_str_transfer_size, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @transfer_size } }, section "__param", align 4
@__UNIQUE_ID_transfer_sizetype258 = internal constant [36 x i8] c"dmatest.parmtype=transfer_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_transfer_size259 = internal constant [90 x i8] c"dmatest.parm=transfer_size:Optional custom transfer size in bytes (default: not used (0))\00", section ".modinfo", align 1
@__param_str_polled = internal constant [15 x i8] c"dmatest.polled\00", align 1
@polled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_polled = internal constant %struct.kernel_param { ptr @__param_str_polled, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @polled } }, section "__param", align 4
@__UNIQUE_ID_polledtype260 = internal constant [29 x i8] c"dmatest.parmtype=polled:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_polled261 = internal constant [69 x i8] c"dmatest.parm=polled:Use polling for completion instead of interrupts\00", section ".modinfo", align 1
@__param_str_run = internal constant [12 x i8] c"dmatest.run\00", align 1
@run_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @dmatest_run_set, ptr @dmatest_run_get, ptr null }, [16 x i8] zeroinitializer }, align 32
@dmatest_run = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_run = internal constant %struct.kernel_param { ptr @__param_str_run, ptr null, ptr @run_ops, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @dmatest_run } }, section "__param", align 4
@__UNIQUE_ID_run262 = internal constant [47 x i8] c"dmatest.parm=run:Run the test (default: false)\00", section ".modinfo", align 1
@__param_str_channel = internal constant [16 x i8] c"dmatest.channel\00", align 1
@multi_chan_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @dmatest_chan_set, ptr @dmatest_chan_get, ptr null }, [16 x i8] zeroinitializer }, align 32
@newchan_kps = internal global { %struct.kparam_string, [24 x i8] } { %struct.kparam_string { i32 20, ptr @test_channel }, [24 x i8] zeroinitializer }, align 32
@__param_channel = internal constant %struct.kernel_param { ptr @__param_str_channel, ptr null, ptr @multi_chan_ops, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @newchan_kps } }, section "__param", align 4
@__UNIQUE_ID_channel263 = internal constant [66 x i8] c"dmatest.parm=channel:Bus ID of the channel to test (default: any)\00", section ".modinfo", align 1
@__param_str_test_list = internal constant [18 x i8] c"dmatest.test_list\00", align 1
@test_list_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr null, ptr @dmatest_test_list_get, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_test_list = internal constant %struct.kernel_param { ptr @__param_str_test_list, ptr null, ptr @test_list_ops, i16 292, i8 -1, i8 0, %union.anon.68 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_test_list264 = internal constant [47 x i8] c"dmatest.parm=test_list:Print current test list\00", section ".modinfo", align 1
@__param_str_wait = internal constant [13 x i8] c"dmatest.wait\00", align 1
@wait_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_bool, ptr @dmatest_wait_get, ptr null }, [16 x i8] zeroinitializer }, align 32
@wait = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_wait = internal constant %struct.kernel_param { ptr @__param_str_wait, ptr null, ptr @wait_ops, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @wait } }, section "__param", align 4
@__UNIQUE_ID_wait265 = internal constant [62 x i8] c"dmatest.parm=wait:Wait for tests to complete (default: false)\00", section ".modinfo", align 1
@__initcall__kmod_dmatest__273_1348_dmatest_init7 = internal global ptr @dmatest_init, section ".initcall7.init", align 4
@test_info = internal global { %struct.dmatest_info, [48 x i8] } { %struct.dmatest_info { %struct.dmatest_params zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @test_info, i64 96), ptr getelementptr (i8, ptr @test_info, i64 96) }, i32 0, i32 0, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.81, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @test_info, i64 164), ptr getelementptr (i8, ptr @test_info, i64 164) }, ptr getelementptr (i8, ptr @test_info, i64 112), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.82, i8 0, i8 4, i8 0, i32 0, i32 0 } }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@__exitcall_dmatest_exit = internal global ptr @dmatest_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author274 = internal constant [42 x i8] c"dmatest.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [33 x i8] c"dmatest.file=drivers/dma/dmatest\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [23 x i8] c"dmatest.license=GPL v2\00", section ".modinfo", align 1
@test_device = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@dmatest_run_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013dmatest: Channel misconfigured, can't continue\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dmatest_run_set\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/dmatest.c\00", [42 x i8] zeroinitializer }, align 32
@dmatest_run_set._entry_ptr = internal global ptr @dmatest_run_set._entry, section ".printk_index", align 4
@dmatest_run_set._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016dmatest: No channels configured, continue with any\0A\00", [42 x i8] zeroinitializer }, align 32
@dmatest_run_set._entry_ptr.5 = internal global ptr @dmatest_run_set._entry.3, section ".printk_index", align 4
@test_channel = internal global { [20 x i8], [44 x i8] } zeroinitializer, align 32
@dmatest_add_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014dmatest: No memory for %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dmatest_add_channel\00", [44 x i8] zeroinitializer }, align 32
@dmatest_add_channel._entry_ptr = internal global ptr @dmatest_add_channel._entry, section ".printk_index", align 4
@dmatest_add_channel._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014dmatest: DMA_COMPLETION_NO_ORDER, polled disabled\0A\00", [43 x i8] zeroinitializer }, align 32
@dmatest_add_channel._entry_ptr.10 = internal global ptr @dmatest_add_channel._entry.8, section ".printk_index", align 4
@dmatest_add_channel._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016dmatest: Added %u threads using %s\0A\00", [58 x i8] zeroinitializer }, align 32
@dmatest_add_channel._entry_ptr.13 = internal global ptr @dmatest_add_channel._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"copy\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xor\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pq\00", [29 x i8] zeroinitializer }, align 32
@dmatest_add_threads._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014dmatest: No memory for %s-%s%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dmatest_add_threads\00", [44 x i8] zeroinitializer }, align 32
@dmatest_add_threads._entry_ptr = internal global ptr @dmatest_add_threads._entry, section ".printk_index", align 4
@dmatest_add_threads.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&thread->done_wait\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-%s%u\00", [24 x i8] zeroinitializer }, align 32
@dmatest_add_threads._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014dmatest: Failed to create thread %s-%s%u\0A\00", [52 x i8] zeroinitializer }, align 32
@dmatest_add_threads._entry_ptr.24 = internal global ptr @dmatest_add_threads._entry.22, section ".printk_index", align 4
@dmatest_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dmatest: too many buffers (%d of 255 supported)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dmatest_func\00", [19 x i8] zeroinitializer }, align 32
@dmatest_func._entry_ptr = internal global ptr @dmatest_func._entry, section ".printk_index", align 4
@dmatest_func._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dmatest: %u-byte buffer too small for %d-byte alignment\0A\00", [37 x i8] zeroinitializer }, align 32
@dmatest_func._entry_ptr.29 = internal global ptr @dmatest_func._entry.27, section ".printk_index", align 4
@dmatest_func._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013dmatest: %u-byte transfer size must be lower than %u-buffer size\0A\00", [60 x i8] zeroinitializer }, align 32
@dmatest_func._entry_ptr.32 = internal global ptr @dmatest_func._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unmap data NULL\00", [16 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"src mapping error\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dst mapping error\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prep error\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"submit error\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test timed out\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"completion error status\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"completion busy status\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test passed\00", [20 x i8] zeroinitializer }, align 32
@dmatest_func.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.26, ptr @.str.2, ptr @.str.43, i8 0, i8 -41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmatest\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: verifying source buffer...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dmatest: %s: verifying source buffer...\0A\00", [55 x i8] zeroinitializer }, align 32
@dmatest_func.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.26, ptr @.str.2, ptr @.str.45, i8 0, i8 -38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: verifying dest buffer...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dmatest: %s: verifying dest buffer...\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data error\00", [21 x i8] zeroinitializer }, align 32
@dmatest_func._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.26, ptr @.str.2, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016dmatest: %s: summary %u tests, %u failures %llu.%02llu iops %llu KB/s (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@dmatest_func._entry_ptr.50 = internal global ptr @dmatest_func._entry.48, section ".printk_index", align 4
@thread_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @thread_wait, i64 44), ptr getelementptr (i8, ptr @thread_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016dmatest: %s: result #%u: '%s' with src_off=0x%x dst_off=0x%x len=0x%x (%ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@result._entry_ptr = internal global ptr @result._entry, section ".printk_index", align 4
@result._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016dmatest: %s: result #%u: '%s' with src_off=0x%x dst_off=0x%x len=0x%x (%lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@result._entry_ptr.55 = internal global ptr @result._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dmatest: Kernel memory may be corrupted!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@dbg_result.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dbg_result\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: result #%u: '%s' with src_off=0x%x dst_off=0x%x len=0x%x (%lu)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"dmatest: %s: result #%u: '%s' with src_off=0x%x dst_off=0x%x len=0x%x (%lu)\0A\00", [51 x i8] zeroinitializer }, align 32
@dmatest_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014dmatest: %s: %u errors suppressed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmatest_verify\00", [17 x i8] zeroinitializer }, align 32
@dmatest_verify._entry_ptr = internal global ptr @dmatest_verify._entry, section ".printk_index", align 4
@dmatest_mismatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014dmatest: %s: srcbuf[0x%x] overwritten! Expected %02x, got %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmatest_mismatch\00", [47 x i8] zeroinitializer }, align 32
@dmatest_mismatch._entry_ptr = internal global ptr @dmatest_mismatch._entry, section ".printk_index", align 4
@dmatest_mismatch._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014dmatest: %s: dstbuf[0x%x] not copied! Expected %02x, got %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@dmatest_mismatch._entry_ptr.68 = internal global ptr @dmatest_mismatch._entry.66, section ".printk_index", align 4
@dmatest_mismatch._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014dmatest: %s: dstbuf[0x%x] was copied! Expected %02x, got %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@dmatest_mismatch._entry_ptr.71 = internal global ptr @dmatest_mismatch._entry.69, section ".printk_index", align 4
@dmatest_mismatch._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014dmatest: %s: dstbuf[0x%x] mismatch! Expected %02x, got %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@dmatest_mismatch._entry_ptr.74 = internal global ptr @dmatest_mismatch._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"thread_wait.lock\00", [47 x i8] zeroinitializer }, align 32
@run_pending_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016dmatest: Started %u threads using %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"run_pending_tests\00", [46 x i8] zeroinitializer }, align 32
@run_pending_tests._entry_ptr = internal global ptr @run_pending_tests._entry, section ".printk_index", align 4
@.str.78 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dmatest_test_list_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016dmatest: %u threads using %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dmatest_test_list_get\00", [42 x i8] zeroinitializer }, align 32
@dmatest_test_list_get._entry_ptr = internal global ptr @dmatest_test_list_get._entry, section ".printk_index", align 4
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_info.lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_info.lock\00", [17 x i8] zeroinitializer }, align 32
@stop_threaded_test.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 1, i8 30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stop_threaded_test\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dropped channel %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dmatest: dropped channel %s\0A\00", [35 x i8] zeroinitializer }, align 32
@dmatest_cleanup_channel.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 -20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dmatest_cleanup_channel\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"thread %s exited with status %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dmatest: thread %s exited with status %d\0A\00", [54 x i8] zeroinitializer }, align 32
@switch.table.dmatest_add_threads = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.14, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.14, ptr @.str.14, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 6]
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"test_buf_size\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 24, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"threads_per_chan\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 33, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"max_channels\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 38, i32 21 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 43, i32 21 }
@___asan_gen_.102 = private unnamed_addr constant [8 x i8] c"dmatest\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 48, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"xor_sources\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 53, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"pq_sources\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 58, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 63, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"noverify\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 68, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"norandom\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 72, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 76, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 80, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"transfer_size\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 84, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"polled\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 88, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant [8 x i8] c"run_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 152, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"dmatest_run\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 156, i32 13 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"multi_chan_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 162, i32 38 }
@___asan_gen_.141 = private unnamed_addr constant [12 x i8] c"newchan_kps\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 168, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"test_list_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 176, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant [9 x i8] c"wait_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 289, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 244, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"test_info\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 145, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"test_device\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 28, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1198, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1203, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant [13 x i8] c"test_channel\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 167, i32 13 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1017, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1027, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1053, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 966, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 968, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 970, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 972, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 979, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 987, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 989, i32 18 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 992, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 647, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 654, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 695, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 740, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 756, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 773, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 803, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 817, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 840, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 848, i32 11 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 849, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 857, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 863, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 873, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 889, i32 11 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 920, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [12 x i8] c"thread_wait\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 459, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 462, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 444, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1169, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 57, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 471, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 421, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 379, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 383, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 386, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 389, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 243, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1131, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1264, i32 18 }
@___asan_gen_.396 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1318, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 147, i32 10 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1145, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.427 = private constant [25 x i8] c"../drivers/dma/dmatest.c\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 943, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [33 x i8] c"switch.table.dmatest_add_threads\00", align 1
@llvm.compiler.used = appending global [193 x ptr] [ptr @__UNIQUE_ID_alignment257, ptr @__UNIQUE_ID_alignmenttype256, ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_channel263, ptr @__UNIQUE_ID_device235, ptr @__UNIQUE_ID_devicetype234, ptr @__UNIQUE_ID_dmatest243, ptr @__UNIQUE_ID_dmatesttype242, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_iterations241, ptr @__UNIQUE_ID_iterationstype240, ptr @__UNIQUE_ID_license276, ptr @__UNIQUE_ID_max_channels239, ptr @__UNIQUE_ID_max_channelstype238, ptr @__UNIQUE_ID_norandom253, ptr @__UNIQUE_ID_norandomtype252, ptr @__UNIQUE_ID_noverify251, ptr @__UNIQUE_ID_noverifytype250, ptr @__UNIQUE_ID_polled261, ptr @__UNIQUE_ID_polledtype260, ptr @__UNIQUE_ID_pq_sources247, ptr @__UNIQUE_ID_pq_sourcestype246, ptr @__UNIQUE_ID_run262, ptr @__UNIQUE_ID_test_buf_size233, ptr @__UNIQUE_ID_test_buf_sizetype232, ptr @__UNIQUE_ID_test_list264, ptr @__UNIQUE_ID_threads_per_chan237, ptr @__UNIQUE_ID_threads_per_chantype236, ptr @__UNIQUE_ID_timeout249, ptr @__UNIQUE_ID_timeouttype248, ptr @__UNIQUE_ID_transfer_size259, ptr @__UNIQUE_ID_transfer_sizetype258, ptr @__UNIQUE_ID_verbose255, ptr @__UNIQUE_ID_verbosetype254, ptr @__UNIQUE_ID_wait265, ptr @__UNIQUE_ID_xor_sources245, ptr @__UNIQUE_ID_xor_sourcestype244, ptr @__exitcall_dmatest_exit, ptr @__initcall__kmod_dmatest__273_1348_dmatest_init7, ptr @__param_alignment, ptr @__param_channel, ptr @__param_device, ptr @__param_dmatest, ptr @__param_iterations, ptr @__param_max_channels, ptr @__param_norandom, ptr @__param_noverify, ptr @__param_polled, ptr @__param_pq_sources, ptr @__param_run, ptr @__param_test_buf_size, ptr @__param_test_list, ptr @__param_threads_per_chan, ptr @__param_timeout, ptr @__param_transfer_size, ptr @__param_verbose, ptr @__param_wait, ptr @__param_xor_sources, ptr @dmatest_add_channel._entry, ptr @dmatest_add_channel._entry.11, ptr @dmatest_add_channel._entry.8, ptr @dmatest_add_channel._entry_ptr, ptr @dmatest_add_channel._entry_ptr.10, ptr @dmatest_add_channel._entry_ptr.13, ptr @dmatest_add_threads._entry, ptr @dmatest_add_threads._entry.22, ptr @dmatest_add_threads._entry_ptr, ptr @dmatest_add_threads._entry_ptr.24, ptr @dmatest_exit, ptr @dmatest_func._entry, ptr @dmatest_func._entry.27, ptr @dmatest_func._entry.30, ptr @dmatest_func._entry.48, ptr @dmatest_func._entry_ptr, ptr @dmatest_func._entry_ptr.29, ptr @dmatest_func._entry_ptr.32, ptr @dmatest_func._entry_ptr.50, ptr @dmatest_mismatch._entry, ptr @dmatest_mismatch._entry.66, ptr @dmatest_mismatch._entry.69, ptr @dmatest_mismatch._entry.72, ptr @dmatest_mismatch._entry_ptr, ptr @dmatest_mismatch._entry_ptr.68, ptr @dmatest_mismatch._entry_ptr.71, ptr @dmatest_mismatch._entry_ptr.74, ptr @dmatest_run_set._entry, ptr @dmatest_run_set._entry.3, ptr @dmatest_run_set._entry_ptr, ptr @dmatest_run_set._entry_ptr.5, ptr @dmatest_test_list_get._entry, ptr @dmatest_test_list_get._entry_ptr, ptr @dmatest_verify._entry, ptr @dmatest_verify._entry_ptr, ptr @result._entry, ptr @result._entry.53, ptr @result._entry_ptr, ptr @result._entry_ptr.55, ptr @run_pending_tests._entry, ptr @run_pending_tests._entry_ptr, ptr @test_buf_size, ptr @threads_per_chan, ptr @max_channels, ptr @iterations, ptr @dmatest, ptr @xor_sources, ptr @pq_sources, ptr @timeout, ptr @noverify, ptr @norandom, ptr @verbose, ptr @alignment, ptr @transfer_size, ptr @polled, ptr @run_ops, ptr @dmatest_run, ptr @multi_chan_ops, ptr @newchan_kps, ptr @test_list_ops, ptr @wait_ops, ptr @wait, ptr @test_info, ptr @test_device, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @test_channel, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @dmatest_add_threads.__key, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @thread_wait, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @switch.table.dmatest_add_threads], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_buf_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threads_per_chan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iterations to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xor_sources to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pq_sources to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noverify to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norandom to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alignment to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transfer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_run to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_chan_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @newchan_kps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_list_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_device to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_run_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_run_set._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_channel to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_add_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_add_channel._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_add_channel._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_add_threads._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_add_threads.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_add_threads._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_func._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_func._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_func._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @result._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_mismatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_mismatch._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_mismatch._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_mismatch._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_pending_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmatest_test_list_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dmatest_add_threads to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dmatest_init() #0 section ".init.text" align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @dmatest_run, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4), i32 noundef 0) #15
  tail call fastcc void @add_threaded_test()
  tail call fastcc void @run_pending_tests()
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4)) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %if.end.if.end18_crit_edge, label %land.lhs.true

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @wait, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end18_crit_edge, label %do.body6

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

do.body6:                                         ; preds = %land.lhs.true
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1338) #15
  %call = tail call fastcc zeroext i1 @is_threaded_test_run()
  br i1 %call, label %if.end11, label %do.body6.if.end18_crit_edge

do.body6.if.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end11:                                         ; preds = %do.body6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call1230 = call i32 @prepare_to_wait_event(ptr noundef nonnull @thread_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call1331 = call fastcc zeroext i1 @is_threaded_test_run()
  br i1 %call1331, label %if.end11.cleanup_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  call void @schedule() #15
  %call12 = call i32 @prepare_to_wait_event(ptr noundef nonnull @thread_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call13 = call fastcc zeroext i1 @is_threaded_test_run()
  br i1 %call13, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @thread_wait, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end18

if.end18:                                         ; preds = %for.end, %do.body6.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  store i8 1, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 5), align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dmatest_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4), i32 noundef 0) #15
  tail call fastcc void @stop_threaded_test()
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4)) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_threaded_test() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not4 = icmp eq ptr %0, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not4, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %do.end.for.body_crit_edge, %entry.for.body_crit_edge
  %dtc.05 = phi ptr [ %_dtc.07, %do.end.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %dtc.05 to i32
  call void @__asan_load4_noabort(i32 %1)
  %_dtc.07 = load ptr, ptr %dtc.05, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dtc.05) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dtc.05, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %dtc.05 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dtc.05, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %dtc.05 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %dtc.05, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dtc.05, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chan8 = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.05, i32 0, i32 1
  %10 = ptrtoint ptr %chan8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan8, align 4
  tail call fastcc void @dmatest_cleanup_channel(ptr noundef %dtc.05)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stop_threaded_test.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stop_threaded_test, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !340

if.then:                                          ; preds = %list_del.exit
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i1, label %if.then.dma_chan_name.exit_crit_edge

if.then.dma_chan_name.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit

if.end.i.i1:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i1, %if.then.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i1 ], [ %15, %if.then.dma_chan_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stop_threaded_test.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.85, ptr noundef %retval.0.i.i) #15
  br label %do.end

do.end:                                           ; preds = %dma_chan_name.exit, %list_del.exit
  tail call void @dma_release_channel(ptr noundef %11) #15
  %cmp.not = icmp eq ptr %_dtc.07, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmatest_run_set(ptr noundef %val, ptr noundef %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4), i32 noundef 0) #15
  %call = tail call i32 @param_set_bool(ptr noundef %val, ptr noundef %kp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %entry
  %0 = load i8, ptr @dmatest_run, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool2.not = icmp eq i8 %0, 0
  br i1 %tobool2.not, label %if.else20, label %if.then3

if.then3:                                         ; preds = %if.else
  %dtc.04.i = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not5.i = icmp eq ptr %dtc.04.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not5.i, label %if.then3.if.then5_crit_edge, label %if.then3.for.body.i_crit_edge

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

if.then3.if.then5_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

for.cond.loopexit.i:                              ; preds = %for.cond6.i
  %1 = ptrtoint ptr %dtc.06.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %dtc.0.i = load ptr, ptr %dtc.06.i, align 4
  %cmp.not.i = icmp eq ptr %dtc.0.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.cond.loopexit.i.if.then5_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond.loopexit.i.if.then5_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %dtc.06.i = phi ptr [ %dtc.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %dtc.04.i, %if.then3.for.body.i_crit_edge ]
  %threads.i = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.06.i, i32 0, i32 2
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body11.i.for.cond6.i_crit_edge, %for.body.i
  %thread.0.in.i = phi ptr [ %threads.i, %for.body.i ], [ %thread.0.i, %for.body11.i.for.cond6.i_crit_edge ]
  %2 = ptrtoint ptr %thread.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %thread.0.i = load ptr, ptr %thread.0.in.i, align 4
  %cmp9.not.i = icmp eq ptr %thread.0.i, %threads.i
  br i1 %cmp9.not.i, label %for.cond.loopexit.i, label %for.body11.i

for.body11.i:                                     ; preds = %for.cond6.i
  %pending.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.0.i, i32 0, i32 10
  %3 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pending.i, align 1, !range !339
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %for.body11.i.for.cond6.i_crit_edge, label %for.body11.i.if.end19_crit_edge

for.body11.i.if.end19_crit_edge:                  ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

for.body11.i.for.cond6.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond6.i

if.then5:                                         ; preds = %for.cond.loopexit.i.if.then5_crit_edge, %if.then3.if.then5_crit_edge
  %5 = load i32, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.end13, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  br label %cleanup

do.end13:                                         ; preds = %if.then5
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #18
  %call16 = tail call fastcc zeroext i1 @is_threaded_test_run()
  br i1 %call16, label %do.end13.if.end_crit_edge, label %if.then17

do.end13.if.end_crit_edge:                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then17:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @stop_threaded_test()
  br label %if.end

if.end:                                           ; preds = %if.then17, %do.end13.if.end_crit_edge
  tail call fastcc void @add_threaded_test()
  br label %if.end19

if.end19:                                         ; preds = %if.end, %for.body11.i.if.end19_crit_edge
  %6 = load i8, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 5), align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i39 = icmp eq i8 %6, 0
  br i1 %tobool.not.i39, label %if.end19.cleanup_crit_edge, label %if.end.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end19
  %dtc.05.i.i = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not6.i.i = icmp eq ptr %dtc.05.i.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not6.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i.i:                                     ; preds = %dma_chan_name.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %dtc.07.i.i = phi ptr [ %dtc.0.i.i, %dma_chan_name.exit.i.i.for.body.i.i_crit_edge ], [ %dtc.05.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %threads.i.i = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.07.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %threads.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %thread.01.i.i = load ptr, ptr %threads.i.i, align 4
  %cmp9.not2.i.i = icmp eq ptr %thread.01.i.i, %threads.i.i
  br i1 %cmp9.not2.i.i, label %for.body.i.i.do.end.i.i_crit_edge, label %for.body.i.i.for.body11.i.i_crit_edge

for.body.i.i.for.body11.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body11.i.i

for.body.i.i.do.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

for.body11.i.i:                                   ; preds = %for.body11.i.i.for.body11.i.i_crit_edge, %for.body.i.i.for.body11.i.i_crit_edge
  %thread.04.i.i = phi ptr [ %thread.0.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %thread.01.i.i, %for.body.i.i.for.body11.i.i_crit_edge ]
  %thread_count.03.i.i = phi i32 [ %inc.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ 0, %for.body.i.i.for.body11.i.i_crit_edge ]
  %task.i.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.04.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 4
  %call.i.i = tail call i32 @wake_up_process(ptr noundef %9) #15
  %inc.i.i = add i32 %thread_count.03.i.i, 1
  %10 = ptrtoint ptr %thread.04.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %thread.0.i.i = load ptr, ptr %thread.04.i.i, align 4
  %cmp9.not.i.i = icmp eq ptr %thread.0.i.i, %threads.i.i
  br i1 %cmp9.not.i.i, label %for.body11.i.i.do.end.i.i_crit_edge, label %for.body11.i.i.for.body11.i.i_crit_edge

for.body11.i.i.for.body11.i.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11.i.i

for.body11.i.i.do.end.i.i_crit_edge:              ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body11.i.i.do.end.i.i_crit_edge, %for.body.i.i.do.end.i.i_crit_edge
  %thread_count.0.lcssa.i.i = phi i32 [ 0, %for.body.i.i.do.end.i.i_crit_edge ], [ %inc.i.i, %for.body11.i.i.do.end.i.i_crit_edge ]
  %chan.i.i = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.07.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i.i, align 4
  %init_name.i.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.dma_chan_name.exit.i.i_crit_edge

do.end.i.i.dma_chan_name.exit.i.i_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %device.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i.i.i, align 4
  br label %dma_chan_name.exit.i.i

dma_chan_name.exit.i.i:                           ; preds = %if.end.i.i.i.i, %do.end.i.i.dma_chan_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %18, %if.end.i.i.i.i ], [ %16, %do.end.i.i.dma_chan_name.exit.i.i_crit_edge ]
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %thread_count.0.lcssa.i.i, ptr noundef %retval.0.i.i.i.i) #18
  %19 = ptrtoint ptr %dtc.07.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %dtc.0.i.i = load ptr, ptr %dtc.07.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %dtc.0.i.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i.i, label %dma_chan_name.exit.i.i.cleanup_crit_edge, label %dma_chan_name.exit.i.i.for.body.i.i_crit_edge

dma_chan_name.exit.i.i.for.body.i.i_crit_edge:    ; preds = %dma_chan_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

dma_chan_name.exit.i.i.cleanup_crit_edge:         ; preds = %dma_chan_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @stop_threaded_test()
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %dma_chan_name.exit.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.else20 ], [ 0, %dma_chan_name.exit.i.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4)) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmatest_run_get(ptr noundef %val, ptr noundef %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4), i32 noundef 0) #15
  %dtc.07.i = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not8.i = icmp eq ptr %dtc.07.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not8.i, label %entry.if.then2_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %0 = ptrtoint ptr %dtc.09.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dtc.0.i = load ptr, ptr %dtc.09.i, align 4
  %cmp.not.i = icmp eq ptr %dtc.0.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.cond.loopexit.i.for.body.i14_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond.loopexit.i.for.body.i14_crit_edge:       ; preds = %for.cond.loopexit.i
  br label %for.body.i14

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dtc.09.i = phi ptr [ %dtc.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %dtc.07.i, %entry.for.body.i_crit_edge ]
  %threads.i = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.09.i, i32 0, i32 2
  %1 = ptrtoint ptr %threads.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %thread.04.i = load ptr, ptr %threads.i, align 4
  %cmp9.not5.i = icmp eq ptr %thread.04.i, %threads.i
  br i1 %cmp9.not5.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %thread.06.i = phi ptr [ %thread.0.i, %for.inc.i.for.body11.i_crit_edge ], [ %thread.04.i, %for.body.i.for.body11.i_crit_edge ]
  %done.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i, i32 0, i32 9
  %2 = ptrtoint ptr %done.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %done.i, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body11.i
  %pending.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i, i32 0, i32 10
  %4 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pending.i, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not.i = icmp eq i8 %5, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end3_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %thread.06.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %thread.0.i = load ptr, ptr %thread.06.i, align 4
  %cmp9.not.i = icmp eq ptr %thread.0.i, %threads.i
  br i1 %cmp9.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.cond.loopexit.i12:                            ; preds = %for.cond6.i
  %7 = ptrtoint ptr %dtc.06.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %dtc.0.i10 = load ptr, ptr %dtc.06.i, align 4
  %cmp.not.i11 = icmp eq ptr %dtc.0.i10, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i11, label %for.cond.loopexit.i12.if.then2_crit_edge, label %for.cond.loopexit.i12.for.body.i14_crit_edge

for.cond.loopexit.i12.for.body.i14_crit_edge:     ; preds = %for.cond.loopexit.i12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i14

for.cond.loopexit.i12.if.then2_crit_edge:         ; preds = %for.cond.loopexit.i12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2

for.body.i14:                                     ; preds = %for.cond.loopexit.i12.for.body.i14_crit_edge, %for.cond.loopexit.i.for.body.i14_crit_edge
  %dtc.06.i = phi ptr [ %dtc.0.i10, %for.cond.loopexit.i12.for.body.i14_crit_edge ], [ %dtc.07.i, %for.cond.loopexit.i.for.body.i14_crit_edge ]
  %threads.i13 = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.06.i, i32 0, i32 2
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body11.i19.for.cond6.i_crit_edge, %for.body.i14
  %thread.0.in.i = phi ptr [ %threads.i13, %for.body.i14 ], [ %thread.0.i15, %for.body11.i19.for.cond6.i_crit_edge ]
  %8 = ptrtoint ptr %thread.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %thread.0.i15 = load ptr, ptr %thread.0.in.i, align 4
  %cmp9.not.i16 = icmp eq ptr %thread.0.i15, %threads.i13
  br i1 %cmp9.not.i16, label %for.cond.loopexit.i12, label %for.body11.i19

for.body11.i19:                                   ; preds = %for.cond6.i
  %pending.i17 = getelementptr inbounds %struct.dmatest_thread, ptr %thread.0.i15, i32 0, i32 10
  %9 = ptrtoint ptr %pending.i17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pending.i17, align 1, !range !339
  %tobool.not.i18 = icmp eq i8 %10, 0
  br i1 %tobool.not.i18, label %for.body11.i19.for.cond6.i_crit_edge, label %for.body11.i19.if.end3_crit_edge

for.body11.i19.if.end3_crit_edge:                 ; preds = %for.body11.i19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

for.body11.i19.for.cond6.i_crit_edge:             ; preds = %for.body11.i19
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond6.i

if.then2:                                         ; preds = %for.cond.loopexit.i12.if.then2_crit_edge, %entry.if.then2_crit_edge
  tail call fastcc void @stop_threaded_test()
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %for.body11.i19.if.end3_crit_edge, %land.lhs.true.i.if.end3_crit_edge
  %storemerge = phi i8 [ 0, %if.then2 ], [ 0, %for.body11.i19.if.end3_crit_edge ], [ 1, %land.lhs.true.i.if.end3_crit_edge ]
  store i8 %storemerge, ptr @dmatest_run, align 1
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4)) #15
  %call5 = tail call i32 @param_get_bool(ptr noundef %val, ptr noundef %kp) #15
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_bool(ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_threaded_test_run() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dtc.07 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not8 = icmp eq ptr %dtc.07, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not8, label %entry.cleanup25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup25

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %dtc.09 to i32
  call void @__asan_load4_noabort(i32 %0)
  %dtc.0 = load ptr, ptr %dtc.09, align 4
  %cmp.not = icmp eq ptr %dtc.0, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not, label %for.cond.loopexit.cleanup25_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.loopexit.cleanup25_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup25

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %dtc.09 = phi ptr [ %dtc.0, %for.cond.loopexit.for.body_crit_edge ], [ %dtc.07, %entry.for.body_crit_edge ]
  %threads = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.09, i32 0, i32 2
  %1 = ptrtoint ptr %threads to i32
  call void @__asan_load4_noabort(i32 %1)
  %thread.04 = load ptr, ptr %threads, align 4
  %cmp9.not5 = icmp eq ptr %thread.04, %threads
  br i1 %cmp9.not5, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %thread.06 = phi ptr [ %thread.0, %for.inc.for.body11_crit_edge ], [ %thread.04, %for.body.for.body11_crit_edge ]
  %done = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06, i32 0, i32 9
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %done, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body11
  %pending = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06, i32 0, i32 10
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pending, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not = icmp eq i8 %5, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup25_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.cleanup25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup25

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body11.for.inc_crit_edge
  %6 = ptrtoint ptr %thread.06 to i32
  call void @__asan_load4_noabort(i32 %6)
  %thread.0 = load ptr, ptr %thread.06, align 4
  %cmp9.not = icmp eq ptr %thread.0, %threads
  br i1 %cmp9.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit

cleanup25:                                        ; preds = %land.lhs.true.cleanup25_crit_edge, %for.cond.loopexit.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %cmp.not3 = phi i1 [ false, %entry.cleanup25_crit_edge ], [ true, %land.lhs.true.cleanup25_crit_edge ], [ false, %for.cond.loopexit.cleanup25_crit_edge ]
  ret i1 %cmp.not3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_threaded_test() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @test_buf_size, align 4
  store i32 %0, ptr @test_info, align 4
  %call = tail call ptr @strim(ptr noundef nonnull @test_channel) #15
  %call2 = tail call i32 @strlcpy(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 1), ptr noundef %call, i32 noundef 20) #15
  %call4 = tail call ptr @strim(ptr noundef nonnull @test_device) #15
  %call5 = tail call i32 @strlcpy(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 2), ptr noundef %call4, i32 noundef 32) #15
  %1 = load i32, ptr @threads_per_chan, align 4
  store i32 %1, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 3), align 4
  %2 = load i32, ptr @max_channels, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 4), align 4
  %3 = load i32, ptr @iterations, align 4
  store i32 %3, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 5), align 4
  %4 = load i32, ptr @xor_sources, align 4
  store i32 %4, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 6), align 4
  %5 = load i32, ptr @pq_sources, align 4
  store i32 %5, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 7), align 4
  %6 = load i32, ptr @timeout, align 4
  store i32 %6, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 8), align 4
  %7 = load i8, ptr @noverify, align 1, !range !339
  store i8 %7, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 9), align 4
  %8 = load i8, ptr @norandom, align 1, !range !339
  store i8 %8, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 10), align 1
  %9 = load i32, ptr @alignment, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 11), align 4
  %10 = load i32, ptr @transfer_size, align 4
  store i32 %10, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 12), align 4
  %11 = load i8, ptr @polled, align 1, !range !339
  store i8 %11, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 13), align 4
  tail call fastcc void @request_channels(i32 noundef 0)
  tail call fastcc void @request_channels(i32 noundef 6)
  tail call fastcc void @request_channels(i32 noundef 2)
  tail call fastcc void @request_channels(i32 noundef 3)
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @request_channels(i32 noundef %type) unnamed_addr #3 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #15
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef %type, ptr noundef nonnull %mask) #15
  %call6 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @filter, ptr noundef nonnull @test_info, ptr noundef null) #15
  %tobool.not7 = icmp eq ptr %call6, null
  br i1 %tobool.not7, label %entry.for.end_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then:                                          ; preds = %cleanup.if.then_crit_edge, %entry.if.then_crit_edge
  %call8 = phi ptr [ %call, %cleanup.if.then_crit_edge ], [ %call6, %entry.if.then_crit_edge ]
  %1 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 20) #19
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %call8, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.if.then4_crit_edge

do.end.i.if.then4_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i.i, align 4
  br label %if.then4

if.end.i:                                         ; preds = %if.then
  %chan3.i = getelementptr inbounds %struct.dmatest_chan, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %chan3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %chan3.i, align 8
  %threads.i = getelementptr inbounds %struct.dmatest_chan, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %threads.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %threads.i, ptr %threads.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dmatest_chan, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %threads.i, ptr %prev.i.i, align 8
  %cap_mask.i = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 6
  %13 = ptrtoint ptr %cap_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cap_mask.i, align 4
  %15 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not.i = icmp eq i32 %15, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %16 = load i8, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 13), align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not.i = icmp eq i8 %16, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  store i8 0, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 13), align 4
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #18
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then7.i, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %17 = ptrtoint ptr %cap_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %cap_mask.i, align 4
  %and1.i.i4.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i4.i)
  %tobool18.not.i = icmp eq i32 %and1.i.i4.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end24.i_crit_edge, label %if.then19.i

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end15.i
  %19 = load i32, ptr @dmatest, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.then20.i, label %if.then19.i.if.end24.i_crit_edge

if.then19.i.if.end24.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %call21.i = call fastcc i32 @dmatest_add_threads(ptr noundef nonnull %call7.i.i, i32 noundef 0) #15
  %20 = call i32 @llvm.smax.i32(i32 %call21.i, i32 0) #15
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.then19.i.if.end24.i_crit_edge, %if.end15.i.if.end24.i_crit_edge
  %thread_count.0.i = phi i32 [ %20, %if.then20.i ], [ 0, %if.then19.i.if.end24.i_crit_edge ], [ 0, %if.end15.i.if.end24.i_crit_edge ]
  %21 = ptrtoint ptr %cap_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %cap_mask.i, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool27.not.i = icmp eq i32 %23, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end39.i_crit_edge, label %if.then28.i

if.end24.i.if.end39.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39.i

if.then28.i:                                      ; preds = %if.end24.i
  %24 = load i32, ptr @dmatest, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp29.i = icmp eq i32 %24, 1
  br i1 %cmp29.i, label %if.then30.i, label %if.then28.i.if.end39.i_crit_edge

if.then28.i.if.end39.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39.i

if.then30.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #17
  %call31.i = call fastcc i32 @dmatest_add_threads(ptr noundef nonnull %call7.i.i, i32 noundef 6) #15
  %25 = call i32 @llvm.smax.i32(i32 %call31.i, i32 0) #15
  %add37.i = add nuw i32 %25, %thread_count.0.i
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then30.i, %if.then28.i.if.end39.i_crit_edge, %if.end24.i.if.end39.i_crit_edge
  %thread_count.1.i = phi i32 [ %add37.i, %if.then30.i ], [ %thread_count.0.i, %if.then28.i.if.end39.i_crit_edge ], [ %thread_count.0.i, %if.end24.i.if.end39.i_crit_edge ]
  %26 = ptrtoint ptr %cap_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %cap_mask.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool42.not.i = icmp eq i32 %28, 0
  br i1 %tobool42.not.i, label %if.end39.i.if.end51.i_crit_edge, label %if.then43.i

if.end39.i.if.end51.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  %call44.i = call fastcc i32 @dmatest_add_threads(ptr noundef nonnull %call7.i.i, i32 noundef 2) #15
  %29 = call i32 @llvm.smax.i32(i32 %call44.i, i32 0) #15
  %add50.i = add i32 %29, %thread_count.1.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then43.i, %if.end39.i.if.end51.i_crit_edge
  %thread_count.2.i = phi i32 [ %add50.i, %if.then43.i ], [ %thread_count.1.i, %if.end39.i.if.end51.i_crit_edge ]
  %30 = ptrtoint ptr %cap_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %cap_mask.i, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %if.end51.i.do.end66.i_crit_edge, label %if.then55.i

if.end51.i.do.end66.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66.i

if.then55.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #17
  %call56.i = call fastcc i32 @dmatest_add_threads(ptr noundef nonnull %call7.i.i, i32 noundef 3) #15
  %33 = call i32 @llvm.smax.i32(i32 %call56.i, i32 0) #15
  %add62.i = add i32 %33, %thread_count.2.i
  br label %do.end66.i

do.end66.i:                                       ; preds = %if.then55.i, %if.end51.i.do.end66.i_crit_edge
  %thread_count.3.i = phi i32 [ %add62.i, %if.then55.i ], [ %thread_count.2.i, %if.end51.i.do.end66.i_crit_edge ]
  %dev.i11.i = getelementptr inbounds %struct.dma_chan, ptr %call8, i32 0, i32 5
  %34 = ptrtoint ptr %dev.i11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i11.i, align 4
  %init_name.i.i12.i = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %init_name.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i12.i, align 8
  %tobool.not.i.i13.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i13.i, label %if.end.i.i15.i, label %do.end66.i.dma_chan_name.exit17.i_crit_edge

do.end66.i.dma_chan_name.exit17.i_crit_edge:      ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit17.i

if.end.i.i15.i:                                   ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #17
  %device.i14.i = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %device.i14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device.i14.i, align 4
  br label %dma_chan_name.exit17.i

dma_chan_name.exit17.i:                           ; preds = %if.end.i.i15.i, %do.end66.i.dma_chan_name.exit17.i_crit_edge
  %retval.0.i.i16.i = phi ptr [ %39, %if.end.i.i15.i ], [ %37, %do.end66.i.dma_chan_name.exit17.i_crit_edge ]
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %thread_count.3.i, ptr noundef %retval.0.i.i16.i) #18
  %40 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %40, ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)) #15
  br i1 %call.i.i.i, label %if.end.i.i18.i, label %dma_chan_name.exit17.i.if.end5_crit_edge

dma_chan_name.exit17.i.if.end5_crit_edge:         ; preds = %dma_chan_name.exit17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.end.i.i18.i:                                   ; preds = %dma_chan_name.exit17.i
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1, i32 1), align 4
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %call7.i.i, ptr %40, align 4
  br label %if.end5

if.then4:                                         ; preds = %if.end.i.i.i, %do.end.i.if.then4_crit_edge
  %retval.0.i.i.i = phi ptr [ %9, %if.end.i.i.i ], [ %7, %do.end.i.if.then4_crit_edge ]
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i.i) #18
  call void @dma_release_channel(ptr noundef nonnull %call8) #15
  br label %for.end

if.end5:                                          ; preds = %if.end.i.i18.i, %dma_chan_name.exit17.i.if.end5_crit_edge
  %44 = load i32, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 2), align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 2), align 4
  %45 = load i32, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool6.not = icmp eq i32 %45, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %land.lhs.true

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %46 = load i32, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %45)
  %cmp.not = icmp ult i32 %46, %45
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @filter, ptr noundef nonnull @test_info, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup.for.end_crit_edge, label %cleanup.if.then_crit_edge

cleanup.if.then_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.then4, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @filter(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %param) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr inbounds %struct.dmatest_params, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %entry.land.rhs_crit_edge, label %if.end.i

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

if.end.i:                                         ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.dmatest_match_channel.exit_crit_edge

if.end.i.dmatest_match_channel.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_match_channel.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i.i, align 4
  br label %dmatest_match_channel.exit

dmatest_match_channel.exit:                       ; preds = %if.end.i.i.i, %if.end.i.dmatest_match_channel.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %7, %if.end.i.i.i ], [ %5, %if.end.i.dmatest_match_channel.exit_crit_edge ]
  %call3.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i.i, ptr noundef %channel.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %dmatest_match_channel.exit.land.rhs_crit_edge, label %dmatest_match_channel.exit.land.end_crit_edge

dmatest_match_channel.exit.land.end_crit_edge:    ; preds = %dmatest_match_channel.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

dmatest_match_channel.exit.land.rhs_crit_edge:    ; preds = %dmatest_match_channel.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

land.rhs:                                         ; preds = %dmatest_match_channel.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %device1.i = getelementptr inbounds %struct.dmatest_params, ptr %param, i32 0, i32 2
  %8 = ptrtoint ptr %device1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %device1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i4 = icmp eq i8 %9, 0
  br i1 %cmp.i4, label %land.rhs.land.end_crit_edge, label %if.end.i5

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

if.end.i5:                                        ; preds = %land.rhs
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i5.dev_name.exit.i_crit_edge

if.end.i5.dev_name.exit.i_crit_edge:              ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i5.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.end.i5.dev_name.exit.i_crit_edge ]
  %call4.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %device1.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 0
  br label %land.end

land.end:                                         ; preds = %dev_name.exit.i, %land.rhs.land.end_crit_edge, %dmatest_match_channel.exit.land.end_crit_edge
  %18 = phi i1 [ false, %dmatest_match_channel.exit.land.end_crit_edge ], [ %cmp5.i, %dev_name.exit.i ], [ true, %land.rhs.land.end_crit_edge ]
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmatest_add_threads(ptr noundef %dtc, i32 noundef %type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan2 = getelementptr inbounds %struct.dmatest_chan, ptr %dtc, i32 0, i32 1
  %0 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %2 = icmp ult i32 %type, 7
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %type to i8
  %switch.shifted = lshr i8 77, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.dmatest_add_threads, i32 0, i32 %type
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1519.not = icmp eq i32 %5, 0
  br i1 %cmp1519.not, label %switch.lookup.cleanup_crit_edge, label %for.body.lr.ph

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %switch.lookup
  %dev.i1 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %threads = getelementptr inbounds %struct.dmatest_chan, ptr %dtc, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.dmatest_chan, ptr %dtc, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 120) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end19

do.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %dev.i1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i1, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.dma_chan_name.exit_crit_edge

do.end.dma_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %do.end.dma_chan_name.exit_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i, ptr noundef nonnull %switch.load, i32 noundef %i.020) #18
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %info20 = getelementptr inbounds %struct.dmatest_thread, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %info20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @test_info, ptr %info20, align 8
  %14 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan2, align 4
  %chan22 = getelementptr inbounds %struct.dmatest_thread, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %chan22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %chan22, align 8
  %type23 = getelementptr inbounds %struct.dmatest_thread, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %type, ptr %type23, align 4
  %done_wait = getelementptr inbounds %struct.dmatest_thread, ptr %call7.i.i, i32 0, i32 7
  %wait = getelementptr inbounds %struct.dmatest_thread, ptr %call7.i.i, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %done_wait, ptr %wait, align 8
  tail call void @__init_waitqueue_head(ptr noundef %done_wait, ptr noundef nonnull @.str.20, ptr noundef nonnull @dmatest_add_threads.__key) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !341
  %19 = ptrtoint ptr %dev.i1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i1, align 4
  %init_name.i.i2 = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %init_name.i.i2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i2, align 8
  %tobool.not.i.i3 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i3, label %if.end.i.i5, label %if.end19.dma_chan_name.exit7_crit_edge

if.end19.dma_chan_name.exit7_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit7

if.end.i.i5:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %device.i4 = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %device.i4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i4, align 4
  br label %dma_chan_name.exit7

dma_chan_name.exit7:                              ; preds = %if.end.i.i5, %if.end19.dma_chan_name.exit7_crit_edge
  %retval.0.i.i6 = phi ptr [ %24, %if.end.i.i5 ], [ %22, %if.end19.dma_chan_name.exit7_crit_edge ]
  %call35 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dmatest_func, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i6, ptr noundef nonnull %switch.load, i32 noundef %i.020) #15
  %task = getelementptr inbounds %struct.dmatest_thread, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call35, ptr %task, align 4
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end41, label %if.end45

do.end41:                                         ; preds = %dma_chan_name.exit7
  %26 = ptrtoint ptr %dev.i1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i1, align 4
  %init_name.i.i9 = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %init_name.i.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i9, align 8
  %tobool.not.i.i10 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i10, label %if.end.i.i12, label %do.end41.dma_chan_name.exit14_crit_edge

do.end41.dma_chan_name.exit14_crit_edge:          ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit14

if.end.i.i12:                                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #17
  %device.i11 = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %device.i11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device.i11, align 4
  br label %dma_chan_name.exit14

dma_chan_name.exit14:                             ; preds = %if.end.i.i12, %do.end41.dma_chan_name.exit14_crit_edge
  %retval.0.i.i13 = phi ptr [ %31, %if.end.i.i12 ], [ %29, %do.end41.dma_chan_name.exit14_crit_edge ]
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %retval.0.i.i13, ptr noundef nonnull %switch.load, i32 noundef %i.020) #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end45:                                         ; preds = %dma_chan_name.exit7
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call35, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !342
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end45.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !343

if.end45.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end45
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !344

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end45.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end45.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %35, ptr noundef %threads) #15
  br i1 %call.i.i, label %if.end.i.i15, label %get_task_struct.exit.list_add_tail.exit_crit_edge

get_task_struct.exit.list_add_tail.exit_crit_edge: ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i15:                                     ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %threads, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i15, %get_task_struct.exit.list_add_tail.exit_crit_edge
  %pending = getelementptr inbounds %struct.dmatest_thread, ptr %call7.i.i, i32 0, i32 10
  %40 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %pending, align 1
  %inc = add nuw i32 %i.020, 1
  %41 = load i32, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 3), align 4
  %cmp15 = icmp ult i32 %inc, %41
  br i1 %cmp15, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %dma_chan_name.exit14, %dma_chan_name.exit, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %i.020, %dma_chan_name.exit14 ], [ %i.020, %dma_chan_name.exit ], [ 0, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ %inc, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmatest_func(ptr noundef %data) #3 align 64 {
entry:
  %state.i = alloca %struct.dma_tx_state, align 4
  %buf.i1037 = alloca i32, align 4
  %buf.i1036 = alloca i32, align 4
  %buf.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %test_done = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 8
  %call = tail call zeroext i1 @set_freezable() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !345
  %pending = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pending, align 1
  %info4 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %info4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info4, align 4
  %chan6 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %chan6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan6, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %chan_dma_dev.i = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %chan_dma_dev.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chan_dma_dev.i, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i997, label %if.then.i996

if.then.i996:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  br label %dmaengine_get_dma_device.exit

if.end.i997:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev3.i = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %11 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3.i, align 4
  br label %dmaengine_get_dma_device.exit

dmaengine_get_dma_device.exit:                    ; preds = %if.end.i997, %if.then.i996
  %retval.0.i998 = phi ptr [ %device.i, %if.then.i996 ], [ %12, %if.end.i997 ]
  %src8 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 4
  %dst9 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 5
  %type = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 6
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge [
    i32 0, label %if.then
    i32 6, label %if.then16
    i32 2, label %if.then32
    i32 3, label %if.then50
  ]

dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge: ; preds = %dmaengine_get_dma_device.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_persec.exit

if.then:                                          ; preds = %dmaengine_get_dma_device.exit
  %alignment = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 11
  %16 = ptrtoint ptr %alignment to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alignment, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %cond.true, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 10
  %18 = ptrtoint ptr %copy_align to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %copy_align, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %19, %cond.true ], [ %17, %if.then.cond.end_crit_edge ]
  %cnt = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %cnt, align 4
  %cnt12 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %cnt12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %cnt12, align 4
  br label %if.end75

if.then16:                                        ; preds = %dmaengine_get_dma_device.exit
  %alignment17 = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 11
  %22 = ptrtoint ptr %alignment17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %alignment17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp18 = icmp slt i32 %23, 0
  br i1 %cmp18, label %cond.true20, label %if.then16.cond.end23_crit_edge

if.then16.cond.end23_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end23

cond.true20:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %fill_align = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 13
  %24 = ptrtoint ptr %fill_align to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fill_align, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true20, %if.then16.cond.end23_crit_edge
  %cond24 = phi i32 [ %25, %cond.true20 ], [ %23, %if.then16.cond.end23_crit_edge ]
  %cnt26 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %cnt26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %cnt26, align 4
  %cnt27 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %cnt27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %cnt27, align 4
  br label %if.end75

if.then32:                                        ; preds = %dmaengine_get_dma_device.exit
  %xor_sources = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 6
  %28 = ptrtoint ptr %xor_sources to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xor_sources, align 4
  %or = or i32 %29, 1
  %max_xor = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 8
  %30 = ptrtoint ptr %max_xor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_xor, align 4
  %conv33 = zext i16 %31 to i32
  %32 = tail call i32 @llvm.umin.i32(i32 %or, i32 %conv33) #15
  %rem.i = and i32 %32, 1
  %sext.i = add nsw i32 %32, -1
  %cond4.i = add nsw i32 %sext.i, %rem.i
  %cnt35 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %cnt35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond4.i, ptr %cnt35, align 4
  %cnt36 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %cnt36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %cnt36, align 4
  %alignment37 = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 11
  %35 = ptrtoint ptr %alignment37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %alignment37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp38 = icmp slt i32 %36, 0
  br i1 %cmp38, label %cond.true40, label %if.then32.if.end75_crit_edge

if.then32.if.end75_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

cond.true40:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %xor_align = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 11
  %37 = ptrtoint ptr %xor_align to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xor_align, align 4
  br label %if.end75

if.then50:                                        ; preds = %dmaengine_get_dma_device.exit
  %pq_sources = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 7
  %39 = ptrtoint ptr %pq_sources to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pq_sources, align 4
  %or51 = or i32 %40, 1
  %max_pq.i.i = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 9
  %41 = ptrtoint ptr %max_pq.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %max_pq.i.i, align 2
  %43 = and i16 %42, 32767
  %conv.i = zext i16 %43 to i32
  %44 = tail call i32 @llvm.umin.i32(i32 %or51, i32 %conv.i) #15
  %rem.i999 = and i32 %44, 1
  %sext.i1000 = add nsw i32 %44, -1
  %cond4.i1001 = add nsw i32 %sext.i1000, %rem.i999
  %cnt54 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %cnt54 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond4.i1001, ptr %cnt54, align 4
  %cnt55 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 5, i32 2
  %46 = ptrtoint ptr %cnt55 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %cnt55, align 4
  %alignment56 = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 11
  %47 = ptrtoint ptr %alignment56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %alignment56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp57 = icmp slt i32 %48, 0
  br i1 %cmp57, label %cond.true59, label %if.then50.if.end8.i_crit_edge

if.then50.if.end8.i_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

cond.true59:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  %pq_align = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 12
  %49 = ptrtoint ptr %pq_align to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pq_align, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %cond.true59, %if.then50.if.end8.i_crit_edge
  %cond63 = phi i32 [ %50, %cond.true59 ], [ %48, %if.then50.if.end8.i_crit_edge ]
  %51 = ptrtoint ptr %pq_sources to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pq_sources, align 4
  %add = add i32 %52, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #21
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.dmatest_persec.exit_crit_edge, label %for.cond.preheader

if.end8.i.dmatest_persec.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_persec.exit

for.cond.preheader:                               ; preds = %if.end8.i
  %53 = ptrtoint ptr %cnt54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cnt54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp691214.not = icmp eq i32 %54, 0
  br i1 %cmp691214.not, label %for.cond.preheader.if.end75_crit_edge, label %for.body.preheader

for.cond.preheader.if.end75_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

for.body.preheader:                               ; preds = %for.cond.preheader
  %55 = ptrtoint ptr %cnt54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cnt54, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.01215 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %i.01215
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.01215, 1
  %cmp69 = icmp ult i32 %inc, %56
  br i1 %cmp69, label %for.body.for.body_crit_edge, label %for.body.if.end75_crit_edge

for.body.if.end75_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end75:                                         ; preds = %for.body.if.end75_crit_edge, %for.cond.preheader.if.end75_crit_edge, %cond.true40, %if.then32.if.end75_crit_edge, %cond.end23, %cond.end
  %align.0.in = phi i32 [ %cond, %cond.end ], [ %cond24, %cond.end23 ], [ %38, %cond.true40 ], [ %36, %if.then32.if.end75_crit_edge ], [ %cond63, %for.cond.preheader.if.end75_crit_edge ], [ %cond63, %for.body.if.end75_crit_edge ]
  %is_memset.0.off0 = phi i1 [ false, %cond.end ], [ true, %cond.end23 ], [ false, %cond.true40 ], [ false, %if.then32.if.end75_crit_edge ], [ false, %for.cond.preheader.if.end75_crit_edge ], [ false, %for.body.if.end75_crit_edge ]
  %pq_coefs.0 = phi ptr [ null, %cond.end ], [ null, %cond.end23 ], [ null, %cond.true40 ], [ null, %if.then32.if.end75_crit_edge ], [ %call9.i, %for.cond.preheader.if.end75_crit_edge ], [ %call9.i, %for.body.if.end75_crit_edge ]
  %align.0 = trunc i32 %align.0.in to i8
  %cnt76 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %cnt76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cnt76, align 4
  %cnt77 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %cnt77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cnt77, align 4
  %add78 = add i32 %61, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %add78)
  %cmp79 = icmp ugt i32 %add78, 254
  br i1 %cmp79, label %do.end84, label %if.end89

do.end84:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %add78) #18
  br label %err_thread_type.thread1189

if.end89:                                         ; preds = %if.end75
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %2, align 4
  %conv91 = and i32 %align.0.in, 255
  %shl = shl nuw i32 1, %conv91
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %63)
  %cmp92 = icmp ugt i32 %shl, %63
  br i1 %cmp92, label %do.end97, label %if.end102

do.end97:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %63, i32 noundef %shl) #18
  br label %err_thread_type.thread1189

if.end102:                                        ; preds = %if.end89
  %call103 = tail call fastcc i32 @dmatest_alloc_test_data(ptr noundef %src8, i32 noundef %63, i8 noundef zeroext %align.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end102.err_thread_type.thread1189_crit_edge, label %if.end107

if.end102.err_thread_type.thread1189_crit_edge:   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_thread_type.thread1189

if.end107:                                        ; preds = %if.end102
  %call108 = tail call fastcc i32 @dmatest_alloc_test_data(ptr noundef %dst9, i32 noundef %63, i8 noundef zeroext %align.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.end107.err_src_crit_edge, label %if.end112

if.end107.err_src_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_src

if.end112:                                        ; preds = %if.end107
  %64 = tail call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %67, i32 noundef 10) #15
  %68 = ptrtoint ptr %cnt76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cnt76, align 4
  %70 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %69, i32 4) #15
  %71 = extractvalue { i32, i1 } %70, 1
  br i1 %71, label %if.end112.err_dst_crit_edge, label %if.end7.i.i, !prof !343

if.end112.err_dst_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_dst

if.end7.i.i:                                      ; preds = %if.end112
  %72 = extractvalue { i32, i1 } %70, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %72, i32 noundef 3520) #21
  %tobool116.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool116.not, label %if.end7.i.i.err_dst_crit_edge, label %if.end118

if.end7.i.i.err_dst_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_dst

if.end118:                                        ; preds = %if.end7.i.i
  %73 = ptrtoint ptr %cnt77 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cnt77, align 4
  %75 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %74, i32 4) #15
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %if.end118.err_srcs_array_crit_edge, label %if.end7.i.i1033, !prof !343

if.end118.err_srcs_array_crit_edge:               ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_srcs_array

if.end7.i.i1033:                                  ; preds = %if.end118
  %77 = extractvalue { i32, i1 } %75, 0
  %call8.i.i1032 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %77, i32 noundef 3520) #21
  %tobool121.not = icmp eq ptr %call8.i.i1032, null
  br i1 %tobool121.not, label %if.end7.i.i1033.err_srcs_array_crit_edge, label %if.end123

if.end7.i.i1033.err_srcs_array_crit_edge:         ; preds = %if.end7.i.i1033
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_srcs_array

if.end123:                                        ; preds = %if.end7.i.i1033
  %polled = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 13
  %78 = ptrtoint ptr %polled to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %polled, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool124.not = icmp eq i8 %79, 0
  %. = select i1 %tobool124.not, i32 3, i32 2
  %call128 = tail call i64 @ktime_get() #15
  %call1291234 = call zeroext i1 @kthread_should_stop() #15
  br i1 %call1291234, label %if.end123.while.end_crit_edge, label %lor.rhs.lr.ph

if.end123.while.end_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

lor.rhs.lr.ph:                                    ; preds = %if.end123
  %iterations = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 5
  %transfer_size = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 12
  %norandom = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 10
  %80 = shl nsw i32 -1, %conv91
  %off = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 4, i32 3
  %off175 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 5, i32 3
  %noverify = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 9
  %aligned = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 4, i32 1
  %aligned204 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 5, i32 1
  %device_prep_dma_pq = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 34
  %device_prep_dma_xor = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 32
  %device_prep_dma_memset = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 36
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 30
  %timeout = getelementptr inbounds %struct.dmatest_params, ptr %2, i32 0, i32 8
  %done_wait = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 7
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 6
  br label %lor.rhs

lor.rhs:                                          ; preds = %cleanup572.lor.rhs_crit_edge, %lor.rhs.lr.ph
  %failed_tests.01245 = phi i32 [ 0, %lor.rhs.lr.ph ], [ %failed_tests.2, %cleanup572.lor.rhs_crit_edge ]
  %total_tests.01244 = phi i32 [ 0, %lor.rhs.lr.ph ], [ %inc135, %cleanup572.lor.rhs_crit_edge ]
  %ret.01243 = phi i32 [ -12, %lor.rhs.lr.ph ], [ %ret.4, %cleanup572.lor.rhs_crit_edge ]
  %total_len.01241 = phi i64 [ 0, %lor.rhs.lr.ph ], [ %add171, %cleanup572.lor.rhs_crit_edge ]
  %comparetime.01237 = phi i64 [ 0, %lor.rhs.lr.ph ], [ %comparetime.1, %cleanup572.lor.rhs_crit_edge ]
  %filltime.01235 = phi i64 [ 0, %lor.rhs.lr.ph ], [ %filltime.1, %cleanup572.lor.rhs_crit_edge ]
  %81 = ptrtoint ptr %iterations to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iterations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool131.not = icmp ne i32 %82, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %total_tests.01244, i32 %82)
  %cmp133 = icmp uge i32 %total_tests.01244, %82
  %spec.select = select i1 %tobool131.not, i1 %cmp133, i1 false
  br i1 %spec.select, label %lor.rhs.while.end_crit_edge, label %while.body

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %lor.rhs
  %inc135 = add i32 %total_tests.01244, 1
  %83 = ptrtoint ptr %transfer_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %transfer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool136.not = icmp eq i32 %84, 0
  br i1 %tobool136.not, label %if.else150, label %if.then137

if.then137:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %63)
  %cmp139.not = icmp ult i32 %84, %63
  br i1 %cmp139.not, label %if.then137.if.end157_crit_edge, label %cleanup572.thread

if.then137.if.end157_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

cleanup572.thread:                                ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #17
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %84, i32 noundef %63) #18
  br label %while.end

if.else150:                                       ; preds = %while.body
  %85 = ptrtoint ptr %norandom to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %norandom, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool151.not = icmp eq i8 %86, 0
  br i1 %tobool151.not, label %if.else153, label %if.else150.if.end157_crit_edge

if.else150.if.end157_crit_edge:                   ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

if.else153:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #15
  %87 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %buf.i, align 4, !annotation !346
  call void @prandom_bytes(ptr noundef nonnull %buf.i, i32 noundef 4) #15
  %88 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #15
  %rem = urem i32 %89, %63
  %add155 = add nuw i32 %rem, 1
  br label %if.end157

if.end157:                                        ; preds = %if.else153, %if.else150.if.end157_crit_edge, %if.then137.if.end157_crit_edge
  %len.0 = phi i32 [ %add155, %if.else153 ], [ %84, %if.then137.if.end157_crit_edge ], [ %63, %if.else150.if.end157_crit_edge ]
  %90 = ptrtoint ptr %transfer_size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %transfer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool159.not = icmp eq i32 %91, 0
  %shl163 = and i32 %len.0, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl163)
  %tobool164.not = icmp eq i32 %shl163, 0
  %spec.select978 = select i1 %tobool164.not, i32 %shl, i32 %shl163
  %len.1 = select i1 %tobool159.not, i32 %spec.select978, i32 %len.0
  %conv170 = zext i32 %len.1 to i64
  %add171 = add i64 %total_len.01241, %conv170
  %92 = ptrtoint ptr %norandom to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %norandom, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool173.not = icmp eq i8 %93, 0
  br i1 %tobool173.not, label %if.else176, label %if.then174

if.then174:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  %94 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %off, align 4
  br label %if.end198

if.else176:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i1036) #15
  %95 = ptrtoint ptr %buf.i1036 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %buf.i1036, align 4, !annotation !346
  call void @prandom_bytes(ptr noundef nonnull %buf.i1036, i32 noundef 4) #15
  %96 = ptrtoint ptr %buf.i1036 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %buf.i1036, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i1036) #15
  %sub = sub i32 %63, %len.1
  %add178 = add i32 %sub, 1
  %rem179 = urem i32 %97, %add178
  %98 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %rem179, ptr %off, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i1037) #15
  %99 = ptrtoint ptr %buf.i1037 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %buf.i1037, align 4, !annotation !346
  call void @prandom_bytes(ptr noundef nonnull %buf.i1037, i32 noundef 4) #15
  %100 = ptrtoint ptr %buf.i1037 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %buf.i1037, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i1037) #15
  %rem184 = urem i32 %101, %add178
  %102 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %off, align 4
  %shl190 = and i32 %103, %80
  store i32 %shl190, ptr %off, align 4
  %shl196 = and i32 %rem184, %80
  br label %if.end198

if.end198:                                        ; preds = %if.else176, %if.then174
  %storemerge = phi i32 [ 0, %if.then174 ], [ %shl196, %if.else176 ]
  %104 = ptrtoint ptr %off175 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %storemerge, ptr %off175, align 4
  %105 = ptrtoint ptr %noverify to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %noverify, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool199.not = icmp eq i8 %106, 0
  br i1 %tobool199.not, label %if.then200, label %if.end198.if.end210_crit_edge

if.end198.if.end210_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end210

if.then200:                                       ; preds = %if.end198
  %call201 = call i64 @ktime_get() #15
  %107 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %aligned, align 4
  %109 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %off, align 4
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %108, align 4
  %tobool.not58.i = icmp eq ptr %112, null
  br i1 %tobool.not58.i, label %if.then200.dmatest_init_srcs.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

if.then200.dmatest_init_srcs.exit_crit_edge:      ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_init_srcs.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp51.not.i = icmp eq i32 %110, 0
  %add.i = add i32 %110, %len.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %110)
  %cmp553.i = icmp ugt i32 %add.i, %110
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end27.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %113 = phi ptr [ %112, %for.cond1.preheader.lr.ph.i ], [ %124, %for.end27.i.for.cond1.preheader.i_crit_edge ]
  %bufs.addr.059.i = phi ptr [ %108, %for.cond1.preheader.lr.ph.i ], [ %incdec.ptr29.i, %for.end27.i.for.cond1.preheader.i_crit_edge ]
  br i1 %cmp51.not.i, label %for.cond1.preheader.i.for.cond4.preheader.i_crit_edge, label %for.cond1.preheader.i.for.body2.i_crit_edge

for.cond1.preheader.i.for.body2.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body2.i

for.cond1.preheader.i.for.cond4.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.body2.i.for.cond4.preheader.i_crit_edge, %for.cond1.preheader.i.for.cond4.preheader.i_crit_edge
  br i1 %cmp553.i, label %for.cond4.preheader.i.for.body7.i_crit_edge, label %for.cond4.preheader.i.for.cond17.preheader.i_crit_edge

for.cond4.preheader.i.for.cond17.preheader.i_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond17.preheader.i

for.cond4.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body7.i

for.body2.i:                                      ; preds = %for.body2.i.for.body2.i_crit_edge, %for.cond1.preheader.i.for.body2.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.body2.i.for.body2.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %conv.i1038 = trunc i32 %i.052.i to i8
  %114 = and i8 %conv.i1038, 31
  %.op.i.i = xor i8 %114, -97
  %115 = select i1 %is_memset.0.off0, i8 -98, i8 %.op.i.i
  %arrayidx.i = getelementptr i8, ptr %113, i32 %i.052.i
  %116 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %110
  br i1 %exitcond.not.i, label %for.body2.i.for.cond4.preheader.i_crit_edge, label %for.body2.i.for.body2.i_crit_edge

for.body2.i.for.body2.i_crit_edge:                ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body2.i

for.body2.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond4.preheader.i

for.cond17.preheader.i:                           ; preds = %for.body7.i.for.cond17.preheader.i_crit_edge, %for.cond4.preheader.i.for.cond17.preheader.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %110, %for.cond4.preheader.i.for.cond17.preheader.i_crit_edge ], [ %add.i, %for.body7.i.for.cond17.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa.i, i32 %63)
  %cmp1856.i = icmp ult i32 %i.1.lcssa.i, %63
  br i1 %cmp1856.i, label %for.cond17.preheader.i.for.body20.i_crit_edge, label %for.cond17.preheader.i.for.end27.i_crit_edge

for.cond17.preheader.i.for.end27.i_crit_edge:     ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end27.i

for.cond17.preheader.i.for.body20.i_crit_edge:    ; preds = %for.cond17.preheader.i
  br label %for.body20.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond4.preheader.i.for.body7.i_crit_edge
  %i.154.i = phi i32 [ %inc15.i, %for.body7.i.for.body7.i_crit_edge ], [ %110, %for.cond4.preheader.i.for.body7.i_crit_edge ]
  %conv8.i = trunc i32 %i.154.i to i8
  %117 = and i8 %conv8.i, 31
  %.op.i49.op.i = xor i8 %117, -33
  %118 = select i1 %is_memset.0.off0, i8 -34, i8 %.op.i49.op.i
  %arrayidx13.i = getelementptr i8, ptr %113, i32 %i.154.i
  %119 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx13.i, align 1
  %inc15.i = add nuw i32 %i.154.i, 1
  %exitcond60.not.i = icmp eq i32 %inc15.i, %add.i
  br i1 %exitcond60.not.i, label %for.body7.i.for.cond17.preheader.i_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.i

for.body7.i.for.cond17.preheader.i_crit_edge:     ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond17.preheader.i

for.body20.i:                                     ; preds = %for.body20.i.for.body20.i_crit_edge, %for.cond17.preheader.i.for.body20.i_crit_edge
  %i.257.i = phi i32 [ %inc26.i, %for.body20.i.for.body20.i_crit_edge ], [ %i.1.lcssa.i, %for.cond17.preheader.i.for.body20.i_crit_edge ]
  %conv21.i = trunc i32 %i.257.i to i8
  %120 = and i8 %conv21.i, 31
  %.op.i50.i = xor i8 %120, -97
  %121 = select i1 %is_memset.0.off0, i8 -98, i8 %.op.i50.i
  %arrayidx24.i = getelementptr i8, ptr %113, i32 %i.257.i
  %122 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx24.i, align 1
  %inc26.i = add nuw i32 %i.257.i, 1
  %exitcond61.not.i = icmp eq i32 %inc26.i, %63
  br i1 %exitcond61.not.i, label %for.body20.i.for.end27.i_crit_edge, label %for.body20.i.for.body20.i_crit_edge

for.body20.i.for.body20.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body20.i

for.body20.i.for.end27.i_crit_edge:               ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end27.i

for.end27.i:                                      ; preds = %for.body20.i.for.end27.i_crit_edge, %for.cond17.preheader.i.for.end27.i_crit_edge
  %incdec.ptr29.i = getelementptr ptr, ptr %bufs.addr.059.i, i32 1
  %123 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool.not.i1039 = icmp eq ptr %124, null
  br i1 %tobool.not.i1039, label %for.end27.i.dmatest_init_srcs.exit_crit_edge, label %for.end27.i.for.cond1.preheader.i_crit_edge

for.end27.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond1.preheader.i

for.end27.i.dmatest_init_srcs.exit_crit_edge:     ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_init_srcs.exit

dmatest_init_srcs.exit:                           ; preds = %for.end27.i.dmatest_init_srcs.exit_crit_edge, %if.then200.dmatest_init_srcs.exit_crit_edge
  %125 = ptrtoint ptr %aligned204 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %aligned204, align 4
  %127 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %off175, align 4
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 4
  %tobool.not56.i = icmp eq ptr %130, null
  br i1 %tobool.not56.i, label %dmatest_init_srcs.exit.dmatest_init_dsts.exit_crit_edge, label %for.cond1.preheader.lr.ph.i1041

dmatest_init_srcs.exit.dmatest_init_dsts.exit_crit_edge: ; preds = %dmatest_init_srcs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_init_dsts.exit

for.cond1.preheader.lr.ph.i1041:                  ; preds = %dmatest_init_srcs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp49.not.i = icmp eq i32 %128, 0
  %add.i1040 = add i32 %128, %len.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i1040, i32 %128)
  %cmp551.i = icmp ugt i32 %add.i1040, %128
  br label %for.cond1.preheader.i1042

for.cond1.preheader.i1042:                        ; preds = %for.inc28.i.for.cond1.preheader.i1042_crit_edge, %for.cond1.preheader.lr.ph.i1041
  %131 = phi ptr [ %130, %for.cond1.preheader.lr.ph.i1041 ], [ %142, %for.inc28.i.for.cond1.preheader.i1042_crit_edge ]
  %bufs.addr.057.i = phi ptr [ %126, %for.cond1.preheader.lr.ph.i1041 ], [ %incdec.ptr.i, %for.inc28.i.for.cond1.preheader.i1042_crit_edge ]
  br i1 %cmp49.not.i, label %for.cond1.preheader.i1042.for.cond4.preheader.i1043_crit_edge, label %for.cond1.preheader.i1042.for.body2.i1048_crit_edge

for.cond1.preheader.i1042.for.body2.i1048_crit_edge: ; preds = %for.cond1.preheader.i1042
  br label %for.body2.i1048

for.cond1.preheader.i1042.for.cond4.preheader.i1043_crit_edge: ; preds = %for.cond1.preheader.i1042
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond4.preheader.i1043

for.cond4.preheader.i1043:                        ; preds = %for.body2.i1048.for.cond4.preheader.i1043_crit_edge, %for.cond1.preheader.i1042.for.cond4.preheader.i1043_crit_edge
  br i1 %cmp551.i, label %for.cond4.preheader.i1043.for.body7.i1054_crit_edge, label %for.cond4.preheader.i1043.for.cond17.preheader.i1050_crit_edge

for.cond4.preheader.i1043.for.cond17.preheader.i1050_crit_edge: ; preds = %for.cond4.preheader.i1043
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond17.preheader.i1050

for.cond4.preheader.i1043.for.body7.i1054_crit_edge: ; preds = %for.cond4.preheader.i1043
  br label %for.body7.i1054

for.body2.i1048:                                  ; preds = %for.body2.i1048.for.body2.i1048_crit_edge, %for.cond1.preheader.i1042.for.body2.i1048_crit_edge
  %i.050.i = phi i32 [ %inc.i1046, %for.body2.i1048.for.body2.i1048_crit_edge ], [ 0, %for.cond1.preheader.i1042.for.body2.i1048_crit_edge ]
  %conv.i1044 = trunc i32 %i.050.i to i8
  %132 = and i8 %conv.i1044, 31
  %133 = xor i8 %132, 31
  %cond.i.i.i = select i1 %is_memset.0.off0, i8 30, i8 %133
  %arrayidx.i1045 = getelementptr i8, ptr %131, i32 %i.050.i
  %134 = ptrtoint ptr %arrayidx.i1045 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %cond.i.i.i, ptr %arrayidx.i1045, align 1
  %inc.i1046 = add nuw i32 %i.050.i, 1
  %exitcond.not.i1047 = icmp eq i32 %inc.i1046, %128
  br i1 %exitcond.not.i1047, label %for.body2.i1048.for.cond4.preheader.i1043_crit_edge, label %for.body2.i1048.for.body2.i1048_crit_edge

for.body2.i1048.for.body2.i1048_crit_edge:        ; preds = %for.body2.i1048
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body2.i1048

for.body2.i1048.for.cond4.preheader.i1043_crit_edge: ; preds = %for.body2.i1048
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond4.preheader.i1043

for.cond17.preheader.i1050:                       ; preds = %for.body7.i1054.for.cond17.preheader.i1050_crit_edge, %for.cond4.preheader.i1043.for.cond17.preheader.i1050_crit_edge
  %i.1.lcssa.i1049 = phi i32 [ %128, %for.cond4.preheader.i1043.for.cond17.preheader.i1050_crit_edge ], [ %add.i1040, %for.body7.i1054.for.cond17.preheader.i1050_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa.i1049, i32 %63)
  %cmp1854.i = icmp ult i32 %i.1.lcssa.i1049, %63
  br i1 %cmp1854.i, label %for.cond17.preheader.i1050.for.body20.i1058_crit_edge, label %for.cond17.preheader.i1050.for.inc28.i_crit_edge

for.cond17.preheader.i1050.for.inc28.i_crit_edge: ; preds = %for.cond17.preheader.i1050
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc28.i

for.cond17.preheader.i1050.for.body20.i1058_crit_edge: ; preds = %for.cond17.preheader.i1050
  br label %for.body20.i1058

for.body7.i1054:                                  ; preds = %for.body7.i1054.for.body7.i1054_crit_edge, %for.cond4.preheader.i1043.for.body7.i1054_crit_edge
  %i.152.i = phi i32 [ %inc15.i1053, %for.body7.i1054.for.body7.i1054_crit_edge ], [ %128, %for.cond4.preheader.i1043.for.body7.i1054_crit_edge ]
  %conv8.i1051 = trunc i32 %i.152.i to i8
  %135 = and i8 %conv8.i1051, 31
  %.op.i = xor i8 %135, 63
  %136 = select i1 %is_memset.0.off0, i8 62, i8 %.op.i
  %arrayidx13.i1052 = getelementptr i8, ptr %131, i32 %i.152.i
  %137 = ptrtoint ptr %arrayidx13.i1052 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx13.i1052, align 1
  %inc15.i1053 = add nuw i32 %i.152.i, 1
  %exitcond58.not.i = icmp eq i32 %inc15.i1053, %add.i1040
  br i1 %exitcond58.not.i, label %for.body7.i1054.for.cond17.preheader.i1050_crit_edge, label %for.body7.i1054.for.body7.i1054_crit_edge

for.body7.i1054.for.body7.i1054_crit_edge:        ; preds = %for.body7.i1054
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.i1054

for.body7.i1054.for.cond17.preheader.i1050_crit_edge: ; preds = %for.body7.i1054
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond17.preheader.i1050

for.body20.i1058:                                 ; preds = %for.body20.i1058.for.body20.i1058_crit_edge, %for.cond17.preheader.i1050.for.body20.i1058_crit_edge
  %i.255.i = phi i32 [ %inc26.i1057, %for.body20.i1058.for.body20.i1058_crit_edge ], [ %i.1.lcssa.i1049, %for.cond17.preheader.i1050.for.body20.i1058_crit_edge ]
  %conv21.i1055 = trunc i32 %i.255.i to i8
  %138 = and i8 %conv21.i1055, 31
  %139 = xor i8 %138, 31
  %cond.i.i48.i = select i1 %is_memset.0.off0, i8 30, i8 %139
  %arrayidx24.i1056 = getelementptr i8, ptr %131, i32 %i.255.i
  %140 = ptrtoint ptr %arrayidx24.i1056 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %cond.i.i48.i, ptr %arrayidx24.i1056, align 1
  %inc26.i1057 = add nuw i32 %i.255.i, 1
  %exitcond59.not.i = icmp eq i32 %inc26.i1057, %63
  br i1 %exitcond59.not.i, label %for.body20.i1058.for.inc28.i_crit_edge, label %for.body20.i1058.for.body20.i1058_crit_edge

for.body20.i1058.for.body20.i1058_crit_edge:      ; preds = %for.body20.i1058
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body20.i1058

for.body20.i1058.for.inc28.i_crit_edge:           ; preds = %for.body20.i1058
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %for.body20.i1058.for.inc28.i_crit_edge, %for.cond17.preheader.i1050.for.inc28.i_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %bufs.addr.057.i, i32 1
  %141 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i1059 = icmp eq ptr %142, null
  br i1 %tobool.not.i1059, label %for.inc28.i.dmatest_init_dsts.exit_crit_edge, label %for.inc28.i.for.cond1.preheader.i1042_crit_edge

for.inc28.i.for.cond1.preheader.i1042_crit_edge:  ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond1.preheader.i1042

for.inc28.i.dmatest_init_dsts.exit_crit_edge:     ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_init_dsts.exit

dmatest_init_dsts.exit:                           ; preds = %for.inc28.i.dmatest_init_dsts.exit_crit_edge, %dmatest_init_srcs.exit.dmatest_init_dsts.exit_crit_edge
  %call207 = call i64 @ktime_get() #15
  %sub208 = sub i64 %filltime.01235, %call201
  %add209 = add i64 %sub208, %call207
  br label %if.end210

if.end210:                                        ; preds = %dmatest_init_dsts.exit, %if.end198.if.end210_crit_edge
  %filltime.1 = phi i64 [ %filltime.01235, %if.end198.if.end210_crit_edge ], [ %add209, %dmatest_init_dsts.exit ]
  %143 = ptrtoint ptr %cnt76 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cnt76, align 4
  %145 = ptrtoint ptr %cnt77 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cnt77, align 4
  %add213 = add i32 %146, %144
  %call214 = call ptr @dmaengine_get_unmap_data(ptr noundef %retval.0.i998, i32 noundef %add213, i32 noundef 3264) #15
  %tobool215.not = icmp eq ptr %call214, null
  br i1 %tobool215.not, label %if.then216, label %if.end220

if.then216:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #17
  %inc217 = add i32 %failed_tests.01245, 1
  %147 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %off, align 4
  %149 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %off175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %ret.01243)
  %cmp.i1060 = icmp ugt i32 %ret.01243, -4096
  %151 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i = and i32 %151, -16384
  %152 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 101
  %.str.51..str.54.i = select i1 %cmp.i1060, ptr @.str.51, ptr @.str.54, !prof !343
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51..str.54.i, ptr noundef %comm.i, i32 noundef %inc135, ptr noundef nonnull @.str.33, i32 noundef %148, i32 noundef %150, i32 noundef %len.1, i32 noundef %ret.01243) #18
  br label %cleanup572

if.end220:                                        ; preds = %if.end210
  %len221 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call214, i32 0, i32 6
  %155 = ptrtoint ptr %len221 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %63, ptr %len221, align 4
  %156 = ptrtoint ptr %cnt76 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cnt76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp2241216.not = icmp eq i32 %157, 0
  br i1 %cmp2241216.not, label %if.end220.for.end254_crit_edge, label %for.body226.lr.ph

if.end220.for.end254_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end254

for.body226.lr.ph:                                ; preds = %if.end220
  %to_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call214, i32 0, i32 1
  br label %for.body226

for.body226:                                      ; preds = %for.inc252.for.body226_crit_edge, %for.body226.lr.ph
  %i.11217 = phi i32 [ 0, %for.body226.lr.ph ], [ %inc253, %for.inc252.for.body226_crit_edge ]
  %158 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %aligned, align 4
  %arrayidx228 = getelementptr ptr, ptr %159, i32 %i.11217
  %160 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx228, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %162 = load ptr, ptr @mem_map, align 4
  %163 = ptrtoint ptr %161 to i32
  %sub229 = add i32 %163, 1073741824
  %shr230 = lshr i32 %sub229, 12
  %add.ptr = getelementptr %struct.page, ptr %162, i32 %shr230
  %and = and i32 %163, 4095
  %164 = ptrtoint ptr %len221 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len221, align 4
  %call234 = call i32 @dma_map_page_attrs(ptr noundef %retval.0.i998, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %165, i32 noundef 1, i32 noundef 0) #15
  %arrayidx235 = getelementptr %struct.dmaengine_unmap_data, ptr %call214, i32 0, i32 7, i32 %i.11217
  %166 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call234, ptr %arrayidx235, align 4
  %167 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %off, align 4
  %add239 = add i32 %168, %call234
  %arrayidx240 = getelementptr i32, ptr %call8.i.i, i32 %i.11217
  %169 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %add239, ptr %arrayidx240, align 4
  %170 = load i32, ptr %arrayidx235, align 4
  call void @debug_dma_mapping_error(ptr noundef %retval.0.i998, i32 noundef %170) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %170)
  %cmp.i1061 = icmp eq i32 %170, -1
  br i1 %cmp.i1061, label %cleanup, label %for.inc252

cleanup:                                          ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #17
  %171 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %off, align 4
  %173 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %off175, align 4
  %175 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1062 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i1062 to ptr
  %task.i1063 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %task.i1063 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task.i1063, align 8
  %comm.i1064 = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 101
  %call10.i1066 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm.i1064, i32 noundef %inc135, ptr noundef nonnull @.str.34, i32 noundef %172, i32 noundef %174, i32 noundef %len.1, i32 noundef -12) #18
  br label %error_unmap_continue

for.inc252:                                       ; preds = %for.body226
  %179 = ptrtoint ptr %to_cnt to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %to_cnt, align 2
  %inc249 = add i8 %180, 1
  store i8 %inc249, ptr %to_cnt, align 2
  %inc253 = add nuw i32 %i.11217, 1
  %181 = ptrtoint ptr %cnt76 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cnt76, align 4
  %cmp224 = icmp ult i32 %inc253, %182
  br i1 %cmp224, label %for.inc252.for.body226_crit_edge, label %for.inc252.for.end254_crit_edge

for.inc252.for.end254_crit_edge:                  ; preds = %for.inc252
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end254

for.inc252.for.body226_crit_edge:                 ; preds = %for.inc252
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body226

for.end254:                                       ; preds = %for.inc252.for.end254_crit_edge, %if.end220.for.end254_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.01243, %if.end220.for.end254_crit_edge ], [ 0, %for.inc252.for.end254_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.end220.for.end254_crit_edge ], [ %182, %for.inc252.for.end254_crit_edge ]
  %arrayidx257 = getelementptr %struct.dmaengine_unmap_data, ptr %call214, i32 0, i32 7, i32 %.lcssa
  %183 = ptrtoint ptr %cnt77 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %cnt77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp2601219.not = icmp eq i32 %184, 0
  br i1 %cmp2601219.not, label %for.end254.for.end292_crit_edge, label %for.body262.lr.ph

for.end254.for.end292_crit_edge:                  ; preds = %for.end254
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end292

for.body262.lr.ph:                                ; preds = %for.end254
  %bidi_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call214, i32 0, i32 3
  br label %for.body262

for.body262:                                      ; preds = %for.inc290.for.body262_crit_edge, %for.body262.lr.ph
  %i.21220 = phi i32 [ 0, %for.body262.lr.ph ], [ %inc291, %for.inc290.for.body262_crit_edge ]
  %185 = ptrtoint ptr %aligned204 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %aligned204, align 4
  %arrayidx265 = getelementptr ptr, ptr %186, i32 %i.21220
  %187 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx265, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %189 = load ptr, ptr @mem_map, align 4
  %190 = ptrtoint ptr %188 to i32
  %sub267 = add i32 %190, 1073741824
  %shr268 = lshr i32 %sub267, 12
  %add.ptr271 = getelementptr %struct.page, ptr %189, i32 %shr268
  %and273 = and i32 %190, 4095
  %191 = ptrtoint ptr %len221 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len221, align 4
  %call275 = call i32 @dma_map_page_attrs(ptr noundef %retval.0.i998, ptr noundef %add.ptr271, i32 noundef %and273, i32 noundef %192, i32 noundef 0, i32 noundef 0) #15
  %arrayidx276 = getelementptr i32, ptr %arrayidx257, i32 %i.21220
  %193 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %call275, ptr %arrayidx276, align 4
  call void @debug_dma_mapping_error(ptr noundef %retval.0.i998, i32 noundef %call275) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call275)
  %cmp.i1067 = icmp eq i32 %call275, -1
  br i1 %cmp.i1067, label %cleanup285, label %for.inc290

cleanup285:                                       ; preds = %for.body262
  call void @__sanitizer_cov_trace_pc() #17
  %194 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %off, align 4
  %196 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %off175, align 4
  %198 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1069 = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i1069 to ptr
  %task.i1070 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %task.i1070 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %task.i1070, align 8
  %comm.i1071 = getelementptr inbounds %struct.task_struct, ptr %201, i32 0, i32 101
  %call10.i1073 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm.i1071, i32 noundef %inc135, ptr noundef nonnull @.str.35, i32 noundef %195, i32 noundef %197, i32 noundef %len.1, i32 noundef -12) #18
  br label %error_unmap_continue

for.inc290:                                       ; preds = %for.body262
  %202 = ptrtoint ptr %bidi_cnt to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %bidi_cnt, align 4
  %inc284 = add i8 %203, 1
  store i8 %inc284, ptr %bidi_cnt, align 4
  %inc291 = add nuw i32 %i.21220, 1
  %204 = ptrtoint ptr %cnt77 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cnt77, align 4
  %cmp260 = icmp ult i32 %inc291, %205
  br i1 %cmp260, label %for.inc290.for.body262_crit_edge, label %for.inc290.for.end292_crit_edge

for.inc290.for.end292_crit_edge:                  ; preds = %for.inc290
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end292

for.inc290.for.body262_crit_edge:                 ; preds = %for.inc290
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body262

for.end292:                                       ; preds = %for.inc290.for.end292_crit_edge, %for.end254.for.end292_crit_edge
  %ret.2.lcssa = phi i32 [ %ret.1.lcssa, %for.end254.for.end292_crit_edge ], [ 0, %for.inc290.for.end292_crit_edge ]
  %206 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %type, align 4
  %208 = zext i32 %207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %207, label %for.end292.if.then350_crit_edge [
    i32 0, label %if.then296
    i32 6, label %if.then306
    i32 2, label %if.then320
    i32 3, label %for.cond331.preheader
  ]

for.end292.if.then350_crit_edge:                  ; preds = %for.end292
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then350

for.cond331.preheader:                            ; preds = %for.end292
  %209 = ptrtoint ptr %cnt77 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %cnt77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp3331222.not = icmp eq i32 %210, 0
  br i1 %cmp3331222.not, label %for.cond331.preheader.for.end342_crit_edge, label %for.body335.preheader

for.cond331.preheader.for.end342_crit_edge:       ; preds = %for.cond331.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end342

for.body335.preheader:                            ; preds = %for.cond331.preheader
  %211 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %off175, align 4
  %213 = ptrtoint ptr %cnt77 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %cnt77, align 4
  br label %for.body335

if.then296:                                       ; preds = %for.end292
  call void @__sanitizer_cov_trace_pc() #17
  %215 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %device_prep_dma_memcpy, align 4
  %217 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx257, align 4
  %219 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %off175, align 4
  %add299 = add i32 %220, %218
  %221 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %call8.i.i, align 128
  %call301 = call ptr %216(ptr noundef %4, i32 noundef %add299, i32 noundef %222, i32 noundef %len.1, i32 noundef %.) #15
  br label %if.end348

if.then306:                                       ; preds = %for.end292
  call void @__sanitizer_cov_trace_pc() #17
  %223 = ptrtoint ptr %device_prep_dma_memset to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %device_prep_dma_memset, align 4
  %225 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx257, align 4
  %227 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %off175, align 4
  %add309 = add i32 %228, %226
  %229 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %aligned, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 4
  %233 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %off, align 4
  %add.ptr313 = getelementptr i8, ptr %232, i32 %234
  %235 = ptrtoint ptr %add.ptr313 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %add.ptr313, align 1
  %conv314 = zext i8 %236 to i32
  %call315 = call ptr %224(ptr noundef %4, i32 noundef %add309, i32 noundef %conv314, i32 noundef %len.1, i32 noundef %.) #15
  br label %if.end348

if.then320:                                       ; preds = %for.end292
  call void @__sanitizer_cov_trace_pc() #17
  %237 = ptrtoint ptr %device_prep_dma_xor to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %device_prep_dma_xor, align 4
  %239 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx257, align 4
  %241 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %off175, align 4
  %add323 = add i32 %242, %240
  %243 = ptrtoint ptr %cnt76 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %cnt76, align 4
  %call325 = call ptr %238(ptr noundef %4, i32 noundef %add323, ptr noundef nonnull %call8.i.i, i32 noundef %244, i32 noundef %len.1, i32 noundef %.) #15
  br label %if.end348

for.body335:                                      ; preds = %for.body335.for.body335_crit_edge, %for.body335.preheader
  %i.31223 = phi i32 [ %inc341, %for.body335.for.body335_crit_edge ], [ 0, %for.body335.preheader ]
  %arrayidx336 = getelementptr i32, ptr %arrayidx257, i32 %i.31223
  %245 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx336, align 4
  %add338 = add i32 %212, %246
  %arrayidx339 = getelementptr i32, ptr %call8.i.i1032, i32 %i.31223
  %247 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %add338, ptr %arrayidx339, align 4
  %inc341 = add nuw i32 %i.31223, 1
  %cmp333 = icmp ult i32 %inc341, %214
  br i1 %cmp333, label %for.body335.for.body335_crit_edge, label %for.body335.for.end342_crit_edge

for.body335.for.end342_crit_edge:                 ; preds = %for.body335
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end342

for.body335.for.body335_crit_edge:                ; preds = %for.body335
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body335

for.end342:                                       ; preds = %for.body335.for.end342_crit_edge, %for.cond331.preheader.for.end342_crit_edge
  %248 = ptrtoint ptr %device_prep_dma_pq to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %device_prep_dma_pq, align 4
  %250 = ptrtoint ptr %cnt76 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %cnt76, align 4
  %call344 = call ptr %249(ptr noundef %4, ptr noundef nonnull %call8.i.i1032, ptr noundef nonnull %call8.i.i, i32 noundef %251, ptr noundef %pq_coefs.0, i32 noundef %len.1, i32 noundef %.) #15
  br label %if.end348

if.end348:                                        ; preds = %for.end342, %if.then320, %if.then306, %if.then296
  %tx.0 = phi ptr [ %call301, %if.then296 ], [ %call315, %if.then306 ], [ %call325, %if.then320 ], [ %call344, %for.end342 ]
  %tobool349.not = icmp eq ptr %tx.0, null
  br i1 %tobool349.not, label %if.end348.if.then350_crit_edge, label %if.end353

if.end348.if.then350_crit_edge:                   ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then350

if.then350:                                       ; preds = %if.end348.if.then350_crit_edge, %for.end292.if.then350_crit_edge
  %252 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %off, align 4
  %254 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %off175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %ret.2.lcssa)
  %cmp.i1074 = icmp ugt i32 %ret.2.lcssa, -4096
  %256 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1075 = and i32 %256, -16384
  %257 = inttoptr i32 %and.i.i1075 to ptr
  %task.i1076 = getelementptr inbounds %struct.thread_info, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %task.i1076 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %task.i1076, align 8
  %comm.i1077 = getelementptr inbounds %struct.task_struct, ptr %259, i32 0, i32 101
  %.str.51..str.54.i1078 = select i1 %cmp.i1074, ptr @.str.51, ptr @.str.54, !prof !343
  %call10.i1079 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51..str.54.i1078, ptr noundef %comm.i1077, i32 noundef %inc135, ptr noundef nonnull @.str.36, i32 noundef %253, i32 noundef %255, i32 noundef %len.1, i32 noundef %ret.2.lcssa) #18
  call void @msleep(i32 noundef 100) #15
  br label %error_unmap_continue

if.end353:                                        ; preds = %if.end348
  %260 = ptrtoint ptr %test_done to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %test_done, align 4
  %261 = ptrtoint ptr %polled to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %polled, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool356.not = icmp eq i8 %262, 0
  br i1 %tobool356.not, label %if.then357, label %if.end353.if.end358_crit_edge

if.end353.if.end358_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end358

if.then357:                                       ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #17
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx.0, i32 0, i32 6
  %263 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @dmatest_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx.0, i32 0, i32 8
  %264 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %test_done, ptr %callback_param, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.then357, %if.end353.if.end358_crit_edge
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx.0, i32 0, i32 4
  %265 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %tx_submit, align 4
  %call359 = call i32 %266(ptr noundef nonnull %tx.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call359)
  %tobool361.not = icmp sgt i32 %call359, -1
  br i1 %tobool361.not, label %if.end365, label %if.then362

if.then362:                                       ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #17
  %267 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %off, align 4
  %269 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %off175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %ret.2.lcssa)
  %cmp.i1080 = icmp ugt i32 %ret.2.lcssa, -4096
  %271 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1081 = and i32 %271, -16384
  %272 = inttoptr i32 %and.i.i1081 to ptr
  %task.i1082 = getelementptr inbounds %struct.thread_info, ptr %272, i32 0, i32 2
  %273 = ptrtoint ptr %task.i1082 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %task.i1082, align 8
  %comm.i1083 = getelementptr inbounds %struct.task_struct, ptr %274, i32 0, i32 101
  %.str.51..str.54.i1084 = select i1 %cmp.i1080, ptr @.str.51, ptr @.str.54, !prof !343
  %call10.i1085 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51..str.54.i1084, ptr noundef %comm.i1083, i32 noundef %inc135, ptr noundef nonnull @.str.37, i32 noundef %268, i32 noundef %270, i32 noundef %len.1, i32 noundef %ret.2.lcssa) #18
  call void @msleep(i32 noundef 100) #15
  br label %error_unmap_continue

if.end365:                                        ; preds = %if.end358
  %275 = ptrtoint ptr %polled to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %polled, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool367.not = icmp eq i8 %276, 0
  br i1 %tobool367.not, label %if.else376, label %if.then368

if.then368:                                       ; preds = %if.end365
  %call369 = call i32 @dma_sync_wait(ptr noundef %4, i32 noundef %call359) #15
  call fastcc void @dmaengine_terminate_sync(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %cmp371 = icmp eq i32 %call369, 0
  br i1 %cmp371, label %if.else445.thread, label %if.then368.if.end439_crit_edge

if.then368.if.end439_crit_edge:                   ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end439

if.else445.thread:                                ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #17
  %277 = ptrtoint ptr %test_done to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 1, ptr %test_done, align 4
  br label %if.end461

if.else376:                                       ; preds = %if.end365
  %278 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %4, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %279, i32 0, i32 50
  %280 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %device_issue_pending.i, align 4
  call void %281(ptr noundef %4) #15
  %282 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %timeout, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %283) #15
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 833) #15
  %284 = ptrtoint ptr %test_done to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %test_done, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool385.not = icmp eq i8 %285, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool395.not1197 = icmp eq i32 %call2.i, 0
  %tobool395.not = select i1 %tobool385.not, i1 %tobool395.not1197, i1 false
  %not.tobool385.not = xor i1 %tobool385.not, true
  %286 = select i1 %not.tobool385.not, i1 true, i1 %tobool395.not
  br i1 %286, label %if.else376.if.end436_crit_edge, label %if.then399

if.else376.if.end436_crit_edge:                   ; preds = %if.else376
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end436

if.then399:                                       ; preds = %if.else376
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %287 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %288 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %timeout, align 4
  %call2.i988 = call i32 @__msecs_to_jiffies(i32 noundef %289) #15
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call4041224 = call i32 @prepare_to_wait_event(ptr noundef %done_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %290 = ptrtoint ptr %test_done to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %test_done, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool407.not1225 = icmp eq i8 %291, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i988)
  %tobool412.not1226 = icmp eq i32 %call2.i988, 0
  %spec.select1273 = select i1 %tobool412.not1226, i32 1, i32 %call2.i988
  %__ret400.11228 = select i1 %tobool407.not1225, i32 %call2.i988, i32 %spec.select1273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret400.11228)
  %tobool419.not1229 = icmp eq i32 %__ret400.11228, 0
  %not.tobool407.not1230 = xor i1 %tobool407.not1225, true
  %292 = select i1 %not.tobool407.not1230, i1 true, i1 %tobool419.not1229
  br i1 %292, label %if.then399.for.end433_crit_edge, label %if.then399.if.end425_crit_edge

if.then399.if.end425_crit_edge:                   ; preds = %if.then399
  br label %if.end425

if.then399.for.end433_crit_edge:                  ; preds = %if.then399
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end433

if.end425:                                        ; preds = %cleanup430.if.end425_crit_edge, %if.then399.if.end425_crit_edge
  %__ret400.11232 = phi i32 [ %__ret400.1, %cleanup430.if.end425_crit_edge ], [ %__ret400.11228, %if.then399.if.end425_crit_edge ]
  %call4041231 = phi i32 [ %call404, %cleanup430.if.end425_crit_edge ], [ %call4041224, %if.then399.if.end425_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4041231)
  %tobool426.not = icmp eq i32 %call4041231, 0
  br i1 %tobool426.not, label %cleanup430, label %if.end425.__out_crit_edge

if.end425.__out_crit_edge:                        ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #17
  br label %__out

cleanup430:                                       ; preds = %if.end425
  %call429 = call fastcc i32 @freezable_schedule_timeout(i32 noundef %__ret400.11232)
  %call404 = call i32 @prepare_to_wait_event(ptr noundef %done_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %293 = ptrtoint ptr %test_done to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %test_done, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool407.not = icmp eq i8 %294, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call429)
  %tobool412.not = icmp eq i32 %call429, 0
  %spec.store.select634 = select i1 %tobool412.not, i32 1, i32 %call429
  %__ret400.1 = select i1 %tobool407.not, i32 %call429, i32 %spec.store.select634
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret400.1)
  %tobool419.not = icmp eq i32 %__ret400.1, 0
  %not.tobool407.not = xor i1 %tobool407.not, true
  %295 = select i1 %not.tobool407.not, i1 true, i1 %tobool419.not
  br i1 %295, label %cleanup430.for.end433_crit_edge, label %cleanup430.if.end425_crit_edge

cleanup430.if.end425_crit_edge:                   ; preds = %cleanup430
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end425

cleanup430.for.end433_crit_edge:                  ; preds = %cleanup430
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end433

for.end433:                                       ; preds = %cleanup430.for.end433_crit_edge, %if.then399.for.end433_crit_edge
  call void @finish_wait(ptr noundef %done_wait, ptr noundef nonnull %__wq_entry) #15
  br label %__out

__out:                                            ; preds = %for.end433, %if.end425.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end436

if.end436:                                        ; preds = %__out, %if.else376.if.end436_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i) #15
  %296 = call ptr @memset(ptr %state.i, i32 255, i32 16)
  %297 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %4, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %298, i32 0, i32 49
  %299 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %300(ptr noundef %4, i32 noundef %call359, ptr noundef nonnull %state.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i) #15
  br label %if.end439

if.end439:                                        ; preds = %if.end436, %if.then368.if.end439_crit_edge
  %status.0.ph = phi i32 [ %call.i, %if.end436 ], [ %call369, %if.then368.if.end439_crit_edge ]
  %301 = ptrtoint ptr %test_done to i32
  call void @__asan_load1_noabort(i32 %301)
  %.pr = load i8, ptr %test_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool441.not = icmp eq i8 %.pr, 0
  br i1 %tobool441.not, label %if.then442, label %if.else445

if.then442:                                       ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #17
  %302 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %off, align 4
  %304 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %off175, align 4
  %306 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1086 = and i32 %306, -16384
  %307 = inttoptr i32 %and.i.i1086 to ptr
  %task.i1087 = getelementptr inbounds %struct.thread_info, ptr %307, i32 0, i32 2
  %308 = ptrtoint ptr %task.i1087 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %task.i1087, align 8
  %comm.i1088 = getelementptr inbounds %struct.task_struct, ptr %309, i32 0, i32 101
  %call10.i1089 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm.i1088, i32 noundef %inc135, ptr noundef nonnull @.str.38, i32 noundef %303, i32 noundef %305, i32 noundef %len.1, i32 noundef 0) #18
  br label %error_unmap_continue

if.else445:                                       ; preds = %if.end439
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.ph)
  %cmp446.not = icmp eq i32 %status.0.ph, 0
  br i1 %cmp446.not, label %if.else445.if.end461_crit_edge, label %land.lhs.true448

if.else445.if.end461_crit_edge:                   ; preds = %if.else445
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end461

land.lhs.true448:                                 ; preds = %if.else445
  %310 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load volatile i32, ptr %cap_mask, align 4
  %312 = and i32 %311, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool450.not = icmp ne i32 %312, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %status.0.ph)
  %cmp452 = icmp eq i32 %status.0.ph, 4
  %or.cond = select i1 %tobool450.not, i1 %cmp452, i1 false
  br i1 %or.cond, label %land.lhs.true448.if.end461_crit_edge, label %if.then454

land.lhs.true448.if.end461_crit_edge:             ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end461

if.then454:                                       ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %status.0.ph)
  %cmp455 = icmp eq i32 %status.0.ph, 3
  %cond457 = select i1 %cmp455, ptr @.str.39, ptr @.str.40
  %313 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %off, align 4
  %315 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %off175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %ret.2.lcssa)
  %cmp.i1090 = icmp ugt i32 %ret.2.lcssa, -4096
  %317 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1091 = and i32 %317, -16384
  %318 = inttoptr i32 %and.i.i1091 to ptr
  %task.i1092 = getelementptr inbounds %struct.thread_info, ptr %318, i32 0, i32 2
  %319 = ptrtoint ptr %task.i1092 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %task.i1092, align 8
  %comm.i1093 = getelementptr inbounds %struct.task_struct, ptr %320, i32 0, i32 101
  %.str.51..str.54.i1094 = select i1 %cmp.i1090, ptr @.str.51, ptr @.str.54, !prof !343
  %call10.i1095 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51..str.54.i1094, ptr noundef %comm.i1093, i32 noundef %inc135, ptr noundef nonnull %cond457, i32 noundef %314, i32 noundef %316, i32 noundef %len.1, i32 noundef %ret.2.lcssa) #18
  br label %error_unmap_continue

if.end461:                                        ; preds = %land.lhs.true448.if.end461_crit_edge, %if.else445.if.end461_crit_edge, %if.else445.thread
  call void @dmaengine_unmap_put(ptr noundef nonnull %call214) #15
  %321 = ptrtoint ptr %noverify to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %noverify, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool463.not = icmp eq i8 %322, 0
  br i1 %tobool463.not, label %if.end473, label %if.then464

if.then464:                                       ; preds = %if.end461
  %323 = load i8, ptr @verbose, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool465.not = icmp eq i8 %323, 0
  %324 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %off, align 4
  %326 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %off175, align 4
  br i1 %tobool465.not, label %if.else469, label %if.then466

if.then466:                                       ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #17
  %328 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1096 = and i32 %328, -16384
  %329 = inttoptr i32 %and.i.i1096 to ptr
  %task.i1097 = getelementptr inbounds %struct.thread_info, ptr %329, i32 0, i32 2
  %330 = ptrtoint ptr %task.i1097 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %task.i1097, align 8
  %comm.i1098 = getelementptr inbounds %struct.task_struct, ptr %331, i32 0, i32 101
  %call10.i1099 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm.i1098, i32 noundef %inc135, ptr noundef nonnull @.str.41, i32 noundef %325, i32 noundef %327, i32 noundef %len.1, i32 noundef 0) #18
  br label %cleanup572

if.else469:                                       ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @dbg_result(i32 noundef %inc135, i32 noundef %325, i32 noundef %327, i32 noundef %len.1)
  br label %cleanup572

if.end473:                                        ; preds = %if.end461
  %call474 = call i64 @ktime_get() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmatest_func.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dmatest_func, %do.end489)) #15
          to label %if.then484 [label %do.end489], !srcloc !340

if.then484:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #17
  %332 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %333, i32 0, i32 101
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmatest_func.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.44, ptr noundef %comm) #15
  br label %do.end489

do.end489:                                        ; preds = %if.then484, %if.end473
  %334 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %aligned, align 4
  %336 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %off, align 4
  %call493 = call fastcc i32 @dmatest_verify(ptr noundef %335, i32 noundef 0, i32 noundef %337, i32 noundef 0, i8 noundef zeroext -128, i1 noundef zeroext true, i1 noundef zeroext %is_memset.0.off0)
  %338 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %aligned, align 4
  %340 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %off, align 4
  %add497 = add i32 %341, %len.1
  %call500 = call fastcc i32 @dmatest_verify(ptr noundef %339, i32 noundef %341, i32 noundef %add497, i32 noundef %341, i8 noundef zeroext -64, i1 noundef zeroext true, i1 noundef zeroext %is_memset.0.off0)
  %add501 = add i32 %call500, %call493
  %342 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %aligned, align 4
  %344 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %off, align 4
  %add504 = add i32 %345, %len.1
  %call508 = call fastcc i32 @dmatest_verify(ptr noundef %343, i32 noundef %add504, i32 noundef %63, i32 noundef %add504, i8 noundef zeroext -128, i1 noundef zeroext true, i1 noundef zeroext %is_memset.0.off0)
  %add509 = add i32 %add501, %call508
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmatest_func.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dmatest_func, %do.end531)) #15
          to label %if.then524 [label %do.end531], !srcloc !340

if.then524:                                       ; preds = %do.end489
  call void @__sanitizer_cov_trace_pc() #17
  %346 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %task, align 8
  %comm527 = getelementptr inbounds %struct.task_struct, ptr %347, i32 0, i32 101
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmatest_func.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.46, ptr noundef %comm527) #15
  br label %do.end531

do.end531:                                        ; preds = %if.then524, %do.end489
  %348 = ptrtoint ptr %aligned204 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %aligned204, align 4
  %350 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %off175, align 4
  %call535 = call fastcc i32 @dmatest_verify(ptr noundef %349, i32 noundef 0, i32 noundef %351, i32 noundef 0, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext %is_memset.0.off0)
  %add536 = add i32 %add509, %call535
  %352 = ptrtoint ptr %aligned204 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %aligned204, align 4
  %354 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %off175, align 4
  %add540 = add i32 %355, %len.1
  %356 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %off, align 4
  %call543 = call fastcc i32 @dmatest_verify(ptr noundef %353, i32 noundef %355, i32 noundef %add540, i32 noundef %357, i8 noundef zeroext -64, i1 noundef zeroext false, i1 noundef zeroext %is_memset.0.off0)
  %add544 = add i32 %add536, %call543
  %358 = ptrtoint ptr %aligned204 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %aligned204, align 4
  %360 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %off175, align 4
  %add547 = add i32 %361, %len.1
  %call551 = call fastcc i32 @dmatest_verify(ptr noundef %359, i32 noundef %add547, i32 noundef %63, i32 noundef %add547, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext %is_memset.0.off0)
  %add552 = add i32 %add544, %call551
  %call553 = call i64 @ktime_get() #15
  %sub554 = sub i64 %call553, %call474
  %add555 = add i64 %sub554, %comparetime.01237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add552)
  %tobool556.not = icmp eq i32 %add552, 0
  br i1 %tobool556.not, label %if.else561, label %if.then557

if.then557:                                       ; preds = %do.end531
  call void @__sanitizer_cov_trace_pc() #17
  %362 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %off, align 4
  %364 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %off175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %add552)
  %cmp.i1100 = icmp ugt i32 %add552, -4096
  %366 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1101 = and i32 %366, -16384
  %367 = inttoptr i32 %and.i.i1101 to ptr
  %task.i1102 = getelementptr inbounds %struct.thread_info, ptr %367, i32 0, i32 2
  %368 = ptrtoint ptr %task.i1102 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %task.i1102, align 8
  %comm.i1103 = getelementptr inbounds %struct.task_struct, ptr %369, i32 0, i32 101
  %.str.51..str.54.i1104 = select i1 %cmp.i1100, ptr @.str.51, ptr @.str.54, !prof !343
  %call10.i1105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51..str.54.i1104, ptr noundef %comm.i1103, i32 noundef %inc135, ptr noundef nonnull @.str.47, i32 noundef %363, i32 noundef %365, i32 noundef %len.1, i32 noundef %add552) #18
  %inc560 = add i32 %failed_tests.01245, 1
  br label %cleanup572

if.else561:                                       ; preds = %do.end531
  %370 = load i8, ptr @verbose, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %370)
  %tobool562.not = icmp eq i8 %370, 0
  %371 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %off, align 4
  %373 = ptrtoint ptr %off175 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %off175, align 4
  br i1 %tobool562.not, label %if.else566, label %if.then563

if.then563:                                       ; preds = %if.else561
  call void @__sanitizer_cov_trace_pc() #17
  %375 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1106 = and i32 %375, -16384
  %376 = inttoptr i32 %and.i.i1106 to ptr
  %task.i1107 = getelementptr inbounds %struct.thread_info, ptr %376, i32 0, i32 2
  %377 = ptrtoint ptr %task.i1107 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %task.i1107, align 8
  %comm.i1108 = getelementptr inbounds %struct.task_struct, ptr %378, i32 0, i32 101
  %call10.i1109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm.i1108, i32 noundef %inc135, ptr noundef nonnull @.str.41, i32 noundef %372, i32 noundef %374, i32 noundef %len.1, i32 noundef 0) #18
  br label %cleanup572

if.else566:                                       ; preds = %if.else561
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @dbg_result(i32 noundef %inc135, i32 noundef %372, i32 noundef %374, i32 noundef %len.1)
  br label %cleanup572

error_unmap_continue:                             ; preds = %if.then454, %if.then442, %if.then362, %if.then350, %cleanup285, %cleanup
  %ret.3 = phi i32 [ -12, %cleanup ], [ -12, %cleanup285 ], [ %ret.2.lcssa, %if.then362 ], [ %ret.2.lcssa, %if.then454 ], [ %ret.2.lcssa, %if.then442 ], [ %ret.2.lcssa, %if.then350 ]
  call void @dmaengine_unmap_put(ptr noundef nonnull %call214) #15
  %inc571 = add i32 %failed_tests.01245, 1
  br label %cleanup572

cleanup572:                                       ; preds = %error_unmap_continue, %if.else566, %if.then563, %if.then557, %if.else469, %if.then466, %if.then216
  %comparetime.1 = phi i64 [ %comparetime.01237, %error_unmap_continue ], [ %comparetime.01237, %if.then216 ], [ %comparetime.01237, %if.else469 ], [ %comparetime.01237, %if.then466 ], [ %add555, %if.then563 ], [ %add555, %if.else566 ], [ %add555, %if.then557 ]
  %ret.4 = phi i32 [ %ret.3, %error_unmap_continue ], [ %ret.01243, %if.then216 ], [ %ret.2.lcssa, %if.else469 ], [ %ret.2.lcssa, %if.then466 ], [ %ret.2.lcssa, %if.then563 ], [ %ret.2.lcssa, %if.else566 ], [ %ret.2.lcssa, %if.then557 ]
  %failed_tests.2 = phi i32 [ %inc571, %error_unmap_continue ], [ %inc217, %if.then216 ], [ %failed_tests.01245, %if.else469 ], [ %failed_tests.01245, %if.then466 ], [ %failed_tests.01245, %if.then563 ], [ %failed_tests.01245, %if.else566 ], [ %inc560, %if.then557 ]
  %call129 = call zeroext i1 @kthread_should_stop() #15
  br i1 %call129, label %cleanup572.while.end_crit_edge, label %cleanup572.lor.rhs_crit_edge

cleanup572.lor.rhs_crit_edge:                     ; preds = %cleanup572
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

cleanup572.while.end_crit_edge:                   ; preds = %cleanup572
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup572.while.end_crit_edge, %cleanup572.thread, %lor.rhs.while.end_crit_edge, %if.end123.while.end_crit_edge
  %filltime.01212 = phi i64 [ %filltime.01235, %cleanup572.thread ], [ 0, %if.end123.while.end_crit_edge ], [ %filltime.01235, %lor.rhs.while.end_crit_edge ], [ %filltime.1, %cleanup572.while.end_crit_edge ]
  %comparetime.01210 = phi i64 [ %comparetime.01237, %cleanup572.thread ], [ 0, %if.end123.while.end_crit_edge ], [ %comparetime.01237, %lor.rhs.while.end_crit_edge ], [ %comparetime.1, %cleanup572.while.end_crit_edge ]
  %total_len.01208 = phi i64 [ %total_len.01241, %cleanup572.thread ], [ 0, %if.end123.while.end_crit_edge ], [ %total_len.01241, %lor.rhs.while.end_crit_edge ], [ %add171, %cleanup572.while.end_crit_edge ]
  %failed_tests.01205 = phi i32 [ %failed_tests.01245, %cleanup572.thread ], [ 0, %if.end123.while.end_crit_edge ], [ %failed_tests.01245, %lor.rhs.while.end_crit_edge ], [ %failed_tests.2, %cleanup572.while.end_crit_edge ]
  %total_tests.1 = phi i32 [ %inc135, %cleanup572.thread ], [ 0, %if.end123.while.end_crit_edge ], [ %total_tests.01244, %lor.rhs.while.end_crit_edge ], [ %inc135, %cleanup572.while.end_crit_edge ]
  %call578 = call i64 @ktime_get() #15
  %379 = add i64 %filltime.01212, %call128
  %380 = add i64 %379, %comparetime.01210
  %sub581 = sub i64 %call578, %380
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub581)
  %cmp8.i.i = icmp slt i64 %sub581, 0
  %381 = call i64 @llvm.abs.i64(i64 %sub581, i1 false) #15
  %382 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %381, i32 0) #22, !srcloc !347
  %asmresult.i.i.i = extractvalue { i64, i32 } %382, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %382, 1
  %383 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %381, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #22, !srcloc !348
  %asmresult10.i.i.i = extractvalue { i64, i32 } %383, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  call void @kfree(ptr noundef nonnull %call8.i.i1032) #15
  br label %err_srcs_array

err_srcs_array:                                   ; preds = %while.end, %if.end7.i.i1033.err_srcs_array_crit_edge, %if.end118.err_srcs_array_crit_edge
  %runtime.0 = phi i64 [ %cond213.i.i, %while.end ], [ 0, %if.end7.i.i1033.err_srcs_array_crit_edge ], [ 0, %if.end118.err_srcs_array_crit_edge ]
  %total_len.3 = phi i64 [ %total_len.01208, %while.end ], [ 0, %if.end7.i.i1033.err_srcs_array_crit_edge ], [ 0, %if.end118.err_srcs_array_crit_edge ]
  %ret.5 = phi i32 [ 0, %while.end ], [ -12, %if.end7.i.i1033.err_srcs_array_crit_edge ], [ -12, %if.end118.err_srcs_array_crit_edge ]
  %total_tests.2 = phi i32 [ %total_tests.1, %while.end ], [ 0, %if.end7.i.i1033.err_srcs_array_crit_edge ], [ 0, %if.end118.err_srcs_array_crit_edge ]
  %failed_tests.4 = phi i32 [ %failed_tests.01205, %while.end ], [ 0, %if.end7.i.i1033.err_srcs_array_crit_edge ], [ 0, %if.end118.err_srcs_array_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #15
  br label %err_dst

err_dst:                                          ; preds = %err_srcs_array, %if.end7.i.i.err_dst_crit_edge, %if.end112.err_dst_crit_edge
  %runtime.1 = phi i64 [ %runtime.0, %err_srcs_array ], [ 0, %if.end7.i.i.err_dst_crit_edge ], [ 0, %if.end112.err_dst_crit_edge ]
  %total_len.4 = phi i64 [ %total_len.3, %err_srcs_array ], [ 0, %if.end7.i.i.err_dst_crit_edge ], [ 0, %if.end112.err_dst_crit_edge ]
  %ret.6 = phi i32 [ %ret.5, %err_srcs_array ], [ -12, %if.end7.i.i.err_dst_crit_edge ], [ -12, %if.end112.err_dst_crit_edge ]
  %total_tests.3 = phi i32 [ %total_tests.2, %err_srcs_array ], [ 0, %if.end7.i.i.err_dst_crit_edge ], [ 0, %if.end112.err_dst_crit_edge ]
  %failed_tests.5 = phi i32 [ %failed_tests.4, %err_srcs_array ], [ 0, %if.end7.i.i.err_dst_crit_edge ], [ 0, %if.end112.err_dst_crit_edge ]
  %384 = ptrtoint ptr %cnt77 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %cnt77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %cmp6.not.i.i = icmp eq i32 %385, 0
  br i1 %cmp6.not.i.i, label %err_dst.dmatest_free_test_data.exit_crit_edge, label %err_dst.for.body.i.i_crit_edge

err_dst.for.body.i.i_crit_edge:                   ; preds = %err_dst
  br label %for.body.i.i

err_dst.dmatest_free_test_data.exit_crit_edge:    ; preds = %err_dst
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_free_test_data.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %err_dst.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %err_dst.for.body.i.i_crit_edge ]
  %386 = ptrtoint ptr %dst9 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %dst9, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %387, i32 %i.07.i.i
  %388 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %arrayidx.i.i, align 4
  call void @kfree(ptr noundef %389) #15
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %385
  br i1 %exitcond.not.i.i, label %for.body.i.i.dmatest_free_test_data.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.dmatest_free_test_data.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_free_test_data.exit

dmatest_free_test_data.exit:                      ; preds = %for.body.i.i.dmatest_free_test_data.exit_crit_edge, %err_dst.dmatest_free_test_data.exit_crit_edge
  %aligned.i.i = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 5, i32 1
  %390 = ptrtoint ptr %aligned.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %aligned.i.i, align 4
  call void @kfree(ptr noundef %391) #15
  %392 = ptrtoint ptr %dst9 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %dst9, align 4
  call void @kfree(ptr noundef %393) #15
  br label %err_src

err_src:                                          ; preds = %dmatest_free_test_data.exit, %if.end107.err_src_crit_edge
  %runtime.2 = phi i64 [ 0, %if.end107.err_src_crit_edge ], [ %runtime.1, %dmatest_free_test_data.exit ]
  %total_len.5 = phi i64 [ 0, %if.end107.err_src_crit_edge ], [ %total_len.4, %dmatest_free_test_data.exit ]
  %ret.7 = phi i32 [ -12, %if.end107.err_src_crit_edge ], [ %ret.6, %dmatest_free_test_data.exit ]
  %total_tests.4 = phi i32 [ 0, %if.end107.err_src_crit_edge ], [ %total_tests.3, %dmatest_free_test_data.exit ]
  %failed_tests.6 = phi i32 [ 0, %if.end107.err_src_crit_edge ], [ %failed_tests.5, %dmatest_free_test_data.exit ]
  %394 = ptrtoint ptr %cnt76 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %cnt76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %395)
  %cmp6.not.i.i1111 = icmp eq i32 %395, 0
  br i1 %cmp6.not.i.i1111, label %err_src.err_thread_type_crit_edge, label %err_src.for.body.i.i1116_crit_edge

err_src.for.body.i.i1116_crit_edge:               ; preds = %err_src
  br label %for.body.i.i1116

err_src.err_thread_type_crit_edge:                ; preds = %err_src
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_thread_type

for.body.i.i1116:                                 ; preds = %for.body.i.i1116.for.body.i.i1116_crit_edge, %err_src.for.body.i.i1116_crit_edge
  %i.07.i.i1112 = phi i32 [ %inc.i.i1114, %for.body.i.i1116.for.body.i.i1116_crit_edge ], [ 0, %err_src.for.body.i.i1116_crit_edge ]
  %396 = ptrtoint ptr %src8 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %src8, align 4
  %arrayidx.i.i1113 = getelementptr ptr, ptr %397, i32 %i.07.i.i1112
  %398 = ptrtoint ptr %arrayidx.i.i1113 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %arrayidx.i.i1113, align 4
  call void @kfree(ptr noundef %399) #15
  %inc.i.i1114 = add nuw i32 %i.07.i.i1112, 1
  %exitcond.not.i.i1115 = icmp eq i32 %inc.i.i1114, %395
  br i1 %exitcond.not.i.i1115, label %for.body.i.i1116.err_thread_type_crit_edge, label %for.body.i.i1116.for.body.i.i1116_crit_edge

for.body.i.i1116.for.body.i.i1116_crit_edge:      ; preds = %for.body.i.i1116
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i1116

for.body.i.i1116.err_thread_type_crit_edge:       ; preds = %for.body.i.i1116
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_thread_type

err_thread_type.thread1189:                       ; preds = %if.end102.err_thread_type.thread1189_crit_edge, %do.end97, %do.end84
  tail call void @kfree(ptr noundef %pq_coefs.0) #15
  br label %dmatest_persec.exit

err_thread_type:                                  ; preds = %for.body.i.i1116.err_thread_type_crit_edge, %err_src.err_thread_type_crit_edge
  %aligned.i.i1117 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 4, i32 1
  %400 = ptrtoint ptr %aligned.i.i1117 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %aligned.i.i1117, align 4
  call void @kfree(ptr noundef %401) #15
  %402 = ptrtoint ptr %src8 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %src8, align 4
  call void @kfree(ptr noundef %403) #15
  call void @kfree(ptr noundef %pq_coefs.0) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %runtime.2)
  %cmp.i1119 = icmp slt i64 %runtime.2, 1
  br i1 %cmp.i1119, label %err_thread_type.dmatest_persec.exit_crit_edge, label %while.cond.preheader.i

err_thread_type.dmatest_persec.exit_crit_edge:    ; preds = %err_thread_type
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_persec.exit

while.cond.preheader.i:                           ; preds = %err_thread_type
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %runtime.2)
  %cmp1300.i = icmp ugt i64 %runtime.2, 4294967295
  %extract.t = trunc i64 %runtime.2 to i32
  br i1 %cmp1300.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %runtime.addr.0302.i = phi i64 [ %shr299.i, %while.body.i.while.body.i_crit_edge ], [ %runtime.2, %while.cond.preheader.i.while.body.i_crit_edge ]
  %per_sec.0301.i = phi i64 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ 1000000, %while.cond.preheader.i.while.body.i_crit_edge ]
  %shr299.i = lshr i64 %runtime.addr.0302.i, 1
  %shl.i = shl i64 %per_sec.0301.i, 1
  %cmp1.i = icmp ugt i64 %runtime.addr.0302.i, 8589934591
  br i1 %cmp1.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i.loopexit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.end.i.loopexit:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %extract.t1280 = trunc i64 %shr299.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %while.cond.preheader.i.while.end.i_crit_edge
  %per_sec.0.lcssa.i = phi i64 [ 1000000, %while.cond.preheader.i.while.end.i_crit_edge ], [ %shl.i, %while.end.i.loopexit ]
  %runtime.addr.0.lcssa.i.off0 = phi i32 [ %extract.t, %while.cond.preheader.i.while.end.i_crit_edge ], [ %extract.t1280, %while.end.i.loopexit ]
  %conv.i1120 = zext i32 %total_tests.4 to i64
  %mul.i = shl nuw nsw i64 %conv.i1120, 8
  %shl2.i = mul i64 %per_sec.0.lcssa.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl2.i)
  %cmp175.i = icmp ult i64 %shl2.i, 4294967296
  br i1 %cmp175.i, label %if.then179.i, label %if.else185.i, !prof !344

if.then179.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv180.i = trunc i64 %shl2.i to i32
  %div183.i = udiv i32 %conv180.i, %runtime.addr.0.lcssa.i.off0
  %conv184.i = zext i32 %div183.i to i64
  br label %dmatest_persec.exit

if.else185.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %404 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %runtime.addr.0.lcssa.i.off0, i64 %shl2.i) #22, !srcloc !349
  %asmresult1.i.i = extractvalue { i64, i64 } %404, 1
  br label %dmatest_persec.exit

dmatest_persec.exit:                              ; preds = %if.else185.i, %if.then179.i, %err_thread_type.dmatest_persec.exit_crit_edge, %err_thread_type.thread1189, %if.end8.i.dmatest_persec.exit_crit_edge, %dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge
  %cmp.i11191187 = phi i1 [ true, %err_thread_type.dmatest_persec.exit_crit_edge ], [ false, %if.then179.i ], [ false, %if.else185.i ], [ true, %err_thread_type.thread1189 ], [ true, %if.end8.i.dmatest_persec.exit_crit_edge ], [ true, %dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge ]
  %failed_tests.81186 = phi i32 [ %failed_tests.6, %err_thread_type.dmatest_persec.exit_crit_edge ], [ %failed_tests.6, %if.then179.i ], [ %failed_tests.6, %if.else185.i ], [ 0, %err_thread_type.thread1189 ], [ 0, %if.end8.i.dmatest_persec.exit_crit_edge ], [ 0, %dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge ]
  %total_tests.61185 = phi i32 [ %total_tests.4, %err_thread_type.dmatest_persec.exit_crit_edge ], [ %total_tests.4, %if.then179.i ], [ %total_tests.4, %if.else185.i ], [ 0, %err_thread_type.thread1189 ], [ 0, %if.end8.i.dmatest_persec.exit_crit_edge ], [ 0, %dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge ]
  %ret.91184 = phi i32 [ %ret.7, %err_thread_type.dmatest_persec.exit_crit_edge ], [ %ret.7, %if.then179.i ], [ %ret.7, %if.else185.i ], [ -12, %err_thread_type.thread1189 ], [ -12, %if.end8.i.dmatest_persec.exit_crit_edge ], [ -12, %dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge ]
  %total_len.71183 = phi i64 [ %total_len.5, %err_thread_type.dmatest_persec.exit_crit_edge ], [ %total_len.5, %if.then179.i ], [ %total_len.5, %if.else185.i ], [ 0, %err_thread_type.thread1189 ], [ 0, %if.end8.i.dmatest_persec.exit_crit_edge ], [ 0, %dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge ]
  %runtime.41182 = phi i64 [ %runtime.2, %err_thread_type.dmatest_persec.exit_crit_edge ], [ %runtime.2, %if.then179.i ], [ %runtime.2, %if.else185.i ], [ 0, %err_thread_type.thread1189 ], [ 0, %if.end8.i.dmatest_persec.exit_crit_edge ], [ 0, %dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge ]
  %retval.0.i1125 = phi i64 [ 0, %err_thread_type.dmatest_persec.exit_crit_edge ], [ %conv184.i, %if.then179.i ], [ %asmresult1.i.i, %if.else185.i ], [ 0, %err_thread_type.thread1189 ], [ 0, %if.end8.i.dmatest_persec.exit_crit_edge ], [ 0, %dmaengine_get_dma_device.exit.dmatest_persec.exit_crit_edge ]
  %405 = call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i1126 = and i32 %405, -16384
  %406 = inttoptr i32 %and.i1126 to ptr
  %task589 = getelementptr inbounds %struct.thread_info, ptr %406, i32 0, i32 2
  %407 = ptrtoint ptr %task589 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %task589, align 8
  %comm590 = getelementptr inbounds %struct.task_struct, ptr %408, i32 0, i32 101
  %shr592 = lshr i64 %retval.0.i1125, 8
  %and593 = and i64 %retval.0.i1125, 255
  %mul = mul nuw nsw i64 %and593, 100
  %shr594 = lshr i64 %mul, 8
  br i1 %cmp.i11191187, label %dmatest_persec.exit.dmatest_KBs.exit_crit_edge, label %while.cond.preheader.i.i

dmatest_persec.exit.dmatest_KBs.exit_crit_edge:   ; preds = %dmatest_persec.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmatest_KBs.exit

while.cond.preheader.i.i:                         ; preds = %dmatest_persec.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %runtime.41182)
  %cmp1300.i.i = icmp ugt i64 %runtime.41182, 4294967295
  %extract.t1281 = trunc i64 %runtime.41182 to i32
  br i1 %cmp1300.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.while.end.i.i_crit_edge

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %runtime.addr.0302.i.i = phi i64 [ %shr299.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %runtime.41182, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %per_sec.0301.i.i = phi i64 [ %shl.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 1000000, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %shr299.i.i = lshr i64 %runtime.addr.0302.i.i, 1
  %shl.i.i = shl i64 %per_sec.0301.i.i, 1
  %cmp1.i.i1128 = icmp ugt i64 %runtime.addr.0302.i.i, 8589934591
  br i1 %cmp1.i.i1128, label %while.body.i.i.while.body.i.i_crit_edge, label %while.end.i.i.loopexit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.end.i.i.loopexit:                           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %extract.t1282 = trunc i64 %shr299.i.i to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.i.loopexit, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %per_sec.0.lcssa.i.i = phi i64 [ 1000000, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %shl.i.i, %while.end.i.i.loopexit ]
  %runtime.addr.0.lcssa.i.i.off0 = phi i32 [ %extract.t1281, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %extract.t1282, %while.end.i.i.loopexit ]
  %409 = lshr i64 %total_len.71183, 2
  %mul.i.i = and i64 %409, 1099511627520
  %shl2.i.i = mul i64 %per_sec.0.lcssa.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl2.i.i)
  %cmp175.i.i = icmp ult i64 %shl2.i.i, 4294967296
  br i1 %cmp175.i.i, label %if.then179.i.i, label %if.else185.i.i, !prof !344

if.then179.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv180.i.i = trunc i64 %shl2.i.i to i32
  %div183.i.i = udiv i32 %conv180.i.i, %runtime.addr.0.lcssa.i.i.off0
  %conv184.i.i = zext i32 %div183.i.i to i64
  br label %dmatest_KBs.exit

if.else185.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %410 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %runtime.addr.0.lcssa.i.i.off0, i64 %shl2.i.i) #22, !srcloc !349
  %asmresult1.i.i.i = extractvalue { i64, i64 } %410, 1
  br label %dmatest_KBs.exit

dmatest_KBs.exit:                                 ; preds = %if.else185.i.i, %if.then179.i.i, %dmatest_persec.exit.dmatest_KBs.exit_crit_edge
  %retval.0.i.i1135 = phi i64 [ 0, %dmatest_persec.exit.dmatest_KBs.exit_crit_edge ], [ %conv184.i.i, %if.then179.i.i ], [ %asmresult1.i.i.i, %if.else185.i.i ]
  %shr1.i = lshr i64 %retval.0.i.i1135, 8
  %call596 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm590, i32 noundef %total_tests.61185, i32 noundef %failed_tests.81186, i64 noundef %shr592, i64 noundef %shr594, i64 noundef %shr1.i, i32 noundef %ret.91184) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.91184)
  %tobool597.not = icmp eq i32 %ret.91184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failed_tests.81186)
  %tobool598.not = icmp eq i32 %failed_tests.81186, 0
  %or.cond979 = select i1 %tobool597.not, i1 %tobool598.not, i1 false
  br i1 %or.cond979, label %dmatest_KBs.exit.if.end601_crit_edge, label %if.then599

dmatest_KBs.exit.if.end601_crit_edge:             ; preds = %dmatest_KBs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end601

if.then599:                                       ; preds = %dmatest_KBs.exit
  %411 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %4, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %412, i32 0, i32 47
  %413 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i1136 = icmp eq ptr %414, null
  br i1 %tobool.not.i.i1136, label %if.then599.if.end601_crit_edge, label %dmaengine_terminate_async.exit.i

if.then599.if.end601_crit_edge:                   ; preds = %if.then599
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end601

dmaengine_terminate_async.exit.i:                 ; preds = %if.then599
  %call.i.i = call i32 %414(ptr noundef %4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i1137 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i1137, label %if.end.i1138, label %dmaengine_terminate_async.exit.i.if.end601_crit_edge

dmaengine_terminate_async.exit.i.if.end601_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end601

if.end.i1138:                                     ; preds = %dmaengine_terminate_async.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1169) #15
  %415 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %4, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %416, i32 0, i32 48
  %417 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %418, null
  br i1 %tobool.not.i1.i, label %if.end.i1138.if.end601_crit_edge, label %if.then.i2.i

if.end.i1138.if.end601_crit_edge:                 ; preds = %if.end.i1138
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end601

if.then.i2.i:                                     ; preds = %if.end.i1138
  call void @__sanitizer_cov_trace_pc() #17
  call void %418(ptr noundef %4) #15
  br label %if.end601

if.end601:                                        ; preds = %if.then.i2.i, %if.end.i1138.if.end601_crit_edge, %dmaengine_terminate_async.exit.i.if.end601_crit_edge, %if.then599.if.end601_crit_edge, %dmatest_KBs.exit.if.end601_crit_edge
  %done602 = getelementptr inbounds %struct.dmatest_thread, ptr %data, i32 0, i32 9
  %419 = ptrtoint ptr %done602 to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 1, ptr %done602, align 4
  call void @__wake_up(ptr noundef nonnull @thread_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret i32 %ret.91184
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmatest_alloc_test_data(ptr nocapture noundef %d, i32 noundef %buf_size, i8 noundef zeroext %align) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cnt = getelementptr inbounds %struct.dmatest_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt, align 4
  %add = add i32 %1, 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #15
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !343

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %d, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #21
  %6 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %d, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cnt, align 4
  %add3 = add i32 %8, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add3, i32 4) #15
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %kcalloc.exit90.thread, label %if.end7.i.i88, !prof !343

kcalloc.exit90.thread:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %aligned97 = getelementptr inbounds %struct.dmatest_data, ptr %d, i32 0, i32 1
  %11 = ptrtoint ptr %aligned97 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %aligned97, align 4
  br label %__dmatest_free_test_data.exit

if.end7.i.i88:                                    ; preds = %if.end
  %12 = extractvalue { i32, i1 } %9, 0
  %call8.i.i87 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #21
  %aligned = getelementptr inbounds %struct.dmatest_data, ptr %d, i32 0, i32 1
  %13 = ptrtoint ptr %aligned to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i87, ptr %aligned, align 4
  %tobool6.not = icmp eq ptr %call8.i.i87, null
  br i1 %tobool6.not, label %if.end7.i.i88.__dmatest_free_test_data.exit_crit_edge, label %for.cond.preheader

if.end7.i.i88.__dmatest_free_test_data.exit_crit_edge: ; preds = %if.end7.i.i88
  call void @__sanitizer_cov_trace_pc() #17
  br label %__dmatest_free_test_data.exit

for.cond.preheader:                               ; preds = %if.end7.i.i88
  %14 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp105.not = icmp eq i32 %15, 0
  br i1 %cmp105.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv = zext i8 %align to i32
  %add10 = add i32 %conv, %buf_size
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %align)
  %tobool18.not = icmp eq i8 %align, 0
  %sub = add nsw i32 %conv, -1
  %neg = sub nsw i32 0, %conv
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end17.if.end8.i_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end17.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 3264) #21
  %16 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.0106
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i, ptr %arrayidx, align 4
  %19 = load ptr, ptr %d, align 4
  %arrayidx14 = getelementptr ptr, ptr %19, i32 %i.0106
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end8.i
  %22 = ptrtoint ptr %21 to i32
  %add23 = add i32 %sub, %22
  %and = and i32 %add23, %neg
  %23 = inttoptr i32 %and to ptr
  %.sink = select i1 %tobool18.not, ptr %21, ptr %23
  %24 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aligned, align 4
  %arrayidx27 = getelementptr ptr, ptr %25, i32 %i.0106
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.sink, ptr %arrayidx27, align 4
  %inc = add nuw i32 %i.0106, 1
  %27 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnt, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %if.end17.if.end8.i_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17.if.end8.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

err:                                              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0106)
  %cmp6.not.i = icmp eq i32 %i.0106, 0
  br i1 %cmp6.not.i, label %err.__dmatest_free_test_data.exit_crit_edge, label %err.for.body.i_crit_edge

err.for.body.i_crit_edge:                         ; preds = %err
  br label %for.body.i

err.__dmatest_free_test_data.exit_crit_edge:      ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %__dmatest_free_test_data.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %err.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d, align 4
  %arrayidx.i = getelementptr ptr, ptr %30, i32 %i.07.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %32) #15
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.0106
  br i1 %exitcond.not.i, label %for.body.i.__dmatest_free_test_data.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.__dmatest_free_test_data.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__dmatest_free_test_data.exit

__dmatest_free_test_data.exit:                    ; preds = %for.body.i.__dmatest_free_test_data.exit_crit_edge, %err.__dmatest_free_test_data.exit_crit_edge, %if.end7.i.i88.__dmatest_free_test_data.exit_crit_edge, %kcalloc.exit90.thread
  %aligned99103 = phi ptr [ %aligned, %err.__dmatest_free_test_data.exit_crit_edge ], [ %aligned97, %kcalloc.exit90.thread ], [ %aligned, %if.end7.i.i88.__dmatest_free_test_data.exit_crit_edge ], [ %aligned, %for.body.i.__dmatest_free_test_data.exit_crit_edge ]
  %33 = ptrtoint ptr %aligned99103 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aligned99103, align 4
  tail call void @kfree(ptr noundef %34) #15
  %35 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d, align 4
  tail call void @kfree(ptr noundef %36) #15
  br label %cleanup

cleanup:                                          ; preds = %__dmatest_free_test_data.exit, %if.end17.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %__dmatest_free_test_data.exit ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmaengine_get_unmap_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmatest_callback(ptr nocapture noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %done1 = getelementptr i8, ptr %arg, i32 8
  %0 = ptrtoint ptr %done1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done1, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %arg, align 4
  %wait = getelementptr inbounds %struct.dmatest_done, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wait, align 4
  tail call void @__wake_up(ptr noundef %4, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %if.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 444, i32 noundef 9, ptr noundef nonnull @.str.56) #15
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_sync_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmaengine_terminate_sync(ptr noundef %chan) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dmaengine_terminate_async.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

dmaengine_terminate_async.exit:                   ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %chan) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %dmaengine_terminate_async.exit.cleanup_crit_edge

dmaengine_terminate_async.exit.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %dmaengine_terminate_async.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1169) #15
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %device_synchronize.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %device_synchronize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_synchronize.i, align 4
  %tobool.not.i1 = icmp eq ptr %7, null
  br i1 %tobool.not.i1, label %if.end.cleanup_crit_edge, label %if.then.i2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i2:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %7(ptr noundef %chan) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i2, %if.end.cleanup_crit_edge, %dmaengine_terminate_async.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @freezable_schedule_timeout(i32 noundef %timeout) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %5, 1073741824
  store i32 %or.i, ptr %flags.i, align 4
  %call = tail call i32 @schedule_timeout(i32 noundef %timeout) #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i1 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i1 to ptr
  %task.i2 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i2, align 8
  %flags.i3 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i3, align 4
  %and.i = and i32 %11, -1073741825
  store i32 %and.i, ptr %flags.i3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !350
  %12 = tail call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.i, align 4
  %and.i4.i = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool.not.i.i = icmp eq i32 %and.i4.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_check_no_locks_held() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.58, i32 noundef 57) #15
  %18 = tail call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %22 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.freezer_count.exit_crit_edge, label %freezing.exit.i.i.i, !prof !344

if.end.i.i.freezer_count.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %freezer_count.exit

freezing.exit.i.i.i:                              ; preds = %if.end.i.i
  %call4.i.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %21) #15
  br i1 %call4.i.i.i.i, label %if.end.i.i.i, label %freezing.exit.i.i.i.freezer_count.exit_crit_edge, !prof !343

freezing.exit.i.i.i.freezer_count.exit_crit_edge: ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %freezer_count.exit

if.end.i.i.i:                                     ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #15
  br label %freezer_count.exit

freezer_count.exit:                               ; preds = %if.end.i.i.i, %freezing.exit.i.i.i.freezer_count.exit_crit_edge, %if.end.i.i.freezer_count.exit_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbg_result(i32 noundef %n, i32 noundef %src_off, i32 noundef %dst_off, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_result.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dbg_result, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !340

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dbg_result.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.61, ptr noundef %comm, i32 noundef %n, ptr noundef nonnull @.str.41, i32 noundef %src_off, i32 noundef %dst_off, i32 noundef %len, i32 noundef 0) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmatest_verify(ptr nocapture noundef readonly %bufs, i32 noundef %start, i32 noundef %end, i32 noundef %counter, i8 noundef zeroext %pattern, i1 noundef zeroext %is_srcbuf, i1 noundef zeroext %is_memset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bufs, align 4
  %tobool.not49 = icmp eq ptr %1, null
  br i1 %tobool.not49, label %entry.if.end27_crit_edge, label %for.cond2.preheader.lr.ph

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

for.cond2.preheader.lr.ph:                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp43 = icmp ult i32 %start, %end
  %2 = and i8 %pattern, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool14.not.i = icmp eq i8 %2, 0
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc20.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %3 = phi ptr [ %1, %for.cond2.preheader.lr.ph ], [ %14, %for.inc20.for.cond2.preheader_crit_edge ]
  %bufs.addr.051 = phi ptr [ %bufs, %for.cond2.preheader.lr.ph ], [ %incdec.ptr, %for.inc20.for.cond2.preheader_crit_edge ]
  %error_count.050 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %error_count.1.lcssa, %for.inc20.for.cond2.preheader_crit_edge ]
  br i1 %cmp43, label %for.cond2.preheader.for.body3_crit_edge, label %for.cond2.preheader.for.inc20_crit_edge

for.cond2.preheader.for.inc20_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc20

for.cond2.preheader.for.body3_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body3

for.body3:                                        ; preds = %if.end17.for.body3_crit_edge, %for.cond2.preheader.for.body3_crit_edge
  %error_count.148 = phi i32 [ %error_count.2, %if.end17.for.body3_crit_edge ], [ %error_count.050, %for.cond2.preheader.for.body3_crit_edge ]
  %i.045 = phi i32 [ %inc19, %if.end17.for.body3_crit_edge ], [ %start, %for.cond2.preheader.for.body3_crit_edge ]
  %counter.addr.044 = phi i32 [ %inc18, %if.end17.for.body3_crit_edge ], [ %counter, %for.cond2.preheader.for.body3_crit_edge ]
  %arrayidx = getelementptr i8, ptr %3, i32 %i.045
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv4 = trunc i32 %counter.addr.044 to i8
  %6 = and i8 %conv4, 31
  %7 = xor i8 %6, 31
  %cond.i = select i1 %is_memset, i8 30, i8 %7
  %or42 = or i8 %cond.i, %pattern
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %or42)
  %cmp10.not = icmp eq i8 %5, %or42
  br i1 %cmp10.not, label %for.body3.if.end17_crit_edge, label %if.then

for.body3.if.end17_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %error_count.148)
  %cmp12 = icmp ult i32 %error_count.148, 32
  br i1 %cmp12, label %if.then14, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then14:                                        ; preds = %if.then
  %conv.i = zext i8 %5 to i32
  %xor64.i = xor i8 %5, %pattern
  %8 = tail call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  br i1 %is_srcbuf, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  %conv10.i = zext i8 %or42 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %comm.i, i32 noundef %i.045, i32 noundef %conv10.i, i32 noundef %conv.i) #18
  br label %if.end

if.else.i:                                        ; preds = %if.then14
  %12 = and i8 %xor64.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not.i = icmp eq i8 %12, 0
  %or.cond.i = or i1 %tobool14.not.i, %tobool17.not.i
  br i1 %or.cond.i, label %if.else26.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv23.i = zext i8 %or42 to i32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %comm.i, i32 noundef %i.045, i32 noundef %conv23.i, i32 noundef %conv.i) #18
  br label %if.end

if.else26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor64.i)
  %tobool29.not.i = icmp sgt i8 %xor64.i, -1
  %conv43.i = zext i8 %or42 to i32
  br i1 %tobool29.not.i, label %do.end41.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #17
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm.i, i32 noundef %i.045, i32 noundef %conv43.i, i32 noundef %conv.i) #18
  br label %if.end

do.end41.i:                                       ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #17
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %comm.i, i32 noundef %i.045, i32 noundef %conv43.i, i32 noundef %conv.i) #18
  br label %if.end

if.end:                                           ; preds = %do.end41.i, %do.end33.i, %do.end21.i, %do.end.i, %if.then.if.end_crit_edge
  %inc = add i32 %error_count.148, 1
  br label %if.end17

if.end17:                                         ; preds = %if.end, %for.body3.if.end17_crit_edge
  %error_count.2 = phi i32 [ %inc, %if.end ], [ %error_count.148, %for.body3.if.end17_crit_edge ]
  %inc18 = add i32 %counter.addr.044, 1
  %inc19 = add i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc19, %end
  br i1 %exitcond.not, label %if.end17.for.inc20_crit_edge, label %if.end17.for.body3_crit_edge

if.end17.for.body3_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3

if.end17.for.inc20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc20

for.inc20:                                        ; preds = %if.end17.for.inc20_crit_edge, %for.cond2.preheader.for.inc20_crit_edge
  %error_count.1.lcssa = phi i32 [ %error_count.050, %for.cond2.preheader.for.inc20_crit_edge ], [ %error_count.2, %if.end17.for.inc20_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %bufs.addr.051, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.end21, label %for.inc20.for.cond2.preheader_crit_edge

for.inc20.for.cond2.preheader_crit_edge:          ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond2.preheader

for.end21:                                        ; preds = %for.inc20
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %error_count.1.lcssa)
  %cmp22 = icmp ugt i32 %error_count.1.lcssa, 32
  br i1 %cmp22, label %do.end, label %for.end21.if.end27_crit_edge

for.end21.if.end27_crit_edge:                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

do.end:                                           ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #17
  %15 = tail call i32 @llvm.read_register.i32(metadata !329) #15
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %sub = add i32 %error_count.1.lcssa, -32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm, i32 noundef %sub) #18
  br label %if.end27

if.end27:                                         ; preds = %do.end, %for.end21.if.end27_crit_edge, %entry.if.end27_crit_edge
  %error_count.0.lcssa55 = phi i32 [ %error_count.1.lcssa, %do.end ], [ %error_count.1.lcssa, %for.end21.if.end27_crit_edge ], [ 0, %entry.if.end27_crit_edge ]
  ret i32 %error_count.0.lcssa55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @run_pending_tests() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dtc.05 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not6 = icmp eq ptr %dtc.05, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not6, label %entry.for.end26_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end26

for.body:                                         ; preds = %dma_chan_name.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %dtc.07 = phi ptr [ %dtc.0, %dma_chan_name.exit.for.body_crit_edge ], [ %dtc.05, %entry.for.body_crit_edge ]
  %threads = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.07, i32 0, i32 2
  %0 = ptrtoint ptr %threads to i32
  call void @__asan_load4_noabort(i32 %0)
  %thread.01 = load ptr, ptr %threads, align 4
  %cmp9.not2 = icmp eq ptr %thread.01, %threads
  br i1 %cmp9.not2, label %for.body.do.end_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %thread.04 = phi ptr [ %thread.0, %for.body11.for.body11_crit_edge ], [ %thread.01, %for.body.for.body11_crit_edge ]
  %thread_count.03 = phi i32 [ %inc, %for.body11.for.body11_crit_edge ], [ 0, %for.body.for.body11_crit_edge ]
  %task = getelementptr inbounds %struct.dmatest_thread, ptr %thread.04, i32 0, i32 2
  %1 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %task, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %2) #15
  %inc = add i32 %thread_count.03, 1
  %3 = ptrtoint ptr %thread.04 to i32
  call void @__asan_load4_noabort(i32 %3)
  %thread.0 = load ptr, ptr %thread.04, align 4
  %cmp9.not = icmp eq ptr %thread.0, %threads
  br i1 %cmp9.not, label %for.body11.do.end_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11

for.body11.do.end_crit_edge:                      ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %for.body11.do.end_crit_edge, %for.body.do.end_crit_edge
  %thread_count.0.lcssa = phi i32 [ 0, %for.body.do.end_crit_edge ], [ %inc, %for.body11.do.end_crit_edge ]
  %chan = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.07, i32 0, i32 1
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.dma_chan_name.exit_crit_edge

do.end.dma_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %do.end.dma_chan_name.exit_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %thread_count.0.lcssa, ptr noundef %retval.0.i.i) #18
  %12 = ptrtoint ptr %dtc.07 to i32
  call void @__asan_load4_noabort(i32 %12)
  %dtc.0 = load ptr, ptr %dtc.07, align 4
  %cmp.not = icmp eq ptr %dtc.0, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not, label %dma_chan_name.exit.for.end26_crit_edge, label %dma_chan_name.exit.for.body_crit_edge

dma_chan_name.exit.for.body_crit_edge:            ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

dma_chan_name.exit.for.end26_crit_edge:           ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end26

for.end26:                                        ; preds = %dma_chan_name.exit.for.end26_crit_edge, %entry.for.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_bool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmatest_chan_set(ptr noundef %val, ptr noundef %kp) #3 align 64 {
entry:
  %chan_reset_val = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %chan_reset_val) #15
  %0 = call ptr @memset(ptr %chan_reset_val, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4), i32 noundef 0) #15
  %call = tail call i32 @param_set_copystring(ptr noundef %val, ptr noundef %kp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4)) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtc.07.i = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not8.i = icmp eq ptr %dtc.07.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not8.i, label %if.end.if.then4_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %1 = ptrtoint ptr %dtc.09.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %dtc.0.i = load ptr, ptr %dtc.09.i, align 4
  %cmp.not.i = icmp eq ptr %dtc.0.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.cond.loopexit.i.for.body.i93_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond.loopexit.i.for.body.i93_crit_edge:       ; preds = %for.cond.loopexit.i
  br label %for.body.i93

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %dtc.09.i = phi ptr [ %dtc.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %dtc.07.i, %if.end.for.body.i_crit_edge ]
  %threads.i = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.09.i, i32 0, i32 2
  %2 = ptrtoint ptr %threads.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %thread.04.i = load ptr, ptr %threads.i, align 4
  %cmp9.not5.i = icmp eq ptr %thread.04.i, %threads.i
  br i1 %cmp9.not5.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %thread.06.i = phi ptr [ %thread.0.i, %for.inc.i.for.body11.i_crit_edge ], [ %thread.04.i, %for.body.i.for.body11.i_crit_edge ]
  %done.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i, i32 0, i32 9
  %3 = ptrtoint ptr %done.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %done.i, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body11.i
  %pending.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i, i32 0, i32 10
  %5 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pending.i, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not.i = icmp eq i8 %6, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %thread.06.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %thread.0.i = load ptr, ptr %thread.06.i, align 4
  %cmp9.not.i = icmp eq ptr %thread.0.i, %threads.i
  br i1 %cmp9.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.cond.loopexit.i91:                            ; preds = %for.cond6.i
  %8 = ptrtoint ptr %dtc.06.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %dtc.0.i89 = load ptr, ptr %dtc.06.i, align 4
  %cmp.not.i90 = icmp eq ptr %dtc.0.i89, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i90, label %for.cond.loopexit.i91.if.then4_crit_edge, label %for.cond.loopexit.i91.for.body.i93_crit_edge

for.cond.loopexit.i91.for.body.i93_crit_edge:     ; preds = %for.cond.loopexit.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i93

for.cond.loopexit.i91.if.then4_crit_edge:         ; preds = %for.cond.loopexit.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

for.body.i93:                                     ; preds = %for.cond.loopexit.i91.for.body.i93_crit_edge, %for.cond.loopexit.i.for.body.i93_crit_edge
  %dtc.06.i = phi ptr [ %dtc.0.i89, %for.cond.loopexit.i91.for.body.i93_crit_edge ], [ %dtc.07.i, %for.cond.loopexit.i.for.body.i93_crit_edge ]
  %threads.i92 = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.06.i, i32 0, i32 2
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body11.i98.for.cond6.i_crit_edge, %for.body.i93
  %thread.0.in.i = phi ptr [ %threads.i92, %for.body.i93 ], [ %thread.0.i94, %for.body11.i98.for.cond6.i_crit_edge ]
  %9 = ptrtoint ptr %thread.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %thread.0.i94 = load ptr, ptr %thread.0.in.i, align 4
  %cmp9.not.i95 = icmp eq ptr %thread.0.i94, %threads.i92
  br i1 %cmp9.not.i95, label %for.cond.loopexit.i91, label %for.body11.i98

for.body11.i98:                                   ; preds = %for.cond6.i
  %pending.i96 = getelementptr inbounds %struct.dmatest_thread, ptr %thread.0.i94, i32 0, i32 10
  %10 = ptrtoint ptr %pending.i96 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pending.i96, align 1, !range !339
  %tobool.not.i97 = icmp eq i8 %11, 0
  br i1 %tobool.not.i97, label %for.body11.i98.for.cond6.i_crit_edge, label %for.body11.i98.if.end5_crit_edge

for.body11.i98.if.end5_crit_edge:                 ; preds = %for.body11.i98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

for.body11.i98.for.cond6.i_crit_edge:             ; preds = %for.body11.i98
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond6.i

if.then4:                                         ; preds = %for.cond.loopexit.i91.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call fastcc void @stop_threaded_test()
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body11.i98.if.end5_crit_edge, %land.lhs.true.i.if.end5_crit_edge
  %dtc.04.i100 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not5.i101 = icmp eq ptr %dtc.04.i100, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not5.i101, label %if.end5.if.end27_crit_edge, label %if.end5.for.body.i107_crit_edge

if.end5.for.body.i107_crit_edge:                  ; preds = %if.end5
  br label %for.body.i107

if.end5.if.end27_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

for.cond.loopexit.i104:                           ; preds = %for.cond6.i111
  %12 = ptrtoint ptr %dtc.06.i105 to i32
  call void @__asan_load4_noabort(i32 %12)
  %dtc.0.i102 = load ptr, ptr %dtc.06.i105, align 4
  %cmp.not.i103 = icmp eq ptr %dtc.0.i102, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i103, label %for.cond.loopexit.i104.if.end27_crit_edge, label %for.cond.loopexit.i104.for.body.i107_crit_edge

for.cond.loopexit.i104.for.body.i107_crit_edge:   ; preds = %for.cond.loopexit.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i107

for.cond.loopexit.i104.if.end27_crit_edge:        ; preds = %for.cond.loopexit.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

for.body.i107:                                    ; preds = %for.cond.loopexit.i104.for.body.i107_crit_edge, %if.end5.for.body.i107_crit_edge
  %dtc.06.i105 = phi ptr [ %dtc.0.i102, %for.cond.loopexit.i104.for.body.i107_crit_edge ], [ %dtc.04.i100, %if.end5.for.body.i107_crit_edge ]
  %threads.i106 = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.06.i105, i32 0, i32 2
  br label %for.cond6.i111

for.cond6.i111:                                   ; preds = %for.body11.i114.for.cond6.i111_crit_edge, %for.body.i107
  %thread.0.in.i108 = phi ptr [ %threads.i106, %for.body.i107 ], [ %thread.0.i109, %for.body11.i114.for.cond6.i111_crit_edge ]
  %13 = ptrtoint ptr %thread.0.in.i108 to i32
  call void @__asan_load4_noabort(i32 %13)
  %thread.0.i109 = load ptr, ptr %thread.0.in.i108, align 4
  %cmp9.not.i110 = icmp eq ptr %thread.0.i109, %threads.i106
  br i1 %cmp9.not.i110, label %for.cond.loopexit.i104, label %for.body11.i114

for.body11.i114:                                  ; preds = %for.cond6.i111
  %pending.i112 = getelementptr inbounds %struct.dmatest_thread, ptr %thread.0.i109, i32 0, i32 10
  %14 = ptrtoint ptr %pending.i112 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pending.i112, align 1, !range !339
  %tobool.not.i113 = icmp eq i8 %15, 0
  br i1 %tobool.not.i113, label %for.body11.i114.for.cond6.i111_crit_edge, label %for.body11.i114.for.cond_crit_edge

for.body11.i114.for.cond_crit_edge:               ; preds = %for.body11.i114
  br label %for.cond

for.body11.i114.for.cond6.i111_crit_edge:         ; preds = %for.body11.i114
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond6.i111

for.cond:                                         ; preds = %dma_chan_name.exit.for.cond_crit_edge, %for.body11.i114.for.cond_crit_edge
  %dtc.0.in = phi ptr [ %dtc.0, %dma_chan_name.exit.for.cond_crit_edge ], [ getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), %for.body11.i114.for.cond_crit_edge ]
  %16 = ptrtoint ptr %dtc.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %dtc.0 = load ptr, ptr %dtc.0.in, align 4
  %cmp.not = icmp eq ptr %dtc.0, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not, label %for.cond.if.end27_crit_edge, label %for.body

for.cond.if.end27_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

for.body:                                         ; preds = %for.cond
  %chan = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.0, i32 0, i32 1
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.dma_chan_name.exit_crit_edge

for.body.dma_chan_name.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %for.body.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %for.body.dma_chan_name.exit_crit_edge ]
  %call10 = tail call ptr @strim(ptr noundef nonnull @test_channel) #15
  %call11 = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %call10) #23
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %dma_chan_name.exit.for.cond_crit_edge

dma_chan_name.exit.for.cond_crit_edge:            ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then13:                                        ; preds = %dma_chan_name.exit
  %25 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1, i32 1), align 4
  %chan18 = getelementptr inbounds %struct.dmatest_chan, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %chan18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan18, align 4
  %dev.i117 = getelementptr inbounds %struct.dma_chan, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %dev.i117 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i117, align 4
  %init_name.i.i118 = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %init_name.i.i118 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i118, align 8
  %tobool.not.i.i119 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i119, label %if.end.i.i121, label %if.then13.dma_chan_name.exit123_crit_edge

if.then13.dma_chan_name.exit123_crit_edge:        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit123

if.end.i.i121:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %device.i120 = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %device.i120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i120, align 4
  br label %dma_chan_name.exit123

dma_chan_name.exit123:                            ; preds = %if.end.i.i121, %if.then13.dma_chan_name.exit123_crit_edge
  %retval.0.i.i122 = phi ptr [ %33, %if.end.i.i121 ], [ %31, %if.then13.dma_chan_name.exit123_crit_edge ]
  %call20 = call i32 @strlcpy(ptr noundef nonnull %chan_reset_val, ptr noundef %retval.0.i.i122, i32 noundef 20) #15
  br label %add_chan_err

if.end27:                                         ; preds = %for.cond.if.end27_crit_edge, %for.cond.loopexit.i104.if.end27_crit_edge, %if.end5.if.end27_crit_edge
  tail call fastcc void @add_threaded_test()
  %34 = load volatile ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %34, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.i.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end27
  %35 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1, i32 1), align 4
  %chan37 = getelementptr inbounds %struct.dmatest_chan, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %chan37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan37, align 4
  %dev.i124 = getelementptr inbounds %struct.dma_chan, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %dev.i124 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i124, align 4
  %init_name.i.i125 = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %init_name.i.i125 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i125, align 8
  %tobool.not.i.i126 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i126, label %if.end.i.i128, label %if.then31.dma_chan_name.exit130_crit_edge

if.then31.dma_chan_name.exit130_crit_edge:        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit130

if.end.i.i128:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  %device.i127 = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %device.i127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device.i127, align 4
  br label %dma_chan_name.exit130

dma_chan_name.exit130:                            ; preds = %if.end.i.i128, %if.then31.dma_chan_name.exit130_crit_edge
  %retval.0.i.i129 = phi ptr [ %43, %if.end.i.i128 ], [ %41, %if.then31.dma_chan_name.exit130_crit_edge ]
  %call39 = tail call ptr @strim(ptr noundef nonnull @test_channel) #15
  %call40 = tail call i32 @strcmp(ptr noundef %retval.0.i.i129, ptr noundef %call39) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %dma_chan_name.exit130.if.end54_crit_edge, label %land.lhs.true42

dma_chan_name.exit130.if.end54_crit_edge:         ; preds = %dma_chan_name.exit130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

land.lhs.true42:                                  ; preds = %dma_chan_name.exit130
  %call43 = tail call ptr @strim(ptr noundef nonnull @test_channel) #15
  %44 = ptrtoint ptr %call43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %strcmpload = load i8, ptr %call43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %cmp45.not = icmp eq i8 %strcmpload, 0
  br i1 %cmp45.not, label %land.lhs.true42.if.end54_crit_edge, label %if.then46

land.lhs.true42.if.end54_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then46:                                        ; preds = %land.lhs.true42
  %45 = ptrtoint ptr %chan37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan37, align 4
  %dev.i131 = getelementptr inbounds %struct.dma_chan, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %dev.i131 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i131, align 4
  %init_name.i.i132 = getelementptr inbounds %struct.dma_chan_dev, ptr %48, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %init_name.i.i132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i132, align 8
  %tobool.not.i.i133 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i133, label %if.end.i.i135, label %if.then46.dma_chan_name.exit137_crit_edge

if.then46.dma_chan_name.exit137_crit_edge:        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit137

if.end.i.i135:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  %device.i134 = getelementptr inbounds %struct.dma_chan_dev, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %device.i134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device.i134, align 4
  br label %dma_chan_name.exit137

dma_chan_name.exit137:                            ; preds = %if.end.i.i135, %if.then46.dma_chan_name.exit137_crit_edge
  %retval.0.i.i136 = phi ptr [ %52, %if.end.i.i135 ], [ %50, %if.then46.dma_chan_name.exit137_crit_edge ]
  %call50 = call i32 @strlcpy(ptr noundef nonnull %chan_reset_val, ptr noundef %retval.0.i.i136, i32 noundef 20) #15
  br label %add_chan_err

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %call53 = call i32 @strlcpy(ptr noundef nonnull %chan_reset_val, ptr noundef nonnull @.str.78, i32 noundef 20) #15
  br label %add_chan_err

if.end54:                                         ; preds = %land.lhs.true42.if.end54_crit_edge, %dma_chan_name.exit130.if.end54_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 3), align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4)) #15
  br label %cleanup

add_chan_err:                                     ; preds = %if.else, %dma_chan_name.exit137, %dma_chan_name.exit123
  %ret.0 = phi i32 [ -16, %dma_chan_name.exit123 ], [ -16, %if.else ], [ -22, %dma_chan_name.exit137 ]
  %call57 = call i32 @param_set_copystring(ptr noundef nonnull %chan_reset_val, ptr noundef %kp) #15
  store i32 %ret.0, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 3), align 4
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4)) #15
  br label %cleanup

cleanup:                                          ; preds = %add_chan_err, %if.end54, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %add_chan_err ], [ 0, %if.end54 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %chan_reset_val) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmatest_chan_get(ptr noundef %val, ptr noundef %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4), i32 noundef 0) #15
  %dtc.07.i = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not8.i = icmp eq ptr %dtc.07.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not8.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %0 = ptrtoint ptr %dtc.09.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dtc.0.i = load ptr, ptr %dtc.09.i, align 4
  %cmp.not.i = icmp eq ptr %dtc.0.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.cond.loopexit.i.for.body.i13_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond.loopexit.i.for.body.i13_crit_edge:       ; preds = %for.cond.loopexit.i
  br label %for.body.i13

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dtc.09.i = phi ptr [ %dtc.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %dtc.07.i, %entry.for.body.i_crit_edge ]
  %threads.i = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.09.i, i32 0, i32 2
  %1 = ptrtoint ptr %threads.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %thread.04.i = load ptr, ptr %threads.i, align 4
  %cmp9.not5.i = icmp eq ptr %thread.04.i, %threads.i
  br i1 %cmp9.not5.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %thread.06.i = phi ptr [ %thread.0.i, %for.inc.i.for.body11.i_crit_edge ], [ %thread.04.i, %for.body.i.for.body11.i_crit_edge ]
  %done.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i, i32 0, i32 9
  %2 = ptrtoint ptr %done.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %done.i, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body11.i
  %pending.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i, i32 0, i32 10
  %4 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pending.i, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not.i = icmp eq i8 %5, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %thread.06.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %thread.0.i = load ptr, ptr %thread.06.i, align 4
  %cmp9.not.i = icmp eq ptr %thread.0.i, %threads.i
  br i1 %cmp9.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.cond.loopexit.i11:                            ; preds = %for.cond6.i
  %7 = ptrtoint ptr %dtc.06.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %dtc.0.i9 = load ptr, ptr %dtc.06.i, align 4
  %cmp.not.i10 = icmp eq ptr %dtc.0.i9, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i10, label %for.cond.loopexit.i11.if.then_crit_edge, label %for.cond.loopexit.i11.for.body.i13_crit_edge

for.cond.loopexit.i11.for.body.i13_crit_edge:     ; preds = %for.cond.loopexit.i11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i13

for.cond.loopexit.i11.if.then_crit_edge:          ; preds = %for.cond.loopexit.i11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i13:                                     ; preds = %for.cond.loopexit.i11.for.body.i13_crit_edge, %for.cond.loopexit.i.for.body.i13_crit_edge
  %dtc.06.i = phi ptr [ %dtc.0.i9, %for.cond.loopexit.i11.for.body.i13_crit_edge ], [ %dtc.07.i, %for.cond.loopexit.i.for.body.i13_crit_edge ]
  %threads.i12 = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.06.i, i32 0, i32 2
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body11.i18.for.cond6.i_crit_edge, %for.body.i13
  %thread.0.in.i = phi ptr [ %threads.i12, %for.body.i13 ], [ %thread.0.i14, %for.body11.i18.for.cond6.i_crit_edge ]
  %8 = ptrtoint ptr %thread.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %thread.0.i14 = load ptr, ptr %thread.0.in.i, align 4
  %cmp9.not.i15 = icmp eq ptr %thread.0.i14, %threads.i12
  br i1 %cmp9.not.i15, label %for.cond.loopexit.i11, label %for.body11.i18

for.body11.i18:                                   ; preds = %for.cond6.i
  %pending.i16 = getelementptr inbounds %struct.dmatest_thread, ptr %thread.0.i14, i32 0, i32 10
  %9 = ptrtoint ptr %pending.i16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pending.i16, align 1, !range !339
  %tobool.not.i17 = icmp eq i8 %10, 0
  br i1 %tobool.not.i17, label %for.body11.i18.for.cond6.i_crit_edge, label %for.body11.i18.if.end_crit_edge

for.body11.i18.if.end_crit_edge:                  ; preds = %for.body11.i18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body11.i18.for.cond6.i_crit_edge:             ; preds = %for.body11.i18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond6.i

if.then:                                          ; preds = %for.cond.loopexit.i11.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @stop_threaded_test()
  %call2 = tail call i32 @strlcpy(ptr noundef nonnull @test_channel, ptr noundef nonnull @.str.78, i32 noundef 20) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body11.i18.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 4)) #15
  %call4 = tail call i32 @param_get_string(ptr noundef %val, ptr noundef %kp) #15
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_copystring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmatest_test_list_get(ptr nocapture noundef readnone %val, ptr nocapture noundef readnone %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dtc.033 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not34 = icmp eq ptr %dtc.033, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not34, label %entry.for.end25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end25

for.body:                                         ; preds = %dma_chan_name.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %dtc.035 = phi ptr [ %dtc.0, %dma_chan_name.exit.for.body_crit_edge ], [ %dtc.033, %entry.for.body_crit_edge ]
  %threads = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.035, i32 0, i32 2
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.for.cond6_crit_edge, %for.body
  %thread.0.in = phi ptr [ %threads, %for.body ], [ %thread.0, %for.cond6.for.cond6_crit_edge ]
  %thread_count.0 = phi i32 [ 0, %for.body ], [ %inc, %for.cond6.for.cond6_crit_edge ]
  %0 = ptrtoint ptr %thread.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %thread.0 = load ptr, ptr %thread.0.in, align 4
  %cmp9.not = icmp eq ptr %thread.0, %threads
  %inc = add i32 %thread_count.0, 1
  br i1 %cmp9.not, label %do.end, label %for.cond6.for.cond6_crit_edge

for.cond6.for.cond6_crit_edge:                    ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond6

do.end:                                           ; preds = %for.cond6
  %chan = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.035, i32 0, i32 1
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.dma_chan_name.exit_crit_edge

do.end.dma_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %do.end.dma_chan_name.exit_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %thread_count.0, ptr noundef %retval.0.i.i) #18
  %9 = ptrtoint ptr %dtc.035 to i32
  call void @__asan_load4_noabort(i32 %9)
  %dtc.0 = load ptr, ptr %dtc.035, align 4
  %cmp.not = icmp eq ptr %dtc.0, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not, label %dma_chan_name.exit.for.end25_crit_edge, label %dma_chan_name.exit.for.body_crit_edge

dma_chan_name.exit.for.body_crit_edge:            ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

dma_chan_name.exit.for.end25_crit_edge:           ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end25

for.end25:                                        ; preds = %dma_chan_name.exit.for.end25_crit_edge, %entry.for.end25_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmatest_wait_get(ptr noundef %val, ptr noundef %kp) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.body2

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

do.body2:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 284) #15
  %dtc.07.i = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not8.i = icmp eq ptr %dtc.07.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not8.i, label %do.body2.if.end13_crit_edge, label %do.body2.for.body.i_crit_edge

do.body2.for.body.i_crit_edge:                    ; preds = %do.body2
  br label %for.body.i

do.body2.if.end13_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %1 = ptrtoint ptr %dtc.09.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %dtc.0.i = load ptr, ptr %dtc.09.i, align 4
  %cmp.not.i = icmp eq ptr %dtc.0.i, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.cond.loopexit.i.if.end13_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond.loopexit.i.if.end13_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %do.body2.for.body.i_crit_edge
  %dtc.09.i = phi ptr [ %dtc.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %dtc.07.i, %do.body2.for.body.i_crit_edge ]
  %threads.i = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.09.i, i32 0, i32 2
  %2 = ptrtoint ptr %threads.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %thread.04.i = load ptr, ptr %threads.i, align 4
  %cmp9.not5.i = icmp eq ptr %thread.04.i, %threads.i
  br i1 %cmp9.not5.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %thread.06.i = phi ptr [ %thread.0.i, %for.inc.i.for.body11.i_crit_edge ], [ %thread.04.i, %for.body.i.for.body11.i_crit_edge ]
  %done.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i, i32 0, i32 9
  %3 = ptrtoint ptr %done.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %done.i, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body11.i
  %pending.i = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i, i32 0, i32 10
  %5 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pending.i, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not.i = icmp eq i8 %6, 0
  br i1 %tobool12.not.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %thread.06.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %thread.0.i = load ptr, ptr %thread.06.i, align 4
  %cmp9.not.i = icmp eq ptr %thread.0.i, %threads.i
  br i1 %cmp9.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

if.end:                                           ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call746 = call i32 @prepare_to_wait_event(ptr noundef nonnull @thread_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %dtc.07.i1947 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not8.i2048 = icmp eq ptr %dtc.07.i1947, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not8.i2048, label %if.end.for.end_crit_edge, label %if.end.for.body.i28_crit_edge

if.end.for.body.i28_crit_edge:                    ; preds = %if.end
  br label %for.body.i28

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.loopexit.i23:                            ; preds = %for.inc.i38.for.cond.loopexit.i23_crit_edge, %for.body.i28.for.cond.loopexit.i23_crit_edge
  %9 = ptrtoint ptr %dtc.09.i24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %dtc.0.i21 = load ptr, ptr %dtc.09.i24, align 4
  %cmp.not.i22 = icmp eq ptr %dtc.0.i21, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not.i22, label %for.cond.loopexit.i23.for.end_crit_edge, label %for.cond.loopexit.i23.for.body.i28.backedge_crit_edge

for.cond.loopexit.i23.for.body.i28.backedge_crit_edge: ; preds = %for.cond.loopexit.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i28.backedge

for.cond.loopexit.i23.for.end_crit_edge:          ; preds = %for.cond.loopexit.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.i28.backedge:                            ; preds = %cleanup.for.body.i28.backedge_crit_edge, %for.cond.loopexit.i23.for.body.i28.backedge_crit_edge
  %dtc.09.i24.be = phi ptr [ %dtc.0.i21, %for.cond.loopexit.i23.for.body.i28.backedge_crit_edge ], [ %dtc.07.i19, %cleanup.for.body.i28.backedge_crit_edge ]
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.body.i28.backedge, %if.end.for.body.i28_crit_edge
  %dtc.09.i24 = phi ptr [ %dtc.09.i24.be, %for.body.i28.backedge ], [ %dtc.07.i1947, %if.end.for.body.i28_crit_edge ]
  %threads.i25 = getelementptr inbounds %struct.dmatest_chan, ptr %dtc.09.i24, i32 0, i32 2
  %10 = ptrtoint ptr %threads.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %thread.04.i26 = load ptr, ptr %threads.i25, align 4
  %cmp9.not5.i27 = icmp eq ptr %thread.04.i26, %threads.i25
  br i1 %cmp9.not5.i27, label %for.body.i28.for.cond.loopexit.i23_crit_edge, label %for.body.i28.for.body11.i32_crit_edge

for.body.i28.for.body11.i32_crit_edge:            ; preds = %for.body.i28
  br label %for.body11.i32

for.body.i28.for.cond.loopexit.i23_crit_edge:     ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i23

for.body11.i32:                                   ; preds = %for.inc.i38.for.body11.i32_crit_edge, %for.body.i28.for.body11.i32_crit_edge
  %thread.06.i29 = phi ptr [ %thread.0.i36, %for.inc.i38.for.body11.i32_crit_edge ], [ %thread.04.i26, %for.body.i28.for.body11.i32_crit_edge ]
  %done.i30 = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i29, i32 0, i32 9
  %11 = ptrtoint ptr %done.i30 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %done.i30, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i31 = icmp eq i8 %12, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i35, label %for.body11.i32.for.inc.i38_crit_edge

for.body11.i32.for.inc.i38_crit_edge:             ; preds = %for.body11.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i38

land.lhs.true.i35:                                ; preds = %for.body11.i32
  %pending.i33 = getelementptr inbounds %struct.dmatest_thread, ptr %thread.06.i29, i32 0, i32 10
  %13 = ptrtoint ptr %pending.i33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pending.i33, align 1, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not.i34 = icmp eq i8 %14, 0
  br i1 %tobool12.not.i34, label %cleanup, label %land.lhs.true.i35.for.inc.i38_crit_edge

land.lhs.true.i35.for.inc.i38_crit_edge:          ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i38

for.inc.i38:                                      ; preds = %land.lhs.true.i35.for.inc.i38_crit_edge, %for.body11.i32.for.inc.i38_crit_edge
  %15 = ptrtoint ptr %thread.06.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %thread.0.i36 = load ptr, ptr %thread.06.i29, align 4
  %cmp9.not.i37 = icmp eq ptr %thread.0.i36, %threads.i25
  br i1 %cmp9.not.i37, label %for.inc.i38.for.cond.loopexit.i23_crit_edge, label %for.inc.i38.for.body11.i32_crit_edge

for.inc.i38.for.body11.i32_crit_edge:             ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11.i32

for.inc.i38.for.cond.loopexit.i23_crit_edge:      ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i23

cleanup:                                          ; preds = %land.lhs.true.i35
  call void @schedule() #15
  %call7 = call i32 @prepare_to_wait_event(ptr noundef nonnull @thread_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %dtc.07.i19 = load ptr, ptr getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1), align 4
  %cmp.not8.i20 = icmp eq ptr %dtc.07.i19, getelementptr inbounds (%struct.dmatest_info, ptr @test_info, i32 0, i32 1)
  br i1 %cmp.not8.i20, label %cleanup.for.end_crit_edge, label %cleanup.for.body.i28.backedge_crit_edge

cleanup.for.body.i28.backedge_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i28.backedge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.loopexit.i23.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @thread_wait, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end13

if.end13:                                         ; preds = %for.end, %for.cond.loopexit.i.if.end13_crit_edge, %do.body2.if.end13_crit_edge, %entry.if.end13_crit_edge
  store i8 1, ptr @wait, align 1
  %call14 = call i32 @param_get_bool(ptr noundef %val, ptr noundef %kp) #15
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmatest_cleanup_channel(ptr noundef %dtc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %threads = getelementptr inbounds %struct.dmatest_chan, ptr %dtc, i32 0, i32 2
  %0 = ptrtoint ptr %threads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %threads, align 4
  %cmp.not35 = icmp eq ptr %1, %threads
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %put_task_struct.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %thread.036 = phi ptr [ %_thread.038, %put_task_struct.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %thread.036 to i32
  call void @__asan_load4_noabort(i32 %2)
  %_thread.038 = load ptr, ptr %thread.036, align 4
  %task = getelementptr inbounds %struct.dmatest_thread, ptr %thread.036, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 4
  %call = tail call i32 @kthread_stop(ptr noundef %4) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmatest_cleanup_channel.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dmatest_cleanup_channel, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !340

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 4
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmatest_cleanup_channel.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.88, ptr noundef %comm, i32 noundef %call) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %thread.036) #15
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %thread.036, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %thread.036 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread.036, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %thread.036 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %thread.036, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %thread.036, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !351
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !352
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !344

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !353
  tail call void @__put_task_struct(ptr noundef %16) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  tail call void @kfree(ptr noundef %thread.036) #15
  %cmp.not = icmp eq ptr %_thread.038, %threads
  br i1 %cmp.not, label %put_task_struct.exit.for.end_crit_edge, label %put_task_struct.exit.for.body_crit_edge

put_task_struct.exit.for.body_crit_edge:          ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

put_task_struct.exit.for.end_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %put_task_struct.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %chan = getelementptr inbounds %struct.dmatest_chan, ptr %dtc, i32 0, i32 1
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 47
  %22 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %for.end.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

for.end.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %for.end
  %call.i.i32 = tail call i32 %23(ptr noundef %19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool.not.i = icmp eq i32 %call.i.i32, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1169) #15
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 48
  %26 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %27, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %27(ptr noundef %19) #15
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %for.end.dmaengine_terminate_sync.exit_crit_edge
  tail call void @kfree(ptr noundef %dtc) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !67, !68, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !133, !134, !136, !137, !139, !140, !142, !143, !144, !145, !146, !148, !149, !150, !151, !153, !155, !156, !157, !158, !159, !161, !162, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !182, !184, !186, !188, !189, !190, !191, !193, !194, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !234, !235, !236, !238, !239, !240, !242, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !259, !261, !263, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !293, !294, !295, !296, !297, !299, !301, !303, !304, !306, !308, !309, !310, !311, !312, !314, !316, !317, !319, !321, !322, !323, !324, !326, !327, !328}
!llvm.named.register.sp = !{!329}
!llvm.module.flags = !{!330, !331, !332, !333, !334, !335, !336, !337}
!llvm.ident = !{!338}

!0 = !{ptr @__param_test_buf_size, !1, !"__param_test_buf_size", i1 false, i1 false}
!1 = !{!"../drivers/dma/dmatest.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_test_buf_sizetype232, !1, !"__UNIQUE_ID_test_buf_sizetype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_test_buf_size233, !4, !"__UNIQUE_ID_test_buf_size233", i1 false, i1 false}
!4 = !{!"../drivers/dma/dmatest.c", i32 26, i32 1}
!5 = !{ptr @__param_device, !6, !"__param_device", i1 false, i1 false}
!6 = !{!"../drivers/dma/dmatest.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_devicetype234, !6, !"__UNIQUE_ID_devicetype234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_device235, !9, !"__UNIQUE_ID_device235", i1 false, i1 false}
!9 = !{!"../drivers/dma/dmatest.c", i32 31, i32 1}
!10 = !{ptr @__param_threads_per_chan, !11, !"__param_threads_per_chan", i1 false, i1 false}
!11 = !{!"../drivers/dma/dmatest.c", i32 34, i32 1}
!12 = !{ptr @__UNIQUE_ID_threads_per_chantype236, !11, !"__UNIQUE_ID_threads_per_chantype236", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_threads_per_chan237, !14, !"__UNIQUE_ID_threads_per_chan237", i1 false, i1 false}
!14 = !{!"../drivers/dma/dmatest.c", i32 35, i32 1}
!15 = !{ptr @__param_max_channels, !16, !"__param_max_channels", i1 false, i1 false}
!16 = !{!"../drivers/dma/dmatest.c", i32 39, i32 1}
!17 = !{ptr @__UNIQUE_ID_max_channelstype238, !16, !"__UNIQUE_ID_max_channelstype238", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_max_channels239, !19, !"__UNIQUE_ID_max_channels239", i1 false, i1 false}
!19 = !{!"../drivers/dma/dmatest.c", i32 40, i32 1}
!20 = !{ptr @__param_iterations, !21, !"__param_iterations", i1 false, i1 false}
!21 = !{!"../drivers/dma/dmatest.c", i32 44, i32 1}
!22 = !{ptr @__UNIQUE_ID_iterationstype240, !21, !"__UNIQUE_ID_iterationstype240", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_iterations241, !24, !"__UNIQUE_ID_iterations241", i1 false, i1 false}
!24 = !{!"../drivers/dma/dmatest.c", i32 45, i32 1}
!25 = !{ptr @__param_dmatest, !26, !"__param_dmatest", i1 false, i1 false}
!26 = !{!"../drivers/dma/dmatest.c", i32 49, i32 1}
!27 = !{ptr @__UNIQUE_ID_dmatesttype242, !26, !"__UNIQUE_ID_dmatesttype242", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_dmatest243, !29, !"__UNIQUE_ID_dmatest243", i1 false, i1 false}
!29 = !{!"../drivers/dma/dmatest.c", i32 50, i32 1}
!30 = !{ptr @__param_xor_sources, !31, !"__param_xor_sources", i1 false, i1 false}
!31 = !{!"../drivers/dma/dmatest.c", i32 54, i32 1}
!32 = !{ptr @__UNIQUE_ID_xor_sourcestype244, !31, !"__UNIQUE_ID_xor_sourcestype244", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_xor_sources245, !34, !"__UNIQUE_ID_xor_sources245", i1 false, i1 false}
!34 = !{!"../drivers/dma/dmatest.c", i32 55, i32 1}
!35 = !{ptr @__param_pq_sources, !36, !"__param_pq_sources", i1 false, i1 false}
!36 = !{!"../drivers/dma/dmatest.c", i32 59, i32 1}
!37 = !{ptr @__UNIQUE_ID_pq_sourcestype246, !36, !"__UNIQUE_ID_pq_sourcestype246", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_pq_sources247, !39, !"__UNIQUE_ID_pq_sources247", i1 false, i1 false}
!39 = !{!"../drivers/dma/dmatest.c", i32 60, i32 1}
!40 = !{ptr @__param_timeout, !41, !"__param_timeout", i1 false, i1 false}
!41 = !{!"../drivers/dma/dmatest.c", i32 64, i32 1}
!42 = !{ptr @__UNIQUE_ID_timeouttype248, !41, !"__UNIQUE_ID_timeouttype248", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_timeout249, !44, !"__UNIQUE_ID_timeout249", i1 false, i1 false}
!44 = !{!"../drivers/dma/dmatest.c", i32 65, i32 1}
!45 = !{ptr @__param_noverify, !46, !"__param_noverify", i1 false, i1 false}
!46 = !{!"../drivers/dma/dmatest.c", i32 69, i32 1}
!47 = !{ptr @__UNIQUE_ID_noverifytype250, !46, !"__UNIQUE_ID_noverifytype250", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_noverify251, !49, !"__UNIQUE_ID_noverify251", i1 false, i1 false}
!49 = !{!"../drivers/dma/dmatest.c", i32 70, i32 1}
!50 = !{ptr @__param_norandom, !51, !"__param_norandom", i1 false, i1 false}
!51 = !{!"../drivers/dma/dmatest.c", i32 73, i32 1}
!52 = !{ptr @__UNIQUE_ID_norandomtype252, !51, !"__UNIQUE_ID_norandomtype252", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_norandom253, !54, !"__UNIQUE_ID_norandom253", i1 false, i1 false}
!54 = !{!"../drivers/dma/dmatest.c", i32 74, i32 1}
!55 = !{ptr @__param_verbose, !56, !"__param_verbose", i1 false, i1 false}
!56 = !{!"../drivers/dma/dmatest.c", i32 77, i32 1}
!57 = !{ptr @__UNIQUE_ID_verbosetype254, !56, !"__UNIQUE_ID_verbosetype254", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_verbose255, !59, !"__UNIQUE_ID_verbose255", i1 false, i1 false}
!59 = !{!"../drivers/dma/dmatest.c", i32 78, i32 1}
!60 = !{ptr @__param_alignment, !61, !"__param_alignment", i1 false, i1 false}
!61 = !{!"../drivers/dma/dmatest.c", i32 81, i32 1}
!62 = !{ptr @__UNIQUE_ID_alignmenttype256, !61, !"__UNIQUE_ID_alignmenttype256", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_alignment257, !64, !"__UNIQUE_ID_alignment257", i1 false, i1 false}
!64 = !{!"../drivers/dma/dmatest.c", i32 82, i32 1}
!65 = !{ptr @__param_transfer_size, !66, !"__param_transfer_size", i1 false, i1 false}
!66 = !{!"../drivers/dma/dmatest.c", i32 85, i32 1}
!67 = !{ptr @__UNIQUE_ID_transfer_sizetype258, !66, !"__UNIQUE_ID_transfer_sizetype258", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_transfer_size259, !69, !"__UNIQUE_ID_transfer_size259", i1 false, i1 false}
!69 = !{!"../drivers/dma/dmatest.c", i32 86, i32 1}
!70 = !{ptr @__param_polled, !71, !"__param_polled", i1 false, i1 false}
!71 = !{!"../drivers/dma/dmatest.c", i32 89, i32 1}
!72 = !{ptr @__UNIQUE_ID_polledtype260, !71, !"__UNIQUE_ID_polledtype260", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_polled261, !74, !"__UNIQUE_ID_polled261", i1 false, i1 false}
!74 = !{!"../drivers/dma/dmatest.c", i32 90, i32 1}
!75 = !{ptr @__param_run, !76, !"__param_run", i1 false, i1 false}
!76 = !{!"../drivers/dma/dmatest.c", i32 157, i32 1}
!77 = !{ptr @__UNIQUE_ID_run262, !78, !"__UNIQUE_ID_run262", i1 false, i1 false}
!78 = !{!"../drivers/dma/dmatest.c", i32 158, i32 1}
!79 = !{ptr @__param_channel, !80, !"__param_channel", i1 false, i1 false}
!80 = !{!"../drivers/dma/dmatest.c", i32 172, i32 1}
!81 = !{ptr @__UNIQUE_ID_channel263, !82, !"__UNIQUE_ID_channel263", i1 false, i1 false}
!82 = !{!"../drivers/dma/dmatest.c", i32 173, i32 1}
!83 = !{ptr @__param_test_list, !84, !"__param_test_list", i1 false, i1 false}
!84 = !{!"../drivers/dma/dmatest.c", i32 179, i32 1}
!85 = !{ptr @__UNIQUE_ID_test_list264, !86, !"__UNIQUE_ID_test_list264", i1 false, i1 false}
!86 = !{!"../drivers/dma/dmatest.c", i32 180, i32 1}
!87 = !{ptr @__param_wait, !88, !"__param_wait", i1 false, i1 false}
!88 = !{!"../drivers/dma/dmatest.c", i32 293, i32 1}
!89 = !{ptr @__UNIQUE_ID_wait265, !90, !"__UNIQUE_ID_wait265", i1 false, i1 false}
!90 = !{!"../drivers/dma/dmatest.c", i32 294, i32 1}
!91 = !{ptr @__initcall__kmod_dmatest__273_1348_dmatest_init7, !92, !"__initcall__kmod_dmatest__273_1348_dmatest_init7", i1 false, i1 false}
!92 = !{!"../drivers/dma/dmatest.c", i32 1348, i32 1}
!93 = !{ptr @__exitcall_dmatest_exit, !94, !"__exitcall_dmatest_exit", i1 false, i1 false}
!94 = !{!"../drivers/dma/dmatest.c", i32 1358, i32 1}
!95 = !{ptr @__UNIQUE_ID_author274, !96, !"__UNIQUE_ID_author274", i1 false, i1 false}
!96 = !{!"../drivers/dma/dmatest.c", i32 1360, i32 1}
!97 = !{ptr @__UNIQUE_ID_file275, !98, !"__UNIQUE_ID_file275", i1 false, i1 false}
!98 = !{!"../drivers/dma/dmatest.c", i32 1361, i32 1}
!99 = !{ptr @__UNIQUE_ID_license276, !98, !"__UNIQUE_ID_license276", i1 false, i1 false}
!100 = !{ptr @max_channels, !101, !"max_channels", i1 false, i1 false}
!101 = !{!"../drivers/dma/dmatest.c", i32 38, i32 21}
!102 = !{ptr @iterations, !103, !"iterations", i1 false, i1 false}
!103 = !{!"../drivers/dma/dmatest.c", i32 43, i32 21}
!104 = !{ptr @dmatest, !105, !"dmatest", i1 false, i1 false}
!105 = !{!"../drivers/dma/dmatest.c", i32 48, i32 21}
!106 = !{ptr @noverify, !107, !"noverify", i1 false, i1 false}
!107 = !{!"../drivers/dma/dmatest.c", i32 68, i32 13}
!108 = !{ptr @norandom, !109, !"norandom", i1 false, i1 false}
!109 = !{!"../drivers/dma/dmatest.c", i32 72, i32 13}
!110 = !{ptr @verbose, !111, !"verbose", i1 false, i1 false}
!111 = !{!"../drivers/dma/dmatest.c", i32 76, i32 13}
!112 = !{ptr @transfer_size, !113, !"transfer_size", i1 false, i1 false}
!113 = !{!"../drivers/dma/dmatest.c", i32 84, i32 21}
!114 = !{ptr @polled, !115, !"polled", i1 false, i1 false}
!115 = !{!"../drivers/dma/dmatest.c", i32 88, i32 13}
!116 = !{ptr @dmatest_run, !117, !"dmatest_run", i1 false, i1 false}
!117 = !{!"../drivers/dma/dmatest.c", i32 156, i32 13}
!118 = !{ptr @wait, !119, !"wait", i1 false, i1 false}
!119 = !{!"../drivers/dma/dmatest.c", i32 244, i32 13}
!120 = !{ptr @__param_str_test_buf_size, !1, !"__param_str_test_buf_size", i1 false, i1 false}
!121 = !{ptr @test_buf_size, !122, !"test_buf_size", i1 false, i1 false}
!122 = !{!"../drivers/dma/dmatest.c", i32 24, i32 21}
!123 = !{ptr @__param_str_device, !6, !"__param_str_device", i1 false, i1 false}
!124 = !{ptr @__param_string_device, !6, !"__param_string_device", i1 false, i1 false}
!125 = !{ptr @test_device, !126, !"test_device", i1 false, i1 false}
!126 = !{!"../drivers/dma/dmatest.c", i32 28, i32 13}
!127 = !{ptr @__param_str_threads_per_chan, !11, !"__param_str_threads_per_chan", i1 false, i1 false}
!128 = !{ptr @threads_per_chan, !129, !"threads_per_chan", i1 false, i1 false}
!129 = !{!"../drivers/dma/dmatest.c", i32 33, i32 21}
!130 = !{ptr @__param_str_max_channels, !16, !"__param_str_max_channels", i1 false, i1 false}
!131 = !{ptr @__param_str_iterations, !21, !"__param_str_iterations", i1 false, i1 false}
!132 = !{ptr @__param_str_dmatest, !26, !"__param_str_dmatest", i1 false, i1 false}
!133 = !{ptr @__param_str_xor_sources, !31, !"__param_str_xor_sources", i1 false, i1 false}
!134 = !{ptr @xor_sources, !135, !"xor_sources", i1 false, i1 false}
!135 = !{!"../drivers/dma/dmatest.c", i32 53, i32 21}
!136 = !{ptr @__param_str_pq_sources, !36, !"__param_str_pq_sources", i1 false, i1 false}
!137 = !{ptr @pq_sources, !138, !"pq_sources", i1 false, i1 false}
!138 = !{!"../drivers/dma/dmatest.c", i32 58, i32 21}
!139 = !{ptr @__param_str_timeout, !41, !"__param_str_timeout", i1 false, i1 false}
!140 = !{ptr @timeout, !141, !"timeout", i1 false, i1 false}
!141 = !{!"../drivers/dma/dmatest.c", i32 63, i32 12}
!142 = !{ptr @__param_str_noverify, !46, !"__param_str_noverify", i1 false, i1 false}
!143 = !{ptr @__param_str_norandom, !51, !"__param_str_norandom", i1 false, i1 false}
!144 = !{ptr @__param_str_verbose, !56, !"__param_str_verbose", i1 false, i1 false}
!145 = !{ptr @__param_str_alignment, !61, !"__param_str_alignment", i1 false, i1 false}
!146 = !{ptr @alignment, !147, !"alignment", i1 false, i1 false}
!147 = !{!"../drivers/dma/dmatest.c", i32 80, i32 12}
!148 = !{ptr @__param_str_transfer_size, !66, !"__param_str_transfer_size", i1 false, i1 false}
!149 = !{ptr @__param_str_polled, !71, !"__param_str_polled", i1 false, i1 false}
!150 = !{ptr @__param_str_run, !76, !"__param_str_run", i1 false, i1 false}
!151 = !{ptr @run_ops, !152, !"run_ops", i1 false, i1 false}
!152 = !{!"../drivers/dma/dmatest.c", i32 152, i32 38}
!153 = !{ptr @.str, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/dma/dmatest.c", i32 1198, i32 5}
!155 = !{ptr @.str.1, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.2, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @dmatest_run_set._entry, !154, !"_entry", i1 false, i1 false}
!158 = !{ptr @dmatest_run_set._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.4, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/dma/dmatest.c", i32 1203, i32 5}
!161 = !{ptr @dmatest_run_set._entry.3, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @dmatest_run_set._entry_ptr.5, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @test_channel, !164, !"test_channel", i1 false, i1 false}
!164 = !{!"../drivers/dma/dmatest.c", i32 167, i32 13}
!165 = !{ptr @.str.6, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/dma/dmatest.c", i32 1017, i32 3}
!167 = !{ptr @.str.7, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @dmatest_add_channel._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @dmatest_add_channel._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.9, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/dma/dmatest.c", i32 1027, i32 3}
!172 = !{ptr @dmatest_add_channel._entry.8, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @dmatest_add_channel._entry_ptr.10, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.12, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/dma/dmatest.c", i32 1053, i32 2}
!176 = !{ptr @dmatest_add_channel._entry.11, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @dmatest_add_channel._entry_ptr.13, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.14, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/dma/dmatest.c", i32 966, i32 8}
!180 = !{ptr @.str.15, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/dma/dmatest.c", i32 968, i32 8}
!182 = !{ptr @.str.16, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/dma/dmatest.c", i32 970, i32 8}
!184 = !{ptr @.str.17, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/dma/dmatest.c", i32 972, i32 8}
!186 = !{ptr @.str.18, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/dma/dmatest.c", i32 979, i32 4}
!188 = !{ptr @.str.19, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @dmatest_add_threads._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @dmatest_add_threads._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @dmatest_add_threads.__key, !192, !"__key", i1 false, i1 false}
!192 = !{!"../drivers/dma/dmatest.c", i32 987, i32 3}
!193 = !{ptr @.str.20, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.21, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/dma/dmatest.c", i32 989, i32 18}
!196 = !{ptr @.str.23, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/dma/dmatest.c", i32 992, i32 4}
!198 = !{ptr @dmatest_add_threads._entry.22, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @dmatest_add_threads._entry_ptr.24, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.25, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/dma/dmatest.c", i32 647, i32 3}
!202 = !{ptr @.str.26, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @dmatest_func._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @dmatest_func._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.28, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/dma/dmatest.c", i32 654, i32 3}
!207 = !{ptr @dmatest_func._entry.27, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @dmatest_func._entry_ptr.29, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.31, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/dma/dmatest.c", i32 695, i32 5}
!211 = !{ptr @dmatest_func._entry.30, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @dmatest_func._entry_ptr.32, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.33, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/dma/dmatest.c", i32 740, i32 11}
!215 = !{ptr @.str.34, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/dma/dmatest.c", i32 756, i32 12}
!217 = !{ptr @.str.35, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/dma/dmatest.c", i32 773, i32 12}
!219 = !{ptr @.str.36, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/dma/dmatest.c", i32 803, i32 11}
!221 = !{ptr @.str.37, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/dma/dmatest.c", i32 817, i32 11}
!223 = !{ptr @.str.38, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/dma/dmatest.c", i32 840, i32 11}
!225 = !{ptr @.str.39, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/dma/dmatest.c", i32 848, i32 11}
!227 = !{ptr @.str.40, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/dma/dmatest.c", i32 849, i32 11}
!229 = !{ptr @.str.41, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/dma/dmatest.c", i32 857, i32 4}
!231 = !{ptr @.str.42, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/dma/dmatest.c", i32 863, i32 3}
!233 = !{ptr @.str.43, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @dmatest_func.__UNIQUE_ID_ddebug269, !232, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!235 = !{ptr @.str.44, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.45, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/dma/dmatest.c", i32 873, i32 3}
!238 = !{ptr @dmatest_func.__UNIQUE_ID_ddebug270, !237, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!239 = !{ptr @.str.46, !237, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.47, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/dma/dmatest.c", i32 889, i32 11}
!242 = !{ptr @.str.49, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/dma/dmatest.c", i32 920, i32 2}
!244 = !{ptr @dmatest_func._entry.48, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @dmatest_func._entry_ptr.50, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.51, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/dma/dmatest.c", i32 459, i32 3}
!248 = !{ptr @.str.52, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @result._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @result._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.54, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/dma/dmatest.c", i32 462, i32 3}
!253 = !{ptr @result._entry.53, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @result._entry_ptr.55, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.56, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/dma/dmatest.c", i32 444, i32 3}
!257 = !{ptr @.str.57, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!259 = !{ptr @.str.58, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!261 = !{ptr @.str.59, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/dma/dmatest.c", i32 471, i32 2}
!263 = !{ptr @.str.60, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @dbg_result.__UNIQUE_ID_ddebug268, !262, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!265 = !{ptr @.str.61, !262, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.62, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/dma/dmatest.c", i32 421, i32 3}
!268 = !{ptr @.str.63, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @dmatest_verify._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @dmatest_verify._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.64, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/dma/dmatest.c", i32 379, i32 3}
!273 = !{ptr @.str.65, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @dmatest_mismatch._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @dmatest_mismatch._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.67, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/dma/dmatest.c", i32 383, i32 3}
!278 = !{ptr @dmatest_mismatch._entry.66, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @dmatest_mismatch._entry_ptr.68, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.70, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/dma/dmatest.c", i32 386, i32 3}
!282 = !{ptr @dmatest_mismatch._entry.69, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @dmatest_mismatch._entry_ptr.71, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.73, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/dma/dmatest.c", i32 389, i32 3}
!286 = !{ptr @dmatest_mismatch._entry.72, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @dmatest_mismatch._entry_ptr.74, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.75, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/dma/dmatest.c", i32 243, i32 8}
!290 = !{ptr @thread_wait, !289, !"thread_wait", i1 false, i1 false}
!291 = !{ptr @.str.76, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/dma/dmatest.c", i32 1131, i32 3}
!293 = !{ptr @.str.77, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @run_pending_tests._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @run_pending_tests._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @__param_str_channel, !80, !"__param_str_channel", i1 false, i1 false}
!297 = !{ptr @multi_chan_ops, !298, !"multi_chan_ops", i1 false, i1 false}
!298 = !{!"../drivers/dma/dmatest.c", i32 162, i32 38}
!299 = !{ptr @.str.78, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/dma/dmatest.c", i32 1264, i32 18}
!301 = !{ptr @newchan_kps, !302, !"newchan_kps", i1 false, i1 false}
!302 = !{!"../drivers/dma/dmatest.c", i32 168, i32 29}
!303 = !{ptr @__param_str_test_list, !84, !"__param_str_test_list", i1 false, i1 false}
!304 = !{ptr @test_list_ops, !305, !"test_list_ops", i1 false, i1 false}
!305 = !{!"../drivers/dma/dmatest.c", i32 176, i32 38}
!306 = !{ptr @.str.79, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/dma/dmatest.c", i32 1318, i32 3}
!308 = !{ptr @.str.80, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @dmatest_test_list_get._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @dmatest_test_list_get._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @__param_str_wait, !88, !"__param_str_wait", i1 false, i1 false}
!312 = !{ptr @wait_ops, !313, !"wait_ops", i1 false, i1 false}
!313 = !{!"../drivers/dma/dmatest.c", i32 289, i32 38}
!314 = !{ptr @.str.81, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/dma/dmatest.c", i32 147, i32 10}
!316 = !{ptr @.str.82, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @test_info, !318, !"test_info", i1 false, i1 false}
!318 = !{!"../drivers/dma/dmatest.c", i32 145, i32 3}
!319 = !{ptr @.str.83, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/dma/dmatest.c", i32 1145, i32 3}
!321 = !{ptr @.str.84, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @stop_threaded_test.__UNIQUE_ID_ddebug272, !320, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!323 = !{ptr @.str.85, !320, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.86, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/dma/dmatest.c", i32 943, i32 3}
!326 = !{ptr @.str.87, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @dmatest_cleanup_channel.__UNIQUE_ID_ddebug271, !325, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!328 = !{ptr @.str.88, !325, !"<string literal>", i1 false, i1 false}
!329 = !{!"sp"}
!330 = !{i32 1, !"wchar_size", i32 2}
!331 = !{i32 1, !"min_enum_size", i32 4}
!332 = !{i32 8, !"branch-target-enforcement", i32 0}
!333 = !{i32 8, !"sign-return-address", i32 0}
!334 = !{i32 8, !"sign-return-address-all", i32 0}
!335 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!336 = !{i32 7, !"uwtable", i32 1}
!337 = !{i32 7, !"frame-pointer", i32 2}
!338 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!339 = !{i8 0, i8 2}
!340 = !{i64 2148801518, i64 2148801523, i64 2148801536, i64 2148801580, i64 2148801614, i64 2148801635}
!341 = !{i64 2154177868}
!342 = !{i64 2148235383, i64 2148235415, i64 2148235444, i64 2148235478, i64 2148235509, i64 2148235532}
!343 = !{!"branch_weights", i32 1, i32 2000}
!344 = !{!"branch_weights", i32 2000, i32 1}
!345 = !{i64 2154146221}
!346 = !{!"auto-init"}
!347 = !{i64 577808, i64 577835, i64 577857, i64 577885}
!348 = !{i64 578216, i64 578243, i64 578276, i64 578297, i64 578324, i64 578350}
!349 = !{i64 2148063352, i64 2148063632, i64 2148063966, i64 2148064300}
!350 = !{i64 2153934175}
!351 = !{i64 2148323384}
!352 = !{i64 2148237848, i64 2148237880, i64 2148237909, i64 2148237943, i64 2148237974, i64 2148237997}
!353 = !{i64 2149591618}
