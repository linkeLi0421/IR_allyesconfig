; ModuleID = '/llk/IR_all_yes/drivers/media/pci/pt1/pt1.c_pt.bc'
source_filename = "../drivers/media/pci/pt1/pt1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pt1_config = type { %struct.i2c_board_info, %struct.tc90522_config, %struct.i2c_board_info, %union.pt1_tuner_config }
%struct.tc90522_config = type { ptr, ptr, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%union.pt1_tuner_config = type { %struct.qm1d1b0004_config }
%struct.qm1d1b0004_config = type { ptr, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.pt1 = type { ptr, ptr, %struct.i2c_adapter, i32, [4 x ptr], ptr, ptr, i32, i32, %struct.mutex, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.pt1_adapter = type { ptr, i32, ptr, i32, i32, i32, %struct.dvb_adapter, %struct.dvb_demux, i32, %struct.dmxdev, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.pt1_table = type { ptr, i32, [511 x %struct.pt1_buffer] }
%struct.pt1_buffer = type { ptr, i32 }
%struct.dvb_pll_config = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.138], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.138 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.139 }>
%union.anon.139 = type { i64 }
%struct.dvb_demux_feed = type { %union.anon.130, %union.anon.131, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.130 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.131 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.82 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.pt1_table_page = type { i32, [511 x i32] }

@__param_str_nr_tables = internal constant [20 x i8] c"earth_pt1.nr_tables\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@pt1_nr_tables = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_nr_tables = internal constant %struct.kernel_param { ptr @__param_str_nr_tables, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.101 { ptr @pt1_nr_tables } }, section "__param", align 4
@__UNIQUE_ID_nr_tablestype383 = internal constant [34 x i8] c"earth_pt1.parmtype=nr_tables:uint\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [21 x i8] c"earth_pt1.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype385 = internal constant [45 x i8] c"earth_pt1.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr386 = internal constant [46 x i8] c"earth_pt1.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_earth_pt1__387_1478_pt1_driver_init6 = internal global ptr @pt1_driver_init, section ".initcall6.init", align 4
@pt1_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pt1_id_table, ptr @pt1_probe, ptr @pt1_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pt1_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pt1_driver_exit = internal global ptr @pt1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author388 = internal constant [55 x i8] c"earth_pt1.author=Takahito HIRANO <hiranotaka@zng.info>\00", section ".modinfo", align 1
@__UNIQUE_ID_description389 = internal constant [47 x i8] c"earth_pt1.description=Earthsoft PT1/PT2 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file390 = internal constant [47 x i8] c"earth_pt1.file=drivers/media/pci/pt1/earth-pt1\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [22 x i8] c"earth_pt1.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"earth_pt1\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"earth-pt1\00", [22 x i8] zeroinitializer }, align 32
@pt1_id_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4334, i32 8474, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4334, i32 8746, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pt1_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pt1_suspend, ptr @pt1_resume, ptr @pt1_suspend, ptr @pt1_resume, ptr @pt1_suspend, ptr @pt1_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pt1_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pt1->lock\00", [21 x i8] zeroinitializer }, align 32
@pt1_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pt1_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @pt1_i2c_xfer, ptr null, ptr null, ptr null, ptr @pt1_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/pci/pt1/pt1.c\00", [36 x i8] zeroinitializer }, align 32
@pt1_filter._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.pt1_filter = private unnamed_addr constant [11 x i8] c"pt1_filter\00", align 1
@pt1_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.pt1_filter, ptr @.str.4, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016earth-pt1: device buffer overflowing. table[%d] buf[%d]\0A\00", [37 x i8] zeroinitializer }, align 32
@pt1_filter._entry_ptr = internal global ptr @pt1_filter._entry, section ".printk_index", align 4
@pt1_filter._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pt1_filter._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.pt1_filter, ptr @.str.4, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016earth-pt1: data loss in streamID(adapter)[%d]\0A\00", [47 x i8] zeroinitializer }, align 32
@pt1_filter._entry_ptr.10 = internal global ptr @pt1_filter._entry.8, section ".printk_index", align 4
@pt1_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 330, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"could not sync\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pt1_sync\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pt1_sync._entry_ptr = internal global ptr @pt1_sync._entry, section ".printk_index", align 4
@pt1_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 354, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"could not unlock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pt1_unlock\00", [21 x i8] zeroinitializer }, align 32
@pt1_unlock._entry_ptr = internal global ptr @pt1_unlock._entry, section ".printk_index", align 4
@pt1_reset_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 368, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not reset PCI\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pt1_reset_pci\00", [18 x i8] zeroinitializer }, align 32
@pt1_reset_pci._entry_ptr = internal global ptr @pt1_reset_pci._entry, section ".printk_index", align 4
@pt1_reset_ram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 382, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not reset RAM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pt1_reset_ram\00", [18 x i8] zeroinitializer }, align 32
@pt1_reset_ram._entry_ptr = internal global ptr @pt1_reset_ram._entry, section ".printk_index", align 4
@pt1_do_enable_ram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 399, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not enable RAM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pt1_do_enable_ram\00", [46 x i8] zeroinitializer }, align 32
@pt1_do_enable_ram._entry_ptr = internal global ptr @pt1_do_enable_ram._entry, section ".printk_index", align 4
@pt1_configs = internal constant { [4 x %struct.pt1_config], [128 x i8] } { [4 x %struct.pt1_config] [%struct.pt1_config { %struct.i2c_board_info { [20 x i8] c"tc90522sat\00\00\00\00\00\00\00\00\00\00", i16 0, i16 27, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.tc90522_config zeroinitializer, %struct.i2c_board_info { [20 x i8] c"qm1d1b0004\00\00\00\00\00\00\00\00\00\00", i16 0, i16 96, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %union.pt1_tuner_config zeroinitializer }, %struct.pt1_config { %struct.i2c_board_info { [20 x i8] c"tc90522ter\00\00\00\00\00\00\00\00\00\00", i16 0, i16 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.tc90522_config zeroinitializer, %struct.i2c_board_info { [20 x i8] c"tda665x_earthpt1\00\00\00\00", i16 0, i16 97, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %union.pt1_tuner_config zeroinitializer }, %struct.pt1_config { %struct.i2c_board_info { [20 x i8] c"tc90522sat\00\00\00\00\00\00\00\00\00\00", i16 0, i16 25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.tc90522_config zeroinitializer, %struct.i2c_board_info { [20 x i8] c"qm1d1b0004\00\00\00\00\00\00\00\00\00\00", i16 0, i16 96, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %union.pt1_tuner_config zeroinitializer }, %struct.pt1_config { %struct.i2c_board_info { [20 x i8] c"tc90522ter\00\00\00\00\00\00\00\00\00\00", i16 0, i16 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.tc90522_config zeroinitializer, %struct.i2c_board_info { [20 x i8] c"tda665x_earthpt1\00\00\00\00", i16 0, i16 97, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %union.pt1_tuner_config zeroinitializer }], [128 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tc90522\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tc90522sat\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qm1d1b0004\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvb_pll\00", [24 x i8] zeroinitializer }, align 32
@pt1_init_frontends._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 1025, ptr @.str.29, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to init FE(%d).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pt1_init_frontends\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pt1_init_frontends._entry_ptr = internal global ptr @pt1_init_frontends._entry, section ".printk_index", align 4
@va1j5jf8007s_20mhz_configs = internal constant { [19 x [2 x i8]], [58 x i8] } { [19 x [2 x i8]] [[2 x i8] c"\04\02", [2 x i8] c"\0DU", [2 x i8] c"\11@", [2 x i8] c"\13\80", [2 x i8] c"\17\01", [2 x i8] c"\1C\0A", [2 x i8] c"\1D\AA", [2 x i8] c"\1E ", [2 x i8] c"\1F\88", [2 x i8] c"Q\B0", [2 x i8] c"R\89", [2 x i8] c"S\B3", [2 x i8] c"Z-", [2 x i8] c"[\D3", [2 x i8] c"\85i", [2 x i8] c"\87\04", [2 x i8] c"\8E\02", [2 x i8] c"\A3\F7", [2 x i8] c"\A5\C0"], [58 x i8] zeroinitializer }, align 32
@va1j5jf8007t_20mhz_configs = internal constant { [18 x [2 x i8]], [60 x i8] } { [18 x [2 x i8]] [[2 x i8] c"\03\90", [2 x i8] c"\14\8F", [2 x i8] c"\1C*", [2 x i8] c"\1D\A8", [2 x i8] c"\1E\A2", [2 x i8] c"\22\83", [2 x i8] c"1\0D", [2 x i8] c"2\E0", [2 x i8] c"9\D3", [2 x i8] c":\00", [2 x i8] c";\11", [2 x i8] c"<?", [2 x i8] c"\\@", [2 x i8] c"_\80", [2 x i8] c"u\02", [2 x i8] c"vN", [2 x i8] c"w\03", [2 x i8] c"\EF\01"], [60 x i8] zeroinitializer }, align 32
@va1j5jf8007s_25mhz_configs = internal constant { [18 x [2 x i8]], [60 x i8] } { [18 x [2 x i8]] [[2 x i8] c"\04\02", [2 x i8] c"\11@", [2 x i8] c"\13\80", [2 x i8] c"\17\01", [2 x i8] c"\1C\0A", [2 x i8] c"\1D\AA", [2 x i8] c"\1E ", [2 x i8] c"\1F\88", [2 x i8] c"Q\B0", [2 x i8] c"R\89", [2 x i8] c"S\B3", [2 x i8] c"Z-", [2 x i8] c"[\D3", [2 x i8] c"\85i", [2 x i8] c"\87\04", [2 x i8] c"\8E&", [2 x i8] c"\A3\F7", [2 x i8] c"\A5\C0"], [60 x i8] zeroinitializer }, align 32
@va1j5jf8007t_25mhz_configs = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\03\90", [2 x i8] c"\1C*", [2 x i8] c"\1D\A8", [2 x i8] c"\1E\A2", [2 x i8] c"\22\83", [2 x i8] c":\04", [2 x i8] c";\11", [2 x i8] c"<?", [2 x i8] c"\\@", [2 x i8] c"_\80", [2 x i8] c"u\0A", [2 x i8] c"vL", [2 x i8] c"w\03", [2 x i8] c"\EF\01"], [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tc90522ter\00", [21 x i8] zeroinitializer }, align 32
@pt1_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 1302, ptr @.str.33, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to resume PT1/PT2.\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pt1_resume\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pt1_resume._entry_ptr = internal global ptr @pt1_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"pt1_nr_tables\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 298, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"pt1_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1470, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 824, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1478, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1471, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"pt1_id_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1461, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"pt1_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1468, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1365, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1376, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"pt1_i2c_algo\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1195, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 513, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 460, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 464, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 330, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 354, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 368, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 382, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 399, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"pt1_configs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 128, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 979, i32 25 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 985, i32 26 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 992, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1001, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1025, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"va1j5jf8007s_20mhz_configs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 163, i32 17 }
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"va1j5jf8007t_20mhz_configs\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 177, i32 17 }
@___asan_gen_.178 = private unnamed_addr constant [27 x i8] c"va1j5jf8007s_25mhz_configs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 170, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant [27 x i8] c"va1j5jf8007t_25mhz_configs\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 185, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 264, i32 25 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [31 x i8] c"../drivers/media/pci/pt1/pt1.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1302, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_adapter_nr386, ptr @__UNIQUE_ID_adapter_nrtype385, ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_description389, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__UNIQUE_ID_nr_tablestype383, ptr @__exitcall_pt1_driver_exit, ptr @__initcall__kmod_earth_pt1__387_1478_pt1_driver_init6, ptr @__param_adapter_nr, ptr @__param_nr_tables, ptr @pt1_do_enable_ram._entry, ptr @pt1_do_enable_ram._entry_ptr, ptr @pt1_driver_exit, ptr @pt1_filter._entry, ptr @pt1_filter._entry.8, ptr @pt1_filter._entry_ptr, ptr @pt1_filter._entry_ptr.10, ptr @pt1_init_frontends._entry, ptr @pt1_init_frontends._entry_ptr, ptr @pt1_reset_pci._entry, ptr @pt1_reset_pci._entry_ptr, ptr @pt1_reset_ram._entry, ptr @pt1_reset_ram._entry_ptr, ptr @pt1_resume._entry, ptr @pt1_resume._entry_ptr, ptr @pt1_sync._entry, ptr @pt1_sync._entry_ptr, ptr @pt1_unlock._entry, ptr @pt1_unlock._entry_ptr, ptr @pt1_nr_tables, ptr @pt1_driver, ptr @adapter_nr, ptr @.str, ptr @.str.1, ptr @pt1_id_table, ptr @pt1_pm_ops, ptr @pt1_probe.__key, ptr @.str.2, ptr @pt1_probe.__key.3, ptr @pt1_i2c_algo, ptr @.str.4, ptr @pt1_filter._rs, ptr @.str.5, ptr @.str.6, ptr @pt1_filter._rs.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pt1_configs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @va1j5jf8007s_20mhz_configs, ptr @va1j5jf8007t_20mhz_configs, ptr @va1j5jf8007s_25mhz_configs, ptr @va1j5jf8007t_25mhz_configs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_nr_tables to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_filter._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_filter._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_filter._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_reset_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_reset_ram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_do_enable_ram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_configs to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_init_frontends._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va1j5jf8007s_20mhz_configs to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va1j5jf8007t_20mhz_configs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va1j5jf8007s_25mhz_configs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va1j5jf8007t_25mhz_configs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt1_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pt1_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pt1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @pt1_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.err_pci_disable_device_crit_edge, label %if.end4

if.end.err_pci_disable_device_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pci_disable_device

if.end4:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %call5 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.err_pci_disable_device_crit_edge, label %if.end8

if.end4.err_pci_disable_device_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pci_disable_device

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end8.err_pci_release_regions_crit_edge, label %if.end11

if.end8.err_pci_release_regions_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pci_release_regions

if.end11:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1512) #14
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.err_pci_iounmap_crit_edge, label %do.body

if.end11.err_pci_iounmap_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pci_iounmap

do.body:                                          ; preds = %if.end11
  %lock = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @pt1_probe.__key) #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call7.i.i, align 8
  %regs17 = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %regs17, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8474, i16 %4)
  %cmp18 = icmp ne i16 %4, 8474
  %cond = zext i1 %cmp18 to i32
  %fe_clk = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 12
  %5 = ptrtoint ptr %fe_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %fe_clk, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.body
  %i.020.i = phi i32 [ 0, %do.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1936) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.err.i.i_crit_edge, label %if.end.i.i

for.body.i.err.i.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i.i

if.end.i.i:                                       ; preds = %for.body.i
  %8 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %call7.i.i.i.i, align 8
  %voltage.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %voltage.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %voltage.i.i, align 4
  %sleep.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 17
  %10 = ptrtoint ptr %sleep.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %sleep.i.i, align 8
  %call2.i.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.err_kfree.i.i_crit_edge, label %if.end5.i.i

if.end.i.i.err_kfree.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_kfree.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %11 = inttoptr i32 %call2.i.i to ptr
  %buf6.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %buf6.i.i, align 8
  %upacket_count.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %upacket_count.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %upacket_count.i.i, align 4
  %packet_count.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %packet_count.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %packet_count.i.i, align 8
  %st_count.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %st_count.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %st_count.i.i, align 4
  %adap7.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 6
  %priv.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 6, i32 5
  %16 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i.i, ptr %priv.i.i, align 8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %call8.i.i = tail call i32 @dvb_register_adapter(ptr noundef %adap7.i.i, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef %dev.i.i, ptr noundef nonnull @adapter_nr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp.i.i, label %if.end5.i.i.err_free_page.i.i_crit_edge, label %if.end10.i.i

if.end5.i.i.err_free_page.i.i_crit_edge:          ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_page.i.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %demux11.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %demux11.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %demux11.i.i, align 8
  %priv12.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %priv12.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i.i, ptr %priv12.i.i, align 4
  %feednum.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %feednum.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 256, ptr %feednum.i.i, align 4
  %filternum.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %filternum.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 256, ptr %filternum.i.i, align 8
  %start_feed.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 7, i32 4
  %23 = ptrtoint ptr %start_feed.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pt1_start_feed, ptr %start_feed.i.i, align 8
  %stop_feed.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 7, i32 5
  %24 = ptrtoint ptr %stop_feed.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pt1_stop_feed, ptr %stop_feed.i.i, align 4
  %write_to_decoder.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 7, i32 6
  %25 = ptrtoint ptr %write_to_decoder.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %write_to_decoder.i.i, align 8
  %call13.i.i = tail call i32 @dvb_dmx_init(ptr noundef %demux11.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.end10.i.i.err_unregister_adapter.i.i_crit_edge, label %if.end16.i.i

if.end10.i.i.err_unregister_adapter.i.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unregister_adapter.i.i

if.end16.i.i:                                     ; preds = %if.end10.i.i
  %dmxdev17.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 9
  %filternum18.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 9, i32 4
  %26 = ptrtoint ptr %filternum18.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 256, ptr %filternum18.i.i, align 4
  %demux20.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 9, i32 3
  %27 = ptrtoint ptr %demux20.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %demux11.i.i, ptr %demux20.i.i, align 8
  %capabilities21.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %call7.i.i.i.i, i32 0, i32 9, i32 5
  %28 = ptrtoint ptr %capabilities21.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %capabilities21.i.i, align 8
  %call22.i.i = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev17.i.i, ptr noundef %adap7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %err_dmx_release.i.i, label %if.end16.i.i.pt1_alloc_adapter.exit.i_crit_edge

if.end16.i.i.pt1_alloc_adapter.exit.i_crit_edge:  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_alloc_adapter.exit.i

err_dmx_release.i.i:                              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dvb_dmx_release(ptr noundef %demux11.i.i) #11
  br label %err_unregister_adapter.i.i

err_unregister_adapter.i.i:                       ; preds = %err_dmx_release.i.i, %if.end10.i.i.err_unregister_adapter.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call13.i.i, %if.end10.i.i.err_unregister_adapter.i.i_crit_edge ], [ %call22.i.i, %err_dmx_release.i.i ]
  %call26.i.i = tail call i32 @dvb_unregister_adapter(ptr noundef %adap7.i.i) #11
  br label %err_free_page.i.i

err_free_page.i.i:                                ; preds = %err_unregister_adapter.i.i, %if.end5.i.i.err_free_page.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call8.i.i, %if.end5.i.i.err_free_page.i.i_crit_edge ], [ %ret.0.i.i, %err_unregister_adapter.i.i ]
  tail call void @free_pages(i32 noundef %call2.i.i, i32 noundef 0) #11
  br label %err_kfree.i.i

err_kfree.i.i:                                    ; preds = %err_free_page.i.i, %if.end.i.i.err_kfree.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %ret.1.i.i, %err_free_page.i.i ], [ -12, %if.end.i.i.err_kfree.i.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %err.i.i

err.i.i:                                          ; preds = %err_kfree.i.i, %for.body.i.err.i.i_crit_edge
  %ret.3.i.i = phi i32 [ %ret.2.i.i, %err_kfree.i.i ], [ -12, %for.body.i.err.i.i_crit_edge ]
  %29 = inttoptr i32 %ret.3.i.i to ptr
  br label %pt1_alloc_adapter.exit.i

pt1_alloc_adapter.exit.i:                         ; preds = %err.i.i, %if.end16.i.i.pt1_alloc_adapter.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %29, %err.i.i ], [ %call7.i.i.i.i, %if.end16.i.i.pt1_alloc_adapter.exit.i_crit_edge ]
  %cmp.i17.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %pt1_alloc_adapter.exit.i
  %30 = ptrtoint ptr %retval.0.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.020.i)
  %tobool.not21.i = icmp eq i32 %i.020.i, 0
  br i1 %tobool.not21.i, label %if.then.i.pt1_init_adapters.exit_crit_edge, label %while.body.i

if.then.i.pt1_init_adapters.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_init_adapters.exit

if.end.i:                                         ; preds = %pt1_alloc_adapter.exit.i
  %index.i = getelementptr inbounds %struct.pt1_adapter, ptr %retval.0.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i.020.i, ptr %index.i, align 4
  %arrayidx.i = getelementptr %struct.pt1, ptr %call7.i.i, i32 0, i32 4, i32 %i.020.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %if.end.i.do.body25_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.do.body25_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25

while.body.i:                                     ; preds = %if.then.i
  %dec.i = add nsw i32 %i.020.i, -1
  %arrayidx4.i = getelementptr %struct.pt1, ptr %call7.i.i, i32 0, i32 4, i32 %dec.i
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx4.i, align 4
  %demux.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %34, i32 0, i32 7
  %close.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %34, i32 0, i32 7, i32 0, i32 4
  %35 = ptrtoint ptr %close.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %close.i.i, align 8
  %call.i.i = tail call i32 %36(ptr noundef %demux.i.i) #11
  %dmxdev.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %34, i32 0, i32 9
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i.i) #11
  tail call void @dvb_dmx_release(ptr noundef %demux.i.i) #11
  %adap4.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %34, i32 0, i32 6
  %call5.i.i = tail call i32 @dvb_unregister_adapter(ptr noundef %adap4.i.i) #11
  %buf.i.i = getelementptr inbounds %struct.pt1_adapter, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf.i.i, align 8
  %39 = ptrtoint ptr %38 to i32
  tail call void @free_pages(i32 noundef %39, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.pt1_init_adapters.exit_crit_edge, label %while.body.i.1

while.body.i.pt1_init_adapters.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_init_adapters.exit

while.body.i.1:                                   ; preds = %while.body.i
  %dec.i.1 = add nsw i32 %i.020.i, -2
  %arrayidx4.i.1 = getelementptr %struct.pt1, ptr %call7.i.i, i32 0, i32 4, i32 %dec.i.1
  %40 = ptrtoint ptr %arrayidx4.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx4.i.1, align 4
  %demux.i.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %41, i32 0, i32 7
  %close.i.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %41, i32 0, i32 7, i32 0, i32 4
  %42 = ptrtoint ptr %close.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %close.i.i.1, align 8
  %call.i.i.1 = tail call i32 %43(ptr noundef %demux.i.i.1) #11
  %dmxdev.i.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %41, i32 0, i32 9
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i.i.1) #11
  tail call void @dvb_dmx_release(ptr noundef %demux.i.i.1) #11
  %adap4.i.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %41, i32 0, i32 6
  %call5.i.i.1 = tail call i32 @dvb_unregister_adapter(ptr noundef %adap4.i.i.1) #11
  %buf.i.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %41, i32 0, i32 2
  %44 = ptrtoint ptr %buf.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf.i.i.1, align 8
  %46 = ptrtoint ptr %45 to i32
  tail call void @free_pages(i32 noundef %46, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool.not.i.1 = icmp eq i32 %dec.i.1, 0
  br i1 %tobool.not.i.1, label %while.body.i.1.pt1_init_adapters.exit_crit_edge, label %while.body.i.2

while.body.i.1.pt1_init_adapters.exit_crit_edge:  ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_init_adapters.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.2 = add nsw i32 %i.020.i, -3
  %arrayidx4.i.2 = getelementptr %struct.pt1, ptr %call7.i.i, i32 0, i32 4, i32 %dec.i.2
  %47 = ptrtoint ptr %arrayidx4.i.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx4.i.2, align 4
  %demux.i.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %48, i32 0, i32 7
  %close.i.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %48, i32 0, i32 7, i32 0, i32 4
  %49 = ptrtoint ptr %close.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %close.i.i.2, align 8
  %call.i.i.2 = tail call i32 %50(ptr noundef %demux.i.i.2) #11
  %dmxdev.i.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %48, i32 0, i32 9
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i.i.2) #11
  tail call void @dvb_dmx_release(ptr noundef %demux.i.i.2) #11
  %adap4.i.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %48, i32 0, i32 6
  %call5.i.i.2 = tail call i32 @dvb_unregister_adapter(ptr noundef %adap4.i.i.2) #11
  %buf.i.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %buf.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf.i.i.2, align 8
  %53 = ptrtoint ptr %52 to i32
  tail call void @free_pages(i32 noundef %53, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %48) #11
  br label %pt1_init_adapters.exit

pt1_init_adapters.exit:                           ; preds = %while.body.i.2, %while.body.i.1.pt1_init_adapters.exit_crit_edge, %while.body.i.pt1_init_adapters.exit_crit_edge, %if.then.i.pt1_init_adapters.exit_crit_edge
  %cmp21 = icmp slt ptr %retval.0.i.i, null
  br i1 %cmp21, label %pt1_init_adapters.exit.err_kfree_crit_edge, label %pt1_init_adapters.exit.do.body25_crit_edge

pt1_init_adapters.exit.do.body25_crit_edge:       ; preds = %pt1_init_adapters.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25

pt1_init_adapters.exit.err_kfree_crit_edge:       ; preds = %pt1_init_adapters.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_kfree

do.body25:                                        ; preds = %pt1_init_adapters.exit.do.body25_crit_edge, %if.end.i.do.body25_crit_edge
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @pt1_probe.__key.3) #11
  %power = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 10
  %54 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %power, align 8
  %reset = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 11
  %55 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %reset, align 4
  tail call fastcc void @pt1_update_power(ptr noundef nonnull %call7.i.i)
  %i2c_adap29 = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 2
  %algo = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 2, i32 2
  %56 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @pt1_i2c_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 2, i32 3
  %57 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 2, i32 9, i32 1
  %58 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev, ptr %parent, align 8
  %name = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 2, i32 12
  %call32 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef 48) #11
  %driver_data.i.i146 = getelementptr inbounds %struct.pt1, ptr %call7.i.i, i32 0, i32 2, i32 9, i32 8
  %59 = ptrtoint ptr %driver_data.i.i146 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %driver_data.i.i146, align 4
  %call33 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.body25.err_pt1_cleanup_adapters_crit_edge, label %do.body25.for.body.i149_crit_edge

do.body25.for.body.i149_crit_edge:                ; preds = %do.body25
  br label %for.body.i149

do.body25.err_pt1_cleanup_adapters_crit_edge:     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pt1_cleanup_adapters

for.body.i149:                                    ; preds = %for.body.i149.for.body.i149_crit_edge, %do.body25.for.body.i149_crit_edge
  %i.03.i = phi i32 [ %inc.i147, %for.body.i149.for.body.i149_crit_edge ], [ 0, %do.body25.for.body.i149_crit_edge ]
  %shl.i.i = shl i32 %i.03.i, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %60 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #11
  %61 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs17, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %60) #11, !srcloc !126
  %inc.i147 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i148 = icmp eq i32 %inc.i147, 1024
  br i1 %exitcond.not.i148, label %for.body.i149.for.body.i154_crit_edge, label %for.body.i149.for.body.i149_crit_edge

for.body.i149.for.body.i149_crit_edge:            ; preds = %for.body.i149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i149

for.body.i149.for.body.i154_crit_edge:            ; preds = %for.body.i149
  br label %for.body.i154

for.body.i154:                                    ; preds = %for.body.i154.for.body.i154_crit_edge, %for.body.i149.for.body.i154_crit_edge
  %i.02.i = phi i32 [ %inc.i152, %for.body.i154.for.body.i154_crit_edge ], [ 0, %for.body.i149.for.body.i154_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %63 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs17, align 4
  %add.ptr.i.i.i151 = getelementptr i8, ptr %64, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i151, i32 0) #11, !srcloc !126
  %inc.i152 = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i153 = icmp eq i32 %inc.i152, 128
  br i1 %exitcond.not.i153, label %for.body.i154.for.body.i156_crit_edge, label %for.body.i154.for.body.i154_crit_edge

for.body.i154.for.body.i154_crit_edge:            ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i154

for.body.i154.for.body.i156_crit_edge:            ; preds = %for.body.i154
  br label %for.body.i156

for.body.i156:                                    ; preds = %if.end.i159.for.body.i156_crit_edge, %for.body.i154.for.body.i156_crit_edge
  %i.05.i = phi i32 [ %inc.i157, %if.end.i159.for.body.i156_crit_edge ], [ 0, %for.body.i154.for.body.i156_crit_edge ]
  %65 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs17, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %68 = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i155 = icmp eq i32 %68, 0
  br i1 %tobool.not.i155, label %if.end.i159, label %for.body.i156.for.body.i165_crit_edge

for.body.i156.for.body.i165_crit_edge:            ; preds = %for.body.i156
  br label %for.body.i165

if.end.i159:                                      ; preds = %for.body.i156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %69 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 134217728) #11, !srcloc !126
  %inc.i157 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i158 = icmp eq i32 %inc.i157, 57
  br i1 %exitcond.not.i158, label %pt1_sync.exit.thread, label %if.end.i159.for.body.i156_crit_edge

if.end.i159.for.body.i156_crit_edge:              ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i156

pt1_sync.exit.thread:                             ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11) #15
  br label %err_i2c_del_adapter

for.body.i165:                                    ; preds = %for.body.i165.for.body.i165_crit_edge, %for.body.i156.for.body.i165_crit_edge
  %i.02.i162 = phi i32 [ %inc.i163, %for.body.i165.for.body.i165_crit_edge ], [ 0, %for.body.i156.for.body.i165_crit_edge ]
  %73 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs17, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %76 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 134217728) #11, !srcloc !126
  %inc.i163 = add nuw nsw i32 %i.02.i162, 1
  %exitcond.not.i164 = icmp eq i32 %inc.i163, 57
  br i1 %exitcond.not.i164, label %pt1_identify.exit, label %for.body.i165.for.body.i165_crit_edge

for.body.i165.for.body.i165_crit_edge:            ; preds = %for.body.i165
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i165

pt1_identify.exit:                                ; preds = %for.body.i165
  %call44 = tail call fastcc i32 @pt1_unlock(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %pt1_identify.exit.err_i2c_del_adapter_crit_edge, label %if.end48

pt1_identify.exit.err_i2c_del_adapter_crit_edge:  ; preds = %pt1_identify.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_i2c_del_adapter

if.end48:                                         ; preds = %pt1_identify.exit
  %call49 = tail call fastcc i32 @pt1_reset_pci(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end48.err_i2c_del_adapter_crit_edge, label %if.end53

if.end48.err_i2c_del_adapter_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_i2c_del_adapter

if.end53:                                         ; preds = %if.end48
  %call54 = tail call fastcc i32 @pt1_reset_ram(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.err_i2c_del_adapter_crit_edge, label %if.end58

if.end53.err_i2c_del_adapter_crit_edge:           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_i2c_del_adapter

if.end58:                                         ; preds = %if.end53
  %call59 = tail call fastcc i32 @pt1_enable_ram(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end58.err_i2c_del_adapter_crit_edge, label %if.end63

if.end58.err_i2c_del_adapter_crit_edge:           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_i2c_del_adapter

if.end63:                                         ; preds = %if.end58
  tail call fastcc void @pt1_init_streams(ptr noundef nonnull %call7.i.i)
  %78 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %power, align 8
  tail call fastcc void @pt1_update_power(ptr noundef nonnull %call7.i.i)
  tail call void @msleep(i32 noundef 20) #11
  %79 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %reset, align 4
  tail call fastcc void @pt1_update_power(ptr noundef nonnull %call7.i.i)
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %call66 = tail call fastcc i32 @pt1_init_frontends(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end63.err_pt1_disable_ram_crit_edge, label %if.end70

if.end63.err_pt1_disable_ram_crit_edge:           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pt1_disable_ram

if.end70:                                         ; preds = %if.end63
  %call71 = tail call fastcc i32 @pt1_init_tables(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %err_pt1_cleanup_frontends, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_pt1_cleanup_frontends:                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @pt1_cleanup_frontends(ptr noundef nonnull %call7.i.i)
  br label %err_pt1_disable_ram

err_pt1_disable_ram:                              ; preds = %err_pt1_cleanup_frontends, %if.end63.err_pt1_disable_ram_crit_edge
  %ret.0 = phi i32 [ %call66, %if.end63.err_pt1_disable_ram_crit_edge ], [ %call71, %err_pt1_cleanup_frontends ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %80 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 2827) #11, !srcloc !126
  %82 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %power, align 8
  %83 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %reset, align 4
  tail call fastcc void @pt1_update_power(ptr noundef nonnull %call7.i.i)
  br label %err_i2c_del_adapter

err_i2c_del_adapter:                              ; preds = %err_pt1_disable_ram, %if.end58.err_i2c_del_adapter_crit_edge, %if.end53.err_i2c_del_adapter_crit_edge, %if.end48.err_i2c_del_adapter_crit_edge, %pt1_identify.exit.err_i2c_del_adapter_crit_edge, %pt1_sync.exit.thread
  %ret.1 = phi i32 [ %call44, %pt1_identify.exit.err_i2c_del_adapter_crit_edge ], [ %call49, %if.end48.err_i2c_del_adapter_crit_edge ], [ %call54, %if.end53.err_i2c_del_adapter_crit_edge ], [ %call59, %if.end58.err_i2c_del_adapter_crit_edge ], [ %ret.0, %err_pt1_disable_ram ], [ -5, %pt1_sync.exit.thread ]
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap29) #11
  br label %err_pt1_cleanup_adapters

err_pt1_cleanup_adapters:                         ; preds = %err_i2c_del_adapter, %do.body25.err_pt1_cleanup_adapters_crit_edge
  %ret.2 = phi i32 [ %call33, %do.body25.err_pt1_cleanup_adapters_crit_edge ], [ %ret.1, %err_i2c_del_adapter ]
  tail call fastcc void @pt1_cleanup_adapters(ptr noundef nonnull %call7.i.i)
  br label %err_kfree

err_kfree:                                        ; preds = %err_pt1_cleanup_adapters, %pt1_init_adapters.exit.err_kfree_crit_edge
  %ret.3 = phi i32 [ %30, %pt1_init_adapters.exit.err_kfree_crit_edge ], [ %ret.2, %err_pt1_cleanup_adapters ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err_pci_iounmap

err_pci_iounmap:                                  ; preds = %err_kfree, %if.end11.err_pci_iounmap_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_kfree ], [ -12, %if.end11.err_pci_iounmap_crit_edge ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call9) #11
  br label %err_pci_release_regions

err_pci_release_regions:                          ; preds = %err_pci_iounmap, %if.end8.err_pci_release_regions_crit_edge
  %ret.5 = phi i32 [ %ret.4, %err_pci_iounmap ], [ -5, %if.end8.err_pci_release_regions_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  br label %err_pci_disable_device

err_pci_disable_device:                           ; preds = %err_pci_release_regions, %if.end4.err_pci_disable_device_crit_edge, %if.end.err_pci_disable_device_crit_edge
  %ret.6 = phi i32 [ %call1, %if.end.err_pci_disable_device_crit_edge ], [ %call5, %if.end4.err_pci_disable_device_crit_edge ], [ %ret.5, %err_pci_release_regions ]
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %err_pci_disable_device, %if.end70.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end70.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %ret.6, %err_pci_disable_device ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pt1_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs1 = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %kthread = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kthread, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @kthread_stop(ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tables1.i = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %tables1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tables1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 2056) #11, !srcloc !126
  %10 = load i32, ptr @pt1_nr_tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.not.i = icmp eq i32 %10, 0
  br i1 %cmp7.not.i, label %if.end.pt1_cleanup_tables.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.pt1_cleanup_tables.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_cleanup_tables.exit

for.body.i:                                       ; preds = %pt1_cleanup_table.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %pt1_cleanup_table.exit.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i
  %i.06.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pt1_table, ptr %7, i32 %i.08.i, i32 2, i32 %i.06.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %addr.i.i.i = getelementptr %struct.pt1_table, ptr %7, i32 %i.08.i, i32 2, i32 %i.06.i.i, i32 1
  %13 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev.i.i.i.i, i32 noundef 4096, ptr noundef %12, i32 noundef %14, i32 noundef 0) #11
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 511
  br i1 %exitcond.not.i.i, label %pt1_cleanup_table.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

pt1_cleanup_table.exit.i:                         ; preds = %for.body.i.i
  %arrayidx.i = getelementptr %struct.pt1_table, ptr %7, i32 %i.08.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %addr.i.i = getelementptr %struct.pt1_table, ptr %7, i32 %i.08.i, i32 1
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev.i.i.i, i32 noundef 4096, ptr noundef %18, i32 noundef %20, i32 noundef 0) #11
  %inc.i = add nuw i32 %i.08.i, 1
  %23 = load i32, ptr @pt1_nr_tables, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %pt1_cleanup_table.exit.i.for.body.i_crit_edge, label %pt1_cleanup_table.exit.i.pt1_cleanup_tables.exit_crit_edge

pt1_cleanup_table.exit.i.pt1_cleanup_tables.exit_crit_edge: ; preds = %pt1_cleanup_table.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_cleanup_tables.exit

pt1_cleanup_table.exit.i.for.body.i_crit_edge:    ; preds = %pt1_cleanup_table.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

pt1_cleanup_tables.exit:                          ; preds = %pt1_cleanup_table.exit.i.pt1_cleanup_tables.exit_crit_edge, %if.end.pt1_cleanup_tables.exit_crit_edge
  tail call void @vfree(ptr noundef %7) #11
  tail call fastcc void @pt1_cleanup_frontends(ptr noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 2827) #11, !srcloc !126
  %power = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %power, align 8
  %reset = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %reset, align 4
  tail call fastcc void @pt1_update_power(ptr noundef %1)
  tail call fastcc void @pt1_cleanup_adapters(ptr noundef %1)
  %i2c_adap = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #11
  tail call void @kfree(ptr noundef %1) #11
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #11
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pt1_update_power(ptr noundef %pt1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 10
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power, align 8
  %reset = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 11
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %shl = select i1 %tobool.not, i32 8, i32 0
  %or = or i32 %shl, %1
  %lock = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %voltage = getelementptr inbounds %struct.pt1_adapter, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %voltage, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or1 = or i32 %or, 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or3 = or i32 %or, 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %bits.1 = phi i32 [ %or, %entry.sw.epilog_crit_edge ], [ %or3, %sw.bb2 ], [ %or1, %sw.bb ]
  %or5 = or i32 %bits.1, 16
  %arrayidx.1 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %voltage.1 = getelementptr inbounds %struct.pt1_adapter, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %voltage.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %voltage.1, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %12, label %sw.epilog.sw.epilog.1_crit_edge [
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb2.1
  ]

sw.epilog.sw.epilog.1_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.1

sw.bb2.1:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or3.1 = or i32 %bits.1, 22
  br label %sw.epilog.1

sw.bb.1:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or1.1 = or i32 %bits.1, 20
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb.1, %sw.bb2.1, %sw.epilog.sw.epilog.1_crit_edge
  %bits.1.1 = phi i32 [ %or5, %sw.epilog.sw.epilog.1_crit_edge ], [ %or3.1, %sw.bb2.1 ], [ %or1.1, %sw.bb.1 ]
  %or5.1 = or i32 %bits.1.1, 192
  %arrayidx.2 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %voltage.2 = getelementptr inbounds %struct.pt1_adapter, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %voltage.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %voltage.2, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %17, label %sw.epilog.1.sw.epilog.2_crit_edge [
    i32 0, label %sw.bb.2
    i32 1, label %sw.bb2.2
  ]

sw.epilog.1.sw.epilog.2_crit_edge:                ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.2

sw.bb2.2:                                         ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #13
  %or3.2 = or i32 %bits.1.1, 198
  br label %sw.epilog.2

sw.bb.2:                                          ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #13
  %or1.2 = or i32 %bits.1.1, 196
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.bb.2, %sw.bb2.2, %sw.epilog.1.sw.epilog.2_crit_edge
  %bits.1.2 = phi i32 [ %or5.1, %sw.epilog.1.sw.epilog.2_crit_edge ], [ %or3.2, %sw.bb2.2 ], [ %or1.2, %sw.bb.2 ]
  %or5.2 = or i32 %bits.1.2, 32
  %arrayidx.3 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3, align 4
  %voltage.3 = getelementptr inbounds %struct.pt1_adapter, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %voltage.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %voltage.3, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %22, label %sw.epilog.2.sw.epilog.3_crit_edge [
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb2.3
  ]

sw.epilog.2.sw.epilog.3_crit_edge:                ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.3

sw.bb2.3:                                         ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #13
  %or3.3 = or i32 %bits.1.2, 38
  br label %sw.epilog.3

sw.bb.3:                                          ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #13
  %or1.3 = or i32 %bits.1.2, 36
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.bb.3, %sw.bb2.3, %sw.epilog.2.sw.epilog.3_crit_edge
  %bits.1.3 = phi i32 [ %or5.2, %sw.epilog.2.sw.epilog.3_crit_edge ], [ %or3.3, %sw.bb2.3 ], [ %or1.3, %sw.bb.3 ]
  %or5.3 = or i32 %bits.1.3, 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %or5.3) #11
  %regs.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #11, !srcloc !126
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt1_unlock(ptr nocapture noundef readonly %pt1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 134217728) #11, !srcloc !126
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %.mask.1 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.1)
  %tobool.not.1 = icmp eq i32 %.mask.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %.mask.2 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.2)
  %tobool.not.2 = icmp eq i32 %.mask.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %11 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pt1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.2 ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt1_reset_pci(ptr nocapture noundef readonly %pt1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 257) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1) #11, !srcloc !126
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1 = icmp eq i32 %11, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.2 = icmp eq i32 %15, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.3 = icmp eq i32 %19, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.4 = icmp eq i32 %23, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.5 = icmp eq i32 %27, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.6 = icmp eq i32 %31, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.cleanup_crit_edge

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.7 = icmp eq i32 %35, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.cleanup_crit_edge

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.8 = icmp eq i32 %39, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.9 = icmp eq i32 %43, 0
  br i1 %tobool.not.9, label %if.end.9, label %if.end.8.cleanup_crit_edge

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %44 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pt1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.9 ], [ 0, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt1_reset_ram(ptr nocapture noundef readonly %pt1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 514) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 2) #11, !srcloc !126
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1 = icmp eq i32 %11, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.2 = icmp eq i32 %15, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %19 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.3 = icmp eq i32 %19, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %23 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.4 = icmp eq i32 %23, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %27 = and i32 %26, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.5 = icmp eq i32 %27, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %31 = and i32 %30, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.6 = icmp eq i32 %31, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.cleanup_crit_edge

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %35 = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.7 = icmp eq i32 %35, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.cleanup_crit_edge

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %39 = and i32 %38, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.8 = icmp eq i32 %39, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %43 = and i32 %42, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.9 = icmp eq i32 %43, 0
  br i1 %tobool.not.9, label %if.end.9, label %if.end.8.cleanup_crit_edge

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %44 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pt1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.9 ], [ 0, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt1_enable_ram(ptr nocapture noundef readonly %pt1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %0 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pt1, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8474, i16 %3)
  %cmp = icmp eq i16 %3, 8474
  %cond = select i1 %cmp, i32 128, i32 166
  %regs.i.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 33554432) #11, !srcloc !126
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i.for.cond1.preheader.i_crit_edge, %for.body
  %i.020.i = phi i32 [ 0, %for.body ], [ %inc8.i, %for.end.i.for.cond1.preheader.i_crit_edge ]
  br label %for.body3.i

for.cond1.i:                                      ; preds = %for.body3.i
  %inc.i = add nuw nsw i32 %j.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond1.i.for.body3.i_crit_edge

for.cond1.i.for.body3.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %j.019.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %for.cond1.i.for.body3.i_crit_edge ]
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %12 = xor i32 %11, %6
  %13 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6.not.i = icmp eq i32 %13, 0
  br i1 %cmp6.not.i, label %for.cond1.i, label %for.inc

for.end.i:                                        ; preds = %for.cond1.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %inc8.i = add nuw nsw i32 %i.020.i, 1
  %exitcond21.not.i = icmp eq i32 %inc8.i, 10
  br i1 %exitcond21.not.i, label %pt1_do_enable_ram.exit.thread, label %for.end.i.for.cond1.preheader.i_crit_edge

for.end.i.for.cond1.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

pt1_do_enable_ram.exit.thread:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pt1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #15
  br label %cleanup

for.inc:                                          ; preds = %for.body3.i
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %pt1_do_enable_ram.exit.thread
  %retval.0 = phi i32 [ -5, %pt1_do_enable_ram.exit.thread ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pt1_init_streams(ptr nocapture noundef readonly %pt1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 65536) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 131072) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 262144) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3, i32 524288) #11, !srcloc !126
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt1_init_frontends(ptr noundef %pt1) unnamed_addr #2 align 64 {
entry:
  %dcfg = alloca %struct.tc90522_config, align 4
  %tcfg = alloca %struct.qm1d1b0004_config, align 4
  %tcfg16 = alloca %struct.dvb_pll_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_i2c = getelementptr inbounds %struct.tc90522_config, ptr %dcfg, i32 0, i32 1
  %i2c_adap = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0134 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dcfg) #11
  %arrayidx = getelementptr [4 x %struct.pt1_config], ptr @pt1_configs, i32 0, i32 %i.0134
  %demod_cfg = getelementptr [4 x %struct.pt1_config], ptr @pt1_configs, i32 0, i32 %i.0134, i32 1
  %0 = call ptr @memcpy(ptr %dcfg, ptr %demod_cfg, i32 12)
  %1 = ptrtoint ptr %tuner_i2c to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %tuner_i2c, align 4
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %arrayidx, i32 0, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %conv = trunc i16 %3 to i8
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.23, ptr noundef %arrayidx, ptr noundef %i2c_adap, i8 noundef zeroext %conv, ptr noundef nonnull %dcfg) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %arrayidx2 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 %i.0134
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %demod_i2c_client = getelementptr inbounds %struct.pt1_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %demod_i2c_client to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %demod_i2c_client, align 8
  %name = getelementptr inbounds %struct.i2c_client, ptr %call, i32 0, i32 2
  %call4 = call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(11) @.str.24, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tcfg) #11
  %tuner_info = getelementptr [4 x %struct.pt1_config], ptr @pt1_configs, i32 0, i32 %i.0134, i32 2
  %tuner_cfg = getelementptr [4 x %struct.pt1_config], ptr @pt1_configs, i32 0, i32 %i.0134, i32 3
  %7 = call ptr @memcpy(ptr %tcfg, ptr %tuner_cfg, i32 12)
  %8 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dcfg, align 4
  %10 = ptrtoint ptr %tcfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %tcfg, align 4
  %11 = ptrtoint ptr %tuner_i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner_i2c, align 4
  %addr13 = getelementptr [4 x %struct.pt1_config], ptr @pt1_configs, i32 0, i32 %i.0134, i32 2, i32 2
  %13 = ptrtoint ptr %addr13 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr13, align 2
  %conv14 = trunc i16 %14 to i8
  %call15 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.25, ptr noundef %tuner_info, ptr noundef %12, i8 noundef zeroext %conv14, ptr noundef nonnull %tcfg) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tcfg) #11
  br label %if.end29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcfg16) #11
  %tuner_info18 = getelementptr [4 x %struct.pt1_config], ptr @pt1_configs, i32 0, i32 %i.0134, i32 2
  %15 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dcfg, align 4
  %17 = ptrtoint ptr %tcfg16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %tcfg16, align 4
  %18 = ptrtoint ptr %tuner_i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner_i2c, align 4
  %addr26 = getelementptr [4 x %struct.pt1_config], ptr @pt1_configs, i32 0, i32 %i.0134, i32 2, i32 2
  %20 = ptrtoint ptr %addr26 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr26, align 2
  %conv27 = trunc i16 %21 to i8
  %call28 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.26, ptr noundef %tuner_info18, ptr noundef %19, i8 noundef zeroext %conv27, ptr noundef nonnull %tcfg16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcfg16) #11
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then6
  %cl.0 = phi ptr [ %call28, %if.else ], [ %call15, %if.then6 ]
  %tobool30.not = icmp eq ptr %cl.0, null
  br i1 %tobool30.not, label %cleanup.thread126, label %if.end32

cleanup.thread126:                                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dcfg) #11
  br label %demod_release

if.end32:                                         ; preds = %if.end29
  %22 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2, align 4
  %tuner_i2c_client = getelementptr inbounds %struct.pt1_adapter, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %tuner_i2c_client to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cl.0, ptr %tuner_i2c_client, align 4
  %25 = load ptr, ptr %arrayidx2, align 4
  %26 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dcfg, align 4
  %set_voltage.i = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 25
  %28 = ptrtoint ptr %set_voltage.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_voltage.i, align 4
  %orig_set_voltage.i = getelementptr inbounds %struct.pt1_adapter, ptr %25, i32 0, i32 13
  %30 = ptrtoint ptr %orig_set_voltage.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %orig_set_voltage.i, align 8
  %sleep.i = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sleep.i, align 4
  %orig_sleep.i = getelementptr inbounds %struct.pt1_adapter, ptr %25, i32 0, i32 14
  %33 = ptrtoint ptr %orig_sleep.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %orig_sleep.i, align 4
  %init.i = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init.i, align 4
  %orig_init.i = getelementptr inbounds %struct.pt1_adapter, ptr %25, i32 0, i32 15
  %36 = ptrtoint ptr %orig_init.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %orig_init.i, align 8
  store ptr @pt1_set_voltage, ptr %set_voltage.i, align 4
  store ptr @pt1_sleep, ptr %sleep.i, align 4
  store ptr @pt1_wakeup, ptr %init.i, align 4
  %adap9.i = getelementptr inbounds %struct.pt1_adapter, ptr %25, i32 0, i32 6
  %call.i = call i32 @dvb_register_frontend(ptr noundef %adap9.i, ptr noundef %27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tuner_release, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dcfg) #11
  br label %do.end

for.inc:                                          ; preds = %if.end32
  %fe10.i = getelementptr inbounds %struct.pt1_adapter, ptr %25, i32 0, i32 10
  %37 = ptrtoint ptr %fe10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %27, ptr %fe10.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dcfg) #11
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call45 = call fastcc i32 @pt1_demod_block_init(ptr noundef %pt1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %for.end.do.end_crit_edge, label %for.end.cleanup73_crit_edge

for.end.cleanup73_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

tuner_release:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dcfg) #11
  %38 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx2, align 4
  %tuner_i2c_client52 = getelementptr inbounds %struct.pt1_adapter, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %tuner_i2c_client52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tuner_i2c_client52, align 4
  call void @dvb_module_release(ptr noundef %41) #11
  br label %demod_release

demod_release:                                    ; preds = %tuner_release, %cleanup.thread126
  %ret.0124 = phi i32 [ %call.i, %tuner_release ], [ -19, %cleanup.thread126 ]
  %42 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx2, align 4
  %demod_i2c_client55 = getelementptr inbounds %struct.pt1_adapter, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %demod_i2c_client55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %demod_i2c_client55, align 8
  call void @dvb_module_release(ptr noundef %45) #11
  br label %do.end

do.end:                                           ; preds = %demod_release, %for.end.do.end_crit_edge, %cleanup
  %i.0133 = phi i32 [ %i.0134, %cleanup ], [ %i.0134, %demod_release ], [ 4, %for.end.do.end_crit_edge ]
  %ret.1 = phi i32 [ -19, %cleanup ], [ %ret.0124, %demod_release ], [ %call45, %for.end.do.end_crit_edge ]
  %46 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pt1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %i.0133) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0133)
  %cmp57136.not = icmp eq i32 %i.0133, 0
  br i1 %cmp57136.not, label %do.end.cleanup73_crit_edge, label %for.body59

do.end.cleanup73_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

for.body59:                                       ; preds = %do.end
  %i.1137 = add nsw i32 %i.0133, -1
  %arrayidx61 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 %i.1137
  %48 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx61, align 4
  %fe62 = getelementptr inbounds %struct.pt1_adapter, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %fe62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fe62, align 4
  %call63 = call i32 @dvb_unregister_frontend(ptr noundef %51) #11
  %52 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx61, align 4
  %tuner_i2c_client66 = getelementptr inbounds %struct.pt1_adapter, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %tuner_i2c_client66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tuner_i2c_client66, align 4
  call void @dvb_module_release(ptr noundef %55) #11
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx61, align 4
  %demod_i2c_client69 = getelementptr inbounds %struct.pt1_adapter, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %demod_i2c_client69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %demod_i2c_client69, align 8
  call void @dvb_module_release(ptr noundef %59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0133)
  %cmp57 = icmp ugt i32 %i.0133, 1
  br i1 %cmp57, label %for.body59.1, label %for.body59.cleanup73_crit_edge

for.body59.cleanup73_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

for.body59.1:                                     ; preds = %for.body59
  %i.1137.1 = add nsw i32 %i.0133, -2
  %arrayidx61.1 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 %i.1137.1
  %60 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx61.1, align 4
  %fe62.1 = getelementptr inbounds %struct.pt1_adapter, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %fe62.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fe62.1, align 4
  %call63.1 = call i32 @dvb_unregister_frontend(ptr noundef %63) #11
  %64 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx61.1, align 4
  %tuner_i2c_client66.1 = getelementptr inbounds %struct.pt1_adapter, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %tuner_i2c_client66.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tuner_i2c_client66.1, align 4
  call void @dvb_module_release(ptr noundef %67) #11
  %68 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx61.1, align 4
  %demod_i2c_client69.1 = getelementptr inbounds %struct.pt1_adapter, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %demod_i2c_client69.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %demod_i2c_client69.1, align 8
  call void @dvb_module_release(ptr noundef %71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0133)
  %cmp57.1.not = icmp eq i32 %i.0133, 2
  br i1 %cmp57.1.not, label %for.body59.1.cleanup73_crit_edge, label %for.body59.2

for.body59.1.cleanup73_crit_edge:                 ; preds = %for.body59.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

for.body59.2:                                     ; preds = %for.body59.1
  %i.1137.2 = add nsw i32 %i.0133, -3
  %arrayidx61.2 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 %i.1137.2
  %72 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx61.2, align 4
  %fe62.2 = getelementptr inbounds %struct.pt1_adapter, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %fe62.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fe62.2, align 4
  %call63.2 = call i32 @dvb_unregister_frontend(ptr noundef %75) #11
  %76 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx61.2, align 4
  %tuner_i2c_client66.2 = getelementptr inbounds %struct.pt1_adapter, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %tuner_i2c_client66.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tuner_i2c_client66.2, align 4
  call void @dvb_module_release(ptr noundef %79) #11
  %80 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx61.2, align 4
  %demod_i2c_client69.2 = getelementptr inbounds %struct.pt1_adapter, ptr %81, i32 0, i32 11
  %82 = ptrtoint ptr %demod_i2c_client69.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %demod_i2c_client69.2, align 8
  call void @dvb_module_release(ptr noundef %83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0133)
  %cmp57.2 = icmp ugt i32 %i.0133, 3
  br i1 %cmp57.2, label %for.body59.3, label %for.body59.2.cleanup73_crit_edge

for.body59.2.cleanup73_crit_edge:                 ; preds = %for.body59.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

for.body59.3:                                     ; preds = %for.body59.2
  call void @__sanitizer_cov_trace_pc() #13
  %i.1137.3 = add nsw i32 %i.0133, -4
  %arrayidx61.3 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 %i.1137.3
  %84 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx61.3, align 4
  %fe62.3 = getelementptr inbounds %struct.pt1_adapter, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %fe62.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fe62.3, align 4
  %call63.3 = call i32 @dvb_unregister_frontend(ptr noundef %87) #11
  %88 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx61.3, align 4
  %tuner_i2c_client66.3 = getelementptr inbounds %struct.pt1_adapter, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %tuner_i2c_client66.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tuner_i2c_client66.3, align 4
  call void @dvb_module_release(ptr noundef %91) #11
  %92 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx61.3, align 4
  %demod_i2c_client69.3 = getelementptr inbounds %struct.pt1_adapter, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %demod_i2c_client69.3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %demod_i2c_client69.3, align 8
  call void @dvb_module_release(ptr noundef %95) #11
  br label %cleanup73

cleanup73:                                        ; preds = %for.body59.3, %for.body59.2.cleanup73_crit_edge, %for.body59.1.cleanup73_crit_edge, %for.body59.cleanup73_crit_edge, %do.end.cleanup73_crit_edge, %for.end.cleanup73_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup73_crit_edge ], [ %ret.1, %do.end.cleanup73_crit_edge ], [ %ret.1, %for.body59.3 ], [ %ret.1, %for.body59.2.cleanup73_crit_edge ], [ %ret.1, %for.body59.1.cleanup73_crit_edge ], [ %ret.1, %for.body59.cleanup73_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt1_init_tables(ptr nocapture noundef %pt1) unnamed_addr #2 align 64 {
entry:
  %first_pfn = alloca i32, align 4
  %pfn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_pfn) #11
  %0 = ptrtoint ptr %first_pfn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %first_pfn, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pfn) #11
  %1 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pfn, align 4, !annotation !129
  %2 = load i32, ptr @pt1_nr_tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4096) #11
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %retval.0.i = select i1 %4, i32 -1, i32 %5
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #16
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %regs.i.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 268435456) #11, !srcloc !126
  %call4 = call fastcc i32 @pt1_init_table(ptr noundef %pt1, ptr noundef nonnull %call1, ptr noundef nonnull %first_pfn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.cond.preheader, label %if.end3.while.end25_crit_edge

if.end3.while.end25_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end25

while.cond.preheader:                             ; preds = %if.end3
  %8 = load i32, ptr @pt1_nr_tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp854 = icmp ugt i32 %8, 1
  br i1 %cmp854, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.055 = phi i32 [ %inc15, %if.end13.while.body_crit_edge ], [ 1, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx9 = getelementptr %struct.pt1_table, ptr %call1, i32 %i.055
  %call10 = call fastcc i32 @pt1_init_table(ptr noundef %pt1, ptr noundef %arrayidx9, ptr noundef nonnull %pfn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %while.body.while.body23_crit_edge

while.body.while.body23_crit_edge:                ; preds = %while.body
  br label %while.body23

if.end13:                                         ; preds = %while.body
  %9 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pfn, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %sub = add i32 %i.055, -1
  %arrayidx14 = getelementptr %struct.pt1_table, ptr %call1, i32 %sub
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %13, align 4
  %inc15 = add nuw i32 %i.055, 1
  %15 = load i32, ptr @pt1_nr_tables, align 4
  %cmp8 = icmp ult i32 %inc15, %15
  br i1 %cmp8, label %if.end13.while.body_crit_edge, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa = phi i32 [ %8, %while.cond.preheader.while.end_crit_edge ], [ %15, %if.end13.while.end_crit_edge ]
  %16 = ptrtoint ptr %first_pfn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first_pfn, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %sub16 = add i32 %.lcssa, -1
  %arrayidx17 = getelementptr %struct.pt1_table, ptr %call1, i32 %sub16
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx17, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1073741836) #11, !srcloc !126
  %tables20 = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 5
  %26 = ptrtoint ptr %tables20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call1, ptr %tables20, align 4
  br label %cleanup

while.body23:                                     ; preds = %pt1_cleanup_table.exit.while.body23_crit_edge, %while.body.while.body23_crit_edge
  %i.257 = phi i32 [ %dec, %pt1_cleanup_table.exit.while.body23_crit_edge ], [ %i.055, %while.body.while.body23_crit_edge ]
  %dec = add i32 %i.257, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body23
  %i.06.i = phi i32 [ 0, %while.body23 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pt1_table, ptr %call1, i32 %dec, i32 2, i32 %i.06.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %addr.i.i = getelementptr %struct.pt1_table, ptr %call1, i32 %dec, i32 2, i32 %i.06.i, i32 1
  %29 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i.i, align 4
  %31 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pt1, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev.i.i.i, i32 noundef 4096, ptr noundef %28, i32 noundef %30, i32 noundef 0) #11
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 511
  br i1 %exitcond.not.i, label %pt1_cleanup_table.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

pt1_cleanup_table.exit:                           ; preds = %for.body.i
  %arrayidx24 = getelementptr %struct.pt1_table, ptr %call1, i32 %dec
  %33 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx24, align 4
  %addr.i = getelementptr %struct.pt1_table, ptr %call1, i32 %dec, i32 1
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i, align 4
  %37 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pt1, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef 4096, ptr noundef %34, i32 noundef %36, i32 noundef 0) #11
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %pt1_cleanup_table.exit.while.end25_crit_edge, label %pt1_cleanup_table.exit.while.body23_crit_edge

pt1_cleanup_table.exit.while.body23_crit_edge:    ; preds = %pt1_cleanup_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body23

pt1_cleanup_table.exit.while.end25_crit_edge:     ; preds = %pt1_cleanup_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end25

while.end25:                                      ; preds = %pt1_cleanup_table.exit.while.end25_crit_edge, %if.end3.while.end25_crit_edge
  %ret.064 = phi i32 [ %call4, %if.end3.while.end25_crit_edge ], [ %call10, %pt1_cleanup_table.exit.while.end25_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end25, %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.064, %while.end25 ], [ 0, %while.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfn) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_pfn) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pt1_cleanup_frontends(ptr nocapture noundef readonly %pt1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %fe.i = getelementptr inbounds %struct.pt1_adapter, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe.i, align 4
  %call.i = tail call i32 @dvb_unregister_frontend(ptr noundef %3) #11
  %tuner_i2c_client.i = getelementptr inbounds %struct.pt1_adapter, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %tuner_i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_i2c_client.i, align 4
  tail call void @dvb_module_release(ptr noundef %5) #11
  %demod_i2c_client.i = getelementptr inbounds %struct.pt1_adapter, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %demod_i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demod_i2c_client.i, align 8
  tail call void @dvb_module_release(ptr noundef %7) #11
  %arrayidx.1 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %fe.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %fe.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe.i.1, align 4
  %call.i.1 = tail call i32 @dvb_unregister_frontend(ptr noundef %11) #11
  %tuner_i2c_client.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %9, i32 0, i32 12
  %12 = ptrtoint ptr %tuner_i2c_client.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tuner_i2c_client.i.1, align 4
  tail call void @dvb_module_release(ptr noundef %13) #11
  %demod_i2c_client.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %9, i32 0, i32 11
  %14 = ptrtoint ptr %demod_i2c_client.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %demod_i2c_client.i.1, align 8
  tail call void @dvb_module_release(ptr noundef %15) #11
  %arrayidx.2 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %fe.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %fe.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fe.i.2, align 4
  %call.i.2 = tail call i32 @dvb_unregister_frontend(ptr noundef %19) #11
  %tuner_i2c_client.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %17, i32 0, i32 12
  %20 = ptrtoint ptr %tuner_i2c_client.i.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner_i2c_client.i.2, align 4
  tail call void @dvb_module_release(ptr noundef %21) #11
  %demod_i2c_client.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %17, i32 0, i32 11
  %22 = ptrtoint ptr %demod_i2c_client.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %demod_i2c_client.i.2, align 8
  tail call void @dvb_module_release(ptr noundef %23) #11
  %arrayidx.3 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  %fe.i.3 = getelementptr inbounds %struct.pt1_adapter, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %fe.i.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fe.i.3, align 4
  %call.i.3 = tail call i32 @dvb_unregister_frontend(ptr noundef %27) #11
  %tuner_i2c_client.i.3 = getelementptr inbounds %struct.pt1_adapter, ptr %25, i32 0, i32 12
  %28 = ptrtoint ptr %tuner_i2c_client.i.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner_i2c_client.i.3, align 4
  tail call void @dvb_module_release(ptr noundef %29) #11
  %demod_i2c_client.i.3 = getelementptr inbounds %struct.pt1_adapter, ptr %25, i32 0, i32 11
  %30 = ptrtoint ptr %demod_i2c_client.i.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %demod_i2c_client.i.3, align 8
  tail call void @dvb_module_release(ptr noundef %31) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pt1_cleanup_adapters(ptr nocapture noundef readonly %pt1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %demux.i = getelementptr inbounds %struct.pt1_adapter, ptr %1, i32 0, i32 7
  %close.i = getelementptr inbounds %struct.pt1_adapter, ptr %1, i32 0, i32 7, i32 0, i32 4
  %2 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %close.i, align 8
  %call.i = tail call i32 %3(ptr noundef %demux.i) #11
  %dmxdev.i = getelementptr inbounds %struct.pt1_adapter, ptr %1, i32 0, i32 9
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #11
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #11
  %adap4.i = getelementptr inbounds %struct.pt1_adapter, ptr %1, i32 0, i32 6
  %call5.i = tail call i32 @dvb_unregister_adapter(ptr noundef %adap4.i) #11
  %buf.i = getelementptr inbounds %struct.pt1_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf.i, align 8
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %1) #11
  %arrayidx.1 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %demux.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %8, i32 0, i32 7
  %close.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %8, i32 0, i32 7, i32 0, i32 4
  %9 = ptrtoint ptr %close.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %close.i.1, align 8
  %call.i.1 = tail call i32 %10(ptr noundef %demux.i.1) #11
  %dmxdev.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %8, i32 0, i32 9
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i.1) #11
  tail call void @dvb_dmx_release(ptr noundef %demux.i.1) #11
  %adap4.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %8, i32 0, i32 6
  %call5.i.1 = tail call i32 @dvb_unregister_adapter(ptr noundef %adap4.i.1) #11
  %buf.i.1 = getelementptr inbounds %struct.pt1_adapter, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %buf.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf.i.1, align 8
  %13 = ptrtoint ptr %12 to i32
  tail call void @free_pages(i32 noundef %13, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %8) #11
  %arrayidx.2 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %demux.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %15, i32 0, i32 7
  %close.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %15, i32 0, i32 7, i32 0, i32 4
  %16 = ptrtoint ptr %close.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %close.i.2, align 8
  %call.i.2 = tail call i32 %17(ptr noundef %demux.i.2) #11
  %dmxdev.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %15, i32 0, i32 9
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i.2) #11
  tail call void @dvb_dmx_release(ptr noundef %demux.i.2) #11
  %adap4.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %15, i32 0, i32 6
  %call5.i.2 = tail call i32 @dvb_unregister_adapter(ptr noundef %adap4.i.2) #11
  %buf.i.2 = getelementptr inbounds %struct.pt1_adapter, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %buf.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf.i.2, align 8
  %20 = ptrtoint ptr %19 to i32
  tail call void @free_pages(i32 noundef %20, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %15) #11
  %arrayidx.3 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3, align 4
  %demux.i.3 = getelementptr inbounds %struct.pt1_adapter, ptr %22, i32 0, i32 7
  %close.i.3 = getelementptr inbounds %struct.pt1_adapter, ptr %22, i32 0, i32 7, i32 0, i32 4
  %23 = ptrtoint ptr %close.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %close.i.3, align 8
  %call.i.3 = tail call i32 %24(ptr noundef %demux.i.3) #11
  %dmxdev.i.3 = getelementptr inbounds %struct.pt1_adapter, ptr %22, i32 0, i32 9
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i.3) #11
  tail call void @dvb_dmx_release(ptr noundef %demux.i.3) #11
  %adap4.i.3 = getelementptr inbounds %struct.pt1_adapter, ptr %22, i32 0, i32 6
  %call5.i.3 = tail call i32 @dvb_unregister_adapter(ptr noundef %adap4.i.3) #11
  %buf.i.3 = getelementptr inbounds %struct.pt1_adapter, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %buf.i.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf.i.3, align 8
  %27 = ptrtoint ptr %26 to i32
  tail call void @free_pages(i32 noundef %27, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %22) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_start_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -272
  %users = getelementptr i8, ptr %1, i32 624
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup5_crit_edge

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup5

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %lock.i = getelementptr inbounds %struct.pt1, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %kthread.i = getelementptr inbounds %struct.pt1, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kthread.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @pt1_thread, ptr noundef %5, i32 noundef -1, ptr noundef nonnull @.str.1) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %pt1_start_polling.exit, label %pt1_start_polling.exit.thread12

pt1_start_polling.exit.thread12:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @wake_up_process(ptr noundef %call.i) #11
  %8 = ptrtoint ptr %kthread.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %kthread.i, align 8
  br label %if.end

pt1_start_polling.exit:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call.i to i32
  %10 = ptrtoint ptr %kthread.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %kthread.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %cleanup5

if.end:                                           ; preds = %pt1_start_polling.exit.thread12, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %index = getelementptr i8, ptr %1, i32 -268
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %add.i = add i32 %14, 8
  %shl.i = shl nuw i32 1, %add.i
  %shl1.i = shl nuw i32 1, %14
  %or.i = or i32 %shl.i, %shl1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %regs.i.i = getelementptr inbounds %struct.pt1, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #11, !srcloc !126
  br label %cleanup5

cleanup5:                                         ; preds = %if.end, %pt1_start_polling.exit, %entry.cleanup5_crit_edge
  %retval.1 = phi i32 [ 0, %if.end ], [ 0, %entry.cleanup5_crit_edge ], [ %9, %pt1_start_polling.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_stop_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %users = getelementptr i8, ptr %1, i32 624
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -272
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %index = getelementptr i8, ptr %1, i32 -268
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %add.i = add i32 %7, 8
  %shl.i = shl nuw i32 1, %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %regs.i.i = getelementptr inbounds %struct.pt1, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #11, !srcloc !126
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %lock.i = getelementptr inbounds %struct.pt1, ptr %12, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %arrayidx.i = getelementptr %struct.pt1, ptr %12, i32 0, i32 4, i32 0
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %users.i = getelementptr inbounds %struct.pt1_adapter, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %users.i, align 8
  %arrayidx.1.i = getelementptr %struct.pt1, ptr %12, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.1.i, align 4
  %users.1.i = getelementptr inbounds %struct.pt1_adapter, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %users.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %users.1.i, align 8
  %add.1.i = add i32 %16, %20
  %arrayidx.2.i = getelementptr %struct.pt1, ptr %12, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.2.i, align 4
  %users.2.i = getelementptr inbounds %struct.pt1_adapter, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %users.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %users.2.i, align 8
  %add.2.i = add i32 %add.1.i, %24
  %arrayidx.3.i = getelementptr %struct.pt1, ptr %12, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.3.i, align 4
  %users.3.i = getelementptr inbounds %struct.pt1_adapter, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %users.3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %users.3.i, align 8
  %add.3.i = sub i32 0, %add.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add.3.i)
  %cmp1.i = icmp eq i32 %28, %add.3.i
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.then.pt1_stop_polling.exit_crit_edge

if.then.pt1_stop_polling.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_stop_polling.exit

land.lhs.true.i:                                  ; preds = %if.then
  %kthread.i = getelementptr inbounds %struct.pt1, ptr %12, i32 0, i32 6
  %29 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %kthread.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %land.lhs.true.i.pt1_stop_polling.exit_crit_edge, label %if.then.i

land.lhs.true.i.pt1_stop_polling.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_stop_polling.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %30) #11
  %31 = ptrtoint ptr %kthread.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %kthread.i, align 8
  br label %pt1_stop_polling.exit

pt1_stop_polling.exit:                            ; preds = %if.then.i, %land.lhs.true.i.pt1_stop_polling.exit_crit_edge, %if.then.pt1_stop_polling.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %if.end

if.end:                                           ; preds = %pt1_stop_polling.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_thread(ptr nocapture noundef %data) #2 align 64 {
entry:
  %was_frozen = alloca i8, align 1
  %delay = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %was_frozen) #11
  %0 = ptrtoint ptr %was_frozen to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %was_frozen, align 1, !annotation !129
  %call = tail call zeroext i1 @set_freezable() #11
  %call1114 = call zeroext i1 @kthread_freezable_should_stop(ptr noundef nonnull %was_frozen) #11
  br i1 %call1114, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.pt1, ptr %data, i32 0, i32 1
  %tables = getelementptr inbounds %struct.pt1, ptr %data, i32 0, i32 5
  %table_index = getelementptr inbounds %struct.pt1, ptr %data, i32 0, i32 7
  %buf_index = getelementptr inbounds %struct.pt1, ptr %data, i32 0, i32 8
  %arrayidx = getelementptr %struct.pt1, ptr %data, i32 0, i32 4, i32 0
  %arrayidx.1 = getelementptr %struct.pt1, ptr %data, i32 0, i32 4, i32 1
  %arrayidx.2 = getelementptr %struct.pt1, ptr %data, i32 0, i32 4, i32 2
  %arrayidx.3 = getelementptr %struct.pt1, ptr %data, i32 0, i32 4, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %1 = ptrtoint ptr %was_frozen to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %was_frozen, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %for.body.preheader

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.preheader:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %users = getelementptr inbounds %struct.pt1_adapter, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  %shl.i112 = select i1 %tobool2.not, i32 256, i32 257
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  call void @arm_heavy_mb() #11
  %7 = call i32 @llvm.bswap.i32(i32 %shl.i112) #11
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #11, !srcloc !126
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %users.1 = getelementptr inbounds %struct.pt1_adapter, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %users.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %users.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.1 = icmp eq i32 %13, 0
  %shl.i112.1 = select i1 %tobool2.not.1, i32 512, i32 514
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  call void @arm_heavy_mb() #11
  %14 = call i32 @llvm.bswap.i32(i32 %shl.i112.1) #11
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %16, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 %14) #11, !srcloc !126
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 4
  %users.2 = getelementptr inbounds %struct.pt1_adapter, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %users.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %users.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.2 = icmp eq i32 %20, 0
  %shl.i112.2 = select i1 %tobool2.not.2, i32 1024, i32 1028
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  call void @arm_heavy_mb() #11
  %21 = call i32 @llvm.bswap.i32(i32 %shl.i112.2) #11
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %23, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 %21) #11, !srcloc !126
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  %users.3 = getelementptr inbounds %struct.pt1_adapter, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %users.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %users.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not.3 = icmp eq i32 %27, 0
  %shl.i112.3 = select i1 %tobool2.not.3, i32 2048, i32 2056
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  call void @arm_heavy_mb() #11
  %28 = call i32 @llvm.bswap.i32(i32 %shl.i112.3) #11
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %30, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3, i32 %28) #11, !srcloc !126
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %while.body.if.end_crit_edge
  %31 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tables, align 4
  %33 = ptrtoint ptr %table_index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %table_index, align 4
  %35 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_index, align 8
  %arrayidx6 = getelementptr %struct.pt1_table, ptr %32, i32 %34, i32 2, i32 %36
  %37 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx6, align 4
  %arrayidx.i = getelementptr [1024 x i32], ptr %38, i32 0, i32 1023
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.then10, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.0117.i = phi i32 [ %inc74.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr [1024 x i32], ptr %38, i32 0, i32 %i.0117.i
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx2.i, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #11
  %shr.i = lshr i32 %43, 29
  %sub.i = add nsw i32 %shr.i, -1
  %44 = add i32 %43, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %for.body.i.for.inc.i_crit_edge, label %if.end6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.body.i
  %arrayidx7.i = getelementptr %struct.pt1, ptr %data, i32 0, i32 4, i32 %sub.i
  %46 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx7.i, align 4
  %48 = and i32 %43, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool9.not.i = icmp eq i32 %48, 0
  %upacket_count11.i = getelementptr inbounds %struct.pt1_adapter, ptr %47, i32 0, i32 3
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %upacket_count11.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %upacket_count11.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end6.i
  %50 = ptrtoint ptr %upacket_count11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %upacket_count11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool12.not.i = icmp eq i32 %51, 0
  br i1 %tobool12.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end15.i:                                       ; preds = %if.else.i.if.end15.i_crit_edge, %if.then10.i
  %52 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool18.not.i = icmp eq i32 %52, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end24.i_crit_edge, label %if.then19.i

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end15.i
  %call.i = call i32 @___ratelimit(ptr noundef nonnull @pt1_filter._rs, ptr noundef nonnull @__func__.pt1_filter) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool20.not.i, label %if.then19.i.if.end24.i_crit_edge, label %do.end.i

if.then19.i.if.end24.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

do.end.i:                                         ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %table_index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %table_index, align 4
  %55 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_index, align 8
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %54, i32 noundef %56) #15
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %if.then19.i.if.end24.i_crit_edge, %if.end15.i.if.end24.i_crit_edge
  %shr25.i = lshr i32 %43, 26
  %and26.i = and i32 %shr25.i, 7
  %st_count.i = getelementptr inbounds %struct.pt1_adapter, ptr %47, i32 0, i32 5
  %57 = ptrtoint ptr %st_count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %st_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp27.not.i = icmp eq i32 %58, -1
  br i1 %cmp27.not.i, label %if.end24.i.if.end41.i_crit_edge, label %land.lhs.true.i

if.end24.i.if.end41.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %add.i108 = add nuw i32 %58, 1
  %and29.i = and i32 %add.i108, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and26.i, i32 %and29.i)
  %cmp30.not.i = icmp eq i32 %and26.i, %and29.i
  br i1 %cmp30.not.i, label %land.lhs.true.i.if.end41.i_crit_edge, label %if.then31.i

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then31.i:                                      ; preds = %land.lhs.true.i
  %call32.i = call i32 @___ratelimit(ptr noundef nonnull @pt1_filter._rs.7, ptr noundef nonnull @__func__.pt1_filter) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then31.i.if.end41.i_crit_edge, label %do.end37.i

if.then31.i.if.end41.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

do.end37.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %sub.i) #15
  br label %if.end41.i

if.end41.i:                                       ; preds = %do.end37.i, %if.then31.i.if.end41.i_crit_edge, %land.lhs.true.i.if.end41.i_crit_edge, %if.end24.i.if.end41.i_crit_edge
  %59 = ptrtoint ptr %st_count.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and26.i, ptr %st_count.i, align 4
  %buf43.i = getelementptr inbounds %struct.pt1_adapter, ptr %47, i32 0, i32 2
  %60 = ptrtoint ptr %buf43.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf43.i, align 8
  %packet_count.i = getelementptr inbounds %struct.pt1_adapter, ptr %47, i32 0, i32 4
  %62 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %packet_count.i, align 8
  %mul.i = mul i32 %63, 188
  %64 = ptrtoint ptr %upacket_count11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %upacket_count11.i, align 4
  %mul45.i = mul i32 %65, 3
  %add46.i = add i32 %mul45.i, %mul.i
  %shr47.i = lshr i32 %43, 16
  %conv.i = trunc i32 %shr47.i to i8
  %arrayidx48.i = getelementptr i8, ptr %61, i32 %add46.i
  %66 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv.i, ptr %arrayidx48.i, align 1
  %shr49.i = lshr i32 %43, 8
  %conv50.i = trunc i32 %shr49.i to i8
  %add51.i = add i32 %add46.i, 1
  %arrayidx52.i = getelementptr i8, ptr %61, i32 %add51.i
  %67 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv50.i, ptr %arrayidx52.i, align 1
  %68 = load i32, ptr %upacket_count11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %68)
  %cmp54.not.i = icmp eq i32 %68, 62
  br i1 %cmp54.not.i, label %if.end41.i.if.end60.i_crit_edge, label %if.then56.i

if.end41.i.if.end60.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv57.i = trunc i32 %43 to i8
  %add58.i = add i32 %add46.i, 2
  %arrayidx59.i = getelementptr i8, ptr %61, i32 %add58.i
  %69 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv57.i, ptr %arrayidx59.i, align 1
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.end41.i.if.end60.i_crit_edge
  %70 = ptrtoint ptr %upacket_count11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %upacket_count11.i, align 4
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr %upacket_count11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %inc.i)
  %cmp62.i = icmp sgt i32 %inc.i, 62
  br i1 %cmp62.i, label %if.then64.i, label %if.end60.i.for.inc.i_crit_edge

if.end60.i.for.inc.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then64.i:                                      ; preds = %if.end60.i
  %72 = ptrtoint ptr %upacket_count11.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %upacket_count11.i, align 4
  %73 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %packet_count.i, align 8
  %inc67.i = add i32 %74, 1
  store i32 %inc67.i, ptr %packet_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc67.i)
  %cmp68.i = icmp sgt i32 %inc67.i, 20
  br i1 %cmp68.i, label %if.then70.i, label %if.then64.i.for.inc.i_crit_edge

if.then64.i.for.inc.i_crit_edge:                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #13
  %demux.i = getelementptr inbounds %struct.pt1_adapter, ptr %47, i32 0, i32 7
  call void @dvb_dmx_swfilter_packets(ptr noundef %demux.i, ptr noundef %61, i32 noundef 21) #11
  %75 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %packet_count.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then70.i, %if.then64.i.for.inc.i_crit_edge, %if.end60.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc74.i = add nuw nsw i32 %i.0117.i, 1
  %exitcond.not.i = icmp eq i32 %inc74.i, 1024
  br i1 %exitcond.not.i, label %if.end80, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %delay) #11
  %76 = ptrtoint ptr %delay to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 10000000, ptr %delay, align 8
  br label %__here

__here:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %77 = call i32 @llvm.read_register.i32(metadata !115) #11
  %and.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 212
  %81 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 ptrtoint (ptr blockaddress(@pt1_thread, %__here) to i32), ptr %task_state_change, align 4
  %82 = load ptr, ptr %task, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 1, ptr %82, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !131
  %call79 = call i32 @schedule_hrtimeout_range(ptr noundef nonnull %delay, i64 noundef 2000000, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %delay) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then84, %if.end80.while.cond.backedge_crit_edge, %__here
  %call1 = call zeroext i1 @kthread_freezable_should_stop(ptr noundef nonnull %was_frozen) #11
  br i1 %call1, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end80:                                         ; preds = %for.inc.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %arrayidx.i, align 4
  %85 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_index, align 8
  %inc82 = add i32 %86, 1
  store i32 %inc82, ptr %buf_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %inc82)
  %cmp83 = icmp sgt i32 %inc82, 510
  br i1 %cmp83, label %if.then84, label %if.end80.while.cond.backedge_crit_edge

if.end80.while.cond.backedge_crit_edge:           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  call void @arm_heavy_mb() #11
  %87 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 536870912) #11, !srcloc !126
  %89 = ptrtoint ptr %buf_index to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %buf_index, align 8
  %90 = ptrtoint ptr %table_index to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %table_index, align 4
  %inc87 = add i32 %91, 1
  %92 = load i32, ptr @pt1_nr_tables, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc87, i32 %92)
  %cmp88.not = icmp ult i32 %inc87, %92
  %spec.store.select = select i1 %cmp88.not, i32 %inc87, i32 0
  %93 = ptrtoint ptr %table_index to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %spec.store.select, ptr %table_index, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %was_frozen) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_freezable_should_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %addr.addr.i = alloca i32, align 4
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp83 = icmp sgt i32 %num, 0
  br i1 %cmp83, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regs.i.i.i = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 1
  %i2c_running.i = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.084
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.084, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  %add = add nsw i32 %i.084, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp1 = icmp sge i32 %add, %num
  %arrayidx5 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %tobool7.not79 = icmp eq ptr %arrayidx5, null
  %tobool7.not = or i1 %cmp1, %tobool7.not79
  br i1 %tobool7.not, label %if.end.if.else28_crit_edge, label %land.lhs.true

if.end.if.else28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else28

land.lhs.true:                                    ; preds = %if.end
  %flags8 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %5 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags8, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool11.not = icmp eq i16 %7, 0
  br i1 %tobool11.not, label %land.lhs.true.if.else28_crit_edge, label %if.then12

land.lhs.true.if.else28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else28

if.then12:                                        ; preds = %land.lhs.true
  %len13 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %8 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp15 = icmp ugt i16 %9, 4
  br i1 %cmp15, label %if.then12.cleanup_crit_edge, label %if.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.then12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #11, !srcloc !126
  %12 = ptrtoint ptr %i2c_running.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i2c_running.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end18.pt1_i2c_begin.exit_crit_edge

if.end18.pt1_i2c_begin.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_i2c_begin.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.i, i32 35652608) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21.i, i32 52692992) #11, !srcloc !126
  %18 = ptrtoint ptr %i2c_running.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %i2c_running.i, align 8
  br label %pt1_i2c_begin.exit

pt1_i2c_begin.exit:                               ; preds = %if.then.i, %if.end18.pt1_i2c_begin.exit_crit_edge
  %addr.0.i = phi i32 [ 1, %if.end18.pt1_i2c_begin.exit_crit_edge ], [ 3, %if.then.i ]
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %addr.0.i, ptr %addr, align 4
  call fastcc void @pt1_i2c_write_msg(ptr noundef %1, i32 noundef %addr.0.i, ptr noundef nonnull %addr, ptr noundef %arrayidx)
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.addr.i)
  %add.i.i = add i32 %21, 1
  %shl.i.i.i = shl i32 %21, 18
  %or.i.i.i = or i32 %add.i.i, %shl.i.i.i
  %or10.i.i.i = or i32 %or.i.i.i, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %or10.i.i.i) #11
  %23 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %22) #11, !srcloc !126
  %add2.i.i = add i32 %21, 2
  %shl.i14.i.i = shl i32 %add.i.i, 18
  %or.i15.i.i = or i32 %add2.i.i, %shl.i14.i.i
  %or11.i.i.i = or i32 %or.i15.i.i, 9216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i.i) #11
  %26 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i18.i.i = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18.i.i, i32 %25) #11, !srcloc !126
  %add4.i.i = add i32 %21, 3
  %shl.i19.i.i = shl i32 %add2.i.i, 18
  %or5.i.i.i = or i32 %add4.i.i, %shl.i19.i.i
  %or11.i22.i.i = or i32 %or5.i.i.i, 11264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %28 = tail call i32 @llvm.bswap.i32(i32 %or11.i22.i.i) #11
  %29 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i24.i.i = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24.i.i, i32 %28) #11, !srcloc !126
  %31 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add4.i.i, ptr %addr.addr.i, align 4
  %32 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx5, align 4
  %conv.i = zext i16 %33 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %or.i = or i32 %shl.i, 1
  call fastcc void @pt1_i2c_write_byte(ptr noundef %1, i32 noundef %add4.i.i, ptr noundef nonnull %addr.addr.i, i32 noundef %or.i) #11
  %34 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %addr.addr.promoted.i = load i32, ptr %addr.addr.i, align 4
  %35 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp16.not.i = icmp eq i16 %36, 0
  br i1 %cmp16.not.i, label %pt1_i2c_begin.exit.pt1_i2c_read_msg.exit_crit_edge, label %for.body.preheader.i

pt1_i2c_begin.exit.pt1_i2c_read_msg.exit_crit_edge: ; preds = %pt1_i2c_begin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_i2c_read_msg.exit

for.body.preheader.i:                             ; preds = %pt1_i2c_begin.exit
  %conv215.i = zext i16 %36 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %pt1_i2c_read_byte.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %conv219.i = phi i32 [ %conv2.i, %pt1_i2c_read_byte.exit.i.for.body.i_crit_edge ], [ %conv215.i, %for.body.preheader.i ]
  %i.018.i = phi i32 [ %inc.i, %pt1_i2c_read_byte.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add4.i11.i1417.i = phi i32 [ %add4.i11.i.i, %pt1_i2c_read_byte.exit.i.for.body.i_crit_edge ], [ %addr.addr.promoted.i, %for.body.preheader.i ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i
  %i.016.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %addr.addr.015.i.i = phi i32 [ %add4.i11.i1417.i, %for.body.i ], [ %add6.i.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add.i.i.i = add i32 %addr.addr.015.i.i, 1
  %shl.i.i.i.i = shl i32 %addr.addr.015.i.i, 18
  %or5.i.i.i.i = or i32 %shl.i.i.i.i, %add.i.i.i
  %or10.i.i.i.i = or i32 %or5.i.i.i.i, 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %or10.i.i.i.i) #11
  %38 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %37) #11, !srcloc !126
  %add2.i.i.i = add i32 %addr.addr.015.i.i, 2
  %shl.i19.i.i.i = shl i32 %add.i.i.i, 18
  %or.i20.i.i.i = or i32 %add2.i.i.i, %shl.i19.i.i.i
  %or10.i21.i.i.i = or i32 %or.i20.i.i.i, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %40 = tail call i32 @llvm.bswap.i32(i32 %or10.i21.i.i.i) #11
  %41 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i23.i.i.i = getelementptr i8, ptr %42, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23.i.i.i, i32 %40) #11, !srcloc !126
  %add4.i.i.i = add i32 %addr.addr.015.i.i, 3
  %shl.i24.i.i.i = shl i32 %add2.i.i.i, 18
  %or3.i.i.i.i = or i32 %add4.i.i.i, %shl.i24.i.i.i
  %or10.i26.i.i.i = or i32 %or3.i.i.i.i, 12288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %or10.i26.i.i.i) #11
  %44 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i28.i.i.i = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i.i.i, i32 %43) #11, !srcloc !126
  %add6.i.i.i = add i32 %addr.addr.015.i.i, 4
  %shl.i29.i.i.i = shl i32 %add4.i.i.i, 18
  %or5.i31.i.i.i = or i32 %add6.i.i.i, %shl.i29.i.i.i
  %or10.i32.i.i.i = or i32 %or5.i31.i.i.i, 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %46 = tail call i32 @llvm.bswap.i32(i32 %or10.i32.i.i.i) #11
  %47 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i34.i.i.i = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34.i.i.i, i32 %46) #11, !srcloc !126
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %pt1_i2c_read_byte.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

pt1_i2c_read_byte.exit.i:                         ; preds = %for.body.i.i
  %sub.i = add nsw i32 %conv219.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.018.i, i32 %sub.i)
  %cmp6.not.i = icmp eq i32 %i.018.i, %sub.i
  %add.i3.i.i = add i32 %addr.addr.015.i.i, 5
  %shl.i.i4.i.i = shl i32 %add6.i.i.i, 18
  %shl9.i.i.i.i = select i1 %cmp6.not.i, i32 0, i32 1024
  %or5.i.i5.i.i = or i32 %shl9.i.i.i.i, %add.i3.i.i
  %or10.i.i6.i.i = or i32 %or5.i.i5.i.i, %shl.i.i4.i.i
  %or11.i.i.i.i = or i32 %or10.i.i6.i.i, 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %49 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i.i.i) #11
  %50 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i8.i.i = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i8.i.i, i32 %49) #11, !srcloc !126
  %add2.i9.i.i = add i32 %addr.addr.015.i.i, 6
  %shl.i16.i.i.i = shl i32 %add.i3.i.i, 18
  %or.i17.i.i.i = or i32 %shl9.i.i.i.i, %add2.i9.i.i
  %or10.i20.i.i.i = or i32 %or.i17.i.i.i, %shl.i16.i.i.i
  %or11.i21.i.i.i = or i32 %or10.i20.i.i.i, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %52 = tail call i32 @llvm.bswap.i32(i32 %or11.i21.i.i.i) #11
  %53 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i23.i10.i.i = getelementptr i8, ptr %54, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23.i10.i.i, i32 %52) #11, !srcloc !126
  %add4.i11.i.i = add i32 %addr.addr.015.i.i, 7
  %shl.i24.i12.i.i = shl i32 %add2.i9.i.i, 18
  %or5.i26.i.i.i = or i32 %shl9.i.i.i.i, %add4.i11.i.i
  %or10.i29.i.i.i = or i32 %or5.i26.i.i.i, %shl.i24.i12.i.i
  %or11.i30.i.i.i = or i32 %or10.i29.i.i.i, 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %55 = tail call i32 @llvm.bswap.i32(i32 %or11.i30.i.i.i) #11
  %56 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i32.i.i.i = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i.i.i, i32 %55) #11, !srcloc !126
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %58 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %len13, align 4
  %conv2.i = zext i16 %59 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv2.i
  br i1 %cmp.i, label %pt1_i2c_read_byte.exit.i.for.body.i_crit_edge, label %pt1_i2c_read_byte.exit.i.pt1_i2c_read_msg.exit_crit_edge

pt1_i2c_read_byte.exit.i.pt1_i2c_read_msg.exit_crit_edge: ; preds = %pt1_i2c_read_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_i2c_read_msg.exit

pt1_i2c_read_byte.exit.i.for.body.i_crit_edge:    ; preds = %pt1_i2c_read_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

pt1_i2c_read_msg.exit:                            ; preds = %pt1_i2c_read_byte.exit.i.pt1_i2c_read_msg.exit_crit_edge, %pt1_i2c_begin.exit.pt1_i2c_read_msg.exit_crit_edge
  %add4.i11.i14.lcssa.i = phi i32 [ %addr.addr.promoted.i, %pt1_i2c_begin.exit.pt1_i2c_read_msg.exit_crit_edge ], [ %add4.i11.i.i, %pt1_i2c_read_byte.exit.i.pt1_i2c_read_msg.exit_crit_edge ]
  %60 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add4.i11.i14.lcssa.i, ptr %addr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i)
  %call19 = tail call fastcc i32 @pt1_i2c_end(ptr noundef %1, i32 noundef %add4.i11.i14.lcssa.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %pt1_i2c_read_msg.exit.cleanup_crit_edge, label %if.end23

pt1_i2c_read_msg.exit.cleanup_crit_edge:          ; preds = %pt1_i2c_read_msg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %pt1_i2c_read_msg.exit
  %61 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool25.not80 = icmp eq i16 %9, 0
  br i1 %tobool25.not80, label %if.end23.for.inc_crit_edge, label %while.body.lr.ph

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.body.lr.ph:                                 ; preds = %if.end23
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #11
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %65 = zext i16 %9 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %indvars.iv = phi i32 [ %65, %while.body.lr.ph ], [ %66, %while.body.while.body_crit_edge ]
  %word.082 = phi i32 [ %64, %while.body.lr.ph ], [ %shr, %while.body.while.body_crit_edge ]
  %66 = add nsw i32 %indvars.iv, -1
  %conv26 = trunc i32 %word.082 to i8
  %67 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf, align 4
  %arrayidx27 = getelementptr i8, ptr %68, i32 %66
  %69 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv26, ptr %arrayidx27, align 1
  %shr = lshr i32 %word.082, 8
  %tobool25.not.wide = icmp eq i32 %66, 0
  br i1 %tobool25.not.wide, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else28:                                        ; preds = %land.lhs.true.if.else28_crit_edge, %if.end.if.else28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %70 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i71 = getelementptr i8, ptr %71, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i71, i32 0) #11, !srcloc !126
  %72 = ptrtoint ptr %i2c_running.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i2c_running.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i73 = icmp eq i32 %73, 0
  br i1 %tobool.not.i73, label %if.then.i76, label %if.else28.pt1_i2c_begin.exit78_crit_edge

if.else28.pt1_i2c_begin.exit78_crit_edge:         ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  br label %pt1_i2c_begin.exit78

if.then.i76:                                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %74 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i19.i74 = getelementptr i8, ptr %75, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.i74, i32 35652608) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %76 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i21.i75 = getelementptr i8, ptr %77, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21.i75, i32 52692992) #11, !srcloc !126
  %78 = ptrtoint ptr %i2c_running.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %i2c_running.i, align 8
  br label %pt1_i2c_begin.exit78

pt1_i2c_begin.exit78:                             ; preds = %if.then.i76, %if.else28.pt1_i2c_begin.exit78_crit_edge
  %addr.0.i77 = phi i32 [ 1, %if.else28.pt1_i2c_begin.exit78_crit_edge ], [ 3, %if.then.i76 ]
  %79 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %addr.0.i77, ptr %addr, align 4
  call fastcc void @pt1_i2c_write_msg(ptr noundef %1, i32 noundef %addr.0.i77, ptr noundef nonnull %addr, ptr noundef %arrayidx)
  %80 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %addr, align 4
  %call29 = tail call fastcc i32 @pt1_i2c_end(ptr noundef %1, i32 noundef %81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %pt1_i2c_begin.exit78.cleanup_crit_edge, label %pt1_i2c_begin.exit78.for.inc_crit_edge

pt1_i2c_begin.exit78.for.inc_crit_edge:           ; preds = %pt1_i2c_begin.exit78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

pt1_i2c_begin.exit78.cleanup_crit_edge:           ; preds = %pt1_i2c_begin.exit78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %pt1_i2c_begin.exit78.for.inc_crit_edge, %while.body.for.inc_crit_edge, %if.end23.for.inc_crit_edge
  %i.1 = phi i32 [ %i.084, %pt1_i2c_begin.exit78.for.inc_crit_edge ], [ %add, %if.end23.for.inc_crit_edge ], [ %add, %while.body.for.inc_crit_edge ]
  %inc35 = add i32 %i.1, 1
  %cmp = icmp slt i32 %inc35, %num
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %pt1_i2c_begin.exit78.cleanup_crit_edge, %pt1_i2c_read_msg.exit.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %entry.cleanup_crit_edge ], [ %num, %for.inc.cleanup_crit_edge ], [ %call29, %pt1_i2c_begin.exit78.cleanup_crit_edge ], [ %call19, %pt1_i2c_read_msg.exit.cleanup_crit_edge ], [ -524, %if.then12.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pt1_i2c_func(ptr nocapture noundef readnone %adap) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pt1_i2c_write_msg(ptr nocapture noundef readonly %pt1, i32 noundef %addr, ptr nocapture noundef writeonly %addrp, ptr nocapture noundef readonly %msg) unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %addr, 1
  %shl.i.i = shl i32 %addr, 18
  %or.i.i = or i32 %shl.i.i, %add.i
  %or10.i.i = or i32 %or.i.i, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %or10.i.i) #11
  %regs.i.i.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  %1 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %0) #11, !srcloc !126
  %add2.i = add i32 %addr, 2
  %shl.i14.i = shl i32 %add.i, 18
  %or.i15.i = or i32 %add2.i, %shl.i14.i
  %or11.i.i = or i32 %or.i15.i, 9216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #11
  %4 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18.i, i32 %3) #11, !srcloc !126
  %add4.i = add i32 %addr, 3
  %shl.i19.i = shl i32 %add2.i, 18
  %or5.i.i = or i32 %add4.i, %shl.i19.i
  %or11.i22.i = or i32 %or5.i.i, 11264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %or11.i22.i) #11
  %7 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i24.i = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24.i, i32 %6) #11, !srcloc !126
  %9 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add4.i, ptr %addr.addr, align 4
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg, align 4
  %conv = zext i16 %11 to i32
  %shl = shl nuw nsw i32 %conv, 1
  call fastcc void @pt1_i2c_write_byte(ptr noundef %pt1, i32 noundef %add4.i, ptr noundef nonnull %addr.addr, i32 noundef %shl)
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp12.not = icmp eq i16 %13, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.addr, align 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 %i.013
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %19 to i32
  call fastcc void @pt1_i2c_write_byte(ptr noundef %pt1, i32 noundef %15, ptr noundef nonnull %addr.addr, i32 noundef %conv4)
  %inc = add nuw nsw i32 %i.013, 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len, align 4
  %conv2 = zext i16 %21 to i32
  %cmp = icmp ult i32 %inc, %conv2
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %22 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.addr, align 4
  %24 = ptrtoint ptr %addrp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %addrp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt1_i2c_end(ptr nocapture noundef readonly %pt1, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %addr, 1
  %shl.i = shl i32 %addr, 18
  %or5.i = or i32 %add, %shl.i
  %or11.i = or i32 %or5.i, 11264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %regs.i.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  %1 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #11, !srcloc !126
  %add2 = add i32 %addr, 2
  %shl.i15 = shl i32 %add, 18
  %or.i16 = or i32 %add2, %shl.i15
  %or11.i18 = or i32 %or.i16, 9216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %or11.i18) #11
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20, i32 %3) #11, !srcloc !126
  %shl.i21 = shl i32 %add2, 18
  %or.i22 = or i32 %shl.i21, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i22) #11
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 %6) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 67108864) #11, !srcloc !126
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %11 = tail call i32 @llvm.read_register.i32(metadata !115) #11
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %do.body.return_crit_edge, !prof !132

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

signal_pending.exit:                              ; preds = %do.body
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %and1.i.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %signal_pending.exit.return_crit_edge

signal_pending.exit.return_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %signal_pending.exit
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %tobool6.not = icmp sgt i32 %24, -1
  br i1 %tobool6.not, label %if.end.return_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %if.end.return_crit_edge, %signal_pending.exit.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i32 [ -4, %signal_pending.exit.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ -4, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pt1_i2c_write_byte(ptr nocapture noundef readonly %pt1, i32 noundef %addr, ptr nocapture noundef writeonly %addrp, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.024 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %addr.addr.023 = phi i32 [ %addr, %entry ], [ %add4.i, %for.body.for.body_crit_edge ]
  %sub = sub nuw nsw i32 7, %i.024
  %add.i = add i32 %addr.addr.023, 1
  %shl.i.i = shl i32 %addr.addr.023, 18
  %0 = shl nuw nsw i32 1, %sub
  %1 = and i32 %0, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not.i.i = icmp eq i32 %1, 0
  %shl9.i.i = select i1 %tobool6.not.i.i, i32 1024, i32 0
  %or5.i.i = or i32 %shl9.i.i, %add.i
  %or10.i.i = or i32 %or5.i.i, %shl.i.i
  %or11.i.i = or i32 %or10.i.i, 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #11
  %3 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %2) #11, !srcloc !126
  %add2.i = add i32 %addr.addr.023, 2
  %shl.i16.i = shl i32 %add.i, 18
  %or.i17.i = or i32 %add2.i, %shl.i16.i
  %or10.i20.i = or i32 %or.i17.i, %shl9.i.i
  %or11.i21.i = or i32 %or10.i20.i, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or11.i21.i) #11
  %6 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23.i, i32 %5) #11, !srcloc !126
  %add4.i = add i32 %addr.addr.023, 3
  %shl.i24.i = shl i32 %add2.i, 18
  %or5.i26.i = or i32 %shl9.i.i, %add4.i
  %or10.i29.i = or i32 %or5.i26.i, %shl.i24.i
  %or11.i30.i = or i32 %or10.i29.i, 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or11.i30.i) #11
  %9 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %8) #11, !srcloc !126
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.i5 = add i32 %addr.addr.023, 4
  %shl.i.i6 = shl i32 %add4.i, 18
  %or10.i.i7 = or i32 %shl.i.i6, %add.i5
  %or11.i.i8 = or i32 %or10.i.i7, 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i8) #11
  %12 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i10 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i10, i32 %11) #11, !srcloc !126
  %add2.i11 = add i32 %addr.addr.023, 5
  %shl.i16.i12 = shl i32 %add.i5, 18
  %or.i17.i13 = or i32 %add2.i11, %shl.i16.i12
  %or11.i21.i14 = or i32 %or.i17.i13, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or11.i21.i14) #11
  %15 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i23.i15 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23.i15, i32 %14) #11, !srcloc !126
  %add4.i16 = add i32 %addr.addr.023, 6
  %shl.i24.i17 = shl i32 %add2.i11, 18
  %or10.i29.i18 = or i32 %add4.i16, %shl.i24.i17
  %or11.i30.i19 = or i32 %or10.i29.i18, 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or11.i30.i19) #11
  %18 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i32.i20 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i20, i32 %17) #11, !srcloc !126
  %20 = ptrtoint ptr %addrp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add4.i16, ptr %addrp, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt1_demod_block_init(ptr nocapture noundef readonly %pt1) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #11
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 384, ptr %buf, align 2
  %arrayidx = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %demod_i2c_client = getelementptr inbounds %struct.pt1_adapter, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %demod_i2c_client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demod_i2c_client, align 8
  %name = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 2
  %call = call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(11) @.str.30, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %entry
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %demod_i2c_client.1 = getelementptr inbounds %struct.pt1_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %demod_i2c_client.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %demod_i2c_client.1, align 8
  %name.1 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 2
  %call.1 = call i32 @strncmp(ptr noundef %name.1, ptr noundef nonnull dereferenceable(11) @.str.30, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %call.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp3.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp3.1, label %if.end.1.cleanup_crit_edge, label %if.end5.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end5.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2, align 4
  %demod_i2c_client.2 = getelementptr inbounds %struct.pt1_adapter, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %demod_i2c_client.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %demod_i2c_client.2, align 8
  %name.2 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 2
  %call.2 = call i32 @strncmp(ptr noundef %name.2, ptr noundef nonnull dereferenceable(11) @.str.30, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %call.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp3.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp3.2, label %if.end.2.cleanup_crit_edge, label %if.end5.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end5.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.pt1, ptr %pt1, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3, align 4
  %demod_i2c_client.3 = getelementptr inbounds %struct.pt1_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %demod_i2c_client.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %demod_i2c_client.3, align 8
  %name.3 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 2
  %call.3 = call i32 @strncmp(ptr noundef %name.3, ptr noundef nonnull dereferenceable(11) @.str.30, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %call.i.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp3.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp3.3, label %if.end.3.cleanup_crit_edge, label %if.end5.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end5.3, %for.inc.2.for.inc.3_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %demod_i2c_client11 = getelementptr inbounds %struct.pt1_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %demod_i2c_client11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %demod_i2c_client11, align 8
  %name12 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 2
  %call14 = call i32 @strncmp(ptr noundef %name12, ptr noundef nonnull dereferenceable(11) @.str.24, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %for.inc.3.for.inc23_crit_edge

for.inc.3.for.inc23_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc23

if.end17:                                         ; preds = %for.inc.3
  %call.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp20 = icmp slt i32 %call.i41, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #11
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22, %for.inc.3.for.inc23_crit_edge
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.1, align 4
  %demod_i2c_client11.1 = getelementptr inbounds %struct.pt1_adapter, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %demod_i2c_client11.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %demod_i2c_client11.1, align 8
  %name12.1 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 2
  %call14.1 = call i32 @strncmp(ptr noundef %name12.1, ptr noundef nonnull dereferenceable(11) @.str.24, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %tobool15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.not.1, label %if.end17.1, label %for.inc23.for.inc23.1_crit_edge

for.inc23.for.inc23.1_crit_edge:                  ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc23.1

if.end17.1:                                       ; preds = %for.inc23
  %call.i41.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.1)
  %cmp20.1 = icmp slt i32 %call.i41.1, 0
  br i1 %cmp20.1, label %if.end17.1.cleanup_crit_edge, label %if.end22.1

if.end17.1.cleanup_crit_edge:                     ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22.1:                                       ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #11
  br label %for.inc23.1

for.inc23.1:                                      ; preds = %if.end22.1, %for.inc23.for.inc23.1_crit_edge
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.2, align 4
  %demod_i2c_client11.2 = getelementptr inbounds %struct.pt1_adapter, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %demod_i2c_client11.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %demod_i2c_client11.2, align 8
  %name12.2 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 2
  %call14.2 = call i32 @strncmp(ptr noundef %name12.2, ptr noundef nonnull dereferenceable(11) @.str.24, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2)
  %tobool15.not.2 = icmp eq i32 %call14.2, 0
  br i1 %tobool15.not.2, label %if.end17.2, label %for.inc23.1.for.inc23.2_crit_edge

for.inc23.1.for.inc23.2_crit_edge:                ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc23.2

if.end17.2:                                       ; preds = %for.inc23.1
  %call.i41.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.2)
  %cmp20.2 = icmp slt i32 %call.i41.2, 0
  br i1 %cmp20.2, label %if.end17.2.cleanup_crit_edge, label %if.end22.2

if.end17.2.cleanup_crit_edge:                     ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22.2:                                       ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #11
  br label %for.inc23.2

for.inc23.2:                                      ; preds = %if.end22.2, %for.inc23.1.for.inc23.2_crit_edge
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.3, align 4
  %demod_i2c_client11.3 = getelementptr inbounds %struct.pt1_adapter, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %demod_i2c_client11.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %demod_i2c_client11.3, align 8
  %name12.3 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 2
  %call14.3 = call i32 @strncmp(ptr noundef %name12.3, ptr noundef nonnull dereferenceable(11) @.str.24, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.3)
  %tobool15.not.3 = icmp eq i32 %call14.3, 0
  br i1 %tobool15.not.3, label %if.end17.3, label %for.inc23.2.cleanup_crit_edge

for.inc23.2.cleanup_crit_edge:                    ; preds = %for.inc23.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17.3:                                       ; preds = %for.inc23.2
  %call.i41.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.3)
  %cmp20.3 = icmp slt i32 %call.i41.3, 0
  br i1 %cmp20.3, label %if.end17.3.cleanup_crit_edge, label %if.end22.3

if.end17.3.cleanup_crit_edge:                     ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22.3:                                       ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22.3, %if.end17.3.cleanup_crit_edge, %for.inc23.2.cleanup_crit_edge, %if.end17.2.cleanup_crit_edge, %if.end17.1.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i41, %if.end17.cleanup_crit_edge ], [ %call.i41.1, %if.end17.1.cleanup_crit_edge ], [ %call.i41.2, %if.end17.2.cleanup_crit_edge ], [ %call.i41.3, %if.end17.3.cleanup_crit_edge ], [ 0, %if.end22.3 ], [ 0, %for.inc23.2.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i.1, %if.end.1.cleanup_crit_edge ], [ %call.i.2, %if.end.2.cleanup_crit_edge ], [ %call.i.3, %if.end.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -24
  %voltage1 = getelementptr i8, ptr %1, i32 1900
  %2 = ptrtoint ptr %voltage1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %voltage, ptr %voltage1, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @pt1_update_power(ptr noundef %4)
  %orig_set_voltage = getelementptr i8, ptr %1, i32 1888
  %5 = ptrtoint ptr %orig_set_voltage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %orig_set_voltage, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %6(ptr noundef %fe, i32 noundef %voltage) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_sleep(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %orig_sleep = getelementptr i8, ptr %1, i32 1892
  %2 = ptrtoint ptr %orig_sleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_sleep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %fe) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 -24
  %sleep = getelementptr i8, ptr %1, i32 1904
  %4 = ptrtoint ptr %sleep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sleep, align 8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @pt1_update_power(ptr noundef %6)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_wakeup(ptr noundef %fe) #2 align 64 {
entry:
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %wbuf.i = alloca i8, align 1
  %rbuf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -24
  %sleep = getelementptr i8, ptr %1, i32 1904
  %2 = ptrtoint ptr %sleep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sleep, align 8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @pt1_update_power(ptr noundef %4)
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %demod_i2c_client = getelementptr i8, ptr %1, i32 1880
  %5 = ptrtoint ptr %demod_i2c_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %demod_i2c_client, align 8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %fe_clk = getelementptr inbounds %struct.pt1, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %fe_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fe_clk, align 8
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 2
  %call.i = tail call i32 @strncmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(11) @.str.24, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end25.i_crit_edge

entry.if.end25.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #11
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wbuf.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rbuf.i) #11
  %13 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %rbuf.i, align 1, !annotation !129
  %14 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %wbuf.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i, align 2
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %wbuf.i, ptr %buf.i, align 4
  %arrayidx8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %16, ptr %arrayidx8.i, align 4
  %flags11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags11.i, align 2
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %len13.i, align 4
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rbuf.i, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call17.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.i = icmp slt i32 %call17.i, 0
  br i1 %cmp.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  br label %if.end

cleanup.i:                                        ; preds = %if.then.i
  %27 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rbuf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %28)
  %cmp19.not.i = icmp eq i8 %28, 65
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  br i1 %cmp19.not.i, label %cleanup.i.if.end25.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.i.if.end25.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.end25.i:                                       ; preds = %cleanup.i.if.end25.i_crit_edge, %entry.if.end25.i_crit_edge
  %.65.i = phi i32 [ 18, %cleanup.i.if.end25.i_crit_edge ], [ 14, %entry.if.end25.i_crit_edge ]
  %va1j5jf8007s_25mhz_configs.va1j5jf8007t_25mhz_configs.i = phi ptr [ @va1j5jf8007s_25mhz_configs, %cleanup.i.if.end25.i_crit_edge ], [ @va1j5jf8007t_25mhz_configs, %entry.if.end25.i_crit_edge ]
  %.64.i = phi i32 [ 19, %cleanup.i.if.end25.i_crit_edge ], [ 18, %entry.if.end25.i_crit_edge ]
  %va1j5jf8007s_20mhz_configs.va1j5jf8007t_20mhz_configs.i = phi ptr [ @va1j5jf8007s_20mhz_configs, %cleanup.i.if.end25.i_crit_edge ], [ @va1j5jf8007t_20mhz_configs, %entry.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26.i = icmp eq i32 %10, 0
  %cfg_data.0.i = select i1 %cmp26.i, ptr %va1j5jf8007s_20mhz_configs.va1j5jf8007t_20mhz_configs.i, ptr %va1j5jf8007s_25mhz_configs.va1j5jf8007t_25mhz_configs.i
  %len.0.i = select i1 %cmp26.i, i32 %.64.i, i32 %.65.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len.0.i
  br i1 %exitcond.not.i, label %land.lhs.true, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end25.i
  %i.068.i = phi i32 [ 0, %if.end25.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx40.i = getelementptr [2 x i8], ptr %cfg_data.0.i, i32 %i.068.i
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef %arrayidx40.i, i32 noundef 2, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp43.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp43.i, label %for.body.i.if.end_crit_edge, label %for.cond.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.cond.i
  %orig_init = getelementptr i8, ptr %1, i32 1896
  %29 = ptrtoint ptr %orig_init to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %orig_init, align 8
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call i32 %30(ptr noundef %fe) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.i.if.end_crit_edge, %cleanup.i.if.end_crit_edge, %cleanup.thread.i
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call17.i, %cleanup.thread.i ], [ -5, %cleanup.i.if.end_crit_edge ], [ %call.i.i, %for.body.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt1_init_table(ptr nocapture noundef readonly %pt1, ptr nocapture noundef %table, ptr nocapture noundef writeonly %pfnp) unnamed_addr #2 align 64 {
entry:
  %addr.i.i = alloca i32, align 4
  %addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #11
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr.i, align 4, !annotation !129
  %1 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pt1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %addr.i, i32 noundef 3264, i32 noundef 0) #11
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %pt1_alloc_page.exit.thread, label %do.body.i

pt1_alloc_page.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #11
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %4, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %pt1_alloc_page.exit, label %do.body4.i, !prof !132

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/pt1/pt1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 546, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

pt1_alloc_page.exit:                              ; preds = %do.body.i
  %shr31.i = lshr i32 %4, 12
  %5 = ptrtoint ptr %pfnp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr31.i, ptr %pfnp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #11
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %pt1_alloc_page.exit
  %i.042 = phi i32 [ 0, %pt1_alloc_page.exit ], [ %inc, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pt1_table, ptr %table, i32 0, i32 2, i32 %i.042
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #11
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %addr.i.i, align 4, !annotation !129
  %7 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pt1, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 4096, ptr noundef nonnull %addr.i.i, i32 noundef 3264, i32 noundef 0) #11
  %cmp.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i, label %pt1_init_buffer.exit, label %do.body.i.i

do.body.i.i:                                      ; preds = %for.body
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 4
  %and.i.i = and i32 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5, label %do.body4.i.i, !prof !132

do.body4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/pt1/pt1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 546, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

pt1_init_buffer.exit:                             ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.042)
  %tobool.not43 = icmp eq i32 %i.042, 0
  br i1 %tobool.not43, label %pt1_init_buffer.exit.while.end_crit_edge, label %pt1_init_buffer.exit.while.body_crit_edge

pt1_init_buffer.exit.while.body_crit_edge:        ; preds = %pt1_init_buffer.exit
  br label %while.body

pt1_init_buffer.exit.while.end_crit_edge:         ; preds = %pt1_init_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end5:                                          ; preds = %do.body.i.i
  %shr31.i.i = lshr i32 %10, 12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #11
  %arrayidx.i = getelementptr [1024 x i32], ptr %call.i.i.i, i32 0, i32 1023
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i.i, ptr %arrayidx, align 4
  %addr2.i = getelementptr %struct.pt1_table, ptr %table, i32 0, i32 2, i32 %i.042, i32 1
  %13 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %addr2.i, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %shr31.i.i)
  %arrayidx6 = getelementptr %struct.pt1_table_page, ptr %call.i.i, i32 0, i32 1, i32 %i.042
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx6, align 4
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 511
  br i1 %exitcond.not, label %for.end, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  call void @arm_heavy_mb() #11
  %regs.i.i = getelementptr inbounds %struct.pt1, ptr %pt1, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 536870912) #11, !srcloc !126
  %18 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %table, align 4
  %addr8 = getelementptr inbounds %struct.pt1_table, ptr %table, i32 0, i32 1
  %19 = ptrtoint ptr %addr8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %4, ptr %addr8, align 4
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %pt1_init_buffer.exit.while.body_crit_edge
  %i.144 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.042, %pt1_init_buffer.exit.while.body_crit_edge ]
  %dec = add nsw i32 %i.144, -1
  %arrayidx10 = getelementptr %struct.pt1_table, ptr %table, i32 0, i32 2, i32 %dec
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx10, align 4
  %addr.i31 = getelementptr %struct.pt1_table, ptr %table, i32 0, i32 2, i32 %dec, i32 1
  %22 = ptrtoint ptr %addr.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i31, align 4
  %24 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pt1, align 8
  %dev.i.i32 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void @dma_free_attrs(ptr noundef %dev.i.i32, i32 noundef 4096, ptr noundef %21, i32 noundef %23, i32 noundef 0) #11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %pt1_init_buffer.exit.while.end_crit_edge
  %26 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pt1, align 8
  %dev.i33 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void @dma_free_attrs(ptr noundef %dev.i33, i32 noundef 4096, ptr noundef nonnull %call.i.i, i32 noundef %4, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end, %pt1_alloc_page.exit.thread
  %retval.0 = phi i32 [ -12, %while.end ], [ 0, %for.end ], [ -12, %pt1_alloc_page.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i.i.i = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 65536) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 131072) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 262144) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 524288) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 2827) #11, !srcloc !126
  %power = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %power, align 8
  %reset = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %reset, align 4
  tail call fastcc void @pt1_update_power(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt1_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %power, align 8
  %reset = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %reset, align 4
  tail call fastcc void @pt1_update_power(ptr noundef %1)
  %regs.i.i.i = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i.i = shl i32 %i.03.i, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #11
  %5 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %4) #11, !srcloc !126
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.body.i.for.body.i107_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.body.i107_crit_edge:               ; preds = %for.body.i
  br label %for.body.i107

for.body.i107:                                    ; preds = %for.body.i107.for.body.i107_crit_edge, %for.body.i.for.body.i107_crit_edge
  %i.02.i = phi i32 [ %inc.i105, %for.body.i107.for.body.i107_crit_edge ], [ 0, %for.body.i.for.body.i107_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i104 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i104, i32 0) #11, !srcloc !126
  %inc.i105 = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i106 = icmp eq i32 %inc.i105, 128
  br i1 %exitcond.not.i106, label %for.body.i107.for.body.i108_crit_edge, label %for.body.i107.for.body.i107_crit_edge

for.body.i107.for.body.i107_crit_edge:            ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i107

for.body.i107.for.body.i108_crit_edge:            ; preds = %for.body.i107
  br label %for.body.i108

for.body.i108:                                    ; preds = %if.end.i.for.body.i108_crit_edge, %for.body.i107.for.body.i108_crit_edge
  %i.05.i = phi i32 [ %inc.i109, %if.end.i.for.body.i108_crit_edge ], [ 0, %for.body.i107.for.body.i108_crit_edge ]
  %9 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i108.for.body.i115_crit_edge

for.body.i108.for.body.i115_crit_edge:            ; preds = %for.body.i108
  br label %for.body.i115

if.end.i:                                         ; preds = %for.body.i108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 134217728) #11, !srcloc !126
  %inc.i109 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i110 = icmp eq i32 %inc.i109, 57
  br i1 %exitcond.not.i110, label %pt1_sync.exit.thread, label %if.end.i.for.body.i108_crit_edge

if.end.i.for.body.i108_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i108

pt1_sync.exit.thread:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11) #15
  br label %do.end

for.body.i115:                                    ; preds = %for.body.i115.for.body.i115_crit_edge, %for.body.i108.for.body.i115_crit_edge
  %i.02.i112 = phi i32 [ %inc.i113, %for.body.i115.for.body.i115_crit_edge ], [ 0, %for.body.i108.for.body.i115_crit_edge ]
  %17 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 134217728) #11, !srcloc !126
  %inc.i113 = add nuw nsw i32 %i.02.i112, 1
  %exitcond.not.i114 = icmp eq i32 %inc.i113, 57
  br i1 %exitcond.not.i114, label %pt1_identify.exit, label %for.body.i115.for.body.i115_crit_edge

for.body.i115.for.body.i115_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i115

pt1_identify.exit:                                ; preds = %for.body.i115
  %call3 = tail call fastcc i32 @pt1_unlock(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %pt1_identify.exit.do.end_crit_edge, label %if.end6

pt1_identify.exit.do.end_crit_edge:               ; preds = %pt1_identify.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end6:                                          ; preds = %pt1_identify.exit
  %call7 = tail call fastcc i32 @pt1_reset_pci(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.do.end_crit_edge, label %if.end10

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end10:                                         ; preds = %if.end6
  %call11 = tail call fastcc i32 @pt1_reset_ram(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.do.end_crit_edge, label %if.end14

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end14:                                         ; preds = %if.end10
  %call15 = tail call fastcc i32 @pt1_enable_ram(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.do.end_crit_edge, label %if.end18

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end18:                                         ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i117 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i117, i32 65536) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 131072) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 262144) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 524288) #11, !srcloc !126
  %30 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %power, align 8
  tail call fastcc void @pt1_update_power(ptr noundef %1)
  tail call void @msleep(i32 noundef 20) #11
  %31 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %reset, align 4
  tail call fastcc void @pt1_update_power(ptr noundef %1)
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %call21 = tail call fastcc i32 @pt1_demod_block_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end18.do.end_crit_edge, label %for.body.preheader

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.preheader:                               ; preds = %if.end18
  %arrayidx = getelementptr %struct.pt1, ptr %1, i32 0, i32 4, i32 0
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %fe = getelementptr inbounds %struct.pt1_adapter, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fe, align 4
  tail call void @dvb_frontend_reinitialise(ptr noundef %35) #11
  %arrayidx.1 = getelementptr %struct.pt1, ptr %1, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.1, align 4
  %fe.1 = getelementptr inbounds %struct.pt1_adapter, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %fe.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fe.1, align 4
  tail call void @dvb_frontend_reinitialise(ptr noundef %39) #11
  %arrayidx.2 = getelementptr %struct.pt1, ptr %1, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.2, align 4
  %fe.2 = getelementptr inbounds %struct.pt1_adapter, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %fe.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fe.2, align 4
  tail call void @dvb_frontend_reinitialise(ptr noundef %43) #11
  %arrayidx.3 = getelementptr %struct.pt1, ptr %1, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.3, align 4
  %fe.3 = getelementptr inbounds %struct.pt1_adapter, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %fe.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fe.3, align 4
  tail call void @dvb_frontend_reinitialise(ptr noundef %47) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %48 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 268435456) #11, !srcloc !126
  %50 = load i32, ptr @pt1_nr_tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp27125.not = icmp eq i32 %50, 0
  br i1 %cmp27125.not, label %for.body.preheader.for.end40_crit_edge, label %for.cond29.preheader.lr.ph

for.body.preheader.for.end40_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end40

for.cond29.preheader.lr.ph:                       ; preds = %for.body.preheader
  %tables = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 5
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %for.end37.for.cond29.preheader_crit_edge, %for.cond29.preheader.lr.ph
  %i.1126 = phi i32 [ 0, %for.cond29.preheader.lr.ph ], [ %inc39, %for.end37.for.cond29.preheader_crit_edge ]
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.cond29.preheader
  %j.0124 = phi i32 [ 0, %for.cond29.preheader ], [ %inc36, %for.body31.for.body31_crit_edge ]
  %51 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tables, align 4
  %arrayidx33 = getelementptr %struct.pt1_table, ptr %52, i32 %i.1126, i32 2, i32 %j.0124
  %53 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx33, align 4
  %arrayidx34 = getelementptr [1024 x i32], ptr %54, i32 0, i32 1023
  %55 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx34, align 4
  %inc36 = add nuw nsw i32 %j.0124, 1
  %exitcond.not = icmp eq i32 %inc36, 511
  br i1 %exitcond.not, label %for.end37, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31

for.end37:                                        ; preds = %for.body31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 536870912) #11, !srcloc !126
  %inc39 = add nuw i32 %i.1126, 1
  %58 = load i32, ptr @pt1_nr_tables, align 4
  %cmp27 = icmp ult i32 %inc39, %58
  br i1 %cmp27, label %for.end37.for.cond29.preheader_crit_edge, label %for.end37.for.end40_crit_edge

for.end37.for.end40_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end40

for.end37.for.cond29.preheader_crit_edge:         ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond29.preheader

for.end40:                                        ; preds = %for.end37.for.end40_crit_edge, %for.body.preheader.for.end40_crit_edge
  %tables41 = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %tables41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tables41, align 4
  %addr = getelementptr inbounds %struct.pt1_table, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr, align 4
  %shr = lshr i32 %62, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %63 = tail call i32 @llvm.bswap.i32(i32 %shr) #11
  %64 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %63) #11, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 1073741836) #11, !srcloc !126
  %table_index = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 7
  %68 = ptrtoint ptr %table_index to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %table_index, align 4
  %buf_index = getelementptr inbounds %struct.pt1, ptr %1, i32 0, i32 8
  %69 = ptrtoint ptr %buf_index to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %buf_index, align 8
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx, align 4
  %upacket_count = getelementptr inbounds %struct.pt1_adapter, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %upacket_count to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %upacket_count, align 4
  %73 = load ptr, ptr %arrayidx, align 4
  %packet_count = getelementptr inbounds %struct.pt1_adapter, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %packet_count to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %packet_count, align 8
  %75 = load ptr, ptr %arrayidx, align 4
  %st_count = getelementptr inbounds %struct.pt1_adapter, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %st_count to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %st_count, align 4
  %77 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.1, align 4
  %upacket_count.1 = getelementptr inbounds %struct.pt1_adapter, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %upacket_count.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %upacket_count.1, align 4
  %80 = load ptr, ptr %arrayidx.1, align 4
  %packet_count.1 = getelementptr inbounds %struct.pt1_adapter, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %packet_count.1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %packet_count.1, align 8
  %82 = load ptr, ptr %arrayidx.1, align 4
  %st_count.1 = getelementptr inbounds %struct.pt1_adapter, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %st_count.1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %st_count.1, align 4
  %84 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.2, align 4
  %upacket_count.2 = getelementptr inbounds %struct.pt1_adapter, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %upacket_count.2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %upacket_count.2, align 4
  %87 = load ptr, ptr %arrayidx.2, align 4
  %packet_count.2 = getelementptr inbounds %struct.pt1_adapter, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %packet_count.2 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %packet_count.2, align 8
  %89 = load ptr, ptr %arrayidx.2, align 4
  %st_count.2 = getelementptr inbounds %struct.pt1_adapter, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %st_count.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %st_count.2, align 4
  %91 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.3, align 4
  %upacket_count.3 = getelementptr inbounds %struct.pt1_adapter, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %upacket_count.3 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %upacket_count.3, align 4
  %94 = load ptr, ptr %arrayidx.3, align 4
  %packet_count.3 = getelementptr inbounds %struct.pt1_adapter, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %packet_count.3 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %packet_count.3, align 8
  %96 = load ptr, ptr %arrayidx.3, align 4
  %st_count.3 = getelementptr inbounds %struct.pt1_adapter, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %st_count.3 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %st_count.3, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end18.do.end_crit_edge, %if.end14.do.end_crit_edge, %if.end10.do.end_crit_edge, %if.end6.do.end_crit_edge, %pt1_identify.exit.do.end_crit_edge, %pt1_sync.exit.thread
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 8
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55, ptr noundef nonnull @.str.31) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end40
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_reinitialise(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !12, !14, !16, !17, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !35, !37, !38, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114}
!llvm.named.register.sp = !{!115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__param_nr_tables, !1, !"__param_nr_tables", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/pt1/pt1.c", i32 299, i32 1}
!2 = !{ptr @__UNIQUE_ID_nr_tablestype383, !1, !"__UNIQUE_ID_nr_tablestype383", i1 false, i1 false}
!3 = !{ptr @__param_adapter_nr, !4, !"__param_adapter_nr", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/pt1/pt1.c", i32 824, i32 1}
!5 = !{ptr @__UNIQUE_ID_adapter_nrtype385, !4, !"__UNIQUE_ID_adapter_nrtype385", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_adapter_nr386, !4, !"__UNIQUE_ID_adapter_nr386", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_earth_pt1__387_1478_pt1_driver_init6, !8, !"__initcall__kmod_earth_pt1__387_1478_pt1_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1478, i32 1}
!9 = !{ptr @__exitcall_pt1_driver_exit, !8, !"__exitcall_pt1_driver_exit", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author388, !11, !"__UNIQUE_ID_author388", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1480, i32 1}
!12 = !{ptr @__UNIQUE_ID_description389, !13, !"__UNIQUE_ID_description389", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1481, i32 1}
!14 = !{ptr @__UNIQUE_ID_file390, !15, !"__UNIQUE_ID_file390", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1482, i32 1}
!16 = !{ptr @__UNIQUE_ID_license391, !15, !"__UNIQUE_ID_license391", i1 false, i1 false}
!17 = !{ptr @__param_str_nr_tables, !1, !"__param_str_nr_tables", i1 false, i1 false}
!18 = !{ptr @pt1_nr_tables, !19, !"pt1_nr_tables", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/pt1/pt1.c", i32 298, i32 21}
!20 = !{ptr @__param_str_adapter_nr, !4, !"__param_str_adapter_nr", i1 false, i1 false}
!21 = !{ptr @__param_arr_adapter_nr, !4, !"__param_arr_adapter_nr", i1 false, i1 false}
!22 = !{ptr @adapter_nr, !4, !"adapter_nr", i1 false, i1 false}
!23 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1471, i32 11}
!26 = !{ptr @pt1_driver, !27, !"pt1_driver", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1470, i32 26}
!28 = !{ptr @pt1_id_table, !29, !"pt1_id_table", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1461, i32 35}
!30 = !{ptr @pt1_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1365, i32 2}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pt1_probe.__key.3, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1376, i32 2}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/pt1/pt1.c", i32 513, i32 4}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/pt1/pt1.c", i32 460, i32 4}
!40 = !{ptr @pt1_filter._rs, !39, !"_rs", i1 false, i1 false}
!41 = !{ptr @__func__.pt1_filter, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pt1_filter._entry, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @pt1_filter._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @pt1_filter._rs.7, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/pt1/pt1.c", i32 464, i32 4}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pt1_filter._entry.8, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @pt1_filter._entry_ptr.10, !46, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"sleep_bits", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/pt1/pt1.c", i32 739, i32 19}
!52 = !{ptr @pt1_i2c_algo, !53, !"pt1_i2c_algo", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1195, i32 35}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/pt1/pt1.c", i32 330, i32 2}
!56 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pt1_sync._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @pt1_sync._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/pt1/pt1.c", i32 354, i32 2}
!63 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pt1_unlock._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @pt1_unlock._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/pt1/pt1.c", i32 368, i32 2}
!68 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pt1_reset_pci._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @pt1_reset_pci._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/pt1/pt1.c", i32 382, i32 2}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pt1_reset_ram._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @pt1_reset_ram._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/pt1/pt1.c", i32 399, i32 2}
!78 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @pt1_do_enable_ram._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @pt1_do_enable_ram._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/pt1/pt1.c", i32 979, i32 25}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/pt1/pt1.c", i32 985, i32 26}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/pt1/pt1.c", i32 992, i32 26}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1001, i32 26}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1025, i32 2}
!91 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pt1_init_frontends._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @pt1_init_frontends._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @pt1_configs, !96, !"pt1_configs", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/pt1/pt1.c", i32 128, i32 32}
!97 = !{ptr @va1j5jf8007s_20mhz_configs, !98, !"va1j5jf8007s_20mhz_configs", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/pt1/pt1.c", i32 163, i32 17}
!99 = !{ptr @va1j5jf8007t_20mhz_configs, !100, !"va1j5jf8007t_20mhz_configs", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/pt1/pt1.c", i32 177, i32 17}
!101 = !{ptr @va1j5jf8007s_25mhz_configs, !102, !"va1j5jf8007s_25mhz_configs", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/pt1/pt1.c", i32 170, i32 17}
!103 = !{ptr @va1j5jf8007t_25mhz_configs, !104, !"va1j5jf8007t_25mhz_configs", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/pt1/pt1.c", i32 185, i32 17}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/pt1/pt1.c", i32 264, i32 25}
!107 = !{ptr @pt1_pm_ops, !108, !"pt1_pm_ops", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1468, i32 8}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/pt1/pt1.c", i32 1302, i32 2}
!111 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @pt1_resume._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @pt1_resume._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{!"sp"}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2158078876}
!126 = !{i64 5661165}
!127 = !{i64 5661583}
!128 = !{i64 2158079550}
!129 = !{!"auto-init"}
!130 = !{i8 0, i8 2}
!131 = !{i64 2158100694}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 2158101365, i64 2158101857, i64 2158101402, i64 2158101458, i64 2158101492, i64 2158101516, i64 2158101557, i64 2158101578, i64 2158101606, i64 2158101640}
