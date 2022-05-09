; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/qca_spi.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/qca_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.qcaspi = type { ptr, ptr, ptr, %struct.tx_ring, %struct.qcaspi_stats, ptr, i32, i8, %struct.qcafrm_handle, ptr, i32, i32, i16, ptr, i32, i8, i16 }
%struct.tx_ring = type { [10 x ptr], i16, i16, i16, i16 }
%struct.qcaspi_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qcafrm_handle = type { i32, i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_qcaspi_clkspeed = internal constant [23 x i8] c"qcaspi.qcaspi_clkspeed\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@qcaspi_clkspeed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_qcaspi_clkspeed = internal constant %struct.kernel_param { ptr @__param_str_qcaspi_clkspeed, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @qcaspi_clkspeed } }, section "__param", align 4
@__UNIQUE_ID_qcaspi_clkspeedtype353 = internal constant [36 x i8] c"qcaspi.parmtype=qcaspi_clkspeed:int\00", section ".modinfo", align 1
@__UNIQUE_ID_qcaspi_clkspeed354 = internal constant [76 x i8] c"qcaspi.parm=qcaspi_clkspeed:SPI bus clock speed (Hz). Use 1000000-16000000.\00", section ".modinfo", align 1
@__param_str_qcaspi_burst_len = internal constant [24 x i8] c"qcaspi.qcaspi_burst_len\00", align 1
@qcaspi_burst_len = internal global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@__param_qcaspi_burst_len = internal constant %struct.kernel_param { ptr @__param_str_qcaspi_burst_len, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @qcaspi_burst_len } }, section "__param", align 4
@__UNIQUE_ID_qcaspi_burst_lentype355 = internal constant [37 x i8] c"qcaspi.parmtype=qcaspi_burst_len:int\00", section ".modinfo", align 1
@__UNIQUE_ID_qcaspi_burst_len356 = internal constant [73 x i8] c"qcaspi.parm=qcaspi_burst_len:Number of data bytes per burst. Use 1-5000.\00", section ".modinfo", align 1
@__param_str_qcaspi_pluggable = internal constant [24 x i8] c"qcaspi.qcaspi_pluggable\00", align 1
@qcaspi_pluggable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_qcaspi_pluggable = internal constant %struct.kernel_param { ptr @__param_str_qcaspi_pluggable, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @qcaspi_pluggable } }, section "__param", align 4
@__UNIQUE_ID_qcaspi_pluggabletype357 = internal constant [37 x i8] c"qcaspi.parmtype=qcaspi_pluggable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_qcaspi_pluggable358 = internal constant [64 x i8] c"qcaspi.parm=qcaspi_pluggable:Pluggable SPI connection (yes/no).\00", section ".modinfo", align 1
@__param_str_wr_verify = internal constant [17 x i8] c"qcaspi.wr_verify\00", align 1
@wr_verify = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_wr_verify = internal constant %struct.kernel_param { ptr @__param_str_wr_verify, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @wr_verify } }, section "__param", align 4
@__UNIQUE_ID_wr_verifytype359 = internal constant [30 x i8] c"qcaspi.parmtype=wr_verify:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wr_verify360 = internal constant [65 x i8] c"qcaspi.parm=wr_verify:SPI register write verify trails. Use 0-3.\00", section ".modinfo", align 1
@__initcall__kmod_qcaspi__386_1033_qca_spi_driver_init6 = internal global ptr @qca_spi_driver_init, section ".initcall6.init", align 4
@qca_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @qca_spi_id, ptr @qca_spi_probe, ptr @qca_spi_remove, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qca_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_qca_spi_driver_exit = internal global ptr @qca_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description387 = internal constant [55 x i8] c"qcaspi.description=Qualcomm Atheros QCA7000 SPI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author388 = internal constant [46 x i8] c"qcaspi.author=Qualcomm Atheros Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_author389 = internal constant [53 x i8] c"qcaspi.author=Stefan Wahren <stefan.wahren@i2se.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file390 = internal constant [49 x i8] c"qcaspi.file=drivers/net/ethernet/qualcomm/qcaspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [28 x i8] c"qcaspi.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version392 = internal constant [23 x i8] c"qcaspi.version=0.2.7-i\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qcaspi\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.2.7-i\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@qca_spi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"qca7000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@qca_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,qca7000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 897, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Missing device tree\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qca_spi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/qualcomm/qca_spi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr = internal global ptr @qca_spi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qca,legacy-mode\00", [16 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 914, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid clkspeed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.11 = internal global ptr @qca_spi_probe._entry.9, section ".printk_index", align 4
@qca_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 921, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid burst len: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.14 = internal global ptr @qca_spi_probe._entry.12, section ".printk_index", align 4
@qca_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 928, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid pluggable: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.17 = internal global ptr @qca_spi_probe._entry.15, section ".printk_index", align 4
@qca_spi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 935, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid write verify: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.20 = internal global ptr @qca_spi_probe._entry.18, section ".printk_index", align 4
@qca_spi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 943, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ver=%s, clkspeed=%d, burst_len=%d, pluggable=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.24 = internal global ptr @qca_spi_probe._entry.21, section ".printk_index", align 4
@qca_spi_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 948, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to setup SPI device\0A\00", [36 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.27 = internal global ptr @qca_spi_probe._entry.25, section ".printk_index", align 4
@qca_spi_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 962, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fail to retrieve private structure\0A\00", [60 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.30 = internal global ptr @qca_spi_probe._entry.28, section ".printk_index", align 4
@qca_spi_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 975, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using random MAC address: %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.33 = internal global ptr @qca_spi_probe._entry.31, section ".printk_index", align 4
@qca_spi_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 986, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid signature (0x%04X)\0A\00", [36 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.36 = internal global ptr @qca_spi_probe._entry.34, section ".printk_index", align 4
@qca_spi_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 994, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to register net device %s\0A\00", [62 x i8] zeroinitializer }, align 32
@qca_spi_probe._entry_ptr.39 = internal global ptr @qca_spi_probe._entry.37, section ".printk_index", align 4
@qcaspi_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @qcaspi_netdev_init, ptr @qcaspi_netdev_uninit, ptr @qcaspi_netdev_open, ptr @qcaspi_netdev_close, ptr @qcaspi_netdev_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcaspi_netdev_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate RX sk_buff.\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: unable to start kernel thread.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: unable to get IRQ %d (irqval=%d).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SPI thread created\0A\00", [44 x i8] zeroinitializer }, align 32
@qcaspi_spi_thread.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.47, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcaspi_spi_thread\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"have work to do. int: %d, tx_skb: %p\0A\00", [58 x i8] zeroinitializer }, align 32
@qcaspi_spi_thread.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.48, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sync: not ready %u, turn off carrier and flush\0A\00", [48 x i8] zeroinitializer }, align 32
@qcaspi_spi_thread.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.49, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"===> rdbuf error!\0A\00", [45 x i8] zeroinitializer }, align 32
@qcaspi_spi_thread.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.50, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"===> wrbuf error!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SPI thread exit\0A\00", [47 x i8] zeroinitializer }, align 32
@qcaspi_qca7k_sync.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.54, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcaspi_qca7k_sync\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"sync: got CPU on, but signature was invalid, restart\0A\00", [42 x i8] zeroinitializer }, align 32
@qcaspi_qca7k_sync.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.55, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sync: got CPU on, but wrbuf not empty. reset!\0A\00", [49 x i8] zeroinitializer }, align 32
@qcaspi_qca7k_sync.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.56, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sync: got CPU on, now in sync\0A\00", [33 x i8] zeroinitializer }, align 32
@qcaspi_qca7k_sync.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.57, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sync: bad signature, restart\0A\00", [34 x i8] zeroinitializer }, align 32
@qcaspi_qca7k_sync.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.58, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sync: could not read signature to reset device, retry.\0A\00", [40 x i8] zeroinitializer }, align 32
@qcaspi_qca7k_sync.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.59, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sync: resetting device.\0A\00", [39 x i8] zeroinitializer }, align 32
@qcaspi_qca7k_sync.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.60, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sync: waiting for CPU on, count %u.\0A\00", [59 x i8] zeroinitializer }, align 32
@qcaspi_qca7k_sync.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.61, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sync: reset timeout, restarting process.\0A\00", [54 x i8] zeroinitializer }, align 32
@start_spi_intr_handling.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.5, ptr @.str.63, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"start_spi_intr_handling\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"interrupts: 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@qcaspi_receive.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.65, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcaspi_receive\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"out of RX resources\0A\00", [43 x i8] zeroinitializer }, align 32
@qcaspi_receive.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.66, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"qcaspi_receive: SPI_REG_RDBUF_BYTE_AVA: Value: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@qcaspi_receive.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.67, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"qcaspi_receive called without any data being available!\0A\00", [39 x i8] zeroinitializer }, align 32
@qcaspi_receive.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.68, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"available: %d, byte read: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qcaspi_receive.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.69, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no RX tail\0A\00", [20 x i8] zeroinitializer }, align 32
@qcaspi_receive.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.70, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid RX length\0A\00", [45 x i8] zeroinitializer }, align 32
@qcaspi_receive.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.65, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@end_spi_intr_handling.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.5, ptr @.str.72, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"end_spi_intr_handling\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"acking int: 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"queue was unexpectedly full!\0A\00", [34 x i8] zeroinitializer }, align 32
@qcaspi_netdev_xmit.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.5, ptr @.str.75, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcaspi_netdev_xmit\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Tx-ing packet: Size: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Transmit timeout at %ld, latency %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294966293, i64 4294966294, i64 4294966295]
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"qcaspi_clkspeed\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 56, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"qcaspi_burst_len\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 62, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"qcaspi_pluggable\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 68, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"wr_verify\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 74, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"qca_spi_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1024, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1039, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"qca_spi_id\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1018, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"qca_spi_of_match\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 881, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 897, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 902, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 913, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 920, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 927, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 934, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 939, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 948, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 962, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 974, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 985, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 993, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [18 x i8] c"qcaspi_netdev_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 848, i32 36 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 831, i32 29 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 684, i32 20 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 688, i32 19 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 696, i32 19 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 581, i32 28 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 591, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 598, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 624, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 632, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 653, i32 28 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 511, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 518, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 521, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 538, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 547, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 552, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 563, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 569, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 88, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 354, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 363, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 373, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 396, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 421, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 426, i32 5 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 101, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 738, i32 29 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 768, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.298 = private constant [43 x i8] c"../drivers/net/ethernet/qualcomm/qca_spi.c\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 798, i32 28 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_description387, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__UNIQUE_ID_qcaspi_burst_len356, ptr @__UNIQUE_ID_qcaspi_burst_lentype355, ptr @__UNIQUE_ID_qcaspi_clkspeed354, ptr @__UNIQUE_ID_qcaspi_clkspeedtype353, ptr @__UNIQUE_ID_qcaspi_pluggable358, ptr @__UNIQUE_ID_qcaspi_pluggabletype357, ptr @__UNIQUE_ID_version392, ptr @__UNIQUE_ID_wr_verify360, ptr @__UNIQUE_ID_wr_verifytype359, ptr @__exitcall_qca_spi_driver_exit, ptr @__initcall__kmod_qcaspi__386_1033_qca_spi_driver_init6, ptr @__modver_attr, ptr @__param_qcaspi_burst_len, ptr @__param_qcaspi_clkspeed, ptr @__param_qcaspi_pluggable, ptr @__param_wr_verify, ptr @qca_spi_driver_exit, ptr @qca_spi_probe._entry, ptr @qca_spi_probe._entry.12, ptr @qca_spi_probe._entry.15, ptr @qca_spi_probe._entry.18, ptr @qca_spi_probe._entry.21, ptr @qca_spi_probe._entry.25, ptr @qca_spi_probe._entry.28, ptr @qca_spi_probe._entry.31, ptr @qca_spi_probe._entry.34, ptr @qca_spi_probe._entry.37, ptr @qca_spi_probe._entry.9, ptr @qca_spi_probe._entry_ptr, ptr @qca_spi_probe._entry_ptr.11, ptr @qca_spi_probe._entry_ptr.14, ptr @qca_spi_probe._entry_ptr.17, ptr @qca_spi_probe._entry_ptr.20, ptr @qca_spi_probe._entry_ptr.24, ptr @qca_spi_probe._entry_ptr.27, ptr @qca_spi_probe._entry_ptr.30, ptr @qca_spi_probe._entry_ptr.33, ptr @qca_spi_probe._entry_ptr.36, ptr @qca_spi_probe._entry_ptr.39, ptr @qcaspi_clkspeed, ptr @qcaspi_burst_len, ptr @qcaspi_pluggable, ptr @wr_verify, ptr @qca_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qca_spi_id, ptr @qca_spi_of_match, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @qcaspi_netdev_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcaspi_clkspeed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcaspi_burst_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcaspi_pluggable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wr_verify to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_spi_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcaspi_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @qca_spi_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qca_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @qca_spi_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %signature = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %signature) #9
  %0 = ptrtoint ptr %signature to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %signature, align 2, !annotation !212
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i, null
  %conv = zext i1 %tobool.i to i8
  %3 = load i32, ptr @qcaspi_clkspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %. = select i1 %tobool6.not, i32 8000000, i32 %5
  store i32 %., ptr @qcaspi_clkspeed, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %6 = load i32, ptr @qcaspi_clkspeed, align 4
  %7 = add i32 %6, -16000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15000001, i32 %7)
  %8 = icmp ult i32 %7, -15000001
  br i1 %8, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef %6) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %9 = load i32, ptr @qcaspi_burst_len, align 4
  %10 = add i32 %9, -5001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5000, i32 %10)
  %11 = icmp ult i32 %10, -5000
  br i1 %11, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %9) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %12 = load i32, ptr @qcaspi_pluggable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %12) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end31
  %14 = load i32, ptr @wr_verify, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %do.end51, label %do.end56

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19, i32 noundef %14) #12
  br label %cleanup

do.end56:                                         ; preds = %if.end42
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef %6, i32 noundef %9, i32 noundef %12) #12
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %mode, align 8
  %17 = load i32, ptr @qcaspi_clkspeed, align 4
  %max_speed_hz58 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %18 = ptrtoint ptr %max_speed_hz58 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_speed_hz58, align 8
  %call59 = tail call i32 @spi_setup(ptr noundef %spi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end65, label %if.end67

do.end65:                                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.26) #12
  br label %cleanup

if.end67:                                         ; preds = %do.end56
  %call68 = tail call ptr @alloc_etherdev_mqs(i32 noundef 232, i32 noundef 1, i32 noundef 1) #9
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.end67.cleanup_crit_edge, label %if.end71

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  tail call fastcc void @qcaspi_netdev_setup(ptr noundef nonnull %call68)
  %parent = getelementptr inbounds %struct.net_device, ptr %call68, i32 0, i32 133, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spi, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call68, i32 2304
  %tobool75.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool75.not, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef nonnull %call68) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end81:                                         ; preds = %if.end71
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call68, ptr %add.ptr.i, align 8
  %spi_dev = getelementptr i8, ptr %call68, i32 2308
  %21 = ptrtoint ptr %spi_dev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spi, ptr %spi_dev, align 4
  %legacy_mode82 = getelementptr i8, ptr %call68, i32 2528
  %22 = ptrtoint ptr %legacy_mode82 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %legacy_mode82, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call68, ptr %driver_data.i.i, align 4
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %26 = load ptr, ptr %add.ptr.i, align 8
  %call86 = tail call i32 @of_get_ethdev_address(ptr noundef %25, ptr noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end81.if.end95_crit_edge, label %if.then88

if.end81.if.end95_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then88:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  tail call fastcc void @eth_hw_addr_random(ptr noundef %28)
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.32, ptr noundef %32) #12
  br label %if.end95

if.end95:                                         ; preds = %if.then88, %if.end81.if.end95_crit_edge
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  tail call void @netif_carrier_off(ptr noundef %34) #9
  %35 = load i32, ptr @qcaspi_pluggable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool97.not = icmp eq i32 %35, 0
  br i1 %tobool97.not, label %if.then98, label %if.end95.if.end111_crit_edge

if.end95.if.end111_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then98:                                        ; preds = %if.end95
  %call99 = call i32 @qcaspi_read_register(ptr noundef nonnull %add.ptr.i, i16 noundef zeroext 6656, ptr noundef nonnull %signature) #9
  %call100 = call i32 @qcaspi_read_register(ptr noundef nonnull %add.ptr.i, i16 noundef zeroext 6656, ptr noundef nonnull %signature) #9
  %36 = ptrtoint ptr %signature to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %signature, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %37)
  %cmp102.not = icmp eq i16 %37, -21931
  br i1 %cmp102.not, label %if.then98.if.end111_crit_edge, label %do.end107

if.then98.if.end111_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

do.end107:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %conv101 = zext i16 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.35, i32 noundef %conv101) #12
  call void @free_netdev(ptr noundef nonnull %call68) #9
  br label %cleanup

if.end111:                                        ; preds = %if.then98.if.end111_crit_edge, %if.end95.if.end111_crit_edge
  %call112 = call i32 @register_netdev(ptr noundef nonnull %call68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end119, label %do.end117

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.38, ptr noundef nonnull %call68) #12
  call void @free_netdev(ptr noundef nonnull %call68) #9
  br label %cleanup

if.end119:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  call void @qcaspi_init_device_debugfs(ptr noundef nonnull %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %do.end117, %do.end107, %if.then76, %if.end67.cleanup_crit_edge, %do.end65, %do.end51, %do.end40, %do.end29, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -22, %do.end29 ], [ -22, %do.end40 ], [ -22, %do.end51 ], [ -14, %do.end65 ], [ -14, %do.end117 ], [ 0, %if.end119 ], [ -14, %do.end107 ], [ -12, %if.then76 ], [ -22, %do.end ], [ -12, %if.end67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %signature) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_spi_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @qcaspi_remove_device_debugfs(ptr noundef %add.ptr.i) #9
  tail call void @unregister_netdev(ptr noundef %1) #9
  tail call void @free_netdev(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcaspi_netdev_setup(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @qcaspi_netdev_ops, ptr %netdev_ops, align 8
  tail call void @qcaspi_set_ethtool_ops(ptr noundef %dev) #9
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %1 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 100, ptr %watchdog_timeo, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags, align 16
  %and = and i64 %3, -2049
  store i64 %and, ptr %priv_flags, align 16
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %4 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %tx_queue_len, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %5 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 46, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %6 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1500, ptr %max_mtu, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %count = getelementptr i8, ptr %dev, i32 2362
  %7 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 232)
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 10, ptr %count, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #9
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #9
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcaspi_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcaspi_init_device_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcaspi_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcaspi_netdev_init(ptr noundef %dev) #2 align 64 {
kmalloc.exit:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1500, ptr %mtu, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %type, align 16
  %2 = load i32, ptr @qcaspi_clkspeed, align 4
  %clkspeed = getelementptr i8, ptr %dev, i32 2524
  %3 = ptrtoint ptr %clkspeed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %clkspeed, align 4
  %4 = load i32, ptr @qcaspi_burst_len, align 4
  %conv = trunc i32 %4 to i16
  %burst_len = getelementptr i8, ptr %dev, i32 2530
  %5 = ptrtoint ptr %burst_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %burst_len, align 2
  %spi_thread = getelementptr i8, ptr %dev, i32 2312
  %6 = ptrtoint ptr %spi_thread to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %spi_thread, align 8
  %buffer_size = getelementptr i8, ptr %dev, i32 2484
  %7 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6128, ptr %buffer_size, align 4
  %stats = getelementptr i8, ptr %dev, i32 2368
  %8 = call ptr @memset(ptr %stats, i32 0, i32 112)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 6128) #13
  %rx_buffer = getelementptr i8, ptr %dev, i32 2480
  %10 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %rx_buffer, align 8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %mtu8 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %mtu8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtu8, align 4
  %add.i.i = add i32 %14, 20
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add.i.i, i32 noundef 2592) #9
  %tobool.not.i.i33 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i33, label %if.then13, label %netdev_alloc_skb_ip_align.exit

netdev_alloc_skb_ip_align.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %rx_skb = getelementptr i8, ptr %dev, i32 2504
  %19 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %rx_skb, align 8
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_skb34 = getelementptr i8, ptr %dev, i32 2504
  %20 = ptrtoint ptr %rx_skb34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rx_skb34, align 8
  %21 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buffer, align 8
  tail call void @kfree(ptr noundef %22) #9
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %24, ptr noundef nonnull @.str.40) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %netdev_alloc_skb_ip_align.exit, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %if.then13 ], [ -105, %kmalloc.exit.cleanup_crit_edge ], [ 0, %netdev_alloc_skb_ip_align.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcaspi_netdev_uninit(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buffer = getelementptr i8, ptr %dev, i32 2480
  %0 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buffer, align 8
  tail call void @kfree(ptr noundef %1) #9
  %buffer_size = getelementptr i8, ptr %dev, i32 2484
  %2 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buffer_size, align 4
  %rx_skb = getelementptr i8, ptr %dev, i32 2504
  %3 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_skb, align 8
  tail call void @consume_skb(ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcaspi_netdev_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %intr_req = getelementptr i8, ptr %dev, i32 2508
  %0 = ptrtoint ptr %intr_req to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %intr_req, align 4
  %intr_svc = getelementptr i8, ptr %dev, i32 2512
  %1 = ptrtoint ptr %intr_svc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %intr_svc, align 8
  %sync = getelementptr i8, ptr %dev, i32 2488
  %2 = ptrtoint ptr %sync to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sync, align 8
  %frm_handle = getelementptr i8, ptr %dev, i32 2492
  %init.i = getelementptr i8, ptr %dev, i32 2496
  %3 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768, ptr %init.i, align 4
  %4 = ptrtoint ptr %frm_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32768, ptr %frm_handle, align 4
  %call1 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @qcaspi_spi_thread, ptr noundef nonnull %add.ptr.i, i32 noundef -1, ptr noundef nonnull @.str.41, ptr noundef %dev) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %spi_thread44 = getelementptr i8, ptr %dev, i32 2312
  %5 = ptrtoint ptr %spi_thread44 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %spi_thread44, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1) #12
  %6 = ptrtoint ptr %spi_thread44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi_thread44, align 8
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call4 = tail call i32 @wake_up_process(ptr noundef %call1) #9
  %spi_thread = getelementptr i8, ptr %dev, i32 2312
  %9 = ptrtoint ptr %spi_thread to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %spi_thread, align 8
  %spi_dev = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_dev, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @qcaspi_intr_handler, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef nonnull %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.then16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi_dev, align 4
  %irq18 = getelementptr inbounds %struct.spi_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %irq18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq18, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef %17, i32 noundef %call.i) #12
  %18 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi_thread, align 8
  %call20 = tail call i32 @kthread_stop(ptr noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end11.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then8 ], [ %call.i, %if.then16 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcaspi_netdev_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %2 = load i32, ptr @wr_verify, align 4
  %call1 = tail call i32 @qcaspi_write_register(ptr noundef %add.ptr.i, i16 noundef zeroext 3328, i16 noundef zeroext 0, i32 noundef %2) #9
  %spi_dev = getelementptr i8, ptr %dev, i32 2308
  %3 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi_dev, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %add.ptr.i) #9
  %spi_thread = getelementptr i8, ptr %dev, i32 2312
  %7 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_thread, align 8
  %call3 = tail call i32 @kthread_stop(ptr noundef %8) #9
  %9 = ptrtoint ptr %spi_thread to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %spi_thread, align 8
  tail call fastcc void @qcaspi_flush_tx_ring(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcaspi_netdev_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %1)
  %cmp = icmp ult i32 %1, 60
  %2 = trunc i32 %1 to i8
  %conv = sub i8 60, %2
  %pad_len.0 = select i1 %cmp, i8 %conv, i8 0
  %txr = getelementptr i8, ptr %dev, i32 2316
  %tail = getelementptr i8, ptr %dev, i32 2358
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tail, align 2
  %idxprom = zext i16 %4 to i32
  %arrayidx = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.73) #12
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %12, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %ring_full = getelementptr i8, ptr %dev, i32 2440
  %13 = ptrtoint ptr %ring_full to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ring_full, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %ring_full, align 8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp8 = icmp ult i32 %sub.ptr.sub.i, 8
  br i1 %cmp8, label %if.end6.if.then14_crit_edge, label %lor.lhs.false

if.end6.if.then14_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end6
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

skb_tailroom.exit:                                ; preds = %lor.lhs.false
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i131 = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i132 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i133 = sub i32 %sub.ptr.lhs.cast.i131, %sub.ptr.rhs.cast.i132
  %conv11 = zext i8 %pad_len.0 to i32
  %add = add nuw nsw i32 %conv11, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i133, i32 %add)
  %cmp12 = icmp slt i32 %sub.ptr.sub.i133, %add
  br i1 %cmp12, label %skb_tailroom.exit.if.then14_crit_edge, label %skb_tailroom.exit.if.end23_crit_edge

skb_tailroom.exit.if.end23_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

skb_tailroom.exit.if.then14_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then14:                                        ; preds = %skb_tailroom.exit.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge, %if.end6.if.then14_crit_edge
  %conv15 = zext i8 %pad_len.0 to i32
  %add16 = add nuw nsw i32 %conv15, 2
  %call17 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 8, i32 noundef %add16, i32 noundef 2592) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %out_of_mem = getelementptr i8, ptr %dev, i32 2424
  %25 = ptrtoint ptr %out_of_mem to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %out_of_mem, align 8
  %inc21 = add i64 %26, 1
  store i64 %inc21, ptr %out_of_mem, align 8
  br label %cleanup

if.end22:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %skb_tailroom.exit.if.end23_crit_edge
  %conv25.pre-phi = phi i32 [ %conv15, %if.end22 ], [ %conv11, %skb_tailroom.exit.if.end23_crit_edge ]
  %skb.addr.0 = phi ptr [ %call17, %if.end22 ], [ %skb, %skb_tailroom.exit.if.end23_crit_edge ]
  %len24 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %27 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len24, align 4
  %add26 = add i32 %28, %conv25.pre-phi
  %call27 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 8) #9
  %conv28 = trunc i32 %add26 to i16
  %call29 = tail call zeroext i16 @qcafrm_create_header(ptr noundef %call27, i16 noundef zeroext %conv28) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pad_len.0)
  %tobool30.not = icmp eq i8 %pad_len.0, 0
  br i1 %tobool30.not, label %if.end23.if.end34_crit_edge, label %if.then31

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef %conv25.pre-phi) #9
  %29 = call ptr @memset(ptr %call.i, i32 0, i32 %conv25.pre-phi)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end23.if.end34_crit_edge
  %call35 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 2) #9
  %call36 = tail call zeroext i16 @qcafrm_create_footer(ptr noundef %call35) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_netdev_xmit.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_netdev_xmit, %if.then42)) #9
          to label %do.end47 [label %if.then42], !srcloc !213

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %32 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_netdev_xmit.__UNIQUE_ID_ddebug385, ptr noundef %31, ptr noundef nonnull @.str.75, i32 noundef %33) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %if.end34
  %34 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len24, align 4
  %size = getelementptr i8, ptr %dev, i32 2360
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %size, align 4
  %38 = trunc i32 %35 to i16
  %39 = add i16 %38, 4
  %conv53 = add i16 %39, %37
  store i16 %conv53, ptr %size, align 4
  %40 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tail, align 2
  %conv56 = zext i16 %41 to i32
  %add57 = add i16 %41, 1
  %count = getelementptr i8, ptr %dev, i32 2362
  %42 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add57, i16 %43)
  %cmp62.not = icmp ult i16 %add57, %43
  %spec.store.select = select i1 %cmp62.not, i16 %add57, i16 0
  %arrayidx71 = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %conv56
  %44 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %skb.addr.0, ptr %arrayidx71, align 4
  %45 = ptrtoint ptr %tail to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %spec.store.select, ptr %tail, align 2
  %idxprom.i = zext i16 %spec.store.select to i32
  %arrayidx.i = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %qcaspi_tx_ring_has_space.exit, label %do.end47.if.then77_crit_edge

do.end47.if.then77_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

qcaspi_tx_ring_has_space.exit:                    ; preds = %do.end47
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1644, i16 %49)
  %cmp.i = icmp ugt i16 %49, 1644
  br i1 %cmp.i, label %qcaspi_tx_ring_has_space.exit.if.then77_crit_edge, label %qcaspi_tx_ring_has_space.exit.if.end82_crit_edge

qcaspi_tx_ring_has_space.exit.if.end82_crit_edge: ; preds = %qcaspi_tx_ring_has_space.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

qcaspi_tx_ring_has_space.exit.if.then77_crit_edge: ; preds = %qcaspi_tx_ring_has_space.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

if.then77:                                        ; preds = %qcaspi_tx_ring_has_space.exit.if.then77_crit_edge, %do.end47.if.then77_crit_edge
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  %_tx.i.i137 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 103
  %52 = ptrtoint ptr %_tx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %_tx.i.i137, align 128
  %state.i.i138 = getelementptr inbounds %struct.netdev_queue, ptr %53, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i138) #9
  %ring_full80 = getelementptr i8, ptr %dev, i32 2440
  %54 = ptrtoint ptr %ring_full80 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ring_full80, align 8
  %inc81 = add i64 %55, 1
  store i64 %inc81, ptr %ring_full80, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %qcaspi_tx_ring_has_space.exit.if.end82_crit_edge
  %_tx.i.i139 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %56 = ptrtoint ptr %_tx.i.i139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i139, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 12
  %59 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp.not.i.i = icmp eq i32 %60, %58
  br i1 %cmp.not.i.i, label %if.end82.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end82.netif_trans_update.exit_crit_edge:       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %58, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end82.netif_trans_update.exit_crit_edge
  %spi_thread = getelementptr i8, ptr %dev, i32 2312
  %62 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spi_thread, align 8
  %tobool83.not = icmp eq ptr %63, null
  br i1 %tobool83.not, label %netif_trans_update.exit.cleanup_crit_edge, label %if.then84

netif_trans_update.exit.cleanup_crit_edge:        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then84:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call86 = tail call i32 @wake_up_process(ptr noundef nonnull %63) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %netif_trans_update.exit.cleanup_crit_edge, %if.then19, %if.then4
  %retval.0 = phi i32 [ 16, %if.then4 ], [ 16, %if.then19 ], [ 0, %if.then84 ], [ 0, %netif_trans_update.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcaspi_netdev_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = load volatile i32, ptr @jiffies, align 128
  %call1 = tail call i32 @dev_trans_start(ptr noundef %dev) #9
  %sub = sub i32 %3, %call1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef %2, i32 noundef %sub) #12
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_errors, align 4
  %sync = getelementptr i8, ptr %dev, i32 2488
  %8 = ptrtoint ptr %sync to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %sync, align 8
  %spi_thread = getelementptr i8, ptr %dev, i32 2312
  %9 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi_thread, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @wake_up_process(ptr noundef nonnull %10) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcaspi_spi_thread(ptr noundef %data) #2 align 64 {
entry:
  %cmd.i.i.i = alloca i16, align 2
  %msg.i57.i.i = alloca %struct.spi_message, align 4
  %transfer.i58.i.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i44.i.i = alloca %struct.spi_message, align 4
  %transfer.i45.i.i = alloca %struct.spi_transfer, align 4
  %tx_data.i.i.i = alloca i16, align 2
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %transfer.i.i.i = alloca %struct.spi_transfer, align 4
  %available.i = alloca i16, align 2
  %intr_cause = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %intr_cause) #9
  %0 = ptrtoint ptr %intr_cause to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %intr_cause, align 2
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.44) #12
  %call450 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call450, label %entry.__here352_crit_edge, label %__here.lr.ph

entry.__here352_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here352

__here.lr.ph:                                     ; preds = %entry
  %intr_req = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 10
  %intr_svc = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 11
  %txr = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 3
  %head = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 3, i32 1
  %sync = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 7
  %device_reset = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 4, i32 1
  %read_buf_err = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 4, i32 5
  %write_buf_err = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 4, i32 6
  %legacy_mode.i.i = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 15
  %3 = getelementptr inbounds i8, ptr %transfer.i.i.i, i32 4
  %4 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %len.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 2
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18, i32 1
  %spi_dev.i.i.i = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 1
  %status.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 7
  %burst_len.i.i = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 16
  %5 = getelementptr inbounds i8, ptr %transfer.i45.i.i, i32 4
  %6 = getelementptr inbounds i8, ptr %msg.i44.i.i, i32 8
  %prev.i.i.i.i46.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i44.i.i, i32 0, i32 1
  %resources.i.i.i47.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i44.i.i, i32 0, i32 10
  %prev.i2.i.i.i48.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i44.i.i, i32 0, i32 10, i32 1
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i45.i.i, i32 0, i32 2
  %transfer_list.i.i49.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i45.i.i, i32 0, i32 18
  %prev3.i.i.i.i51.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i45.i.i, i32 0, i32 18, i32 1
  %actual_length.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i44.i.i, i32 0, i32 6
  %7 = getelementptr inbounds i8, ptr %transfer.i58.i.i, i32 4
  %8 = getelementptr inbounds i8, ptr %msg.i57.i.i, i32 8
  %prev.i.i.i.i59.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i57.i.i, i32 0, i32 1
  %resources.i.i.i60.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i57.i.i, i32 0, i32 10
  %prev.i2.i.i.i61.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i57.i.i, i32 0, i32 10, i32 1
  %len2.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i58.i.i, i32 0, i32 2
  %arrayidx3.i.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i58.i.i, i32 0, i32 1
  %len6.i.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i58.i.i, i32 0, i32 1, i32 2
  %transfer_list.i.i62.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i58.i.i, i32 0, i32 18
  %prev3.i.i.i.i64.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i58.i.i, i32 0, i32 18, i32 1
  %transfer_list.i15.i.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i58.i.i, i32 0, i32 1, i32 18
  %prev3.i.i.i18.i.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i58.i.i, i32 0, i32 1, i32 18, i32 1
  %actual_length.i70.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i57.i.i, i32 0, i32 6
  %size.i = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 3, i32 3
  %count.i = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 3, i32 4
  %write_err.i = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 4, i32 4
  %write_buf_miss.i = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 4, i32 8
  %buf_avail_err.i = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 4, i32 12
  br label %__here

__here:                                           ; preds = %while.cond.backedge.__here_crit_edge, %__here.lr.ph
  %9 = call i32 @llvm.read_register.i32(metadata !202) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 212
  %13 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 ptrtoint (ptr blockaddress(@qcaspi_spi_thread, %__here) to i32), ptr %task_state_change, align 4
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %14, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !214
  %16 = ptrtoint ptr %intr_req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intr_req, align 4
  %18 = ptrtoint ptr %intr_svc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intr_svc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp eq i32 %17, %19
  br i1 %cmp, label %land.lhs.true, label %__here.__here120_crit_edge

__here.__here120_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here120

land.lhs.true:                                    ; preds = %__here
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %head, align 4
  %idxprom = zext i16 %21 to i32
  %arrayidx = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %cmp63 = icmp eq ptr %23, null
  br i1 %cmp63, label %land.lhs.true64, label %land.lhs.true.__here120_crit_edge

land.lhs.true.__here120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here120

land.lhs.true64:                                  ; preds = %land.lhs.true
  %24 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp65 = icmp eq i8 %25, 2
  br i1 %cmp65, label %if.then67, label %land.lhs.true64.__here120_crit_edge

land.lhs.true64.__here120_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here120

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  call void @schedule() #9
  br label %__here120

__here120:                                        ; preds = %if.then67, %land.lhs.true64.__here120_crit_edge, %land.lhs.true.__here120_crit_edge, %__here.__here120_crit_edge
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %task_state_change124 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change124 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@qcaspi_spi_thread, %__here120) to i32), ptr %task_state_change124, align 4
  %29 = load ptr, ptr %task, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %29, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_spi_thread.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_spi_thread, %if.then161)) #9
          to label %do.end175 [label %if.then161], !srcloc !213

if.then161:                                       ; preds = %__here120
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 8
  %33 = ptrtoint ptr %intr_req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %intr_req, align 4
  %35 = ptrtoint ptr %intr_svc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %intr_svc, align 8
  %sub = sub i32 %34, %36
  %37 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %head, align 4
  %idxprom169 = zext i16 %38 to i32
  %arrayidx170 = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom169
  %39 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx170, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_spi_thread.__UNIQUE_ID_ddebug380, ptr noundef %32, ptr noundef nonnull @.str.47, i32 noundef %sub, ptr noundef %40) #9
  br label %do.end175

do.end175:                                        ; preds = %if.then161, %__here120
  call fastcc void @qcaspi_qca7k_sync(ptr noundef %data, i32 noundef 0)
  %41 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp178.not = icmp eq i8 %42, 2
  br i1 %cmp178.not, label %do.end175.if.end205_crit_edge, label %do.body182

do.end175.if.end205_crit_edge:                    ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

do.body182:                                       ; preds = %do.end175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_spi_thread.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_spi_thread, %if.then194)) #9
          to label %do.end202 [label %if.then194], !srcloc !213

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 8
  %45 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sync, align 8
  %conv197 = zext i8 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_spi_thread.__UNIQUE_ID_ddebug381, ptr noundef %44, ptr noundef nonnull @.str.48, i32 noundef %conv197) #9
  br label %do.end202

do.end202:                                        ; preds = %if.then194, %do.body182
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 8
  call void @netif_carrier_off(ptr noundef %52) #9
  call fastcc void @qcaspi_flush_tx_ring(ptr noundef %data)
  call void @msleep(i32 noundef 1000) #9
  br label %if.end205

if.end205:                                        ; preds = %do.end202, %do.end175.if.end205_crit_edge
  %53 = ptrtoint ptr %intr_svc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %intr_svc, align 8
  %55 = ptrtoint ptr %intr_req to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %intr_req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp208.not = icmp eq i32 %54, %56
  br i1 %cmp208.not, label %if.end205.if.end293_crit_edge, label %if.then210

if.end205.if.end293_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293

if.then210:                                       ; preds = %if.end205
  %57 = ptrtoint ptr %intr_svc to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %intr_svc, align 8
  %58 = ptrtoint ptr %intr_cause to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %intr_cause, align 2
  %59 = load i32, ptr @wr_verify, align 4
  %call.i = call i32 @qcaspi_write_register(ptr noundef %data, i16 noundef zeroext 3328, i16 noundef zeroext 0, i32 noundef %59) #9
  %call1.i = call i32 @qcaspi_read_register(ptr noundef %data, i16 noundef zeroext 3072, ptr noundef nonnull %intr_cause) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_spi_intr_handling.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_spi_thread, %if.then.i)) #9
          to label %start_spi_intr_handling.exit [label %if.then.i], !srcloc !213

if.then.i:                                        ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 8
  %62 = ptrtoint ptr %intr_cause to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %intr_cause, align 2
  %conv.i = zext i16 %63 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @start_spi_intr_handling.__UNIQUE_ID_ddebug361, ptr noundef %61, ptr noundef nonnull @.str.63, i32 noundef %conv.i) #9
  br label %start_spi_intr_handling.exit

start_spi_intr_handling.exit:                     ; preds = %if.then.i, %if.then210
  %64 = ptrtoint ptr %intr_cause to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %intr_cause, align 2
  %66 = and i16 %65, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool214.not = icmp eq i16 %66, 0
  br i1 %tobool214.not, label %start_spi_intr_handling.exit.if.end224_crit_edge, label %if.then215

start_spi_intr_handling.exit.if.end224_crit_edge: ; preds = %start_spi_intr_handling.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224

if.then215:                                       ; preds = %start_spi_intr_handling.exit
  call fastcc void @qcaspi_qca7k_sync(ptr noundef %data, i32 noundef 1)
  %67 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp218.not = icmp eq i8 %68, 2
  br i1 %cmp218.not, label %if.end221, label %if.then215.while.cond.backedge_crit_edge

if.then215.while.cond.backedge_crit_edge:         ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end221:                                        ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %device_reset to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %device_reset, align 8
  %inc = add i64 %70, 1
  store i64 %inc, ptr %device_reset, align 8
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 8
  %_tx.i.i437 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 103
  %73 = ptrtoint ptr %_tx.i.i437 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %_tx.i.i437, align 128
  call void @netif_tx_wake_queue(ptr noundef %74) #9
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 8
  call void @netif_carrier_on(ptr noundef %76) #9
  br label %if.end224

if.end224:                                        ; preds = %if.end221, %start_spi_intr_handling.exit.if.end224_crit_edge
  %77 = ptrtoint ptr %intr_cause to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %intr_cause, align 2
  %conv225 = zext i16 %78 to i32
  %and226 = and i32 %conv225, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %if.end252, label %do.body230

do.body230:                                       ; preds = %if.end224
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_spi_thread.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_spi_thread, %if.then242)) #9
          to label %do.end248 [label %if.then242], !srcloc !213

if.then242:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_spi_thread.__UNIQUE_ID_ddebug382, ptr noundef %80, ptr noundef nonnull @.str.49) #9
  br label %do.end248

do.end248:                                        ; preds = %if.then242, %do.body230
  %81 = ptrtoint ptr %read_buf_err to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %read_buf_err, align 8
  %inc250 = add i64 %82, 1
  store i64 %inc250, ptr %read_buf_err, align 8
  %83 = ptrtoint ptr %sync to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %sync, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %qcaspi_transmit.exit, %if.end293.while.cond.backedge_crit_edge, %do.end276, %do.end248, %if.then215.while.cond.backedge_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #9
  br i1 %call, label %while.cond.backedge.__here352_crit_edge, label %while.cond.backedge.__here_crit_edge

while.cond.backedge.__here_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

while.cond.backedge.__here352_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here352

if.end252:                                        ; preds = %if.end224
  %and254 = and i32 %conv225, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %if.end280, label %do.body258

do.body258:                                       ; preds = %if.end252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_spi_thread.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_spi_thread, %if.then270)) #9
          to label %do.end276 [label %if.then270], !srcloc !213

if.then270:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_spi_thread.__UNIQUE_ID_ddebug383, ptr noundef %85, ptr noundef nonnull @.str.50) #9
  br label %do.end276

do.end276:                                        ; preds = %if.then270, %do.body258
  %86 = ptrtoint ptr %write_buf_err to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %write_buf_err, align 8
  %inc278 = add i64 %87, 1
  store i64 %inc278, ptr %write_buf_err, align 8
  %88 = ptrtoint ptr %sync to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %sync, align 8
  br label %while.cond.backedge

if.end280:                                        ; preds = %if.end252
  %89 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %90)
  %cmp283 = icmp ne i8 %90, 2
  %and287 = and i32 %conv225, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and287)
  %tobool288.not = icmp eq i32 %and287, 0
  %or.cond = select i1 %cmp283, i1 true, i1 %tobool288.not
  br i1 %or.cond, label %if.end280.if.end292_crit_edge, label %if.then289

if.end280.if.end292_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end292

if.then289:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @qcaspi_receive(ptr noundef %data)
  br label %if.end292

if.end292:                                        ; preds = %if.then289, %if.end280.if.end292_crit_edge
  %91 = ptrtoint ptr %intr_cause to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %intr_cause, align 2
  %call.i438 = call i32 @qcaspi_write_register(ptr noundef %data, i16 noundef zeroext 3072, i16 noundef zeroext %92, i32 noundef 0) #9
  %93 = load i32, ptr @wr_verify, align 4
  %call1.i439 = call i32 @qcaspi_write_register(ptr noundef %data, i16 noundef zeroext 3328, i16 noundef zeroext 71, i32 noundef %93) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @end_spi_intr_handling.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_spi_thread, %if.then.i441)) #9
          to label %if.end293 [label %if.then.i441], !srcloc !213

if.then.i441:                                     ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 8
  %conv.i440 = zext i16 %92 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @end_spi_intr_handling.__UNIQUE_ID_ddebug362, ptr noundef %95, ptr noundef nonnull @.str.72, i32 noundef %conv.i440) #9
  br label %if.end293

if.end293:                                        ; preds = %if.then.i441, %if.end292, %if.end205.if.end293_crit_edge
  %96 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %97)
  %cmp296 = icmp eq i8 %97, 2
  br i1 %cmp296, label %if.then298, label %if.end293.while.cond.backedge_crit_edge

if.end293.while.cond.backedge_crit_edge:          ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then298:                                       ; preds = %if.end293
  %98 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %available.i) #9
  %100 = ptrtoint ptr %available.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %available.i, align 2
  %101 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %head, align 4
  %idxprom.i = zext i16 %102 to i32
  %arrayidx.i = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom.i
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %104, null
  br i1 %cmp.i, label %if.then298.qcaspi_transmit.exit_crit_edge, label %if.end.i

if.then298.qcaspi_transmit.exit_crit_edge:        ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_transmit.exit

if.end.i:                                         ; preds = %if.then298
  %call.i442 = call i32 @qcaspi_read_register(ptr noundef %data, i16 noundef zeroext 512, ptr noundef nonnull %available.i) #9
  %105 = ptrtoint ptr %available.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %available.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3163, i16 %106)
  %cmp2.i = icmp ugt i16 %106, 3163
  br i1 %cmp2.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %while.cond.preheader.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %107 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %head, align 4
  %idxprom116.i = zext i16 %108 to i32
  %arrayidx127.i = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom116.i
  %109 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx127.i, align 4
  %tobool.not8.i = icmp eq ptr %110, null
  br i1 %tobool.not8.i, label %while.cond.preheader.i.qcaspi_transmit.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.qcaspi_transmit.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_transmit.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 36, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end91.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %111 = phi ptr [ %110, %while.body.lr.ph.i ], [ %223, %if.end91.i.while.body.i_crit_edge ]
  %packets.09.i = phi i16 [ 0, %while.body.lr.ph.i ], [ %inc44.i, %if.end91.i.while.body.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len.i, align 4
  %add.i = add i32 %113, 4
  %114 = ptrtoint ptr %available.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %available.i, align 2
  %conv19.i = zext i16 %115 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv19.i)
  %cmp20.i = icmp ugt i32 %add.i, %conv19.i
  br i1 %cmp20.i, label %if.then22.i, label %if.end30.i

if.then22.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %packets.09.i)
  %cmp24.i = icmp eq i16 %packets.09.i, 0
  br i1 %cmp24.i, label %if.then22.i.cleanup.sink.split.i_crit_edge, label %if.then22.i.qcaspi_transmit.exit_crit_edge

if.then22.i.qcaspi_transmit.exit_crit_edge:       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_transmit.exit

if.then22.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end30.i:                                       ; preds = %while.body.i
  %conv.i.i = trunc i32 %113 to i16
  %116 = load i32, ptr @wr_verify, align 4
  %call.i.i = call i32 @qcaspi_write_register(ptr noundef %data, i16 noundef zeroext 256, i16 noundef zeroext %conv.i.i, i32 noundef %116) #9
  %117 = ptrtoint ptr %legacy_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %legacy_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i.i = icmp eq i8 %118, 0
  br i1 %tobool.not.i.i, label %if.end30.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end30.i.if.end.i.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end30.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_data.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i.i) #9
  %119 = call ptr @memset(ptr %3, i32 0, i32 92)
  %120 = call ptr @memset(ptr %4, i32 0, i32 40)
  %121 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %122 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %123 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %124 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %125 = ptrtoint ptr %tx_data.i.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %tx_data.i.i.i, align 2
  %126 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2, ptr %len.i.i.i, align 4
  %127 = ptrtoint ptr %transfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %tx_data.i.i.i, ptr %transfer.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i.i.spi_message_add_tail.exit.i.i.i_crit_edge

if.then.i.i.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %129 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %130 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %131 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.spi_message_add_tail.exit.i.i.i_crit_edge
  %132 = ptrtoint ptr %spi_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %spi_dev.i.i.i, align 4
  %call.i.i.i = call i32 @spi_sync(ptr noundef %133, ptr noundef nonnull %msg.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %spi_message_add_tail.exit.i.i.i.if.then2.i.i.i_crit_edge

spi_message_add_tail.exit.i.i.i.if.then2.i.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i.i

if.end.i.i.i:                                     ; preds = %spi_message_add_tail.exit.i.i.i
  %134 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool1.not.i.i.i = icmp eq i32 %135, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.qcaspi_tx_cmd.exit.i.i_crit_edge, label %if.end.i.i.i.if.then2.i.i.i_crit_edge

if.end.i.i.i.if.then2.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i.i

if.end.i.i.i.qcaspi_tx_cmd.exit.i.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_tx_cmd.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i.if.then2.i.i.i_crit_edge, %spi_message_add_tail.exit.i.i.i.if.then2.i.i.i_crit_edge
  call void @qcaspi_spi_error(ptr noundef %data) #9
  br label %qcaspi_tx_cmd.exit.i.i

qcaspi_tx_cmd.exit.i.i:                           ; preds = %if.then2.i.i.i, %if.end.i.i.i.qcaspi_tx_cmd.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_data.i.i.i) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %qcaspi_tx_cmd.exit.i.i, %if.end30.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool3.not75.i.i = icmp eq i32 %113, 0
  br i1 %tobool3.not75.i.i, label %if.end.i.i.if.end43.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.i.if.end43.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %111, i32 0, i32 19
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end21.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %len.078.i.i = phi i32 [ %113, %while.body.lr.ph.i.i ], [ %sub.i.i, %if.end21.i.i.while.body.i.i_crit_edge ]
  %offset.076.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add.i.i, %if.end21.i.i.while.body.i.i_crit_edge ]
  %136 = ptrtoint ptr %burst_len.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %burst_len.i.i, align 2
  %conv4.i.i = zext i16 %137 to i32
  %138 = call i32 @llvm.umin.i32(i32 %len.078.i.i, i32 %conv4.i.i) #9
  %139 = ptrtoint ptr %legacy_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %legacy_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool11.not.i.i = icmp eq i8 %140, 0
  %141 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %142, i32 %offset.076.i.i
  br i1 %tobool11.not.i.i, label %if.else.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i44.i.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i45.i.i) #9
  %143 = call ptr @memset(ptr %5, i32 0, i32 92)
  %144 = call ptr @memset(ptr %6, i32 0, i32 40)
  %145 = ptrtoint ptr %msg.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %msg.i44.i.i, ptr %msg.i44.i.i, align 4
  %146 = ptrtoint ptr %prev.i.i.i.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %msg.i44.i.i, ptr %prev.i.i.i.i46.i.i, align 4
  %147 = ptrtoint ptr %resources.i.i.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %resources.i.i.i47.i.i, ptr %resources.i.i.i47.i.i, align 4
  %148 = ptrtoint ptr %prev.i2.i.i.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %resources.i.i.i47.i.i, ptr %prev.i2.i.i.i48.i.i, align 4
  %149 = ptrtoint ptr %transfer.i45.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr15.i.i, ptr %transfer.i45.i.i, align 4
  %150 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %138, ptr %len1.i.i.i, align 4
  %call.i.i.i.i50.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i49.i.i, ptr noundef nonnull %msg.i44.i.i, ptr noundef nonnull %msg.i44.i.i) #9
  br i1 %call.i.i.i.i50.i.i, label %if.end.i.i.i.i52.i.i, label %if.then12.i.i.spi_message_add_tail.exit.i56.i.i_crit_edge

if.then12.i.i.spi_message_add_tail.exit.i56.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i56.i.i

if.end.i.i.i.i52.i.i:                             ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %prev.i.i.i.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %transfer_list.i.i49.i.i, ptr %prev.i.i.i.i46.i.i, align 4
  %152 = ptrtoint ptr %transfer_list.i.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %msg.i44.i.i, ptr %transfer_list.i.i49.i.i, align 4
  %153 = ptrtoint ptr %prev3.i.i.i.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %msg.i44.i.i, ptr %prev3.i.i.i.i51.i.i, align 4
  %154 = ptrtoint ptr %msg.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %transfer_list.i.i49.i.i, ptr %msg.i44.i.i, align 4
  br label %spi_message_add_tail.exit.i56.i.i

spi_message_add_tail.exit.i56.i.i:                ; preds = %if.end.i.i.i.i52.i.i, %if.then12.i.i.spi_message_add_tail.exit.i56.i.i_crit_edge
  %155 = ptrtoint ptr %spi_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %spi_dev.i.i.i, align 4
  %call.i54.i.i = call i32 @spi_sync(ptr noundef %156, ptr noundef nonnull %msg.i44.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.i)
  %tobool.not.i55.i.i = icmp eq i32 %call.i54.i.i, 0
  br i1 %tobool.not.i55.i.i, label %lor.lhs.false.i.i.i, label %spi_message_add_tail.exit.i56.i.i.if.then.i.i.i_crit_edge

spi_message_add_tail.exit.i56.i.i.if.then.i.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %spi_message_add_tail.exit.i56.i.i
  %157 = ptrtoint ptr %actual_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %actual_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %138)
  %cmp.not.i.i.i = icmp eq i32 %158, %138
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i.qcaspi_write_legacy.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false.i.i.i.qcaspi_write_legacy.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_write_legacy.exit.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %spi_message_add_tail.exit.i56.i.i.if.then.i.i.i_crit_edge
  call void @qcaspi_spi_error(ptr noundef %data) #9
  br label %qcaspi_write_legacy.exit.i.i

qcaspi_write_legacy.exit.i.i:                     ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.qcaspi_write_legacy.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.then.i.i.i ], [ %138, %lor.lhs.false.i.i.i.qcaspi_write_legacy.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i45.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i44.i.i) #9
  br label %if.end17.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i57.i.i) #9
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer.i58.i.i) #9
  %159 = call ptr @memset(ptr %7, i32 0, i32 188)
  %160 = call ptr @memset(ptr %8, i32 0, i32 40)
  %161 = ptrtoint ptr %msg.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %msg.i57.i.i, ptr %msg.i57.i.i, align 4
  %162 = ptrtoint ptr %prev.i.i.i.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %msg.i57.i.i, ptr %prev.i.i.i.i59.i.i, align 4
  %163 = ptrtoint ptr %resources.i.i.i60.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %resources.i.i.i60.i.i, ptr %resources.i.i.i60.i.i, align 4
  %164 = ptrtoint ptr %prev.i2.i.i.i61.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %resources.i.i.i60.i.i, ptr %prev.i2.i.i.i61.i.i, align 4
  %165 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %cmd.i.i.i, align 2
  %166 = ptrtoint ptr %transfer.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %cmd.i.i.i, ptr %transfer.i58.i.i, align 4
  %167 = ptrtoint ptr %len2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 2, ptr %len2.i.i.i, align 4
  %168 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %add.ptr15.i.i, ptr %arrayidx3.i.i.i, align 4
  %169 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %138, ptr %len6.i.i.i, align 4
  %call.i.i.i.i63.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i62.i.i, ptr noundef nonnull %msg.i57.i.i, ptr noundef nonnull %msg.i57.i.i) #9
  br i1 %call.i.i.i.i63.i.i, label %if.end.i.i.i.i65.i.i, label %if.else.i.i.spi_message_add_tail.exit.i66.i.i_crit_edge

if.else.i.i.spi_message_add_tail.exit.i66.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i66.i.i

if.end.i.i.i.i65.i.i:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %prev.i.i.i.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %transfer_list.i.i62.i.i, ptr %prev.i.i.i.i59.i.i, align 4
  %171 = ptrtoint ptr %transfer_list.i.i62.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %msg.i57.i.i, ptr %transfer_list.i.i62.i.i, align 4
  %172 = ptrtoint ptr %prev3.i.i.i.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %msg.i57.i.i, ptr %prev3.i.i.i.i64.i.i, align 4
  %173 = ptrtoint ptr %msg.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %transfer_list.i.i62.i.i, ptr %msg.i57.i.i, align 4
  br label %spi_message_add_tail.exit.i66.i.i

spi_message_add_tail.exit.i66.i.i:                ; preds = %if.end.i.i.i.i65.i.i, %if.else.i.i.spi_message_add_tail.exit.i66.i.i_crit_edge
  %174 = ptrtoint ptr %prev.i.i.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %prev.i.i.i.i59.i.i, align 4
  %call.i.i.i17.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i15.i.i.i, ptr noundef %175, ptr noundef nonnull %msg.i57.i.i) #9
  br i1 %call.i.i.i17.i.i.i, label %if.end.i.i.i19.i.i.i, label %spi_message_add_tail.exit.i66.i.i.spi_message_add_tail.exit20.i.i.i_crit_edge

spi_message_add_tail.exit.i66.i.i.spi_message_add_tail.exit20.i.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit20.i.i.i

if.end.i.i.i19.i.i.i:                             ; preds = %spi_message_add_tail.exit.i66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %176 = ptrtoint ptr %prev.i.i.i.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %transfer_list.i15.i.i.i, ptr %prev.i.i.i.i59.i.i, align 4
  %177 = ptrtoint ptr %transfer_list.i15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %msg.i57.i.i, ptr %transfer_list.i15.i.i.i, align 4
  %178 = ptrtoint ptr %prev3.i.i.i18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %175, ptr %prev3.i.i.i18.i.i.i, align 4
  %179 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %transfer_list.i15.i.i.i, ptr %175, align 4
  br label %spi_message_add_tail.exit20.i.i.i

spi_message_add_tail.exit20.i.i.i:                ; preds = %if.end.i.i.i19.i.i.i, %spi_message_add_tail.exit.i66.i.i.spi_message_add_tail.exit20.i.i.i_crit_edge
  %180 = ptrtoint ptr %spi_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %spi_dev.i.i.i, align 4
  %call.i68.i.i = call i32 @spi_sync(ptr noundef %181, ptr noundef nonnull %msg.i57.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i.i)
  %tobool.not.i69.i.i = icmp eq i32 %call.i68.i.i, 0
  br i1 %tobool.not.i69.i.i, label %lor.lhs.false.i72.i.i, label %spi_message_add_tail.exit20.i.i.i.if.then.i73.i.i_crit_edge

spi_message_add_tail.exit20.i.i.i.if.then.i73.i.i_crit_edge: ; preds = %spi_message_add_tail.exit20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i73.i.i

lor.lhs.false.i72.i.i:                            ; preds = %spi_message_add_tail.exit20.i.i.i
  %182 = ptrtoint ptr %actual_length.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %actual_length.i70.i.i, align 4
  %add.i.i.i = add nuw nsw i32 %138, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %add.i.i.i)
  %cmp.not.i71.i.i = icmp eq i32 %183, %add.i.i.i
  br i1 %cmp.not.i71.i.i, label %lor.lhs.false.i72.i.i.qcaspi_write_burst.exit.i.i_crit_edge, label %lor.lhs.false.i72.i.i.if.then.i73.i.i_crit_edge

lor.lhs.false.i72.i.i.if.then.i73.i.i_crit_edge:  ; preds = %lor.lhs.false.i72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i73.i.i

lor.lhs.false.i72.i.i.qcaspi_write_burst.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_write_burst.exit.i.i

if.then.i73.i.i:                                  ; preds = %lor.lhs.false.i72.i.i.if.then.i73.i.i_crit_edge, %spi_message_add_tail.exit20.i.i.i.if.then.i73.i.i_crit_edge
  call void @qcaspi_spi_error(ptr noundef %data) #9
  br label %qcaspi_write_burst.exit.i.i

qcaspi_write_burst.exit.i.i:                      ; preds = %if.then.i73.i.i, %lor.lhs.false.i72.i.i.qcaspi_write_burst.exit.i.i_crit_edge
  %retval.0.i74.i.i = phi i32 [ 0, %if.then.i73.i.i ], [ %138, %lor.lhs.false.i72.i.i.qcaspi_write_burst.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer.i58.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i57.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i.i.i) #9
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %qcaspi_write_burst.exit.i.i, %qcaspi_write_legacy.exit.i.i
  %written.0.i.i = phi i32 [ %retval.0.i.i.i, %qcaspi_write_legacy.exit.i.i ], [ %retval.0.i74.i.i, %qcaspi_write_burst.exit.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %written.0.i.i, i32 %138)
  %cmp18.not.i.i = icmp eq i32 %written.0.i.i, %138
  br i1 %cmp18.not.i.i, label %if.end21.i.i, label %if.end17.i.i.cleanup.sink.split.i_crit_edge

if.end17.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end21.i.i:                                     ; preds = %if.end17.i.i
  %add.i.i = add i32 %138, %offset.076.i.i
  %sub.i.i = sub i32 %len.078.i.i, %138
  %tobool3.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end21.i.i.if.end43.i_crit_edge, label %if.end21.i.i.while.body.i.i_crit_edge

if.end21.i.i.while.body.i.i_crit_edge:            ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end21.i.i.if.end43.i_crit_edge:                ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end21.i.i.if.end43.i_crit_edge, %if.end.i.i.if.end43.i_crit_edge
  %inc44.i = add i16 %packets.09.i, 1
  %184 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tx_packets.i, align 4
  %inc45.i = add i32 %185, 1
  store i32 %inc45.i, ptr %tx_packets.i, align 4
  %186 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %head, align 4
  %idxprom50.i = zext i16 %187 to i32
  %arrayidx51.i = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom50.i
  %188 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx51.i, align 4
  %len52.i = getelementptr inbounds %struct.sk_buff, ptr %189, i32 0, i32 6
  %190 = ptrtoint ptr %len52.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %len52.i, align 4
  %192 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %tx_bytes.i, align 4
  %add53.i = add i32 %193, %191
  store i32 %add53.i, ptr %tx_bytes.i, align 4
  %194 = ptrtoint ptr %available.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %available.i, align 2
  %196 = trunc i32 %add.i to i16
  %conv55.i = sub i16 %195, %196
  store i16 %conv55.i, ptr %available.i, align 2
  %197 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %data, align 8
  call fastcc void @local_bh_disable() #9
  call void @netif_tx_lock(ptr noundef %198) #9
  %199 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %head, align 4
  %idxprom61.i = zext i16 %200 to i32
  %arrayidx62.i = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom61.i
  %201 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx62.i, align 4
  call void @consume_skb(ptr noundef %202) #9
  %203 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %head, align 4
  %idxprom67.i = zext i16 %204 to i32
  %arrayidx68.i = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom67.i
  %205 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %arrayidx68.i, align 4
  %206 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %size.i, align 4
  %conv72.i = sub i16 %207, %196
  store i16 %conv72.i, ptr %size.i, align 4
  %208 = load i16, ptr %head, align 4
  %add76.i = add i16 %208, 1
  %209 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %count.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add76.i, i16 %210)
  %cmp81.not.i = icmp ult i16 %add76.i, %210
  %spec.store.select.i = select i1 %cmp81.not.i, i16 %add76.i, i16 0
  %211 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %spec.store.select.i, ptr %head, align 4
  %212 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %data, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %213, i32 0, i32 103
  %214 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %215, i32 0, i32 13
  %216 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %217, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end43.i.if.end91.i_crit_edge, label %if.then89.i

if.end43.i.if.end91.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.i

if.then89.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_tx_wake_queue(ptr noundef %215) #9
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then89.i, %if.end43.i.if.end91.i_crit_edge
  %218 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %data, align 8
  call void @netif_tx_unlock(ptr noundef %219) #9
  call fastcc void @local_bh_enable() #9
  %220 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %head, align 4
  %idxprom11.i = zext i16 %221 to i32
  %arrayidx12.i = getelementptr [10 x ptr], ptr %txr, i32 0, i32 %idxprom11.i
  %222 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx12.i, align 4
  %tobool.not.i = icmp eq ptr %223, null
  br i1 %tobool.not.i, label %if.end91.i.qcaspi_transmit.exit_crit_edge, label %if.end91.i.while.body.i_crit_edge

if.end91.i.while.body.i_crit_edge:                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end91.i.qcaspi_transmit.exit_crit_edge:        ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_transmit.exit

cleanup.sink.split.i:                             ; preds = %if.end17.i.i.cleanup.sink.split.i_crit_edge, %if.then22.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %write_buf_miss.sink14.i = phi ptr [ %buf_avail_err.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %write_buf_miss.i, %if.then22.i.cleanup.sink.split.i_crit_edge ], [ %write_err.i, %if.end17.i.i.cleanup.sink.split.i_crit_edge ]
  %224 = ptrtoint ptr %write_buf_miss.sink14.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %write_buf_miss.sink14.i, align 8
  %inc28.i = add i64 %225, 1
  store i64 %inc28.i, ptr %write_buf_miss.sink14.i, align 8
  br label %qcaspi_transmit.exit

qcaspi_transmit.exit:                             ; preds = %cleanup.sink.split.i, %if.end91.i.qcaspi_transmit.exit_crit_edge, %if.then22.i.qcaspi_transmit.exit_crit_edge, %while.cond.preheader.i.qcaspi_transmit.exit_crit_edge, %if.then298.qcaspi_transmit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %available.i) #9
  br label %while.cond.backedge

__here352:                                        ; preds = %while.cond.backedge.__here352_crit_edge, %entry.__here352_crit_edge
  %226 = call i32 @llvm.read_register.i32(metadata !202) #9
  %and.i443 = and i32 %226, -16384
  %227 = inttoptr i32 %and.i443 to ptr
  %task355 = getelementptr inbounds %struct.thread_info, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %task355 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %task355, align 8
  %task_state_change356 = getelementptr inbounds %struct.task_struct, ptr %229, i32 0, i32 212
  %230 = ptrtoint ptr %task_state_change356 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 ptrtoint (ptr blockaddress(@qcaspi_spi_thread, %__here352) to i32), ptr %task_state_change356, align 4
  %231 = load ptr, ptr %task355, align 8
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store volatile i32 0, ptr %231, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !216
  %233 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %234, ptr noundef nonnull @.str.52) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intr_cause) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcaspi_intr_handler(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_req = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %intr_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_req, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %intr_req, align 4
  %spi_thread = getelementptr inbounds %struct.qcaspi, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_thread, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @wake_up_process(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcaspi_qca7k_sync(ptr noundef %qca, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  %signature = alloca i16, align 2
  %spi_config = alloca i16, align 2
  %wrbuf_space = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %signature) #9
  %0 = ptrtoint ptr %signature to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %signature, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %spi_config) #9
  %1 = ptrtoint ptr %spi_config to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %spi_config, align 2, !annotation !212
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wrbuf_space) #9
  %2 = ptrtoint ptr %wrbuf_space to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %wrbuf_space, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp = icmp eq i32 %event, 1
  br i1 %cmp, label %if.then, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then:                                          ; preds = %entry
  %call = call i32 @qcaspi_read_register(ptr noundef %qca, i16 noundef zeroext 6656, ptr noundef nonnull %signature) #9
  %call1 = call i32 @qcaspi_read_register(ptr noundef %qca, i16 noundef zeroext 6656, ptr noundef nonnull %signature) #9
  %3 = ptrtoint ptr %signature to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %signature, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %4)
  %cmp2.not = icmp eq i16 %4, -21931
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %sync = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 7
  %5 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp6 = icmp eq i8 %6, 2
  br i1 %cmp6, label %if.then8, label %if.then4.if.end_crit_edge

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %bad_signature = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 13
  %7 = ptrtoint ptr %bad_signature to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bad_signature, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %bad_signature, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then4.if.end_crit_edge
  %9 = ptrtoint ptr %sync to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sync, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_qca7k_sync, %if.then14)) #9
          to label %cleanup [label %if.then14], !srcloc !213

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qca, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug370, ptr noundef %11, ptr noundef nonnull @.str.54) #9
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call18 = call i32 @qcaspi_read_register(ptr noundef %qca, i16 noundef zeroext 512, ptr noundef nonnull %wrbuf_space) #9
  %12 = ptrtoint ptr %wrbuf_space to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wrbuf_space, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3163, i16 %13)
  %cmp20.not = icmp eq i16 %13, 3163
  br i1 %cmp20.not, label %do.body46, label %do.body24

do.body24:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_qca7k_sync, %if.then36)) #9
          to label %do.end42 [label %if.then36], !srcloc !213

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qca, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug371, ptr noundef %15, ptr noundef nonnull @.str.55) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %do.body24
  %sync43 = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 7
  %16 = ptrtoint ptr %sync43 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %sync43, align 8
  br label %if.end68

do.body46:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_qca7k_sync, %if.then58)) #9
          to label %do.end64 [label %if.then58], !srcloc !213

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qca, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug372, ptr noundef %18, ptr noundef nonnull @.str.56) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then58, %do.body46
  %sync65 = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 7
  %19 = ptrtoint ptr %sync65 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %sync65, align 8
  br label %cleanup

if.end68:                                         ; preds = %do.end42, %entry.if.end68_crit_edge
  %sync69 = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 7
  %20 = ptrtoint ptr %sync69 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sync69, align 8
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %if.end68.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 0, label %sw.bb107
    i8 1, label %sw.bb161
  ]

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end68
  %call71 = call i32 @qcaspi_read_register(ptr noundef %qca, i16 noundef zeroext 6656, ptr noundef nonnull %signature) #9
  %23 = ptrtoint ptr %signature to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %signature, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %24)
  %cmp73.not = icmp eq i16 %24, -21931
  br i1 %cmp73.not, label %sw.bb.cleanup_crit_edge, label %if.end77

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end77:                                         ; preds = %sw.bb
  %call76 = call i32 @qcaspi_read_register(ptr noundef %qca, i16 noundef zeroext 6656, ptr noundef nonnull %signature) #9
  %25 = ptrtoint ptr %signature to i32
  call void @__asan_load2_noabort(i32 %25)
  %.pr = load i16, ptr %signature, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %.pr)
  %cmp79.not = icmp eq i16 %.pr, -21931
  br i1 %cmp79.not, label %if.end77.cleanup_crit_edge, label %if.then81

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %sync69 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %sync69, align 8
  %bad_signature84 = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 13
  %27 = ptrtoint ptr %bad_signature84 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bad_signature84, align 8
  %inc85 = add i64 %28, 1
  store i64 %inc85, ptr %bad_signature84, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_qca7k_sync, %if.then99)) #9
          to label %cleanup [label %if.then99], !srcloc !213

if.then99:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qca, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug373, ptr noundef %30, ptr noundef nonnull @.str.57) #9
  br label %cleanup

sw.bb107:                                         ; preds = %if.end68
  %call108 = call i32 @qcaspi_read_register(ptr noundef %qca, i16 noundef zeroext 6656, ptr noundef nonnull %signature) #9
  %31 = ptrtoint ptr %signature to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %signature, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %32)
  %cmp110.not = icmp eq i16 %32, -21931
  br i1 %cmp110.not, label %do.body135, label %do.body114

do.body114:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_qca7k_sync, %if.then126)) #9
          to label %cleanup [label %if.then126], !srcloc !213

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qca, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug374, ptr noundef %34, ptr noundef nonnull @.str.58) #9
  br label %cleanup

do.body135:                                       ; preds = %sw.bb107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_qca7k_sync, %if.then147)) #9
          to label %do.end153 [label %if.then147], !srcloc !213

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qca, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug375, ptr noundef %36, ptr noundef nonnull @.str.59) #9
  br label %do.end153

do.end153:                                        ; preds = %if.then147, %do.body135
  %call154 = call i32 @qcaspi_read_register(ptr noundef %qca, i16 noundef zeroext 1024, ptr noundef nonnull %spi_config) #9
  %37 = ptrtoint ptr %spi_config to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %spi_config, align 2
  %39 = or i16 %38, 64
  store i16 %39, ptr %spi_config, align 2
  %call157 = call i32 @qcaspi_write_register(ptr noundef %qca, i16 noundef zeroext 1024, i16 noundef zeroext %39, i32 noundef 0) #9
  %40 = ptrtoint ptr %sync69 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %sync69, align 8
  %stats159 = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4
  %41 = ptrtoint ptr %stats159 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %stats159, align 8
  %inc160 = add i64 %42, 1
  store i64 %inc160, ptr %stats159, align 8
  %reset_count = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 12
  %43 = ptrtoint ptr %reset_count to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %reset_count, align 4
  br label %cleanup

sw.bb161:                                         ; preds = %if.end68
  %reset_count162 = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 12
  %44 = ptrtoint ptr %reset_count162 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %reset_count162, align 4
  %inc163 = add i16 %45, 1
  store i16 %inc163, ptr %reset_count162, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_qca7k_sync, %if.then177)) #9
          to label %do.end185 [label %if.then177], !srcloc !213

if.then177:                                       ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %qca, align 8
  %48 = ptrtoint ptr %reset_count162 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %reset_count162, align 4
  %conv180 = zext i16 %49 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug376, ptr noundef %47, ptr noundef nonnull @.str.60, i32 noundef %conv180) #9
  br label %do.end185

do.end185:                                        ; preds = %if.then177, %sw.bb161
  %50 = ptrtoint ptr %reset_count162 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %reset_count162, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %51)
  %cmp188 = icmp ugt i16 %51, 9
  br i1 %cmp188, label %if.then190, label %do.end185.cleanup_crit_edge

do.end185.cleanup_crit_edge:                      ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then190:                                       ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %sync69 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %sync69, align 8
  %reset_timeout = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 2
  %53 = ptrtoint ptr %reset_timeout to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %reset_timeout, align 8
  %inc193 = add i64 %54, 1
  store i64 %inc193, ptr %reset_timeout, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_qca7k_sync, %if.then207)) #9
          to label %cleanup [label %if.then207], !srcloc !213

if.then207:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qca, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug377, ptr noundef %56, ptr noundef nonnull @.str.61) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then207, %if.then190, %do.end185.cleanup_crit_edge, %do.end153, %if.then126, %do.body114, %if.then99, %if.then81, %if.end77.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %do.end64, %if.then14, %if.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wrbuf_space) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spi_config) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %signature) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcaspi_flush_tx_ring(ptr nocapture noundef %qca) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qca, align 8
  tail call fastcc void @local_bh_disable() #9
  tail call void @netif_tx_lock(ptr noundef %1) #9
  %txr = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 3
  %2 = ptrtoint ptr %txr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %3) #9
  %4 = ptrtoint ptr %txr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %txr, align 4
  %5 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qca, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 7
  %7 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %10) #9
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.1, align 4
  %12 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qca, align 8
  %tx_dropped.1 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 7
  %14 = ptrtoint ptr %tx_dropped.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_dropped.1, align 4
  %inc.1 = add i32 %15, 1
  store i32 %inc.1, ptr %tx_dropped.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %17, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %17) #9
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.2, align 4
  %19 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qca, align 8
  %tx_dropped.2 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 7
  %21 = ptrtoint ptr %tx_dropped.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_dropped.2, align 4
  %inc.2 = add i32 %22, 1
  store i32 %inc.2, ptr %tx_dropped.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %24, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %24) #9
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.3, align 4
  %26 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qca, align 8
  %tx_dropped.3 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 7
  %28 = ptrtoint ptr %tx_dropped.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_dropped.3, align 4
  %inc.3 = add i32 %29, 1
  store i32 %inc.3, ptr %tx_dropped.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %31, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %31) #9
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx.4, align 4
  %33 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qca, align 8
  %tx_dropped.4 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 7
  %35 = ptrtoint ptr %tx_dropped.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_dropped.4, align 4
  %inc.4 = add i32 %36, 1
  store i32 %inc.4, ptr %tx_dropped.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %38, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %38) #9
  %39 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.5, align 4
  %40 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qca, align 8
  %tx_dropped.5 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 36, i32 7
  %42 = ptrtoint ptr %tx_dropped.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_dropped.5, align 4
  %inc.5 = add i32 %43, 1
  store i32 %inc.5, ptr %tx_dropped.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 0, i32 6
  %44 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %45, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %45) #9
  %46 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx.6, align 4
  %47 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qca, align 8
  %tx_dropped.6 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 36, i32 7
  %49 = ptrtoint ptr %tx_dropped.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_dropped.6, align 4
  %inc.6 = add i32 %50, 1
  store i32 %inc.6, ptr %tx_dropped.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 0, i32 7
  %51 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %52, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %52) #9
  %53 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx.7, align 4
  %54 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %qca, align 8
  %tx_dropped.7 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 36, i32 7
  %56 = ptrtoint ptr %tx_dropped.7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_dropped.7, align 4
  %inc.7 = add i32 %57, 1
  store i32 %inc.7, ptr %tx_dropped.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 0, i32 8
  %58 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %59, null
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %59) #9
  %60 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx.8, align 4
  %61 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %qca, align 8
  %tx_dropped.8 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 7
  %63 = ptrtoint ptr %tx_dropped.8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_dropped.8, align 4
  %inc.8 = add i32 %64, 1
  store i32 %inc.8, ptr %tx_dropped.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 0, i32 9
  %65 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %66, null
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %66) #9
  %67 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx.9, align 4
  %68 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %qca, align 8
  %tx_dropped.9 = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 36, i32 7
  %70 = ptrtoint ptr %tx_dropped.9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_dropped.9, align 4
  %inc.9 = add i32 %71, 1
  store i32 %inc.9, ptr %tx_dropped.9, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  %tail = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %tail to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %tail, align 2
  %head = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %head, align 4
  %size = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %size, align 4
  %75 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %qca, align 8
  tail call void @netif_tx_unlock(ptr noundef %76) #9
  tail call fastcc void @local_bh_enable() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcaspi_receive(ptr noundef %qca) unnamed_addr #2 align 64 {
entry:
  %msg.i33 = alloca %struct.spi_message, align 4
  %cmd.i = alloca i16, align 2
  %transfer.i34 = alloca [2 x %struct.spi_transfer], align 4
  %msg.i19 = alloca %struct.spi_message, align 4
  %transfer.i20 = alloca %struct.spi_transfer, align 4
  %tx_data.i = alloca i16, align 2
  %msg.i = alloca %struct.spi_message, align 4
  %transfer.i = alloca %struct.spi_transfer, align 4
  %available = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qca, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %available) #9
  %2 = ptrtoint ptr %available to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %available, align 2
  %rx_skb = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 9
  %3 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_skb, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %entry
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu, align 4
  %add.i.i = add i32 %6, 20
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body6, label %netdev_alloc_skb_ip_align.exit

netdev_alloc_skb_ip_align.exit:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %10, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %11 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %rx_skb, align 8
  br label %if.end16

do.body6:                                         ; preds = %if.then
  %12 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rx_skb, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_receive.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_receive, %if.then11)) #9
          to label %do.end13 [label %if.then11], !srcloc !213

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_receive.__UNIQUE_ID_ddebug363, ptr noundef %1, ptr noundef nonnull @.str.65) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %do.body6
  %out_of_mem = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 7
  %13 = ptrtoint ptr %out_of_mem to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %out_of_mem, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %out_of_mem, align 8
  br label %cleanup220

if.end16:                                         ; preds = %netdev_alloc_skb_ip_align.exit, %entry.if.end16_crit_edge
  %call17 = call i32 @qcaspi_read_register(ptr noundef %qca, i16 noundef zeroext 768, ptr noundef nonnull %available) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_receive.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_receive, %if.then31)) #9
          to label %do.end36 [label %if.then31], !srcloc !213

if.then31:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %available to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %available, align 2
  %conv = zext i16 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_receive.__UNIQUE_ID_ddebug364, ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %conv) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %if.end16
  %17 = ptrtoint ptr %available to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %available, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3167, i16 %18)
  %cmp = icmp ugt i16 %18, 3167
  br i1 %cmp, label %if.then39, label %if.else

if.then39:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %buf_avail_err = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 12
  %19 = ptrtoint ptr %buf_avail_err to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %buf_avail_err, align 8
  %inc41 = add i64 %20, 1
  store i64 %inc41, ptr %buf_avail_err, align 8
  br label %cleanup220

if.else:                                          ; preds = %do.end36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp43 = icmp eq i16 %18, 0
  br i1 %cmp43, label %do.body47, label %if.end66

do.body47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_receive.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_receive, %if.then59)) #9
          to label %cleanup220 [label %if.then59], !srcloc !213

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_receive.__UNIQUE_ID_ddebug365, ptr noundef %1, ptr noundef nonnull @.str.67) #9
  br label %cleanup220

if.end66:                                         ; preds = %if.else
  %21 = load i32, ptr @wr_verify, align 4
  %call67 = call i32 @qcaspi_write_register(ptr noundef %qca, i16 noundef zeroext 256, i16 noundef zeroext %18, i32 noundef %21) #9
  %legacy_mode = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 15
  %22 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %legacy_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool68.not = icmp eq i8 %23, 0
  br i1 %tobool68.not, label %if.end66.if.end71_crit_edge, label %if.then69

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then69:                                        ; preds = %if.end66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_data.i) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #9
  %24 = getelementptr inbounds i8, ptr %transfer.i, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 92)
  %26 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %32 = ptrtoint ptr %tx_data.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -32768, ptr %tx_data.i, align 2
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %len.i, align 4
  %34 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tx_data.i, ptr %transfer.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then69.spi_message_add_tail.exit.i_crit_edge

if.then69.spi_message_add_tail.exit.i_crit_edge:  ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %36 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %38 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.then69.spi_message_add_tail.exit.i_crit_edge
  %spi_dev.i = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 1
  %39 = ptrtoint ptr %spi_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi_dev.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %40, ptr noundef nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %spi_message_add_tail.exit.i.if.then2.i_crit_edge

spi_message_add_tail.exit.i.if.then2.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

if.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  %status.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 7
  %41 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool1.not.i = icmp eq i32 %42, 0
  br i1 %tobool1.not.i, label %if.end.i.qcaspi_tx_cmd.exit_crit_edge, label %if.end.i.if.then2.i_crit_edge

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

if.end.i.qcaspi_tx_cmd.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_tx_cmd.exit

if.then2.i:                                       ; preds = %if.end.i.if.then2.i_crit_edge, %spi_message_add_tail.exit.i.if.then2.i_crit_edge
  call void @qcaspi_spi_error(ptr noundef %qca) #9
  br label %qcaspi_tx_cmd.exit

qcaspi_tx_cmd.exit:                               ; preds = %if.then2.i, %if.end.i.qcaspi_tx_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_data.i) #9
  br label %if.end71

if.end71:                                         ; preds = %qcaspi_tx_cmd.exit, %if.end66.if.end71_crit_edge
  %43 = ptrtoint ptr %available to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %available, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool72.not72 = icmp eq i16 %44, 0
  br i1 %tobool72.not72, label %if.end71.cleanup220_crit_edge, label %while.body.lr.ph

if.end71.cleanup220_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup220

while.body.lr.ph:                                 ; preds = %if.end71
  %burst_len = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 16
  %rx_buffer = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 5
  %45 = getelementptr inbounds i8, ptr %msg.i19, i32 8
  %prev.i.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %msg.i19, i32 0, i32 1
  %resources.i.i.i22 = getelementptr inbounds %struct.spi_message, ptr %msg.i19, i32 0, i32 10
  %prev.i2.i.i.i23 = getelementptr inbounds %struct.spi_message, ptr %msg.i19, i32 0, i32 10, i32 1
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i20, i32 0, i32 1
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i20, i32 0, i32 2
  %transfer_list.i.i24 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i20, i32 0, i32 18
  %prev3.i.i.i.i26 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i20, i32 0, i32 18, i32 1
  %spi_dev.i28 = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 1
  %actual_length.i = getelementptr inbounds %struct.spi_message, ptr %msg.i19, i32 0, i32 6
  %46 = getelementptr inbounds i8, ptr %transfer.i34, i32 4
  %47 = getelementptr inbounds i8, ptr %msg.i33, i32 8
  %prev.i.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %msg.i33, i32 0, i32 1
  %resources.i.i.i36 = getelementptr inbounds %struct.spi_message, ptr %msg.i33, i32 0, i32 10
  %prev.i2.i.i.i37 = getelementptr inbounds %struct.spi_message, ptr %msg.i33, i32 0, i32 10, i32 1
  %len2.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i34, i32 0, i32 2
  %rx_buf.i38 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i34, i32 0, i32 1, i32 1
  %len5.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i34, i32 0, i32 1, i32 2
  %transfer_list.i.i39 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i34, i32 0, i32 18
  %prev3.i.i.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i34, i32 0, i32 18, i32 1
  %transfer_list.i14.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i34, i32 0, i32 1, i32 18
  %prev3.i.i.i17.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i34, i32 0, i32 1, i32 18, i32 1
  %actual_length.i47 = getelementptr inbounds %struct.spi_message, ptr %msg.i33, i32 0, i32 6
  %frm_handle = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 8
  %rx_errors170 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_dropped172 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %mtu187 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %out_of_mem216 = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %48 = phi i16 [ %44, %while.body.lr.ph ], [ %160, %cleanup.while.body_crit_edge ]
  %49 = ptrtoint ptr %burst_len to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %burst_len, align 2
  %51 = call i16 @llvm.umin.i16(i16 %48, i16 %50)
  %count.0 = zext i16 %51 to i32
  %52 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %legacy_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool82.not = icmp eq i8 %53, 0
  %54 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_buffer, align 8
  br i1 %tobool82.not, label %if.else85, label %if.then83

if.then83:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i19) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i20) #9
  %56 = call ptr @memset(ptr %transfer.i20, i32 0, i32 96)
  %57 = call ptr @memset(ptr %45, i32 0, i32 40)
  %58 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %msg.i19, ptr %msg.i19, align 4
  %59 = ptrtoint ptr %prev.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i19, ptr %prev.i.i.i.i21, align 4
  %60 = ptrtoint ptr %resources.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %resources.i.i.i22, ptr %resources.i.i.i22, align 4
  %61 = ptrtoint ptr %prev.i2.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %resources.i.i.i22, ptr %prev.i2.i.i.i23, align 4
  %62 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %55, ptr %rx_buf.i, align 4
  %63 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %count.0, ptr %len1.i, align 4
  %call.i.i.i.i25 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i24, ptr noundef nonnull %msg.i19, ptr noundef nonnull %msg.i19) #9
  br i1 %call.i.i.i.i25, label %if.end.i.i.i.i27, label %if.then83.spi_message_add_tail.exit.i31_crit_edge

if.then83.spi_message_add_tail.exit.i31_crit_edge: ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i31

if.end.i.i.i.i27:                                 ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %prev.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %transfer_list.i.i24, ptr %prev.i.i.i.i21, align 4
  %65 = ptrtoint ptr %transfer_list.i.i24 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i19, ptr %transfer_list.i.i24, align 4
  %66 = ptrtoint ptr %prev3.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %msg.i19, ptr %prev3.i.i.i.i26, align 4
  %67 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %transfer_list.i.i24, ptr %msg.i19, align 4
  br label %spi_message_add_tail.exit.i31

spi_message_add_tail.exit.i31:                    ; preds = %if.end.i.i.i.i27, %if.then83.spi_message_add_tail.exit.i31_crit_edge
  %68 = ptrtoint ptr %spi_dev.i28 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %spi_dev.i28, align 4
  %call.i29 = call i32 @spi_sync(ptr noundef %69, ptr noundef nonnull %msg.i19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i30, label %lor.lhs.false.i, label %spi_message_add_tail.exit.i31.if.then.i_crit_edge

spi_message_add_tail.exit.i31.if.then.i_crit_edge: ; preds = %spi_message_add_tail.exit.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %spi_message_add_tail.exit.i31
  %70 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %count.0)
  %cmp.not.i = icmp eq i32 %71, %count.0
  br i1 %cmp.not.i, label %lor.lhs.false.i.qcaspi_read_legacy.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i.qcaspi_read_legacy.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_read_legacy.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %spi_message_add_tail.exit.i31.if.then.i_crit_edge
  call void @qcaspi_spi_error(ptr noundef %qca) #9
  br label %qcaspi_read_legacy.exit

qcaspi_read_legacy.exit:                          ; preds = %if.then.i, %lor.lhs.false.i.qcaspi_read_legacy.exit_crit_edge
  %retval.0.i32 = phi i32 [ 0, %if.then.i ], [ %count.0, %lor.lhs.false.i.qcaspi_read_legacy.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i20) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i19) #9
  br label %do.body90

if.else85:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i33) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #9
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer.i34) #9
  %72 = call ptr @memset(ptr %46, i32 0, i32 188)
  %73 = call ptr @memset(ptr %47, i32 0, i32 40)
  %74 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %msg.i33, ptr %msg.i33, align 4
  %75 = ptrtoint ptr %prev.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i33, ptr %prev.i.i.i.i35, align 4
  %76 = ptrtoint ptr %resources.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %resources.i.i.i36, ptr %resources.i.i.i36, align 4
  %77 = ptrtoint ptr %prev.i2.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %resources.i.i.i36, ptr %prev.i2.i.i.i37, align 4
  %78 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -32768, ptr %cmd.i, align 2
  %79 = ptrtoint ptr %transfer.i34 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %cmd.i, ptr %transfer.i34, align 4
  %80 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %len2.i, align 4
  %81 = ptrtoint ptr %rx_buf.i38 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %55, ptr %rx_buf.i38, align 4
  %82 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %count.0, ptr %len5.i, align 4
  %call.i.i.i.i40 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i39, ptr noundef nonnull %msg.i33, ptr noundef nonnull %msg.i33) #9
  br i1 %call.i.i.i.i40, label %if.end.i.i.i.i42, label %if.else85.spi_message_add_tail.exit.i43_crit_edge

if.else85.spi_message_add_tail.exit.i43_crit_edge: ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i43

if.end.i.i.i.i42:                                 ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %prev.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %transfer_list.i.i39, ptr %prev.i.i.i.i35, align 4
  %84 = ptrtoint ptr %transfer_list.i.i39 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i33, ptr %transfer_list.i.i39, align 4
  %85 = ptrtoint ptr %prev3.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msg.i33, ptr %prev3.i.i.i.i41, align 4
  %86 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %transfer_list.i.i39, ptr %msg.i33, align 4
  br label %spi_message_add_tail.exit.i43

spi_message_add_tail.exit.i43:                    ; preds = %if.end.i.i.i.i42, %if.else85.spi_message_add_tail.exit.i43_crit_edge
  %87 = ptrtoint ptr %prev.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i.i.i35, align 4
  %call.i.i.i16.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i14.i, ptr noundef %88, ptr noundef nonnull %msg.i33) #9
  br i1 %call.i.i.i16.i, label %if.end.i.i.i18.i, label %spi_message_add_tail.exit.i43.spi_message_add_tail.exit19.i_crit_edge

spi_message_add_tail.exit.i43.spi_message_add_tail.exit19.i_crit_edge: ; preds = %spi_message_add_tail.exit.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit19.i

if.end.i.i.i18.i:                                 ; preds = %spi_message_add_tail.exit.i43
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %prev.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %transfer_list.i14.i, ptr %prev.i.i.i.i35, align 4
  %90 = ptrtoint ptr %transfer_list.i14.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %msg.i33, ptr %transfer_list.i14.i, align 4
  %91 = ptrtoint ptr %prev3.i.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev3.i.i.i17.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %transfer_list.i14.i, ptr %88, align 4
  br label %spi_message_add_tail.exit19.i

spi_message_add_tail.exit19.i:                    ; preds = %if.end.i.i.i18.i, %spi_message_add_tail.exit.i43.spi_message_add_tail.exit19.i_crit_edge
  %93 = ptrtoint ptr %spi_dev.i28 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %spi_dev.i28, align 4
  %call.i45 = call i32 @spi_sync(ptr noundef %94, ptr noundef nonnull %msg.i33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %lor.lhs.false.i49, label %spi_message_add_tail.exit19.i.if.then.i50_crit_edge

spi_message_add_tail.exit19.i.if.then.i50_crit_edge: ; preds = %spi_message_add_tail.exit19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i50

lor.lhs.false.i49:                                ; preds = %spi_message_add_tail.exit19.i
  %95 = ptrtoint ptr %actual_length.i47 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %actual_length.i47, align 4
  %add.i = add nuw nsw i32 %count.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %add.i)
  %cmp.not.i48 = icmp eq i32 %96, %add.i
  br i1 %cmp.not.i48, label %lor.lhs.false.i49.qcaspi_read_burst.exit_crit_edge, label %lor.lhs.false.i49.if.then.i50_crit_edge

lor.lhs.false.i49.if.then.i50_crit_edge:          ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i50

lor.lhs.false.i49.qcaspi_read_burst.exit_crit_edge: ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcaspi_read_burst.exit

if.then.i50:                                      ; preds = %lor.lhs.false.i49.if.then.i50_crit_edge, %spi_message_add_tail.exit19.i.if.then.i50_crit_edge
  call void @qcaspi_spi_error(ptr noundef %qca) #9
  br label %qcaspi_read_burst.exit

qcaspi_read_burst.exit:                           ; preds = %if.then.i50, %lor.lhs.false.i49.qcaspi_read_burst.exit_crit_edge
  %retval.0.i51 = phi i32 [ 0, %if.then.i50 ], [ %count.0, %lor.lhs.false.i49.qcaspi_read_burst.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer.i34) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i33) #9
  br label %do.body90

do.body90:                                        ; preds = %qcaspi_read_burst.exit, %qcaspi_read_legacy.exit
  %bytes_read.0 = phi i32 [ %retval.0.i32, %qcaspi_read_legacy.exit ], [ %retval.0.i51, %qcaspi_read_burst.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_receive.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_receive, %if.then102)) #9
          to label %do.end108 [label %if.then102], !srcloc !213

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %available to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %available, align 2
  %conv103 = zext i16 %98 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_receive.__UNIQUE_ID_ddebug366, ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %conv103, i32 noundef %bytes_read.0) #9
  br label %do.end108

do.end108:                                        ; preds = %if.then102, %do.body90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_read.0)
  %tobool109.not = icmp eq i32 %bytes_read.0, 0
  br i1 %tobool109.not, label %if.else113, label %if.then110

if.then110:                                       ; preds = %do.end108
  %99 = ptrtoint ptr %available to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %available, align 2
  %101 = trunc i32 %bytes_read.0 to i16
  %conv112 = sub i16 %100, %101
  store i16 %conv112, ptr %available, align 2
  %102 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rx_buffer, align 8
  br label %land.rhs

if.else113:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  %read_err = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 3
  %104 = ptrtoint ptr %read_err to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %read_err, align 8
  %inc115 = add i64 %105, 1
  store i64 %inc115, ptr %read_err, align 8
  br label %cleanup220

land.rhs:                                         ; preds = %sw.epilog.land.rhs_crit_edge, %if.then110
  %dec71.in = phi i32 [ %bytes_read.0, %if.then110 ], [ %dec71, %sw.epilog.land.rhs_crit_edge ]
  %cp.070 = phi ptr [ %103, %if.then110 ], [ %incdec.ptr, %sw.epilog.land.rhs_crit_edge ]
  %dec71 = add nsw i32 %dec71.in, -1
  %106 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rx_skb, align 8
  %tobool121.not = icmp eq ptr %107, null
  br i1 %tobool121.not, label %land.rhs.cleanup_crit_edge, label %while.body122

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body122:                                    ; preds = %land.rhs
  %data = getelementptr inbounds %struct.sk_buff, ptr %107, i32 0, i32 19
  %108 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %107, i32 0, i32 7
  %110 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.i.not.i = icmp eq i32 %111, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %while.body122.skb_tailroom.exit_crit_edge

while.body122.skb_tailroom.exit_crit_edge:        ; preds = %while.body122
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %while.body122
  call void @__sanitizer_cov_trace_pc() #11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %107, i32 0, i32 17
  %112 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %107, i32 0, i32 16
  %114 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %113 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %115 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %while.body122.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %while.body122.skb_tailroom.exit_crit_edge ]
  %conv126 = trunc i32 %cond.i to i16
  %116 = ptrtoint ptr %cp.070 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %cp.070, align 1
  %call127 = call i32 @qcafrm_fsm_decode(ptr noundef %frm_handle, ptr noundef %109, i16 noundef zeroext %conv126, i8 noundef zeroext %117) #9
  %incdec.ptr = getelementptr i8, ptr %cp.070, i32 1
  %118 = zext i32 %call127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call127, label %sw.default [
    i32 0, label %skb_tailroom.exit.sw.epilog_crit_edge
    i32 -1001, label %skb_tailroom.exit.sw.epilog_crit_edge73
    i32 -1002, label %do.body130
    i32 -1003, label %do.body152
  ]

skb_tailroom.exit.sw.epilog_crit_edge73:          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

skb_tailroom.exit.sw.epilog_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body130:                                       ; preds = %skb_tailroom.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_receive.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_receive, %if.then142)) #9
          to label %do.end147 [label %if.then142], !srcloc !213

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_receive.__UNIQUE_ID_ddebug367, ptr noundef %1, ptr noundef nonnull @.str.69) #9
  br label %do.end147

do.end147:                                        ; preds = %if.then142, %do.body130
  %119 = ptrtoint ptr %rx_errors170 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_errors170, align 4
  %inc148 = add i32 %120, 1
  store i32 %inc148, ptr %rx_errors170, align 4
  %121 = ptrtoint ptr %rx_dropped172 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_dropped172, align 4
  %inc149 = add i32 %122, 1
  store i32 %inc149, ptr %rx_dropped172, align 4
  br label %sw.epilog

do.body152:                                       ; preds = %skb_tailroom.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_receive.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_receive, %if.then164)) #9
          to label %do.end169 [label %if.then164], !srcloc !213

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_receive.__UNIQUE_ID_ddebug368, ptr noundef %1, ptr noundef nonnull @.str.70) #9
  br label %do.end169

do.end169:                                        ; preds = %if.then164, %do.body152
  %123 = ptrtoint ptr %rx_errors170 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rx_errors170, align 4
  %inc171 = add i32 %124, 1
  store i32 %inc171, ptr %rx_errors170, align 4
  %125 = ptrtoint ptr %rx_dropped172 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rx_dropped172, align 4
  %inc173 = add i32 %126, 1
  store i32 %inc173, ptr %rx_dropped172, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %skb_tailroom.exit
  %127 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %qca, align 8
  %129 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rx_skb, align 8
  %131 = getelementptr inbounds %struct.anon.44, ptr %130, i32 0, i32 2
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %128, ptr %131, align 8
  %133 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %stats, align 4
  %inc176 = add i32 %134, 1
  store i32 %inc176, ptr %stats, align 4
  %135 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rx_bytes, align 4
  %add177 = add i32 %136, %call127
  store i32 %add177, ptr %rx_bytes, align 4
  %137 = load ptr, ptr %rx_skb, align 8
  %call179 = call ptr @skb_put(ptr noundef %137, i32 noundef %call127) #9
  %138 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rx_skb, align 8
  %140 = getelementptr inbounds %struct.anon.44, ptr %139, i32 0, i32 2
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 8
  %call182 = call zeroext i16 @eth_type_trans(ptr noundef %139, ptr noundef %142) #9
  %143 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rx_skb, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 15, i32 0, i32 18
  %145 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %call182, ptr %protocol, align 8
  %146 = load ptr, ptr %rx_skb, align 8
  %call186 = call i32 @netif_rx_ni(ptr noundef %146) #9
  %147 = ptrtoint ptr %mtu187 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mtu187, align 4
  %add.i.i52 = add i32 %148, 20
  %call.i.i53 = call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i52, i32 noundef 2592) #9
  %tobool.not.i.i54 = icmp eq ptr %call.i.i53, null
  br i1 %tobool.not.i.i54, label %do.body195, label %netdev_alloc_skb_ip_align.exit60

netdev_alloc_skb_ip_align.exit60:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i55 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i53, i32 0, i32 19
  %149 = ptrtoint ptr %data.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data.i.i.i55, align 4
  %add.ptr.i.i.i56 = getelementptr i8, ptr %150, i32 2
  store ptr %add.ptr.i.i.i56, ptr %data.i.i.i55, align 4
  %tail.i.i.i57 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i53, i32 0, i32 16
  %151 = ptrtoint ptr %tail.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tail.i.i.i57, align 8
  %add.ptr1.i.i.i58 = getelementptr i8, ptr %152, i32 2
  store ptr %add.ptr1.i.i.i58, ptr %tail.i.i.i57, align 8
  %153 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i.i53, ptr %rx_skb, align 8
  br label %sw.epilog

do.body195:                                       ; preds = %sw.default
  %154 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %rx_skb, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcaspi_receive.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcaspi_receive, %if.then207)) #9
          to label %do.end212 [label %if.then207], !srcloc !213

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qcaspi_receive.__UNIQUE_ID_ddebug369, ptr noundef %1, ptr noundef nonnull @.str.65) #9
  br label %do.end212

do.end212:                                        ; preds = %if.then207, %do.body195
  %155 = ptrtoint ptr %rx_errors170 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rx_errors170, align 4
  %inc214 = add i32 %156, 1
  store i32 %inc214, ptr %rx_errors170, align 4
  %157 = ptrtoint ptr %out_of_mem216 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %out_of_mem216, align 8
  %inc217 = add i64 %158, 1
  store i64 %inc217, ptr %out_of_mem216, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end212, %netdev_alloc_skb_ip_align.exit60, %do.end169, %do.end147, %skb_tailroom.exit.sw.epilog_crit_edge, %skb_tailroom.exit.sw.epilog_crit_edge73
  %tobool119.not = icmp eq i32 %dec71, 0
  br i1 %tobool119.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.land.rhs_crit_edge

sw.epilog.land.rhs_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %159 = ptrtoint ptr %available to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %available, align 2
  %tobool72.not = icmp eq i16 %160, 0
  br i1 %tobool72.not, label %cleanup.cleanup220_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.cleanup220_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup220

cleanup220:                                       ; preds = %cleanup.cleanup220_crit_edge, %if.else113, %if.end71.cleanup220_crit_edge, %if.then59, %do.body47, %if.then39, %do.end13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %available) #9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcaspi_write_register(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcafrm_fsm_decode(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcaspi_spi_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qcafrm_create_header(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qcafrm_create_footer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcaspi_remove_device_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !190, !191, !192, !194, !196, !197, !198, !200}
!llvm.named.register.sp = !{!202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__param_qcaspi_clkspeed, !1, !"__param_qcaspi_clkspeed", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_qcaspi_clkspeedtype353, !1, !"__UNIQUE_ID_qcaspi_clkspeedtype353", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_qcaspi_clkspeed354, !4, !"__UNIQUE_ID_qcaspi_clkspeed354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 58, i32 1}
!5 = !{ptr @__param_qcaspi_burst_len, !6, !"__param_qcaspi_burst_len", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 63, i32 1}
!7 = !{ptr @__UNIQUE_ID_qcaspi_burst_lentype355, !6, !"__UNIQUE_ID_qcaspi_burst_lentype355", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_qcaspi_burst_len356, !9, !"__UNIQUE_ID_qcaspi_burst_len356", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 64, i32 1}
!10 = !{ptr @__param_qcaspi_pluggable, !11, !"__param_qcaspi_pluggable", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 69, i32 1}
!12 = !{ptr @__UNIQUE_ID_qcaspi_pluggabletype357, !11, !"__UNIQUE_ID_qcaspi_pluggabletype357", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_qcaspi_pluggable358, !14, !"__UNIQUE_ID_qcaspi_pluggable358", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 70, i32 1}
!15 = !{ptr @__param_wr_verify, !16, !"__param_wr_verify", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 75, i32 1}
!17 = !{ptr @__UNIQUE_ID_wr_verifytype359, !16, !"__UNIQUE_ID_wr_verifytype359", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_wr_verify360, !19, !"__UNIQUE_ID_wr_verify360", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 76, i32 1}
!20 = !{ptr @__initcall__kmod_qcaspi__386_1033_qca_spi_driver_init6, !21, !"__initcall__kmod_qcaspi__386_1033_qca_spi_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 1033, i32 1}
!22 = !{ptr @__exitcall_qca_spi_driver_exit, !21, !"__exitcall_qca_spi_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description387, !24, !"__UNIQUE_ID_description387", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 1035, i32 1}
!25 = !{ptr @__UNIQUE_ID_author388, !26, !"__UNIQUE_ID_author388", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 1036, i32 1}
!27 = !{ptr @__UNIQUE_ID_author389, !28, !"__UNIQUE_ID_author389", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 1037, i32 1}
!29 = !{ptr @__UNIQUE_ID_file390, !30, !"__UNIQUE_ID_file390", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 1038, i32 1}
!31 = !{ptr @__UNIQUE_ID_license391, !30, !"__UNIQUE_ID_license391", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_version392, !33, !"__UNIQUE_ID_version392", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 1039, i32 1}
!34 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__modver_attr, !33, !"__modver_attr", i1 false, i1 false}
!38 = !{ptr @qcaspi_clkspeed, !39, !"qcaspi_clkspeed", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 56, i32 12}
!40 = !{ptr @__param_str_qcaspi_clkspeed, !1, !"__param_str_qcaspi_clkspeed", i1 false, i1 false}
!41 = !{ptr @__param_str_qcaspi_burst_len, !6, !"__param_str_qcaspi_burst_len", i1 false, i1 false}
!42 = !{ptr @qcaspi_burst_len, !43, !"qcaspi_burst_len", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 62, i32 12}
!44 = !{ptr @__param_str_qcaspi_pluggable, !11, !"__param_str_qcaspi_pluggable", i1 false, i1 false}
!45 = !{ptr @qcaspi_pluggable, !46, !"qcaspi_pluggable", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 68, i32 12}
!47 = !{ptr @__param_str_wr_verify, !16, !"__param_str_wr_verify", i1 false, i1 false}
!48 = !{ptr @wr_verify, !49, !"wr_verify", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 74, i32 12}
!50 = !{ptr @qca_spi_driver, !51, !"qca_spi_driver", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 1024, i32 26}
!52 = !{ptr @qca_spi_id, !53, !"qca_spi_id", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 1018, i32 35}
!54 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 897, i32 3}
!56 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.5, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @qca_spi_probe._entry, !55, !"_entry", i1 false, i1 false}
!61 = !{ptr @qca_spi_probe._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 902, i32 10}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 913, i32 3}
!66 = !{ptr @qca_spi_probe._entry.9, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @qca_spi_probe._entry_ptr.11, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 920, i32 3}
!70 = !{ptr @qca_spi_probe._entry.12, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @qca_spi_probe._entry_ptr.14, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 927, i32 3}
!74 = !{ptr @qca_spi_probe._entry.15, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @qca_spi_probe._entry_ptr.17, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 934, i32 3}
!78 = !{ptr @qca_spi_probe._entry.18, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @qca_spi_probe._entry_ptr.20, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 939, i32 2}
!82 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @qca_spi_probe._entry.21, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @qca_spi_probe._entry_ptr.24, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 948, i32 3}
!87 = !{ptr @qca_spi_probe._entry.25, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @qca_spi_probe._entry_ptr.27, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 962, i32 3}
!91 = !{ptr @qca_spi_probe._entry.28, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @qca_spi_probe._entry_ptr.30, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 974, i32 3}
!95 = !{ptr @qca_spi_probe._entry.31, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @qca_spi_probe._entry_ptr.33, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 985, i32 4}
!99 = !{ptr @qca_spi_probe._entry.34, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @qca_spi_probe._entry_ptr.36, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 993, i32 3}
!103 = !{ptr @qca_spi_probe._entry.37, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @qca_spi_probe._entry_ptr.39, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @qcaspi_netdev_ops, !106, !"qcaspi_netdev_ops", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 848, i32 36}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 831, i32 29}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 684, i32 20}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 688, i32 19}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 696, i32 19}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 581, i32 28}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 583, i32 3}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 589, i32 3}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 591, i32 3}
!123 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @qcaspi_spi_thread.__UNIQUE_ID_ddebug380, !122, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 598, i32 4}
!127 = !{ptr @qcaspi_spi_thread.__UNIQUE_ID_ddebug381, !126, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 624, i32 5}
!130 = !{ptr @qcaspi_spi_thread.__UNIQUE_ID_ddebug382, !129, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 632, i32 5}
!133 = !{ptr @qcaspi_spi_thread.__UNIQUE_ID_ddebug383, !132, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 652, i32 2}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 653, i32 28}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 511, i32 4}
!140 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug370, !139, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!142 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 518, i32 5}
!144 = !{ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug371, !143, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 521, i32 5}
!147 = !{ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug372, !146, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!148 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 538, i32 4}
!150 = !{ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug373, !149, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!151 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 547, i32 4}
!153 = !{ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug374, !152, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 552, i32 3}
!156 = !{ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug375, !155, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!157 = !{ptr @.str.60, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 563, i32 3}
!159 = !{ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug376, !158, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 569, i32 4}
!162 = !{ptr @qcaspi_qca7k_sync.__UNIQUE_ID_ddebug377, !161, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!163 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 88, i32 2}
!165 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @start_spi_intr_handling.__UNIQUE_ID_ddebug361, !164, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!167 = !{ptr @.str.64, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 354, i32 4}
!169 = !{ptr @.str.65, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @qcaspi_receive.__UNIQUE_ID_ddebug363, !168, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!171 = !{ptr @.str.66, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 363, i32 2}
!173 = !{ptr @qcaspi_receive.__UNIQUE_ID_ddebug364, !172, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!174 = !{ptr @.str.67, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 373, i32 3}
!176 = !{ptr @qcaspi_receive.__UNIQUE_ID_ddebug365, !175, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 396, i32 3}
!179 = !{ptr @qcaspi_receive.__UNIQUE_ID_ddebug366, !178, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!180 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 421, i32 5}
!182 = !{ptr @qcaspi_receive.__UNIQUE_ID_ddebug367, !181, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!183 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 426, i32 5}
!185 = !{ptr @qcaspi_receive.__UNIQUE_ID_ddebug368, !184, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!186 = !{ptr @qcaspi_receive.__UNIQUE_ID_ddebug369, !187, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 442, i32 6}
!188 = !{ptr @.str.71, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 101, i32 2}
!190 = !{ptr @.str.72, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @end_spi_intr_handling.__UNIQUE_ID_ddebug362, !189, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!192 = !{ptr @.str.73, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 738, i32 29}
!194 = !{ptr @.str.74, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 768, i32 2}
!196 = !{ptr @.str.75, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @qcaspi_netdev_xmit.__UNIQUE_ID_ddebug385, !195, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!198 = !{ptr @.str.76, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 798, i32 28}
!200 = !{ptr @qca_spi_of_match, !201, !"qca_spi_of_match", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/qualcomm/qca_spi.c", i32 881, i32 34}
!202 = !{!"sp"}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"auto-init"}
!213 = !{i64 2148874511, i64 2148874516, i64 2148874529, i64 2148874573, i64 2148874607, i64 2148874628}
!214 = !{i64 2156841278}
!215 = !{i64 2156846036}
!216 = !{i64 2156860821}
