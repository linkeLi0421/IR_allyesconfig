; ModuleID = '/llk/IR_all_yes/drivers/rapidio/rio_cm.c_pt.bc'
source_filename = "../drivers/rapidio/rio_cm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.subsys_interface = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.channel_dev = type { %struct.cdev, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.rio_channel = type { i16, %struct.kref, ptr, ptr, ptr, i32, i32, %struct.spinlock, ptr, i32, i32, i16, %struct.list_head, %struct.list_head, %struct.completion, %struct.completion, %struct.chan_rx_ring }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.chan_rx_ring = type { [128 x ptr], i32, i32, i32, [128 x ptr], i32 }
%struct.rio_ch_base_bhdr = type <{ i32, i32, i8, i8, i8 }>
%struct.rio_ch_chan_hdr = type { %struct.rio_ch_base_bhdr, i8, i16, i16, i16, i16 }
%struct.tx_req = type { %struct.list_head, ptr, ptr, i32 }
%struct.cm_dev = type { %struct.list_head, ptr, [128 x ptr], i32, %struct.mutex, [128 x ptr], i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, i32, ptr, %struct.work_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rio_mport = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, %struct.resource, [16 x %struct.resource], [4 x %struct.rio_msg], [4 x %struct.rio_msg], i32, ptr, i8, i8, i32, i32, i32, [40 x i8], %struct.device, ptr, %struct.dma_device, ptr, %struct.atomic_t, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rio_msg = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.rio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rio_dev = type { %struct.list_head, %struct.list_head, ptr, i8, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.device, [16 x %struct.resource], ptr, i16, i8, ptr, %struct.atomic_t, [0 x %struct.rio_switch] }
%struct.rio_switch = type { %struct.list_head, ptr, i32, ptr, %struct.spinlock, [0 x ptr] }
%struct.rio_net = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i8, %struct.device, ptr, ptr }
%struct.cm_peer = type { %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.conn_req = type { %struct.list_head, i32, i16, ptr }
%struct.rio_cm_msg = type { i16, i16, i32, i64 }
%struct.rio_cm_channel = type { i16, i16, i16, i8 }
%struct.rio_cm_accept = type { i16, i16, i32 }

@__param_str_cmbox = internal constant [13 x i8] c"rio_cm.cmbox\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cmbox = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_cmbox = internal constant %struct.kernel_param { ptr @__param_str_cmbox, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @cmbox } }, section "__param", align 4
@__UNIQUE_ID_cmboxtype236 = internal constant [26 x i8] c"rio_cm.parmtype=cmbox:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cmbox237 = internal constant [53 x i8] c"rio_cm.parm=cmbox:RapidIO Mailbox number (default 1)\00", section ".modinfo", align 1
@__param_str_chstart = internal constant [15 x i8] c"rio_cm.chstart\00", align 1
@chstart = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_chstart = internal constant %struct.kernel_param { ptr @__param_str_chstart, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @chstart } }, section "__param", align 4
@__UNIQUE_ID_chstarttype238 = internal constant [28 x i8] c"rio_cm.parmtype=chstart:int\00", section ".modinfo", align 1
@__UNIQUE_ID_chstart239 = internal constant [78 x i8] c"rio_cm.parm=chstart:Start channel number for dynamic allocation (default 256)\00", section ".modinfo", align 1
@__param_str_dbg_level = internal constant [17 x i8] c"rio_cm.dbg_level\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dbg_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dbg_level = internal constant %struct.kernel_param { ptr @__param_str_dbg_level, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @dbg_level } }, section "__param", align 4
@__UNIQUE_ID_dbg_leveltype240 = internal constant [31 x i8] c"rio_cm.parmtype=dbg_level:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dbg_level241 = internal constant [64 x i8] c"rio_cm.parm=dbg_level:Debugging output level (default 0 = none)\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [60 x i8] c"rio_cm.author=Alexandre Bounine <alexandre.bounine@idt.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [56 x i8] c"rio_cm.description=RapidIO Channelized Messaging Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [35 x i8] c"rio_cm.file=drivers/rapidio/rio_cm\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [19 x i8] c"rio_cm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version246 = internal constant [21 x i8] c"rio_cm.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rio_cm\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@riocm_exit.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"riocm_exit\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rapidio/rio_cm.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rio_cm: %s enter\0A\00", [46 x i8] zeroinitializer }, align 32
@rio_cm_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rio_cm_shutdown, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@riocm_interface = internal global { %struct.subsys_interface, [40 x i8] } { %struct.subsys_interface { ptr @.str.1, ptr @rio_bus_type, %struct.list_head zeroinitializer, ptr @riocm_add_dev, ptr @riocm_remove_dev }, [40 x i8] zeroinitializer }, align 32
@rio_mport_interface = internal global %struct.class_interface { %struct.list_head zeroinitializer, ptr @rio_mport_class, ptr @riocm_add_mport, ptr @riocm_remove_mport }, section ".ref.data", align 4
@ch_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@riocm_cdev = internal global { %struct.channel_dev, [60 x i8] } zeroinitializer, align 32
@dev_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dev_number = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_rio_cm__301_2375_riocm_init7 = internal global ptr @riocm_init, section ".initcall7.init", align 4
@__exitcall_riocm_exit = internal global ptr @riocm_exit, section ".exitcall.exit", align 4
@rio_cm_shutdown.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.4, ptr @.str.7, i8 2, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rio_cm_shutdown\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rio_cm: %s .\0A\00", [18 x i8] zeroinitializer }, align 32
@idr_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rio_cm_shutdown.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.4, ptr @.str.8, i8 2, i8 52, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rio_cm: %s close ch %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idr_lock\00", [23 x i8] zeroinitializer }, align 32
@riocm_send_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rio_cm: %s ERROR ch(%d) send CLOSE failed (ret=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"riocm_send_close\00", [47 x i8] zeroinitializer }, align 32
@riocm_send_close._entry_ptr = internal global ptr @riocm_send_close._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@riocm_post_send.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 -70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riocm_post_send\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rio_cm: %s Tx Queue is full\0A\00", [35 x i8] zeroinitializer }, align 32
@riocm_post_send.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.4, ptr @.str.14, i8 0, i8 -67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"rio_cm: %s Add buf@%p destid=%x tx_slot=%d tx_cnt=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@rio_bus_type = external dso_local global %struct.bus_type, align 4
@riocm_add_dev.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 1, i8 -24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"riocm_add_dev\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rio_cm: %s (%s)\0A\00", [47 x i8] zeroinitializer }, align 32
@rdev_sem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @rdev_sem, i64 56), ptr getelementptr (i8, ptr @rdev_sem, i64 56) }, ptr @rdev_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@cm_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cm_dev_list, ptr @cm_dev_list }, [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rdev_sem.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rdev_sem\00", [23 x i8] zeroinitializer }, align 32
@riocm_remove_dev.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.4, ptr @.str.16, i8 1, i8 -12, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"riocm_remove_dev\00", [47 x i8] zeroinitializer }, align 32
@riocm_remove_dev.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 1, i8 -7, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rio_cm: %s removing peer %s\0A\00", [35 x i8] zeroinitializer }, align 32
@riocm_ch_close.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 1, i8 104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"riocm_ch_close\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rio_cm: %s ch_%d by %s(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@riocm_ch_close.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.4, ptr @.str.23, i8 1, i8 107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rio_cm: %s wait on %d returns %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@riocm_ch_close.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.4, ptr @.str.24, i8 1, i8 108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rio_cm: %s %s(%d) timed out waiting for ch %d\0A\00", [49 x i8] zeroinitializer }, align 32
@riocm_ch_close.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.4, ptr @.str.25, i8 1, i8 109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rio_cm: %s %s(%d) wait for ch %d was interrupted\0A\00", [46 x i8] zeroinitializer }, align 32
@riocm_ch_close.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.4, ptr @.str.26, i8 1, i8 111, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rio_cm: %s ch_%d resources released\0A\00", [59 x i8] zeroinitializer }, align 32
@riocm_ch_close.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.4, ptr @.str.27, i8 1, i8 111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"rio_cm: %s failed to release ch_%d resources\0A\00", [50 x i8] zeroinitializer }, align 32
@riocm_ch_free.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 1, i8 86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"riocm_ch_free\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rio_cm: %s (ch_%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@rio_mport_class = external dso_local global %struct.class, align 4
@riocm_add_mport.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 2, i8 13, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riocm_add_mport\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rio_cm: %s add mport %s\0A\00", [39 x i8] zeroinitializer }, align 32
@riocm_add_mport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 2115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rio_cm: %s ERROR failed to allocate OBMBOX_%d on %s\0A\00", [41 x i8] zeroinitializer }, align 32
@riocm_add_mport._entry_ptr = internal global ptr @riocm_add_mport._entry, section ".printk_index", align 4
@riocm_add_mport._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.4, i32 2124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rio_cm: %s ERROR failed to allocate IBMBOX_%d on %s\0A\00", [41 x i8] zeroinitializer }, align 32
@riocm_add_mport._entry_ptr.35 = internal global ptr @riocm_add_mport._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rio_cm/rxq\00", [21 x i8] zeroinitializer }, align 32
@riocm_add_mport.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cm->rx_lock\00", [19 x i8] zeroinitializer }, align 32
@riocm_add_mport.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&cm->rx_work)\00", [32 x i8] zeroinitializer }, align 32
@riocm_add_mport.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cm->tx_lock\00", [19 x i8] zeroinitializer }, align 32
@rio_txcq_handler.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 -95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rio_txcq_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rio_cm: %s for mport_%d slot %d tx_cnt %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rio_txcq_handler.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.4, ptr @.str.45, i8 0, i8 -94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rio_cm: %s slot == ack_slot\0A\00", [35 x i8] zeroinitializer }, align 32
@rio_txcq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.4, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rio_cm: %s ERROR tx_cnt %d out of sync\0A\00", [54 x i8] zeroinitializer }, align 32
@rio_txcq_handler._entry_ptr = internal global ptr @rio_txcq_handler._entry, section ".printk_index", align 4
@rio_ibmsg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rio_cm: %s ERROR Unsupported TYPE code (0x%x). Msg dropped\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rio_ibmsg_handler\00", [46 x i8] zeroinitializer }, align 32
@rio_ibmsg_handler._entry_ptr = internal global ptr @rio_ibmsg_handler._entry, section ".printk_index", align 4
@riocm_rx_get_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014rio_cm: %s WARNING no record for buffer 0x%p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"riocm_rx_get_msg\00", [47 x i8] zeroinitializer }, align 32
@riocm_rx_get_msg._entry_ptr = internal global ptr @riocm_rx_get_msg._entry, section ".printk_index", align 4
@rio_rx_data_handler.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.4, ptr @.str.52, i8 0, i8 -123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rio_rx_data_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rio_cm: %s for ch=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@rio_rx_data_handler.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.4, ptr @.str.53, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rio_cm: %s ch=%d is in wrong state=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@rio_rx_data_handler.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.4, ptr @.str.54, i8 0, i8 -117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rio_cm: %s ch=%d is full\0A\00", [38 x i8] zeroinitializer }, align 32
@rio_cm_handler.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rio_cm_handler\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rio_cm: %s OP=%x for ch=%d from %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rio_cm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rio_cm: %s ERROR Invalid packet header\0A\00", [54 x i8] zeroinitializer }, align 32
@rio_cm_handler._entry_ptr = internal global ptr @rio_cm_handler._entry, section ".printk_index", align 4
@riocm_req_handler.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 0, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"riocm_req_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"rio_cm: %s channel %d is not in listen state\0A\00", [50 x i8] zeroinitializer }, align 32
@riocm_close_handler.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.4, ptr @.str.52, i8 0, i8 115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"riocm_close_handler\00", [44 x i8] zeroinitializer }, align 32
@riocm_close_handler.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rio_cm: %s riocm_ch_close() returned %d\0A\00", [55 x i8] zeroinitializer }, align 32
@riocm_remove_mport.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 2, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"riocm_remove_mport\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rio_cm: %s %s\0A\00", [17 x i8] zeroinitializer }, align 32
@riocm_remove_mport.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.4, ptr @.str.64, i8 2, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rio_cm: %s %s drop ch_%d\0A\00", [38 x i8] zeroinitializer }, align 32
@riocm_remove_mport.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.4, ptr @.str.65, i8 2, i8 45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rio_cm: %s ATTN: peer list not empty\0A\00", [58 x i8] zeroinitializer }, align 32
@riocm_remove_mport.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.4, ptr @.str.20, i8 2, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@riocm_remove_mport.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.4, ptr @.str.66, i8 2, i8 47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rio_cm: %s %s done\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch_idr.xa_lock\00", [17 x i8] zeroinitializer }, align 32
@riocm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@riocm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 2302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013rio_cm: %s ERROR Cannot create rio_cm class\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"riocm_init\00", [21 x i8] zeroinitializer }, align 32
@riocm_init._entry_ptr = internal global ptr @riocm_init._entry, section ".printk_index", align 4
@dev_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@riocm_init.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.4, ptr @.str.70, i8 2, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rio_cm: %s Registered class with %d major\0A\00", [53 x i8] zeroinitializer }, align 32
@riocm_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.69, ptr @.str.4, i32 2322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rio_cm: %s ERROR class_interface_register error: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@riocm_init._entry_ptr.73 = internal global ptr @riocm_init._entry.71, section ".printk_index", align 4
@riocm_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.69, ptr @.str.4, i32 2332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013rio_cm: %s ERROR subsys_interface_register error: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@riocm_init._entry_ptr.76 = internal global ptr @riocm_init._entry.74, section ".printk_index", align 4
@riocm_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.69, ptr @.str.4, i32 2338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013rio_cm: %s ERROR failed to register reboot notifier (err=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@riocm_init._entry_ptr.79 = internal global ptr @riocm_init._entry.77, section ".printk_index", align 4
@riocm_cdev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @riocm_cdev_ioctl, ptr null, ptr null, i32 0, ptr @riocm_cdev_open, ptr null, ptr @riocm_cdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@riocm_cdev_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 2071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013rio_cm: %s ERROR Cannot register a device with error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"riocm_cdev_add\00", [17 x i8] zeroinitializer }, align 32
@riocm_cdev_add._entry_ptr = internal global ptr @riocm_cdev_add._entry, section ".printk_index", align 4
@riocm_cdev_add.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 2, i8 8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rio_cm: %s Added %s cdev(%d:%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cm_chan_create.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.86, ptr @.str.4, ptr @.str.87, i8 1, i8 -96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cm_chan_create\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rio_cm: %s ch_%d requested by %s(%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@cm_chan_create.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.86, ptr @.str.4, ptr @.str.88, i8 1, i8 -94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rio_cm: %s ch_%d created by %s(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@riocm_ch_create.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.89, ptr @.str.4, ptr @.str.90, i8 1, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riocm_ch_create\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rio_cm: %s Failed to allocate channel %d (err=%ld)\0A\00", [44 x i8] zeroinitializer }, align 32
@riocm_ch_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ch->lock\00", [22 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cm_chan_close.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.96, ptr @.str.4, ptr @.str.22, i8 1, i8 -89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cm_chan_close\00", [18 x i8] zeroinitializer }, align 32
@riocm_ch_bind.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str.4, ptr @.str.98, i8 1, i8 52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"riocm_ch_bind\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rio_cm: %s ch_%d to mport_%d\0A\00", [34 x i8] zeroinitializer }, align 32
@riocm_ch_listen.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.4, ptr @.str.29, i8 1, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riocm_ch_listen\00", [16 x i8] zeroinitializer }, align 32
@cm_chan_accept.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.100, ptr @.str.4, ptr @.str.101, i8 1, i8 -73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cm_chan_accept\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rio_cm: %s on ch_%d by %s(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@cm_chan_accept.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.100, ptr @.str.4, ptr @.str.102, i8 1, i8 -71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rio_cm: %s new ch_%d for %s(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@riocm_ch_accept.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.4, ptr @.str.104, i8 1, i8 18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riocm_ch_accept\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rio_cm: %s on %d\0A\00", [46 x i8] zeroinitializer }, align 32
@riocm_ch_accept.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.4, ptr @.str.105, i8 1, i8 23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"rio_cm: %s on %d accept_queue is empty on completion\0A\00", [42 x i8] zeroinitializer }, align 32
@riocm_ch_accept.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.4, ptr @.str.106, i8 1, i8 25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rio_cm: %s on %d returns %d\0A\00", [35 x i8] zeroinitializer }, align 32
@riocm_ch_accept._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.103, ptr @.str.4, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013rio_cm: %s ERROR failed to get channel for new req (%ld)\0A\00", [36 x i8] zeroinitializer }, align 32
@riocm_ch_accept._entry_ptr = internal global ptr @riocm_ch_accept._entry, section ".printk_index", align 4
@riocm_ch_accept.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.4, ptr @.str.108, i8 1, i8 33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rio_cm: %s found matching device(%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@riocm_ch_accept.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&new_ch->lock\00", [18 x i8] zeroinitializer }, align 32
@riocm_send_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.4, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013rio_cm: %s ERROR send ACK to ch_%d on %s failed (ret=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"riocm_send_ack\00", [17 x i8] zeroinitializer }, align 32
@riocm_send_ack._entry_ptr = internal global ptr @riocm_send_ack._entry, section ".printk_index", align 4
@riocm_ch_connect.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.4, ptr @.str.23, i8 0, i8 -5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"riocm_ch_connect\00", [47 x i8] zeroinitializer }, align 32
@riocm_ch_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.4, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rio_cm: %s ERROR %s(%d) ch_%d not found\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"riocm_ch_send\00", [18 x i8] zeroinitializer }, align 32
@riocm_ch_send._entry_ptr = internal global ptr @riocm_ch_send._entry, section ".printk_index", align 4
@riocm_ch_send.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.114, ptr @.str.4, ptr @.str.115, i8 0, i8 -50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rio_cm: %s ch %d send_err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@riocm_ch_receive.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.116, ptr @.str.4, ptr @.str.117, i8 0, i8 -35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"riocm_ch_receive\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rio_cm: %s wait on %d returned %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@riocm_cdev_open.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.118, ptr @.str.4, ptr @.str.119, i8 1, i8 114, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"riocm_cdev_open\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rio_cm: %s by %s(%d) filp=%p \0A\00", [33 x i8] zeroinitializer }, align 32
@riocm_cdev_release.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.121, i8 1, i8 119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"riocm_cdev_release\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rio_cm: %s by %s(%d) filp=%p\0A\00", [34 x i8] zeroinitializer }, align 32
@riocm_cdev_release.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.122, i8 1, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rio_cm: %s ch_%d not released by %s(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [13 x i64] [i64 11, i64 32, i64 1073898244, i64 1073898246, i64 1074291461, i64 1074291464, i64 1074815753, i64 3221381891, i64 3221512961, i64 3221512962, i64 3221512971, i64 3221775111, i64 3222299402]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"cmbox\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 69, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant [8 x i8] c"chstart\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 73, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [10 x i8] c"dbg_level\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 79, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 87, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2362, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"rio_cm_notifier\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2291, i32 30 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"riocm_interface\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2275, i32 32 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"ch_idr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [11 x i8] c"riocm_cdev\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 240, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant [10 x i8] c"dev_class\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 236, i32 22 }
@___asan_gen_.170 = private unnamed_addr constant [11 x i8] c"dev_number\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 239, i32 14 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2247, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [9 x i8] c"idr_lock\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2259, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 230, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1425, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 747, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 755, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1954, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [9 x i8] c"rdev_sem\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [12 x i8] c"cm_dev_list\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 233, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 234, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2002, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2022, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1441, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1453, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1457, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1462, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1468, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1471, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1368, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2103, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2114, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2123, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2130, i32 14 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2146, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2148, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2153, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 643, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 650, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 662, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 603, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 316, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 533, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 547, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 557, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 495, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 509, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 391, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 461, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 476, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2186, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2208, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2228, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2237, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 231, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2300, i32 14 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2302, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant [10 x i8] c"dev_major\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 237, i32 21 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2314, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2322, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2332, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2338, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant [16 x i8] c"riocm_cdev_fops\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1929, i32 37 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2071, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2081, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 230, i32 6 }
@___asan_gen_.441 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 214, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 174, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1665, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1672, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1351, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1314, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 36, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 87, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1691, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1234, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1206, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1755, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1766, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1098, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1116, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1124, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1132, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1156, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1172, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1051, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1007, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 792, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 825, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 887, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1482, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1500, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.573 = private constant [28 x i8] c"../drivers/rapidio/rio_cm.c\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1507, i32 4 }
@llvm.compiler.used = appending global [182 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_chstart239, ptr @__UNIQUE_ID_chstarttype238, ptr @__UNIQUE_ID_cmbox237, ptr @__UNIQUE_ID_cmboxtype236, ptr @__UNIQUE_ID_dbg_level241, ptr @__UNIQUE_ID_dbg_leveltype240, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_version246, ptr @__exitcall_riocm_exit, ptr @__initcall__kmod_rio_cm__301_2375_riocm_init7, ptr @__modver_attr, ptr @__param_chstart, ptr @__param_cmbox, ptr @__param_dbg_level, ptr @rio_cm_handler._entry, ptr @rio_cm_handler._entry_ptr, ptr @rio_ibmsg_handler._entry, ptr @rio_ibmsg_handler._entry_ptr, ptr @rio_txcq_handler._entry, ptr @rio_txcq_handler._entry_ptr, ptr @riocm_add_mport._entry, ptr @riocm_add_mport._entry.33, ptr @riocm_add_mport._entry_ptr, ptr @riocm_add_mport._entry_ptr.35, ptr @riocm_cdev_add._entry, ptr @riocm_cdev_add._entry_ptr, ptr @riocm_ch_accept._entry, ptr @riocm_ch_accept._entry_ptr, ptr @riocm_ch_send._entry, ptr @riocm_ch_send._entry_ptr, ptr @riocm_exit, ptr @riocm_init._entry, ptr @riocm_init._entry.71, ptr @riocm_init._entry.74, ptr @riocm_init._entry.77, ptr @riocm_init._entry_ptr, ptr @riocm_init._entry_ptr.73, ptr @riocm_init._entry_ptr.76, ptr @riocm_init._entry_ptr.79, ptr @riocm_rx_get_msg._entry, ptr @riocm_rx_get_msg._entry_ptr, ptr @riocm_send_ack._entry, ptr @riocm_send_ack._entry_ptr, ptr @riocm_send_close._entry, ptr @riocm_send_close._entry_ptr, ptr @cmbox, ptr @chstart, ptr @dbg_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rio_cm_notifier, ptr @riocm_interface, ptr @ch_idr, ptr @riocm_cdev, ptr @dev_class, ptr @dev_number, ptr @.str.6, ptr @.str.7, ptr @idr_lock, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rdev_sem, ptr @cm_dev_list, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @riocm_add_mport.__key, ptr @.str.38, ptr @riocm_add_mport.__key.39, ptr @.str.40, ptr @riocm_add_mport.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @riocm_init.__key, ptr @.str.68, ptr @.str.69, ptr @dev_major, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @riocm_cdev_fops, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @riocm_ch_alloc.__key, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @init_completion.__key, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @riocm_ch_accept.__key, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmbox to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chstart to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_cm_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_interface to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_cdev to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_number to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idr_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_send_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdev_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_add_mport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_add_mport._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_add_mport.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_add_mport.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_add_mport.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_txcq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_ibmsg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_rx_get_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_cm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_cdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_cdev_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_ch_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_ch_accept._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_ch_accept.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_send_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riocm_ch_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @riocm_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_exit.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_exit, %do.end8)) #11
          to label %if.then6 [label %do.end8], !srcloc !352

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_exit.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then6, %do.body1, %entry.do.end8_crit_edge
  %call9 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @rio_cm_notifier) #11
  tail call void @subsys_interface_unregister(ptr noundef nonnull @riocm_interface) #11
  tail call void @class_interface_unregister(ptr noundef nonnull @rio_mport_interface) #11
  tail call void @idr_destroy(ptr noundef nonnull @ch_idr) #11
  %1 = load ptr, ptr getelementptr inbounds (%struct.channel_dev, ptr @riocm_cdev, i32 0, i32 1), align 4
  tail call void @device_unregister(ptr noundef %1) #11
  tail call void @cdev_del(ptr noundef nonnull @riocm_cdev) #11
  %2 = load ptr, ptr @dev_class, align 4
  tail call void @class_destroy(ptr noundef %2) #11
  %3 = load i32, ptr @dev_number, align 4
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef 1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @subsys_interface_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @riocm_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @riocm_init.__key) #11
  store ptr %call, ptr @dev_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #14
  %0 = load ptr, ptr @dev_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @dev_number, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr @dev_class, align 4
  tail call void @class_destroy(ptr noundef %2) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = load i32, ptr @dev_number, align 4
  %shr = lshr i32 %3, 20
  store i32 %shr, ptr @dev_major, align 4
  %4 = load i32, ptr @dbg_level, align 4
  %and9 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.do.end25_crit_edge, label %do.body12

if.end7.do.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

do.body12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_init.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_init, %do.end25)) #11
          to label %if.then19 [label %do.end25], !srcloc !352

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %5 = load i32, ptr @dev_major, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_init.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %5) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.body12, %if.end7.do.end25_crit_edge
  %call26 = tail call i32 @class_interface_register(ptr noundef nonnull @rio_mport_interface) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.69, i32 noundef %call26) #14
  br label %err_reg

if.end34:                                         ; preds = %do.end25
  %call35 = tail call i32 @subsys_interface_register(ptr noundef nonnull @riocm_interface) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.69, i32 noundef %call35) #14
  br label %err_cl

if.end43:                                         ; preds = %if.end34
  %call44 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @rio_cm_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.69, i32 noundef %call44) #14
  br label %err_sif

if.end52:                                         ; preds = %if.end43
  %6 = load i32, ptr @dev_number, align 4
  %call53 = tail call fastcc i32 @riocm_cdev_add(i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %if.then55

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @rio_cm_notifier) #11
  br label %err_sif

err_sif:                                          ; preds = %if.then55, %do.end49
  %ret.0 = phi i32 [ %call44, %do.end49 ], [ -19, %if.then55 ]
  tail call void @subsys_interface_unregister(ptr noundef nonnull @riocm_interface) #11
  br label %err_cl

err_cl:                                           ; preds = %err_sif, %do.end40
  %ret.1 = phi i32 [ %call35, %do.end40 ], [ %ret.0, %err_sif ]
  tail call void @class_interface_unregister(ptr noundef nonnull @rio_mport_interface) #11
  br label %err_reg

err_reg:                                          ; preds = %err_cl, %do.end31
  %ret.2 = phi i32 [ %call26, %do.end31 ], [ %ret.1, %err_cl ]
  %7 = load i32, ptr @dev_number, align 4
  tail call void @unregister_chrdev_region(i32 noundef %7, i32 noundef 1) #11
  %8 = load ptr, ptr @dev_class, align 4
  tail call void @class_destroy(ptr noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %err_reg, %if.end52.cleanup_crit_edge, %if.then6, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %call5, %if.then6 ], [ %ret.2, %err_reg ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_cm_shutdown(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  %i = alloca i32, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %3 = load i32, ptr @dbg_level, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_cm_shutdown.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_cm_shutdown, %do.end9)) #11
          to label %if.then6 [label %do.end9], !srcloc !352

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_cm_shutdown.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef nonnull @idr_lock) #11
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %i, align 4
  %call1070 = call ptr @idr_get_next(ptr noundef nonnull @ch_idr, ptr noundef nonnull %i) #11
  %cmp.not71 = icmp eq ptr %call1070, null
  br i1 %cmp.not71, label %do.end9.for.end_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end9.for.body_crit_edge
  %call1072 = phi ptr [ %call10, %for.inc.for.body_crit_edge ], [ %call1070, %do.end9.for.body_crit_edge ]
  %state = getelementptr inbounds %struct.rio_channel, ptr %call1072, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp11 = icmp eq i32 %6, 2
  br i1 %cmp11, label %do.body13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body13:                                        ; preds = %for.body
  %7 = load i32, ptr @dbg_level, align 4
  %and14 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.do.end37_crit_edge, label %do.body17

do.body13.do.end37_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end37

do.body17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_cm_shutdown.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_cm_shutdown, %do.end37)) #11
          to label %if.then31 [label %do.end37], !srcloc !352

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call1072 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %call1072, align 4
  %conv = zext i16 %9 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_cm_shutdown.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %conv) #11
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body17, %do.body13.do.end37_crit_edge
  %10 = ptrtoint ptr %call1072 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call1072, align 4
  %conv39 = zext i16 %11 to i32
  %call40 = call ptr @idr_remove(ptr noundef nonnull @ch_idr, i32 noundef %conv39) #11
  %ch_node = getelementptr inbounds %struct.rio_channel, ptr %call1072, i32 0, i32 13
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ch_node, ptr noundef nonnull %list, ptr noundef %13) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end37.for.inc_crit_edge

do.end37.for.inc_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i:                                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ch_node, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %ch_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %ch_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.rio_channel, ptr %call1072, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %ch_node, ptr %list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %do.end37.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i, align 4
  %add = add i32 %19, 1
  store i32 %add, ptr %i, align 4
  %call10 = call ptr @idr_get_next(ptr noundef nonnull @ch_idr, ptr noundef nonnull %i) #11
  %cmp.not = icmp eq ptr %call10, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end9.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn73 = load ptr, ptr %list, align 4
  %cmp46.not74 = icmp eq ptr %.pn73, %list
  br i1 %cmp46.not74, label %for.end.for.end58_crit_edge, label %for.end.for.body50_crit_edge

for.end.for.body50_crit_edge:                     ; preds = %for.end
  br label %for.body50

for.end.for.end58_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end58

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.end.for.body50_crit_edge
  %.pn75 = phi ptr [ %.pn, %for.body50.for.body50_crit_edge ], [ %.pn73, %for.end.for.body50_crit_edge ]
  %ch.0 = getelementptr i8, ptr %.pn75, i32 -96
  call fastcc void @riocm_send_close(ptr noundef %ch.0)
  %21 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn75, align 4
  %cmp46.not = icmp eq ptr %.pn, %list
  br i1 %cmp46.not, label %for.body50.for.end58_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body50

for.body50.for.end58_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end58

for.end58:                                        ; preds = %for.body50.for.end58_crit_edge, %for.end.for.end58_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riocm_send_close(ptr nocapture noundef readonly %ch) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %loc_destid = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 9
  %1 = ptrtoint ptr %loc_destid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %loc_destid, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call7.i.i, align 8
  %rem_destid = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 10
  %4 = ptrtoint ptr %rem_destid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rem_destid, align 4
  %dst_id = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dst_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dst_id, align 4
  %7 = load i32, ptr @cmbox, align 4
  %conv = trunc i32 %7 to i8
  %src_mbox = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %src_mbox to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %src_mbox, align 8
  %dst_mbox = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %dst_mbox to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %dst_mbox, align 1
  %type = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 85, ptr %type, align 2
  %ch_op = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %ch_op to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %ch_op, align 1
  %rem_channel = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 11
  %12 = ptrtoint ptr %rem_channel to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rem_channel, align 4
  %dst_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %dst_ch to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %dst_ch, align 4
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ch, align 4
  %src_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %src_ch to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %src_ch, align 2
  %cmdev = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 3
  %18 = ptrtoint ptr %cmdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmdev, align 4
  %rdev = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 4
  %20 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rdev, align 4
  %call6 = tail call fastcc i32 @riocm_post_send(ptr noundef %19, ptr noundef %21, ptr noundef nonnull %call7.i.i, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call6)
  %cmp7 = icmp eq i32 %call6, -16
  br i1 %cmp7, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %22 = ptrtoint ptr %cmdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmdev, align 4
  %24 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 20) #15
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end13.thread, label %if.end.i

if.end13.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

if.end.i:                                         ; preds = %land.lhs.true
  %rdev1.i = getelementptr inbounds %struct.tx_req, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %rdev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %rdev1.i, align 8
  %buffer2.i = getelementptr inbounds %struct.tx_req, ptr %call7.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %buffer2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %buffer2.i, align 4
  %len3.i = getelementptr inbounds %struct.tx_req, ptr %call7.i.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 20, ptr %len3.i, align 8
  %tx_lock.i = getelementptr inbounds %struct.cm_dev, ptr %23, i32 0, i32 10
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #11
  %tx_reqs.i = getelementptr inbounds %struct.cm_dev, ptr %23, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.cm_dev, ptr %23, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %31, ptr noundef %tx_reqs.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.riocm_queue_req.exit.thread_crit_edge

if.end.i.riocm_queue_req.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_queue_req.exit.thread

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tx_reqs.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i.i.i, ptr %31, align 4
  br label %riocm_queue_req.exit.thread

riocm_queue_req.exit.thread:                      ; preds = %if.end.i.i.i, %if.end.i.riocm_queue_req.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call7.i) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool14.not = icmp eq i32 %call6, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.end13.do.end_crit_edge

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end13.do.end_crit_edge, %if.end13.thread
  %36 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ch, align 4
  %conv17 = zext i16 %37 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv17, i32 noundef %call6) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %riocm_queue_req.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riocm_post_send(ptr noundef %cm, ptr noundef %rdev, ptr noundef %buffer, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #11
  %mport = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 1
  %0 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mport, align 4
  %cmp5 = icmp eq ptr %1, null
  br i1 %cmp5, label %entry.err_out_crit_edge, label %if.end

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end:                                           ; preds = %entry
  %tx_cnt = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 7
  %2 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %cmp7 = icmp eq i32 %3, 128
  br i1 %cmp7, label %do.body10, label %if.end26

do.body10:                                        ; preds = %if.end
  %4 = load i32, ptr @dbg_level, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body10.err_out_crit_edge, label %do.body12

do.body10.err_out_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

do.body12:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_post_send.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_post_send, %err_out)) #11
          to label %if.then19 [label %err_out], !srcloc !352

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_post_send.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12) #11
  br label %err_out

if.end26:                                         ; preds = %if.end
  %tx_slot = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 6
  %5 = ptrtoint ptr %tx_slot to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_slot, align 4
  %arrayidx = getelementptr %struct.cm_dev, ptr %cm, i32 0, i32 5, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffer, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mport, align 4
  %10 = load i32, ptr @cmbox, align 4
  %ops.i = getelementptr inbounds %struct.rio_mport, ptr %9, i32 0, i32 11
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %add_outb_message.i = getelementptr inbounds %struct.rio_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %add_outb_message.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add_outb_message.i, align 4
  %call.i = tail call i32 %14(ptr noundef %9, ptr noundef %rdev, i32 noundef %10, ptr noundef %buffer, i32 noundef %len) #11
  %15 = load i32, ptr @dbg_level, align 4
  %and30 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end26.do.end56_crit_edge, label %do.body33

if.end26.do.end56_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56

do.body33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_post_send.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_post_send, %do.end56)) #11
          to label %if.then47 [label %do.end56], !srcloc !352

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %destid = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 24
  %16 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %destid, align 4
  %conv48 = zext i16 %17 to i32
  %18 = ptrtoint ptr %tx_slot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_slot, align 4
  %20 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_cnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_post_send.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef %buffer, i32 noundef %conv48, i32 noundef %19, i32 noundef %21) #11
  br label %do.end56

do.end56:                                         ; preds = %if.then47, %do.body33, %if.end26.do.end56_crit_edge
  %22 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_cnt, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %tx_cnt, align 4
  %24 = ptrtoint ptr %tx_slot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_slot, align 4
  %inc59 = add i32 %25, 1
  %and61 = and i32 %inc59, 127
  store i32 %and61, ptr %tx_slot, align 4
  br label %err_out

err_out:                                          ; preds = %do.end56, %if.then19, %do.body12, %do.body10.err_out_crit_edge, %entry.err_out_crit_edge
  %rc.0 = phi i32 [ %call.i, %do.end56 ], [ -19, %entry.err_out_crit_edge ], [ -16, %if.then19 ], [ -16, %do.body10.err_out_crit_edge ], [ -16, %do.body12 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call2) #11
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riocm_add_dev(ptr noundef %dev, ptr nocapture noundef readnone %sif) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -88
  %src_ops = getelementptr i8, ptr %dev, i32 -40
  %0 = ptrtoint ptr %src_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_ops, align 8
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %dst_ops = getelementptr i8, ptr %dev, i32 -36
  %2 = ptrtoint ptr %dst_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_ops, align 4
  %and1 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr @dbg_level, align 4
  %and3 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.do.end17_crit_edge, label %do.body6

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_add_dev.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_add_dev, %do.end17)) #11
          to label %if.then12 [label %do.end17], !srcloc !352

if.then12:                                        ; preds = %do.body6
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then12.rio_name.exit_crit_edge

if.then12.rio_name.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then12.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then12.rio_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_add_dev.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i) #11
  br label %do.end17

do.end17:                                         ; preds = %rio_name.exit, %do.body6, %do.body.do.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 12) #15
  %tobool19.not = icmp eq ptr %call7.i, null
  br i1 %tobool19.not, label %do.end17.cleanup_crit_edge, label %if.end21

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %do.end17
  tail call void @down_write(ptr noundef nonnull @rdev_sem) #11
  %net = getelementptr i8, ptr %dev, i32 -72
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end21
  %cm.0.in = phi ptr [ @cm_dev_list, %if.end21 ], [ %cm.0, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %cm.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cm.0 = load ptr, ptr %cm.0.in, align 4
  %cmp.not = icmp eq ptr %cm.0, @cm_dev_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %mport = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 1
  %11 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mport, align 4
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 8
  %hport = getelementptr inbounds %struct.rio_net, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %hport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hport, align 8
  %cmp27 = icmp eq ptr %12, %16
  br i1 %cmp27, label %found, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_write(ptr noundef nonnull @rdev_sem) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

found:                                            ; preds = %for.body
  %rdev34 = getelementptr inbounds %struct.cm_peer, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %rdev34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %rdev34, align 8
  %peers = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %19, ptr noundef %peers) #11
  br i1 %call.i.i, label %if.end.i.i48, label %found.list_add_tail.exit_crit_edge

found.list_add_tail.exit_crit_edge:               ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i48:                                     ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %prev.i, align 4
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %peers, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i48, %found.list_add_tail.exit_crit_edge
  %npeers = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 12
  %24 = ptrtoint ptr %npeers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %npeers, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %npeers, align 4
  tail call void @up_write(ptr noundef nonnull @rdev_sem) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %for.end, %do.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -19, %for.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %do.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @riocm_remove_dev(ptr noundef %dev, ptr nocapture noundef readnone %sif) #3 align 64 {
entry:
  %i = alloca i32, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %src_ops = getelementptr i8, ptr %dev, i32 -40
  %3 = ptrtoint ptr %src_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %src_ops, align 8
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %dst_ops = getelementptr i8, ptr %dev, i32 -36
  %5 = ptrtoint ptr %dst_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_ops, align 4
  %and1 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  %7 = load i32, ptr @dbg_level, align 4
  %and3 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.do.end17_crit_edge, label %do.body6

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_remove_dev.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_remove_dev, %do.end17)) #11
          to label %if.then12 [label %do.end17], !srcloc !352

if.then12:                                        ; preds = %do.body6
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then12.rio_name.exit_crit_edge

if.then12.rio_name.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then12.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then12.rio_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_remove_dev.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i) #11
  br label %do.end17

do.end17:                                         ; preds = %rio_name.exit, %do.body6, %do.body.do.end17_crit_edge
  call void @down_write(ptr noundef nonnull @rdev_sem) #11
  %net = getelementptr i8, ptr %dev, i32 -72
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end17
  %cm.0.in = phi ptr [ @cm_dev_list, %do.end17 ], [ %cm.0, %for.body.for.cond_crit_edge ]
  %12 = ptrtoint ptr %cm.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cm.0 = load ptr, ptr %cm.0.in, align 4
  %cmp.not = icmp eq ptr %cm.0, @cm_dev_list
  br i1 %cmp.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond
  %mport = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 1
  %13 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mport, align 4
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 8
  %hport = getelementptr inbounds %struct.rio_net, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %hport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hport, align 8
  %cmp24 = icmp eq ptr %14, %18
  br i1 %cmp24, label %if.end34, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end34:                                         ; preds = %for.body
  %peers = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 11
  br label %for.cond39

for.cond39:                                       ; preds = %for.body44.for.cond39_crit_edge, %if.end34
  %peer.0.in = phi ptr [ %peers, %if.end34 ], [ %peer.0, %for.body44.for.cond39_crit_edge ]
  %19 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %peer.0 = load ptr, ptr %peer.0.in, align 4
  %cmp41.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp41.not, label %for.cond39.cleanup.sink.split_crit_edge, label %for.body44

for.cond39.cleanup.sink.split_crit_edge:          ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.body44:                                       ; preds = %for.cond39
  %rdev45 = getelementptr inbounds %struct.cm_peer, ptr %peer.0, i32 0, i32 1
  %20 = ptrtoint ptr %rdev45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rdev45, align 4
  %cmp46 = icmp eq ptr %21, %add.ptr
  br i1 %cmp46, label %do.body48, label %for.body44.for.cond39_crit_edge

for.body44.for.cond39_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond39

do.body48:                                        ; preds = %for.body44
  %22 = load i32, ptr @dbg_level, align 4
  %and49 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.do.end73_crit_edge, label %do.body52

do.body48.do.end73_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

do.body52:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_remove_dev.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_remove_dev, %do.end73)) #11
          to label %if.then66 [label %do.end73], !srcloc !352

if.then66:                                        ; preds = %do.body52
  %init_name.i.i170 = getelementptr i8, ptr %dev, i32 144
  %23 = ptrtoint ptr %init_name.i.i170 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i170, align 8
  %tobool.not.i.i171 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i171, label %if.end.i.i173, label %if.then66.rio_name.exit175_crit_edge

if.then66.rio_name.exit175_crit_edge:             ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_name.exit175

if.end.i.i173:                                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %rio_name.exit175

rio_name.exit175:                                 ; preds = %if.end.i.i173, %if.then66.rio_name.exit175_crit_edge
  %retval.0.i.i174 = phi ptr [ %26, %if.end.i.i173 ], [ %24, %if.then66.rio_name.exit175_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_remove_dev.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i174) #11
  br label %do.end73

do.end73:                                         ; preds = %rio_name.exit175, %do.body52, %do.body48.do.end73_crit_edge
  %call.i.i176 = call zeroext i1 @__list_del_entry_valid(ptr noundef %peer.0) #11
  br i1 %call.i.i176, label %if.end.i.i177, label %do.end73.list_del.exit_crit_edge

do.end73.list_del.exit_crit_edge:                 ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i177:                                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %peer.0, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %peer.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peer.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i177, %do.end73.list_del.exit_crit_edge
  %33 = ptrtoint ptr %peer.0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %peer.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %peer.0, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %npeers = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 12
  %35 = ptrtoint ptr %npeers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %npeers, align 4
  %dec = add i32 %36, -1
  store i32 %dec, ptr %npeers, align 4
  call void @kfree(ptr noundef %peer.0) #11
  call void @up_write(ptr noundef nonnull @rdev_sem) #11
  call void @_raw_spin_lock_bh(ptr noundef nonnull @idr_lock) #11
  %37 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %i, align 4
  %call87191 = call ptr @idr_get_next(ptr noundef nonnull @ch_idr, ptr noundef nonnull %i) #11
  %cmp88.not192 = icmp eq ptr %call87191, null
  br i1 %cmp88.not192, label %list_del.exit.for.end103_crit_edge, label %land.lhs.true91.lr.ph

list_del.exit.for.end103_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end103

land.lhs.true91.lr.ph:                            ; preds = %list_del.exit
  %state = getelementptr i8, ptr %dev, i32 1452
  br label %land.lhs.true91

land.lhs.true91:                                  ; preds = %for.inc102.land.lhs.true91_crit_edge, %land.lhs.true91.lr.ph
  %call87193 = phi ptr [ %call87191, %land.lhs.true91.lr.ph ], [ %call87, %for.inc102.land.lhs.true91_crit_edge ]
  %rdev92 = getelementptr inbounds %struct.rio_channel, ptr %call87193, i32 0, i32 4
  %38 = ptrtoint ptr %rdev92 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rdev92, align 4
  %cmp93 = icmp eq ptr %39, %add.ptr
  br i1 %cmp93, label %if.then94, label %land.lhs.true91.for.inc102_crit_edge

land.lhs.true91.for.inc102_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc102

if.then94:                                        ; preds = %land.lhs.true91
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #11
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp96.not = icmp eq i32 %41, 3
  br i1 %cmp96.not, label %if.then94.if.end99_crit_edge, label %if.then97

if.then94.if.end99_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then97:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  %lock.i = getelementptr inbounds %struct.rio_channel, ptr %call87193, i32 0, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %state.i = getelementptr inbounds %struct.rio_channel, ptr %call87193, i32 0, i32 5
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %state.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.then94.if.end99_crit_edge
  %43 = ptrtoint ptr %call87193 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %call87193, align 4
  %conv = zext i16 %44 to i32
  %call100 = call ptr @idr_remove(ptr noundef nonnull @ch_idr, i32 noundef %conv) #11
  %ch_node = getelementptr inbounds %struct.rio_channel, ptr %call87193, i32 0, i32 13
  %45 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %list, align 4
  %call.i.i178 = call zeroext i1 @__list_add_valid(ptr noundef %ch_node, ptr noundef nonnull %list, ptr noundef %46) #11
  br i1 %call.i.i178, label %if.end.i.i179, label %if.end99.for.inc102_crit_edge

if.end99.for.inc102_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc102

if.end.i.i179:                                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %ch_node, ptr %prev1.i.i, align 4
  %48 = ptrtoint ptr %ch_node to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %ch_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.rio_channel, ptr %call87193, i32 0, i32 13, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %list, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %ch_node, ptr %list, align 4
  br label %for.inc102

for.inc102:                                       ; preds = %if.end.i.i179, %if.end99.for.inc102_crit_edge, %land.lhs.true91.for.inc102_crit_edge
  %51 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i, align 4
  %add = add i32 %52, 1
  store i32 %add, ptr %i, align 4
  %call87 = call ptr @idr_get_next(ptr noundef nonnull @ch_idr, ptr noundef nonnull %i) #11
  %cmp88.not = icmp eq ptr %call87, null
  br i1 %cmp88.not, label %for.inc102.for.end103_crit_edge, label %for.inc102.land.lhs.true91_crit_edge

for.inc102.land.lhs.true91_crit_edge:             ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true91

for.inc102.for.end103_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end103

for.end103:                                       ; preds = %for.inc102.for.end103_crit_edge, %list_del.exit.for.end103_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  %53 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %54, %list
  br i1 %cmp.i.not, label %for.end103.cleanup_crit_edge, label %for.end103.for.body122_crit_edge

for.end103.for.body122_crit_edge:                 ; preds = %for.end103
  br label %for.body122

for.end103.cleanup_crit_edge:                     ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body122:                                      ; preds = %list_del.exit185.for.body122_crit_edge, %for.end103.for.body122_crit_edge
  %.pn.in195 = phi ptr [ %.pn, %list_del.exit185.for.body122_crit_edge ], [ %54, %for.end103.for.body122_crit_edge ]
  %ch.0 = getelementptr i8, ptr %.pn.in195, i32 -96
  %55 = ptrtoint ptr %.pn.in195 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load ptr, ptr %.pn.in195, align 4
  %call.i.i180 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in195) #11
  br i1 %call.i.i180, label %if.end.i.i183, label %for.body122.list_del.exit185_crit_edge

for.body122.list_del.exit185_crit_edge:           ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit185

if.end.i.i183:                                    ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i181 = getelementptr inbounds %struct.list_head, ptr %.pn.in195, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i181 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i181, align 4
  %58 = ptrtoint ptr %.pn.in195 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %.pn.in195, align 4
  %prev1.i.i.i182 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i182 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i182, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit185

list_del.exit185:                                 ; preds = %if.end.i.i183, %for.body122.list_del.exit185_crit_edge
  %62 = ptrtoint ptr %.pn.in195 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in195, align 4
  %prev.i184 = getelementptr inbounds %struct.list_head, ptr %.pn.in195, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i184, align 4
  %call124 = call fastcc i32 @riocm_ch_close(ptr noundef %ch.0)
  %cmp118.not = icmp eq ptr %.pn, %list
  br i1 %cmp118.not, label %list_del.exit185.cleanup_crit_edge, label %list_del.exit185.for.body122_crit_edge

list_del.exit185.for.body122_crit_edge:           ; preds = %list_del.exit185
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body122

list_del.exit185.cleanup_crit_edge:               ; preds = %list_del.exit185
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.cond39.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge
  call void @up_write(ptr noundef nonnull @rdev_sem) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %list_del.exit185.cleanup_crit_edge, %for.end103.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riocm_ch_close(ptr noundef %ch) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body1

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_close.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_close, %do.end14)) #11
          to label %if.then7 [label %do.end14], !srcloc !352

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ch, align 4
  %conv = zext i16 %2 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_close.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %conv, ptr noundef %comm, i32 noundef %8) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then7, %do.body1, %entry.do.end14_crit_edge
  %lock.i = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %state.i = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 5
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 4
  store i32 6, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.then17, label %do.end14.if.end19_crit_edge

do.end14.if.end19_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @riocm_send_close(ptr noundef %ch)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.end14.if.end19_crit_edge
  %comp = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 14
  tail call void @complete_all(ptr noundef %comp) #11
  %ref.i = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.riocm_put_channel.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.riocm_put_channel.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_put_channel.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %riocm_put_channel.exit

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i) #11
  br label %riocm_put_channel.exit

riocm_put_channel.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.riocm_put_channel.exit_crit_edge
  %comp_close = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 15
  %call20 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %comp_close, i32 noundef 300) #11
  %12 = load i32, ptr @dbg_level, align 4
  %and22 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %riocm_put_channel.exit.do.end47_crit_edge, label %do.body25

riocm_put_channel.exit.do.end47_crit_edge:        ; preds = %riocm_put_channel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.body25:                                        ; preds = %riocm_put_channel.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_close.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_close, %do.end47)) #11
          to label %if.then39 [label %do.end47], !srcloc !352

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ch, align 4
  %conv41 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_close.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %conv41, i32 noundef %call20) #11
  br label %do.end47

do.end47:                                         ; preds = %if.then39, %do.body25, %riocm_put_channel.exit.do.end47_crit_edge
  %15 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %do.body126 [
    i32 0, label %do.body51
    i32 -512, label %do.body88
  ]

do.body51:                                        ; preds = %do.end47
  %16 = load i32, ptr @dbg_level, align 4
  %and52 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.do.body154_crit_edge, label %do.body55

do.body51.do.body154_crit_edge:                   ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body154

do.body55:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_close.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_close, %do.body154)) #11
          to label %if.then69 [label %do.body154], !srcloc !352

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  %17 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i211 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i211 to ptr
  %task71 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task71 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task71, align 8
  %comm72 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %pid.i212 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid.i212 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid.i212, align 8
  %23 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ch, align 4
  %conv78 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_close.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, ptr noundef %comm72, i32 noundef %22, i32 noundef %conv78) #11
  br label %do.body154

do.body88:                                        ; preds = %do.end47
  %25 = load i32, ptr @dbg_level, align 4
  %and89 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.do.body154_crit_edge, label %do.body92

do.body88.do.body154_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body154

do.body92:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_close.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_close, %do.body154)) #11
          to label %if.then106 [label %do.body154], !srcloc !352

if.then106:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i213 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i213 to ptr
  %task108 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task108 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task108, align 8
  %comm109 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %pid.i214 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i214 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i214, align 8
  %32 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ch, align 4
  %conv115 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_close.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, ptr noundef %comm109, i32 noundef %31, i32 noundef %conv115) #11
  br label %do.body154

do.body126:                                       ; preds = %do.end47
  %34 = load i32, ptr @dbg_level, align 4
  %and127 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body126.do.end152_crit_edge, label %do.body130

do.body126.do.end152_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end152

do.body130:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_close.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_close, %do.end152)) #11
          to label %if.then144 [label %do.end152], !srcloc !352

if.then144:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ch, align 4
  %conv146 = zext i16 %36 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_close.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i32 noundef %conv146) #11
  br label %do.end152

do.end152:                                        ; preds = %if.then144, %do.body130, %do.body126.do.end152_crit_edge
  tail call void @kfree(ptr noundef %ch) #11
  br label %if.end181

do.body154:                                       ; preds = %if.then106, %do.body92, %do.body88.do.body154_crit_edge, %if.then69, %do.body55, %do.body51.do.body154_crit_edge
  %ret.0.ph = phi i32 [ -4, %do.body88.do.body154_crit_edge ], [ -4, %if.then106 ], [ -110, %do.body51.do.body154_crit_edge ], [ -110, %if.then69 ], [ -110, %do.body55 ], [ -4, %do.body92 ]
  %37 = load i32, ptr @dbg_level, align 4
  %and155 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %do.body154.if.end181_crit_edge, label %do.body158

do.body154.if.end181_crit_edge:                   ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

do.body158:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_close.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_close, %if.end181)) #11
          to label %if.then172 [label %if.end181], !srcloc !352

if.then172:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ch, align 4
  %conv174 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_close.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21, i32 noundef %conv174) #11
  br label %if.end181

if.end181:                                        ; preds = %if.then172, %do.body158, %do.body154.if.end181_crit_edge, %do.end152
  %ret.0221 = phi i32 [ %ret.0.ph, %do.body154.if.end181_crit_edge ], [ %ret.0.ph, %if.then172 ], [ 0, %do.end152 ], [ %ret.0.ph, %do.body158 ]
  ret i32 %ret.0221
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riocm_ch_free(ptr noundef %ref) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -4
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_free.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_free, %do.end10)) #11
          to label %if.then7 [label %do.end10], !srcloc !352

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %add.ptr, align 4
  %conv = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_free.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %conv) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %rx_ring = getelementptr i8, ptr %ref, i32 212
  %inuse_cnt = getelementptr i8, ptr %ref, i32 1248
  %3 = ptrtoint ptr %inuse_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inuse_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %do.end10.if.end27_crit_edge, label %for.cond.preheader

do.end10.if.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

for.cond.preheader:                               ; preds = %do.end10
  %inuse = getelementptr i8, ptr %ref, i32 736
  br label %for.body

land.rhsthread-pre-split:                         ; preds = %for.inc
  %5 = ptrtoint ptr %inuse_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %inuse_cnt, align 4
  %tobool16.not = icmp eq i32 %.pr, 0
  br i1 %tobool16.not, label %land.rhsthread-pre-split.if.end27_crit_edge, label %land.rhsthread-pre-split.for.body_crit_edge

land.rhsthread-pre-split.for.body_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

land.rhsthread-pre-split.if.end27_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

for.body:                                         ; preds = %land.rhsthread-pre-split.for.body_crit_edge, %for.cond.preheader
  %i.07680 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %land.rhsthread-pre-split.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x ptr], ptr %inuse, i32 0, i32 %i.07680
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp18.not = icmp eq ptr %7, null
  br i1 %cmp18.not, label %for.body.for.inc_crit_edge, label %if.then20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %7) #11
  %8 = ptrtoint ptr %inuse_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inuse_cnt, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %inuse_cnt, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07680, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc.if.end27_crit_edge, label %land.rhsthread-pre-split

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end27:                                         ; preds = %for.inc.if.end27_crit_edge, %land.rhsthread-pre-split.if.end27_crit_edge, %do.end10.if.end27_crit_edge
  %count = getelementptr i8, ptr %ref, i32 732
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool29.not = icmp eq i32 %11, 0
  br i1 %tobool29.not, label %if.end27.if.end55_crit_edge, label %if.end27.for.body39_crit_edge

if.end27.for.body39_crit_edge:                    ; preds = %if.end27
  br label %for.body39

if.end27.if.end55_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

land.rhs34thread-pre-split:                       ; preds = %for.inc52
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr79 = load i32, ptr %count, align 4
  %tobool37.not = icmp eq i32 %.pr79, 0
  br i1 %tobool37.not, label %land.rhs34thread-pre-split.if.end55_crit_edge, label %land.rhs34thread-pre-split.for.body39_crit_edge

land.rhs34thread-pre-split.for.body39_crit_edge:  ; preds = %land.rhs34thread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39

land.rhs34thread-pre-split.if.end55_crit_edge:    ; preds = %land.rhs34thread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

for.body39:                                       ; preds = %land.rhs34thread-pre-split.for.body39_crit_edge, %if.end27.for.body39_crit_edge
  %i.17782 = phi i32 [ %inc53, %land.rhs34thread-pre-split.for.body39_crit_edge ], [ 0, %if.end27.for.body39_crit_edge ]
  %arrayidx41 = getelementptr [128 x ptr], ptr %rx_ring, i32 0, i32 %i.17782
  %13 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx41, align 4
  %cmp42.not = icmp eq ptr %14, null
  br i1 %cmp42.not, label %for.body39.for.inc52_crit_edge, label %if.then44

for.body39.for.inc52_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc52

if.then44:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %14) #11
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %dec50 = add i32 %16, -1
  store i32 %dec50, ptr %count, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %if.then44, %for.body39.for.inc52_crit_edge
  %inc53 = add nuw nsw i32 %i.17782, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc53)
  %exitcond78.not = icmp eq i32 %inc53, 128
  br i1 %exitcond78.not, label %for.inc52.if.end55_crit_edge, label %land.rhs34thread-pre-split

for.inc52.if.end55_crit_edge:                     ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.end55:                                         ; preds = %for.inc52.if.end55_crit_edge, %land.rhs34thread-pre-split.if.end55_crit_edge, %if.end27.if.end55_crit_edge
  %comp_close = getelementptr i8, ptr %ref, i32 156
  tail call void @complete(ptr noundef %comp_close) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riocm_add_mport(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -800
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_add_mport.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_add_mport, %do.end10)) #11
          to label %if.then7 [label %do.end10], !srcloc !352

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %dev, i32 -40
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_add_mport.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, ptr noundef %name) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1256) #15
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %mport15 = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %mport15 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %mport15, align 8
  %3 = load i32, ptr @cmbox, align 4
  %call16 = tail call i32 @rio_request_outb_mbox(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, i32 noundef %3, i32 noundef 128, ptr noundef nonnull @riocm_outb_msg_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %4 = load i32, ptr @cmbox, align 4
  br i1 %tobool17.not, label %if.end26, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %name23 = getelementptr i8, ptr %dev, i32 -40
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %4, ptr noundef %name23) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %call27 = tail call i32 @rio_request_inb_mbox(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, i32 noundef %4, i32 noundef 128, ptr noundef nonnull @riocm_inb_msg_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end38, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %5 = load i32, ptr @cmbox, align 4
  %name34 = getelementptr i8, ptr %dev, i32 -40
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30, i32 noundef %5, ptr noundef %name34) #14
  %6 = load i32, ptr @cmbox, align 4
  %call37 = tail call i32 @rio_release_outb_mbox(ptr noundef %add.ptr, i32 noundef %6) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end26
  %call39 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.36, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.37) #11
  %rx_wq = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %rx_wq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call39, ptr %rx_wq, align 8
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %if.then42, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end38
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 12
  %8 = call ptr @memset(ptr %uglygep, i32 0, i32 512)
  %rx_slots = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %rx_slots to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %rx_slots, align 4
  %rx_lock = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @riocm_add_mport.__key) #11
  %10 = ptrtoint ptr %rx_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %for.body.preheader.riocm_rx_fill.exit_crit_edge, label %for.body.preheader.land.lhs.true.i_crit_edge

for.body.preheader.land.lhs.true.i_crit_edge:     ; preds = %for.body.preheader
  br label %land.lhs.true.i

for.body.preheader.riocm_rx_fill.exit_crit_edge:  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_rx_fill.exit

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %12 = load i32, ptr @cmbox, align 4
  %call43 = tail call i32 @rio_release_inb_mbox(ptr noundef %add.ptr, i32 noundef %12) #11
  %13 = load i32, ptr @cmbox, align 4
  %call44 = tail call i32 @rio_release_outb_mbox(ptr noundef %add.ptr, i32 noundef %13) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %for.inc.i.land.lhs.true.i_crit_edge, %for.body.preheader.land.lhs.true.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %for.inc.i.land.lhs.true.i_crit_edge ], [ 0, %for.body.preheader.land.lhs.true.i_crit_edge ]
  %nent.addr.033.i = phi i32 [ %nent.addr.1.i, %for.inc.i.land.lhs.true.i_crit_edge ], [ 128, %for.body.preheader.land.lhs.true.i_crit_edge ]
  %14 = ptrtoint ptr %rx_slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nent.addr.033.i)
  %tobool3.not.i = icmp eq i32 %nent.addr.033.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.riocm_rx_fill.exit_crit_edge, label %for.body.i

land.lhs.true.i.riocm_rx_fill.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_rx_fill.exit

for.body.i:                                       ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr %struct.cm_dev, ptr %call7.i.i, i32 0, i32 2, i32 %i.034.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %cmp4.i = icmp eq ptr %17, null
  br i1 %cmp4.i, label %if.then5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i100 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 4096) #15
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i100, ptr %arrayidx.i, align 4
  %cmp10.i = icmp eq ptr %call7.i.i100, null
  br i1 %cmp10.i, label %if.then5.i.riocm_rx_fill.exit_crit_edge, label %if.end12.i

if.then5.i.riocm_rx_fill.exit_crit_edge:          ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_rx_fill.exit

if.end12.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %mport15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mport15, align 8
  %22 = load i32, ptr @cmbox, align 4
  %ops.i.i = getelementptr inbounds %struct.rio_mport, ptr %21, i32 0, i32 11
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %add_inb_buffer.i.i = getelementptr inbounds %struct.rio_ops, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %add_inb_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add_inb_buffer.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %21, i32 noundef %22, ptr noundef nonnull %call7.i.i100) #11
  %27 = ptrtoint ptr %rx_slots to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_slots, align 4
  %dec.i = add i32 %28, -1
  store i32 %dec.i, ptr %rx_slots, align 4
  %dec17.i = add i32 %nent.addr.033.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %for.body.i.for.inc.i_crit_edge
  %nent.addr.1.i = phi i32 [ %dec17.i, %if.end12.i ], [ %nent.addr.033.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.inc.i.riocm_rx_fill.exit_crit_edge, label %for.inc.i.land.lhs.true.i_crit_edge

for.inc.i.land.lhs.true.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.inc.i.riocm_rx_fill.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_rx_fill.exit

riocm_rx_fill.exit:                               ; preds = %for.inc.i.riocm_rx_fill.exit_crit_edge, %if.then5.i.riocm_rx_fill.exit_crit_edge, %land.lhs.true.i.riocm_rx_fill.exit_crit_edge, %for.body.preheader.riocm_rx_fill.exit_crit_edge
  %rx_work = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %rx_work, i32 noundef 0) #11
  %29 = ptrtoint ptr %rx_work to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %rx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.40, ptr noundef nonnull @riocm_add_mport.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry53 = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 14, i32 1
  %30 = ptrtoint ptr %entry53 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry53, ptr %entry53, align 8
  %prev.i = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry53, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 14, i32 2
  %32 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @rio_ibmsg_handler, ptr %func, align 8
  %tx_slot = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %tx_slot to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %tx_slot, align 4
  %tx_cnt = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %tx_cnt, align 8
  %tx_ack_slot = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %tx_ack_slot to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %tx_ack_slot, align 4
  %tx_lock = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.42, ptr noundef nonnull @riocm_add_mport.__key.41, i16 noundef signext 3) #11
  %peers = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 11
  %36 = ptrtoint ptr %peers to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %peers, ptr %peers, align 4
  %prev.i101 = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %peers, ptr %prev.i101, align 8
  %npeers = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 12
  %38 = ptrtoint ptr %npeers to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %npeers, align 4
  %tx_reqs = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %tx_reqs, ptr %tx_reqs, align 8
  %prev.i102 = getelementptr inbounds %struct.cm_dev, ptr %call7.i.i, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tx_reqs, ptr %prev.i102, align 4
  tail call void @down_write(ptr noundef nonnull @rdev_sem) #11
  %41 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cm_dev_list, i32 0, i32 1), align 4
  %call.i.i103 = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %41, ptr noundef nonnull @cm_dev_list) #11
  br i1 %call.i.i103, label %if.end.i.i, label %riocm_rx_fill.exit.list_add_tail.exit_crit_edge

riocm_rx_fill.exit.list_add_tail.exit_crit_edge:  ; preds = %riocm_rx_fill.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %riocm_rx_fill.exit
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @cm_dev_list, i32 0, i32 1), align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @cm_dev_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %riocm_rx_fill.exit.list_add_tail.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @rdev_sem) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then42, %do.end32, %do.end21, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end21 ], [ -19, %do.end32 ], [ 0, %list_add_tail.exit ], [ -12, %if.then42 ], [ -12, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @riocm_remove_mport(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #3 align 64 {
entry:
  %i = alloca i32, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -800
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %3 = load i32, ptr @dbg_level, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_remove_mport.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_remove_mport, %do.end10)) #11
          to label %if.then7 [label %do.end10], !srcloc !352

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %dev, i32 -40
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_remove_mport.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, ptr noundef %name) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  call void @down_write(ptr noundef nonnull @rdev_sem) #11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end10
  %cm.0.in = phi ptr [ @cm_dev_list, %do.end10 ], [ %cm.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %cm.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cm.0 = load ptr, ptr %cm.0.in, align 4
  %cmp.not = icmp eq ptr %cm.0, @cm_dev_list
  br i1 %cmp.not, label %if.then28.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %mport17 = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 1
  %5 = ptrtoint ptr %mport17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mport17, align 4
  %cmp18 = icmp eq ptr %6, %add.ptr
  br i1 %cmp18, label %if.then19, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then19:                                        ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %cm.0) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then19.list_del.exit_crit_edge

if.then19.list_del.exit_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cm.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %cm.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cm.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then19.list_del.exit_crit_edge
  %13 = ptrtoint ptr %cm.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %cm.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cm.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @up_write(ptr noundef nonnull @rdev_sem) #11
  %rx_wq = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 13
  %15 = ptrtoint ptr %rx_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_wq, align 4
  call void @flush_workqueue(ptr noundef %16) #11
  %17 = ptrtoint ptr %rx_wq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_wq, align 4
  call void @destroy_workqueue(ptr noundef %18) #11
  call void @_raw_spin_lock_bh(ptr noundef nonnull @idr_lock) #11
  %19 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %i, align 4
  %call32281 = call ptr @idr_get_next(ptr noundef nonnull @ch_idr, ptr noundef nonnull %i) #11
  %cmp33.not282 = icmp eq ptr %call32281, null
  br i1 %cmp33.not282, label %list_del.exit.for.end69_crit_edge, label %for.body34.lr.ph

list_del.exit.for.end69_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end69

for.body34.lr.ph:                                 ; preds = %list_del.exit
  %name56 = getelementptr i8, ptr %dev, i32 -40
  br label %for.body34

if.then28.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  call void @up_write(ptr noundef nonnull @rdev_sem) #11
  br label %cleanup

for.body34:                                       ; preds = %for.inc68.for.body34_crit_edge, %for.body34.lr.ph
  %call32283 = phi ptr [ %call32281, %for.body34.lr.ph ], [ %call32, %for.inc68.for.body34_crit_edge ]
  %cmdev = getelementptr inbounds %struct.rio_channel, ptr %call32283, i32 0, i32 3
  %20 = ptrtoint ptr %cmdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmdev, align 4
  %cmp35 = icmp eq ptr %21, %cm.0
  br i1 %cmp35, label %do.body37, label %for.body34.for.inc68_crit_edge

for.body34.for.inc68_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68

do.body37:                                        ; preds = %for.body34
  %22 = load i32, ptr @dbg_level, align 4
  %and38 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.do.end63_crit_edge, label %do.body41

do.body37.do.end63_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_remove_mport.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_remove_mport, %do.end63)) #11
          to label %if.then55 [label %do.end63], !srcloc !352

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %call32283 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call32283, align 4
  %conv = zext i16 %24 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_remove_mport.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, ptr noundef %name56, i32 noundef %conv) #11
  br label %do.end63

do.end63:                                         ; preds = %if.then55, %do.body41, %do.body37.do.end63_crit_edge
  %25 = ptrtoint ptr %call32283 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call32283, align 4
  %conv65 = zext i16 %26 to i32
  %call66 = call ptr @idr_remove(ptr noundef nonnull @ch_idr, i32 noundef %conv65) #11
  %ch_node = getelementptr inbounds %struct.rio_channel, ptr %call32283, i32 0, i32 13
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  %call.i.i258 = call zeroext i1 @__list_add_valid(ptr noundef %ch_node, ptr noundef nonnull %list, ptr noundef %28) #11
  br i1 %call.i.i258, label %if.end.i.i259, label %do.end63.for.inc68_crit_edge

do.end63.for.inc68_crit_edge:                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68

if.end.i.i259:                                    ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ch_node, ptr %prev1.i.i, align 4
  %30 = ptrtoint ptr %ch_node to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %ch_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.rio_channel, ptr %call32283, i32 0, i32 13, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %ch_node, ptr %list, align 4
  br label %for.inc68

for.inc68:                                        ; preds = %if.end.i.i259, %do.end63.for.inc68_crit_edge, %for.body34.for.inc68_crit_edge
  %33 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i, align 4
  %add = add i32 %34, 1
  store i32 %add, ptr %i, align 4
  %call32 = call ptr @idr_get_next(ptr noundef nonnull @ch_idr, ptr noundef nonnull %i) #11
  %cmp33.not = icmp eq ptr %call32, null
  br i1 %cmp33.not, label %for.inc68.for.end69_crit_edge, label %for.inc68.for.body34_crit_edge

for.inc68.for.body34_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body34

for.inc68.for.end69_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end69

for.end69:                                        ; preds = %for.inc68.for.end69_crit_edge, %list_del.exit.for.end69_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  %35 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %36, %list
  br i1 %cmp.i.not, label %for.end69.if.end98_crit_edge, label %for.end69.for.body88_crit_edge

for.end69.for.body88_crit_edge:                   ; preds = %for.end69
  br label %for.body88

for.end69.if.end98_crit_edge:                     ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

for.body88:                                       ; preds = %list_del.exit265.for.body88_crit_edge, %for.end69.for.body88_crit_edge
  %.pn.in285 = phi ptr [ %.pn, %list_del.exit265.for.body88_crit_edge ], [ %36, %for.end69.for.body88_crit_edge ]
  %ch.0 = getelementptr i8, ptr %.pn.in285, i32 -96
  %37 = ptrtoint ptr %.pn.in285 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn.in285, align 4
  %call.i.i260 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in285) #11
  br i1 %call.i.i260, label %if.end.i.i263, label %for.body88.list_del.exit265_crit_edge

for.body88.list_del.exit265_crit_edge:            ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit265

if.end.i.i263:                                    ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i261 = getelementptr inbounds %struct.list_head, ptr %.pn.in285, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i261 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i261, align 4
  %40 = ptrtoint ptr %.pn.in285 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn.in285, align 4
  %prev1.i.i.i262 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i262 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i262, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit265

list_del.exit265:                                 ; preds = %if.end.i.i263, %for.body88.list_del.exit265_crit_edge
  %44 = ptrtoint ptr %.pn.in285 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in285, align 4
  %prev.i264 = getelementptr inbounds %struct.list_head, ptr %.pn.in285, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i264 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i264, align 4
  %call90 = call fastcc i32 @riocm_ch_close(ptr noundef %ch.0)
  %cmp84.not = icmp eq ptr %.pn, %list
  br i1 %cmp84.not, label %list_del.exit265.if.end98_crit_edge, label %list_del.exit265.for.body88_crit_edge

list_del.exit265.for.body88_crit_edge:            ; preds = %list_del.exit265
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body88

list_del.exit265.if.end98_crit_edge:              ; preds = %list_del.exit265
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.end98:                                         ; preds = %list_del.exit265.if.end98_crit_edge, %for.end69.if.end98_crit_edge
  %46 = load i32, ptr @cmbox, align 4
  %call99 = call i32 @rio_release_inb_mbox(ptr noundef %add.ptr, i32 noundef %46) #11
  %47 = load i32, ptr @cmbox, align 4
  %call100 = call i32 @rio_release_outb_mbox(ptr noundef %add.ptr, i32 noundef %47) #11
  %peers = getelementptr inbounds %struct.cm_dev, ptr %cm.0, i32 0, i32 11
  %48 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %peers, align 4
  %cmp.i266.not = icmp eq ptr %49, %peers
  br i1 %cmp.i266.not, label %if.end98.if.end129_crit_edge, label %do.body104

if.end98.if.end129_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

do.body104:                                       ; preds = %if.end98
  %50 = load i32, ptr @dbg_level, align 4
  %and105 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.body104.if.end129_crit_edge, label %do.body108

do.body104.if.end129_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

do.body108:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_remove_mport.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_remove_mport, %if.end129)) #11
          to label %if.then122 [label %if.end129], !srcloc !352

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_remove_mport.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.62) #11
  br label %if.end129

if.end129:                                        ; preds = %if.then122, %do.body108, %do.body104.if.end129_crit_edge, %if.end98.if.end129_crit_edge
  %51 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %peers, align 4
  %cmp142.not288 = icmp eq ptr %52, %peers
  br i1 %cmp142.not288, label %if.end129.for.body.i.preheader_crit_edge, label %if.end129.do.body147_crit_edge

if.end129.do.body147_crit_edge:                   ; preds = %if.end129
  br label %do.body147

if.end129.for.body.i.preheader_crit_edge:         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

do.body147:                                       ; preds = %list_del.exit274.do.body147_crit_edge, %if.end129.do.body147_crit_edge
  %peer.0289 = phi ptr [ %temp.0291, %list_del.exit274.do.body147_crit_edge ], [ %52, %if.end129.do.body147_crit_edge ]
  %53 = ptrtoint ptr %peer.0289 to i32
  call void @__asan_load4_noabort(i32 %53)
  %temp.0291 = load ptr, ptr %peer.0289, align 4
  %54 = load i32, ptr @dbg_level, align 4
  %and148 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.do.end172_crit_edge, label %do.body151

do.body147.do.end172_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end172

do.body151:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_remove_mport.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_remove_mport, %do.end172)) #11
          to label %if.then165 [label %do.end172], !srcloc !352

if.then165:                                       ; preds = %do.body151
  %rdev = getelementptr inbounds %struct.cm_peer, ptr %peer.0289, i32 0, i32 1
  %55 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %56, i32 0, i32 21, i32 3
  %57 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %if.end.i.i268, label %if.then165.rio_name.exit_crit_edge

if.then165.rio_name.exit_crit_edge:               ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_name.exit

if.end.i.i268:                                    ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %56, i32 0, i32 21
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i268, %if.then165.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %60, %if.end.i.i268 ], [ %58, %if.then165.rio_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_remove_mport.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.62, ptr noundef %retval.0.i.i) #11
  br label %do.end172

do.end172:                                        ; preds = %rio_name.exit, %do.body151, %do.body147.do.end172_crit_edge
  %call.i.i269 = call zeroext i1 @__list_del_entry_valid(ptr noundef %peer.0289) #11
  br i1 %call.i.i269, label %if.end.i.i272, label %do.end172.list_del.exit274_crit_edge

do.end172.list_del.exit274_crit_edge:             ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit274

if.end.i.i272:                                    ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i270 = getelementptr inbounds %struct.list_head, ptr %peer.0289, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i270 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i270, align 4
  %63 = ptrtoint ptr %peer.0289 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %peer.0289, align 4
  %prev1.i.i.i271 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i271 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i271, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del.exit274

list_del.exit274:                                 ; preds = %if.end.i.i272, %do.end172.list_del.exit274_crit_edge
  %67 = ptrtoint ptr %peer.0289 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %peer.0289, align 4
  %prev.i273 = getelementptr inbounds %struct.list_head, ptr %peer.0289, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i273 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i273, align 4
  call void @kfree(ptr noundef %peer.0289) #11
  %cmp142.not = icmp eq ptr %temp.0291, %peers
  br i1 %cmp142.not, label %list_del.exit274.for.body.i.preheader_crit_edge, label %list_del.exit274.do.body147_crit_edge

list_del.exit274.do.body147_crit_edge:            ; preds = %list_del.exit274
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147

list_del.exit274.for.body.i.preheader_crit_edge:  ; preds = %list_del.exit274
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %list_del.exit274.for.body.i.preheader_crit_edge, %if.end129.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.cm_dev, ptr %cm.0, i32 0, i32 2, i32 %i.012.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.not.i = icmp eq ptr %70, null
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %70) #11
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %riocm_rx_free.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

riocm_rx_free.exit:                               ; preds = %for.inc.i
  call void @kfree(ptr noundef %cm.0) #11
  %72 = load i32, ptr @dbg_level, align 4
  %and182 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %riocm_rx_free.exit.cleanup_crit_edge, label %do.body185

riocm_rx_free.exit.cleanup_crit_edge:             ; preds = %riocm_rx_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body185:                                       ; preds = %riocm_rx_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_remove_mport.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_remove_mport, %cleanup)) #11
          to label %if.then199 [label %cleanup], !srcloc !352

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #13
  %name200 = getelementptr i8, ptr %dev, i32 -40
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_remove_mport.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.62, ptr noundef %name200) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then199, %do.body185, %riocm_rx_free.exit.cleanup_crit_edge, %if.then28.critedge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_request_outb_mbox(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @riocm_outb_msg_event(ptr nocapture noundef readnone %mport, ptr noundef %dev_id, i32 noundef %mbox, i32 noundef %slot) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mport1 = getelementptr inbounds %struct.cm_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %mport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mport1, align 4
  %state.i = getelementptr inbounds %struct.rio_mport, ptr %1, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rio_txcq_handler(ptr noundef nonnull %dev_id, i32 noundef %slot)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_request_inb_mbox(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @riocm_inb_msg_event(ptr nocapture noundef readnone %mport, ptr noundef %dev_id, i32 noundef %mbox, i32 noundef %slot) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mport1 = getelementptr inbounds %struct.cm_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %mport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mport1, align 4
  %state.i = getelementptr inbounds %struct.rio_mport, ptr %1, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rx_work = getelementptr inbounds %struct.cm_dev, ptr %dev_id, i32 0, i32 14
  %4 = ptrtoint ptr %rx_work to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rx_work, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %rx_wq = getelementptr inbounds %struct.cm_dev, ptr %dev_id, i32 0, i32 13
  %6 = ptrtoint ptr %rx_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %rx_work) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_release_outb_mbox(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_release_inb_mbox(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_ibmsg_handler(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1212
  %mport = getelementptr i8, ptr %work, i32 -1204
  %0 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mport, align 4
  %state.i = getelementptr inbounds %struct.rio_mport, ptr %1, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %rx_lock = getelementptr i8, ptr %work, i32 -684
  tail call void @mutex_lock_nested(ptr noundef %rx_lock, i32 noundef 0) #11
  %4 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mport, align 4
  %6 = load i32, ptr @cmbox, align 4
  %ops.i.i52 = getelementptr inbounds %struct.rio_mport, ptr %5, i32 0, i32 11
  %7 = ptrtoint ptr %ops.i.i52 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i52, align 4
  %get_inb_message.i.i53 = getelementptr inbounds %struct.rio_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %get_inb_message.i.i53 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_inb_message.i.i53, align 4
  %call.i.i54 = tail call ptr %10(ptr noundef %5, i32 noundef %6) #11
  %tobool.not.i55 = icmp eq ptr %call.i.i54, null
  br i1 %tobool.not.i55, label %while.cond.preheader.if.end4.thread_crit_edge, label %for.body.i.preheader.lr.ph

while.cond.preheader.if.end4.thread_crit_edge:    ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.thread

for.body.i.preheader.lr.ph:                       ; preds = %while.cond.preheader
  %rx_slots.i = getelementptr i8, ptr %work, i32 -688
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %while.cond.backedge.for.body.i.preheader_crit_edge, %for.body.i.preheader.lr.ph
  %call.i.i56 = phi ptr [ %call.i.i54, %for.body.i.preheader.lr.ph ], [ %call.i.i, %while.cond.backedge.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.023.i = phi i32 [ %inc5.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.cm_dev, ptr %add.ptr, i32 0, i32 2, i32 %i.023.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %12, %call.i.i56
  br i1 %cmp1.i, label %for.end.thread.i, label %for.inc.i

for.end.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %rx_slots.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_slots.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %rx_slots.i, align 4
  br label %if.then3

for.inc.i:                                        ; preds = %for.body.i
  %inc5.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc5.i, 128
  br i1 %exitcond.not.i, label %do.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull %call.i.i56) #14
  %16 = ptrtoint ptr %rx_slots.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %rx_slots.i, align 4
  br label %if.then3

if.then3:                                         ; preds = %do.end.i, %for.end.thread.i
  %17 = phi i32 [ %.pr, %do.end.i ], [ %inc.i, %for.end.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i39 = icmp eq i32 %17, 0
  br i1 %cmp.i39, label %if.then3.if.end7_crit_edge, label %if.then3.land.lhs.true.i_crit_edge

if.then3.land.lhs.true.i_crit_edge:               ; preds = %if.then3
  br label %land.lhs.true.i

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true.i:                                  ; preds = %for.inc.i48.land.lhs.true.i_crit_edge, %if.then3.land.lhs.true.i_crit_edge
  %i.034.i = phi i32 [ %inc.i46, %for.inc.i48.land.lhs.true.i_crit_edge ], [ 0, %if.then3.land.lhs.true.i_crit_edge ]
  %nent.addr.033.i = phi i32 [ %nent.addr.1.i, %for.inc.i48.land.lhs.true.i_crit_edge ], [ 1, %if.then3.land.lhs.true.i_crit_edge ]
  %18 = ptrtoint ptr %rx_slots.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i41 = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nent.addr.033.i)
  %tobool3.not.i = icmp eq i32 %nent.addr.033.i, 0
  %or.cond.i = select i1 %tobool.not.i41, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end7_crit_edge, label %for.body.i43

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

for.body.i43:                                     ; preds = %land.lhs.true.i
  %arrayidx.i42 = getelementptr %struct.cm_dev, ptr %add.ptr, i32 0, i32 2, i32 %i.034.i
  %20 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i42, align 4
  %cmp4.i = icmp eq ptr %21, null
  br i1 %cmp4.i, label %if.then5.i, label %for.body.i43.for.inc.i48_crit_edge

for.body.i43.for.inc.i48_crit_edge:               ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i48

if.then5.i:                                       ; preds = %for.body.i43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 4096) #15
  %23 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %arrayidx.i42, align 4
  %cmp10.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp10.i, label %if.then5.i.if.end7_crit_edge, label %if.end12.i

if.then5.i.if.end7_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end12.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mport, align 4
  %26 = load i32, ptr @cmbox, align 4
  %ops.i.i44 = getelementptr inbounds %struct.rio_mport, ptr %25, i32 0, i32 11
  %27 = ptrtoint ptr %ops.i.i44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i44, align 4
  %add_inb_buffer.i.i = getelementptr inbounds %struct.rio_ops, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %add_inb_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add_inb_buffer.i.i, align 4
  %call.i.i45 = tail call i32 %30(ptr noundef %25, i32 noundef %26, ptr noundef nonnull %call7.i.i) #11
  %31 = ptrtoint ptr %rx_slots.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_slots.i, align 4
  %dec.i = add i32 %32, -1
  store i32 %dec.i, ptr %rx_slots.i, align 4
  %dec17.i = add i32 %nent.addr.033.i, -1
  br label %for.inc.i48

for.inc.i48:                                      ; preds = %if.end12.i, %for.body.i43.for.inc.i48_crit_edge
  %nent.addr.1.i = phi i32 [ %dec17.i, %if.end12.i ], [ %nent.addr.033.i, %for.body.i43.for.inc.i48_crit_edge ]
  %inc.i46 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, 128
  br i1 %exitcond.not.i47, label %for.inc.i48.if.end7_crit_edge, label %for.inc.i48.land.lhs.true.i_crit_edge

for.inc.i48.land.lhs.true.i_crit_edge:            ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.inc.i48.if.end7_crit_edge:                    ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end4.thread:                                   ; preds = %while.cond.backedge.if.end4.thread_crit_edge, %while.cond.preheader.if.end4.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %rx_lock) #11
  br label %cleanup

if.end7:                                          ; preds = %for.inc.i48.if.end7_crit_edge, %if.then5.i.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge, %if.then3.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %rx_lock) #11
  %type = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call.i.i56, i32 0, i32 4
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %34)
  %cmp8.not = icmp eq i8 %34, 85
  br i1 %cmp8.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %34 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %conv) #14
  tail call void @kfree(ptr noundef nonnull %call.i.i56) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then20, %do.end
  tail call void @mutex_lock_nested(ptr noundef %rx_lock, i32 noundef 0) #11
  %35 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mport, align 4
  %37 = load i32, ptr @cmbox, align 4
  %ops.i.i = getelementptr inbounds %struct.rio_mport, ptr %36, i32 0, i32 11
  %38 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i, align 4
  %get_inb_message.i.i = getelementptr inbounds %struct.rio_ops, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %get_inb_message.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_inb_message.i.i, align 4
  %call.i.i = tail call ptr %41(ptr noundef %36, i32 noundef %37) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %while.cond.backedge.if.end4.thread_crit_edge, label %while.cond.backedge.for.body.i.preheader_crit_edge

while.cond.backedge.for.body.i.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

while.cond.backedge.if.end4.thread_crit_edge:     ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.thread

if.end16:                                         ; preds = %if.end7
  %ch_op = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call.i.i56, i32 0, i32 1
  %42 = ptrtoint ptr %ch_op to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ch_op, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp18 = icmp eq i8 %43, 3
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rio_rx_data_handler(ptr noundef nonnull %call.i.i56)
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rio_cm_handler(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i56)
  br label %while.cond.backedge

cleanup:                                          ; preds = %if.end4.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rio_txcq_handler(ptr noundef %cm, i32 noundef %slot) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_txcq_handler.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_txcq_handler, %do.end9)) #11
          to label %if.then6 [label %do.end9], !srcloc !352

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %mport = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 1
  %1 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mport, align 4
  %id = getelementptr inbounds %struct.rio_mport, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id, align 8
  %conv = zext i8 %4 to i32
  %tx_cnt = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 7
  %5 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_cnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_txcq_handler.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %slot, i32 noundef %6) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %tx_lock = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #11
  %tx_ack_slot = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 8
  %7 = ptrtoint ptr %tx_ack_slot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_ack_slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %slot)
  %cmp = icmp eq i32 %8, %slot
  br i1 %cmp, label %do.body12, label %do.end9.if.end37_crit_edge

do.end9.if.end37_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

do.body12:                                        ; preds = %do.end9
  %9 = load i32, ptr @dbg_level, align 4
  %and13 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.if.end37_crit_edge, label %do.body16

do.body12.if.end37_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

do.body16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_txcq_handler.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_txcq_handler, %if.end37)) #11
          to label %if.then30 [label %if.end37], !srcloc !352

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_txcq_handler.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %do.body16, %do.body12.if.end37_crit_edge, %do.end9.if.end37_crit_edge
  %tx_cnt38 = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 7
  %10 = ptrtoint ptr %tx_cnt38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_cnt38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool39.not192 = icmp eq i32 %11, 0
  br i1 %tobool39.not192, label %if.end37.if.end90_crit_edge, label %if.end37.land.rhs_crit_edge

if.end37.land.rhs_crit_edge:                      ; preds = %if.end37
  br label %land.rhs

if.end37.if.end90_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end37.land.rhs_crit_edge
  %12 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ %11, %if.end37.land.rhs_crit_edge ]
  %ack_slot.0193 = phi i32 [ %and45, %while.body.land.rhs_crit_edge ], [ %8, %if.end37.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ack_slot.0193, i32 %slot)
  %cmp40.not = icmp ne i32 %ack_slot.0193, %slot
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %cmp43 = icmp eq i32 %12, 128
  %or.cond = select i1 %cmp40.not, i1 true, i1 %cmp43
  br i1 %or.cond, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %arrayidx = getelementptr %struct.cm_dev, ptr %cm, i32 0, i32 5, i32 %ack_slot.0193
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %inc = add i32 %ack_slot.0193, 1
  %and45 = and i32 %inc, 127
  %14 = ptrtoint ptr %tx_cnt38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_cnt38, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %tx_cnt38, align 4
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %while.body.if.end90_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.if.end90_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

while.end:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %16 = icmp ugt i32 %12, 128
  br i1 %16, label %do.end56, label %while.end.if.end60_crit_edge

while.end.if.end60_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

do.end56:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43, i32 noundef %12) #14
  br label %if.end60

if.end60:                                         ; preds = %do.end56, %while.end.if.end60_crit_edge
  %17 = ptrtoint ptr %tx_cnt38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %tx_cnt38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %.pr)
  %18 = icmp ugt i32 %.pr, 128
  br i1 %18, label %do.end84, label %if.end60.if.end90_crit_edge, !prof !357

if.end60.if.end90_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.end84:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 664, i32 noundef 9, ptr noundef null) #11
  br label %if.end90

if.end90:                                         ; preds = %do.end84, %if.end60.if.end90_crit_edge, %while.body.if.end90_crit_edge, %if.end37.if.end90_crit_edge
  %ack_slot.0.lcssa201203 = phi i32 [ %slot, %do.end84 ], [ %slot, %if.end60.if.end90_crit_edge ], [ %8, %if.end37.if.end90_crit_edge ], [ %and45, %while.body.if.end90_crit_edge ]
  %19 = ptrtoint ptr %tx_ack_slot to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %ack_slot.0.lcssa201203, ptr %tx_ack_slot, align 4
  %tx_reqs = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 9
  %20 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i.not = icmp eq ptr %21, %tx_reqs
  br i1 %cmp.i.not, label %if.end90.if.end140_crit_edge, label %land.lhs.true

if.end90.if.end140_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

land.lhs.true:                                    ; preds = %if.end90
  %22 = ptrtoint ptr %tx_cnt38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_cnt38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %23)
  %cmp102 = icmp slt i32 %23, 128
  br i1 %cmp102, label %for.cond.preheader, label %land.lhs.true.if.end140_crit_edge

land.lhs.true.if.end140_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

for.cond.preheader:                               ; preds = %land.lhs.true
  %tx_slot = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 6
  %mport120 = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %list_del.exit.for.cond_crit_edge, %for.cond.preheader
  %req.0 = phi ptr [ %_req.0, %list_del.exit.for.cond_crit_edge ], [ %21, %for.cond.preheader ]
  %24 = ptrtoint ptr %req.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %_req.0 = load ptr, ptr %req.0, align 4
  %cmp113.not = icmp eq ptr %req.0, %tx_reqs
  br i1 %cmp113.not, label %for.cond.if.end140_crit_edge, label %for.body

for.cond.if.end140_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

for.body:                                         ; preds = %for.cond
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.0) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.0, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %req.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %31 = ptrtoint ptr %req.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %req.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.0, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %buffer = getelementptr inbounds %struct.tx_req, ptr %req.0, i32 0, i32 2
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %35 = ptrtoint ptr %tx_slot to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_slot, align 4
  %arrayidx119 = getelementptr %struct.cm_dev, ptr %cm, i32 0, i32 5, i32 %36
  %37 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %arrayidx119, align 4
  %38 = ptrtoint ptr %mport120 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mport120, align 4
  %rdev = getelementptr inbounds %struct.tx_req, ptr %req.0, i32 0, i32 1
  %40 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rdev, align 4
  %42 = load i32, ptr @cmbox, align 4
  %43 = load ptr, ptr %buffer, align 4
  %len = getelementptr inbounds %struct.tx_req, ptr %req.0, i32 0, i32 3
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %ops.i = getelementptr inbounds %struct.rio_mport, ptr %39, i32 0, i32 11
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %add_outb_message.i = getelementptr inbounds %struct.rio_ops, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %add_outb_message.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add_outb_message.i, align 4
  %call.i = tail call i32 %49(ptr noundef %39, ptr noundef %41, i32 noundef %42, ptr noundef %43, i32 noundef %45) #11
  %50 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %51) #11
  tail call void @kfree(ptr noundef %req.0) #11
  %52 = ptrtoint ptr %tx_cnt38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_cnt38, align 4
  %inc125 = add i32 %53, 1
  store i32 %inc125, ptr %tx_cnt38, align 4
  %54 = ptrtoint ptr %tx_slot to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_slot, align 4
  %inc127 = add i32 %55, 1
  %and129 = and i32 %inc127, 127
  store i32 %and129, ptr %tx_slot, align 4
  %cmp131 = icmp eq i32 %inc125, 128
  br i1 %cmp131, label %list_del.exit.if.end140_crit_edge, label %list_del.exit.for.cond_crit_edge

list_del.exit.for.cond_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

list_del.exit.if.end140_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.end140:                                        ; preds = %list_del.exit.if.end140_crit_edge, %for.cond.if.end140_crit_edge, %land.lhs.true.if.end140_crit_edge, %if.end90.if.end140_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rio_rx_data_handler(ptr noundef %buf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_rx_data_handler.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_rx_data_handler, %do.end9)) #11
          to label %if.then6 [label %do.end9], !srcloc !352

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %dst_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %buf, i32 0, i32 2
  %1 = ptrtoint ptr %dst_ch to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %dst_ch, align 1
  %conv = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_rx_data_handler.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %conv) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %dst_ch10 = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %buf, i32 0, i32 2
  %3 = ptrtoint ptr %dst_ch10 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %dst_ch10, align 1
  %call11 = tail call fastcc ptr @riocm_get_channel(i16 noundef zeroext %4)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %buf) #11
  br label %cleanup

if.end14:                                         ; preds = %do.end9
  %lock = getelementptr inbounds %struct.rio_channel, ptr %call11, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %state = getelementptr inbounds %struct.rio_channel, ptr %call11, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not = icmp eq i32 %6, 2
  br i1 %cmp.not, label %if.end45, label %do.body17

do.body17:                                        ; preds = %if.end14
  %7 = load i32, ptr @dbg_level, align 4
  %and18 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.do.end43_crit_edge, label %do.body21

do.body17.do.end43_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

do.body21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_rx_data_handler.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_rx_data_handler, %do.end43)) #11
          to label %if.then35 [label %do.end43], !srcloc !352

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call11 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %call11, align 4
  %conv36 = zext i16 %9 to i32
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_rx_data_handler.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %conv36, i32 noundef %11) #11
  br label %do.end43

do.end43:                                         ; preds = %if.then35, %do.body21, %do.body17.do.end43_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void @kfree(ptr noundef %buf) #11
  %ref.i = getelementptr inbounds %struct.rio_channel, ptr %call11, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end14
  %count = getelementptr inbounds %struct.rio_channel, ptr %call11, i32 0, i32 16, i32 3
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %cmp46 = icmp eq i32 %14, 128
  br i1 %cmp46, label %do.body49, label %if.end77

do.body49:                                        ; preds = %if.end45
  %15 = load i32, ptr @dbg_level, align 4
  %and50 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end75_crit_edge, label %do.body53

do.body49.do.end75_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

do.body53:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_rx_data_handler.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_rx_data_handler, %do.end75)) #11
          to label %if.then67 [label %do.end75], !srcloc !352

if.then67:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call11 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %call11, align 4
  %conv69 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_rx_data_handler.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.51, i32 noundef %conv69) #11
  br label %do.end75

do.end75:                                         ; preds = %if.then67, %do.body53, %do.body49.do.end75_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void @kfree(ptr noundef %buf) #11
  %ref.i7 = getelementptr inbounds %struct.rio_channel, ptr %call11, i32 0, i32 1
  %call.i.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i7, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i7, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i7, ptr %ref.i7, i32 1, ptr elementtype(i32) %ref.i7) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i9 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i9)
  %cmp.i.i.i.i.i10 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i9, 1
  br i1 %cmp.i.i.i.i.i10, label %if.then.i.i14, label %if.end5.i.i.i.i.i12

if.end5.i.i.i.i.i12:                              ; preds = %do.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i9)
  %.not.i.i.i.i.i11 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i9, 0
  br i1 %.not.i.i.i.i.i11, label %if.end5.i.i.i.i.i12.cleanup_crit_edge, label %if.then10.i.i.i.i.i13, !prof !355

if.end5.i.i.i.i.i12.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i13:                            ; preds = %if.end5.i.i.i.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i7, i32 noundef 3) #11
  br label %cleanup

if.then.i.i14:                                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i7) #11
  br label %cleanup

if.end77:                                         ; preds = %if.end45
  %rx_ring = getelementptr inbounds %struct.rio_channel, ptr %call11, i32 0, i32 16
  %head = getelementptr inbounds %struct.rio_channel, ptr %call11, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %head, align 4
  %arrayidx = getelementptr [128 x ptr], ptr %rx_ring, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %arrayidx, align 4
  %22 = load i32, ptr %head, align 4
  %inc = add i32 %22, 1
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 4
  %inc85 = add i32 %24, 1
  store i32 %inc85, ptr %count, align 4
  %rem = srem i32 %inc, 128
  store i32 %rem, ptr %head, align 4
  %comp = getelementptr inbounds %struct.rio_channel, ptr %call11, i32 0, i32 14
  tail call void @complete(ptr noundef %comp) #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %ref.i16 = getelementptr inbounds %struct.rio_channel, ptr %call11, i32 0, i32 1
  %call.i.i.i.i.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i16, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i16, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i16, ptr %ref.i16, i32 1, ptr elementtype(i32) %ref.i16) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i18 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i18)
  %cmp.i.i.i.i.i19 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i18, 1
  br i1 %cmp.i.i.i.i.i19, label %if.then.i.i23, label %if.end5.i.i.i.i.i21

if.end5.i.i.i.i.i21:                              ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i18)
  %.not.i.i.i.i.i20 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i18, 0
  br i1 %.not.i.i.i.i.i20, label %if.end5.i.i.i.i.i21.cleanup_crit_edge, label %if.then10.i.i.i.i.i22, !prof !355

if.end5.i.i.i.i.i21.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i22:                            ; preds = %if.end5.i.i.i.i.i21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i16, i32 noundef 3) #11
  br label %cleanup

if.then.i.i23:                                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i23, %if.then10.i.i.i.i.i22, %if.end5.i.i.i.i.i21.cleanup_crit_edge, %if.then.i.i14, %if.then10.i.i.i.i.i13, %if.end5.i.i.i.i.i12.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rio_cm_handler(ptr noundef %cm, ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mport = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 1
  %0 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mport, align 4
  %state.i = getelementptr inbounds %struct.rio_mport, ptr %1, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @dbg_level, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.do.end15_crit_edge, label %do.body3

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_cm_handler.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_cm_handler, %do.end15)) #11
          to label %if.then9 [label %do.end15], !srcloc !352

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %ch_op = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %ch_op to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ch_op, align 1
  %conv = zext i8 %6 to i32
  %dst_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %dst_ch to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %dst_ch, align 1
  %conv10 = zext i16 %8 to i32
  %src_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %src_ch to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %src_ch, align 1
  %conv11 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_cm_handler.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv11) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then9, %do.body3, %if.end.do.end15_crit_edge
  %ch_op16 = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %ch_op16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ch_op16, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %12, label %do.end25 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb19
    i8 2, label %sw.bb21
  ]

sw.bb:                                            ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @riocm_req_handler(ptr noundef %cm, ptr noundef %data)
  br label %out

sw.bb19:                                          ; preds = %do.end15
  %dst_ch.i = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %dst_ch.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %dst_ch.i, align 1
  %call.i = tail call fastcc ptr @riocm_get_channel(i16 noundef zeroext %15) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb19.out_crit_edge, label %if.end.i

sw.bb19.out_crit_edge:                            ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i:                                         ; preds = %sw.bb19
  %state.i36 = getelementptr inbounds %struct.rio_channel, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %state.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 1
  br i1 %cmp.not.i, label %if.end2.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.rio_channel, ptr %call.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.i.out_crit_edge:                ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %out

if.then.i.i.i:                                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i.i) #11
  br label %out

if.end2.i:                                        ; preds = %if.end.i
  %lock.i.i = getelementptr inbounds %struct.rio_channel, ptr %call.i, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #11
  %19 = ptrtoint ptr %state.i36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %state.i36, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #11
  %src_ch.i = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %src_ch.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %src_ch.i, align 1
  %rem_channel.i = getelementptr inbounds %struct.rio_channel, ptr %call.i, i32 0, i32 11
  %22 = ptrtoint ptr %rem_channel.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %rem_channel.i, align 4
  %comp.i = getelementptr inbounds %struct.rio_channel, ptr %call.i, i32 0, i32 14
  tail call void @complete(ptr noundef %comp.i) #11
  %ref.i1.i = getelementptr inbounds %struct.rio_channel, ptr %call.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i1.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i1.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i1.i, ptr %ref.i1.i, i32 1, ptr elementtype(i32) %ref.i1.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i3.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i3.i)
  %cmp.i.i.i.i.i4.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i3.i, 1
  br i1 %cmp.i.i.i.i.i4.i, label %if.then.i.i8.i, label %if.end5.i.i.i.i.i6.i

if.end5.i.i.i.i.i6.i:                             ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i3.i)
  %.not.i.i.i.i.i5.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i3.i, 0
  br i1 %.not.i.i.i.i.i5.i, label %if.end5.i.i.i.i.i6.i.out_crit_edge, label %if.then10.i.i.i.i.i7.i, !prof !355

if.end5.i.i.i.i.i6.i.out_crit_edge:               ; preds = %if.end5.i.i.i.i.i6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then10.i.i.i.i.i7.i:                           ; preds = %if.end5.i.i.i.i.i6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i1.i, i32 noundef 3) #11
  br label %out

if.then.i.i8.i:                                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i1.i) #11
  br label %out

sw.bb21:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @riocm_close_handler(ptr noundef %data)
  br label %out

do.end25:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55) #14
  br label %out

out:                                              ; preds = %do.end25, %sw.bb21, %if.then.i.i8.i, %if.then10.i.i.i.i.i7.i, %if.end5.i.i.i.i.i6.i.out_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.out_crit_edge, %sw.bb19.out_crit_edge, %sw.bb, %entry.out_crit_edge
  tail call void @kfree(ptr noundef %data) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @riocm_get_channel(i16 noundef zeroext %nr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @idr_lock) #11
  %conv = zext i16 %nr to i32
  %call = tail call ptr @idr_find(ptr noundef nonnull @ch_idr, i32 noundef %conv) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %ref = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !358
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !357

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !355

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riocm_req_handler(ptr noundef %cm, ptr nocapture noundef readonly %req_data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %req_data, i32 0, i32 2
  %0 = ptrtoint ptr %dst_ch to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %dst_ch, align 1
  %call = tail call fastcc ptr @riocm_get_channel(i16 noundef zeroext %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not = icmp eq i32 %3, 5
  br i1 %cmp.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end
  %4 = load i32, ptr @dbg_level, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end14_crit_edge, label %do.body4

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_req_handler.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_req_handler, %do.end14)) #11
          to label %if.then10 [label %do.end14], !srcloc !352

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_req_handler.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %conv) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body4, %do.body.do.end14_crit_edge
  %ref.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #15
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %ref.i2 = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i2, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i2, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i2, ptr %ref.i2, i32 1, ptr elementtype(i32) %ref.i2) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i4 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i4)
  %cmp.i.i.i.i.i5 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i4, 1
  br i1 %cmp.i.i.i.i.i5, label %if.then.i.i9, label %if.end5.i.i.i.i.i7

if.end5.i.i.i.i.i7:                               ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i4)
  %.not.i.i.i.i.i6 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i4, 0
  br i1 %.not.i.i.i.i.i6, label %if.end5.i.i.i.i.i7.cleanup_crit_edge, label %if.then10.i.i.i.i.i8, !prof !355

if.end5.i.i.i.i.i7.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i8:                             ; preds = %if.end5.i.i.i.i.i7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i2, i32 noundef 3) #11
  br label %cleanup

if.then.i.i9:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i2) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %req_data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %req_data, align 1
  %destid = getelementptr inbounds %struct.conn_req, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %destid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %destid, align 8
  %src_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %req_data, i32 0, i32 3
  %11 = ptrtoint ptr %src_ch to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %src_ch, align 1
  %chan = getelementptr inbounds %struct.conn_req, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %chan, align 4
  %cmdev = getelementptr inbounds %struct.conn_req, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %cmdev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cm, ptr %cmdev, align 8
  %lock = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %accept_queue = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %16, ptr noundef %accept_queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_add_tail.exit_crit_edge

if.end19.list_add_tail.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %accept_queue, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call7.i.i, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end19.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %comp = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 14
  tail call void @complete(ptr noundef %comp) #11
  %ref.i11 = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i11, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i11, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i11, ptr %ref.i11, i32 1, ptr elementtype(i32) %ref.i11) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i13 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i13)
  %cmp.i.i.i.i.i14 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i13, 1
  br i1 %cmp.i.i.i.i.i14, label %if.then.i.i18, label %if.end5.i.i.i.i.i16

if.end5.i.i.i.i.i16:                              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i13)
  %.not.i.i.i.i.i15 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i13, 0
  br i1 %.not.i.i.i.i.i15, label %if.end5.i.i.i.i.i16.cleanup_crit_edge, label %if.then10.i.i.i.i.i17, !prof !355

if.end5.i.i.i.i.i16.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i17:                            ; preds = %if.end5.i.i.i.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i11, i32 noundef 3) #11
  br label %cleanup

if.then.i.i18:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i18, %if.then10.i.i.i.i.i17, %if.end5.i.i.i.i.i16.cleanup_crit_edge, %if.then.i.i9, %if.then10.i.i.i.i.i8, %if.end5.i.i.i.i.i7.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riocm_close_handler(ptr nocapture noundef readonly %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_close_handler.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_close_handler, %do.end9)) #11
          to label %if.then6 [label %do.end9], !srcloc !352

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %dst_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %dst_ch to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %dst_ch, align 1
  %conv = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_close_handler.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.60, i32 noundef %conv) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @idr_lock) #11
  %dst_ch10 = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %dst_ch10 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %dst_ch10, align 1
  %conv11 = zext i16 %4 to i32
  %call12 = tail call ptr @idr_find(ptr noundef nonnull @ch_idr, i32 noundef %conv11) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  br label %cleanup

if.end15:                                         ; preds = %do.end9
  %5 = ptrtoint ptr %call12 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %call12, align 4
  %conv16 = zext i16 %6 to i32
  %call17 = tail call ptr @idr_remove(ptr noundef nonnull @ch_idr, i32 noundef %conv16) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  %lock.i = getelementptr inbounds %struct.rio_channel, ptr %call12, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %state.i = getelementptr inbounds %struct.rio_channel, ptr %call12, i32 0, i32 5
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %call19 = tail call fastcc i32 @riocm_ch_close(ptr noundef nonnull %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %do.body22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body22:                                        ; preds = %if.end15
  %8 = load i32, ptr @dbg_level, align 4
  %and23 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %do.body26

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_close_handler.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_close_handler, %cleanup)) #11
          to label %if.then40 [label %cleanup], !srcloc !352

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_close_handler.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, i32 noundef %call19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.body26, %do.body22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_interface_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riocm_cdev_add(i32 noundef %devno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cdev_init(ptr noundef nonnull @riocm_cdev, ptr noundef nonnull @riocm_cdev_fops) #11
  store ptr null, ptr getelementptr inbounds (%struct.channel_dev, ptr @riocm_cdev, i32 0, i32 0, i32 1), align 4
  %call = tail call i32 @cdev_add(ptr noundef nonnull @riocm_cdev, i32 noundef %devno, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @dev_class, align 4
  %call2 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %0, ptr noundef null, i32 noundef %devno, ptr noundef null, ptr noundef nonnull @.str.1) #11
  store ptr %call2, ptr getelementptr inbounds (%struct.channel_dev, ptr @riocm_cdev, i32 0, i32 1), align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %do.body7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cdev_del(ptr noundef nonnull @riocm_cdev) #11
  %1 = load ptr, ptr getelementptr inbounds (%struct.channel_dev, ptr @riocm_cdev, i32 0, i32 1), align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %3 = load i32, ptr @dbg_level, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body7.cleanup_crit_edge, label %do.body9

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body9:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_cdev_add.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_cdev_add, %cleanup)) #11
          to label %if.then16 [label %cleanup], !srcloc !352

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %devno, 20
  %and17 = and i32 %devno, 1048575
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_cdev_add.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef %shr, i32 noundef %and17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body9, %do.body7.cleanup_crit_edge, %if.then4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %2, %if.then4 ], [ 0, %if.then16 ], [ 0, %do.body7.cleanup_crit_edge ], [ 0, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riocm_cdev_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %entries.i = alloca i32, align 4
  %msg.i134 = alloca %struct.rio_cm_msg, align 8
  %buf.i = alloca ptr, align 4
  %msg.i = alloca %struct.rio_cm_msg, align 8
  %chan.i81 = alloca %struct.rio_cm_channel, align 8
  %chan.i = alloca %struct.rio_cm_channel, align 8
  %info.i = alloca [2 x i32], align 4
  %count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 -1073454335, label %sw.bb
    i32 -1073454334, label %sw.bb1
    i32 -1073585405, label %sw.bb3
    i32 1073898244, label %sw.bb5
    i32 1074291461, label %sw.bb7
    i32 1073898246, label %sw.bb9
    i32 -1073192185, label %sw.bb11
    i32 1074291464, label %sw.bb13
    i32 1074815753, label %sw.bb15
    i32 -1072667894, label %sw.bb17
    i32 -1073454325, label %sw.bb19
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1536) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !359
  %and.i.i = and i32 %4, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #11, !srcloc !362
  %asmresult.i = extractvalue { i32, i32 } %5, 0
  %asmresult1.i = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cm_ep_get_list_size.exit_crit_edge

sw.bb.cm_ep_get_list_size.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_ep_get_list_size.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %asmresult1.i)
  %cmp.i = icmp ugt i32 %asmresult1.i, 7
  br i1 %cmp.i, label %if.end.i.cm_ep_get_list_size.exit_crit_edge, label %if.end4.i

if.end.i.cm_ep_get_list_size.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_ep_get_list_size.exit

if.end4.i:                                        ; preds = %if.end.i
  tail call void @down_read(ptr noundef nonnull @rdev_sem) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4.i
  %cm.0.in.i = phi ptr [ @cm_dev_list, %if.end4.i ], [ %cm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %cm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cm.0.i = load ptr, ptr %cm.0.in.i, align 4
  %cmp6.not.i = icmp eq ptr %cm.0.i, @cm_dev_list
  br i1 %cmp6.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %mport.i = getelementptr inbounds %struct.cm_dev, ptr %cm.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %mport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mport.i, align 4
  %id.i = getelementptr inbounds %struct.rio_mport, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id.i, align 8
  %conv.i = zext i8 %10 to i32
  %cmp7.i = icmp eq i32 %asmresult1.i, %conv.i
  br i1 %cmp7.i, label %if.then9.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then9.i:                                       ; preds = %for.body.i
  %npeers.i = getelementptr inbounds %struct.cm_dev, ptr %cm.0.i, i32 0, i32 12
  %11 = ptrtoint ptr %npeers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %npeers.i, align 4
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %count.i, align 4
  tail call void @up_read(ptr noundef nonnull @rdev_sem) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then9.i.cm_ep_get_list_size.exit_crit_edge, label %if.end.i.i.i

if.then9.i.cm_ep_get_list_size.exit_crit_edge:    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_ep_get_list_size.exit

if.end.i.i.i:                                     ; preds = %if.then9.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1226833920) #16, !srcloc !363
  %asmresult.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.cm_ep_get_list_size.exit_crit_edge

if.end.i.i.i.cm_ep_get_list_size.exit_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_ep_get_list_size.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %count.i, i32 noundef 4) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %count.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool11.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool11.not.i, i32 0, i32 -14
  br label %cm_ep_get_list_size.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_read(ptr noundef nonnull @rdev_sem) #11
  br label %cm_ep_get_list_size.exit

cm_ep_get_list_size.exit:                         ; preds = %for.end.i, %copy_to_user.exit.i, %if.end.i.i.i.cm_ep_get_list_size.exit_crit_edge, %if.then9.i.cm_ep_get_list_size.exit_crit_edge, %if.end.i.cm_ep_get_list_size.exit_crit_edge, %sw.bb.cm_ep_get_list_size.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %for.end.i ], [ -14, %sw.bb.cm_ep_get_list_size.exit_crit_edge ], [ -22, %if.end.i.cm_ep_get_list_size.exit_crit_edge ], [ -14, %if.then9.i.cm_ep_get_list_size.exit_crit_edge ], [ -14, %if.end.i.i.i.cm_ep_get_list_size.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  %15 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info.i) #11
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %info.i, align 4, !annotation !364
  %17 = getelementptr inbounds [2 x i32], ptr %info.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !364
  tail call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #11
  %call.i.i.i33 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i33, label %sw.bb1.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb1.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb1
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 8, i32 -1226833920) #16, !srcloc !365
  %asmresult.i.i.i34 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i34)
  %cmp.i6.i.i35 = icmp eq i32 %asmresult.i.i.i34, 0
  br i1 %cmp.i6.i.i35, label %if.end.i.i.i37, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !355

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i37:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i36 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i, i32 noundef 8) #11
  %20 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !359
  %and.i.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i, ptr noundef %15, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i39, label %if.end.i.i.i37.if.then11.i.i.i_crit_edge, !prof !355

if.end.i.i.i37.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i37.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb1.if.then11.i.i.i_crit_edge
  %res.0.i.i97.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i37.if.then11.i.i.i_crit_edge ], [ 8, %sw.bb1.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i97.i
  %add.ptr.i.i.i = getelementptr i8, ptr %info.i, i32 %sub.i.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i97.i)
  br label %cm_ep_get_list.exit

if.end.i39:                                       ; preds = %if.end.i.i.i37
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp.i38 = icmp ugt i32 %25, 7
  br i1 %cmp.i38, label %if.end.i39.cm_ep_get_list.exit_crit_edge, label %lor.lhs.false.i

if.end.i39.cm_ep_get_list.exit_crit_edge:         ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_ep_get_list.exit

lor.lhs.false.i:                                  ; preds = %if.end.i39
  %26 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %27)
  %cmp2.i = icmp ugt i32 %27, 65536
  br i1 %cmp2.i, label %lor.lhs.false.i.cm_ep_get_list.exit_crit_edge, label %if.end4.i40

lor.lhs.false.i.cm_ep_get_list.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_ep_get_list.exit

if.end4.i40:                                      ; preds = %lor.lhs.false.i
  call void @down_read(ptr noundef nonnull @rdev_sem) #11
  br label %for.cond.i43

for.cond.i43:                                     ; preds = %for.body.i46.for.cond.i43_crit_edge, %if.end4.i40
  %cm.0.in.i41 = phi ptr [ @cm_dev_list, %if.end4.i40 ], [ %cm.0.i42, %for.body.i46.for.cond.i43_crit_edge ]
  %28 = ptrtoint ptr %cm.0.in.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %cm.0.i42 = load ptr, ptr %cm.0.in.i41, align 4
  %cmp5.not.i = icmp eq ptr %cm.0.i42, @cm_dev_list
  br i1 %cmp5.not.i, label %for.end.i47, label %for.body.i46

for.body.i46:                                     ; preds = %for.cond.i43
  %mport.i44 = getelementptr inbounds %struct.cm_dev, ptr %cm.0.i42, i32 0, i32 1
  %29 = ptrtoint ptr %mport.i44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mport.i44, align 4
  %id.i45 = getelementptr inbounds %struct.rio_mport, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %id.i45 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %id.i45, align 8
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %17, align 4
  %35 = trunc i32 %34 to i8
  %cmp9.i = icmp eq i8 %32, %35
  br i1 %cmp9.i, label %found.i, label %for.body.i46.for.cond.i43_crit_edge

for.body.i46.for.cond.i43_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i43

for.end.i47:                                      ; preds = %for.cond.i43
  call void @__sanitizer_cov_trace_pc() #13
  call void @up_read(ptr noundef nonnull @rdev_sem) #11
  br label %cm_ep_get_list.exit

found.i:                                          ; preds = %for.body.i46
  %36 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %info.i, align 4
  %npeers.i48 = getelementptr inbounds %struct.cm_dev, ptr %cm.0.i42, i32 0, i32 12
  %38 = ptrtoint ptr %npeers.i48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %npeers.i48, align 4
  %40 = call i32 @llvm.umin.i32(i32 %37, i32 %39) #11
  %add.i = add i32 %40, 2
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #11
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %found.i.if.then23.i_crit_edge, label %if.end7.i.i.i, !prof !357

found.i.if.then23.i_crit_edge:                    ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

if.end7.i.i.i:                                    ; preds = %found.i
  %43 = extractvalue { i32, i1 } %41, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #17
  %tobool22.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool22.not.i, label %if.end7.i.i.i.if.then23.i_crit_edge, label %if.end24.i

if.end7.i.i.i.if.then23.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

if.then23.i:                                      ; preds = %if.end7.i.i.i.if.then23.i_crit_edge, %found.i.if.then23.i_crit_edge
  call void @up_read(ptr noundef nonnull @rdev_sem) #11
  br label %cm_ep_get_list.exit

if.end24.i:                                       ; preds = %if.end7.i.i.i
  %peers.i = getelementptr inbounds %struct.cm_dev, ptr %cm.0.i42, i32 0, i32 11
  %44 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %peer.0108.i = load ptr, ptr %peers.i, align 4
  %cmp32.not109.i = icmp eq ptr %peer.0108.i, %peers.i
  br i1 %cmp32.not109.i, label %if.end24.i.for.end47.i_crit_edge, label %for.body35.preheader.i

if.end24.i.for.end47.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end47.i

for.body35.preheader.i:                           ; preds = %if.end24.i
  %45 = ptrtoint ptr %call8.i.i.i to i32
  %add25.i = or i32 %45, 8
  %46 = inttoptr i32 %add25.i to ptr
  br label %for.body35.i

for.cond30.i:                                     ; preds = %for.body35.i
  %incdec.ptr.i = getelementptr i32, ptr %entry_ptr.0111.i, i32 1
  %47 = ptrtoint ptr %peer.0112.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %peer.0.i = load ptr, ptr %peer.0112.i, align 4
  %cmp32.not.i = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp32.not.i, label %for.cond30.i.for.end47.i_crit_edge, label %for.cond30.i.for.body35.i_crit_edge

for.cond30.i.for.body35.i_crit_edge:              ; preds = %for.cond30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body35.i

for.cond30.i.for.end47.i_crit_edge:               ; preds = %for.cond30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end47.i

for.body35.i:                                     ; preds = %for.cond30.i.for.body35.i_crit_edge, %for.body35.preheader.i
  %peer.0112.i = phi ptr [ %peer.0.i, %for.cond30.i.for.body35.i_crit_edge ], [ %peer.0108.i, %for.body35.preheader.i ]
  %entry_ptr.0111.i = phi ptr [ %incdec.ptr.i, %for.cond30.i.for.body35.i_crit_edge ], [ %46, %for.body35.preheader.i ]
  %i.0110.i = phi i32 [ %inc.i, %for.cond30.i.for.body35.i_crit_edge ], [ 0, %for.body35.preheader.i ]
  %rdev.i = getelementptr inbounds %struct.cm_peer, ptr %peer.0112.i, i32 0, i32 1
  %48 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rdev.i, align 4
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %49, i32 0, i32 24
  %50 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %destid.i, align 4
  %conv36.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %entry_ptr.0111.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv36.i, ptr %entry_ptr.0111.i, align 4
  %inc.i = add i32 %i.0110.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %40)
  %cmp37.i = icmp eq i32 %inc.i, %40
  br i1 %cmp37.i, label %for.body35.i.for.end47.i_crit_edge, label %for.cond30.i

for.body35.i.for.end47.i_crit_edge:               ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end47.i

for.end47.i:                                      ; preds = %for.body35.i.for.end47.i_crit_edge, %for.cond30.i.for.end47.i_crit_edge, %if.end24.i.for.end47.i_crit_edge
  %i.1.i = phi i32 [ 0, %if.end24.i.for.end47.i_crit_edge ], [ %40, %for.body35.i.for.end47.i_crit_edge ], [ %inc.i, %for.cond30.i.for.end47.i_crit_edge ]
  call void @up_read(ptr noundef nonnull @rdev_sem) #11
  %53 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %i.1.i, ptr %call8.i.i.i, align 128
  %54 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %17, align 4
  %arrayidx50.i = getelementptr i32, ptr %call8.i.i.i, i32 1
  %56 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx50.i, align 4
  %57 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %info.i, align 4
  %add52.i = shl i32 %58, 2
  %mul.i = add i32 %add52.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %for.end47.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge, label %if.then27.i.i.i, !prof !355

land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_to_user.exit.thread.i

if.then.i.i.i.i:                                  ; preds = %for.end47.i
  call void @__check_object_size(ptr noundef nonnull %call8.i.i.i, i32 noundef %mul.i, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 174) #11
  %call.i.i87.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i87.i, label %if.then.i.i.i.i.copy_to_user.exit.i51_crit_edge, label %if.end.i.i90.i

if.then.i.i.i.i.copy_to_user.exit.i51_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i51

if.end.i.i90.i:                                   ; preds = %if.then.i.i.i.i
  %59 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 %mul.i, i32 -1226833920) #16, !srcloc !363
  %asmresult.i.i88.i = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i88.i)
  %cmp.i6.i89.i = icmp eq i32 %asmresult.i.i88.i, 0
  br i1 %cmp.i6.i89.i, label %if.then2.i.i.i, label %if.end.i.i90.i.copy_to_user.exit.i51_crit_edge

if.end.i.i90.i.copy_to_user.exit.i51_crit_edge:   ; preds = %if.end.i.i90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i51

if.then2.i.i.i:                                   ; preds = %if.end.i.i90.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i91.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i.i.i, i32 noundef %mul.i) #11
  %call.i12.i.i.i49 = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %call8.i.i.i, i32 noundef %mul.i) #11
  br label %copy_to_user.exit.i51

copy_to_user.exit.i51:                            ; preds = %if.then2.i.i.i, %if.end.i.i90.i.copy_to_user.exit.i51_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i51_crit_edge
  %n.addr.0.i92.i = phi i32 [ %mul.i, %if.then.i.i.i.i.copy_to_user.exit.i51_crit_edge ], [ %call.i12.i.i.i49, %if.then2.i.i.i ], [ %mul.i, %if.end.i.i90.i.copy_to_user.exit.i51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i92.i)
  %tobool54.not.i = icmp eq i32 %n.addr.0.i92.i, 0
  %spec.select.i50 = select i1 %tobool54.not.i, i32 0, i32 -14
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.thread.i:                       ; preds = %copy_to_user.exit.i51, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge
  %60 = phi i32 [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge ], [ %spec.select.i50, %copy_to_user.exit.i51 ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  br label %cm_ep_get_list.exit

cm_ep_get_list.exit:                              ; preds = %copy_to_user.exit.thread.i, %if.then23.i, %for.end.i47, %lor.lhs.false.i.cm_ep_get_list.exit_crit_edge, %if.end.i39.cm_ep_get_list.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i52 = phi i32 [ %60, %copy_to_user.exit.thread.i ], [ -12, %if.then23.i ], [ -19, %for.end.i47 ], [ -22, %lor.lhs.false.i.cm_ep_get_list.exit_crit_edge ], [ -22, %if.end.i39.cm_ep_get_list.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info.i) #11
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %61 = inttoptr i32 %arg to ptr
  %call4 = tail call fastcc i32 @cm_chan_create(ptr noundef %filp, ptr noundef %61)
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %62 = inttoptr i32 %arg to ptr
  %call6 = tail call fastcc i32 @cm_chan_close(ptr noundef %filp, ptr noundef %62)
  br label %return

sw.bb7:                                           ; preds = %entry
  %63 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chan.i) #11
  %64 = ptrtoint ptr %chan.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 -1, ptr %chan.i, align 8, !annotation !364
  tail call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #11
  %call.i.i.i53 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i53, label %sw.bb7.if.then11.i.i.i67_crit_edge, label %land.lhs.true.i.i.i56

sw.bb7.if.then11.i.i.i67_crit_edge:               ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i67

land.lhs.true.i.i.i56:                            ; preds = %sw.bb7
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 8, i32 -1226833920) #16, !srcloc !365
  %asmresult.i.i.i54 = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i54)
  %cmp.i6.i.i55 = icmp eq i32 %asmresult.i.i.i54, 0
  br i1 %cmp.i6.i.i55, label %if.end.i.i.i64, label %land.lhs.true.i.i.i56.if.then11.i.i.i67_crit_edge, !prof !355

land.lhs.true.i.i.i56.if.then11.i.i.i67_crit_edge: ; preds = %land.lhs.true.i.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i67

if.end.i.i.i64:                                   ; preds = %land.lhs.true.i.i.i56
  %call.i.i.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %chan.i, i32 noundef 8) #11
  %66 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i.i.i.i58 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i.i58 to ptr
  %cpu_domain.i.i.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i59) #7, !srcloc !359
  %and.i.i.i.i.i60 = and i32 %68, -13
  %or.i.i.i.i.i61 = or i32 %and.i.i.i.i.i60, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i61) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %call1.i.i.i.i62 = call i32 @arm_copy_from_user(ptr noundef nonnull %chan.i, ptr noundef %63, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i62)
  %tobool4.not.i.i.i63 = icmp eq i32 %call1.i.i.i.i62, 0
  br i1 %tobool4.not.i.i.i63, label %if.end.i69, label %if.end.i.i.i64.if.then11.i.i.i67_crit_edge, !prof !355

if.end.i.i.i64.if.then11.i.i.i67_crit_edge:       ; preds = %if.end.i.i.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i67

if.then11.i.i.i67:                                ; preds = %if.end.i.i.i64.if.then11.i.i.i67_crit_edge, %land.lhs.true.i.i.i56.if.then11.i.i.i67_crit_edge, %sw.bb7.if.then11.i.i.i67_crit_edge
  %res.0.i.i8.i = phi i32 [ %call1.i.i.i.i62, %if.end.i.i.i64.if.then11.i.i.i67_crit_edge ], [ 8, %sw.bb7.if.then11.i.i.i67_crit_edge ], [ 8, %land.lhs.true.i.i.i56.if.then11.i.i.i67_crit_edge ]
  %sub.i.i.i65 = sub i32 8, %res.0.i.i8.i
  %add.ptr.i.i.i66 = getelementptr i8, ptr %chan.i, i32 %sub.i.i.i65
  %69 = call ptr @memset(ptr %add.ptr.i.i.i66, i32 0, i32 %res.0.i.i8.i)
  br label %cm_chan_bind.exit

if.end.i69:                                       ; preds = %if.end.i.i.i64
  %mport_id.i = getelementptr inbounds %struct.rio_cm_channel, ptr %chan.i, i32 0, i32 3
  %70 = ptrtoint ptr %mport_id.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mport_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %71)
  %cmp.i68 = icmp ugt i8 %71, 7
  br i1 %cmp.i68, label %if.end.i69.cm_chan_bind.exit_crit_edge, label %if.end3.i

if.end.i69.cm_chan_bind.exit_crit_edge:           ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_chan_bind.exit

if.end3.i:                                        ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %chan.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %chan.i, align 8
  %call5.i = call fastcc i32 @riocm_ch_bind(i16 noundef zeroext %73, i8 noundef zeroext %71) #11
  br label %cm_chan_bind.exit

cm_chan_bind.exit:                                ; preds = %if.end3.i, %if.end.i69.cm_chan_bind.exit_crit_edge, %if.then11.i.i.i67
  %retval.0.i70 = phi i32 [ %call5.i, %if.end3.i ], [ -22, %if.end.i69.cm_chan_bind.exit_crit_edge ], [ -14, %if.then11.i.i.i67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chan.i) #11
  br label %return

sw.bb9:                                           ; preds = %entry
  %74 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1735) #11
  %75 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i71 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i71 to ptr
  %cpu_domain.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 4
  %77 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i72) #7, !srcloc !359
  %and.i.i73 = and i32 %77, -13
  %or.i.i74 = or i32 %and.i.i73, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i74) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %78 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %74, i32 -1226833921) #11, !srcloc !366
  %asmresult.i75 = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i75)
  %tobool.not.i76 = icmp eq i32 %asmresult.i75, 0
  br i1 %tobool.not.i76, label %if.end.i79, label %sw.bb9.return_crit_edge

sw.bb9.return_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i79:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult1.i77 = extractvalue { i32, i32 } %78, 1
  %conv.i78 = trunc i32 %asmresult1.i77 to i16
  %call3.i = tail call fastcc i32 @riocm_ch_listen(i16 noundef zeroext %conv.i78) #11
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %79 = inttoptr i32 %arg to ptr
  %call12 = tail call fastcc i32 @cm_chan_accept(ptr noundef %filp, ptr noundef %79)
  br label %return

sw.bb13:                                          ; preds = %entry
  %80 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chan.i81) #11
  %81 = ptrtoint ptr %chan.i81 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 -1, ptr %chan.i81, align 8, !annotation !364
  tail call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #11
  %call.i.i.i82 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i82, label %sw.bb13.if.then11.i.i.i96_crit_edge, label %land.lhs.true.i.i.i85

sw.bb13.if.then11.i.i.i96_crit_edge:              ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i96

land.lhs.true.i.i.i85:                            ; preds = %sw.bb13
  %82 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %80, i32 8, i32 -1226833920) #16, !srcloc !365
  %asmresult.i.i.i83 = extractvalue { i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i83)
  %cmp.i6.i.i84 = icmp eq i32 %asmresult.i.i.i83, 0
  br i1 %cmp.i6.i.i84, label %if.end.i.i.i93, label %land.lhs.true.i.i.i85.if.then11.i.i.i96_crit_edge, !prof !355

land.lhs.true.i.i.i85.if.then11.i.i.i96_crit_edge: ; preds = %land.lhs.true.i.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i96

if.end.i.i.i93:                                   ; preds = %land.lhs.true.i.i.i85
  %call.i.i.i.i86 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %chan.i81, i32 noundef 8) #11
  %83 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i.i.i.i87 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i.i87 to ptr
  %cpu_domain.i.i.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 4
  %85 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i88) #7, !srcloc !359
  %and.i.i.i.i.i89 = and i32 %85, -13
  %or.i.i.i.i.i90 = or i32 %and.i.i.i.i.i89, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i90) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %call1.i.i.i.i91 = call i32 @arm_copy_from_user(ptr noundef nonnull %chan.i81, ptr noundef %80, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i91)
  %tobool4.not.i.i.i92 = icmp eq i32 %call1.i.i.i.i91, 0
  br i1 %tobool4.not.i.i.i92, label %if.end.i99, label %if.end.i.i.i93.if.then11.i.i.i96_crit_edge, !prof !355

if.end.i.i.i93.if.then11.i.i.i96_crit_edge:       ; preds = %if.end.i.i.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i96

if.then11.i.i.i96:                                ; preds = %if.end.i.i.i93.if.then11.i.i.i96_crit_edge, %land.lhs.true.i.i.i85.if.then11.i.i.i96_crit_edge, %sw.bb13.if.then11.i.i.i96_crit_edge
  %res.0.i.i72.i = phi i32 [ %call1.i.i.i.i91, %if.end.i.i.i93.if.then11.i.i.i96_crit_edge ], [ 8, %sw.bb13.if.then11.i.i.i96_crit_edge ], [ 8, %land.lhs.true.i.i.i85.if.then11.i.i.i96_crit_edge ]
  %sub.i.i.i94 = sub i32 8, %res.0.i.i72.i
  %add.ptr.i.i.i95 = getelementptr i8, ptr %chan.i81, i32 %sub.i.i.i94
  %86 = call ptr @memset(ptr %add.ptr.i.i.i95, i32 0, i32 %res.0.i.i72.i)
  br label %cm_chan_connect.exit

if.end.i99:                                       ; preds = %if.end.i.i.i93
  %mport_id.i97 = getelementptr inbounds %struct.rio_cm_channel, ptr %chan.i81, i32 0, i32 3
  %87 = ptrtoint ptr %mport_id.i97 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mport_id.i97, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %88)
  %cmp.i98 = icmp ugt i8 %88, 7
  br i1 %cmp.i98, label %if.end.i99.cm_chan_connect.exit_crit_edge, label %if.end3.i100

if.end.i99.cm_chan_connect.exit_crit_edge:        ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_chan_connect.exit

if.end3.i100:                                     ; preds = %if.end.i99
  call void @down_read(ptr noundef nonnull @rdev_sem) #11
  br label %for.cond.i103

for.cond.i103:                                    ; preds = %for.body.i107.for.cond.i103_crit_edge, %if.end3.i100
  %cm.0.in.i101 = phi ptr [ @cm_dev_list, %if.end3.i100 ], [ %cm.0.i102, %for.body.i107.for.cond.i103_crit_edge ]
  %89 = ptrtoint ptr %cm.0.in.i101 to i32
  call void @__asan_load4_noabort(i32 %89)
  %cm.0.i102 = load ptr, ptr %cm.0.in.i101, align 4
  %cmp4.not.i = icmp eq ptr %cm.0.i102, @cm_dev_list
  br i1 %cmp4.not.i, label %for.cond.i103.err_out.i_crit_edge, label %for.body.i107

for.cond.i103.err_out.i_crit_edge:                ; preds = %for.cond.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

for.body.i107:                                    ; preds = %for.cond.i103
  %mport.i104 = getelementptr inbounds %struct.cm_dev, ptr %cm.0.i102, i32 0, i32 1
  %90 = ptrtoint ptr %mport.i104 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mport.i104, align 4
  %id.i105 = getelementptr inbounds %struct.rio_mport, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %id.i105 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %id.i105, align 8
  %94 = ptrtoint ptr %mport_id.i97 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mport_id.i97, align 2
  %cmp9.i106 = icmp eq i8 %93, %95
  br i1 %cmp9.i106, label %if.end19.i, label %for.body.i107.for.cond.i103_crit_edge

for.body.i107.for.cond.i103_crit_edge:            ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i103

if.end19.i:                                       ; preds = %for.body.i107
  %remote_destid.i = getelementptr inbounds %struct.rio_cm_channel, ptr %chan.i81, i32 0, i32 2
  %96 = ptrtoint ptr %remote_destid.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %remote_destid.i, align 4
  %conv20.i = zext i16 %97 to i32
  %sys_size.i = getelementptr inbounds %struct.rio_mport, ptr %91, i32 0, i32 14
  %98 = ptrtoint ptr %sys_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sys_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool22.not.i108 = icmp eq i32 %99, 0
  %cond.i = select i1 %tobool22.not.i108, i32 255, i32 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv20.i)
  %cmp23.not.i = icmp ugt i32 %cond.i, %conv20.i
  br i1 %cmp23.not.i, label %if.end26.i, label %if.end19.i.err_out.i_crit_edge

if.end19.i.err_out.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end26.i:                                       ; preds = %if.end19.i
  %peers.i109 = getelementptr inbounds %struct.cm_dev, ptr %cm.0.i102, i32 0, i32 11
  br label %for.cond31.i

for.cond31.i:                                     ; preds = %for.body36.i.for.cond31.i_crit_edge, %if.end26.i
  %peer.0.in.i = phi ptr [ %peers.i109, %if.end26.i ], [ %peer.0.i110, %for.body36.i.for.cond31.i_crit_edge ]
  %100 = ptrtoint ptr %peer.0.in.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %peer.0.i110 = load ptr, ptr %peer.0.in.i, align 4
  %cmp33.not.i = icmp eq ptr %peer.0.i110, %peers.i109
  br i1 %cmp33.not.i, label %for.cond31.i.err_out.i_crit_edge, label %for.body36.i

for.cond31.i.err_out.i_crit_edge:                 ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

for.body36.i:                                     ; preds = %for.cond31.i
  %rdev.i111 = getelementptr inbounds %struct.cm_peer, ptr %peer.0.i110, i32 0, i32 1
  %101 = ptrtoint ptr %rdev.i111 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rdev.i111, align 4
  %destid.i112 = getelementptr inbounds %struct.rio_dev, ptr %102, i32 0, i32 24
  %103 = ptrtoint ptr %destid.i112 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %destid.i112, align 4
  %cmp40.i = icmp eq i16 %104, %97
  br i1 %cmp40.i, label %if.end53.i, label %for.body36.i.for.cond31.i_crit_edge

for.body36.i.for.cond31.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond31.i

if.end53.i:                                       ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @up_read(ptr noundef nonnull @rdev_sem) #11
  %105 = ptrtoint ptr %chan.i81 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %chan.i81, align 8
  %remote_channel.i = getelementptr inbounds %struct.rio_cm_channel, ptr %chan.i81, i32 0, i32 1
  %107 = ptrtoint ptr %remote_channel.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %remote_channel.i, align 2
  %call55.i = call fastcc i32 @riocm_ch_connect(i16 noundef zeroext %106, ptr noundef %cm.0.i102, ptr noundef %peer.0.i110, i16 noundef zeroext %108) #11
  br label %cm_chan_connect.exit

err_out.i:                                        ; preds = %for.cond31.i.err_out.i_crit_edge, %if.end19.i.err_out.i_crit_edge, %for.cond.i103.err_out.i_crit_edge
  %ret.2.i = phi i32 [ -22, %if.end19.i.err_out.i_crit_edge ], [ -19, %for.cond31.i.err_out.i_crit_edge ], [ -19, %for.cond.i103.err_out.i_crit_edge ]
  call void @up_read(ptr noundef nonnull @rdev_sem) #11
  br label %cm_chan_connect.exit

cm_chan_connect.exit:                             ; preds = %err_out.i, %if.end53.i, %if.end.i99.cm_chan_connect.exit_crit_edge, %if.then11.i.i.i96
  %retval.0.i113 = phi i32 [ %ret.2.i, %err_out.i ], [ %call55.i, %if.end53.i ], [ -22, %if.end.i99.cm_chan_connect.exit_crit_edge ], [ -14, %if.then11.i.i.i96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chan.i81) #11
  br label %return

sw.bb15:                                          ; preds = %entry
  %109 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #11
  %110 = getelementptr inbounds %struct.rio_cm_msg, ptr %msg.i, i32 0, i32 1
  %111 = getelementptr inbounds %struct.rio_cm_msg, ptr %msg.i, i32 0, i32 3
  %112 = call ptr @memset(ptr %msg.i, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #11
  %call.i.i.i114 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i114, label %sw.bb15.if.then11.i.i.i128_crit_edge, label %land.lhs.true.i.i.i117

sw.bb15.if.then11.i.i.i128_crit_edge:             ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i128

land.lhs.true.i.i.i117:                           ; preds = %sw.bb15
  %113 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %109, i32 16, i32 -1226833920) #16, !srcloc !365
  %asmresult.i.i.i115 = extractvalue { i32, i32 } %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i115)
  %cmp.i6.i.i116 = icmp eq i32 %asmresult.i.i.i115, 0
  br i1 %cmp.i6.i.i116, label %if.end.i.i.i125, label %land.lhs.true.i.i.i117.if.then11.i.i.i128_crit_edge, !prof !355

land.lhs.true.i.i.i117.if.then11.i.i.i128_crit_edge: ; preds = %land.lhs.true.i.i.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i128

if.end.i.i.i125:                                  ; preds = %land.lhs.true.i.i.i117
  %call.i.i.i.i118 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %msg.i, i32 noundef 16) #11
  %114 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i.i.i.i119 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i.i.i.i119 to ptr
  %cpu_domain.i.i.i.i.i.i120 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 4
  %116 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i120) #7, !srcloc !359
  %and.i.i.i.i.i121 = and i32 %116, -13
  %or.i.i.i.i.i122 = or i32 %and.i.i.i.i.i121, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i122) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %call1.i.i.i.i123 = call i32 @arm_copy_from_user(ptr noundef nonnull %msg.i, ptr noundef %109, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i123)
  %tobool4.not.i.i.i124 = icmp eq i32 %call1.i.i.i.i123, 0
  br i1 %tobool4.not.i.i.i124, label %if.end.i130, label %if.end.i.i.i125.if.then11.i.i.i128_crit_edge, !prof !355

if.end.i.i.i125.if.then11.i.i.i128_crit_edge:     ; preds = %if.end.i.i.i125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i128

if.then11.i.i.i128:                               ; preds = %if.end.i.i.i125.if.then11.i.i.i128_crit_edge, %land.lhs.true.i.i.i117.if.then11.i.i.i128_crit_edge, %sw.bb15.if.then11.i.i.i128_crit_edge
  %res.0.i.i23.i = phi i32 [ %call1.i.i.i.i123, %if.end.i.i.i125.if.then11.i.i.i128_crit_edge ], [ 16, %sw.bb15.if.then11.i.i.i128_crit_edge ], [ 16, %land.lhs.true.i.i.i117.if.then11.i.i.i128_crit_edge ]
  %sub.i.i.i126 = sub i32 16, %res.0.i.i23.i
  %add.ptr.i.i.i127 = getelementptr i8, ptr %msg.i, i32 %sub.i.i.i126
  %117 = call ptr @memset(ptr %add.ptr.i.i.i127, i32 0, i32 %res.0.i.i23.i)
  br label %cm_chan_msg_send.exit

if.end.i130:                                      ; preds = %if.end.i.i.i125
  %118 = ptrtoint ptr %110 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %110, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %119)
  %cmp.i129 = icmp ugt i16 %119, 4096
  br i1 %cmp.i129, label %if.end.i130.cm_chan_msg_send.exit_crit_edge, label %if.end3.i132

if.end.i130.cm_chan_msg_send.exit_crit_edge:      ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_chan_msg_send.exit

if.end3.i132:                                     ; preds = %if.end.i130
  %conv.i131 = zext i16 %119 to i32
  %120 = ptrtoint ptr %111 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %111, align 8
  %conv5.i = trunc i64 %121 to i32
  %122 = inttoptr i32 %conv5.i to ptr
  %call8.i = call ptr @memdup_user(ptr noundef %122, i32 noundef %conv.i131) #11
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end3.i132
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %call8.i to i32
  br label %cm_chan_msg_send.exit

if.end12.i:                                       ; preds = %if.end3.i132
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %msg.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %msg.i, align 8
  %126 = ptrtoint ptr %110 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %110, align 2
  %conv14.i = zext i16 %127 to i32
  %call15.i = call fastcc i32 @riocm_ch_send(i16 noundef zeroext %125, ptr noundef %call8.i, i32 noundef %conv14.i) #11
  call void @kfree(ptr noundef %call8.i) #11
  br label %cm_chan_msg_send.exit

cm_chan_msg_send.exit:                            ; preds = %if.end12.i, %if.then10.i, %if.end.i130.cm_chan_msg_send.exit_crit_edge, %if.then11.i.i.i128
  %retval.0.i133 = phi i32 [ %123, %if.then10.i ], [ %call15.i, %if.end12.i ], [ -22, %if.end.i130.cm_chan_msg_send.exit_crit_edge ], [ -14, %if.then11.i.i.i128 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #11
  br label %return

sw.bb17:                                          ; preds = %entry
  %128 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i134) #11
  %129 = getelementptr inbounds %struct.rio_cm_msg, ptr %msg.i134, i32 0, i32 1
  %130 = getelementptr inbounds %struct.rio_cm_msg, ptr %msg.i134, i32 0, i32 2
  %131 = getelementptr inbounds %struct.rio_cm_msg, ptr %msg.i134, i32 0, i32 3
  %132 = call ptr @memset(ptr %msg.i134, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #11
  %133 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf.i, align 4, !annotation !364
  tail call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #11
  %call.i.i.i135 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i135, label %sw.bb17.if.then11.i.i.i149_crit_edge, label %land.lhs.true.i.i.i138

sw.bb17.if.then11.i.i.i149_crit_edge:             ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i149

land.lhs.true.i.i.i138:                           ; preds = %sw.bb17
  %134 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %128, i32 16, i32 -1226833920) #16, !srcloc !365
  %asmresult.i.i.i136 = extractvalue { i32, i32 } %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i136)
  %cmp.i6.i.i137 = icmp eq i32 %asmresult.i.i.i136, 0
  br i1 %cmp.i6.i.i137, label %if.end.i.i.i146, label %land.lhs.true.i.i.i138.if.then11.i.i.i149_crit_edge, !prof !355

land.lhs.true.i.i.i138.if.then11.i.i.i149_crit_edge: ; preds = %land.lhs.true.i.i.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i149

if.end.i.i.i146:                                  ; preds = %land.lhs.true.i.i.i138
  %call.i.i.i.i139 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %msg.i134, i32 noundef 16) #11
  %135 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i.i.i.i140 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i.i.i.i.i140 to ptr
  %cpu_domain.i.i.i.i.i.i141 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 4
  %137 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i141) #7, !srcloc !359
  %and.i.i.i.i.i142 = and i32 %137, -13
  %or.i.i.i.i.i143 = or i32 %and.i.i.i.i.i142, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i143) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %call1.i.i.i.i144 = call i32 @arm_copy_from_user(ptr noundef nonnull %msg.i134, ptr noundef %128, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %137) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i144)
  %tobool4.not.i.i.i145 = icmp eq i32 %call1.i.i.i.i144, 0
  br i1 %tobool4.not.i.i.i145, label %if.end.i151, label %if.end.i.i.i146.if.then11.i.i.i149_crit_edge, !prof !355

if.end.i.i.i146.if.then11.i.i.i149_crit_edge:     ; preds = %if.end.i.i.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i149

if.then11.i.i.i149:                               ; preds = %if.end.i.i.i146.if.then11.i.i.i149_crit_edge, %land.lhs.true.i.i.i138.if.then11.i.i.i149_crit_edge, %sw.bb17.if.then11.i.i.i149_crit_edge
  %res.0.i.i66.i = phi i32 [ %call1.i.i.i.i144, %if.end.i.i.i146.if.then11.i.i.i149_crit_edge ], [ 16, %sw.bb17.if.then11.i.i.i149_crit_edge ], [ 16, %land.lhs.true.i.i.i138.if.then11.i.i.i149_crit_edge ]
  %sub.i.i.i147 = sub i32 16, %res.0.i.i66.i
  %add.ptr.i.i.i148 = getelementptr i8, ptr %msg.i134, i32 %sub.i.i.i147
  %138 = call ptr @memset(ptr %add.ptr.i.i.i148, i32 0, i32 %res.0.i.i66.i)
  br label %cm_chan_msg_rcv.exit

if.end.i151:                                      ; preds = %if.end.i.i.i146
  %139 = ptrtoint ptr %msg.i134 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %msg.i134, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %cmp.i150 = icmp eq i16 %140, 0
  br i1 %cmp.i150, label %if.end.i151.cm_chan_msg_rcv.exit_crit_edge, label %lor.lhs.false.i152

if.end.i151.cm_chan_msg_rcv.exit_crit_edge:       ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_chan_msg_rcv.exit

lor.lhs.false.i152:                               ; preds = %if.end.i151
  %141 = ptrtoint ptr %129 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %129, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %cmp3.i = icmp eq i16 %142, 0
  br i1 %cmp3.i, label %lor.lhs.false.i152.cm_chan_msg_rcv.exit_crit_edge, label %if.end6.i

lor.lhs.false.i152.cm_chan_msg_rcv.exit_crit_edge: ; preds = %lor.lhs.false.i152
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_chan_msg_rcv.exit

if.end6.i:                                        ; preds = %lor.lhs.false.i152
  %call8.i153 = call fastcc ptr @riocm_get_channel(i16 noundef zeroext %140) #11
  %tobool9.not.i = icmp eq ptr %call8.i153, null
  br i1 %tobool9.not.i, label %if.end6.i.cm_chan_msg_rcv.exit_crit_edge, label %if.end11.i

if.end6.i.cm_chan_msg_rcv.exit_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_chan_msg_rcv.exit

if.end11.i:                                       ; preds = %if.end6.i
  %143 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool13.not.i = icmp eq i32 %144, 0
  br i1 %tobool13.not.i, label %if.end11.i.cond.end.i_crit_edge, label %if.else.i.i

if.end11.i.cond.end.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

if.else.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %144) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.else.i.i, %if.end11.i.cond.end.i_crit_edge
  %cond.i156 = phi i32 [ 2147483647, %if.end11.i.cond.end.i_crit_edge ], [ %call2.i.i, %if.else.i.i ]
  %call16.i = call fastcc i32 @riocm_ch_receive(ptr noundef nonnull %call8.i153, ptr noundef nonnull %buf.i, i32 noundef %cond.i156) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i158, label %cond.end.i.out.i_crit_edge

cond.end.i.out.i_crit_edge:                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end19.i158:                                    ; preds = %cond.end.i
  %145 = ptrtoint ptr %129 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %129, align 2
  %147 = call i16 @llvm.umin.i16(i16 %146, i16 4096) #11
  %cond30.i = zext i16 %147 to i32
  %148 = ptrtoint ptr %131 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %131, align 8
  %conv32.i = trunc i64 %149 to i32
  %150 = inttoptr i32 %conv32.i to ptr
  %151 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %buf.i, align 4
  call void @__check_object_size(ptr noundef %152, i32 noundef %cond30.i, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 174) #11
  %call.i.i54.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i54.i, label %if.end19.i158.copy_to_user.exit.i165_crit_edge, label %if.end.i.i58.i

if.end19.i158.copy_to_user.exit.i165_crit_edge:   ; preds = %if.end19.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i165

if.end.i.i58.i:                                   ; preds = %if.end19.i158
  %153 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %150, i32 %cond30.i, i32 -1226833920) #16, !srcloc !363
  %asmresult.i.i56.i = extractvalue { i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i56.i)
  %cmp.i6.i57.i = icmp eq i32 %asmresult.i.i56.i, 0
  br i1 %cmp.i6.i57.i, label %if.then2.i.i.i163, label %if.end.i.i58.i.copy_to_user.exit.i165_crit_edge

if.end.i.i58.i.copy_to_user.exit.i165_crit_edge:  ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i165

if.then2.i.i.i163:                                ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i59.i = call zeroext i1 @__kasan_check_read(ptr noundef %152, i32 noundef %cond30.i) #11
  %call.i12.i.i.i162 = call i32 @arm_copy_to_user(ptr noundef %150, ptr noundef %152, i32 noundef %cond30.i) #11
  br label %copy_to_user.exit.i165

copy_to_user.exit.i165:                           ; preds = %if.then2.i.i.i163, %if.end.i.i58.i.copy_to_user.exit.i165_crit_edge, %if.end19.i158.copy_to_user.exit.i165_crit_edge
  %n.addr.0.i60.i = phi i32 [ %cond30.i, %if.end19.i158.copy_to_user.exit.i165_crit_edge ], [ %call.i12.i.i.i162, %if.then2.i.i.i163 ], [ %cond30.i, %if.end.i.i58.i.copy_to_user.exit.i165_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i60.i)
  %tobool34.not.i = icmp eq i32 %n.addr.0.i60.i, 0
  %spec.select.i164 = select i1 %tobool34.not.i, i32 0, i32 -14
  %lock.i.i = getelementptr inbounds %struct.rio_channel, ptr %call8.i153, i32 0, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #11
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %if.end8.critedge.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %copy_to_user.exit.i165
  %i.01.i.i = phi i32 [ 0, %copy_to_user.exit.i165 ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rio_channel, ptr %call8.i153, i32 0, i32 16, i32 4, i32 %i.01.i.i
  %154 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %155, %152
  br i1 %cmp1.i.i, label %if.then.i62.i, label %for.cond.i.i

if.then.i62.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %arrayidx.i.i, align 4
  %inuse_cnt.i.i = getelementptr inbounds %struct.rio_channel, ptr %call8.i153, i32 0, i32 16, i32 5
  %157 = ptrtoint ptr %inuse_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %inuse_cnt.i.i, align 4
  %dec.i.i = add i32 %158, -1
  store i32 %dec.i.i, ptr %inuse_cnt.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #11
  call void @kfree(ptr noundef %152) #11
  br label %out.i

if.end8.critedge.i.i:                             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #11
  br label %out.i

out.i:                                            ; preds = %if.end8.critedge.i.i, %if.then.i62.i, %cond.end.i.out.i_crit_edge
  %ret.1.i = phi i32 [ %call16.i, %cond.end.i.out.i_crit_edge ], [ %spec.select.i164, %if.then.i62.i ], [ %spec.select.i164, %if.end8.critedge.i.i ]
  %ref.i.i = getelementptr inbounds %struct.rio_channel, ptr %call8.i153, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %159 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i63.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cm_chan_msg_rcv.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.i.cm_chan_msg_rcv.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_chan_msg_rcv.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %cm_chan_msg_rcv.exit

if.then.i.i63.i:                                  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  call fastcc void @riocm_ch_free(ptr noundef %ref.i.i) #11
  br label %cm_chan_msg_rcv.exit

cm_chan_msg_rcv.exit:                             ; preds = %if.then.i.i63.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cm_chan_msg_rcv.exit_crit_edge, %if.end6.i.cm_chan_msg_rcv.exit_crit_edge, %lor.lhs.false.i152.cm_chan_msg_rcv.exit_crit_edge, %if.end.i151.cm_chan_msg_rcv.exit_crit_edge, %if.then11.i.i.i149
  %retval.0.i167 = phi i32 [ -22, %lor.lhs.false.i152.cm_chan_msg_rcv.exit_crit_edge ], [ -22, %if.end.i151.cm_chan_msg_rcv.exit_crit_edge ], [ -19, %if.end6.i.cm_chan_msg_rcv.exit_crit_edge ], [ %ret.1.i, %if.end5.i.i.i.i.i.i.cm_chan_msg_rcv.exit_crit_edge ], [ %ret.1.i, %if.then10.i.i.i.i.i.i ], [ %ret.1.i, %if.then.i.i63.i ], [ -14, %if.then11.i.i.i149 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i134) #11
  br label %return

sw.bb19:                                          ; preds = %entry
  %160 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entries.i) #11
  %161 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -1, ptr %entries.i, align 4, !annotation !364
  tail call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #11
  %call.i.i.i168 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i168, label %sw.bb19.if.then11.i.i.i182_crit_edge, label %land.lhs.true.i.i.i171

sw.bb19.if.then11.i.i.i182_crit_edge:             ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i182

land.lhs.true.i.i.i171:                           ; preds = %sw.bb19
  %162 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %160, i32 4, i32 -1226833920) #16, !srcloc !365
  %asmresult.i.i.i169 = extractvalue { i32, i32 } %162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i169)
  %cmp.i6.i.i170 = icmp eq i32 %asmresult.i.i.i169, 0
  br i1 %cmp.i6.i.i170, label %if.end.i.i.i179, label %land.lhs.true.i.i.i171.if.then11.i.i.i182_crit_edge, !prof !355

land.lhs.true.i.i.i171.if.then11.i.i.i182_crit_edge: ; preds = %land.lhs.true.i.i.i171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i182

if.end.i.i.i179:                                  ; preds = %land.lhs.true.i.i.i171
  %call.i.i.i.i172 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %entries.i, i32 noundef 4) #11
  %163 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i.i.i.i173 = and i32 %163, -16384
  %164 = inttoptr i32 %and.i.i.i.i.i.i.i173 to ptr
  %cpu_domain.i.i.i.i.i.i174 = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 4
  %165 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i174) #7, !srcloc !359
  %and.i.i.i.i.i175 = and i32 %165, -13
  %or.i.i.i.i.i176 = or i32 %and.i.i.i.i.i175, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i176) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %call1.i.i.i.i177 = call i32 @arm_copy_from_user(ptr noundef nonnull %entries.i, ptr noundef %160, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i177)
  %tobool4.not.i.i.i178 = icmp eq i32 %call1.i.i.i.i177, 0
  br i1 %tobool4.not.i.i.i178, label %if.end.i183, label %if.end.i.i.i179.if.then11.i.i.i182_crit_edge, !prof !355

if.end.i.i.i179.if.then11.i.i.i182_crit_edge:     ; preds = %if.end.i.i.i179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i182

if.then11.i.i.i182:                               ; preds = %if.end.i.i.i179.if.then11.i.i.i182_crit_edge, %land.lhs.true.i.i.i171.if.then11.i.i.i182_crit_edge, %sw.bb19.if.then11.i.i.i182_crit_edge
  %res.0.i.i53.i = phi i32 [ %call1.i.i.i.i177, %if.end.i.i.i179.if.then11.i.i.i182_crit_edge ], [ 4, %sw.bb19.if.then11.i.i.i182_crit_edge ], [ 4, %land.lhs.true.i.i.i171.if.then11.i.i.i182_crit_edge ]
  %sub.i.i.i180 = sub i32 4, %res.0.i.i53.i
  %add.ptr.i.i.i181 = getelementptr i8, ptr %entries.i, i32 %sub.i.i.i180
  %166 = call ptr @memset(ptr %add.ptr.i.i.i181, i32 0, i32 %res.0.i.i53.i)
  br label %cm_mport_get_list.exit

if.end.i183:                                      ; preds = %if.end.i.i.i179
  %167 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %entries.i, align 4
  %169 = add i32 %168, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %169)
  %170 = icmp ult i32 %169, -8
  br i1 %170, label %if.end.i183.cm_mport_get_list.exit_crit_edge, label %if.end7.i.i.i192

if.end.i183.cm_mport_get_list.exit_crit_edge:     ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_mport_get_list.exit

if.end7.i.i.i192:                                 ; preds = %if.end.i183
  %add.i184 = shl i32 %168, 2
  %171 = add i32 %add.i184, 4
  %call8.i.i.i191 = call noalias align 128 ptr @__kmalloc(i32 noundef %171, i32 noundef 3520) #17
  %tobool5.not.i = icmp eq ptr %call8.i.i.i191, null
  br i1 %tobool5.not.i, label %if.end7.i.i.i192.cm_mport_get_list.exit_crit_edge, label %if.end7.i

if.end7.i.i.i192.cm_mport_get_list.exit_crit_edge: ; preds = %if.end7.i.i.i192
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_mport_get_list.exit

if.end7.i:                                        ; preds = %if.end7.i.i.i192
  call void @down_read(ptr noundef nonnull @rdev_sem) #11
  %cm.059.i = load ptr, ptr @cm_dev_list, align 4
  %cmp9.not60.i = icmp eq ptr %cm.059.i, @cm_dev_list
  br i1 %cmp9.not60.i, label %if.end7.i.for.end.i204_crit_edge, label %for.body.preheader.i

if.end7.i.for.end.i204_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i204

for.body.preheader.i:                             ; preds = %if.end7.i
  %172 = ptrtoint ptr %call8.i.i.i191 to i32
  %add8.i = or i32 %172, 4
  %173 = inttoptr i32 %add8.i to ptr
  br label %for.body.i196

for.body.i196:                                    ; preds = %for.inc.i.for.body.i196_crit_edge, %for.body.preheader.i
  %cm.063.i = phi ptr [ %cm.0.i201, %for.inc.i.for.body.i196_crit_edge ], [ %cm.059.i, %for.body.preheader.i ]
  %count.062.i = phi i32 [ %inc.i195, %for.inc.i.for.body.i196_crit_edge ], [ 0, %for.body.preheader.i ]
  %entry_ptr.061.i = phi ptr [ %entry_ptr.1.i, %for.inc.i.for.body.i196_crit_edge ], [ %173, %for.body.preheader.i ]
  %inc.i195 = add i32 %count.062.i, 1
  %174 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.062.i, i32 %175)
  %cmp10.i = icmp ult i32 %count.062.i, %175
  br i1 %cmp10.i, label %if.then11.i, label %for.body.i196.for.inc.i_crit_edge

for.body.i196.for.inc.i_crit_edge:                ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #13
  %mport.i197 = getelementptr inbounds %struct.cm_dev, ptr %cm.063.i, i32 0, i32 1
  %176 = ptrtoint ptr %mport.i197 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mport.i197, align 4
  %id.i198 = getelementptr inbounds %struct.rio_mport, ptr %177, i32 0, i32 12
  %178 = ptrtoint ptr %id.i198 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %id.i198, align 8
  %conv.i199 = zext i8 %179 to i32
  %shl.i = shl nuw nsw i32 %conv.i199, 16
  %host_deviceid.i = getelementptr inbounds %struct.rio_mport, ptr %177, i32 0, i32 10
  %180 = ptrtoint ptr %host_deviceid.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %host_deviceid.i, align 8
  %or.i = or i32 %shl.i, %181
  %182 = ptrtoint ptr %entry_ptr.061.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %or.i, ptr %entry_ptr.061.i, align 4
  %incdec.ptr.i200 = getelementptr i32, ptr %entry_ptr.061.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %for.body.i196.for.inc.i_crit_edge
  %entry_ptr.1.i = phi ptr [ %incdec.ptr.i200, %if.then11.i ], [ %entry_ptr.061.i, %for.body.i196.for.inc.i_crit_edge ]
  %183 = ptrtoint ptr %cm.063.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %cm.0.i201 = load ptr, ptr %cm.063.i, align 4
  %cmp9.not.i = icmp eq ptr %cm.0.i201, @cm_dev_list
  br i1 %cmp9.not.i, label %for.inc.i.for.end.i204_crit_edge, label %for.inc.i.for.body.i196_crit_edge

for.inc.i.for.body.i196_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i196

for.inc.i.for.end.i204_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i204

for.end.i204:                                     ; preds = %for.inc.i.for.end.i204_crit_edge, %if.end7.i.for.end.i204_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.end7.i.for.end.i204_crit_edge ], [ %inc.i195, %for.inc.i.for.end.i204_crit_edge ]
  call void @up_read(ptr noundef nonnull @rdev_sem) #11
  %184 = ptrtoint ptr %call8.i.i.i191 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %count.0.lcssa.i, ptr %call8.i.i.i191, align 128
  %add18.i = shl i32 %count.0.lcssa.i, 2
  %mul.i202 = add i32 %add18.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i202)
  %cmp9.i.i.i207 = icmp slt i32 %mul.i202, 0
  br i1 %cmp9.i.i.i207, label %land.rhs16.i.i.i209, label %if.then.i.i.i.i212

land.rhs16.i.i.i209:                              ; preds = %for.end.i204
  %.b71.i.i.i208 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i208, label %land.rhs16.i.i.i209.copy_to_user.exit.thread.i218_crit_edge, label %if.then27.i.i.i210, !prof !355

land.rhs16.i.i.i209.copy_to_user.exit.thread.i218_crit_edge: ; preds = %land.rhs16.i.i.i209
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread.i218

if.then27.i.i.i210:                               ; preds = %land.rhs16.i.i.i209
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_to_user.exit.thread.i218

if.then.i.i.i.i212:                               ; preds = %for.end.i204
  call void @__check_object_size(ptr noundef nonnull %call8.i.i.i191, i32 noundef %mul.i202, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 174) #11
  %call.i.i43.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i43.i, label %if.then.i.i.i.i212.copy_to_user.exit.i217_crit_edge, label %if.end.i.i46.i

if.then.i.i.i.i212.copy_to_user.exit.i217_crit_edge: ; preds = %if.then.i.i.i.i212
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i217

if.end.i.i46.i:                                   ; preds = %if.then.i.i.i.i212
  %185 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %160, i32 %mul.i202, i32 -1226833920) #16, !srcloc !363
  %asmresult.i.i44.i = extractvalue { i32, i32 } %185, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i44.i)
  %cmp.i6.i45.i = icmp eq i32 %asmresult.i.i44.i, 0
  br i1 %cmp.i6.i45.i, label %if.then2.i.i.i215, label %if.end.i.i46.i.copy_to_user.exit.i217_crit_edge

if.end.i.i46.i.copy_to_user.exit.i217_crit_edge:  ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i217

if.then2.i.i.i215:                                ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i47.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i.i.i191, i32 noundef %mul.i202) #11
  %call.i12.i.i.i214 = call i32 @arm_copy_to_user(ptr noundef %160, ptr noundef nonnull %call8.i.i.i191, i32 noundef %mul.i202) #11
  br label %copy_to_user.exit.i217

copy_to_user.exit.i217:                           ; preds = %if.then2.i.i.i215, %if.end.i.i46.i.copy_to_user.exit.i217_crit_edge, %if.then.i.i.i.i212.copy_to_user.exit.i217_crit_edge
  %n.addr.0.i48.i = phi i32 [ %mul.i202, %if.then.i.i.i.i212.copy_to_user.exit.i217_crit_edge ], [ %call.i12.i.i.i214, %if.then2.i.i.i215 ], [ %mul.i202, %if.end.i.i46.i.copy_to_user.exit.i217_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i48.i)
  %tobool20.not.i = icmp eq i32 %n.addr.0.i48.i, 0
  %spec.select.i216 = select i1 %tobool20.not.i, i32 0, i32 -14
  br label %copy_to_user.exit.thread.i218

copy_to_user.exit.thread.i218:                    ; preds = %copy_to_user.exit.i217, %if.then27.i.i.i210, %land.rhs16.i.i.i209.copy_to_user.exit.thread.i218_crit_edge
  %186 = phi i32 [ -14, %if.then27.i.i.i210 ], [ -14, %land.rhs16.i.i.i209.copy_to_user.exit.thread.i218_crit_edge ], [ %spec.select.i216, %copy_to_user.exit.i217 ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i191) #11
  br label %cm_mport_get_list.exit

cm_mport_get_list.exit:                           ; preds = %copy_to_user.exit.thread.i218, %if.end7.i.i.i192.cm_mport_get_list.exit_crit_edge, %if.end.i183.cm_mport_get_list.exit_crit_edge, %if.then11.i.i.i182
  %retval.0.i219 = phi i32 [ %186, %copy_to_user.exit.thread.i218 ], [ -22, %if.end.i183.cm_mport_get_list.exit_crit_edge ], [ -12, %if.end7.i.i.i192.cm_mport_get_list.exit_crit_edge ], [ -14, %if.then11.i.i.i182 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entries.i) #11
  br label %return

return:                                           ; preds = %cm_mport_get_list.exit, %cm_chan_msg_rcv.exit, %cm_chan_msg_send.exit, %cm_chan_connect.exit, %sw.bb11, %if.end.i79, %sw.bb9.return_crit_edge, %cm_chan_bind.exit, %sw.bb5, %sw.bb3, %cm_ep_get_list.exit, %cm_ep_get_list_size.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i219, %cm_mport_get_list.exit ], [ %retval.0.i167, %cm_chan_msg_rcv.exit ], [ %retval.0.i133, %cm_chan_msg_send.exit ], [ %retval.0.i113, %cm_chan_connect.exit ], [ %call12, %sw.bb11 ], [ %retval.0.i70, %cm_chan_bind.exit ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %retval.0.i52, %cm_ep_get_list.exit ], [ %retval.0.i, %cm_ep_get_list_size.exit ], [ -22, %entry.return_crit_edge ], [ %call3.i, %if.end.i79 ], [ -14, %sw.bb9.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riocm_cdev_open(ptr nocapture noundef readnone %inode, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body1

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_cdev_open.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_cdev_open, %do.end12)) #11
          to label %if.then6 [label %do.end12], !srcloc !352

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_cdev_open.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.118, ptr noundef %comm, i32 noundef %6, ptr noundef %filp) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then6, %do.body1, %entry.do.end12_crit_edge
  %7 = load volatile ptr, ptr @cm_dev_list, align 4
  %cmp.i.not = icmp eq ptr %7, @cm_dev_list
  %. = select i1 %cmp.i.not, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riocm_cdev_release(ptr nocapture noundef readnone %inode, ptr noundef %filp) #3 align 64 {
entry:
  %i = alloca i32, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %3 = load i32, ptr @dbg_level, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body1

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_cdev_release.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_cdev_release, %do.end13)) #11
          to label %if.then6 [label %do.end13], !srcloc !352

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_cdev_release.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120, ptr noundef %comm, i32 noundef %9, ptr noundef %filp) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then6, %do.body1, %entry.do.end13_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef nonnull @idr_lock) #11
  %10 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %i, align 4
  %call14102 = call ptr @idr_get_next(ptr noundef nonnull @ch_idr, ptr noundef nonnull %i) #11
  %cmp.not103 = icmp eq ptr %call14102, null
  br i1 %cmp.not103, label %do.end13.for.end_crit_edge, label %do.end13.land.lhs.true_crit_edge

do.end13.land.lhs.true_crit_edge:                 ; preds = %do.end13
  br label %land.lhs.true

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %do.end13.land.lhs.true_crit_edge
  %call14104 = phi ptr [ %call14, %for.inc.land.lhs.true_crit_edge ], [ %call14102, %do.end13.land.lhs.true_crit_edge ]
  %filp16 = getelementptr inbounds %struct.rio_channel, ptr %call14104, i32 0, i32 2
  %11 = ptrtoint ptr %filp16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %filp16, align 4
  %cmp17 = icmp eq ptr %12, %filp
  br i1 %cmp17, label %do.body19, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body19:                                        ; preds = %land.lhs.true
  %13 = load i32, ptr @dbg_level, align 4
  %and20 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.end50_crit_edge, label %do.body23

do.body19.do.end50_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end50

do.body23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_cdev_release.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_cdev_release, %do.end50)) #11
          to label %if.then37 [label %do.end50], !srcloc !352

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call14104 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call14104, align 4
  %conv = zext i16 %15 to i32
  %16 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i96 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i96 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task39, align 8
  %comm40 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %pid.i97 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i97 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i97, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_cdev_release.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120, i32 noundef %conv, ptr noundef %comm40, i32 noundef %21) #11
  br label %do.end50

do.end50:                                         ; preds = %if.then37, %do.body23, %do.body19.do.end50_crit_edge
  %22 = ptrtoint ptr %call14104 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %call14104, align 4
  %conv52 = zext i16 %23 to i32
  %call53 = call ptr @idr_remove(ptr noundef nonnull @ch_idr, i32 noundef %conv52) #11
  %ch_node = getelementptr inbounds %struct.rio_channel, ptr %call14104, i32 0, i32 13
  %24 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ch_node, ptr noundef nonnull %list, ptr noundef %25) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end50.for.inc_crit_edge

do.end50.for.inc_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i:                                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ch_node, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %ch_node to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %ch_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.rio_channel, ptr %call14104, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %ch_node, ptr %list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %do.end50.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %30 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i, align 4
  %add = add i32 %31, 1
  store i32 %add, ptr %i, align 4
  %call14 = call ptr @idr_get_next(ptr noundef nonnull @ch_idr, ptr noundef nonnull %i) #11
  %cmp.not = icmp eq ptr %call14, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end13.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  %32 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %33, %list
  br i1 %cmp.i.not, label %for.end.if.end81_crit_edge, label %for.end.for.body71_crit_edge

for.end.for.body71_crit_edge:                     ; preds = %for.end
  br label %for.body71

for.end.if.end81_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

for.body71:                                       ; preds = %list_del.exit.for.body71_crit_edge, %for.end.for.body71_crit_edge
  %.pn.in106 = phi ptr [ %.pn, %list_del.exit.for.body71_crit_edge ], [ %33, %for.end.for.body71_crit_edge ]
  %ch.0 = getelementptr i8, ptr %.pn.in106, i32 -96
  %34 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn.in106, align 4
  %call.i.i98 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in106) #11
  br i1 %call.i.i98, label %if.end.i.i99, label %for.body71.list_del.exit_crit_edge

for.body71.list_del.exit_crit_edge:               ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i99:                                     ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in106, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn.in106, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i99, %for.body71.list_del.exit_crit_edge
  %41 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in106, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in106, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call73 = call fastcc i32 @riocm_ch_close(ptr noundef %ch.0)
  %cmp67.not = icmp eq ptr %.pn, %list
  br i1 %cmp67.not, label %list_del.exit.if.end81_crit_edge, label %list_del.exit.for.body71_crit_edge

list_del.exit.for.body71_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body71

list_del.exit.if.end81_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.end81:                                         ; preds = %list_del.exit.if.end81_crit_edge, %for.end.if.end81_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cm_chan_create(ptr noundef %filp, ptr noundef %arg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1662) #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !359
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #11, !srcloc !367
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %conv = trunc i32 %asmresult1 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @dbg_level, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end21_crit_edge, label %do.body5

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm_chan_create.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cm_chan_create, %do.end21)) #11
          to label %if.then12 [label %do.end21], !srcloc !352

if.then12:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %conv13 = and i32 %asmresult1, 65535
  %5 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i85 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i85 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cm_chan_create.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef %conv13, ptr noundef %comm, i32 noundef %10) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then12, %do.body5, %do.body.do.end21_crit_edge
  %call.i = tail call fastcc ptr @riocm_ch_alloc(i16 noundef zeroext %conv) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i, label %riocm_ch_create.exit.thread95

do.body.i:                                        ; preds = %do.end21
  %11 = load i32, ptr @dbg_level, align 4
  %and.i86 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool.not.i = icmp eq i32 %and.i86, 0
  br i1 %tobool.not.i, label %do.body.i.if.then24_crit_edge, label %do.body3.i

do.body.i.if.then24_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_create.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cm_chan_create, %if.then24)) #11
          to label %if.then9.i [label %if.then24], !srcloc !352

if.then9.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = and i32 %asmresult1, 65535
  %12 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_create.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef %conv.i, i32 noundef %12) #11
  br label %if.then24

riocm_ch_create.exit.thread95:                    ; preds = %do.end21
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %call.i, align 4
  %filp27 = getelementptr inbounds %struct.rio_channel, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %filp27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %filp, ptr %filp27, align 4
  %16 = load i32, ptr @dbg_level, align 4
  %and29 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %riocm_ch_create.exit.thread95.do.end60_crit_edge, label %do.body32

riocm_ch_create.exit.thread95.do.end60_crit_edge: ; preds = %riocm_ch_create.exit.thread95
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

if.then24:                                        ; preds = %if.then9.i, %do.body3.i, %do.body.i.if.then24_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  br label %cleanup

do.body32:                                        ; preds = %riocm_ch_create.exit.thread95
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm_chan_create.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cm_chan_create, %do.end60)) #11
          to label %if.then46 [label %do.end60], !srcloc !352

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %conv47 = zext i16 %14 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i87 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i87 to ptr
  %task49 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task49, align 8
  %comm50 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %pid.i88 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i88 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i88, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cm_chan_create.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef %conv47, ptr noundef %comm50, i32 noundef %23) #11
  br label %do.end60

do.end60:                                         ; preds = %if.then46, %do.body32, %riocm_ch_create.exit.thread95.do.end60_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1674) #11
  %24 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i81 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i81 to ptr
  %cpu_domain.i.i82 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i82) #7, !srcloc !359
  %and.i83 = and i32 %26, -13
  %or.i84 = or i32 %and.i83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i84) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i16 %14, i32 -1226833921) #11, !srcloc !368
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then24 ], [ %27, %do.end60 ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cm_chan_close(ptr noundef readnone %filp, ptr noundef %arg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1688) #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !359
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #11, !srcloc !369
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #11, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @dbg_level, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end21_crit_edge, label %do.body5

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm_chan_close.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cm_chan_close, %do.end21)) #11
          to label %if.then12 [label %do.end21], !srcloc !352

if.then12:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %conv13 = and i32 %asmresult1, 65535
  %5 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i40 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i40 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cm_chan_close.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.96, i32 noundef %conv13, ptr noundef %comm, i32 noundef %10) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then12, %do.body5, %do.body.do.end21_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @idr_lock) #11
  %conv22 = and i32 %asmresult1, 65535
  %call23 = tail call ptr @idr_find(ptr noundef nonnull @ch_idr, i32 noundef %conv22) #11
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  br label %cleanup

if.end26:                                         ; preds = %do.end21
  %filp27 = getelementptr inbounds %struct.rio_channel, ptr %call23, i32 0, i32 2
  %11 = ptrtoint ptr %filp27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %filp27, align 4
  %cmp.not = icmp eq ptr %12, %filp
  br i1 %cmp.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call23 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %call23, align 4
  %conv31 = zext i16 %14 to i32
  %call32 = tail call ptr @idr_remove(ptr noundef nonnull @ch_idr, i32 noundef %conv31) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  %call33 = tail call fastcc i32 @riocm_ch_close(ptr noundef nonnull %call23)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then29 ], [ %call33, %if.end30 ], [ 0, %if.then25 ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cm_chan_accept(ptr noundef %filp, ptr noundef %arg) unnamed_addr #3 align 64 {
entry:
  %param = alloca %struct.rio_cm_accept, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param) #11
  %0 = getelementptr inbounds %struct.rio_cm_accept, ptr %param, i32 0, i32 2
  %1 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %param, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !355

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %param, i32 noundef 8) #11
  %3 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !359
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %param, ptr noundef %arg, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !355

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i94 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i94
  %add.ptr.i.i = getelementptr i8, ptr %param, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i94)
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  %7 = load i32, ptr @dbg_level, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end17_crit_edge, label %do.body3

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm_chan_accept.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cm_chan_accept, %do.end17)) #11
          to label %if.then9 [label %do.end17], !srcloc !352

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %param, align 8
  %conv = zext i16 %9 to i32
  %10 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cm_chan_accept.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100, i32 noundef %conv, ptr noundef %comm, i32 noundef %15) #11
  br label %do.end17

do.end17:                                         ; preds = %if.then9, %do.body3, %do.body.do.end17_crit_edge
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %do.end17.cond.end_crit_edge, label %if.else.i

do.end17.cond.end_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.else.i:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %17) #11
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %do.end17.cond.end_crit_edge
  %cond = phi i32 [ 0, %do.end17.cond.end_crit_edge ], [ %call2.i, %if.else.i ]
  %18 = ptrtoint ptr %param to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %param, align 8
  %call23 = call fastcc ptr @riocm_ch_accept(i16 noundef zeroext %19, ptr noundef nonnull %param, i32 noundef %cond)
  %cmp.i89 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then25, label %if.end27

if.then25:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end27:                                         ; preds = %cond.end
  %filp28 = getelementptr inbounds %struct.rio_channel, ptr %call23, i32 0, i32 2
  %21 = ptrtoint ptr %filp28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %filp, ptr %filp28, align 4
  %22 = load i32, ptr @dbg_level, align 4
  %and30 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end27.if.end8.i.i80_crit_edge, label %do.body33

if.end27.if.end8.i.i80_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i80

do.body33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm_chan_accept.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cm_chan_accept, %if.end8.i.i80)) #11
          to label %if.then47 [label %if.end8.i.i80], !srcloc !352

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %call23 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call23, align 4
  %conv48 = zext i16 %24 to i32
  %25 = call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i90 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i90 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %pid.i91 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid.i91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid.i91, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cm_chan_accept.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef %conv48, ptr noundef %comm51, i32 noundef %30) #11
  br label %if.end8.i.i80

if.end8.i.i80:                                    ; preds = %if.then47, %do.body33, %if.end27.if.end8.i.i80_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 174) #11
  %call.i.i81 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i81, label %if.end8.i.i80.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i80.cleanup_crit_edge:                  ; preds = %if.end8.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i86 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %param, i32 noundef 8) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %param, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool63.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool63.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i80.cleanup_crit_edge, %if.then25, %if.then11.i.i
  %retval.0 = phi i32 [ %20, %if.then25 ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i80.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @riocm_ch_alloc(i16 noundef zeroext %ch_num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1256) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ch_num)
  %tobool2.not = icmp eq i16 %ch_num, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %ch_num to i32
  %add = add nuw nsw i32 %conv, 1
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load i32, ptr @chstart, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %start.0 = phi i32 [ %conv, %if.then3 ], [ %1, %if.else ]
  %end.0 = phi i32 [ %add, %if.then3 ], [ 65536, %if.else ]
  tail call void @idr_preload(i32 noundef 3264) #11
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @idr_lock) #11
  %call6 = tail call i32 @idr_alloc_cyclic(ptr noundef nonnull @ch_idr, ptr noundef nonnull %call7.i.i, i32 noundef %start.0, i32 noundef %end.0, i32 noundef 2048) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, ptrtoint (ptr @radix_tree_preloads to i32)
  %8 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %8) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !370
  %9 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call6)
  %cmp9 = icmp eq i32 %call6, -28
  %spec.select = select i1 %cmp9, i32 -16, i32 %call6
  %13 = inttoptr i32 %spec.select to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conv13 = trunc i32 %call6 to i16
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv13, ptr %call7.i.i, align 8
  %state = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state, align 4
  %lock = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.91, ptr noundef nonnull @riocm_ch_alloc.__key, i16 noundef signext 3) #11
  %accept_queue = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %accept_queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %accept_queue, ptr %accept_queue, align 8
  %prev.i = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %accept_queue, ptr %prev.i, align 4
  %ch_node = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %ch_node to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %ch_node, ptr %ch_node, align 8
  %prev.i42 = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ch_node, ptr %prev.i42, align 4
  %comp = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 14
  %20 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %comp, align 8
  %wait.i = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @init_completion.__key) #11
  %comp_close = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 15
  %21 = ptrtoint ptr %comp_close to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %comp_close, align 8
  %wait.i43 = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i43, ptr noundef nonnull @.str.95, ptr noundef nonnull @init_completion.__key) #11
  %ref = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  %22 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %ref, align 4
  %head = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %head, align 8
  %tail = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 16, i32 2
  %24 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tail, align 4
  %count = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 16, i32 3
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %count, align 8
  %inuse_cnt = getelementptr inbounds %struct.rio_channel, ptr %call7.i.i, i32 0, i32 16, i32 5
  %26 = ptrtoint ptr %inuse_cnt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %inuse_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %13, %if.then8 ], [ %call7.i.i, %if.end12 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !355

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riocm_ch_bind(i16 noundef zeroext %ch_id, i8 noundef zeroext %mport_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_bind.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_bind, %do.end10)) #11
          to label %if.then6 [label %do.end10], !srcloc !352

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %ch_id to i32
  %conv7 = zext i8 %mport_id to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_bind.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, i32 noundef %conv, i32 noundef %conv7) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body1, %entry.do.end10_crit_edge
  tail call void @down_read(ptr noundef nonnull @rdev_sem) #11
  %cm.04 = load ptr, ptr @cm_dev_list, align 4
  %cmp.not5 = icmp eq ptr %cm.04, @cm_dev_list
  br i1 %cmp.not5, label %do.end10.exit_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.exit_crit_edge:                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end10.for.body_crit_edge
  %cm.06 = phi ptr [ %cm.0, %for.inc.for.body_crit_edge ], [ %cm.04, %do.end10.for.body_crit_edge ]
  %mport = getelementptr inbounds %struct.cm_dev, ptr %cm.06, i32 0, i32 1
  %1 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mport, align 4
  %id = getelementptr inbounds %struct.rio_mport, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %mport_id)
  %cmp17 = icmp eq i8 %4, %mport_id
  br i1 %cmp17, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state.i = getelementptr inbounds %struct.rio_mport, ptr %2, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 1
  br i1 %cmp.i.not, label %if.end30, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %cm.06 to i32
  call void @__asan_load4_noabort(i32 %7)
  %cm.0 = load ptr, ptr %cm.06, align 4
  %cmp.not = icmp eq ptr %cm.0, @cm_dev_list
  br i1 %cmp.not, label %for.inc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.exit_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end30:                                         ; preds = %land.lhs.true
  %mport.le = getelementptr inbounds %struct.cm_dev, ptr %cm.06, i32 0, i32 1
  %call31 = tail call fastcc ptr @riocm_get_channel(i16 noundef zeroext %ch_id)
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.exit_crit_edge, label %if.end34

if.end30.exit_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end34:                                         ; preds = %if.end30
  %lock = getelementptr inbounds %struct.rio_channel, ptr %call31, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %state = getelementptr inbounds %struct.rio_channel, ptr %call31, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp35.not = icmp eq i32 %9, 0
  br i1 %cmp35.not, label %if.end39, label %if.end34.err_put_crit_edge

if.end34.err_put_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %cmdev = getelementptr inbounds %struct.rio_channel, ptr %call31, i32 0, i32 3
  %10 = ptrtoint ptr %cmdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cm.06, ptr %cmdev, align 4
  %11 = ptrtoint ptr %mport.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mport.le, align 4
  %host_deviceid = getelementptr inbounds %struct.rio_mport, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_deviceid, align 8
  %loc_destid = getelementptr inbounds %struct.rio_channel, ptr %call31, i32 0, i32 9
  %15 = ptrtoint ptr %loc_destid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %loc_destid, align 4
  %context41 = getelementptr inbounds %struct.rio_channel, ptr %call31, i32 0, i32 8
  %16 = ptrtoint ptr %context41 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %context41, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %state, align 4
  br label %err_put

err_put:                                          ; preds = %if.end39, %if.end34.err_put_crit_edge
  %rc.1 = phi i32 [ 0, %if.end39 ], [ -22, %if.end34.err_put_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %ref.i = getelementptr inbounds %struct.rio_channel, ptr %call31, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %err_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.exit_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %exit

if.then.i.i:                                      ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i) #11
  br label %exit

exit:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.exit_crit_edge, %if.end30.exit_crit_edge, %for.inc.exit_crit_edge, %do.end10.exit_crit_edge
  %rc.2 = phi i32 [ -22, %if.end30.exit_crit_edge ], [ %rc.1, %if.end5.i.i.i.i.i.exit_crit_edge ], [ %rc.1, %if.then10.i.i.i.i.i ], [ %rc.1, %if.then.i.i ], [ -19, %do.end10.exit_crit_edge ], [ -19, %for.inc.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @rdev_sem) #11
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riocm_ch_listen(i16 noundef zeroext %ch_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_listen.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_listen, %do.end9)) #11
          to label %if.then6 [label %do.end9], !srcloc !352

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %ch_id to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_listen.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.99, i32 noundef %conv) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %call10 = tail call fastcc ptr @riocm_get_channel(i16 noundef zeroext %ch_id)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end9.cleanup_crit_edge, label %if.end13

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %lock.i = getelementptr inbounds %struct.rio_channel, ptr %call10, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %state.i = getelementptr inbounds %struct.rio_channel, ptr %call10, i32 0, i32 5
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp1.i = icmp eq i32 %2, 4
  br i1 %cmp1.i, label %if.then.i, label %if.end13.riocm_cmp_exch.exit_crit_edge

if.end13.riocm_cmp_exch.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_cmp_exch.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %state.i, align 4
  br label %riocm_cmp_exch.exit

riocm_cmp_exch.exit:                              ; preds = %if.then.i, %if.end13.riocm_cmp_exch.exit_crit_edge
  %spec.select = phi i32 [ -22, %if.end13.riocm_cmp_exch.exit_crit_edge ], [ 0, %if.then.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %ref.i = getelementptr inbounds %struct.rio_channel, ptr %call10, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %riocm_cmp_exch.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %riocm_cmp_exch.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9.cleanup_crit_edge ], [ %spec.select, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %spec.select, %if.then10.i.i.i.i.i ], [ %spec.select, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @riocm_ch_accept(i16 noundef zeroext %ch_id, ptr nocapture noundef writeonly %new_ch_id, i32 noundef %timeout) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @riocm_get_channel(i16 noundef zeroext %ch_id)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %state.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp1.i.not = icmp eq i32 %1, 5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br i1 %cmp1.i.not, label %if.end5, label %if.end.if.then185_crit_edge

if.end.if.then185_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then185

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool6.not = icmp eq i32 %timeout, 0
  br i1 %tobool6.not, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.end5
  %comp = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 14
  %call8 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %comp) #11
  br i1 %call8, label %if.then7.if.end33_crit_edge, label %if.then7.if.then185_crit_edge

if.then7.if.then185_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then185

if.then7.if.end33_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.body:                                          ; preds = %if.end5
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.do.end23_crit_edge, label %do.body13

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_accept.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_accept, %do.end23)) #11
          to label %if.then19 [label %do.end23], !srcloc !352

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %call, align 4
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_accept.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103, i32 noundef %conv) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body13, %do.body.do.end23_crit_edge
  %comp24 = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 14
  %call25 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %comp24, i32 noundef %timeout) #11
  %5 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call25, label %do.end23.if.end33_crit_edge [
    i32 0, label %do.end23.if.then185_crit_edge
    i32 -512, label %if.then30
  ]

do.end23.if.then185_crit_edge:                    ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then185

do.end23.if.end33_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then30:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then185

if.end33:                                         ; preds = %do.end23.if.end33_crit_edge, %if.then7.if.end33_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp34.not = icmp eq i32 %7, 5
  br i1 %cmp34.not, label %if.else37, label %if.end33.do.body73_crit_edge

if.end33.do.body73_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body73

if.else37:                                        ; preds = %if.end33
  %accept_queue = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 12
  %8 = ptrtoint ptr %accept_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %accept_queue, align 4
  %cmp.i.not = icmp eq ptr %9, %accept_queue
  br i1 %cmp.i.not, label %do.body41, label %if.end100

do.body41:                                        ; preds = %if.else37
  %10 = load i32, ptr @dbg_level, align 4
  %and42 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.do.body73_crit_edge, label %do.body45

do.body41.do.body73_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body73

do.body45:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_accept.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_accept, %do.body73)) #11
          to label %if.then59 [label %do.body73], !srcloc !352

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %call, align 4
  %conv61 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_accept.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103, i32 noundef %conv61) #11
  br label %do.body73

do.body73:                                        ; preds = %if.then59, %do.body45, %do.body41.do.body73_crit_edge, %if.end33.do.body73_crit_edge
  %err.0.ph = phi i32 [ -5, %do.body41.do.body73_crit_edge ], [ -5, %if.then59 ], [ -125, %if.end33.do.body73_crit_edge ], [ -5, %do.body45 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %13 = load i32, ptr @dbg_level, align 4
  %and74 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.if.then185_crit_edge, label %do.body77

do.body73.if.then185_crit_edge:                   ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then185

do.body77:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_accept.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_accept, %if.then185)) #11
          to label %if.then91 [label %if.then185], !srcloc !352

if.then91:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call, align 4
  %conv93 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_accept.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.103, i32 noundef %conv93, i32 noundef %err.0.ph) #11
  br label %if.then185

if.end100:                                        ; preds = %if.else37
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %call101 = tail call fastcc ptr @riocm_ch_alloc(i16 noundef zeroext 0)
  %cmp.i252 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %do.end106, label %if.end110

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call101 to i32
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.103, i32 noundef %16) #14
  br label %if.then185

if.end110:                                        ; preds = %if.end100
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %17 = ptrtoint ptr %accept_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %accept_queue, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end110.list_del.exit_crit_edge

if.end110.list_del.exit_crit_edge:                ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end110.list_del.exit_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmdev = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 3
  %27 = ptrtoint ptr %cmdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmdev, align 4
  %cmdev114 = getelementptr inbounds %struct.rio_channel, ptr %call101, i32 0, i32 3
  %29 = ptrtoint ptr %cmdev114 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %cmdev114, align 4
  %loc_destid = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 9
  %30 = ptrtoint ptr %loc_destid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %loc_destid, align 4
  %loc_destid115 = getelementptr inbounds %struct.rio_channel, ptr %call101, i32 0, i32 9
  %32 = ptrtoint ptr %loc_destid115 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %loc_destid115, align 4
  %destid = getelementptr inbounds %struct.conn_req, ptr %18, i32 0, i32 1
  %33 = ptrtoint ptr %destid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %destid, align 4
  %rem_destid = getelementptr inbounds %struct.rio_channel, ptr %call101, i32 0, i32 10
  %35 = ptrtoint ptr %rem_destid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rem_destid, align 4
  %chan = getelementptr inbounds %struct.conn_req, ptr %18, i32 0, i32 2
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %chan, align 4
  %rem_channel = getelementptr inbounds %struct.rio_channel, ptr %call101, i32 0, i32 11
  %38 = ptrtoint ptr %rem_channel to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %rem_channel, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %ref.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.riocm_put_channel.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.riocm_put_channel.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_put_channel.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %riocm_put_channel.exit

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i) #11
  br label %riocm_put_channel.exit

riocm_put_channel.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.riocm_put_channel.exit_crit_edge
  tail call void @kfree(ptr noundef %18) #11
  tail call void @down_read(ptr noundef nonnull @rdev_sem) #11
  %40 = ptrtoint ptr %cmdev114 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmdev114, align 4
  %peers = getelementptr inbounds %struct.cm_dev, ptr %41, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %riocm_put_channel.exit
  %peer.0.in = phi ptr [ %peers, %riocm_put_channel.exit ], [ %peer.0, %for.body.for.cond_crit_edge ]
  %42 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %peer.0 = load ptr, ptr %peer.0.in, align 4
  %cmp125.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp125.not, label %if.then169.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %rdev = getelementptr inbounds %struct.cm_peer, ptr %peer.0, i32 0, i32 1
  %43 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rdev, align 4
  %destid129 = getelementptr inbounds %struct.rio_dev, ptr %44, i32 0, i32 24
  %45 = ptrtoint ptr %destid129 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %destid129, align 4
  %conv130 = zext i16 %46 to i32
  %47 = ptrtoint ptr %rem_destid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rem_destid, align 4
  %cmp132 = icmp eq i32 %48, %conv130
  br i1 %cmp132, label %do.body135, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

do.body135:                                       ; preds = %for.body
  %rdev.le = getelementptr inbounds %struct.cm_peer, ptr %peer.0, i32 0, i32 1
  %49 = load i32, ptr @dbg_level, align 4
  %and136 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.body135.if.end170_crit_edge, label %do.body139

do.body135.if.end170_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

do.body139:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_accept.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_accept, %if.end170)) #11
          to label %if.then153 [label %if.end170], !srcloc !352

if.then153:                                       ; preds = %do.body139
  %50 = ptrtoint ptr %rdev.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rdev.le, align 4
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %51, i32 0, i32 21, i32 3
  %52 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %if.end.i.i253, label %if.then153.rio_name.exit_crit_edge

if.then153.rio_name.exit_crit_edge:               ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_name.exit

if.end.i.i253:                                    ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %51, i32 0, i32 21
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i253, %if.then153.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %55, %if.end.i.i253 ], [ %53, %if.then153.rio_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_accept.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i.i) #11
  br label %if.end170

if.then169.critedge:                              ; preds = %for.cond
  tail call void @up_read(ptr noundef nonnull @rdev_sem) #11
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @idr_lock) #11
  %56 = ptrtoint ptr %call101 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %call101, align 4
  %conv182 = zext i16 %57 to i32
  %call183 = tail call ptr @idr_remove(ptr noundef nonnull @ch_idr, i32 noundef %conv182) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @idr_lock) #11
  %ref.i254 = getelementptr inbounds %struct.rio_channel, ptr %call101, i32 0, i32 1
  %call.i.i.i.i.i.i.i255 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i254, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i254, i32 1, i32 3, i32 1) #11
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i254, ptr %ref.i254, i32 1, ptr elementtype(i32) %ref.i254) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i256 = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i256)
  %cmp.i.i.i.i.i257 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i256, 1
  br i1 %cmp.i.i.i.i.i257, label %if.then.i.i261, label %if.end5.i.i.i.i.i259

if.end5.i.i.i.i.i259:                             ; preds = %if.then169.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i256)
  %.not.i.i.i.i.i258 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i256, 0
  br i1 %.not.i.i.i.i.i258, label %if.end5.i.i.i.i.i259.if.end186_crit_edge, label %if.then10.i.i.i.i.i260, !prof !355

if.end5.i.i.i.i.i259.if.end186_crit_edge:         ; preds = %if.end5.i.i.i.i.i259
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end186

if.then10.i.i.i.i.i260:                           ; preds = %if.end5.i.i.i.i.i259
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i254, i32 noundef 3) #11
  br label %if.end186

if.then.i.i261:                                   ; preds = %if.then169.critedge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i254) #11
  br label %if.end186

if.end170:                                        ; preds = %rio_name.exit, %do.body139, %do.body135.if.end170_crit_edge
  tail call void @up_read(ptr noundef nonnull @rdev_sem) #11
  %59 = ptrtoint ptr %rdev.le to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rdev.le, align 4
  %rdev172 = getelementptr inbounds %struct.rio_channel, ptr %call101, i32 0, i32 4
  %61 = ptrtoint ptr %rdev172 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %rdev172, align 4
  %state173 = getelementptr inbounds %struct.rio_channel, ptr %call101, i32 0, i32 5
  %62 = ptrtoint ptr %state173 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %state173, align 4
  %lock175 = getelementptr inbounds %struct.rio_channel, ptr %call101, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock175, ptr noundef nonnull @.str.109, ptr noundef nonnull @riocm_ch_accept.__key, i16 noundef signext 3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 20) #15
  %cmp.i263 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i263, label %if.end170.riocm_send_ack.exit_crit_edge, label %if.end.i

if.end170.riocm_send_ack.exit_crit_edge:          ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_send_ack.exit

if.end.i:                                         ; preds = %if.end170
  %64 = ptrtoint ptr %loc_destid115 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %loc_destid115, align 4
  %66 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %call7.i.i.i, align 8
  %67 = ptrtoint ptr %rem_destid to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rem_destid, align 4
  %dst_id.i = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %dst_id.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %dst_id.i, align 4
  %70 = ptrtoint ptr %rem_channel to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %rem_channel, align 4
  %dst_ch.i = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call7.i.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %dst_ch.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %dst_ch.i, align 4
  %73 = ptrtoint ptr %call101 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %call101, align 4
  %src_ch.i = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call7.i.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %src_ch.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %src_ch.i, align 2
  %76 = load i32, ptr @cmbox, align 4
  %conv.i264 = trunc i32 %76 to i8
  %src_mbox.i = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %src_mbox.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv.i264, ptr %src_mbox.i, align 8
  %dst_mbox.i = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %dst_mbox.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i264, ptr %dst_mbox.i, align 1
  %type.i = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i.i, i32 0, i32 4
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 85, ptr %type.i, align 2
  %ch_op.i = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %ch_op.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %ch_op.i, align 1
  %81 = ptrtoint ptr %cmdev114 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmdev114, align 4
  %83 = ptrtoint ptr %rdev172 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rdev172, align 4
  %call6.i = tail call fastcc i32 @riocm_post_send(ptr noundef %82, ptr noundef %84, ptr noundef nonnull %call7.i.i.i, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, -16
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %85 = ptrtoint ptr %cmdev114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cmdev114, align 4
  %87 = ptrtoint ptr %rdev172 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rdev172, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3520, i32 noundef 20) #15
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %if.end13.thread.i, label %if.end.i.i265

if.end13.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %do.end.i

if.end.i.i265:                                    ; preds = %land.lhs.true.i
  %rdev1.i.i = getelementptr inbounds %struct.tx_req, ptr %call7.i.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %rdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %88, ptr %rdev1.i.i, align 8
  %buffer2.i.i = getelementptr inbounds %struct.tx_req, ptr %call7.i.i.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %buffer2.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i.i, ptr %buffer2.i.i, align 4
  %len3.i.i = getelementptr inbounds %struct.tx_req, ptr %call7.i.i.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 20, ptr %len3.i.i, align 8
  %tx_lock.i.i = getelementptr inbounds %struct.cm_dev, ptr %86, i32 0, i32 10
  %call7.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i.i) #11
  %tx_reqs.i.i = getelementptr inbounds %struct.cm_dev, ptr %86, i32 0, i32 9
  %prev.i.i.i = getelementptr inbounds %struct.cm_dev, ptr %86, i32 0, i32 9, i32 1
  %93 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %94, ptr noundef %tx_reqs.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i265.riocm_queue_req.exit.thread.i_crit_edge

if.end.i.i265.riocm_queue_req.exit.thread.i_crit_edge: ; preds = %if.end.i.i265
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_queue_req.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i265
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %96 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %tx_reqs.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev3.i.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %call7.i.i.i.i, ptr %94, align 4
  br label %riocm_queue_req.exit.thread.i

riocm_queue_req.exit.thread.i:                    ; preds = %if.end.i.i.i.i, %if.end.i.i265.riocm_queue_req.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i.i, i32 noundef %call7.i.i) #11
  br label %riocm_send_ack.exit

if.end13.i:                                       ; preds = %if.end.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool14.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool14.not.i, label %if.end13.i.riocm_send_ack.exit_crit_edge, label %if.end13.i.do.end.i_crit_edge

if.end13.i.do.end.i_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end13.i.riocm_send_ack.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_send_ack.exit

do.end.i:                                         ; preds = %if.end13.i.do.end.i_crit_edge, %if.end13.thread.i
  %99 = ptrtoint ptr %call101 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %call101, align 4
  %conv17.i = zext i16 %100 to i32
  %101 = ptrtoint ptr %rdev172 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rdev172, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.rio_dev, ptr %102, i32 0, i32 21, i32 3
  %103 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.rio_name.exit.i_crit_edge

do.end.i.rio_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.rio_dev, ptr %102, i32 0, i32 21
  %105 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i.i, align 4
  br label %rio_name.exit.i

rio_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.rio_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %106, %if.end.i.i.i ], [ %104, %do.end.i.rio_name.exit.i_crit_edge ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef %conv17.i, ptr noundef %retval.0.i.i.i, i32 noundef %call6.i) #14
  br label %riocm_send_ack.exit

riocm_send_ack.exit:                              ; preds = %rio_name.exit.i, %if.end13.i.riocm_send_ack.exit_crit_edge, %riocm_queue_req.exit.thread.i, %if.end170.riocm_send_ack.exit_crit_edge
  %107 = ptrtoint ptr %call101 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %call101, align 4
  %109 = ptrtoint ptr %new_ch_id to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %new_ch_id, align 2
  br label %cleanup

if.then185:                                       ; preds = %do.end106, %if.then91, %do.body77, %do.body73.if.then185_crit_edge, %if.then30, %do.end23.if.then185_crit_edge, %if.then7.if.then185_crit_edge, %if.end.if.then185_crit_edge
  %err.1.ph = phi i32 [ -62, %do.end23.if.then185_crit_edge ], [ -11, %if.then7.if.then185_crit_edge ], [ -22, %if.end.if.then185_crit_edge ], [ -12, %do.end106 ], [ %err.0.ph, %do.body73.if.then185_crit_edge ], [ %err.0.ph, %if.then91 ], [ -4, %if.then30 ], [ %err.0.ph, %do.body77 ]
  %ref.i266 = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i267 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i266, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i266, i32 1, i32 3, i32 1) #11
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i266, ptr %ref.i266, i32 1, ptr elementtype(i32) %ref.i266) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i268 = extractvalue { i32, i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i268)
  %cmp.i.i.i.i.i269 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i268, 1
  br i1 %cmp.i.i.i.i.i269, label %if.then.i.i273, label %if.end5.i.i.i.i.i271

if.end5.i.i.i.i.i271:                             ; preds = %if.then185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i268)
  %.not.i.i.i.i.i270 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i268, 0
  br i1 %.not.i.i.i.i.i270, label %if.end5.i.i.i.i.i271.if.end186_crit_edge, label %if.then10.i.i.i.i.i272, !prof !355

if.end5.i.i.i.i.i271.if.end186_crit_edge:         ; preds = %if.end5.i.i.i.i.i271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end186

if.then10.i.i.i.i.i272:                           ; preds = %if.end5.i.i.i.i.i271
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i266, i32 noundef 3) #11
  br label %if.end186

if.then.i.i273:                                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i266) #11
  br label %if.end186

if.end186:                                        ; preds = %if.then.i.i273, %if.then10.i.i.i.i.i272, %if.end5.i.i.i.i.i271.if.end186_crit_edge, %if.then.i.i261, %if.then10.i.i.i.i.i260, %if.end5.i.i.i.i.i259.if.end186_crit_edge
  %err.1286 = phi i32 [ -19, %if.end5.i.i.i.i.i259.if.end186_crit_edge ], [ -19, %if.then10.i.i.i.i.i260 ], [ -19, %if.then.i.i261 ], [ %err.1.ph, %if.end5.i.i.i.i.i271.if.end186_crit_edge ], [ %err.1.ph, %if.then10.i.i.i.i.i272 ], [ %err.1.ph, %if.then.i.i273 ]
  %111 = ptrtoint ptr %new_ch_id to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %new_ch_id, align 2
  %112 = inttoptr i32 %err.1286 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end186, %riocm_send_ack.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %112, %if.end186 ], [ %call101, %riocm_send_ack.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riocm_ch_connect(i16 noundef zeroext %loc_ch, ptr noundef %cm, ptr nocapture noundef readonly %peer, i16 noundef zeroext %rem_ch) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @riocm_get_channel(i16 noundef zeroext %loc_ch)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %state.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.i = icmp eq i32 %1, 0
  br i1 %cmp1.i, label %if.end4, label %riocm_cmp_exch.exit.thread

riocm_cmp_exch.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %conn_done

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %cmdev = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %cmdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cm, ptr %cmdev, align 4
  %rdev = getelementptr inbounds %struct.cm_peer, ptr %peer, i32 0, i32 1
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 4
  %rdev5 = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %rdev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %rdev5, align 4
  %context = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 8
  %7 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %context, align 4
  %mport = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 1
  %8 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mport, align 4
  %host_deviceid = getelementptr inbounds %struct.rio_mport, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_deviceid, align 8
  %loc_destid = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 9
  %12 = ptrtoint ptr %loc_destid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %loc_destid, align 4
  %rem_channel = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 11
  %13 = ptrtoint ptr %rem_channel to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %rem_ch, ptr %rem_channel, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 20) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end4.conn_done_crit_edge, label %if.end8

if.end4.conn_done_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %conn_done

if.end8:                                          ; preds = %if.end4
  %15 = ptrtoint ptr %loc_destid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %loc_destid, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %call7.i.i, align 8
  %18 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdev, align 4
  %destid = getelementptr inbounds %struct.rio_dev, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %destid, align 4
  %conv = zext i16 %21 to i32
  %dst_id = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %dst_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %dst_id, align 4
  %23 = load i32, ptr @cmbox, align 4
  %conv12 = trunc i32 %23 to i8
  %src_mbox = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %src_mbox to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv12, ptr %src_mbox, align 8
  %dst_mbox = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %dst_mbox to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv12, ptr %dst_mbox, align 1
  %type = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 85, ptr %type, align 2
  %ch_op = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %ch_op to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ch_op, align 1
  %dst_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %dst_ch to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %rem_ch, ptr %dst_ch, align 4
  %src_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %src_ch to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %loc_ch, ptr %src_ch, align 2
  %call18 = tail call fastcc i32 @riocm_post_send(ptr noundef %cm, ptr noundef %19, ptr noundef nonnull %call7.i.i, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, -16
  br i1 %cmp19.not, label %if.else, label %if.end27

if.else:                                          ; preds = %if.end8
  %30 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 20) #15
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end27.thread116, label %if.end.i

if.end.i:                                         ; preds = %if.else
  %rdev1.i = getelementptr inbounds %struct.tx_req, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %rdev1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %rdev1.i, align 8
  %buffer2.i = getelementptr inbounds %struct.tx_req, ptr %call7.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %buffer2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %buffer2.i, align 4
  %len3.i = getelementptr inbounds %struct.tx_req, ptr %call7.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 20, ptr %len3.i, align 8
  %tx_lock.i = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 10
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #11
  %tx_reqs.i = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.cm_dev, ptr %cm, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %37, ptr noundef %tx_reqs.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end27.thread_crit_edge

if.end.i.if.end27.thread_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.thread

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tx_reqs.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call7.i.i.i, ptr %37, align 4
  br label %if.end27.thread

if.end27.thread:                                  ; preds = %if.end.i.i.i, %if.end.i.if.end27.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call7.i) #11
  br label %if.end31

if.end27.thread116:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.then29

if.end27:                                         ; preds = %if.end8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool28.not = icmp eq i32 %call18, 0
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.end27.if.then29_crit_edge

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %if.end27.if.then29_crit_edge, %if.end27.thread116
  %ret.0119 = phi i32 [ -12, %if.end27.thread116 ], [ %call18, %if.end27.if.then29_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp1.i101 = icmp eq i32 %43, 1
  br i1 %cmp1.i101, label %if.then.i102, label %if.then29.riocm_cmp_exch.exit105_crit_edge

if.then29.riocm_cmp_exch.exit105_crit_edge:       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %riocm_cmp_exch.exit105

if.then.i102:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %state.i, align 4
  br label %riocm_cmp_exch.exit105

riocm_cmp_exch.exit105:                           ; preds = %if.then.i102, %if.then29.riocm_cmp_exch.exit105_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %conn_done

if.end31:                                         ; preds = %if.end27.if.end31_crit_edge, %if.end27.thread
  %comp = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 14
  %call32 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %comp, i32 noundef 300) #11
  %45 = load i32, ptr @dbg_level, align 4
  %and = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end31.do.end46_crit_edge, label %do.body35

if.end31.do.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46

do.body35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_connect.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_connect, %do.end46)) #11
          to label %if.then41 [label %do.end46], !srcloc !352

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %call, align 4
  %conv42 = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_connect.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.112, i32 noundef %conv42, i32 noundef %call32) #11
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %do.body35, %if.end31.do.end46_crit_edge
  %48 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %call32, label %if.else53 [
    i32 0, label %do.end46.conn_done_crit_edge
    i32 -512, label %if.then52
  ]

do.end46.conn_done_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %conn_done

if.then52:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %conn_done

if.else53:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp1.i108 = icmp ne i32 %50, 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %cond = sext i1 %cmp1.i108 to i32
  br label %conn_done

conn_done:                                        ; preds = %if.else53, %if.then52, %do.end46.conn_done_crit_edge, %riocm_cmp_exch.exit105, %if.end4.conn_done_crit_edge, %riocm_cmp_exch.exit.thread
  %ret.1 = phi i32 [ %ret.0119, %riocm_cmp_exch.exit105 ], [ -4, %if.then52 ], [ %cond, %if.else53 ], [ -12, %if.end4.conn_done_crit_edge ], [ -62, %do.end46.conn_done_crit_edge ], [ -22, %riocm_cmp_exch.exit.thread ]
  %ref.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %conn_done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %conn_done
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %ret.1, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.1, %if.then10.i.i.i.i.i ], [ %ret.1, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riocm_ch_send(i16 noundef zeroext %ch_id, ptr noundef %buf, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buf, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %ch_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ch_id)
  %cmp1 = icmp eq i16 %ch_id, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4 = icmp eq i32 %len, 0
  %or.cond = or i1 %cmp1, %cmp4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp7 = icmp sgt i32 %len, 4096
  %or.cond79 = or i1 %cmp7, %or.cond
  br i1 %or.cond79, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc ptr @riocm_get_channel(i16 noundef zeroext %ch_id)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !342) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, ptr noundef %comm, i32 noundef %5, i32 noundef %conv) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %state.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.i.not = icmp eq i32 %7, 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br i1 %cmp1.i.not, label %if.end20, label %if.end16.err_out_crit_edge

if.end16.err_out_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end20:                                         ; preds = %if.end16
  %loc_destid = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 9
  %8 = ptrtoint ptr %loc_destid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %loc_destid, align 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %buf, align 1
  %rem_destid = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 10
  %11 = ptrtoint ptr %rem_destid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rem_destid, align 4
  %dst_id = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %buf, i32 0, i32 1
  %13 = ptrtoint ptr %dst_id to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %dst_id, align 1
  %14 = load i32, ptr @cmbox, align 4
  %conv22 = trunc i32 %14 to i8
  %src_mbox = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %buf, i32 0, i32 2
  %15 = ptrtoint ptr %src_mbox to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv22, ptr %src_mbox, align 1
  %dst_mbox = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %buf, i32 0, i32 3
  %16 = ptrtoint ptr %dst_mbox to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv22, ptr %dst_mbox, align 1
  %type = getelementptr inbounds %struct.rio_ch_base_bhdr, ptr %buf, i32 0, i32 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 85, ptr %type, align 1
  %ch_op = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %buf, i32 0, i32 1
  %18 = ptrtoint ptr %ch_op to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %ch_op, align 1
  %rem_channel = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 11
  %19 = ptrtoint ptr %rem_channel to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rem_channel, align 4
  %dst_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %buf, i32 0, i32 2
  %21 = ptrtoint ptr %dst_ch to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %dst_ch, align 1
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %call, align 4
  %src_ch = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %buf, i32 0, i32 3
  %24 = ptrtoint ptr %src_ch to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %src_ch, align 1
  %conv27 = trunc i32 %len to i16
  %msg_len = getelementptr inbounds %struct.rio_ch_chan_hdr, ptr %buf, i32 0, i32 4
  %25 = ptrtoint ptr %msg_len to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %conv27, ptr %msg_len, align 1
  %cmdev = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 3
  %26 = ptrtoint ptr %cmdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmdev, align 4
  %rdev = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 4
  %28 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rdev, align 4
  %call28 = tail call fastcc i32 @riocm_post_send(ptr noundef %27, ptr noundef %29, ptr noundef nonnull %buf, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end20.err_out_crit_edge, label %do.body31

if.end20.err_out_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

do.body31:                                        ; preds = %if.end20
  %30 = load i32, ptr @dbg_level, align 4
  %and = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %do.body31.err_out_crit_edge, label %do.body34

do.body31.err_out_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

do.body34:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_send.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_send, %err_out)) #11
          to label %if.then41 [label %err_out], !srcloc !352

if.then41:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %call, align 4
  %conv43 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_send.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %conv43, i32 noundef %call28) #11
  br label %err_out

err_out:                                          ; preds = %if.then41, %do.body34, %do.body31.err_out_crit_edge, %if.end20.err_out_crit_edge, %if.end16.err_out_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then41 ], [ %call28, %do.body31.err_out_crit_edge ], [ 0, %if.end20.err_out_crit_edge ], [ -11, %if.end16.err_out_crit_edge ], [ %call28, %do.body34 ]
  %ref.i = getelementptr inbounds %struct.rio_channel, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !354
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %err_out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !355

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call fastcc void @riocm_ch_free(ptr noundef %ref.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riocm_ch_receive(ptr noundef %ch, ptr nocapture noundef writeonly %buf, i32 noundef %timeout) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %state.i = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1.i.not = icmp eq i32 %1, 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br i1 %cmp1.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %rx_ring = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 16
  %inuse_cnt = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 16, i32 5
  %2 = ptrtoint ptr %inuse_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inuse_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %cmp = icmp eq i32 %3, 128
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end2:                                          ; preds = %if.end
  %comp = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 14
  %call3 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %comp, i32 noundef %timeout) #11
  %4 = load i32, ptr @dbg_level, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end2.do.end16_crit_edge, label %do.body6

if.end2.do.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.body6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riocm_ch_receive.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riocm_ch_receive, %do.end16)) #11
          to label %if.then12 [label %do.end16], !srcloc !352

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ch, align 4
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riocm_ch_receive.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.116, i32 noundef %conv, i32 noundef %call3) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body6, %if.end2.do.end16_crit_edge
  %7 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call3, label %if.else22 [
    i32 0, label %do.end16.out_crit_edge
    i32 -512, label %if.then21
  ]

do.end16.out_crit_edge:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then21:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else22:                                        ; preds = %do.end16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp1.i89.not = icmp eq i32 %9, 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br i1 %cmp1.i89.not, label %if.end29, label %if.else22.out_crit_edge

if.else22.out_crit_edge:                          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end29:                                         ; preds = %if.else22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %tail = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr [128 x ptr], ptr %rx_ring, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.rio_channel, ptr %ch, i32 0, i32 16, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %count, align 4
  %16 = load i32, ptr %tail, align 4
  %inc = add i32 %16, 1
  %rem = srem i32 %inc, 128
  store i32 %rem, ptr %tail, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc57 = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc57, 128
  br i1 %exitcond.not, label %if.then59, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end29
  %i.096 = phi i32 [ 0, %if.end29 ], [ %inc57, %for.cond.for.body_crit_edge ]
  %arrayidx46 = getelementptr %struct.rio_channel, ptr %ch, i32 0, i32 16, i32 4, i32 %i.096
  %17 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx46, align 4
  %cmp47 = icmp eq ptr %18, null
  br i1 %cmp47, label %for.end.thread, label %for.cond

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %13, ptr %arrayidx46, align 4
  %20 = ptrtoint ptr %inuse_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inuse_cnt, align 4
  %inc55 = add i32 %21, 1
  store i32 %inc55, ptr %inuse_cnt, align 4
  br label %if.end60

if.then59:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %13) #11
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %for.end.thread
  %ret.195 = phi i32 [ -12, %if.then59 ], [ 0, %for.end.thread ]
  %rxmsg.0 = phi ptr [ null, %if.then59 ], [ %13, %for.end.thread ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %out

out:                                              ; preds = %if.end60, %if.else22.out_crit_edge, %if.then21, %do.end16.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %ret.195, %if.end60 ], [ -11, %entry.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ -62, %do.end16.out_crit_edge ], [ -4, %if.then21 ], [ -104, %if.else22.out_crit_edge ]
  %rxmsg.1 = phi ptr [ %rxmsg.0, %if.end60 ], [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %do.end16.out_crit_edge ], [ null, %if.then21 ], [ null, %if.else22.out_crit_edge ]
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rxmsg.1, ptr %buf, align 4
  ret i32 %ret.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !44, !46, !47, !49, !50, !52, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !93, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !147, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !191, !192, !194, !195, !196, !198, !199, !201, !202, !204, !206, !207, !209, !210, !212, !214, !215, !216, !217, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !236, !238, !239, !240, !241, !243, !244, !246, !248, !249, !251, !253, !255, !256, !257, !259, !260, !262, !263, !264, !266, !267, !269, !270, !271, !273, !274, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !290, !291, !293, !294, !295, !297, !298, !300, !301, !303, !304, !305, !307, !308, !310, !311, !313, !314, !315, !316, !318, !319, !321, !322, !323, !324, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341}
!llvm.named.register.sp = !{!342}
!llvm.module.flags = !{!343, !344, !345, !346, !347, !348, !349, !350}
!llvm.ident = !{!351}

!0 = !{ptr @__param_cmbox, !1, !"__param_cmbox", i1 false, i1 false}
!1 = !{!"../drivers/rapidio/rio_cm.c", i32 70, i32 1}
!2 = !{ptr @__UNIQUE_ID_cmboxtype236, !1, !"__UNIQUE_ID_cmboxtype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_cmbox237, !4, !"__UNIQUE_ID_cmbox237", i1 false, i1 false}
!4 = !{!"../drivers/rapidio/rio_cm.c", i32 71, i32 1}
!5 = !{ptr @__param_chstart, !6, !"__param_chstart", i1 false, i1 false}
!6 = !{!"../drivers/rapidio/rio_cm.c", i32 74, i32 1}
!7 = !{ptr @__UNIQUE_ID_chstarttype238, !6, !"__UNIQUE_ID_chstarttype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_chstart239, !9, !"__UNIQUE_ID_chstart239", i1 false, i1 false}
!9 = !{!"../drivers/rapidio/rio_cm.c", i32 75, i32 1}
!10 = !{ptr @__param_dbg_level, !11, !"__param_dbg_level", i1 false, i1 false}
!11 = !{!"../drivers/rapidio/rio_cm.c", i32 80, i32 1}
!12 = !{ptr @__UNIQUE_ID_dbg_leveltype240, !11, !"__UNIQUE_ID_dbg_leveltype240", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_dbg_level241, !14, !"__UNIQUE_ID_dbg_level241", i1 false, i1 false}
!14 = !{!"../drivers/rapidio/rio_cm.c", i32 81, i32 1}
!15 = !{ptr @__UNIQUE_ID_author242, !16, !"__UNIQUE_ID_author242", i1 false, i1 false}
!16 = !{!"../drivers/rapidio/rio_cm.c", i32 84, i32 1}
!17 = !{ptr @__UNIQUE_ID_description243, !18, !"__UNIQUE_ID_description243", i1 false, i1 false}
!18 = !{!"../drivers/rapidio/rio_cm.c", i32 85, i32 1}
!19 = !{ptr @__UNIQUE_ID_file244, !20, !"__UNIQUE_ID_file244", i1 false, i1 false}
!20 = !{!"../drivers/rapidio/rio_cm.c", i32 86, i32 1}
!21 = !{ptr @__UNIQUE_ID_license245, !20, !"__UNIQUE_ID_license245", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_version246, !23, !"__UNIQUE_ID_version246", i1 false, i1 false}
!23 = !{!"../drivers/rapidio/rio_cm.c", i32 87, i32 1}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__modver_attr, !23, !"__modver_attr", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rapidio/rio_cm.c", i32 2362, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @riocm_exit.__UNIQUE_ID_ddebug300, !29, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!33 = !{ptr @__initcall__kmod_rio_cm__301_2375_riocm_init7, !34, !"__initcall__kmod_rio_cm__301_2375_riocm_init7", i1 false, i1 false}
!34 = !{!"../drivers/rapidio/rio_cm.c", i32 2375, i32 1}
!35 = !{ptr @__exitcall_riocm_exit, !36, !"__exitcall_riocm_exit", i1 false, i1 false}
!36 = !{!"../drivers/rapidio/rio_cm.c", i32 2376, i32 1}
!37 = !{ptr @dev_class, !38, !"dev_class", i1 false, i1 false}
!38 = !{!"../drivers/rapidio/rio_cm.c", i32 236, i32 22}
!39 = !{ptr @dev_number, !40, !"dev_number", i1 false, i1 false}
!40 = !{!"../drivers/rapidio/rio_cm.c", i32 239, i32 14}
!41 = !{ptr @riocm_cdev, !42, !"riocm_cdev", i1 false, i1 false}
!42 = !{!"../drivers/rapidio/rio_cm.c", i32 240, i32 27}
!43 = !{ptr @__param_str_cmbox, !1, !"__param_str_cmbox", i1 false, i1 false}
!44 = !{ptr @cmbox, !45, !"cmbox", i1 false, i1 false}
!45 = !{!"../drivers/rapidio/rio_cm.c", i32 69, i32 12}
!46 = !{ptr @__param_str_chstart, !6, !"__param_str_chstart", i1 false, i1 false}
!47 = !{ptr @chstart, !48, !"chstart", i1 false, i1 false}
!48 = !{!"../drivers/rapidio/rio_cm.c", i32 73, i32 12}
!49 = !{ptr @__param_str_dbg_level, !11, !"__param_str_dbg_level", i1 false, i1 false}
!50 = !{ptr @dbg_level, !51, !"dbg_level", i1 false, i1 false}
!51 = !{!"../drivers/rapidio/rio_cm.c", i32 79, i32 12}
!52 = !{ptr @rio_cm_notifier, !53, !"rio_cm_notifier", i1 false, i1 false}
!53 = !{!"../drivers/rapidio/rio_cm.c", i32 2291, i32 30}
!54 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rapidio/rio_cm.c", i32 2247, i32 2}
!56 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rio_cm_shutdown.__UNIQUE_ID_ddebug297, !55, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!58 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rapidio/rio_cm.c", i32 2259, i32 4}
!60 = !{ptr @rio_cm_shutdown.__UNIQUE_ID_ddebug298, !59, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rapidio/rio_cm.c", i32 230, i32 8}
!63 = !{ptr @idr_lock, !62, !"idr_lock", i1 false, i1 false}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rapidio/rio_cm.c", i32 1425, i32 3}
!66 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @riocm_send_close._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @riocm_send_close._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rapidio/rio_cm.c", i32 747, i32 3}
!71 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @riocm_post_send.__UNIQUE_ID_ddebug256, !70, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!73 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rapidio/rio_cm.c", i32 755, i32 2}
!75 = !{ptr @riocm_post_send.__UNIQUE_ID_ddebug257, !74, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!76 = !{ptr @riocm_interface, !77, !"riocm_interface", i1 false, i1 false}
!77 = !{!"../drivers/rapidio/rio_cm.c", i32 2275, i32 32}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/rapidio/rio_cm.c", i32 1954, i32 2}
!80 = !{ptr @.str.16, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @riocm_add_dev.__UNIQUE_ID_ddebug287, !79, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rapidio/rio_cm.c", i32 234, i32 8}
!84 = !{ptr @.str.18, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rdev_sem, !83, !"rdev_sem", i1 false, i1 false}
!86 = !{ptr @cm_dev_list, !87, !"cm_dev_list", i1 false, i1 false}
!87 = !{!"../drivers/rapidio/rio_cm.c", i32 233, i32 8}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/rapidio/rio_cm.c", i32 2002, i32 2}
!90 = !{ptr @riocm_remove_dev.__UNIQUE_ID_ddebug288, !89, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!91 = !{ptr @.str.20, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rapidio/rio_cm.c", i32 2022, i32 4}
!93 = !{ptr @riocm_remove_dev.__UNIQUE_ID_ddebug289, !92, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/rapidio/rio_cm.c", i32 1441, i32 2}
!96 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @riocm_ch_close.__UNIQUE_ID_ddebug269, !95, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!98 = !{ptr @.str.23, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/rapidio/rio_cm.c", i32 1453, i32 2}
!100 = !{ptr @riocm_ch_close.__UNIQUE_ID_ddebug270, !99, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/rapidio/rio_cm.c", i32 1457, i32 3}
!103 = !{ptr @riocm_ch_close.__UNIQUE_ID_ddebug271, !102, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/rapidio/rio_cm.c", i32 1462, i32 3}
!106 = !{ptr @riocm_ch_close.__UNIQUE_ID_ddebug272, !105, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!107 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/rapidio/rio_cm.c", i32 1468, i32 3}
!109 = !{ptr @riocm_ch_close.__UNIQUE_ID_ddebug273, !108, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!110 = !{ptr @.str.27, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/rapidio/rio_cm.c", i32 1471, i32 3}
!112 = !{ptr @riocm_ch_close.__UNIQUE_ID_ddebug274, !111, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!113 = !{ptr @.str.28, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/rapidio/rio_cm.c", i32 1368, i32 2}
!115 = !{ptr @.str.29, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @riocm_ch_free.__UNIQUE_ID_ddebug268, !114, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!117 = !{ptr @rio_mport_interface, !118, !"rio_mport_interface", i1 false, i1 false}
!118 = !{!"../drivers/rapidio/rio_cm.c", i32 2285, i32 31}
!119 = !{ptr @.str.30, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/rapidio/rio_cm.c", i32 2103, i32 2}
!121 = !{ptr @.str.31, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @riocm_add_mport.__UNIQUE_ID_ddebug291, !120, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!123 = !{ptr @.str.32, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/rapidio/rio_cm.c", i32 2114, i32 3}
!125 = !{ptr @riocm_add_mport._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @riocm_add_mport._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.34, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/rapidio/rio_cm.c", i32 2123, i32 3}
!129 = !{ptr @riocm_add_mport._entry.33, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @riocm_add_mport._entry_ptr.35, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.36, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/rapidio/rio_cm.c", i32 2130, i32 14}
!133 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @riocm_add_mport.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/rapidio/rio_cm.c", i32 2146, i32 2}
!136 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @riocm_add_mport.__key.39, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/rapidio/rio_cm.c", i32 2148, i32 2}
!139 = !{ptr @.str.40, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @riocm_add_mport.__key.41, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/rapidio/rio_cm.c", i32 2153, i32 2}
!142 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.43, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/rapidio/rio_cm.c", i32 643, i32 2}
!145 = !{ptr @.str.44, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @rio_txcq_handler.__UNIQUE_ID_ddebug254, !144, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!147 = !{ptr @.str.45, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/rapidio/rio_cm.c", i32 650, i32 3}
!149 = !{ptr @rio_txcq_handler.__UNIQUE_ID_ddebug255, !148, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!150 = !{ptr @.str.46, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/rapidio/rio_cm.c", i32 662, i32 3}
!152 = !{ptr @rio_txcq_handler._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @rio_txcq_handler._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.47, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/rapidio/rio_cm.c", i32 603, i32 4}
!156 = !{ptr @.str.48, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @rio_ibmsg_handler._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @rio_ibmsg_handler._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.49, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/rapidio/rio_cm.c", i32 316, i32 4}
!161 = !{ptr @.str.50, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @riocm_rx_get_msg._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @riocm_rx_get_msg._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.51, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/rapidio/rio_cm.c", i32 533, i32 2}
!166 = !{ptr @.str.52, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @rio_rx_data_handler.__UNIQUE_ID_ddebug251, !165, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!168 = !{ptr @.str.53, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/rapidio/rio_cm.c", i32 547, i32 3}
!170 = !{ptr @rio_rx_data_handler.__UNIQUE_ID_ddebug252, !169, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!171 = !{ptr @.str.54, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/rapidio/rio_cm.c", i32 557, i32 3}
!173 = !{ptr @rio_rx_data_handler.__UNIQUE_ID_ddebug253, !172, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!174 = !{ptr @.str.55, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/rapidio/rio_cm.c", i32 495, i32 2}
!176 = !{ptr @.str.56, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @rio_cm_handler.__UNIQUE_ID_ddebug250, !175, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!178 = !{ptr @.str.57, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/rapidio/rio_cm.c", i32 509, i32 3}
!180 = !{ptr @rio_cm_handler._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @rio_cm_handler._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.58, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/rapidio/rio_cm.c", i32 391, i32 3}
!184 = !{ptr @.str.59, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @riocm_req_handler.__UNIQUE_ID_ddebug247, !183, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!186 = !{ptr @.str.60, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/rapidio/rio_cm.c", i32 461, i32 2}
!188 = !{ptr @riocm_close_handler.__UNIQUE_ID_ddebug248, !187, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!189 = !{ptr @.str.61, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/rapidio/rio_cm.c", i32 476, i32 3}
!191 = !{ptr @riocm_close_handler.__UNIQUE_ID_ddebug249, !190, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!192 = !{ptr @.str.62, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/rapidio/rio_cm.c", i32 2186, i32 2}
!194 = !{ptr @.str.63, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @riocm_remove_mport.__UNIQUE_ID_ddebug292, !193, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!196 = !{ptr @.str.64, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/rapidio/rio_cm.c", i32 2208, i32 4}
!198 = !{ptr @riocm_remove_mport.__UNIQUE_ID_ddebug293, !197, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!199 = !{ptr @.str.65, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/rapidio/rio_cm.c", i32 2228, i32 3}
!201 = !{ptr @riocm_remove_mport.__UNIQUE_ID_ddebug294, !200, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!202 = !{ptr @riocm_remove_mport.__UNIQUE_ID_ddebug295, !203, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!203 = !{!"../drivers/rapidio/rio_cm.c", i32 2230, i32 3}
!204 = !{ptr @.str.66, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/rapidio/rio_cm.c", i32 2237, i32 2}
!206 = !{ptr @riocm_remove_mport.__UNIQUE_ID_ddebug296, !205, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!207 = !{ptr @.str.67, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/rapidio/rio_cm.c", i32 231, i32 8}
!209 = !{ptr @ch_idr, !208, !"ch_idr", i1 false, i1 false}
!210 = !{ptr @riocm_init.__key, !211, !"__key", i1 false, i1 false}
!211 = !{!"../drivers/rapidio/rio_cm.c", i32 2300, i32 14}
!212 = !{ptr @.str.68, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/rapidio/rio_cm.c", i32 2302, i32 3}
!214 = !{ptr @.str.69, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @riocm_init._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @riocm_init._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.70, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/rapidio/rio_cm.c", i32 2314, i32 2}
!219 = !{ptr @riocm_init.__UNIQUE_ID_ddebug299, !218, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!220 = !{ptr @.str.72, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/rapidio/rio_cm.c", i32 2322, i32 3}
!222 = !{ptr @riocm_init._entry.71, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @riocm_init._entry_ptr.73, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.75, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/rapidio/rio_cm.c", i32 2332, i32 3}
!226 = !{ptr @riocm_init._entry.74, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @riocm_init._entry_ptr.76, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.78, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/rapidio/rio_cm.c", i32 2338, i32 3}
!230 = !{ptr @riocm_init._entry.77, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @riocm_init._entry_ptr.79, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @dev_major, !233, !"dev_major", i1 false, i1 false}
!233 = !{!"../drivers/rapidio/rio_cm.c", i32 237, i32 21}
!234 = distinct !{null, !235, !"dev_minor_base", i1 false, i1 false}
!235 = !{!"../drivers/rapidio/rio_cm.c", i32 238, i32 21}
!236 = !{ptr @.str.80, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/rapidio/rio_cm.c", i32 2071, i32 3}
!238 = !{ptr @.str.81, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @riocm_cdev_add._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @riocm_cdev_add._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.82, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/rapidio/rio_cm.c", i32 2081, i32 2}
!243 = !{ptr @riocm_cdev_add.__UNIQUE_ID_ddebug290, !242, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!244 = !{ptr @riocm_cdev_fops, !245, !"riocm_cdev_fops", i1 false, i1 false}
!245 = !{!"../drivers/rapidio/rio_cm.c", i32 1929, i32 37}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!248 = !{ptr @.str.83, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.84, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!251 = !{ptr @.str.85, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!253 = !{ptr @.str.86, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/rapidio/rio_cm.c", i32 1665, i32 2}
!255 = !{ptr @.str.87, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @cm_chan_create.__UNIQUE_ID_ddebug280, !254, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!257 = !{ptr @.str.88, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/rapidio/rio_cm.c", i32 1672, i32 2}
!259 = !{ptr @cm_chan_create.__UNIQUE_ID_ddebug281, !258, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!260 = !{ptr @.str.89, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/rapidio/rio_cm.c", i32 1351, i32 3}
!262 = !{ptr @.str.90, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @riocm_ch_create.__UNIQUE_ID_ddebug267, !261, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!264 = !{ptr @riocm_ch_alloc.__key, !265, !"__key", i1 false, i1 false}
!265 = !{!"../drivers/rapidio/rio_cm.c", i32 1314, i32 2}
!266 = !{ptr @.str.91, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.92, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!269 = !{ptr @.str.93, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.94, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @init_completion.__key, !272, !"__key", i1 false, i1 false}
!272 = !{!"../include/linux/completion.h", i32 87, i32 2}
!273 = !{ptr @.str.95, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.96, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/rapidio/rio_cm.c", i32 1691, i32 2}
!276 = !{ptr @cm_chan_close.__UNIQUE_ID_ddebug282, !275, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!277 = !{ptr @.str.97, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/rapidio/rio_cm.c", i32 1234, i32 2}
!279 = !{ptr @.str.98, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @riocm_ch_bind.__UNIQUE_ID_ddebug266, !278, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!281 = !{ptr @.str.99, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/rapidio/rio_cm.c", i32 1206, i32 2}
!283 = !{ptr @riocm_ch_listen.__UNIQUE_ID_ddebug265, !282, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!284 = !{ptr @.str.100, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/rapidio/rio_cm.c", i32 1755, i32 2}
!286 = !{ptr @.str.101, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @cm_chan_accept.__UNIQUE_ID_ddebug283, !285, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!288 = !{ptr @.str.102, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/rapidio/rio_cm.c", i32 1766, i32 2}
!290 = !{ptr @cm_chan_accept.__UNIQUE_ID_ddebug284, !289, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!291 = !{ptr @.str.103, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/rapidio/rio_cm.c", i32 1098, i32 3}
!293 = !{ptr @.str.104, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @riocm_ch_accept.__UNIQUE_ID_ddebug261, !292, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!295 = !{ptr @.str.105, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/rapidio/rio_cm.c", i32 1116, i32 3}
!297 = !{ptr @riocm_ch_accept.__UNIQUE_ID_ddebug262, !296, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!298 = !{ptr @.str.106, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/rapidio/rio_cm.c", i32 1124, i32 3}
!300 = !{ptr @riocm_ch_accept.__UNIQUE_ID_ddebug263, !299, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!301 = !{ptr @.str.107, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/rapidio/rio_cm.c", i32 1132, i32 3}
!303 = !{ptr @riocm_ch_accept._entry, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @riocm_ch_accept._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.108, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/rapidio/rio_cm.c", i32 1156, i32 4}
!307 = !{ptr @riocm_ch_accept.__UNIQUE_ID_ddebug264, !306, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!308 = !{ptr @riocm_ch_accept.__key, !309, !"__key", i1 false, i1 false}
!309 = !{!"../drivers/rapidio/rio_cm.c", i32 1172, i32 2}
!310 = !{ptr @.str.109, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.110, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/rapidio/rio_cm.c", i32 1051, i32 3}
!313 = !{ptr @.str.111, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @riocm_send_ack._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @riocm_send_ack._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.112, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/rapidio/rio_cm.c", i32 1007, i32 2}
!318 = !{ptr @riocm_ch_connect.__UNIQUE_ID_ddebug260, !317, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!319 = !{ptr @.str.113, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/rapidio/rio_cm.c", i32 792, i32 3}
!321 = !{ptr @.str.114, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @riocm_ch_send._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @riocm_ch_send._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.115, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/rapidio/rio_cm.c", i32 825, i32 3}
!326 = !{ptr @riocm_ch_send.__UNIQUE_ID_ddebug258, !325, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!327 = !{ptr @.str.116, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/rapidio/rio_cm.c", i32 887, i32 2}
!329 = !{ptr @.str.117, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @riocm_ch_receive.__UNIQUE_ID_ddebug259, !328, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!331 = !{ptr @.str.118, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/rapidio/rio_cm.c", i32 1482, i32 2}
!333 = !{ptr @.str.119, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @riocm_cdev_open.__UNIQUE_ID_ddebug275, !332, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!335 = !{ptr @.str.120, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/rapidio/rio_cm.c", i32 1500, i32 2}
!337 = !{ptr @.str.121, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @riocm_cdev_release.__UNIQUE_ID_ddebug276, !336, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!339 = !{ptr @.str.122, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/rapidio/rio_cm.c", i32 1507, i32 4}
!341 = !{ptr @riocm_cdev_release.__UNIQUE_ID_ddebug277, !340, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!342 = !{!"sp"}
!343 = !{i32 1, !"wchar_size", i32 2}
!344 = !{i32 1, !"min_enum_size", i32 4}
!345 = !{i32 8, !"branch-target-enforcement", i32 0}
!346 = !{i32 8, !"sign-return-address", i32 0}
!347 = !{i32 8, !"sign-return-address-all", i32 0}
!348 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!349 = !{i32 7, !"uwtable", i32 1}
!350 = !{i32 7, !"frame-pointer", i32 2}
!351 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!352 = !{i64 2149006695, i64 2149006700, i64 2149006713, i64 2149006757, i64 2149006791, i64 2149006812}
!353 = !{i64 2148482873}
!354 = !{i64 2148397313, i64 2148397345, i64 2148397374, i64 2148397408, i64 2148397439, i64 2148397462}
!355 = !{!"branch_weights", i32 2000, i32 1}
!356 = !{i64 2149358987}
!357 = !{!"branch_weights", i32 1, i32 2000}
!358 = !{i64 2148394848, i64 2148394880, i64 2148394909, i64 2148394943, i64 2148394974, i64 2148394997}
!359 = !{i64 5761385}
!360 = !{i64 5761582}
!361 = !{i64 2153246815}
!362 = !{i64 2154498089, i64 2154498369, i64 2154498703, i64 2154499037}
!363 = !{i64 2153266511, i64 2153266536}
!364 = !{!"auto-init"}
!365 = !{i64 2153265830, i64 2153265855}
!366 = !{i64 2154568111, i64 2154568391, i64 2154568725, i64 2154569059}
!367 = !{i64 2154526224, i64 2154526504, i64 2154526838, i64 2154527172}
!368 = !{i64 2154542159, i64 2154542439, i64 2154542773, i64 2154543107}
!369 = !{i64 2154553058, i64 2154553338, i64 2154553672, i64 2154554006}
!370 = !{i64 2151492553}
